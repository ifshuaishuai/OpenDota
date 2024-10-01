
// 70251 ~ 70260
function Func3305 takes nothing returns nothing
    local unit loc_unit01=unit349
    local unit loc_unit02=GetEnumUnit()
    local integer loc_integer01=integer517
    local trigger loc_trigger01=Func0196(loc_unit01,loc_unit02,'h0DF',"Func3334",600,false)
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call SaveReal(hashtable001,(loc_integer02),(20),((loc_integer01*125+25)*1.0))
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 70262 ~ 70271
function Func3306 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set unit349=loc_unit01
    set integer517=loc_integer01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),700+25,Condition(function Func0305))
    call ForGroup(loc_group01,function Func3305)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 70273 ~ 70364
function Func3307 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call UnitShareVision(loc_unit01,GetOwningPlayer(loc_unit02),false)
        call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
        call SetUnitPosition(loc_unit02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        call PauseUnit(loc_unit02,false)
        call ShowUnit(loc_unit02,true)
        call SetUnitPathing(loc_unit02,true)
        call ClearSelectionForPlayer(GetOwningPlayer(loc_unit02))
        call SelectUnitForPlayerSingle(loc_unit02,GetOwningPlayer(loc_unit02))
        call SetUnitInvulnerable(loc_unit02,false)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
        call RemoveUnit(loc_unit03)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func3306(loc_unit02,loc_unit01,loc_integer02)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4310)),(2))
    elseif IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true and IsUnitEnemy(loc_unit01,GetOwningPlayer(loc_unit02))==true then
        call UnitShareVision(loc_unit01,GetOwningPlayer(loc_unit02),false)
        call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
        call SetUnitPosition(loc_unit02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        call PauseUnit(loc_unit02,false)
        call ShowUnit(loc_unit02,true)
        call SetUnitPathing(loc_unit02,true)
        call ClearSelectionForPlayer(GetOwningPlayer(loc_unit02))
        call SelectUnitForPlayerSingle(loc_unit02,GetOwningPlayer(loc_unit02))
        call SetUnitInvulnerable(loc_unit02,false)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
        call RemoveUnit(loc_unit03)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func3306(loc_unit02,loc_unit01,loc_integer02)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4310)),(2))
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A0SX' then
        call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
        if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==false then
            call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+GetUnitState(loc_unit01,UNIT_STATE_LIFE))
        endif
        call UnitShareVision(loc_unit01,GetOwningPlayer(loc_unit02),false)
        call SetUnitPosition(loc_unit02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        call PauseUnit(loc_unit02,false)
        call ShowUnit(loc_unit02,true)
        call SetUnitPathing(loc_unit02,true)
        call SetUnitAnimation(loc_unit02,"Stand Victory")
        call Func0217(loc_unit02,1.5)
        call ClearSelectionForPlayer(GetOwningPlayer(loc_unit02))
        call SelectUnitForPlayerSingle(loc_unit02,GetOwningPlayer(loc_unit02))
        call SetUnitInvulnerable(loc_unit02,false)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
        call RemoveUnit(loc_unit03)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func3306(loc_unit02,loc_unit01,loc_integer02)
        if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==false then
            if Func0056(GetOwningPlayer(loc_unit02))then
                set loc_unit03=CreateUnit(players004[0],'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
                call SetUnitOwner(loc_unit01,players004[0],false)
            else
                set loc_unit03=CreateUnit(players003[0],'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
                call SetUnitOwner(loc_unit01,players003[0],false)
            endif
            call UnitAddAbility(loc_unit03,'A313')
            call IssueTargetOrder(loc_unit03,"charm",loc_unit01)
            call UnitRemoveBuffs(loc_unit01,true,true)
            call Func0371(loc_unit01,0,0)
            call Func0115(loc_unit02,loc_unit01,1,100000)
            call Func0115(loc_unit02,loc_unit01,2,100000)
            call Func0115(loc_unit02,loc_unit01,3,100000)
        endif
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4310)),(2))
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SELECTED then
        if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true or IsUnitIllusion(loc_unit01)==true then
            call ClearSelectionForPlayer(GetOwningPlayer(loc_unit02))
            call SelectUnitAddForPlayer(loc_unit03,GetOwningPlayer(loc_unit02))
        endif
    else
        call SetUnitPosition(loc_unit02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 70366 ~ 70417
function Func3308 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e010',7260,-7732,0)
    local string loc_string01="Objects\\Spawnmodels\\Naga\\NagaBlood\\NagaBloodWindserpent.mdl"
    local string loc_string02="Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBase.mdl"
    local string loc_string03="Abilities\\Spells\\Other\\Aneu\\AneuTarget.mdl"
    if IsPlayerEnemy(GetLocalPlayer(),GetOwningPlayer(loc_unit01))and Func0107(GetLocalPlayer())==false then
        set loc_string01=""
        set loc_string02=""
        set loc_string03=""
    endif
    call UnitRemoveBuffs(loc_unit01,true,true)
    call Func0371(loc_unit01,0,0)
    call SetUnitInvulnerable(loc_unit03,true)
    call Func0193(loc_unit03,'A0SX')
    call ClearSelectionForPlayer(GetOwningPlayer(loc_unit01))
    call SelectUnitForPlayerSingle(loc_unit03,GetOwningPlayer(loc_unit01))
    call UnitShareVision(loc_unit02,GetOwningPlayer(loc_unit01),true)
    call SetUnitInvulnerable(loc_unit01,true)
    call ShowUnit(loc_unit01,false)
    call PauseUnit(loc_unit01,true)
    call SetUnitPathing(loc_unit01,false)
    call DestroyEffect(AddSpecialEffectTarget(loc_string01,loc_unit02,"overhead"))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget(loc_string02,loc_unit02,"overhead")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(177),(AddSpecialEffectTarget(loc_string03,loc_unit02,"overhead")))
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(loc_unit01,'A0SW')))
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterPlayerUnitEvent(loc_trigger01,GetOwningPlayer(loc_unit01),EVENT_PLAYER_UNIT_SELECTED,Condition(function Func0011))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3307))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4310)),(1))
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==false and IsUnitIllusion(loc_unit02)==false then
        call Func0193(loc_unit02,'A0SX')
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_SPELL_EFFECT)
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        call UnitAddAbility(loc_unit03,'A313')
        call IssueTargetOrder(loc_unit03,"charm",loc_unit02)
        call ClearSelectionForPlayer(GetOwningPlayer(loc_unit01))
        call SelectUnitForPlayerSingle(loc_unit02,GetOwningPlayer(loc_unit01))
        call SetUnitState(loc_unit02,UNIT_STATE_MANA,GetUnitState(loc_unit02,UNIT_STATE_MAX_MANA))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 70419 ~ 70424
function Func3309 takes nothing returns boolean
    if GetSpellAbilityId()=='A0SW' then
        call Func3308()
    endif
    return false
endfunction
