
// 83152 ~ 83212
function Func4000 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(627)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(628)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1S4')
    local real loc_real02=(5+loc_integer03*15)*Pow(2,IMinBJ(loc_integer02,5)-1)
    set loc_real02=loc_real02+IMaxBJ(loc_integer02-5,0)*50
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
        endif
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(627),(0))
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(628),((0)*1.0))
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A1S9' then
            if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
            endif
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(627),(0))
            call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(628),((0)*1.0))
            if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4293))))==1)then
                call SetUnitInvulnerable(loc_unit02,false)
            endif
            call Func0115(loc_unit01,loc_unit02,1,loc_real02)
            if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4293))))==1)then
                call SetUnitInvulnerable(loc_unit02,true)
            endif
            call Func0173(I2S(R2I(loc_real02))+"!",2,loc_unit02,0.025,100,0,200,216)
        endif
    elseif(TimerGetElapsed(timer001))>loc_real01 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(627),(0))
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(628),((0)*1.0))
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4293))))==1)then
            call SetUnitInvulnerable(loc_unit02,false)
        endif
        call Func0115(loc_unit01,loc_unit02,1,loc_real02)
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4293))))==1)then
            call SetUnitInvulnerable(loc_unit02,true)
        endif
        call Func0173(I2S(R2I(loc_real02))+"!",2,loc_unit02,0.025,100,0,200,216)
    else
        if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 83214 ~ 83245
function Func4001 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1S4')
    local unit loc_unit03
    if(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(627)))>0 then
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(627),((LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(627)))+1))
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(628),(((TimerGetElapsed(timer001))+10)*1.0))
    else
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
        endif
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(627),(1))
        if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
            call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\shamanyouranus-ShadowyMissile.mdl",loc_unit02,"chest")))
        else
            call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\shamanyouranus-ShadowyMissile.mdl",loc_unit02,"origin")))
        endif
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(628),(((TimerGetElapsed(timer001))+10)*1.0))
        call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4000))
        set loc_unit03=null
    endif
    call Func0173("+"+I2S((LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(627)))),3,loc_unit02,0.025,100,0,200,216)
    call Func0115(loc_unit01,loc_unit02,1,50)
    set loc_trigger01=null
endfunction

// 83247 ~ 83252
function Func4002 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group033)==false then
        call GroupAddUnit(group033,GetEnumUnit())
        call Func4001(unit384,GetEnumUnit())
    endif
endfunction

// 83254 ~ 83290
function Func4003 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real02=Func0126(GetUnitX(loc_unit02)+(20)*Cos(loc_real01))
    local real loc_real03=Func0129(GetUnitY(loc_unit02)+(20)*Sin(loc_real01))
    local group loc_group01
    local group loc_group02=(LoadGroupHandle(hashtable001,(loc_integer01),(133)))
    local unit loc_unit03
    if loc_integer02==75 then
        call Func0029(loc_group02)
        call KillUnit(loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set unit124=loc_unit01
        set unit384=loc_unit01
        set group033=loc_group02
        call SetUnitX(loc_unit02,loc_real02)
        call SetUnitY(loc_unit02,loc_real03)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,190+25,Condition(function Func0313))
        call ForGroup(loc_group01,function Func4002)
        set loc_unit03=FirstOfGroup(loc_group01)
        call Func0029(loc_group01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    set loc_unit03=null
    set loc_group02=null
    return false
endfunction

// 83292 ~ 83310
function Func4004 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local real loc_real03=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01,loc_real02)*bj_DEGTORAD
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0C2',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real03*bj_RADTODEG)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4003))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03)*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(133),(Func0030()))
    call Func0193(loc_unit01,'A1S9')
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 83312 ~ 83317
function Func4005 takes nothing returns boolean
    if GetSpellAbilityId()=='A1S4' then
        call Func4004()
    endif
    return false
endfunction

// 83319 ~ 83324
function Func4006 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4005))
    set loc_trigger01=null
endfunction
