
// 85595 ~ 85602
function Func4104 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group035)==false then
        call GroupAddUnit(group035,GetEnumUnit())
        call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\ChainFreeze_F6.mdx",GetEnumUnit(),"chest"))
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\FrostWyrmMissile\\FrostWyrmMissile.mdl",GetEnumUnit(),"chest"))
        call Func0115(unit394,GetEnumUnit(),1,integer537*70)
    endif
endfunction

// 85604 ~ 85643
function Func4105 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(683)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(684)))
    local real loc_real03=GetUnitX(loc_unit03)
    local real loc_real04=GetUnitY(loc_unit03)
    local real loc_real05=Atan2(loc_real02-loc_real04,loc_real01-loc_real03)
    local real loc_real06=loc_real03+22*Cos(loc_real05)
    local real loc_real07=loc_real04+22*Sin(loc_real05)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(133)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1YO')
    local group loc_group02=Func0030()
    set unit124=loc_unit01
    set unit394=loc_unit01
    set group035=loc_group01
    set integer537=loc_integer02
    set unit395=null
    call GroupEnumUnitsInRange(loc_group02,loc_real06,loc_real07,225,Condition(function Func0305))
    call ForGroup(loc_group02,function Func4104)
    call Func0029(loc_group02)
    call SetUnitPosition(loc_unit03,loc_real06,loc_real07)
    if Func0149(loc_real06,loc_real07,loc_real01,loc_real02)<40 then
        call KillUnit(loc_unit03)
        call ShowUnit(loc_unit03,false)
        call SetUnitPathing(loc_unit03,true)
        call Func4103(loc_unit01,null,loc_real06,loc_real07,loc_real05*bj_RADTODEG)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit03=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 85645 ~ 85670
function Func4106 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0CS',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=GetSpellTargetX()
    local real loc_real04=GetSpellTargetY()
    local real loc_real05=Atan2(loc_real04-loc_real02,loc_real03-loc_real01)
    local real loc_real06=Func0126(loc_real03)
    local real loc_real07=Func0129(loc_real04)
    call SetUnitFacing(loc_unit02,loc_real05*bj_RADTODEG)
    call SetUnitPathing(loc_unit02,false)
    call TriggerRegisterTimerEvent(loc_trigger01,.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4105))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(683),((loc_real06)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(684),((loc_real07)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real05)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call SaveGroupHandle(hashtable001,(loc_integer01),(133),(Func0030()))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 85672 ~ 85677
function Func4107 takes nothing returns boolean
    if GetSpellAbilityId()=='A1YO' then
        call Func4106()
    endif
    return false
endfunction

// 85679 ~ 85684
function Func4108 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4107))
    set loc_trigger01=null
endfunction
