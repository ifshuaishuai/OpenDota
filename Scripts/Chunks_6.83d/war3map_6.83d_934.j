
// 94646 ~ 94653
function Func4589 takes nothing returns nothing
    if Func0098(GetEnumUnit())==false then
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\SpellShieldAmulet\\SpellShieldCaster.mdl",GetEnumUnit(),"overhead"))
        call SetUnitOwner(unit433,GetOwningPlayer(GetEnumUnit()),false)
        call IssueTargetOrder(unit433,"banish",GetEnumUnit())
        call Func4587(unit434,GetEnumUnit())
    endif
endfunction

// 94655 ~ 94715
function Func4590 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(66)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(67)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(137)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real04=GetUnitX(loc_unit01)
    local real loc_real05=GetUnitY(loc_unit01)
    local real loc_real06=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real07=(LoadReal(hashtable001,(loc_integer01),(24)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local group loc_group01=Func0030()
    local group loc_group02=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2SQ')
    if Func0149(loc_real04,loc_real05,loc_real01,loc_real02)<=real420 then
        set loc_real04=loc_real01
        set loc_real05=loc_real02
    else
        set loc_real04=Func0126(loc_real06+65*Cos(loc_real03*bj_DEGTORAD))
        set loc_real05=Func0129(loc_real07+65*Sin(loc_real03*bj_DEGTORAD))
    endif
    set unit124=loc_unit01
    set group047=loc_group02
    set unit433=loc_unit02
    set unit434=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real04,loc_real05,200+25,Condition(function Func0305))
    call ForGroup(loc_group01,function Func4589)
    call Func0029(loc_group01)
    call SaveReal(hashtable001,(loc_integer01),(23),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((loc_real05)*1.0))
    call SetUnitX(loc_unit01,loc_real04)
    call SetUnitY(loc_unit01,loc_real05)
    if(loc_real04==loc_real01 and loc_real05==loc_real02)or loc_integer02>40 then
        call Func0029(loc_group02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit02)
        call UnitAddAbility(loc_unit01,'A2SW')
        call UnitRemoveAbility(loc_unit01,'A2SW')
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call TriggerRegisterTimerEvent(loc_trigger01,4,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4588))
        call SetUnitAnimation(loc_unit01,"stand")
        call SetUnitPathing(loc_unit01,true)
        call SetUnitInvulnerable(loc_unit01,false)
        if GetUnitTypeId(loc_unit01)=='E02X' then
            call SetUnitVertexColor(loc_unit01,255,255,255,255)
        else
            call SetUnitVertexColor(loc_unit01,255,255,255,255)
        endif
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4261)),(2))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 94717 ~ 94757
function Func4591 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    local group loc_group01=Func0030()
    if GetSpellTargetUnit()==null then
        set loc_location01=GetSpellTargetLoc()
    else
        set loc_location01=GetUnitLoc(GetSpellTargetUnit())
    endif
    set loc_real03=GetLocationX(loc_location01)
    set loc_real04=GetLocationY(loc_location01)
    set loc_real05=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)
    call RemoveLocation(loc_location01)
    call Func0193(loc_unit02,'A2SV')
    call SetUnitAbilityLevel(loc_unit02,'A2SV',GetUnitAbilityLevel(loc_unit01,'A2SQ'))
    set unit433=loc_unit02
    set unit434=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real03,loc_real04,200+25,Condition(function Func0298))
    call ForGroup(loc_group01,function Func4589)
    call Func0029(loc_group01)
    set loc_group01=null
    call UnitAddAbility(loc_unit01,'A2SW')
    call UnitRemoveAbility(loc_unit01,'A2SW')
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,4,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4588))
    set loc_unit01=null
    set loc_location01=null
    set loc_trigger01=null
    set loc_unit02=null
endfunction

// 94759 ~ 94764
function Func4592 takes nothing returns boolean
    if GetSpellAbilityId()=='A2SQ' then
        call Func4591()
    endif
    return false
endfunction

// 94766 ~ 94771
function Func4593 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4592))
    set loc_trigger01=null
endfunction
