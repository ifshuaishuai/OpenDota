
// 85686 ~ 85727
function Func4109 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1YQ')
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local real loc_real01=(loc_integer03-50)*(loc_integer03-50)/4.3
    local real loc_real02
    if loc_integer02==1 then
        set loc_real02=75
    elseif loc_integer02==2 then
        set loc_real02=150
    else
        set loc_real02=225
    endif
    if loc_integer03==1 then
        call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
    endif
    if loc_integer03<50 then
        if Func0100(loc_unit02)==false then
            call SetUnitFlyHeight(loc_unit02,700*loc_integer03/50,0)
        endif
    elseif loc_integer03<100 then
        if Func0100(loc_unit02)==false then
            call SetUnitFlyHeight(loc_unit02,700-700*(loc_integer03-50)/50,0)
        endif
    else
        if Func0100(loc_unit02)==false then
            call SetUnitFlyHeight(loc_unit02,GetUnitDefaultFlyHeight(loc_unit02),0)
        endif
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func0246(loc_unit02,'A204',1,1+loc_integer02,'B0DY')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A204',false)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 85729 ~ 85754
function Func4110 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1YQ')
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0173("WALRUS PUNCH !!",3.5,loc_unit01,0.03,255,0,0,255)
    call Func0184(sound064,GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    call Func0193(loc_unit03,'A1UP')
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    if Func0100(loc_unit02)==false then
        call Func0193(loc_unit02,'Amrf')
        call UnitRemoveAbility(loc_unit02,'Amrf')
    endif
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",loc_unit02,"overhead"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",loc_unit02,"head"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",loc_unit02,"left,hand"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",loc_unit02,"right,hand"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",loc_unit02,"chest"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",loc_unit02,"origin"))
    call TriggerRegisterTimerEvent(loc_trigger01,.01,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4109))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathMissile.mdl",loc_unit02,"chest")))
    set loc_trigger01=null
endfunction

// 85756 ~ 85797
function Func4111 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local effect loc_effect01=(LoadEffectHandle(hashtable001,(loc_integer01),(32)))
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(35)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(375)))
    if GetTriggerEvalCount(loc_trigger01)==1 then
        call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
    else
        if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
            if GetEventDamageSource()==loc_unit01 and GetEventDamage()>30 then
                call Func0243(loc_unit01,'A1UH',1,0.1)
                call Func0243(loc_unit01,'A1UI',1,0.1)
                call DestroyEffect(loc_effect01)
                call Func0035(loc_trigger01)
                call FlushChildHashtable(hashtable001,(loc_integer01))
                call Func0035(loc_trigger02)
                call FlushChildHashtable(hashtable001,(loc_integer02))
                call Func4110(loc_unit01,loc_unit02)
            endif
        elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
            if GetAttacker()==loc_unit01 and GetTriggerUnit()!=loc_unit02 then
                call FlushChildHashtable(hashtable001,(loc_integer01))
                call Func0035(loc_trigger01)
            endif
        else
            call UnitRemoveAbility(loc_unit01,'A1UH')
            call UnitRemoveAbility(loc_unit01,'A1UI')
            call RemoveSavedHandle(hashtable001,(loc_integer02),(17))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    set loc_trigger02=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_effect01=null
    return false
endfunction

// 85799 ~ 85844
function Func4112 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02
    local effect loc_effect01=(LoadEffectHandle(hashtable001,(loc_integer01),(32)))
    local trigger loc_trigger02
    local integer loc_integer02
    if GetTriggerEventId()!=EVENT_PLAYER_UNIT_ATTACKED then
        call DestroyEffect(loc_effect01)
        call UnitRemoveAbility(loc_unit01,'A1UH')
        call UnitRemoveAbility(loc_unit01,'A1UI')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetAttacker()==loc_unit01 and GetTriggerUnit()!=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))and IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(loc_unit01))==false and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false then
        set loc_unit02=GetTriggerUnit()
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call UnitRemoveAbility(loc_unit01,'A1UH')
        call UnitRemoveAbility(loc_unit01,'A1UI')
        if GetUnitState(loc_unit02,UNIT_STATE_LIFE)/GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE)>0.5 then
            call Func0193(loc_unit01,'A1UH')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1UH',false)
        else
            call Func0193(loc_unit01,'A1UI')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1UI',false)
        endif
        call IssueImmediateOrder(loc_unit01,"stop")
        set loc_trigger02=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger02)
        call TriggerRegisterTimerEvent(loc_trigger02,0,false)
        call TriggerRegisterTimerEvent(loc_trigger02,2,false)
        call TriggerRegisterUnitEvent(loc_trigger02,loc_unit02,EVENT_UNIT_DAMAGED)
        call Func0176(loc_trigger02,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerAddCondition(loc_trigger02,Condition(function Func4111))
        call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
        call SaveEffectHandle(hashtable001,(loc_integer02),(32),(loc_effect01))
        call SaveInteger(hashtable001,(loc_integer02),(375),(loc_integer01))
        call SaveTriggerHandle(hashtable001,(loc_integer02),(35),(loc_trigger01))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_effect01=null
    return false
endfunction

// 85846 ~ 85858
function Func4113 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4112))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(null))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\WalrusPunchWeaponFX.mdx",loc_unit01,"weapon")))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 85860 ~ 85865
function Func4114 takes nothing returns boolean
    if GetSpellAbilityId()=='A1YQ' then
        call Func4113()
    endif
    return false
endfunction

// 85867 ~ 85872
function Func4115 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4114))
    set loc_trigger01=null
endfunction
