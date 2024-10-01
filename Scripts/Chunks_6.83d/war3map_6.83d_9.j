
// 4217 ~ 4221
function Func0143 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetExpiredTimer())
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(26)))
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+(LoadReal(hashtable001,(loc_integer01),(20))))
endfunction

// 4223 ~ 4229
function Func0144 takes unit loc_unit01,real loc_real01 returns nothing
    local timer loc_timer01=CreateTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    call SaveReal(hashtable001,(loc_integer01),(20),((loc_real01)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(26),(loc_unit01))
    call TimerStart(loc_timer01,0,false,function Func0143)
endfunction

// 4231 ~ 4246
function Func0145 takes unit loc_unit01,real loc_real01 returns nothing
    local real loc_real02=GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)
    local real loc_real03=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
    if(GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1)then
        if loc_real01>(loc_real02-loc_real03)then
            if loc_real01>=loc_real03 then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func0144(loc_unit01,loc_real01-(loc_real02-loc_real03))
            else
                call Func0144(loc_unit01,loc_real01)
            endif
        else
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real01)
        endif
    endif
endfunction
