
// 66847 ~ 66865
function Func3129 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit01 and GetEventDamage()>0 then
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+GetEventDamage()*(0.1+0.05*loc_integer02))
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl",loc_unit01,"origin"))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    return false
endfunction

// 66867 ~ 66877
function Func3130 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3129))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    set loc_trigger01=null
endfunction

// 66879 ~ 66885
function Func3131 takes nothing returns boolean
    if(Func3128(GetAttacker())==true or IsUnitIllusion(GetAttacker())==true)and GetUnitAbilityLevel(GetAttacker(),'B0GY')>0 and((LoadInteger(hashtable001,(GetHandleId((GetAttacker()))),((4419))))==1)==false and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
        call Func3130(GetAttacker(),GetTriggerUnit(),(LoadInteger(hashtable001,(GetHandleId(GetAttacker())),(819))))
        call Func0044(GetAttacker(),4419,0.25)
    endif
    return false
endfunction
