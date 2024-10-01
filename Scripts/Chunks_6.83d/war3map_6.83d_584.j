
// 67027 ~ 67029
function Func3140 takes unit loc_unit01 returns boolean
    return(GetUnitTypeId(loc_unit01)==('H00I')or GetUnitTypeId(loc_unit01)==('H00J')or GetUnitTypeId(loc_unit01)==GetUnitTypeId(GetTriggerUnit()))and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>0.5 and GetOwningPlayer(loc_unit01)==GetOwningPlayer(GetTriggerUnit())
endfunction

// 67031 ~ 67033
function Func3141 takes nothing returns boolean
    return GetSpellAbilityId()==('A0N8')
endfunction

// 67035 ~ 67037
function Func3142 takes nothing returns boolean
    return Func3140(GetFilterUnit())
endfunction

// 67039 ~ 67046
function Func3143 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local real loc_real01=Func0148(loc_unit01,location020)
    if loc_real01<real002 then
        set real002=loc_real01
        set unit002=loc_unit01
    endif
endfunction

// 67048 ~ 67050
function Func3144 takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0
endfunction

// 67052 ~ 67055
function Func3145 takes nothing returns nothing
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Feedback\\ArcaneTowerAttack.mdl",GetEnumUnit(),"origin"))
    call UnitDamageTarget(GetTriggerUnit(),GetEnumUnit(),real002,true,false,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_FIRE,WEAPON_TYPE_WHOKNOWS)
endfunction

// 67057 ~ 67111
function Func3146 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local location loc_location01
    local real loc_real01
    local real loc_real02
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local group loc_group01
    local boolexpr loc_boolexpr01
    local boolean loc_boolean01=false
    if loc_unit02!=null and Func3140(loc_unit02)then
        set loc_real01=GetUnitX(loc_unit02)
        set loc_real02=GetUnitY(loc_unit02)
        set loc_boolean01=true
    else
        set loc_boolexpr01=Condition(function Func3142)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,0,0,999999,loc_boolexpr01)
        if loc_unit02!=null then
            set loc_location01=GetUnitLoc(loc_unit02)
        else
            set loc_location01=GetSpellTargetLoc()
        endif
        set unit002=FirstOfGroup(loc_group01)
        if unit002!=null then
            set loc_boolean01=true
            call GroupRemoveUnit(loc_group01,unit002)
            set real002=Func0148(unit002,loc_location01)
            set location020=loc_location01
            call ForGroup(loc_group01,function Func3143)
            set loc_unit02=unit002
            set loc_real01=GetUnitX(loc_unit02)
            set loc_real02=GetUnitY(loc_unit02)
        endif
        call Func0029(loc_group01)
        call RemoveLocation(loc_location01)
    endif
    if loc_boolean01 then
        call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\ToonBoom\\ToonBoom.mdl",loc_real03,loc_real04))
        call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\ToonBoom\\ToonBoom.mdl",loc_real01,loc_real02))
        call SetUnitX(loc_unit01,loc_real01)
        call SetUnitY(loc_unit01,loc_real02)
        set real002=60+GetUnitAbilityLevel(GetTriggerUnit(),('A0N8'))*20
        set loc_boolexpr01=Condition(function Func3144)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real03,loc_real04,400,loc_boolexpr01)
        call ForGroup(loc_group01,function Func3145)
        call Func0029(loc_group01)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,400,loc_boolexpr01)
        call ForGroup(loc_group01,function Func3145)
        call Func0029(loc_group01)
    endif
endfunction

// 67113 ~ 67115
function Func3147 takes nothing returns boolean
    return GetSpellAbilityId()==('A0N8')
endfunction
