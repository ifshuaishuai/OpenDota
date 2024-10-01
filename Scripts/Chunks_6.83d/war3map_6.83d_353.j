
// 51370 ~ 51372
function Func2216 takes nothing returns nothing
    call UnitDamageTarget(unit002,GetEnumUnit(),real002,true,true,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
endfunction

// 51374 ~ 51434
function Func2217 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(221)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(194)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(133)))
    local real loc_real02=GetUnitX(loc_unit01)
    local real loc_real03=GetUnitY(loc_unit01)
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real06=loc_real04+1000*0.05*Cos(loc_real01)
    local real loc_real07=loc_real05+1000*0.05*Sin(loc_real01)
    local group loc_group02
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(239)))
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A0GC' or GetSpellAbilityId()==0 then
            call RemoveUnit(loc_unit02)
            call SetUnitVertexColor(loc_unit01,255,255,255,255)
            call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(225),(false))
            call SetUnitInvulnerable(loc_unit01,false)
            call SetUnitPathing(loc_unit01,true)
            call Func0029(loc_group01)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
        return false
    endif
    set loc_group02=Func0030()
    call SaveReal(hashtable001,(loc_integer01),(23),((loc_real06)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((loc_real07)*1.0))
    set unit002=loc_unit01
    set real002=GetUnitAbilityLevel(loc_unit01,'A0FN')*75+25
    set group001=loc_group01
    call GroupEnumUnitsInRange(loc_group02,loc_real02,loc_real03,200+25,Condition(function Func2215))
    call ForGroup(loc_group02,function Func2216)
    call GroupAddGroup(loc_group02,loc_group01)
    call Func0029(loc_group02)
    set loc_integer02=loc_integer02-1
    call SaveInteger(hashtable001,(loc_integer01),(194),(loc_integer02))
    call SetUnitX(loc_unit01,Func0126(loc_real06))
    call SetUnitY(loc_unit01,Func0129(loc_real07))
    call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
    call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",loc_real02,loc_real03))
    if loc_integer02==0 then
        call RemoveUnit(loc_unit02)
        call SetUnitVertexColor(loc_unit01,255,255,255,255)
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(225),(false))
        call SetUnitInvulnerable(loc_unit01,false)
        call SetUnitPathing(loc_unit01,true)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_unit01=null
    set loc_group01=null
    set loc_group02=null
    set loc_trigger01=null
    return false
endfunction

// 51436 ~ 51471
function Func2218 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real03=GetLocationX(loc_location01)
    local real loc_real04=GetLocationY(loc_location01)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=Func0030()
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(loc_unit01))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call RemoveLocation(loc_location01)
    if GetSpellTargetUnit()!=null then
        set loc_real03=GetUnitX(GetSpellTargetUnit())
        set loc_real04=GetUnitY(GetSpellTargetUnit())
    endif
    call SetUnitVertexColor(loc_unit01,255,255,255,0)
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(225),(true))
    call SetUnitInvulnerable(loc_unit01,true)
    call SetUnitPathing(loc_unit01,false)
    call SaveUnitHandle(hashtable001,(loc_integer01),(221),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(23),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((loc_real02)*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(133),(loc_group01))
    call SaveReal(hashtable001,(loc_integer01),(13),((Atan2(loc_real04-loc_real02,loc_real03-loc_real01))*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(194),(Func0139(R2I(SquareRoot((loc_real03-loc_real01)*(loc_real03-loc_real01)+(loc_real04-loc_real02)*(loc_real04-loc_real02))/50),1)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(239),(loc_unit02))
    call TriggerRegisterTimerEvent(loc_trigger01,0.04,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2217))
    call ShowUnit(loc_unit01,false)
    call ShowUnit(loc_unit01,true)
    call SelectUnitAddForPlayer(loc_unit01,GetOwningPlayer(loc_unit01))
    set loc_trigger01=null
endfunction

// 51473 ~ 51478
function Func2219 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2214))
    call TriggerAddAction(loc_trigger01,function Func2218)
endfunction
