
// 21521 ~ 21537
function Func0839 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local item loc_item01=Func0165(loc_unit01,integers089[integer297])
    if loc_item01==null then
        set loc_item01=Func0165(loc_unit01,integers091[integer297])
    endif
    if loc_item01!=null then
        call Func0392(loc_item01)
        call UnitRemoveAbility(loc_unit01,'A0VR')
        call UnitAddAbility(loc_unit01,'A0VU')
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,400)
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIem\\AIemTarget.mdl",loc_unit01,"origin"))
    else
        call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n02Q'))
    endif
    set loc_unit01=null
endfunction

// 21539 ~ 21543
function Func0840 takes nothing returns nothing
    if GetSpellAbilityId()=='A0VR' then
        call Func0839()
    endif
endfunction
