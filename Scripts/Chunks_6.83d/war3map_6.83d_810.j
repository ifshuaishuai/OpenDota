
// 84585 ~ 84599
function Func4071 takes nothing returns nothing
    local integer loc_integer01=integer535
    local unit loc_unit01=GetEnumUnit()
    local integer loc_integer02=662-1+loc_integer01
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(loc_integer02)))
    local real loc_real02=(TimerGetElapsed(timer001))
    if loc_real01<loc_real02 then
        call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(loc_integer02),((loc_real02+2)*1.0))
        if IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==false then
            call Func0115(unit390,loc_unit01,1,2+6*integer534)
        else
        endif
    endif
    set loc_unit01=null
endfunction

// 84601 ~ 84615
function Func4072 takes nothing returns nothing
    local integer loc_integer01=integer535
    local unit loc_unit01=GetEnumUnit()
    local integer loc_integer02=662-1+loc_integer01
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(loc_integer02)))
    local real loc_real02=(TimerGetElapsed(timer001))
    if loc_real01<loc_real02 then
        call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(loc_integer02),((loc_real02+2)*1.0))
        if IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==false then
            call Func0115(unit390,loc_unit01,1,15+10*integer534)
        else
        endif
    endif
    set loc_unit01=null
endfunction
