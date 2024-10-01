
// 49943 ~ 49954
function Func2126 takes integer loc_integer01 returns integer
    if loc_integer01==1 then
        return 'B09M'
    elseif loc_integer01==2 then
        return 'B09N'
    elseif loc_integer01==3 then
        return 'B09O'
    elseif loc_integer01==4 then
        return 'B09L'
    endif
    return 0
endfunction

// 49956 ~ 50001
function Func2127 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=SquareRoot((loc_real01-loc_real03)*(loc_real01-loc_real03)+(loc_real02-loc_real04)*(loc_real02-loc_real04))
    local real loc_real06=(0.00050)*loc_real05*GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA)
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit02
    if Func0098(loc_unit01)==true then
        set loc_real06=0
    endif
    if loc_real05>300 then
        set loc_real06=0
    endif
    if loc_real06>1 and ModuloInteger(GetTriggerEvalCount(loc_trigger01),3)==0 then
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\WingedSerpentMissile\\WingedSerpentMissile.mdl",loc_unit01,"chest"))
    endif
    if loc_real06>0 then
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)-loc_real06)
    endif
    call SaveReal(hashtable001,(loc_integer01),(23),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((loc_real04)*1.0))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or loc_integer03==(loc_integer02+4)*10 then
        call UnitRemoveAbility(loc_unit01,Func2125(loc_integer02))
        call UnitRemoveAbility(loc_unit01,Func2126(loc_integer02))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetUnitState(loc_unit01,UNIT_STATE_MANA)<1 then
        call Func0365((LoadUnitHandle(hashtable001,(loc_integer01),(2))),loc_unit01,1+0.5*loc_integer02)
        set loc_unit02=null
        call UnitRemoveAbility(loc_unit01,Func2125(loc_integer02))
        call UnitRemoveAbility(loc_unit01,Func2126(loc_integer02))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 50003 ~ 50021
function Func2128 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A10X')
    call Func0193(loc_unit02,Func2125(loc_integer02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer01),(23),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((GetUnitY(loc_unit02))*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("effects\\BasicWaterFlash.mdx",loc_unit02,"chest")))
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2127))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 50023 ~ 50028
function Func2129 takes nothing returns boolean
    if GetSpellAbilityId()=='A10X' and Func0028(GetSpellTargetUnit())==false then
        call Func2128()
    endif
    return false
endfunction

// 50030 ~ 50035
function Func2130 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2129))
    set loc_trigger01=null
endfunction
