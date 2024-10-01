
// 60614 ~ 60628
function Func2776 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2774))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AR',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AS',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AU',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AT',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AQ',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AP',false)
    set loc_trigger01=null
endfunction

// 60630 ~ 60635
function Func2777 takes nothing returns boolean
    if GetLearnedSkill()=='A0S1' and GetUnitAbilityLevel(GetTriggerUnit(),'A0S1')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func2776()
    endif
    return false
endfunction

// 60637 ~ 60645
function Func2778 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2775))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2777))
    set loc_trigger01=null
endfunction
