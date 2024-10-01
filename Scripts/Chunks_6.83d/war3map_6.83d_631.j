
// 70649 ~ 70671
function Func3330 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A060')
    local real loc_real01=2*loc_integer02
    local real loc_real02=loc_integer02
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if loc_integer02==4 then
        set loc_real01=10
    endif
    set loc_real02=loc_real02*loc_integer03
    set loc_real01=loc_real01*loc_integer03
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+loc_real01)
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real02)
    if GetTriggerEvalCount(loc_trigger01)>5 or GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 70673 ~ 70688
function Func3331 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A060')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl",loc_unit01,"origin"))
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3330))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true then
        call SaveInteger(hashtable001,(loc_integer02),(34),(10))
    else
        call SaveInteger(hashtable001,(loc_integer02),(34),(1))
    endif
    set loc_trigger01=null
endfunction

// 70690 ~ 70697
function Func3332 takes nothing returns boolean
    if GetUnitAbilityLevel(GetKillingUnit(),'B02R')>0 then
        call Func3331(GetKillingUnit())
    elseif((LoadInteger(hashtable001,(GetHandleId((GetTriggerUnit()))),((4333))))==1)then
        call Func3331(unit351)
    endif
    return false
endfunction

// 70699 ~ 70704
function Func3333 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3332))
    set loc_trigger01=null
endfunction
