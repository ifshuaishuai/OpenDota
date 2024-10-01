
// 23266 ~ 23285
function Func0951 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03
    if GetSpellTargetUnit()==null then
        if GetSpellAbilityId()=='AIpl' then
            set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
            call UnitAddAbility(loc_unit03,'A1WA')
            call IssueTargetOrderById(loc_unit03,852609,loc_unit01)
            set loc_unit03=null
        elseif GetSpellAbilityId()=='AIpr' then
            set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
            call UnitAddAbility(loc_unit03,'AIpr')
            call IssueTargetOrderById(loc_unit03,852609,loc_unit01)
            set loc_unit03=null
        endif
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 23287 ~ 23291
function Func0952 takes nothing returns nothing
    if GetSpellAbilityId()=='AIpl' or GetSpellAbilityId()=='AIpr' then
        call Func0951()
    endif
endfunction
