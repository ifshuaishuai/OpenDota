
// 30755 ~ 30763
function Func1254 takes nothing returns nothing
    local integer loc_integer01=GetHandleId((LoadUnitHandle(hashtable001,(GetHandleId(GetExpiredTimer())),(2))))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(143)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(144)))
    set units010[loc_integer02]=null
    call ForGroup(loc_group01,function Func1250)
    call GroupClear(loc_group01)
    set loc_group01=null
endfunction

// 30765 ~ 30788
function Func1255 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetHandleId(loc_unit01)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(144)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(143)))
    local unit loc_unit03=units010[loc_integer02]
    local group loc_group02
    if loc_unit03!=null and loc_unit03!=loc_unit02 then
        call ForGroup(loc_group01,function Func1250)
        call GroupClear(loc_group01)
    endif
    set units010[loc_integer02]=loc_unit02
    set group006=loc_group01
    set unit255=loc_unit02
    set integer431=loc_integer02
    call ForGroup(loc_group01,function Func1253)
    set loc_group02=Func0030()
    call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit02),GetUnitY(loc_unit02),500,Condition(function Func1252))
    call ForGroup(loc_group02,function Func1251)
    call Func0029(loc_group02)
    call TimerStart((LoadTimerHandle(hashtable001,(loc_integer01),(141))),2,false,function Func1254)
    set loc_group01=null
    set loc_unit03=null
    set loc_group02=null
endfunction

// 30790 ~ 30806
function Func1256 takes nothing returns boolean
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetOrderTargetUnit()
    local integer loc_integer01=GetIssuedOrderId()
    local integer loc_integer02
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true and IsUnitIllusion(loc_unit02)==false and(loc_integer01==851983 or loc_integer01==851971)and IsUnitEnemy(loc_unit02,GetOwningPlayer(loc_unit01))and IsUnitVisible(loc_unit01,GetOwningPlayer(loc_unit02))then
        set loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(143)))
        if units010[loc_integer02]==null or units010[loc_integer02]==loc_unit02 or Func0194(units010[loc_integer02])then
            if loc_integer02!=0 then
                call Func1255(loc_unit02,loc_unit01)
            endif
        endif
    endif
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 30808 ~ 30824
function Func1257 takes nothing returns boolean
    local unit loc_unit01=GetAttacker()
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer01=GetIssuedOrderId()
    local integer loc_integer02
    if Func1249(loc_unit01)==false then
        set loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(143)))
        if units010[loc_integer02]==null or units010[loc_integer02]==loc_unit02 or Func0194(units010[loc_integer02])then
            if loc_integer02!=0 then
                call Func1255(loc_unit02,loc_unit01)
            endif
        endif
    endif
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 30826 ~ 30847
function Func1258 takes unit loc_unit01 returns nothing
    local group loc_group01
    local trigger loc_trigger01
    local timer loc_timer01
    local integer loc_integer01=GetHandleId(loc_unit01)
    set integer432=integer432+1
    call SaveBoolean(hashtable001,(loc_integer01),(142),(true))
    call SaveInteger(hashtable001,(loc_integer01),(143),(integer432))
    set loc_group01=Func0030()
    call SaveGroupHandle(hashtable001,(loc_integer01),(144),(loc_group01))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1256))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1257))
    set loc_timer01=CreateTimer()
    call SaveTimerHandle(hashtable001,(GetHandleId(loc_unit01)),(141),(loc_timer01))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_timer01)),(2),(loc_unit01))
    set loc_group01=null
    set loc_trigger01=null
endfunction

// 30849 ~ 30854
function Func1259 takes nothing returns boolean
    if Func0103(GetTriggerUnit())and(LoadBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(142)))==false then
        call Func1258(GetTriggerUnit())
    endif
    return false
endfunction
