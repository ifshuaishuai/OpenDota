
// 85187 ~ 85257
function Func4091 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(133)))
    local lightning loc_lightning01=(LoadLightningHandle(hashtable001,(loc_integer01),(196)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real01=Func0147(loc_unit01,loc_unit02)
    local real loc_real02=1
    local real loc_real03=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
    local real loc_real04=GetUnitState(loc_unit01,UNIT_STATE_MANA)
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(670)))
    local real loc_real06=(LoadReal(hashtable001,(loc_integer01),(667)))
    local real loc_real07
    local real loc_real08
    local real loc_real09=1.5
    if loc_unit02==null or loc_unit01==null or Func0194(loc_unit01)==true or(loc_integer02>600 and Func4089(loc_unit01,loc_unit02)==false and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4295))))==1)==false)or(loc_real01>925 and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4295))))==1)==false)or GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A1TU')then
        call Func0029(loc_group01)
        call DestroyLightning(loc_lightning01)
        call UnitRemoveAbility(loc_unit02,'A1TH')
        call UnitRemoveAbility(loc_unit02,'A1TI')
        call UnitRemoveAbility(loc_unit02,'A1TG')
        call UnitRemoveAbility(loc_unit02,'A1TJ')
        call UnitRemoveAbility(loc_unit02,'B0DH')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit01,'A1TH')
        call UnitRemoveAbility(loc_unit01,'A1TI')
        call UnitRemoveAbility(loc_unit01,'A1TG')
        call UnitRemoveAbility(loc_unit01,'A1TJ')
        call UnitRemoveAbility(loc_unit01,'B0DH')
        call UnitRemoveAbility(loc_unit01,'A1TU')
        if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A1TA' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1TA',true)
        endif
        call RemoveSavedHandle(hashtable001,GetHandleId(loc_unit01),652)
    else
        set loc_real07=loc_real03/GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)
        set loc_real08=loc_real04/GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA)
        if loc_real07-loc_real05>0 and(loc_real07-loc_real05)<0.5 then
            if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4298))))==1)==false then
                call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+loc_real09*(loc_real07-loc_real05)*GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE))
            endif
        endif
        if loc_real08-loc_real06>0 and(loc_real08-loc_real06)<0.5 then
            call SetUnitState(loc_unit02,UNIT_STATE_MANA,GetUnitState(loc_unit02,UNIT_STATE_MANA)+loc_real09*(loc_real08-loc_real06)*GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA))
        endif
        call SaveReal(hashtable001,(loc_integer01),(670),((GetUnitState(loc_unit01,UNIT_STATE_LIFE)/GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(667),((GetUnitState(loc_unit01,UNIT_STATE_MANA)/GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA))*1.0))
        call MoveLightning(loc_lightning01,true,GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02))
        call Func4088(loc_unit01,loc_unit02,loc_group01)
        if IsUnitVisible(loc_unit01,GetLocalPlayer())==false and IsUnitVisible(loc_unit02,GetLocalPlayer())==false then
            set loc_real02=0
        endif
        if Func0107(GetLocalPlayer())then
            set loc_real02=1
        endif
        if loc_real01<700 or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4295))))==1)==true then
            call SetLightningColor(loc_lightning01,0.00,1.00,1.00,loc_real02)
        else
            call SetLightningColor(loc_lightning01,0.80,0.70,0.40,loc_real02)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    set loc_lightning01=null
    return false
endfunction

// 85259 ~ 85312
function Func4092 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local lightning loc_lightning01=AddLightning("CHIM",true,GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1TA')
    local integer loc_integer03
    local real loc_real01=Func0147(loc_unit01,loc_unit02)
    local real loc_real02=Func0168(loc_unit01,loc_unit02)*bj_DEGTORAD
    local location loc_location01
    local real loc_real03
    local real loc_real04
    call SetLightningColor(loc_lightning01,0.00,1.00,1.00,1)
    call Func0193(loc_unit01,'A1TU')
    if loc_integer02==1 then
        set loc_integer03='A1TH'
    elseif loc_integer02==2 then
        set loc_integer03='A1TI'
    elseif loc_integer02==3 then
        set loc_integer03='A1TG'
    elseif loc_integer02==4 then
        set loc_integer03='A1TJ'
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1TA',false)
    call Func0193(loc_unit01,loc_integer03)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer03,false)
    call Func0193(loc_unit02,loc_integer03)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),loc_integer03,false)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveGroupHandle(hashtable001,(loc_integer01),(133),(Func0030()))
    call SaveLightningHandle(hashtable001,(loc_integer01),(196),(loc_lightning01))
    call SaveReal(hashtable001,(loc_integer01),(670),((GetUnitState(loc_unit01,UNIT_STATE_LIFE)/GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(667),((GetUnitState(loc_unit01,UNIT_STATE_MANA)/GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4091))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(652),(loc_unit02))
    if loc_real01>700 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl",loc_unit01,"chest")))
        call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4090))
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4295)),(1))
    endif
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 85314 ~ 85319
function Func4093 takes nothing returns boolean
    if GetSpellAbilityId()=='A1TA' then
        call Func4092()
    endif
    return false
endfunction

// 85321 ~ 85326
function Func4094 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4093))
    set loc_trigger01=null
endfunction
