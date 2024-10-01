
// 4248 ~ 4259
function Func0146 takes unit loc_unit01,unit loc_unit02,real loc_real01 returns boolean
    local real loc_real02=GetUnitX(loc_unit01)
    local real loc_real03=GetUnitY(loc_unit01)
    local real loc_real04=GetUnitX(loc_unit02)
    local real loc_real05=GetUnitY(loc_unit02)
    if((loc_real02-loc_real04)*(loc_real02-loc_real04)+(loc_real03-loc_real05)*(loc_real03-loc_real05))<loc_real01*loc_real01 then
        return true
    else
        return false
    endif
    return false
endfunction

// 4261 ~ 4272
function Func0147 takes unit loc_unit01,unit loc_unit02 returns real
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    if loc_unit01==null or loc_unit02==null then
        return I2R(9999999999)
    else
        return SquareRoot((loc_real01-loc_real03)*(loc_real01-loc_real03)+(loc_real02-loc_real04)*(loc_real02-loc_real04))
    endif
    return 1.0
endfunction

// 4274 ~ 4285
function Func0148 takes unit loc_unit01,location loc_location01 returns real
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=GetLocationX(loc_location01)
    local real loc_real04=GetLocationY(loc_location01)
    if loc_unit01==null then
        return I2R(9999999999)
    else
        return SquareRoot((loc_real01-loc_real03)*(loc_real01-loc_real03)+(loc_real02-loc_real04)*(loc_real02-loc_real04))
    endif
    return 1.0
endfunction

// 4287 ~ 4289
function Func0149 takes real loc_real01,real loc_real02,real loc_real03,real loc_real04 returns real
    return SquareRoot(((loc_real01-loc_real03)*(loc_real01-loc_real03))+((loc_real02-loc_real04)*(loc_real02-loc_real04)))
endfunction

// 4291 ~ 4293
function Func0150 takes unit loc_unit01 returns nothing
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA))
endfunction

// 4295 ~ 4297
function Func0151 takes nothing returns nothing
    call DisplayTimedTextToPlayer(GetEnumPlayer(),0,real003,real005,string026)
endfunction

// 4299 ~ 4303
function Func0152 takes force loc_force01,real loc_real01,string loc_string01 returns nothing
    set string026=loc_string01
    set real005=loc_real01
    call ForForce(loc_force01,function Func0151)
endfunction

// 4305 ~ 4309
function Func0153 takes nothing returns nothing
    if booleans012[GetPlayerId(GetEnumPlayer())]then
        call DisplayTimedTextToPlayer(GetEnumPlayer(),0,real003,real005,string026)
    endif
endfunction

// 4311 ~ 4315
function Func0154 takes force loc_force01,real loc_real01,string loc_string01 returns nothing
    set string026=loc_string01
    set real005=loc_real01
    call ForForce(loc_force01,function Func0153)
endfunction

// 4317 ~ 4319
function Func0155 takes unit loc_unit01,real loc_real01 returns nothing
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real01)
endfunction

// 4321 ~ 4323
function Func0156 takes nothing returns nothing
    call PauseAllUnitsBJ(true)
endfunction

// 4325 ~ 4328
function Func0157 takes nothing returns nothing
    local timer loc_timer01=CreateTimer()
    call TimerStart(loc_timer01,1,true,function Func0156)
endfunction

// 4330 ~ 4338
function Func0158 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035((loc_trigger01))
    set loc_trigger01=null
    return false
endfunction

// 4340 ~ 4349
function Func0159 takes string loc_string01,unit loc_unit01,string loc_string02,real loc_real01 returns nothing
    local effect loc_effect01=AddSpecialEffectTarget(loc_string01,loc_unit01,loc_string02)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(loc_effect01))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0158))
    set loc_effect01=null
    set loc_trigger01=null
endfunction

// 4351 ~ 4359
function Func0160 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035((loc_trigger01))
    set loc_trigger01=null
    return false
endfunction

// 4361 ~ 4371
function Func0161 takes string loc_string01,unit loc_unit01,string loc_string02,real loc_real01 returns nothing
    local effect loc_effect01=AddSpecialEffectTarget(loc_string01,loc_unit01,loc_string02)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(loc_effect01))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0160))
    set loc_effect01=null
    set loc_trigger01=null
endfunction

// 4373 ~ 4381
function Func0162 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035((loc_trigger01))
    set loc_trigger01=null
    return false
endfunction

// 4383 ~ 4392
function Func0163 takes string loc_string01,real loc_real01,real loc_real02,real loc_real03 returns nothing
    local effect loc_effect01=AddSpecialEffect(loc_string01,loc_real01,loc_real02)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(loc_effect01))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real03,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0162))
    set loc_effect01=null
    set loc_trigger01=null
endfunction

// 4394 ~ 4409
function Func0164 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local string loc_string01=(LoadStr(hashtable001,(loc_integer01),(39)))
    local string loc_string02=(LoadStr(hashtable001,(loc_integer01),(40)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    call Func0161(loc_string01,loc_unit01,loc_string02,2)
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(loc_trigger01)>loc_integer02 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 4411 ~ 4423
function Func0165 takes unit loc_unit01,integer loc_integer01 returns item
    local integer loc_integer02=0
    local item loc_item01
    loop
        exitwhen loc_integer02==6
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
        if loc_item01!=null and GetItemTypeId(loc_item01)==loc_integer01 then
            return loc_item01
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return null
endfunction

// 4425 ~ 4429
function Func0166 takes timer loc_timer01 returns nothing
    call PauseTimer(loc_timer01)
    call FlushChildHashtable(hashtable001,(GetHandleId(loc_timer01)))
    call DestroyTimer(loc_timer01)
endfunction

// 4431 ~ 4433
function Func0167 takes real loc_real01,real loc_real02,real loc_real03,real loc_real04 returns real
    return SquareRoot((loc_real01-loc_real03)*(loc_real01-loc_real03)+(loc_real02-loc_real04)*(loc_real02-loc_real04))
endfunction

// 4435 ~ 4437
function Func0168 takes unit loc_unit01,unit loc_unit02 returns real
    return bj_RADTODEG*Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01))
endfunction

// 4439 ~ 4441
function Func0169 takes real loc_real01,real loc_real02,real loc_real03,real loc_real04 returns real
    return bj_RADTODEG*Atan2(loc_real04-loc_real02,loc_real03-loc_real01)
endfunction

// 4443 ~ 4445
function Func0170 takes nothing returns nothing
    call DestroyLightning((LoadLightningHandle(hashtable001,(GetHandleId(GetExpiredTimer())),(41))))
endfunction

// 4447 ~ 4453
function Func0171 takes string loc_string01,real loc_real01,real loc_real02,real loc_real03,real loc_real04,real loc_real05,real loc_real06,real loc_real07,real loc_real08,real loc_real09 returns nothing
    local timer loc_timer01=CreateTimer()
    local lightning loc_lightning01=AddLightning(loc_string01,true,loc_real01,loc_real02,loc_real03,loc_real04)
    call SetLightningColor(loc_lightning01,loc_real05,loc_real06,loc_real07,loc_real08)
    call SaveLightningHandle(hashtable001,(GetHandleId(loc_timer01)),(41),(loc_lightning01))
    call TimerStart(loc_timer01,loc_real09,false,function Func0170)
endfunction

// 4455 ~ 4462
function Func0172 takes string loc_string01,unit loc_unit01,integer loc_integer01,integer loc_integer02,integer loc_integer03 returns nothing
    local texttag loc_texttag01=CreateTextTag()
    call SetTextTagText(loc_texttag01,loc_string01,0.03)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,0)
    call SetTextTagColor(loc_texttag01,loc_integer01,loc_integer02,loc_integer03,255)
    call SetTextTagPermanent(loc_texttag01,true)
    set loc_texttag01=null
endfunction

// 4464 ~ 4479
function Func0173 takes string loc_string01,real loc_real01,unit loc_unit01,real loc_real02,integer loc_integer01,integer loc_integer02,integer loc_integer03,integer loc_integer04 returns nothing
    local texttag loc_texttag01=CreateTextTag()
    call SetTextTagText(loc_texttag01,loc_string01,loc_real02)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,64)
    call SetTextTagColor(loc_texttag01,loc_integer01,loc_integer02,loc_integer03,loc_integer04)
    call SetTextTagVelocity(loc_texttag01,0,0.0355)
    call SetTextTagFadepoint(loc_texttag01,2)
    call SetTextTagPermanent(loc_texttag01,false)
    call SetTextTagLifespan(loc_texttag01,loc_real01)
    if IsUnitVisible(loc_unit01,GetLocalPlayer())or Func0107(GetLocalPlayer())then
        call SetTextTagVisibility(loc_texttag01,true)
    else
        call SetTextTagVisibility(loc_texttag01,false)
    endif
    set loc_texttag01=null
endfunction

// 4481 ~ 4496
function Func0174 takes player loc_player01,string loc_string01,real loc_real01,unit loc_unit01,real loc_real02,integer loc_integer01,integer loc_integer02,integer loc_integer03,integer loc_integer04 returns nothing
    local texttag loc_texttag01=CreateTextTag()
    call SetTextTagText(loc_texttag01,loc_string01,loc_real02)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,64)
    call SetTextTagColor(loc_texttag01,loc_integer01,loc_integer02,loc_integer03,loc_integer04)
    call SetTextTagVelocity(loc_texttag01,0,0.0355)
    call SetTextTagFadepoint(loc_texttag01,2)
    call SetTextTagPermanent(loc_texttag01,false)
    call SetTextTagLifespan(loc_texttag01,loc_real01)
    if IsPlayerAlly(GetLocalPlayer(),loc_player01)==true or Func0107(GetLocalPlayer())then
        call SetTextTagVisibility(loc_texttag01,true)
    else
        call SetTextTagVisibility(loc_texttag01,false)
    endif
    set loc_texttag01=null
endfunction
