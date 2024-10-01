
// 51147 ~ 51149
function Func2201 takes nothing returns boolean
    return OrderId2String(GetIssuedOrderId())!="windwalk"
endfunction

// 51151 ~ 51172
function Func2202 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(214)))
    call SaveInteger(hashtable001,(loc_integer01),(211),(GetIssuedOrderId()))
    call SaveBoolean(hashtable001,(loc_integer01),(207),(false))
    if GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER then
    elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER then
        if loc_boolean01 or Func0167(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetOrderPointX(),GetOrderPointY())>800 then
            call SaveStr(hashtable001,(loc_integer01),(206),("Point"))
            call SaveReal(hashtable001,(loc_integer01),(209),((GetOrderPointX())*1.0))
            call SaveReal(hashtable001,(loc_integer01),(210),((GetOrderPointY())*1.0))
        else
            call SaveBoolean(hashtable001,(loc_integer01),(207),(true))
        endif
    else
        call SaveStr(hashtable001,(loc_integer01),(206),("Instant"))
    endif
    if loc_boolean01 then
        call SaveBoolean(hashtable001,(loc_integer01),(208),(true))
    endif
endfunction
