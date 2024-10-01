
// 72683 ~ 72688
function Func3451 takes nothing returns boolean
    if GetLearnedSkill()=='A261' and GetUnitAbilityLevel(GetTriggerUnit(),'A261')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func3444()
    endif
    return false
endfunction

// 72690 ~ 72698
function Func3452 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3450))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3451))
    set loc_trigger01=null
endfunction

// 72700 ~ 72726
function Func3453 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit03
    if GetTriggerEventId()==EVENT_UNIT_SPELL_FINISH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit01)
        call UnitApplyTimedLife(loc_unit01,'BTLF',0.1)
    elseif Func0194(loc_unit01)then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
        if loc_real01!=GetUnitX(loc_unit01)or loc_real02!=GetUnitY(loc_unit01)then
            call UnitRemoveAbility(loc_unit01,'A2L4')
        else
            call UnitAddAbility(loc_unit01,'A2L4')
        endif
    endif
    return false
endfunction
