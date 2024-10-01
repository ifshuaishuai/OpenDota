
// 83864 ~ 83889
function Func4035 takes nothing returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02=GetUnitAbilityLevel(unit385,'A1T5')
    local boolean loc_boolean01=false
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(unit385,'A235')
        set loc_boolean01=true
    endif
    if Func0275(GetEnumUnit())==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,3,false)
        call TriggerRegisterUnitEvent(loc_trigger01,GetEnumUnit(),EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4033))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(GetEnumUnit()))
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A1T4',false)
        call Func0193(GetEnumUnit(),'A1T4')
    endif
    if loc_boolean01 then
        call Func0115(unit385,GetEnumUnit(),1,loc_integer02*50+50+75)
    else
        call Func0115(unit385,GetEnumUnit(),1,loc_integer02*50+50)
    endif
    set loc_trigger01=null
endfunction

// 83891 ~ 83934
function Func4036 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group01
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local fogmodifier loc_fogmodifier01=(LoadFogModifierHandle(hashtable001,(loc_integer01),(42)))
    if loc_integer02==1 then
        call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\Calldown_FlyUp.mdx",loc_unit01,"chest"))
    elseif loc_integer02==2 then
        call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\Calldown_FlyUp.mdx",loc_unit01,"chest"))
    elseif loc_integer02==3 then
        call DestroyEffect(AddSpecialEffect("war3mapImported\\Calldown_FlyDown.mdx",loc_real01,loc_real02))
    elseif loc_integer02==4 then
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set unit385=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,600+25,Condition(function Func0305))
        call ForGroup(loc_group01,function Func4034)
        call Func0029(loc_group01)
        call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\DemolisherFireMissile\\DemolisherFireMissile.mdl",loc_real01,loc_real02))
    elseif loc_integer02==5 then
        call DestroyEffect(AddSpecialEffect("war3mapImported\\Calldown_FlyDown.mdx",loc_real01,loc_real02))
    elseif loc_integer02==6 then
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set unit385=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,600+25,Condition(function Func0305))
        call ForGroup(loc_group01,function Func4035)
        call Func0029(loc_group01)
        call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\DemolisherFireMissile\\DemolisherFireMissile.mdl",loc_real01,loc_real02))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FogModifierStop(loc_fogmodifier01)
        call DestroyFogModifier(loc_fogmodifier01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 83936 ~ 83962
function Func4037 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local string loc_string01=""
    local fogmodifier loc_fogmodifier01=CreateFogModifierRadius(GetOwningPlayer(loc_unit01),FOG_OF_WAR_VISIBLE,loc_real01,loc_real02,350,true,true)
    call FogModifierStart(loc_fogmodifier01)
    if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(loc_unit01))==true or Func0107(GetLocalPlayer())then
        set loc_string01="war3mapImported\\CallDown_4.mdx"
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,false)
    call TriggerRegisterTimerEvent(loc_trigger01,0.8,false)
    call TriggerRegisterTimerEvent(loc_trigger01,1.6,false)
    call TriggerRegisterTimerEvent(loc_trigger01,2,false)
    call TriggerRegisterTimerEvent(loc_trigger01,3.6,false)
    call TriggerRegisterTimerEvent(loc_trigger01,4,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4036))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffect(loc_string01,loc_real01,loc_real02)))
    call SaveFogModifierHandle(hashtable001,(loc_integer01),(42),(loc_fogmodifier01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 83964 ~ 83969
function Func4038 takes nothing returns boolean
    if GetSpellAbilityId()=='A1T5' or GetSpellAbilityId()=='A235' then
        call Func4037()
    endif
    return false
endfunction

// 83971 ~ 83976
function Func4039 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4038))
    set loc_trigger01=null
endfunction
