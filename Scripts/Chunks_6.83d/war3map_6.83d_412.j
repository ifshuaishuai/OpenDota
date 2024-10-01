
// 55129 ~ 55159
function Func2444 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamage()>2 and GetEventDamageSource()!=GetTriggerUnit()and Func0058(GetOwningPlayer(GetEventDamageSource()))then
            call SaveReal(hashtable001,(loc_integer01),(714),(((TimerGetElapsed(timer001)))*1.0))
        endif
    endif
    set loc_real01=(LoadReal(hashtable001,(loc_integer01),(714)))
    if loc_real01+3<(TimerGetElapsed(timer001))then
        if(LoadInteger(hashtable001,(loc_integer01),(34)))==2 then
            call SaveInteger(hashtable001,(loc_integer01),(34),(1))
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4327)),(2))
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0A7',true)
        endif
    else
        if(LoadInteger(hashtable001,(loc_integer01),(34)))==1 then
            call SaveInteger(hashtable001,(loc_integer01),(34),(2))
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4327)),(1))
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0A7',false)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 55161 ~ 55173
function Func2445 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2444))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(714),((0)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(34),(1))
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0A7',true)
    set loc_trigger01=null
endfunction

// 55175 ~ 55177
function Func2446 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and GetUnitAbilityLevel(GetFilterUnit(),'B0C1')>0
endfunction
