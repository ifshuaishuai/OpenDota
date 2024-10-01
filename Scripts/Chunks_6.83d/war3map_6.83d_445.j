
// 57631 ~ 57646
function Func2588 takes nothing returns boolean
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A19Q')
    local unit loc_unit03
    if GetRandomInt(1,100)<=(5+loc_integer01*5)and Func0147(loc_unit01,loc_unit02)<325 then
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        call Func0193(loc_unit03,'A0BV')
        call SetUnitAbilityLevel(loc_unit03,'A0BV',loc_integer01)
        call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
        set loc_unit03=null
    endif
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 57648 ~ 57655
function Func2589 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2588))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 57657 ~ 57662
function Func2590 takes nothing returns boolean
    if GetLearnedSkill()=='A19Q' and GetUnitAbilityLevel(GetTriggerUnit(),'A19Q')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func2589()
    endif
    return false
endfunction

// 57664 ~ 57669
function Func2591 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2590))
    set loc_trigger01=null
endfunction
