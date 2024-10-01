
// 23009 ~ 23032
function Func0935 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit02
    if GetUnitX(loc_unit01)!=loc_real01 or GetUnitY(loc_unit01)!=loc_real02 or(GetUnitAbilityLevel(loc_unit01,'B0G8')==0 and GetTriggerEvalCount(loc_trigger01)>R2I(1.5/.05))then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4330)),(2))
        call UnitRemoveAbility(loc_unit01,'B0G6')
        call UnitRemoveAbility(loc_unit01,'B0G8')
    elseif GetTriggerEvalCount(loc_trigger01)==R2I(1.5/.05)then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        call UnitAddAbility(loc_unit02,'A2N5')
        call IssueTargetOrder(loc_unit02,"invisibility",loc_unit01)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4330)),(2))
        set loc_unit02=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
