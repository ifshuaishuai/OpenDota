
// 83555 ~ 83572
function Func4019 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(826)))
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2XE')
    if loc_integer01>0 then
        call UnitAddAbility(loc_unit03,'A1SA')
        call SetUnitAbilityLevel(loc_unit03,'A1SA',loc_integer02)
        call IssueTargetOrder(loc_unit03,"purge",loc_unit02)
        call UnitRemoveAbility(loc_unit01,integers173[loc_integer01])
        set loc_integer01=loc_integer01-1
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(826),(loc_integer01))
        call Func0193(loc_unit01,integers173[loc_integer01])
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction
