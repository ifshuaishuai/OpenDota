
// 21129 ~ 21134
function Func0810 takes nothing returns nothing
    if GetSpellAbilityId()=='A1FP' then
        call Func0161("Abilities\\Spells\\Items\\VampiricPotion\\VampPotionCaster.mdl",GetTriggerUnit(),"origin",3.5)
        call Func0243(GetTriggerUnit(),'A1CN',1,3.5)
    endif
endfunction

// 21136 ~ 21138
function Func0811 takes nothing returns boolean
    return((LoadInteger(hashtable001,(GetHandleId((GetFilterUnit()))),((4323))))==1)
endfunction

// 21140 ~ 21158
function Func0812 takes nothing returns nothing
    local group loc_group01
    local unit loc_unit01
    if GetSpellAbilityId()=='A2V4' and Func0806(GetSpellTargetUnit())==false then
        set loc_group01=Func0030()
        call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(GetTriggerUnit()),Condition(function Func0811))
        set loc_unit01=FirstOfGroup(loc_group01)
        call Func0029(loc_group01)
        if loc_unit01!=null then
            call KillUnit(loc_unit01)
        endif
        call SetUnitOwner(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()),true)
        call SaveInteger(hashtable001,(GetHandleId((GetSpellTargetUnit()))),((4323)),(1))
        call UnitAddAbility(GetSpellTargetUnit(),'Aeth')
        call UnitAddAbility(GetSpellTargetUnit(),'ACrk')
        call Func0193(GetSpellTargetUnit(),'A2YD')
        call Func0150(GetSpellTargetUnit())
    endif
endfunction

// 21160 ~ 21183
function Func0813 takes integer loc_integer01 returns integer
    if loc_integer01==integer404 then
        return integer411
    endif
    if loc_integer01==integer405 then
        return integer412
    endif
    if loc_integer01==integer406 then
        return integer413
    endif
    if loc_integer01==integer407 then
        return integer414
    endif
    if loc_integer01==integer408 then
        return integer415
    endif
    if loc_integer01==integer409 then
        return integer416
    endif
    if loc_integer01==integer410 then
        return integer417
    endif
    return 0
endfunction

// 21185 ~ 21208
function Func0814 takes integer loc_integer01 returns integer
    if loc_integer01==integer404 then
        return 10
    endif
    if loc_integer01==integer405 then
        return 9
    endif
    if loc_integer01==integer406 then
        return 8
    endif
    if loc_integer01==integer407 then
        return 7
    endif
    if loc_integer01==integer408 then
        return 6
    endif
    if loc_integer01==integer409 then
        return 5
    endif
    if loc_integer01==integer410 then
        return 4
    endif
    return 0
endfunction
