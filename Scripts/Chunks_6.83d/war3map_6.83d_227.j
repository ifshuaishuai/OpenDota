
// 43256 ~ 43266
function Func1700 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1V6')
    local real loc_real01=16+12*loc_integer01
    local real loc_real02=GetUnitState(loc_unit02,UNIT_STATE_MANA)
    local real loc_real03=RMinBJ(loc_real01,loc_real02)
    if loc_real03>0 then
        call SetUnitState(loc_unit02,UNIT_STATE_MANA,loc_real02-loc_real03)
        call Func0115(loc_unit01,loc_unit02,2,loc_real03*0.6)
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl",loc_unit02,"origin"))
    endif
endfunction

// 43268 ~ 43291
function Func1701 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 then
            call DisableTrigger(loc_trigger01)
            call Func1700(loc_unit02,loc_unit01)
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

// 43293 ~ 43306
function Func1702 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,0.4,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1701))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 43308 ~ 43314
function Func1703 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4274))))==1)==false then
        call Func0044(loc_unit01,4274,0.4)
        call Func1702()
    endif
endfunction

// 43316 ~ 43321
function Func1704 takes nothing returns boolean
    if GetUnitAbilityLevel(GetAttacker(),'A1V6')>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))and GetUnitTypeId(GetTriggerUnit())!='n00L' and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))and Func0098(GetTriggerUnit())==false then
        call Func1703()
    endif
    return false
endfunction

// 43323 ~ 43329
function Func1705 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1704))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 43331 ~ 43336
function Func1706 takes nothing returns boolean
    if GetLearnedSkill()=='A1V6' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A1V6')==1 then
        call Func1705()
    endif
    return false
endfunction

// 43338 ~ 43343
function Func1707 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1706))
    set loc_trigger01=null
endfunction
