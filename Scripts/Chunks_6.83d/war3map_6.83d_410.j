
// 54963 ~ 54966
function Func2434 takes nothing returns nothing
    call Func0365(unit305,GetEnumUnit(),2)
    call Func0115(unit305,GetEnumUnit(),1,integer482*75+25)
endfunction

// 54968 ~ 54983
function Func2435 takes player loc_player01,unit loc_unit01,integer loc_integer01 returns nothing
    local unit loc_unit02=CreateUnit(loc_player01,'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local integer loc_integer02
    local group loc_group01=Func0030()
    set integer482=loc_integer01
    set unit124=units001[GetPlayerId(loc_player01)]
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),280,Condition(function Func0305))
    call GroupAddUnit(loc_group01,loc_unit01)
    set unit305=loc_unit02
    call ForGroup(loc_group01,function Func2434)
    call Func0029(loc_group01)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\StormBolt\\StormBoltMissile.mdl",loc_unit01,"origin"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\StormBolt\\StormBoltMissile.mdl",loc_unit01,"origin"))
    set loc_unit02=null
    set loc_group01=null
endfunction

// 54985 ~ 55022
function Func2436 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=1000*0.035
    local real loc_real06=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)
    local real loc_real07=loc_real01+loc_real05*Cos(loc_real06*bj_DEGTORAD)
    local real loc_real08=loc_real02+loc_real05*Sin(loc_real06*bj_DEGTORAD)
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(249)))
    call SetUnitX(loc_unit02,loc_real07)
    call SetUnitY(loc_unit02,loc_real08)
    call SetUnitFacing(loc_unit02,loc_real06)
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4422))))==1)==true then
        set loc_boolean01=false
        call SaveBoolean(hashtable001,(loc_integer01),(249),(loc_boolean01))
    endif
    if Func0178(loc_real03,loc_real04,loc_real07,loc_real08)<=loc_real05 then
        if loc_boolean01 then
            call Func2435(loc_player01,loc_unit01,loc_integer03)
        endif
        call KillUnit(loc_unit02)
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 55024 ~ 55043
function Func2437 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A190')
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h07Q',GetUnitX(loc_unit01),GetUnitY(loc_unit01),Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    local boolean loc_boolean01=Func0028(GetSpellTargetUnit())==false
    call SaveBoolean(hashtable001,(loc_integer02),(249),(loc_boolean01))
    call SavePlayerHandle(hashtable001,(loc_integer02),(54),(GetOwningPlayer(loc_unit01)))
    call SaveInteger(hashtable001,(loc_integer02),(30),(Func0024(loc_unit02)))
    call SaveUnitHandle(hashtable001,(loc_integer02),(45),(loc_unit03))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.035,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2436))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 55045 ~ 55054
function Func2438 takes nothing returns boolean
    if GetSpellAbilityId()=='A190' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\Bolt\\BoltImpact.mdl",GetTriggerUnit(),"weapon"))
        else
            call Func2437()
        endif
    endif
    return false
endfunction

// 55056 ~ 55062
function Func2439 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2438))
    set loc_trigger01=null
endfunction
