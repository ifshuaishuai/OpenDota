
// 79618 ~ 79645
function Func3864 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit02
    if GetUnitAbilityLevel(loc_unit01,'B0CD')==0 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetOwningPlayer(loc_unit01)!=GetOwningPlayer(GetEventDamageSource())and GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)*(0.09+0.01*loc_integer02)>GetUnitState(loc_unit01,UNIT_STATE_LIFE)and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((2485))))==1)==false then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit01,'A1JA')
        call UnitRemoveAbility(loc_unit01,'B0CD')
        call UnitRemoveAbility(loc_unit01,'A1LD')
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",loc_unit01,"overhead"))
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",loc_unit01,"chest"))
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",loc_unit01,"origin"))
        set loc_unit02=CreateUnit(GetOwningPlayer(GetEventDamageSource()),'e00E',0,0,0)
        call UnitRemoveBuffs(loc_unit01,true,true)
        call UnitRemoveAbility(loc_unit01,'Aetl')
        call UnitDamageTarget(loc_unit02,loc_unit01,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
        set loc_unit02=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 79647 ~ 79675
function Func3865 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1MI')
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(loc_unit02))
    local trigger loc_trigger01
    local integer loc_integer03
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2QE')
    endif
    if loc_integer01>0 and IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true and IsUnitIllusion(loc_unit02)==false and Func0468(GetUnitTypeId(loc_unit02))==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer03=GetHandleId(loc_trigger01)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3864))
        call SaveUnitHandle(hashtable001,(loc_integer03),(17),(loc_unit02))
        call SaveInteger(hashtable001,(loc_integer03),(5),(loc_integer01))
        call Func0193(loc_unit02,'A1JA')
        call Func0193(loc_unit02,'A1LD')
        if GetUnitAbilityLevel(loc_unit01,'A2QE')>0 then
            set reals029[loc_integer02]=(TimerGetElapsed(timer001))+real368
        else
            set reals029[loc_integer02]=(TimerGetElapsed(timer001))+7+loc_integer01
        endif
        set reals030[loc_integer02]=GetUnitState(loc_unit02,UNIT_STATE_LIFE)
        set reals031[loc_integer02]=GetUnitState(loc_unit02,UNIT_STATE_MANA)
        set units031[loc_integer02]=loc_unit01
        set integers172[loc_integer02]=loc_integer01
    endif
    set loc_trigger01=null
endfunction

// 79677 ~ 79706
function Func3866 takes nothing returns nothing
    local unit loc_unit01=unit124
    local unit loc_unit02=GetEnumUnit()
    local integer loc_integer01=GetPlayerId(GetOwningPlayer(loc_unit02))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1MI')
    local trigger loc_trigger01
    local integer loc_integer03
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true and IsUnitIllusion(loc_unit02)==false and GetUnitAbilityLevel(loc_unit02,'B0CD')==0 and Func0468(GetUnitTypeId(loc_unit02))==false then
        if GetUnitAbilityLevel(loc_unit01,'A2QE')>0 then
            set reals029[loc_integer01]=real368
        else
            set reals029[loc_integer01]=(TimerGetElapsed(timer001))+7+loc_integer02
        endif
        call Func0193(loc_unit02,'A1JA')
        call Func0193(loc_unit02,'A1LD')
        set reals030[loc_integer01]=GetUnitState(loc_unit02,UNIT_STATE_LIFE)
        set reals031[loc_integer01]=GetUnitState(loc_unit02,UNIT_STATE_MANA)
        set units031[loc_integer01]=loc_unit01
        set integers172[loc_integer01]=loc_integer02
        set loc_trigger01=CreateTrigger()
        set loc_integer03=GetHandleId(loc_trigger01)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3864))
        call SaveUnitHandle(hashtable001,(loc_integer03),(17),(loc_unit02))
        call SaveInteger(hashtable001,(loc_integer03),(5),(loc_integer02))
        set loc_trigger01=null
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 79708 ~ 79729
function Func3867 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(282)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(283)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,825,Condition(function Func0342))
    call ForGroup(loc_group01,function Func3866)
    call Func0029(loc_group01)
    if GetTriggerEvalCount(loc_trigger01)>120 then
        call KillUnit((LoadUnitHandle(hashtable001,(loc_integer01),(434))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 79731 ~ 79770
function Func3868 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=GetUnitFacing(loc_unit01)
    local real loc_real04
    local real loc_real05
    local unit loc_unit02
    local unit loc_unit03
    local unit loc_unit04
    local unit loc_unit05
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1MI')
    call RemoveLocation(loc_location01)
    set loc_real04=loc_real01+350*Cos(loc_real03*bj_DEGTORAD)
    set loc_real05=loc_real02+350*Sin(loc_real03*bj_DEGTORAD)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0B3',loc_real01,loc_real02,loc_real03)
    set loc_real04=loc_real01+350*Cos(loc_real03*bj_DEGTORAD)
    set loc_real05=loc_real02-350*Sin(loc_real03*bj_DEGTORAD)
    set loc_real04=loc_real01-350*Cos(loc_real03*bj_DEGTORAD)
    set loc_real05=loc_real02+350*Sin(loc_real03*bj_DEGTORAD)
    set loc_real04=loc_real01-350*Cos(loc_real03*bj_DEGTORAD)
    set loc_real05=loc_real02-350*Sin(loc_real03*bj_DEGTORAD)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3867))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(282),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(283),((loc_real02)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(434),(loc_unit02))
    set loc_location01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_unit05=null
    set loc_trigger01=null
endfunction
