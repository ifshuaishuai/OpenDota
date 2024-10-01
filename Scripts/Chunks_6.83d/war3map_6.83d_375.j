
// 52905 ~ 52917
function Func2305 takes nothing returns boolean
    if GetUnitAbilityLevel(GetTriggerUnit(),'A0YK')>0 then
        if GetIssuedOrderId()==851971 and GetOrderTargetUnit()!=null and IsPlayerAlly(GetOwningPlayer(GetTriggerUnit()),GetOwningPlayer(GetOrderTargetUnit()))==false then
            call SaveUnitHandle(hashtable001,(GetHandleId(GetTriggerUnit())),(831),(GetOrderTargetUnit()))
        elseif GetIssuedOrderId()==851983 and GetOrderTargetUnit()!=null and IsPlayerAlly(GetOwningPlayer(GetTriggerUnit()),GetOwningPlayer(GetOrderTargetUnit()))==false then
            call SaveUnitHandle(hashtable001,(GetHandleId(GetTriggerUnit())),(831),(GetOrderTargetUnit()))
        else
            call SaveUnitHandle(hashtable001,(GetHandleId(GetTriggerUnit())),(831),(null))
            call RemoveSavedHandle(hashtable001,(GetHandleId(GetTriggerUnit())),(831))
        endif
    endif
    return false
endfunction

// 52919 ~ 52924
function Func2306 takes nothing returns boolean
    if GetUnitAbilityLevel(GetTriggerUnit(),'A0YK')==1 then
        call Func2304()
    endif
    return false
endfunction

// 52926 ~ 52936
function Func2307 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2305))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2306))
    set loc_trigger01=null
endfunction

// 52938 ~ 52942
function Func2308 takes nothing returns nothing
    call SetUnitX(GetEnumUnit(),real299+GetRandomInt(0,500)-250)
    call SetUnitY(GetEnumUnit(),real300+GetRandomInt(0,500)-250)
    call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\DG_Reappear.mdx",GetEnumUnit(),"chest"))
endfunction

// 52944 ~ 52946
function Func2309 takes nothing returns boolean
    return GetOwningPlayer(unit295)==GetOwningPlayer(GetFilterUnit())and IsUnitIllusion(GetFilterUnit())==true
endfunction

// 52948 ~ 52954
function Func2310 takes nothing returns nothing
    call SetUnitInvulnerable(GetEnumUnit(),false)
    call PauseUnit(GetEnumUnit(),false)
    call ShowUnit(GetEnumUnit(),true)
    call SetUnitX(GetEnumUnit(),real299+GetRandomInt(0,250))
    call SetUnitY(GetEnumUnit(),real300+GetRandomInt(0,250))
endfunction

// 52956 ~ 52991
function Func2311 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit02
    call Func0186(GetOwningPlayer(loc_unit01),1,loc_real01,loc_real02,925)
    call Func0180(loc_real01,loc_real02,225)
    set real299=loc_real01
    set real300=loc_real02
    call ForGroup(loc_group01,function Func2310)
    call GroupAddUnit(loc_group01,loc_unit01)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call Func0193(loc_unit02,'A30E')
    call IssueTargetOrderById(loc_unit02,852274,loc_unit01)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call Func0193(loc_unit02,'A30D')
    call IssueTargetOrderById(loc_unit02,852274,loc_unit01)
    call Func0029(loc_group01)
    call Func0035(loc_trigger01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    set loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,925,Condition(function Func2309))
    call GroupAddUnit(loc_group01,loc_unit01)
    call ForGroup(loc_group01,function Func2308)
    call Func0029(loc_group01)
    call ClearSelectionForPlayer(GetOwningPlayer(loc_unit01))
    call SelectUnitAddForPlayer(loc_unit01,GetOwningPlayer(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    set loc_unit02=null
    return false
endfunction
