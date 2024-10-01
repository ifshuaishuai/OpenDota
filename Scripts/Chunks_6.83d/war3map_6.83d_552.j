
// 64640 ~ 64664
function Func2999 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    if loc_unit02==null or loc_unit01==null then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if Func0147(loc_unit01,loc_unit02)<450 then
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4423)),(1))
            call Func0444(loc_unit01,loc_real01,loc_real02,1000.)
        else
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4423)),(2))
        endif
        call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 64666 ~ 64676
function Func3000 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.005,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2999))
    set loc_trigger01=null
endfunction

// 64678 ~ 64683
function Func3001 takes nothing returns boolean
    if GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(unit338)and GetUnitTypeId(GetFilterUnit())==GetUnitTypeId(unit338)then
        call Func3000(GetFilterUnit(),unit337)
    endif
    return false
endfunction

// 64685 ~ 64705
function Func3002 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit03=GetTriggerUnit()
    if loc_unit02==null then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_unit01=null
        set loc_unit03=null
        return false
    endif
    if GetOwningPlayer(loc_unit03)==GetOwningPlayer(loc_unit01)and GetUnitTypeId(loc_unit03)==GetUnitTypeId(loc_unit01)then
        call Func3000(loc_unit03,loc_unit02)
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction
