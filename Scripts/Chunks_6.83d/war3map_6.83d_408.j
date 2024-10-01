
// 54821 ~ 54828
function Func2425 takes nothing returns nothing
    if Func0275(GetEnumUnit())then
        return
    endif
    call Func0246(GetEnumUnit(),integer481,1,8,'B0BV')
    call UnitMakeAbilityPermanent(GetEnumUnit(),true,integer481)
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),integer481,false)
endfunction

// 54830 ~ 54849
function Func2426 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2IS')
    local group loc_group01=Func0030()
    if loc_integer01==1 then
        set integer481='A1F6'
    elseif loc_integer01==2 then
        set integer481='A1F7'
    elseif loc_integer01==3 then
        set integer481='A1F3'
    elseif loc_integer01==4 then
        set integer481='A1F5'
    endif
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),925,Condition(function Func0327))
    call ForGroup(loc_group01,function Func2425)
    call Func0029(loc_group01)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl",loc_unit01,"overhead"))
    set loc_unit01=null
    set loc_group01=null
endfunction

// 54851 ~ 54856
function Func2427 takes nothing returns boolean
    if GetSpellAbilityId()=='A2IS' then
        call Func2426()
    endif
    return false
endfunction

// 54858 ~ 54863
function Func2428 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2427))
    set loc_trigger01=null
endfunction
