
// 50173 ~ 50183
function Func2137 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    call IssueImmediateOrder(loc_unit01,"stop")
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 50185 ~ 50238
function Func2138 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=Atan2(GetLocationY(loc_location01)-GetUnitY(loc_unit01),GetLocationX(loc_location01)-GetUnitX(loc_unit01))
    local real loc_real02
    local real loc_real03
    local unit loc_unit02
    local unit loc_unit03
    local boolean loc_boolean01=false
    if GetLocationY(loc_location01)==GetUnitY(loc_unit01)and GetLocationX(loc_location01)==GetUnitX(loc_unit01)then
        set loc_real01=GetUnitFacing(loc_unit01)*bj_DEGTORAD
    endif
    set loc_real02=GetUnitX(loc_unit01)+150*Cos(loc_real01)
    set loc_real03=GetUnitY(loc_unit01)+150*Sin(loc_real01)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'u00J',loc_real02,loc_real03,loc_real01*bj_RADTODEG)
    call RemoveLocation(loc_location01)
    if GetUnitTypeId(loc_unit01)=='H06X' or GetUnitTypeId(loc_unit01)=='H06Y' or GetUnitTypeId(loc_unit01)=='H06W' then
        set loc_boolean01=true
    endif
    call SaveBoolean(hashtable001,(loc_integer01),(240),(loc_boolean01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(34),(1))
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(loc_unit01,'A085')))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real01)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2136))
    if loc_boolean01 then
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h06Z',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01*bj_RADTODEG)
        call SetUnitX(loc_unit03,GetUnitX(loc_unit01))
        call SetUnitY(loc_unit03,GetUnitY(loc_unit01))
        call SetUnitAnimation(loc_unit03,"spell")
        call QueueUnitAnimation(loc_unit03,"spell")
        call QueueUnitAnimation(loc_unit03,"spell")
        call SetUnitVertexColor(loc_unit03,255,255,255,75)
        call SaveUnitHandle(hashtable001,(loc_integer01),(239),(loc_unit03))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2137))
        call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A085',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A121',true)
    call Func0243(loc_unit01,'A121',1,6)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_location01=null
endfunction

// 50240 ~ 50245
function Func2139 takes nothing returns boolean
    if GetSpellAbilityId()=='A085' then
        call Func2138()
    endif
    return false
endfunction

// 50247 ~ 50252
function Func2140 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2139))
    set loc_trigger01=null
endfunction
