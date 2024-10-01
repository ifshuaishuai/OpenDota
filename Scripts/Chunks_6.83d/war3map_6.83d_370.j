
// 52589 ~ 52604
function Func2286 takes nothing returns boolean
    local unit loc_unit01=GetSummonedUnit()
    local unit loc_unit02
    local unit loc_unit03
    if GetUnitAbilityLevel(loc_unit01,'B098')>0 then
        set loc_unit02=GetSummoningUnit()
        set loc_unit03=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit02)),(303)))
        call SetUnitX(loc_unit01,GetUnitX(loc_unit03))
        call SetUnitY(loc_unit01,GetUnitY(loc_unit03))
        call IssueTargetOrder(loc_unit01,"attack",loc_unit03)
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction
