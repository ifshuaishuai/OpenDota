
// 79968 ~ 80016
function Func3878 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit03
    local real loc_real03=(100+50*loc_integer02)/4
    if GetTriggerEventId()==EVENT_UNIT_DEATH or Func0149(loc_real01,loc_real02,GetUnitX(loc_unit02),GetUnitY(loc_unit02))>765 or GetUnitAbilityLevel(loc_unit02,'B0CC')==0 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call UnitRemoveAbility(loc_unit02,'A1J9')
        call UnitRemoveAbility(loc_unit02,'B0CC')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEvalCount(loc_trigger01)==(10*0.8)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\ShivasEnchantment.mdx",loc_unit02,"overhead")))
        call Func0115(loc_unit01,loc_unit02,1,loc_real03)
    elseif GetTriggerEvalCount(loc_trigger01)==(10*1.6)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\ShivasEnchantment.mdx",loc_unit02,"overhead")))
        call Func0115(loc_unit01,loc_unit02,1,loc_real03)
    elseif GetTriggerEvalCount(loc_trigger01)==(10*2.5)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\ShivasEnchantment.mdx",loc_unit02,"overhead")))
        call Func0115(loc_unit01,loc_unit02,1,loc_real03)
    elseif GetTriggerEvalCount(loc_trigger01)==(10*3.4)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call Func0115(loc_unit01,loc_unit02,1,loc_real03)
    elseif GetTriggerEvalCount(loc_trigger01)>(10*3.9)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call UnitRemoveAbility(loc_unit02,'A1J9')
        call UnitRemoveAbility(loc_unit02,'B0CC')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        call Func0193(loc_unit03,'A1MJ')
        call SetUnitAbilityLevel(loc_unit03,'A1MJ',loc_integer02)
        call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
        set loc_unit03=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 80018 ~ 80041
function Func3879 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1MG')
    local string loc_string01="Doodads\\Cinematic\\GlowingRunes\\GlowingRunes4.mdl"
    if GetLocalPlayer()==GetOwningPlayer(loc_unit02)then
    endif
    call Func0193(loc_unit02,'A1J9')
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit02))*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\ShivasEnchantment.mdx",loc_unit02,"overhead")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffect(loc_string01,GetUnitX(loc_unit02),GetUnitY(loc_unit02))))
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3878))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 80043 ~ 80048
function Func3880 takes nothing returns boolean
    if GetSpellAbilityId()=='A1MG' and Func0028(GetSpellTargetUnit())==false then
        call Func3879()
    endif
    return false
endfunction

// 80050 ~ 80055
function Func3881 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3880))
    set loc_trigger01=null
endfunction
