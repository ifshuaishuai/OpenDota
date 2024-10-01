
// 66020 ~ 66024
function Func3089 takes nothing returns nothing
    if Func0096(GetEnumUnit())==false then
        call Func0115(unit124,GetEnumUnit(),3,real009)
    endif
endfunction

// 66026 ~ 66052
function Func3090 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group01=Func0030()
    local integer loc_integer02
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,200,Condition(function Func0305))
    set loc_integer02=CountUnitsInGroup(loc_group01)
    if loc_integer02<1 then
        set loc_integer02=1
    endif
    set real009=loc_real01/loc_integer02
    call ForGroup(loc_group01,function Func3089)
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",loc_real02,loc_real03))
    call Func0029(loc_group01)
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 66054 ~ 66078
function Func3091 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3002)))*62.5+12.5+25
    local string loc_string01=""
    if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(loc_unit01))==true or(boolean025 and(GetLocalPlayer()==player009 or GetLocalPlayer()==player010))then
        set loc_string01="Abilities\\Spells\\Items\\VampiricPotion\\VampPotionCaster.mdl"
    endif
    call Func0186(GetOwningPlayer(loc_unit01),5.7,loc_real01,loc_real02,400)
    call TriggerRegisterTimerEvent(loc_trigger01,1.7,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3090))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(20),((loc_real03)*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffect(loc_string01,loc_real01,loc_real02)))
    call RemoveLocation(loc_location01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_location01=null
endfunction

// 66080 ~ 66085
function Func3092 takes nothing returns boolean
    if GetSpellAbilityId()=='A0VG' then
        call Func3091()
    endif
    return false
endfunction

// 66087 ~ 66092
function Func3093 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3092))
    set loc_trigger01=null
endfunction
