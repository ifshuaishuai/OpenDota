
// 80068 ~ 80075
function Func3883 takes nothing returns nothing
    local unit loc_unit01=unit374
    local unit loc_unit02=GetEnumUnit()
    local integer loc_integer01=integer528
    call Func3865(loc_unit01,loc_unit02)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 80077 ~ 80128
function Func3884 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(432)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real05=GetUnitX(loc_unit01)+30*Cos(loc_real03)
    local real loc_real06=GetUnitY(loc_unit01)+30*Sin(loc_real03)
    local group loc_group01
    local fogmodifier loc_fogmodifier01
    if Func0149(loc_real05,loc_real06,loc_real01,loc_real02)<35 or loc_real05!=Func0126(loc_real05)or loc_real06!=Func0129(loc_real06)then
        set loc_real05=loc_real01
        set loc_real06=loc_real02
        call SetUnitX(loc_unit01,loc_real05)
        call SetUnitY(loc_unit01,loc_real06)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        set loc_fogmodifier01=(LoadFogModifierHandle(hashtable001,(loc_integer01),(440)))
        call FogModifierStop(loc_fogmodifier01)
        call DestroyFogModifier(loc_fogmodifier01)
        set loc_fogmodifier01=null
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit01)
        set unit124=loc_unit02
        set unit374=loc_unit02
        set integer528=loc_integer02
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real05,loc_real06,loc_real04+25,Condition(function Func0305))
        call ForGroup(loc_group01,function Func3882)
        call Func0029(loc_group01)
        set loc_group01=null
    else
        call SetUnitX(loc_unit01,loc_real05)
        call SetUnitY(loc_unit01,loc_real06)
        set unit124=loc_unit02
        set unit374=loc_unit02
        set integer528=loc_integer02
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real05,loc_real06,300,Condition(function Func0305))
        call ForGroup(loc_group01,function Func3883)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 80130 ~ 80160
function Func3885 takes unit loc_unit01,real loc_real01,real loc_real02,real loc_real03,effect loc_effect01,fogmodifier loc_fogmodifier01 returns nothing
    local real loc_real04=Atan2(loc_real02-GetUnitY(loc_unit01),loc_real01-GetUnitX(loc_unit01))
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0B6',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real04*bj_RADTODEG)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1MI')
    local real loc_real05=Func0141(25+250+25*loc_real03*2,1000)
    local real loc_real06=Func0149(GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01,loc_real02)
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2QE')
    endif
    if IsUnitEnemy(loc_unit02,GetLocalPlayer())and Func0107(GetLocalPlayer())==false then
        call UnitSetUsesAltIcon(loc_unit02,true)
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,Func0141(2.0/(loc_real06/30),0.04),true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3884))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(47),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(48),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(432),((loc_real05)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveFogModifierHandle(hashtable001,(loc_integer01),(440),(loc_fogmodifier01))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(loc_effect01))
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1MI',true)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2QE',true)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1MN',false)
    set loc_trigger01=null
    set loc_unit02=null
endfunction

// 80162 ~ 80199
function Func3886 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real02
    local real loc_real03
    local real loc_real04=(TimerGetElapsed(timer001))-(LoadReal(hashtable001,(loc_integer01),(431)))
    local string loc_string01
    local fogmodifier loc_fogmodifier01
    local effect loc_effect01
    local real loc_real05=GetUnitX(loc_unit01)+30*Cos(loc_real01)
    local real loc_real06=GetUnitY(loc_unit01)+30*Sin(loc_real01)
    set loc_real02=Func0126(loc_real05)
    set loc_real03=Func0129(loc_real06)
    call SetUnitX(loc_unit01,loc_real02)
    call SetUnitY(loc_unit01,loc_real03)
    if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A1MN')or loc_real02!=loc_real05 or loc_real03!=loc_real06 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call RemoveUnit(loc_unit01)
        set loc_string01=""
        if IsPlayerAlly(GetOwningPlayer(loc_unit02),GetLocalPlayer())or Func0107(GetLocalPlayer())then
            set loc_string01="war3mapImported\\IceWindGroundFX.mdl"
        endif
        set loc_fogmodifier01=CreateFogModifierRadius(GetOwningPlayer(loc_unit02),FOG_OF_WAR_VISIBLE,loc_real02,loc_real03,500,true,true)
        call FogModifierStart(loc_fogmodifier01)
        set loc_effect01=AddSpecialEffect(loc_string01,loc_real02,loc_real03)
        call Func3885(loc_unit02,loc_real02,loc_real03,loc_real04,loc_effect01,loc_fogmodifier01)
        set loc_fogmodifier01=null
        set loc_effect01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 80201 ~ 80231
function Func3887 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=Atan2(loc_real02-GetUnitY(loc_unit01),loc_real01-GetUnitX(loc_unit01))
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'H0B8',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real03*bj_RADTODEG)
    if IsUnitEnemy(loc_unit02,GetLocalPlayer())and Func0107(GetLocalPlayer())==false then
        call UnitSetUsesAltIcon(loc_unit02,true)
    endif
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(431),(((TimerGetElapsed(timer001)))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3886))
    call SetUnitColor(loc_unit02,GetPlayerColor(Player(14)))
    call RemoveLocation(loc_location01)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1MI',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2QE',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1MN',true)
    call Func0193(loc_unit01,'A1MN')
    set loc_unit01=null
    set loc_location01=null
    set loc_trigger01=null
    set loc_unit02=null
endfunction

// 80233 ~ 80238
function Func3888 takes nothing returns boolean
    if GetSpellAbilityId()=='A1MI' or GetSpellAbilityId()=='A2QE' then
        call Func3887()
    endif
    return false
endfunction

// 80240 ~ 80245
function Func3889 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3888))
    set loc_trigger01=null
endfunction
