
// 79054 ~ 79085
function Func3831 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call UnitRemoveAbility(loc_unit02,'A1QZ')
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4290)),(2))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if GetTriggerUnit()==loc_unit02 then
            call KillUnit(loc_unit01)
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit01 then
            call SetUnitAbilityLevel(loc_unit02,'A1QZ',GetUnitAbilityLevel(loc_unit02,'A1QZ')+1)
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\SkeletalMageMissile\\SkeletalMageMissile.mdl",loc_unit02,"chest"))
        endif
    else
        call SetUnitX(loc_unit01,GetUnitX(loc_unit02)-40)
        call SetUnitY(loc_unit01,GetUnitY(loc_unit02)-40)
        if Func0284(loc_unit02)and IsUnitVisible(loc_unit02,GetOwningPlayer(loc_unit01))==false then
            call KillUnit(loc_unit01)
        elseif ModuloInteger(GetTriggerEvalCount(loc_trigger01),5)==0 then
            call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 79087 ~ 79102
function Func3832 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call UnitRemoveAbility(loc_unit01,'Avul')
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call Func0193(loc_unit02,'A1QZ')
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3831))
    call TriggerEvaluate(loc_trigger01)
    call UnitApplyTimedLife(loc_unit01,'BTLF',12+2*loc_integer01)
    set loc_trigger01=null
endfunction
