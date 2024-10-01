
// 59473 ~ 59483
function Func2713 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    if(LoadLightningHandle(hashtable001,(loc_integer01),(196)))!=null then
        call DestroyLightning((LoadLightningHandle(hashtable001,(loc_integer01),(196))))
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 59485 ~ 59563
function Func2714 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(248)))
    local real loc_real02=Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real03=GetUnitX(loc_unit01)+50*Cos(loc_real02)
    local real loc_real04=GetUnitY(loc_unit01)+50*Sin(loc_real02)
    local unit loc_unit03
    local destructable loc_destructable01
    local lightning loc_lightning01
    local unit loc_unit04
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(249)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit01)
    else
        call SetUnitX(loc_unit01,loc_real03)
        call SetUnitY(loc_unit01,loc_real04)
        call SetUnitFacing(loc_unit01,loc_real02*bj_RADTODEG)
        if Func0149(loc_real03,loc_real04,GetUnitX(loc_unit02),GetUnitY(loc_unit02))<45 then
            set real326=(LoadReal(hashtable001,(loc_integer01),(6)))
            set real327=(LoadReal(hashtable001,(loc_integer01),(7)))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            if GetUnitTypeId(loc_unit02)!='n00L' and loc_boolean01 then
                set loc_unit03=Func2712(loc_unit01,loc_unit02,loc_real01)
                set loc_destructable01=Func2710(loc_unit01,loc_unit02,loc_real01)
                if loc_unit03!=null then
                    set loc_trigger01=CreateTrigger()
                    set loc_integer01=GetHandleId(loc_trigger01)
                    set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
                    call Func0193(loc_unit04,'A12I')
                    call SetUnitAbilityLevel(loc_unit04,'A12I',loc_integer02+1)
                    call IssueTargetOrder(loc_unit04,"thunderbolt",loc_unit02)
                    set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit03),GetUnitY(loc_unit03),0)
                    call Func0193(loc_unit04,'A12I')
                    call SetUnitAbilityLevel(loc_unit04,'A12I',loc_integer02+1)
                    call IssueTargetOrder(loc_unit04,"thunderbolt",loc_unit03)
                    call TriggerRegisterTimerEvent(loc_trigger01,0.25+loc_integer02*0.75,false)
                    call TriggerAddCondition(loc_trigger01,Condition(function Func2713))
                    set loc_lightning01=AddLightning("MFPB",true,GetUnitX(loc_unit02),GetUnitY(loc_unit02),GetUnitX(loc_unit03),GetUnitY(loc_unit03))
                    call SetLightningColor(loc_lightning01,0.5,0.5,1,1)
                    call SaveLightningHandle(hashtable001,(loc_integer01),(196),(loc_lightning01))
                elseif loc_destructable01!=null then
                    set loc_trigger01=CreateTrigger()
                    set loc_integer01=GetHandleId(loc_trigger01)
                    set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
                    call Func0193(loc_unit04,'A12I')
                    call SetUnitAbilityLevel(loc_unit04,'A12I',loc_integer02+1)
                    call IssueTargetOrder(loc_unit04,"thunderbolt",loc_unit02)
                    call TriggerRegisterTimerEvent(loc_trigger01,0.25+loc_integer02*0.75,false)
                    call TriggerAddCondition(loc_trigger01,Condition(function Func2713))
                    set loc_lightning01=AddLightning("MFPB",true,GetUnitX(loc_unit02),GetUnitY(loc_unit02),GetDestructableX(loc_destructable01),GetDestructableY(loc_destructable01))
                    call SetLightningColor(loc_lightning01,0.5,0.5,1,1)
                    call SaveLightningHandle(hashtable001,(loc_integer01),(196),(loc_lightning01))
                    call SetDestructableAnimation(loc_destructable01,"stand hit")
                else
                    set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
                    call Func0193(loc_unit04,'A12I')
                    call SetUnitAbilityLevel(loc_unit04,'A12I',1)
                    call IssueTargetOrder(loc_unit04,"thunderbolt",loc_unit02)
                endif
            endif
            call KillUnit(loc_unit01)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_lightning01=null
    set loc_unit03=null
    set loc_destructable01=null
    set loc_unit04=null
    return false
endfunction

// 59565 ~ 59587
function Func2715 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01=Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01))
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h077',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01*bj_RADTODEG)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A12J')
    local boolean loc_boolean01=Func0028(GetSpellTargetUnit())==false
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer01),(248),((loc_real01)*1.0))
    call SaveBoolean(hashtable001,(loc_integer01),(249),(loc_boolean01))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.033,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2714))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 59589 ~ 59594
function Func2716 takes nothing returns boolean
    if GetSpellAbilityId()=='A12J' then
        call Func2715()
    endif
    return false
endfunction

// 59596 ~ 59601
function Func2717 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2716))
    set loc_trigger01=null
endfunction
