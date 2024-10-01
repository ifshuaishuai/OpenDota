
// 70500 ~ 70508
function Func3316 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0SS')
    local real loc_real01=(0.03+0.01*loc_integer01)*GetUnitState(loc_unit02,UNIT_STATE_LIFE)
    if GetUnitAbilityLevel(loc_unit02,'A04R')==0 and GetUnitAbilityLevel(loc_unit01,'BNdo')==0 then
        call Func0115(loc_unit01,loc_unit02,2,loc_real01)
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real01+GetUnitState(loc_unit01,UNIT_STATE_LIFE))
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl",loc_unit01,"origin"))
    endif
endfunction

// 70510 ~ 70533
function Func3317 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 then
            call DisableTrigger(loc_trigger01)
            call Func3316(loc_unit02,loc_unit01)
            call Func0021(loc_integer02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 70535 ~ 70548
function Func3318 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3317))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 70550 ~ 70556
function Func3319 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4274))))==1)==false then
        call Func0044(loc_unit01,4274,0.4)
        call Func3318()
    endif
endfunction

// 70558 ~ 70563
function Func3320 takes nothing returns boolean
    if GetUnitAbilityLevel(GetAttacker(),'A0SS')>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))and GetUnitTypeId(GetTriggerUnit())!='n00L' and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
        call Func3319()
    endif
    return false
endfunction

// 70565 ~ 70571
function Func3321 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3320))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 70573 ~ 70578
function Func3322 takes nothing returns boolean
    if GetLearnedSkill()=='A0SS' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A0SS')==1 then
        call Func3321()
    endif
    return false
endfunction

// 70580 ~ 70585
function Func3323 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3322))
    set loc_trigger01=null
endfunction
