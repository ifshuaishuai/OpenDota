
// 46433 ~ 46436
function Func1891 takes nothing returns nothing
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\ChimaeraLightningMissile\\ChimaeraLightningMissile.mdl",GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit())))
    call Func0115(unit277,GetEnumUnit(),1,real280)
endfunction

// 46438 ~ 46475
function Func1892 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(9)))
    local integer loc_integer02=GetHandleId(loc_trigger02)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(8)))
    local group loc_group01
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call ShowUnit(loc_unit01,false)
        call KillUnit(loc_unit01)
        call FlushChildHashtable(hashtable001,(loc_integer02))
        call Func0035(loc_trigger02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(loc_unit01))==true and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetTriggerUnit(),'A04R')==0 then
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set unit277=loc_unit01
        set real280=100+40*loc_integer03
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),285,Condition(function Func0305))
        call ForGroup(loc_group01,function Func1891)
        call Func0029(loc_group01)
        call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Bolt\\BoltImpact.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
        call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Bolt\\BoltImpact.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
        call ShowUnit(loc_unit01,false)
        call KillUnit(loc_unit01)
        call FlushChildHashtable(hashtable001,(loc_integer02))
        call Func0035(loc_trigger02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger02=null
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 46477 ~ 46514
function Func1893 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local trigger loc_trigger02
    local integer loc_integer02
    local unit loc_unit01
    local integer loc_integer03
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03
    local integer loc_integer04=GetTriggerEvalCount(loc_trigger01)
    if loc_integer04==1 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(3))))
    elseif loc_integer04==2 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(4))))
        set loc_trigger02=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger02)
        set loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
        set loc_real03=(LoadReal(hashtable001,(loc_integer01),(1)))
        set loc_unit01=CreateUnit(GetOwningPlayer((LoadUnitHandle(hashtable001,(loc_integer01),(2)))),'h07F',loc_real01,loc_real02,loc_real03)
        call SetUnitVertexColor(loc_unit01,255,255,255,100)
        call UnitApplyTimedLife(loc_unit01,'BTLF',12)
        call SaveUnitHandle(hashtable001,(loc_integer01),(8),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer02),(8),(loc_unit01))
        call SaveTriggerHandle(hashtable001,(loc_integer02),(9),(loc_trigger01))
        call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer03))
        call TriggerRegisterUnitInRange(loc_trigger02,loc_unit01,235,Condition(function Func0175))
        call TriggerRegisterUnitEvent(loc_trigger02,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger02,Condition(function Func1892))
        call DestroyEffect(AddSpecialEffectTarget("effects\\ManaFlareBoltImpact_NoSound.mdx",loc_unit01,"origin"))
    elseif loc_integer04>2 then
        set loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(8)))
        call DestroyEffect(AddSpecialEffectTarget("effects\\ManaFlareBoltImpact_NoSound.mdx",loc_unit01,"origin"))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 46516 ~ 46533
function Func1894 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1893))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(loc_unit01,'A14P')))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(1),((GetUnitFacing(loc_unit01))*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(3),(AddSpecialEffect("Abilities\\Spells\\Orc\\LightningShield\\LightningShieldTarget.mdl",loc_real01,loc_real02)))
    call SaveEffectHandle(hashtable001,(loc_integer01),(4),(AddSpecialEffect("effects\\Static_Remnant_FX.mdx",loc_real01,loc_real02)))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 46535 ~ 46540
function Func1895 takes nothing returns boolean
    if GetSpellAbilityId()=='A14P' then
        call Func1894()
    endif
    return false
endfunction

// 46542 ~ 46547
function Func1896 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1895))
    set loc_trigger01=null
endfunction
