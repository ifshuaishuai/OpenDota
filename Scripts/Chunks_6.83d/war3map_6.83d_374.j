
// 52819 ~ 52846
function Func2301 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=Func0147(loc_unit01,loc_unit02)
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real04
    local real loc_real05
    local real loc_real06=Func0168(loc_unit01,loc_unit02)
    if Func0194(loc_unit01)or Func0194(loc_unit02)or loc_real01<175 or GetTriggerEvalCount(loc_trigger01)>250 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_real04=Func0126(loc_real02+800*0.02*Cos(loc_real06*bj_DEGTORAD))
        set loc_real05=Func0129(loc_real03+800*0.02*Sin(loc_real06*bj_DEGTORAD))
        call SetUnitX(loc_unit01,loc_real04)
        call SetUnitY(loc_unit01,loc_real05)
        call SetUnitFacing(loc_unit01,loc_real06)
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real04)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real05)*1.0))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 52848 ~ 52861
function Func2302 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2301))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 52863 ~ 52892
function Func2303 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(831)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0YK')
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(832)))
    local boolean loc_boolean01=(TimerGetElapsed(timer001))>(loc_real01+20-4*loc_integer02)
    local integer loc_integer03=500+100*loc_integer02
    local integer loc_integer04=300
    local real loc_real02
    if IsUnitIllusion(loc_unit01)==true and Func0194(loc_unit01)then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif loc_unit02==null or Func0194(loc_unit02)==true then
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(831),(null))
    elseif loc_boolean01 then
        set loc_real02=Func0147(loc_unit01,loc_unit02)
        if loc_real02>loc_integer04 and loc_real02<loc_integer03 then
            call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(832),(((TimerGetElapsed(timer001)))*1.0))
            call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(831),(null))
            call RemoveSavedHandle(hashtable001,(GetHandleId(loc_unit01)),(831))
            call Func2302(loc_unit01,loc_unit02)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 52894 ~ 52903
function Func2304 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2303))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction
