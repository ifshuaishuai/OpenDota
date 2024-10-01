
// 20757 ~ 20815
function Func0800 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(448)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(447)))
    local ubersplat loc_ubersplat01=(LoadUbersplatHandle(hashtable001,(loc_integer01),(131)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(57)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(442)))
    local integer loc_integer03=GetPlayerId(GetOwningPlayer(loc_unit01))
    local boolean loc_boolean01=false
    local integer loc_integer04=0
    local integer loc_integer05
    if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
        if GetSpellAbilityId()=='A1R5' then
            set loc_boolean01=true
        endif
    else
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
        if loc_integer02==1 then
            if loc_real03>3 then
                call SetUnitAnimationByIndex(loc_unit02,1)
                call SetUnitAnimationByIndex(loc_unit03,1)
            endif
        elseif loc_integer02==2 then
            set loc_boolean01=true
        else
        endif
    endif
    if loc_boolean01 then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4256)),(2))
        call KillUnit(loc_unit02)
        call KillUnit(loc_unit03)
        call DestroyUbersplat(loc_ubersplat01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if loc_integer02==2 then
            call DestroyEffect(AddSpecialEffect(Func0792(loc_integer03),GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
            call DestroyEffect(AddSpecialEffect(Func0791(loc_integer03),loc_real01,loc_real02))
            call SetUnitX(loc_unit01,loc_real01)
            call SetUnitY(loc_unit01,loc_real02)
            call PauseUnit(loc_unit01,true)
            call PauseUnit(loc_unit01,false)
            call Func0180(loc_real01,loc_real02,240)
            set unit124=loc_unit01
            call ExecuteFunc("Func4057")
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_ubersplat01=null
    return false
endfunction

// 20817 ~ 20886
function Func0801 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(448)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(447)))
    local ubersplat loc_ubersplat01=(LoadUbersplatHandle(hashtable001,(loc_integer01),(131)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(57)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(442)))
    local integer loc_integer03=GetPlayerId(GetOwningPlayer(loc_unit01))
    local boolean loc_boolean01=false
    local integer loc_integer04=0
    local integer loc_integer05
    if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
        if GetSpellAbilityId()=='A231' then
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4256)),(2))
            call KillUnit(loc_unit03)
            call KillUnit(loc_unit04)
            call DestroyUbersplat(loc_ubersplat01)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call UnitRemoveType(loc_unit02,UNIT_TYPE_PEON)
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_DEATH then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
        call UnitRemoveType(loc_unit02,UNIT_TYPE_PEON)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4256)),(2))
        call KillUnit(loc_unit03)
        call KillUnit(loc_unit04)
        call DestroyUbersplat(loc_ubersplat01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4256)),(2))
        call KillUnit(loc_unit03)
        call KillUnit(loc_unit04)
        call DestroyUbersplat(loc_ubersplat01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveType(loc_unit02,UNIT_TYPE_PEON)
        call Func0180(GetUnitX(loc_unit02)-1,GetUnitY(loc_unit02)-1,240)
        call SetUnitX(loc_unit01,GetUnitX(loc_unit02)-1)
        call SetUnitY(loc_unit01,GetUnitY(loc_unit02)-1)
        call PauseUnit(loc_unit01,true)
        call PauseUnit(loc_unit01,false)
        set unit124=loc_unit01
        call ExecuteFunc("Func4057")
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_ubersplat01=null
    set loc_unit02=null
    return false
endfunction

// 20888 ~ 20984
function Func0802 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local location loc_location01
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit03
    local unit loc_unit04
    local ubersplat loc_ubersplat01
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(loc_unit01))
    local integer loc_integer03
    local real loc_real04
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4256)),(1))
    if loc_unit02==null then
        set loc_location01=GetSpellTargetLoc()
        set loc_real01=GetLocationX(loc_location01)
        set loc_real02=GetLocationY(loc_location01)
        if loc_real01==reals011[loc_integer02]and loc_real02==reals012[loc_integer02]then
            if Func0056(GetOwningPlayer(loc_unit01))then
                set loc_real01=GetUnitX(unit130)
                set loc_real02=GetUnitY(unit130)
            else
                set loc_real01=GetUnitX(unit174)
                set loc_real02=GetUnitY(unit174)
            endif
        endif
        set loc_unit02=Func0794(loc_unit01,loc_real01,loc_real02)
        call RemoveLocation(loc_location01)
    else
        set loc_real01=GetUnitX(loc_unit02)
        set loc_real02=GetUnitY(loc_unit02)
    endif
    if Func0149(loc_real01,loc_real02,GetUnitX(loc_unit02),GetUnitY(loc_unit02))>real202 then
        set loc_real03=Atan2(loc_real02-GetUnitY(loc_unit02),loc_real01-GetUnitX(loc_unit02))
        set loc_real01=GetUnitX(loc_unit02)+real202*Cos(loc_real03)
        set loc_real02=GetUnitY(loc_unit02)+real202*Sin(loc_real03)
    elseif Func0149(loc_real01,loc_real02,GetUnitX(loc_unit02),GetUnitY(loc_unit02))<50 then
        set loc_real03=Atan2(loc_real02-GetUnitY(loc_unit02),loc_real01-GetUnitX(loc_unit02))
        set loc_real01=GetUnitX(loc_unit02)+120*Cos(loc_real03)
        set loc_real02=GetUnitY(loc_unit02)+120*Sin(loc_real03)
    endif
    if IsPointInRegion(region006,loc_real01,loc_real02)==true then
        set loc_real03=Atan2(loc_real02-GetUnitY(loc_unit02),loc_real01-GetUnitX(loc_unit02))
        set loc_real01=GetUnitX(loc_unit02)+200*Cos(loc_real03)
        set loc_real02=GetUnitY(loc_unit02)+200*Sin(loc_real03)
    endif
    set loc_real01=Func0126(loc_real01)
    set loc_real02=Func0129(loc_real02)
    if(IsUnitAlly(loc_unit01,GetLocalPlayer())and GetLocalPlayer()!=GetOwningPlayer(loc_unit01))or(boolean025 and(GetLocalPlayer()==player009 or GetLocalPlayer()==player010))then
        call PingMinimapEx(loc_real01,loc_real02,3,255,255,255,false)
    endif
    set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),Func0789(loc_integer02),loc_real01,loc_real02,0)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),Func0790(loc_integer02),GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    set loc_ubersplat01=CreateUbersplat(GetUnitX(loc_unit01),GetUnitY(loc_unit01),"SCTP",255,255,255,255,false,false)
    if IsUnitVisible(loc_unit01,GetLocalPlayer())==true then
        call SetUbersplatRenderAlways(loc_ubersplat01,true)
    else
        call SetUbersplatRenderAlways(loc_ubersplat01,false)
    endif
    set loc_integer03=Func0788(GetPlayerId(GetOwningPlayer(loc_unit01)),loc_real01,loc_real02)
    set loc_real04=3
    if loc_integer03>0 then
        set loc_real04=4.5+0.5*loc_integer03
    endif
    call Func0787(GetPlayerId(GetOwningPlayer(loc_unit01)),loc_real01,loc_real02)
    if loc_integer03>0 then
        call SetUnitAnimationByIndex(loc_unit03,2)
        call SetUnitAnimationByIndex(loc_unit04,2)
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real04-3,false)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real04,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0800))
    call Func0186(GetOwningPlayer(loc_unit01),loc_real04,loc_real01,loc_real02,200)
    call SaveUnitHandle(hashtable001,(loc_integer01),(447),(loc_unit04))
    call SaveUnitHandle(hashtable001,(loc_integer01),(448),(loc_unit03))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(442),(((TimerGetElapsed(timer001)))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(57),((loc_real04)*1.0))
    call SaveUbersplatHandle(hashtable001,(loc_integer01),(131),(loc_ubersplat01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call Func0231(loc_unit01,sound063,loc_real01,loc_real02,2400)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_location01=null
    set loc_trigger01=null
    set loc_ubersplat01=null
endfunction

// 20986 ~ 21057
function Func0803 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local location loc_location01
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit03
    local unit loc_unit04
    local ubersplat loc_ubersplat01
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(loc_unit01))
    local integer loc_integer03
    local real loc_real04
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    if loc_unit02==null then
        set loc_location01=GetSpellTargetLoc()
        set loc_real01=GetLocationX(loc_location01)
        set loc_real02=GetLocationY(loc_location01)
        if loc_real01==reals011[loc_integer02]and loc_real02==reals012[loc_integer02]then
            if Func0056(GetOwningPlayer(loc_unit01))then
                set loc_real01=GetUnitX(unit130)
                set loc_real02=GetUnitY(unit130)
            else
                set loc_real01=GetUnitX(unit174)
                set loc_real02=GetUnitY(unit174)
            endif
        endif
        set loc_unit02=Func0799(loc_unit01,loc_real01,loc_real02)
        call RemoveLocation(loc_location01)
    endif
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4256)),(1))
    set loc_real01=GetUnitX(loc_unit02)
    set loc_real02=GetUnitY(loc_unit02)
    if(IsUnitAlly(loc_unit01,GetLocalPlayer())and GetLocalPlayer()!=GetOwningPlayer(loc_unit01))or(boolean025 and(GetLocalPlayer()==player009 or GetLocalPlayer()==player010))then
        call PingMinimapEx(loc_real01,loc_real02,3,255,255,255,false)
    endif
    set loc_ubersplat01=CreateUbersplat(GetUnitX(loc_unit01),GetUnitY(loc_unit01),"SCTP",255,255,255,255,false,false)
    if IsUnitVisible(loc_unit01,GetLocalPlayer())==true then
        call SetUbersplatRenderAlways(loc_ubersplat01,true)
    else
        call SetUbersplatRenderAlways(loc_ubersplat01,false)
    endif
    set loc_real04=3
    call UnitAddType(loc_unit02,UNIT_TYPE_PEON)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real04,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0801))
    call Func0186(GetOwningPlayer(loc_unit01),loc_real04,loc_real01,loc_real02,200)
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(442),(((TimerGetElapsed(timer001)))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(57),((loc_real04)*1.0))
    call SaveUbersplatHandle(hashtable001,(loc_integer01),(131),(loc_ubersplat01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTo.mdl",loc_unit01,"origin")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl",loc_unit01,"origin")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(177),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTo.mdl",loc_unit02,"origin")))
    call Func0231(loc_unit01,sound063,loc_real01,loc_real02,2400)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_location01=null
    set loc_trigger01=null
    set loc_ubersplat01=null
endfunction

// 21059 ~ 21066
function Func0804 takes nothing returns nothing
    if GetSpellAbilityId()=='A1R5' and Func0096(GetTriggerUnit())==false then
        call Func0802()
    endif
    if GetSpellAbilityId()=='A231' then
        call Func0803()
    endif
endfunction

// 21068 ~ 21072
function Func0805 takes nothing returns nothing
    if integer403==(LoadInteger(hashtable001,(GetHandleId(GetEnumUnit())),(784)))then
        call KillUnit(GetEnumUnit())
    endif
endfunction
