
// 18433 ~ 18435
function Func0701 takes nothing returns boolean
    return Func0096(GetFilterUnit())
endfunction

// 18437 ~ 18451
function Func0702 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=0
    local group loc_group01=Func0030()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1300,Condition(function Func0701))
    call ForGroup(loc_group01,function Func0698)
    call Func0029(loc_group01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0700))
    call SaveUnitHandle(hashtable001,(loc_integer02),(53),(loc_unit01))
    set loc_unit01=null
    set loc_group01=null
endfunction

// 18453 ~ 18457
function Func0703 takes nothing returns nothing
    if GetSpellAbilityId()=='A14D' then
        call Func0702()
    endif
endfunction
