
// 22664 ~ 22688
function Func0914 takes nothing returns boolean
    local unit loc_unit01=GetSummonedUnit()
    local integer loc_integer01=0
    local item loc_item01
    local integer loc_integer02
    if IsUnitIllusion(loc_unit01)==true then
        loop
            exitwhen loc_integer01>5
            set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
            set loc_integer02=Func0399(loc_item01)
            if loc_integer02==integer135 then
                call DisableTrigger(trigger057)
                set player005=GetItemPlayer(loc_item01)
                call RemoveItem(loc_item01)
                set item002=Func0410(loc_unit01,integers089[integer136],loc_integer01)
                call SetItemPlayer(item002,player005,false)
                call SetItemUserData(item002,1)
                call EnableTrigger(trigger057)
            endif
            set loc_integer01=loc_integer01+1
        endloop
    endif
    set loc_unit01=null
    return false
endfunction

// 22690 ~ 22714
function Func0915 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit02
    if GetUnitX(loc_unit01)!=loc_real01 or GetUnitY(loc_unit01)!=loc_real02 or(GetUnitAbilityLevel(loc_unit01,'B0GM')==0 and GetTriggerEvalCount(loc_trigger01)>R2I(0.3/.05))or GetTriggerEvalCount(loc_trigger01)>R2I(real209/.05)then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4337)),(2))
        call UnitRemoveAbility(loc_unit01,'B0GL')
        call UnitRemoveAbility(loc_unit01,'B0GM')
        call UnitRemoveAbility(loc_unit01,'A2R3')
    elseif GetTriggerEvalCount(loc_trigger01)==R2I(0.3/.05)then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        call UnitAddAbility(loc_unit02,'A2R2')
        call IssueTargetOrder(loc_unit02,"invisibility",loc_unit01)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4337)),(2))
        set loc_unit02=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
