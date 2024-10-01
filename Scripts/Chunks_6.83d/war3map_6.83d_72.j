
// 21074 ~ 21077
function Func0806 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    return loc_integer01=='n00H' or loc_integer01=='n00G' or loc_integer01=='n00K' or loc_integer01=='n00J' or loc_integer01=='n00A' or loc_integer01=='n006'
endfunction

// 21079 ~ 21081
function Func0807 takes nothing returns boolean
    return Func0806(GetFilterUnit())
endfunction

// 21083 ~ 21121
function Func0808 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02
    local unit loc_unit03
    local integer loc_integer01
    local integer loc_integer02
    local group loc_group01=Func0030()
    local real loc_real01=GetUnitFacing(loc_unit01)*bj_DEGTORAD
    local real loc_real02=GetUnitX(loc_unit01)+50*Cos(loc_real01)
    local real loc_real03=GetUnitY(loc_unit01)+50*Sin(loc_real01)
    local real loc_real04=GetUnitX(loc_unit01)+50*Cos(loc_real01)
    local real loc_real05=GetUnitY(loc_unit01)+50*Sin(loc_real01)
    if GetSpellAbilityId()=='A0HB' then
        set loc_integer01='n00H'
        set loc_integer02='n00J'
    elseif GetSpellAbilityId()=='A0D3' then
        set loc_integer01='n00G'
        set loc_integer02='n00A'
    elseif GetSpellAbilityId()=='A0DF' then
        set loc_integer01='n00K'
        set loc_integer02='n006'
    endif
    set integer403=GetUnitTypeId(loc_unit01)
    call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(GetTriggerUnit()),Condition(function Func0807))
    call ForGroup(loc_group01,function Func0805)
    call Func0029(loc_group01)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer01,loc_real02,loc_real03,GetUnitFacing(loc_unit01))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(784),(integer403))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl",loc_unit02,"origin"))
    call UnitApplyTimedLife(loc_unit02,'BTLF',40)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer02,loc_real04,loc_real05,GetUnitFacing(loc_unit01))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit03)),(784),(integer403))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl",loc_unit03,"origin"))
    call UnitApplyTimedLife(loc_unit03,'BTLF',40)
    set loc_group01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit01=null
endfunction

// 21123 ~ 21127
function Func0809 takes nothing returns nothing
    if GetSpellAbilityId()=='A0HB' or GetSpellAbilityId()=='A0D3' or GetSpellAbilityId()=='A0DF' then
        call Func0808()
    endif
endfunction
