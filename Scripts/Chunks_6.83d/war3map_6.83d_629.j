
// 70587 ~ 70603
function Func3324 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local unit loc_unit02=unit350
    local real loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
    local real loc_real02=GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)
    local real loc_real03=((0.003+0.003*integer518)*loc_real02)/2
    if loc_real01<loc_real03 then
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,1)
        call Func0115(loc_unit02,loc_unit01,3,100)
        call Func0115(loc_unit02,loc_unit01,1,100)
        call Func0115(loc_unit02,loc_unit01,2,100)
    else
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,Func0142(GetUnitState(loc_unit01,UNIT_STATE_LIFE)-loc_real03,1))
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction
