
// 23441 ~ 23444
function Func0960 takes unit loc_unit01 returns nothing
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE))
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA))
endfunction

// 23446 ~ 23485
function Func0961 takes unit loc_unit01,real loc_real01,real loc_real02 returns nothing
    local integer loc_integer01=GetHandleId(GetOwningPlayer(loc_unit01))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(700)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(701)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(702)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(703)))
    set boolean074=true
    if loc_unit02!=null then
        call ReviveHero(loc_unit02,loc_real01,loc_real02,true)
        call Func0960(loc_unit02)
        call Func0483(loc_unit02)
        call SetUnitX(loc_unit02,loc_real01)
        call SetUnitY(loc_unit02,loc_real02)
    endif
    if loc_unit03!=null then
        call ReviveHero(loc_unit03,loc_real01,loc_real02,true)
        call Func0960(loc_unit03)
        call Func0483(loc_unit03)
        call SetUnitX(loc_unit03,loc_real01)
        call SetUnitY(loc_unit03,loc_real02)
    endif
    if loc_unit04!=null then
        call ReviveHero(loc_unit04,loc_real01,loc_real02,true)
        call Func0960(loc_unit04)
        call Func0483(loc_unit04)
        call SetUnitX(loc_unit04,loc_real01)
        call SetUnitY(loc_unit04,loc_real02)
    endif
    if loc_unit05!=null then
        call ReviveHero(loc_unit05,loc_real01,loc_real02,true)
        call Func0960(loc_unit05)
        call Func0483(loc_unit05)
        call SetUnitX(loc_unit05,loc_real01)
        call SetUnitY(loc_unit05,loc_real02)
    endif
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_unit05=null
endfunction

// 23487 ~ 23503
function Func0962 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    call Func0960(loc_unit01)
    call Func0483(loc_unit01)
    call ClearSelectionForPlayer(GetOwningPlayer(loc_unit01))
    call SelectUnitAddForPlayer(loc_unit01,GetOwningPlayer(loc_unit01))
    if GetUnitTypeId(loc_unit01)=='H00I' then
        call Func0961(loc_unit01,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
