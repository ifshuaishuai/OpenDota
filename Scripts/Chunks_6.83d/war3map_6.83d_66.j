
// 19800 ~ 19807
function Func0765 takes nothing returns boolean
    if IsUnitType(GetEventDamageSource(),UNIT_TYPE_MELEE_ATTACKER)==true then
        call DisableTrigger(GetTriggeringTrigger())
        call Func0115(GetEventDamageSource(),GetTriggerUnit(),3,GetEventDamage()*0.5)
        call EnableTrigger(GetTriggeringTrigger())
    endif
    return false
endfunction

// 19809 ~ 19817
function Func0766 takes nothing returns boolean
    if GetIssuedOrderId()==851971 then
        if GetOrderTargetItem()!=null and Func0607(GetItemTypeId(GetOrderTargetItem()))then
            call Func0123(GetTriggerUnit())
            call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0LU'))
        endif
    endif
    return false
endfunction

// 19819 ~ 19827
function Func0767 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0766))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0765))
    set loc_trigger01=null
endfunction

// 19829 ~ 19861
function Func0768 takes player loc_player01 returns integer
    local integer loc_integer01=GetRandomInt(1,6)
    if Func0056(loc_player01)then
        if loc_integer01==1 then
            return 'n00I'
        elseif loc_integer01==2 then
            return 'n022'
        elseif loc_integer01==3 then
            return 'n021'
        elseif loc_integer01==4 then
            return 'n0KY'
        elseif loc_integer01==5 then
            return 'n0KZ'
        else
            return 'n0LE'
        endif
    else
        if loc_integer01==1 then
            return 'n023'
        elseif loc_integer01==2 then
            return 'n024'
        elseif loc_integer01==3 then
            return 'n025'
        elseif loc_integer01==4 then
            return 'n0L0'
        elseif loc_integer01==5 then
            return 'n0L1'
        else
            return 'n0M4'
        endif
    endif
    return 0
endfunction

// 19863 ~ 19872
function Func0769 takes player loc_player01 returns integer
    if GetRandomInt(1,3)==1 then
        return 'e02R'
    elseif Func0056(loc_player01)then
        return 'e01H'
    else
        return 'e01Z'
    endif
    return 0
endfunction

// 19874 ~ 19886
function Func0770 takes nothing returns nothing
    local unit loc_unit01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),Func0768(GetOwningPlayer(GetTriggerUnit())),GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetUnitFacing(GetTriggerUnit()))
    local real loc_real01=GetUnitX(GetTriggerUnit())
    local real loc_real02=GetUnitY(GetTriggerUnit())
    local real loc_real03=GetUnitFacing(GetTriggerUnit())
    call Func0603(loc_unit01)
    call SetUnitPosition(loc_unit01,loc_real01+25*Cos(loc_real03*bj_DEGTORAD),loc_real02+25*Sin(loc_real03*bj_DEGTORAD))
    if booleans015[GetPlayerId(GetOwningPlayer(loc_unit01))]==false then
        call UnitRemoveType(loc_unit01,UNIT_TYPE_PEON)
    else
        call UnitAddType(loc_unit01,UNIT_TYPE_PEON)
    endif
endfunction

// 19888 ~ 19897
function Func0771 takes nothing returns nothing
    local unit loc_unit01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),Func0769(GetOwningPlayer(GetTriggerUnit())),GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetUnitFacing(GetTriggerUnit()))
    call Func0603(loc_unit01)
    if booleans015[GetPlayerId(GetOwningPlayer(loc_unit01))]==false then
        call UnitRemoveType(loc_unit01,UNIT_TYPE_PEON)
    else
        call UnitAddType(loc_unit01,UNIT_TYPE_PEON)
    endif
    call Func0767(loc_unit01)
endfunction

// 19899 ~ 19907
function Func0772 takes nothing returns boolean
    if GetSpellAbilityId()=='A0B6' then
        call Func0770()
    endif
    if GetSpellAbilityId()=='A0JT' then
        call Func0771()
    endif
    return false
endfunction
