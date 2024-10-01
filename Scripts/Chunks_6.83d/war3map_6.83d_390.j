
// 53829 ~ 53836
function Func2361 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=unit125
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    call SetHeroInt(loc_unit01,GetHeroInt(loc_unit01,false)+1,true)
    call Func0173("+1 "+GetObjectName('n0JP'),3,loc_unit01,0.023,0,255,0,230)
    set loc_unit01=null
endfunction
