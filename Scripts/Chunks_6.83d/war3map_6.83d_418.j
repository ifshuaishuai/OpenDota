
// 55418 ~ 55420
function Func2463 takes nothing returns boolean
    return GetSpellAbilityId()=='A0A7'
endfunction

// 55422 ~ 55427
function Func2464 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=units001[GetPlayerId(GetOwningPlayer(loc_unit01))]
    call SetUnitX(loc_unit01,GetUnitX(loc_unit02)+GetRandomReal(25,50)*Cos(GetRandomReal(0,360)))
    call SetUnitY(loc_unit01,GetUnitY(loc_unit02)+GetRandomReal(25,50)*Sin(GetRandomReal(0,360)))
endfunction

// 55429 ~ 55434
function Func2465 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2463))
    call TriggerAddAction(loc_trigger01,function Func2464)
endfunction

// 55436 ~ 55438
function Func2466 takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit())=='N013' or GetUnitTypeId(GetTriggerUnit())=='N01O' or GetUnitTypeId(GetTriggerUnit())=='N015' or GetUnitTypeId(GetTriggerUnit())=='N014')and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 55440 ~ 55443
function Func2467 takes nothing returns nothing
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(GetOwningPlayer(GetTriggerUnit()))),(333)))
    call KillUnit(loc_unit01)
endfunction

// 55445 ~ 55450
function Func2468 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2466))
    call TriggerAddAction(loc_trigger01,function Func2467)
endfunction
