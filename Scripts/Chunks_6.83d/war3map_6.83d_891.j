
// 91695 ~ 91705
function Func4422 takes nothing returns boolean
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

// 91707 ~ 91720
function Func4423 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    call SetTerrainPathable(loc_real01,loc_real02,PATHING_TYPE_WALKABILITY,true)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4422))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 91722 ~ 91738
function Func4424 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_HERO_SKILL then
        if GetLearnedSkill()=='A2NE' and GetUnitAbilityLevel(GetTriggerUnit(),'A2NE')==1 then
            call Func4421()
        endif
    else
        if GetSpellAbilityId()=='A2NE' then
            if GetUnitTypeId(GetTriggerUnit())!='N0M7' then
                call Func0180(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),150)
                if IsTerrainPathable(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),PATHING_TYPE_WALKABILITY)then
                    call Func4423()
                endif
            endif
        endif
    endif
    return false
endfunction

// 91740 ~ 91746
function Func4425 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4424))
    set loc_trigger01=null
endfunction
