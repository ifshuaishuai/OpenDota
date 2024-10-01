
// 45027 ~ 45064
function Func1810 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(26)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(95)))
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
        if Func0374(GetSpellAbilityId())and GetSpellTargetUnit()==loc_unit02 then
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            set loc_trigger01=null
            set loc_unit01=null
            set loc_unit02=null
        endif
        return false
    endif
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    if(LoadBoolean(hashtable001,(GetHandleId(loc_unit02)),(80)))==false and GetUnitAbilityLevel(loc_unit02,'A04R')==0 then
        call Func0044(loc_unit02,4409,1)
        if loc_boolean01 then
            call SetUnitPosition(loc_unit02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        else
            call SetUnitPosition(loc_unit02,loc_real01,loc_real02)
        endif
    endif
    if(LoadBoolean(hashtable001,(GetHandleId(loc_unit02)),(80)))==true then
        call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n036'))
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 45066 ~ 45083
function Func1811 takes unit loc_unit01,unit loc_unit02,integer loc_integer01,real loc_real01,real loc_real02,boolean loc_boolean01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    if IsUnitOwnedByPlayer(loc_unit01,GetOwningPlayer(loc_unit02))and loc_boolean01==false then
        call TriggerRegisterTimerEvent(loc_trigger01,0.1,false)
    else
        call TriggerRegisterTimerEvent(loc_trigger01,7-loc_integer01,false)
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    endif
    call TriggerAddCondition(loc_trigger01,Condition(function Func1810))
    call SaveEffectHandle(hashtable001,(loc_integer02),(32),(AddSpecialEffectTarget("effects\\Test_of_Faith_FX.mdx",loc_unit01,"overhead")))
    call SaveUnitHandle(hashtable001,(loc_integer02),(26),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer02),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((loc_real02)*1.0))
    call SaveBoolean(hashtable001,(loc_integer02),(95),(loc_boolean01))
    set loc_trigger01=null
endfunction

// 45085 ~ 45130
function Func1812 takes nothing returns nothing
    local unit loc_unit01=GetSpellTargetUnit()
    local unit loc_unit02=GetTriggerUnit()
    local location loc_location01=GetUnitLoc(loc_unit02)
    local unit loc_unit03
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit02,'A0LV')
    local real loc_real01
    local group loc_group01
    local unit loc_unit04
    local location loc_location02
    local effect loc_effect01
    if(Func0056(GetOwningPlayer(loc_unit02)))then
        set loc_location02=GetRectCenter(rect011)
    else
        set loc_location02=GetRectCenter(rect004)
    endif
    if loc_unit01==loc_unit02 then
        set loc_group01=Func0030()
        call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(loc_unit02),Condition(function Func1809))
        loop
            exitwhen CountUnitsInGroup(loc_group01)==0
            set loc_unit04=GroupPickRandomUnit(loc_group01)
            call GroupRemoveUnit(loc_group01,loc_unit04)
            call Func1811(loc_unit04,loc_unit02,loc_integer01,GetLocationX(loc_location02),GetLocationY(loc_location02),true)
        endloop
        call Func0029(loc_group01)
    elseif(IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==false)then
        if Func0028(GetSpellTargetUnit())==false then
            set loc_real01=GetRandomInt(50*loc_integer01,100*loc_integer01)
            call Func0173(I2S(R2I(loc_real01)),1,loc_unit01,0.023,255,255,0,216)
            call UnitDamageTargetBJ(loc_unit02,loc_unit01,loc_real01,ATTACK_TYPE_HERO,DAMAGE_TYPE_MAGIC)
            set loc_effect01=AddSpecialEffectTargetUnitBJ("chest",loc_unit01,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl")
            call DestroyEffect(loc_effect01)
        endif
    else
        if(IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true)then
            if((LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(139)))==false)then
                call Func1811(loc_unit01,loc_unit02,loc_integer01,GetLocationX(loc_location02),GetLocationY(loc_location02),false)
            endif
        elseif(IsUnitOwnedByPlayer(loc_unit01,GetOwningPlayer(loc_unit02))==true)then
            call SetUnitPositionLoc(loc_unit01,loc_location02)
        endif
    endif
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
endfunction
