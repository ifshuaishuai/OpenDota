
// 52319 ~ 52329
function Func2269 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0193(loc_unit03,'A2KR')
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)*0.4)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 52331 ~ 52336
function Func2270 takes nothing returns nothing
    local unit loc_unit01=unit124
    call Func0193(loc_unit01,'A2KQ')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2KQ',true)
    set loc_unit01=null
endfunction

// 52338 ~ 52342
function Func2271 takes nothing returns nothing
    local unit loc_unit01=unit124
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2KQ',false)
    set loc_unit01=null
endfunction
