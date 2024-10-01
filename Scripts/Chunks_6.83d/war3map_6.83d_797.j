
// 83574 ~ 83595
function Func4020 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(826)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if loc_integer02<3 then
        set loc_integer03=loc_integer03-1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        if loc_integer03==0 then
            call UnitRemoveAbility(loc_unit01,integers173[loc_integer02])
            set loc_integer03=40
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
            set loc_integer02=loc_integer02+1
            call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(826),(loc_integer02))
            call Func0193(loc_unit01,integers173[loc_integer02])
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 83597 ~ 83626
function Func4021 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2XE')
    local trigger loc_trigger01
    local integer loc_integer02
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,integers173[0])
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,integers173[1])
    local integer loc_integer05=GetUnitAbilityLevel(loc_unit01,integers173[2])
    local integer loc_integer06=GetUnitAbilityLevel(loc_unit01,integers173[3])
    if loc_integer01>0 and(loc_integer03+loc_integer04+loc_integer05+loc_integer06)==0 then
        call UnitRemoveAbility(loc_unit01,'A1SA')
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(826),(3))
        call Func0193(loc_unit01,integers173[3])
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4020))
        call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
        call SaveInteger(hashtable001,(loc_integer02),(34),(40))
        set loc_trigger01=null
    endif
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2XI')
        if loc_integer01>0 then
            call Func0193(loc_unit01,'A1SA')
            call SetUnitAbilityLevel(loc_unit01,'A1SA',loc_integer01)
        endif
    endif
    set loc_unit01=null
endfunction

// 83628 ~ 83643
function Func4022 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_HERO_SKILL then
        if(GetLearnedSkill()=='A2XI' or GetLearnedSkill()=='A2XE')and IsUnitIllusion(GetTriggerUnit())==false then
            call Func4021()
        endif
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
        if GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and Func0399(GetManipulatedItem())==integer383 then
            call Func4021()
        endif
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
        if(GetSpellAbilityId()==integers173[0]or GetSpellAbilityId()==integers173[1]or GetSpellAbilityId()==integers173[2]or GetSpellAbilityId()==integers173[3])and IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true and Func0028(GetSpellTargetUnit())==false then
            call Func4019()
        endif
    endif
    return false
endfunction

// 83645 ~ 83659
function Func4023 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4018))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4022))
    set integers173[0]='A2XH'
    set integers173[1]='A2XC'
    set integers173[2]='A2XB'
    set integers173[3]='A2Y4'
    set loc_trigger01=null
endfunction
