
// 78556 ~ 78558
function Func3790 takes nothing returns boolean
    return GetSpellAbilityId()==('A0J5')
endfunction

// 78560 ~ 78562
function Func3791 takes nothing returns nothing
    call Func0193(GetEnumUnit(),('A0P2'))
endfunction

// 78564 ~ 78566
function Func3792 takes nothing returns nothing
    call UnitRemoveAbility(GetEnumUnit(),('A0P2'))
endfunction

// 78568 ~ 78572
function Func3793 takes unit loc_unit01,unit loc_unit02 returns nothing
    if loc_unit01!=null and loc_unit02!=null then
        call Func0171("CLPB",GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02),0.7,0.1,0.9,1,0.3)
    endif
endfunction

// 78574 ~ 78585
function Func3794 takes nothing returns nothing
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))
    local real loc_real01=0.25*GetEventDamage()
    set loc_real01=Func0141(loc_real01,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE))
    if GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)>1 and GetEnumUnit()!=GetTriggerUnit()then
        if GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<loc_real01 then
            call Func0115(loc_unit01,GetEnumUnit(),3,loc_real01)
        else
            call Func0236(GetEnumUnit(),loc_real01)
        endif
    endif
endfunction

// 78587 ~ 78601
function Func3795 takes nothing returns nothing
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(220)))
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        call ForGroup(loc_group01,function Func3792)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0029(loc_group01)
        call Func0035((loc_trigger01))
    elseif GetEventDamage()>10 and GetEventDamage()<6000 then
        call DisableTrigger(loc_trigger01)
        call ForGroup(loc_group01,function Func3794)
        call EnableTrigger(loc_trigger01)
    endif
endfunction
