
// 52769 ~ 52774
function Func2297 takes nothing returns boolean
    if GetUnitAbilityLevel(GetFilterUnit(),'B03B')>0 and IsUnitIllusion(GetFilterUnit())==true then
        set integer022=integer022+1
    endif
    return false
endfunction

// 52776 ~ 52803
function Func2298 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    local group loc_group01=Func0030()
    local integer loc_integer01=GetRandomInt(1,100)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0DB')
    local unit loc_unit02
    local integer loc_integer03=4+2*loc_integer02
    local integer loc_integer04=35+5*loc_integer02
    local integer loc_integer05=8
    set integer022=0
    call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(loc_unit01),Condition(function Func2297))
    call Func0029(loc_group01)
    if integer022<loc_integer03 and GetUnitAbilityLevel(loc_unit01,'BNdo')==0 then
        if IsUnitIllusion(loc_unit01)==false and loc_integer01<=loc_integer04 then
            set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
            call Func0193(loc_unit02,'A0DD')
            call IssueTargetOrderById(loc_unit02,852274,loc_unit01)
        endif
        if IsUnitIllusion(loc_unit01)==true and loc_integer01<=loc_integer05 then
            set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
            call Func0193(loc_unit02,'A30B')
            call IssueTargetOrderById(loc_unit02,852274,loc_unit01)
        endif
    endif
    set loc_unit01=null
    set loc_group01=null
    set loc_unit02=null
endfunction

// 52805 ~ 52810
function Func2299 takes nothing returns boolean
    if(GetUnitAbilityLevel(GetAttacker(),'B03B')>0)and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))==true then
        call Func2298()
    endif
    return false
endfunction

// 52812 ~ 52817
function Func2300 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2299))
    set loc_trigger01=null
endfunction
