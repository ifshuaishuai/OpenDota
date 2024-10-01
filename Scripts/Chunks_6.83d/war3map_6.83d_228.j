
// 43345 ~ 43372
function Func1708 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer03=R2I(((0.9-0.3)/0.5)/0.03)
    local integer loc_integer04=R2I((175/loc_integer03))
    local integer loc_integer05=R2I((255/loc_integer03)*1.75)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    if loc_integer02>loc_integer03 then
        call SetUnitVertexColor(loc_unit01,255,255,255,0)
        call SetUnitVertexColor(loc_unit02,255,255,255,255)
        call ShowUnit(loc_unit01,false)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SetUnitVertexColor(loc_unit01,255,255,255,175-loc_integer04*loc_integer02)
        call SetUnitX(loc_unit01,loc_real01)
        call SetUnitY(loc_unit01,loc_real02)
        call SetUnitVertexColor(loc_unit02,255,255,255,loc_integer05*loc_integer02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 43374 ~ 43397
function Func1709 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(293)))
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    call SetUnitX(loc_unit02,loc_real01)
    call SetUnitY(loc_unit02,loc_real02)
    call SetUnitX(loc_unit01,loc_real01)
    call SetUnitY(loc_unit01,loc_real02)
    call SetUnitVertexColor(loc_unit01,255,255,255,0)
    call SetUnitVertexColor(loc_unit02,255,255,255,175)
    call SetUnitTimeScale(loc_unit02,0.5)
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1708))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction
