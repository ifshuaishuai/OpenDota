
// 56564 ~ 56566
function Func2521 takes nothing returns boolean
    return(GetLearnedSkill()=='A0AK' or GetLearnedSkill()=='A1FY')and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 56568 ~ 56572
function Func2522 takes nothing returns nothing
    if(GetUnitAbilityLevel(GetTriggerUnit(),'A0AK')==1 or GetUnitAbilityLevel(GetTriggerUnit(),'A1FY')==1)then
        call Func0193(GetTriggerUnit(),'A1WF')
    endif
endfunction

// 56574 ~ 56579
function Func2523 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2521))
    call TriggerAddAction(loc_trigger01,function Func2522)
endfunction

// 56581 ~ 56590
function Func2524 takes nothing returns boolean
    if(GetSpellAbilityId()=='A0AM' or GetSpellAbilityId()=='A0A3' or GetSpellAbilityId()=='A0A4' or GetSpellAbilityId()=='A02T' or GetSpellAbilityId()=='A1FZ' or GetSpellAbilityId()=='A1WF')then
        return true
    elseif GetSpellAbilityId()=='A0AK' or GetSpellAbilityId()=='A1FY' then
        if GetUnitAbilityLevel(GetTriggerUnit(),'A1WF')==0 then
            call Func0193(GetTriggerUnit(),'A1WF')
        endif
    endif
    return false
endfunction

// 56592 ~ 56601
function Func2525 takes nothing returns boolean
    if(IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))==true)then
        if(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)then
            if(GetUnitAbilityLevelSwapped('A04R',GetFilterUnit())==0)then
                return true
            endif
        endif
    endif
    return false
endfunction

// 56603 ~ 56605
function Func2526 takes nothing returns nothing
    call IssueImmediateOrder(GetEnumUnit(),"locustswarm")
endfunction

// 56607 ~ 56609
function Func2527 takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),300.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_FIRE)
endfunction

// 56611 ~ 56613
function Func2528 takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),450.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_FIRE)
endfunction

// 56615 ~ 56617
function Func2529 takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),600.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_FIRE)
endfunction

// 56619 ~ 56621
function Func2530 takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),750.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_FIRE)
endfunction
