
// 21210 ~ 21222
function Func0815 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    if Func0194(loc_unit01)==false and loc_unit01!=null then
        call SetUnitScale(loc_unit01,Func0050(loc_unit01)*real258,Func0050(loc_unit01)*real258,Func0050(loc_unit01)*real258)
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 21224 ~ 21248
function Func0816 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local trigger loc_trigger01=CreateTrigger()
    local real loc_real01=Func0814(GetSpellAbilityId())
    call Func0205(loc_unit01,integer418,loc_real01)
    call UnitMakeAbilityPermanent(loc_unit01,true,integer418)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),integer418,false)
    call UnitAddAbility(loc_unit02,Func0813(GetSpellAbilityId()))
    call IssueTargetOrder(loc_unit02,"antimagicshell",loc_unit01)
    call Func0371(loc_unit01,0,0)
    call UnitRemoveAbility(loc_unit01,'BHtc')
    call UnitRemoveAbility(loc_unit01,'B02U')
    if Func0096(loc_unit01)then
        call Func0203(loc_unit01,loc_real01,3)
    else
        call Func0203(loc_unit01,loc_real01,1.4)
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01+7,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0815))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 21250 ~ 21254
function Func0817 takes nothing returns nothing
    if Func0813(GetSpellAbilityId())>0 then
        call Func0816()
    endif
endfunction
