
// 82034 ~ 82037
function Func3966 takes nothing returns nothing
    call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)+real371)
    call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\BirdShitTarget_1.mdx",GetEnumUnit(),"origin"))
endfunction

// 82039 ~ 82061
function Func3967 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group01
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A27B')
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call DestroyEffect(AddSpecialEffect("war3mapImported\\Firaga_2.mdx",loc_real01,loc_real02))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_group01=Func0030()
    set real371=50+75*loc_integer02
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,425,Condition(function Func0332))
    call ForGroup(loc_group01,function Func3966)
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 82063 ~ 82087
function Func3968 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    call TriggerRegisterTimerEvent(loc_trigger01,3,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3967))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    if IsPlayerAlly(GetOwningPlayer(loc_unit01),GetLocalPlayer())or Func0107(GetLocalPlayer())then
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffect("war3mapImported\\BirdShit_1.mdx",loc_real01,loc_real02)))
    else
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffect("",loc_real01,loc_real02)))
    endif
    if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(loc_unit01))or Func0107(GetLocalPlayer())then
        call PingMinimapEx(loc_real01,loc_real02,3,255,0,0,false)
        call Func0184(sound066,loc_real01,loc_real02)
    endif
    call Func0186(GetOwningPlayer(loc_unit01),4,loc_real01,loc_real02,500)
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)*0.9)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 82089 ~ 82094
function Func3969 takes nothing returns boolean
    if GetSpellAbilityId()=='A27B' then
        call Func3968()
    endif
    return false
endfunction

// 82096 ~ 82101
function Func3970 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3969))
    set loc_trigger01=null
endfunction
