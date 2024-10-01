
// 50558 ~ 50643
function Func2161 takes unit loc_unit01,integer loc_integer01 returns integer
    local integer loc_integer02
    local integer loc_integer03
    if loc_integer01==1 then
        set loc_integer03='B0B1'
        set loc_integer02='A18Z'
        if GetUnitAbilityLevel(loc_unit01,loc_integer03)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer03)
            return loc_integer02
        endif
        set loc_integer03='B0B0'
        set loc_integer02='A19J'
        if GetUnitAbilityLevel(loc_unit01,loc_integer03)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer03)
            return loc_integer02
        endif
        set loc_integer03='B0AY'
        set loc_integer02='A19J'
        if GetUnitAbilityLevel(loc_unit01,loc_integer03)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer03)
            return loc_integer02
        endif
        return 'A18Y'
    elseif loc_integer01==2 then
        set loc_integer03='B0B8'
        set loc_integer02='A19H'
        if GetUnitAbilityLevel(loc_unit01,loc_integer03)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer03)
            return loc_integer02
        endif
        set loc_integer03='B0B7'
        set loc_integer02='A19G'
        if GetUnitAbilityLevel(loc_unit01,loc_integer03)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer03)
            return loc_integer02
        endif
        set loc_integer03='B0B2'
        set loc_integer02='A19G'
        if GetUnitAbilityLevel(loc_unit01,loc_integer03)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer03)
            return loc_integer02
        endif
        return 'A19I'
    elseif loc_integer01==3 then
        set loc_integer03='B0B3'
        set loc_integer02='A19E'
        if GetUnitAbilityLevel(loc_unit01,loc_integer03)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer03)
            return loc_integer02
        endif
        set loc_integer03='B0B9'
        set loc_integer02='A19D'
        if GetUnitAbilityLevel(loc_unit01,loc_integer03)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer03)
            return loc_integer02
        endif
        set loc_integer03='B0B6'
        set loc_integer02='A19D'
        if GetUnitAbilityLevel(loc_unit01,loc_integer03)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer03)
            return loc_integer02
        endif
        return 'A19K'
    elseif loc_integer01==4 then
        set loc_integer03='B0B5'
        set loc_integer02='A196'
        if GetUnitAbilityLevel(loc_unit01,loc_integer03)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer03)
            return loc_integer02
        endif
        set loc_integer03='B0B4'
        set loc_integer02='A195'
        if GetUnitAbilityLevel(loc_unit01,loc_integer03)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer03)
            return loc_integer02
        endif
        set loc_integer03='B0BA'
        set loc_integer02='A195'
        if GetUnitAbilityLevel(loc_unit01,loc_integer03)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer03)
            return loc_integer02
        endif
        return 'A19L'
    endif
    return 0
endfunction

// 50645 ~ 50654
function Func2162 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A18X')
    local integer loc_integer02=Func2161(loc_unit01,loc_integer01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call Func0193(loc_unit02,loc_integer02)
    call IssueTargetOrder(loc_unit02,"bloodlust",loc_unit01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 50656 ~ 50661
function Func2163 takes nothing returns boolean
    if GetSpellAbilityId()=='A01F' or GetSpellAbilityId()=='A027' or GetSpellAbilityId()=='A01P' or GetSpellAbilityId()=='A09Z' then
        call Func2162()
    endif
    return false
endfunction

// 50663 ~ 50671
function Func2164 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2163))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 50673 ~ 50678
function Func2165 takes nothing returns boolean
    if GetLearnedSkill()=='A18X' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A18X')==1 then
        call Func2164()
    endif
    return false
endfunction

// 50680 ~ 50685
function Func2166 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2165))
    set loc_trigger01=null
endfunction
