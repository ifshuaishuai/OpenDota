
// 61692 ~ 61702
function Func2832 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    call SetTerrainPathable(loc_real01,loc_real02,PATHING_TYPE_WALKABILITY,false)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 61704 ~ 61717
function Func2833 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    call SetTerrainPathable(loc_real01,loc_real02,PATHING_TYPE_WALKABILITY,true)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2832))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 61719 ~ 61734
function Func2834 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A19Z' then
            if GetUnitTypeId(GetTriggerUnit())=='O016' then
                call Func2829()
            elseif IsTerrainPathable(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),PATHING_TYPE_WALKABILITY)then
                call Func2833()
            endif
        endif
    else
        if GetLearnedSkill()=='A19Z' and GetUnitAbilityLevel(GetTriggerUnit(),'A19Z')==1 and IsUnitIllusion(GetTriggerUnit())==false then
            call Func2831()
        endif
    endif
    return false
endfunction

// 61736 ~ 61742
function Func2835 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2834))
    set loc_trigger01=null
endfunction
