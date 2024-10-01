
// 56519 ~ 56533
function Func2516 takes nothing returns nothing
    local unit loc_unit01=GetOrderTargetUnit()
    local real loc_real01
    local real loc_real02
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER then
        set loc_real01=GetUnitX(GetOrderTargetUnit())
        set loc_real02=GetUnitY(GetOrderTargetUnit())
    else
        set loc_real01=GetOrderPointX()
        set loc_real02=GetOrderPointY()
    endif
    if Func0149(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),loc_real01,loc_real02)<700 then
        call Func0184(sound038,loc_real01,loc_real02)
    endif
endfunction

// 56535 ~ 56540
function Func2517 takes nothing returns boolean
    if GetIssuedOrderId()==852040 then
        call Func2516()
    endif
    return false
endfunction

// 56542 ~ 56548
function Func2518 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerUnitEvent(loc_trigger01,GetOwningPlayer(GetTriggerUnit()),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER,Condition(function Func0175))
    call TriggerRegisterPlayerUnitEvent(loc_trigger01,GetOwningPlayer(GetTriggerUnit()),EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER,Condition(function Func0175))
    call TriggerAddCondition(loc_trigger01,Condition(function Func2517))
    set loc_trigger01=null
endfunction

// 56550 ~ 56555
function Func2519 takes nothing returns boolean
    if GetLearnedSkill()=='A06B' and GetUnitAbilityLevel(GetTriggerUnit(),'A06B')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func2518()
    endif
    return false
endfunction

// 56557 ~ 56562
function Func2520 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2519))
    set loc_trigger01=null
endfunction
