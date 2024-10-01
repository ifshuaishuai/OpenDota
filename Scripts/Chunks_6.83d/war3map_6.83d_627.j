
// 70444 ~ 70462
function Func3312 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    if GetUnitTypeId(loc_unit01)=='E02X' then
        call SetUnitVertexColor(loc_unit01,255,255,255,255)
    else
        call SetUnitVertexColor(loc_unit01,100,100,100,255)
    endif
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
    call UnitRemoveAbility(loc_unit01,'A0SR')
    call UnitRemoveAbility(loc_unit01,'A0ST')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 70464 ~ 70484
function Func3313 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2TT')
    call SetUnitVertexColor(loc_unit01,0,0,0,255)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0ST',false)
    call Func0193(loc_unit01,'A0ST')
    call Func0193(loc_unit01,'A0SR')
    call SetUnitAbilityLevel(loc_unit01,'A0SR',loc_integer02)
    call Func0371(loc_unit01,0,0)
    call UnitRemoveAbility(loc_unit01,'BHtc')
    call UnitRemoveAbility(loc_unit01,'B02U')
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\Bloodlust\\BloodlustTarget.mdl",loc_unit01,"right hand")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\Bloodlust\\BloodlustTarget.mdl",loc_unit01,"left hand")))
    call TriggerRegisterTimerEvent(loc_trigger01,2+loc_integer02,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3312))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 70486 ~ 70491
function Func3314 takes nothing returns boolean
    if GetSpellAbilityId()=='A2TT' then
        call Func3313()
    endif
    return false
endfunction

// 70493 ~ 70498
function Func3315 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3314))
    set loc_trigger01=null
endfunction
