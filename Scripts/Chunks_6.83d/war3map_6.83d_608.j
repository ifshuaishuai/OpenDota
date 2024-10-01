
// 69055 ~ 69079
function Func3247 takes real loc_real01 returns string
    local string loc_string01="|c00ff0303"
    local string loc_string02="||"
    local string loc_string03=" "
    local string loc_string04=loc_string01+loc_string02+"|r"
    local string loc_string05
    if loc_real01>85 then
        set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04
    elseif loc_real01>70 then
        set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string02
    elseif loc_real01>55 then
        set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string02+loc_string03+loc_string02
    elseif loc_real01>40 then
        set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
    elseif loc_real01>25 then
        set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
    elseif loc_real01>10 then
        set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
    elseif loc_real01>0 then
        set loc_string05=loc_string04+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
    else
        set loc_string05=loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
    endif
    return loc_string05
endfunction

// 69081 ~ 69111
function Func3248 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(230)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(232)))
    local texttag loc_texttag01=(LoadTextTagHandle(hashtable001,(loc_integer01),(231)))
    local integer loc_integer04=GetTriggerEvalCount(loc_trigger01)
    local real loc_real02=Func0142(loc_real01-loc_integer04,0)
    local boolean loc_boolean01=true
    call SetTextTagText(loc_texttag01,Func3247(100*loc_real02/loc_real01),0.018)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,0)
    if IsUnitVisible(loc_unit01,GetLocalPlayer())==false and Func0107(GetLocalPlayer())==false then
        set loc_boolean01=false
    endif
    call SetTextTagVisibility(loc_texttag01,loc_boolean01)
    if loc_real02==0 then
        call Func0219(GetOwningPlayer(loc_unit01),loc_unit01,25*loc_integer02)
    endif
    if loc_real02==0 or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A10R',true)
        call UnitRemoveAbility(loc_unit01,'A10S')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call DestroyTextTag(loc_texttag01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 69113 ~ 69152
function Func3249 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A10R')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local real loc_real01=GetUnitState(loc_unit02,UNIT_STATE_LIFE)
    local integer loc_integer03=GetUnitLevel(loc_unit02)
    local integer loc_integer04=GetUnitTypeId(loc_unit02)
    local texttag loc_texttag01=CreateTextTag()
    local boolean loc_boolean01=true
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',0,0,0)
    call Func0171("SPLK",GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02),0.1,0.1,0.2,.9,0.5)
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\Devour\\DevourEffectArt.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    if IsUnitVisible(loc_unit01,GetLocalPlayer())==false then
        set loc_boolean01=false
    endif
    call Func3246(loc_unit01,loc_unit02)
    call SetTextTagText(loc_texttag01,Func3247(100),0.018)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,0)
    call SetTextTagVisibility(loc_texttag01,loc_boolean01)
    call SetTextTagPermanent(loc_texttag01,true)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A10R',false)
    call Func0193(loc_unit01,'A10S')
    call SaveUnitHandle(hashtable001,(loc_integer02),(14),(loc_unit01))
    call SaveTextTagHandle(hashtable001,(loc_integer02),(231),(loc_texttag01))
    call SaveInteger(hashtable001,(loc_integer02),(230),(loc_integer04))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveReal(hashtable001,(loc_integer02),(232),((loc_real01)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3248))
    call ShowUnit(loc_unit02,false)
    call UnitRemoveBuffs(loc_unit02,true,true)
    call UnitRemoveAbility(loc_unit02,'Aetl')
    call UnitDamageTarget(loc_unit03,loc_unit02,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction
