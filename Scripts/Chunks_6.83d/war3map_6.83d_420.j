
// 55509 ~ 55511
function Func2473 takes nothing returns boolean
    return GetUnitTypeId(GetAttacker())=='n01G' or GetUnitTypeId(GetAttacker())=='n01C' or GetUnitTypeId(GetAttacker())=='n018' or GetUnitTypeId(GetAttacker())=='n004'
endfunction

// 55513 ~ 55521
function Func2474 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    local unit loc_unit02=units001[GetPlayerId(GetOwningPlayer(loc_unit01))]
    if((GetUnitX(loc_unit02)-GetUnitX(loc_unit01))*(GetUnitX(loc_unit02)-GetUnitX(loc_unit01))+(GetUnitY(loc_unit02)-GetUnitY(loc_unit01))*(GetUnitY(loc_unit02)-GetUnitY(loc_unit01))>=(1100*1100))then
        call IssueImmediateOrder(loc_unit01,"stop")
    else
        call Func2472()
    endif
endfunction

// 55523 ~ 55528
function Func2475 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2473))
    call TriggerAddAction(loc_trigger01,function Func2474)
endfunction

// 55530 ~ 55532
function Func2476 takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit())=='n01G' or GetUnitTypeId(GetTriggerUnit())=='n01C' or GetUnitTypeId(GetTriggerUnit())=='n018' or GetUnitTypeId(GetTriggerUnit())=='n004')and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 55534 ~ 55546
function Func2477 takes nothing returns nothing
    local location loc_location01
    if Func0056(GetOwningPlayer(GetTriggerUnit()))then
        set loc_location01=GetRectCenter(rect011)
    else
        set loc_location01=GetRectCenter(rect004)
    endif
    if Func0404(GetEnumItem())==false then
        call SetItemPositionLoc(GetEnumItem(),loc_location01)
    endif
    call RemoveLocation(loc_location01)
    set loc_location01=null
endfunction
