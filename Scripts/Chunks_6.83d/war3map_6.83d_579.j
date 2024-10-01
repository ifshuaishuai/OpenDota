
// 66808 ~ 66818
function Func3125 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(GetTriggerUnit(),'A2S0')
    if loc_integer01==1 then
        call Func0193(loc_unit01,'A2RZ')
    elseif((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4338))))==1)==false then
        call SetUnitAbilityLevel(loc_unit01,'A2RZ',loc_integer01)
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2RZ',false)
    set loc_unit01=null
endfunction

// 66820 ~ 66833
function Func3126 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_HERO_SKILL then
        if GetLearnedSkill()=='A2S0' and IsUnitIllusion(GetTriggerUnit())==false then
            call Func3125()
        endif
    else
        if GetSpellAbilityId()=='A2S0' then
            if Func0028(GetSpellTargetUnit())==false then
                call Func3124()
            endif
        endif
    endif
    return false
endfunction

// 66835 ~ 66841
function Func3127 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3126))
    set loc_trigger01=null
endfunction
