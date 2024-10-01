
// 53104 ~ 53106
function Func2323 takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit())=='h0BT'
endfunction

// 53108 ~ 53118
function Func2324 takes unit loc_unit01 returns boolean
    local group loc_group01=Func0030()
    local boolean loc_boolean01=false
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),375,Condition(function Func2323))
    if FirstOfGroup(loc_group01)!=null then
        set loc_boolean01=true
    endif
    call Func0029(loc_group01)
    set loc_group01=null
    return loc_boolean01
endfunction

// 53120 ~ 53181
function Func2325 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(442)))
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED and(LoadBoolean(hashtable001,(loc_integer01),(329)))and GetAttacker()==loc_unit01 then
        call UnitRemoveAbility(loc_unit01,'B021')
        call UnitRemoveAbility(loc_unit01,'A1GA')
        call UnitRemoveAbility(loc_unit01,'A23O')
        call UnitRemoveAbility(loc_unit01,'B0E9')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if GetTriggerEventId()!=EVENT_PLAYER_UNIT_ATTACKED and GetTriggerEventId()!=EVENT_PLAYER_UNIT_SPELL_EFFECT then
            set loc_integer03=loc_integer03+1
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A01Z' and GetTriggerUnit()==loc_unit01 then
            call SaveReal(hashtable001,(loc_integer01),(442),(((TimerGetElapsed(timer001))+1.0)*1.0))
            call DisableTrigger(GetTriggeringTrigger())
            call Func2322(loc_unit01,loc_integer04)
            call EnableTrigger(GetTriggeringTrigger())
            call SaveInteger(hashtable001,(loc_integer01),(34),(0))
        endif
        if Func0189(GetUnitX(loc_unit01),GetUnitY(loc_unit01),375)==false and Func2324(loc_unit01)==false then
            if loc_real01<(TimerGetElapsed(timer001))or GetTriggerEvalCount(loc_trigger01)==1 then
                call UnitRemoveAbility(loc_unit01,'B021')
                call UnitRemoveAbility(loc_unit01,'A1GA')
                call UnitRemoveAbility(loc_unit01,'A23O')
                call UnitRemoveAbility(loc_unit01,'B0E9')
                call FlushChildHashtable(hashtable001,(loc_integer01))
                call Func0035(loc_trigger01)
            endif
        elseif(LoadBoolean(hashtable001,(loc_integer01),(329)))and loc_integer03>(150*loc_integer04)then
            call UnitRemoveAbility(loc_unit01,'B021')
            call UnitRemoveAbility(loc_unit01,'A1GA')
            call UnitRemoveAbility(loc_unit01,'A23O')
            call UnitRemoveAbility(loc_unit01,'B0E9')
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        elseif(LoadBoolean(hashtable001,(loc_integer01),(329)))and GetUnitAbilityLevel(loc_unit01,'B021')==0 and GetUnitAbilityLevel(loc_unit01,'A1GA')>0 then
            call SaveReal(hashtable001,(loc_integer01),(442),(((TimerGetElapsed(timer001))+1.0)*1.0))
            call DisableTrigger(GetTriggeringTrigger())
            call Func2322(loc_unit01,loc_integer04)
            call EnableTrigger(GetTriggeringTrigger())
        elseif GetUnitAbilityLevel(loc_unit01,'B021')==0 then
            call UnitRemoveAbility(loc_unit01,'B021')
            call UnitRemoveAbility(loc_unit01,'A1GA')
            call UnitRemoveAbility(loc_unit01,'A23O')
            call UnitRemoveAbility(loc_unit01,'B0E9')
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        else
            call SaveReal(hashtable001,(loc_integer01),(442),(((TimerGetElapsed(timer001))+1.0)*1.0))
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
