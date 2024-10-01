
// 59603 ~ 59609
function Func2718 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group017)==false and GetUnitAbilityLevel(GetEnumUnit(),'Bcyc')==0 then
        call Func0115((unit320),(GetEnumUnit()),1,(((real328)*1.0))*Pow(0.9,(integer495))*Pow(0.99,(integer494)))
        call GroupAddUnit(group017,GetEnumUnit())
        set integer495=integer495+1
    endif
endfunction

// 59611 ~ 59657
function Func2719 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(20)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(354)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(355)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local real loc_real05=Func0126(GetUnitX(loc_unit01)+(60*Pow(0.9,loc_integer03)*Pow(0.99,loc_integer02))*Cos(loc_real03))
    local real loc_real06=Func0129(GetUnitY(loc_unit01)+(60*Pow(0.9,loc_integer03)*Pow(0.99,loc_integer02))*Sin(loc_real03))
    local group loc_group02=Func0030()
    local real loc_real07
    if GetTriggerEvalCount(loc_trigger01)>2 then
        set loc_real07=150
    else
        set loc_real07=75
    endif
    call DestroyEffect(AddSpecialEffect("effects\\Tornado.mdx",loc_real05,loc_real06))
    set loc_integer02=loc_integer02+Func0180(loc_real05,loc_real06,75)
    call SaveInteger(hashtable001,(loc_integer01),(354),(loc_integer02))
    set group017=loc_group01
    set unit320=loc_unit01
    set real328=loc_real04
    set integer494=loc_integer02
    set integer495=loc_integer03
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group02,loc_real05,loc_real06,loc_real07,Condition(function Func0305))
    call ForGroup(loc_group02,function Func2718)
    call Func0029(loc_group02)
    call SaveInteger(hashtable001,(loc_integer01),(355),(integer495))
    call SetUnitX(loc_unit01,loc_real05)
    call SetUnitY(loc_unit01,loc_real06)
    if GetTriggerEvalCount(loc_trigger01)>42 then
        call KillUnit(loc_unit01)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 59659 ~ 59688
function Func2720 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(356)))
    local real loc_real02=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(357)))
    local real loc_real03=Func0141((TimerGetElapsed(timer001))-(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(358))),1.0)
    local real loc_real04=Atan2(loc_real02-GetUnitY(loc_unit01),loc_real01-GetUnitX(loc_unit01))
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit02
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A12K')
    local real loc_real05=(40+80*loc_integer02)*(loc_real03)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h078',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real04*bj_RADTODEG)
    set loc_real01=GetUnitX(loc_unit01)+2475*Cos(loc_real04)
    set loc_real02=GetUnitY(loc_unit01)+2475*Sin(loc_real04)
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(47),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(48),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(20),((loc_real05)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(354),(0))
    call SaveInteger(hashtable001,(loc_integer01),(355),(0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2719))
    set loc_unit01=null
    set loc_trigger01=null
    set loc_unit02=null
endfunction
