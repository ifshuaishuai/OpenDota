
// 52135 ~ 52143
function Func2262 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=unit293
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),700,Condition(function Func2259))
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 52145 ~ 52159
function Func2263 takes nothing returns boolean
    if GetSpellAbilityId()=='A24D' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
            if Func0028(GetSpellTargetUnit())==false then
                set integer479=0
                set unit293=GetSpellTargetUnit()
                call Func2258(GetTriggerUnit(),unit293,GetUnitAbilityLevel(GetTriggerUnit(),'A24D'))
                call Func2262()
            endif
        else
            call Func2261()
        endif
    endif
    return false
endfunction

// 52161 ~ 52167
function Func2264 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2263))
    set loc_trigger01=null
endfunction
