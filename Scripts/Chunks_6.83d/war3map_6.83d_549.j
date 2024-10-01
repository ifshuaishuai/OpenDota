
// 64472 ~ 64479
function Func2990 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group021)==false and Func0098(GetEnumUnit())==false then
        call GroupAddUnit(group021,GetEnumUnit())
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),integer512,false)
        call Func0246(GetEnumUnit(),integer512,1,3,'B05Q')
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\SpellShieldAmulet\\SpellShieldCaster.mdl",GetEnumUnit(),"overhead"))
    endif
endfunction

// 64481 ~ 64542
function Func2991 takes nothing returns boolean
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
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A0LK')
    if Func0149(loc_real04,loc_real05,loc_real01,loc_real02)<=real340 then
        set loc_real04=loc_real01
        set loc_real05=loc_real02
    else
        set loc_real04=Func0126(loc_real06+65*Cos(loc_real03*bj_DEGTORAD))
        set loc_real05=Func0129(loc_real07+65*Sin(loc_real03*bj_DEGTORAD))
    endif
    if loc_integer03==1 then
        set integer512='A29A'
    elseif loc_integer03==2 then
        set integer512='A299'
    elseif loc_integer03==3 then
        set integer512='A29B'
    elseif loc_integer03==4 then
        set integer512='A298'
    endif
    set unit124=loc_unit01
    set group021=loc_group02
    call GroupEnumUnitsInRange(loc_group01,loc_real04,loc_real05,325,Condition(function Func0305))
    call ForGroup(loc_group01,function Func2990)
    call Func0029(loc_group01)
    call SaveReal(hashtable001,(loc_integer01),(23),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((loc_real05)*1.0))
    call SetUnitPosition(loc_unit01,loc_real04,loc_real05)
    if(loc_real04==loc_real01 and loc_real05==loc_real02)or loc_integer02>40 then
        call SetUnitX(loc_unit02,loc_real04)
        call SetUnitY(loc_unit02,loc_real05)
        call IssueImmediateOrder(loc_unit02,"thunderclap")
        call Func0029(loc_group02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SetUnitAnimation(loc_unit01,"stand")
        call SetUnitPathing(loc_unit01,true)
        call SetUnitInvulnerable(loc_unit01,false)
        if GetUnitTypeId(loc_unit01)=='E02X' then
            call SetUnitVertexColor(loc_unit01,255,255,255,255)
        else
            call SetUnitVertexColor(loc_unit01,0,255,150,255)
        endif
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4261)),(2))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 64544 ~ 64585
function Func2992 takes nothing returns nothing
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
    if GetSpellTargetUnit()==null then
        set loc_location01=GetSpellTargetLoc()
    else
        set loc_location01=GetUnitLoc(GetSpellTargetUnit())
    endif
    set loc_real03=GetLocationX(loc_location01)
    set loc_real04=GetLocationY(loc_location01)
    set loc_real05=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)
    call RemoveLocation(loc_location01)
    call SetUnitAnimationByIndex(loc_unit01,0)
    call SetUnitPathing(loc_unit01,false)
    call SetUnitInvulnerable(loc_unit01,true)
    call SetUnitVertexColor(loc_unit01,0,0,0,255)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4261)),(1))
    call SaveReal(hashtable001,(loc_integer01),(66),((Func0126(loc_real03))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(67),((Func0129(loc_real04))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(23),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real05)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call Func0193(loc_unit02,'A0LA')
    call SetUnitAbilityLevel(loc_unit02,'A0LA',GetUnitAbilityLevel(loc_unit01,'A0LK'))
    call TriggerRegisterTimerEvent(loc_trigger01,0.025,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2991))
    set loc_unit01=null
    set loc_location01=null
    set loc_trigger01=null
    set loc_unit02=null
endfunction

// 64587 ~ 64592
function Func2993 takes nothing returns boolean
    if GetSpellAbilityId()=='A0LK' then
        call Func2992()
    endif
    return false
endfunction

// 64594 ~ 64599
function Func2994 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2993))
    set loc_trigger01=null
endfunction
