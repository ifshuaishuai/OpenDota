
// 64707 ~ 64709
function Func3003 takes nothing returns boolean
    return GetSpellAbilityId()==('A0J1')or GetSpellAbilityId()=='A1D7'
endfunction

// 64711 ~ 64718
function Func3004 takes nothing returns nothing
    local timer loc_timer01=GetExpiredTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    call PauseTimer(loc_timer01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call DestroyTimer(loc_timer01)
endfunction

// 64720 ~ 64723
function Func3005 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    return loc_integer01=='o000' or loc_integer01=='o001' or loc_integer01=='o00A' or loc_integer01=='o00X' or loc_integer01=='osp4' or loc_integer01=='o008' or loc_integer01=='o009' or loc_integer01=='ebal' or loc_integer01=='e026' or loc_integer01=='umtw' or loc_integer01=='u00R' or loc_integer01=='EC45'
endfunction

// 64725 ~ 64727
function Func3006 takes nothing returns boolean
    return GetOwningPlayer(GetFilterUnit())!=GetOwningPlayer(unit002)and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 or Func3005(GetFilterUnit()))
endfunction

// 64729 ~ 64738
function Func3007 takes nothing returns nothing
    if GetUnitTypeId(GetEnumUnit())!='EC45' then
        call PauseUnit(GetEnumUnit(),true)
        call SetUnitTimeScale(GetEnumUnit(),0)
        call UnitRemoveAbility(GetEnumUnit(),'BUsl')
        call UnitRemoveAbility(GetEnumUnit(),'BUsp')
        call UnitRemoveAbility(GetEnumUnit(),'BUst')
        call SaveInteger(hashtable001,(GetHandleId((GetEnumUnit()))),((4306)),(1))
    endif
endfunction
