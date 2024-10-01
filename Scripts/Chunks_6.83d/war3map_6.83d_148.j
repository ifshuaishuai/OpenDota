
// 30856 ~ 30871
function Func1260 takes nothing returns boolean
    if GetOwningPlayer(GetTriggerUnit())==players003[0]then
        call SetUnitAbilityLevel(GetTriggerUnit(),integer012,5)
        if units010[GetUnitUserData(GetTriggerUnit())]==null then
            call SetUnitUserData(GetTriggerUnit(),0)
            call IssuePointOrderLoc(GetTriggerUnit(),"attack",(locations001[GetUnitAbilityLevel((GetTriggerUnit()),integer012)]))
        endif
    elseif GetOwningPlayer(GetTriggerUnit())==players004[0]then
        call SetUnitAbilityLevel(GetTriggerUnit(),integer012,1)
        if units010[GetUnitUserData(GetTriggerUnit())]==null then
            call SetUnitUserData(GetTriggerUnit(),0)
            call IssuePointOrderLoc(GetTriggerUnit(),"attack",(locations001[GetUnitAbilityLevel((GetTriggerUnit()),integer012)]))
        endif
    endif
    return false
endfunction

// 30877 ~ 30881
function Func1261 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(145)))
    call RemoveUnit(loc_unit02)
endfunction

// 30883 ~ 30927
function Func1262 takes nothing returns nothing
    local group loc_group01
    local unit loc_unit01
    local unit loc_unit02
    local trigger loc_trigger01
    local integer loc_integer01
    set loc_trigger01=CreateTrigger()
    call TriggerAddAction(loc_trigger01,function Func1261)
    set loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,players003[0],Condition(function Func0011))
    loop
        set loc_unit01=FirstOfGroup(loc_group01)
        exitwhen loc_unit01==null
        call GroupRemoveUnit(loc_group01,loc_unit01)
        if GetUnitAbilityLevel(loc_unit01,'Adts')>0 or GetUnitAbilityLevel(loc_unit01,'Atru')>0 then
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
            set loc_unit02=CreateUnit(players003[1],('u00B'),-5000,-5100,0)
            call SetUnitScale(loc_unit02,0,0,0)
            call SetUnitPathing(loc_unit02,false)
            call SetUnitInvulnerable(loc_unit02,true)
            call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
            call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
            call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(145),(loc_unit02))
        endif
    endloop
    call Func0029(loc_group01)
    set loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,players004[0],Condition(function Func0011))
    loop
        set loc_unit01=FirstOfGroup(loc_group01)
        exitwhen loc_unit01==null
        call GroupRemoveUnit(loc_group01,loc_unit01)
        if GetUnitAbilityLevel(loc_unit01,'Adts')>0 or GetUnitAbilityLevel(loc_unit01,'Atru')>0 then
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
            set loc_unit02=CreateUnit(players004[1],('u00B'),3400,4400,0)
            call SetUnitScale(loc_unit02,0,0,0)
            call SetUnitPathing(loc_unit02,false)
            call SetUnitInvulnerable(loc_unit02,true)
            call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
            call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
            call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(145),(loc_unit02))
        endif
    endloop
    call Func0029(loc_group01)
endfunction

// 30929 ~ 30942
function Func1263 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=units010[GetUnitUserData(loc_unit01)]
    call SetUnitPosition(loc_unit01,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    if loc_unit02!=null and Func0194(loc_unit02)==false and IsUnitVisible(loc_unit02,GetOwningPlayer(loc_unit02))then
        call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
    else
        call DisableTrigger(GetTriggeringTrigger())
        call IssuePointOrderLoc(loc_unit01,"attack",(locations001[GetUnitAbilityLevel((loc_unit01),integer012)]))
        call EnableTrigger(GetTriggeringTrigger())
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 30944 ~ 30949
function Func1264 takes nothing returns boolean
    if Func1249(GetTriggerUnit())then
        call Func1263()
    endif
    return false
endfunction

// 30951 ~ 30964
function Func1265 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=units010[GetUnitUserData(loc_unit01)]
    call SetUnitPosition(loc_unit01,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    if loc_unit02!=null and Func0194(loc_unit02)==false and IsUnitVisible(loc_unit02,GetOwningPlayer(loc_unit02))then
        call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
    else
        call DisableTrigger(GetTriggeringTrigger())
        call IssuePointOrderLoc(loc_unit01,"attack",(locations001[GetUnitAbilityLevel((loc_unit01),integer012)]))
        call EnableTrigger(GetTriggeringTrigger())
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 30966 ~ 30971
function Func1266 takes nothing returns boolean
    if GetIssuedOrderId()==851986 then
        call Func1265()
    endif
    return false
endfunction

// 30973 ~ 30984
function Func1267 takes nothing returns boolean
    if GetOwningPlayer(GetTriggerUnit())==players003[0]then
        if IsUnitFogged(GetAttacker(),players003[1])or IsUnitFogged(GetAttacker(),players004[1])then
            call Func0211(CreateFogModifierRadius(players003[1],FOG_OF_WAR_VISIBLE,GetUnitX(GetAttacker()),GetUnitY(GetAttacker()),128,true,false),1)
        endif
    elseif GetOwningPlayer(GetTriggerUnit())==players004[0]then
        if IsUnitFogged(GetAttacker(),players003[1])or IsUnitFogged(GetAttacker(),players004[1])then
            call Func0211(CreateFogModifierRadius(players004[1],FOG_OF_WAR_VISIBLE,GetUnitX(GetAttacker()),GetUnitY(GetAttacker()),128,true,false),1)
        endif
    endif
    return false
endfunction

// 30986 ~ 31025
function Func1268 takes nothing returns boolean
    local trigger loc_trigger01
    local group loc_group01
    local unit loc_unit01
    if boolean025 then
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterPlayerUnitEvent(loc_trigger01,players003[0],EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER,Condition(function Func0011))
        call TriggerRegisterPlayerUnitEvent(loc_trigger01,players004[0],EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER,Condition(function Func0011))
        call TriggerAddCondition(loc_trigger01,Condition(function Func1266))
        set loc_trigger01=CreateTrigger()
        set loc_group01=Func0030()
        call GroupEnumUnitsOfPlayer(loc_group01,players003[0],Condition(function Func0011))
        loop
            set loc_unit01=FirstOfGroup(loc_group01)
            exitwhen loc_unit01==null
            call GroupRemoveUnit(loc_group01,loc_unit01)
            if GetUnitAcquireRange(loc_unit01)!=0 then
                call TriggerRegisterUnitInRange(loc_trigger01,loc_unit01,600,Condition(function Func0011))
            endif
        endloop
        call Func0029(loc_group01)
        set loc_group01=Func0030()
        call GroupEnumUnitsOfPlayer(loc_group01,players004[0],Condition(function Func0011))
        loop
            set loc_unit01=FirstOfGroup(loc_group01)
            exitwhen loc_unit01==null
            call GroupRemoveUnit(loc_group01,loc_unit01)
            if GetUnitAcquireRange(loc_unit01)!=0 and IsUnitType(loc_unit01,UNIT_TYPE_STRUCTURE)then
                call TriggerRegisterUnitInRange(loc_trigger01,loc_unit01,600,Condition(function Func0011))
            endif
        endloop
        call Func0029(loc_group01)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1264))
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1267))
    endif
    call Func0035(GetTriggeringTrigger())
    return false
endfunction
