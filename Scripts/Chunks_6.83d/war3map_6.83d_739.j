
// 77941 ~ 77946
function Func3765 takes nothing returns boolean
    if GetUnitTypeId(GetFilterUnit())=='u014' or GetUnitTypeId(GetFilterUnit())=='u015' or GetUnitTypeId(GetFilterUnit())=='u016' or GetUnitTypeId(GetFilterUnit())=='u01D' or GetUnitTypeId(GetFilterUnit())=='u01E' or GetUnitTypeId(GetFilterUnit())=='u01F' or GetUnitTypeId(GetFilterUnit())=='u01R' or GetUnitTypeId(GetFilterUnit())=='u01S' or GetUnitTypeId(GetFilterUnit())=='u01T' or GetUnitTypeId(GetFilterUnit())=='u017' or GetUnitTypeId(GetFilterUnit())=='u019' or GetUnitTypeId(GetFilterUnit())=='u018' or GetUnitTypeId(GetFilterUnit())=='u01A' or GetUnitTypeId(GetFilterUnit())=='u01B' or GetUnitTypeId(GetFilterUnit())=='u01C' or GetUnitTypeId(GetFilterUnit())=='u01U' or GetUnitTypeId(GetFilterUnit())=='u01V' or GetUnitTypeId(GetFilterUnit())=='u01W' then
        call KillUnit(GetFilterUnit())
    endif
    return false
endfunction

// 77948 ~ 78028
function Func3766 takes nothing returns nothing
    local group loc_group01=Func0030()
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1NE')
    local unit loc_unit02
    local unit loc_unit03
    local unit loc_unit04
    local trigger loc_trigger01
    local integer loc_integer02
    local boolean loc_boolean01=false
    call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(loc_unit01),Condition(function Func3765))
    call Func0029(loc_group01)
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2IG')
        set loc_boolean01=true
    endif
    if loc_integer01==1 then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'u014',loc_real01+75,loc_real02+75,GetUnitFacing(loc_unit01))
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'u01D',loc_real01-75,loc_real02-75,GetUnitFacing(loc_unit01))
    elseif loc_integer01==2 then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'u015',loc_real01+75,loc_real02+75,GetUnitFacing(loc_unit01))
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'u01E',loc_real01-75,loc_real02-75,GetUnitFacing(loc_unit01))
    elseif loc_integer01==3 then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'u016',loc_real01+75,loc_real02+75,GetUnitFacing(loc_unit01))
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'u01F',loc_real01-75,loc_real02-75,GetUnitFacing(loc_unit01))
    endif
    call SelectUnitAddForPlayer(loc_unit02,GetOwningPlayer(loc_unit01))
    call SelectUnitAddForPlayer(loc_unit03,GetOwningPlayer(loc_unit01))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl",loc_unit02,"origin"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl",loc_unit03,"origin"))
    set loc_trigger01=CreateTrigger()
    set loc_integer02=GetHandleId(loc_trigger01)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3764))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer02),(28),(0))
    call SaveInteger(hashtable001,(loc_integer02),(194),(7))
    call Func3763(loc_unit02,7,loc_integer01)
    set loc_trigger01=CreateTrigger()
    set loc_integer02=GetHandleId(loc_trigger01)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3764))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit03))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer02),(28),(0))
    call SaveInteger(hashtable001,(loc_integer02),(194),(7))
    call Func3763(loc_unit03,7,loc_integer01)
    if loc_boolean01 then
        if loc_integer01==1 then
            set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'u01R',loc_real01+75,loc_real02,GetUnitFacing(loc_unit01))
        elseif loc_integer01==2 then
            set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'u01S',loc_real01+75,loc_real02,GetUnitFacing(loc_unit01))
        elseif loc_integer01==3 then
            set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'u01T',loc_real01+75,loc_real02,GetUnitFacing(loc_unit01))
        endif
        call SelectUnitAddForPlayer(loc_unit04,GetOwningPlayer(loc_unit01))
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl",loc_unit04,"origin"))
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit04,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3764))
        call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit04))
        call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
        call SaveInteger(hashtable001,(loc_integer02),(28),(0))
        call SaveInteger(hashtable001,(loc_integer02),(194),(7))
        call Func3763(loc_unit04,7,loc_integer01)
    endif
    set loc_group01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 78030 ~ 78037
function Func3767 takes nothing returns boolean
    if GetSpellAbilityId()=='A1NE' or GetSpellAbilityId()=='A2IG' then
        call Func3766()
    elseif GetSpellAbilityId()=='A1NB' or GetSpellAbilityId()=='A1NC' or GetSpellAbilityId()=='A1ND' or GetSpellAbilityId()=='A1NL' or GetSpellAbilityId()=='A1NM' or GetSpellAbilityId()=='A1NN' or GetSpellAbilityId()=='A2IZ' or GetSpellAbilityId()=='A2J0' or GetSpellAbilityId()=='A2J1' then
        call Func3762()
    endif
    return false
endfunction

// 78039 ~ 78044
function Func3768 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3767))
    set loc_trigger01=null
endfunction
