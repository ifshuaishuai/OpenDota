
// 75481 ~ 75489
function Func3626 takes nothing returns boolean
    if(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit365))==true then
        if Func0147(unit366,GetFilterUnit())<real362 then
            set real362=Func0147(unit366,GetFilterUnit())
            set unit364=GetFilterUnit()
        endif
    endif
    return false
endfunction

// 75491 ~ 75502
function Func3627 takes unit loc_unit01,unit loc_unit02 returns unit
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set unit365=loc_unit01
    set unit364=null
    set real362=999999
    set unit366=loc_unit02
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),4000,Condition(function Func3626))
    call Func0029(loc_group01)
    set loc_group01=null
    return unit364
endfunction

// 75504 ~ 75642
function Func3628 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(550+50*loc_integer02)*0.02
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local real loc_real07
    local string loc_string01
    local group loc_group01
    if(GetTriggerEventId()==EVENT_WIDGET_DEATH and GetTriggerUnit()==loc_unit01)or GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER or Func0271(loc_unit01)or(LoadReal(hashtable001,(loc_integer01),(442)))<(TimerGetElapsed(timer001))then
        if(GetTriggerEventId()!=EVENT_UNIT_ISSUED_ORDER and GetTriggerEventId()!=EVENT_UNIT_ISSUED_POINT_ORDER and GetTriggerEventId()!=EVENT_UNIT_ISSUED_TARGET_ORDER)or((GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER)and Func3625(GetIssuedOrderId())==false)then
            call Func3623(loc_unit01)
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
            call UnitRemoveAbility(loc_unit02,'A24L')
            call UnitRemoveAbility(loc_unit02,'B0ED')
            call Func0029((LoadGroupHandle(hashtable001,(loc_integer01),(187))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call SetUnitTimeScale(loc_unit01,1)
            call KillUnit(loc_unit03)
            call SetUnitPathing(loc_unit01,true)
            call SetUnitVertexColor(loc_unit01,255,255,255,255)
            call UnitRemoveAbility(loc_unit01,'A179')
            call Func0180(GetUnitX(loc_unit01),GetUnitY(loc_unit01),200)
            if GetTriggerEventId()!=EVENT_WIDGET_DEATH then
                call ResetUnitAnimation(loc_unit01)
            endif
        endif
    elseif GetTriggerEventId()==EVENT_WIDGET_DEATH and GetTriggerUnit()==loc_unit02 then
        set loc_string01=""
        if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(loc_unit01))or Func0107(GetLocalPlayer())then
            set loc_string01="Abilities\\Spells\\Other\\HowlOfTerror\\HowlTarget.mdl"
        endif
        call UnitRemoveAbility(loc_unit02,'A24L')
        call UnitRemoveAbility(loc_unit02,'B0ED')
        set loc_unit02=Func3627(loc_unit01,loc_unit02)
        if loc_unit02!=null then
            call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget(loc_string01,loc_unit02,"overhead")))
            call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget(loc_string01,loc_unit02,"overhead")))
            call SaveReal(hashtable001,(loc_integer01),(442),(((TimerGetElapsed(timer001))+50)*1.0))
            call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        else
            call Func3623(loc_unit01)
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
            call UnitRemoveAbility(loc_unit02,'A24L')
            call UnitRemoveAbility(loc_unit02,'B0ED')
            call Func0029((LoadGroupHandle(hashtable001,(loc_integer01),(187))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call SetUnitTimeScale(loc_unit01,1)
            call KillUnit(loc_unit03)
            call SetUnitPathing(loc_unit01,true)
            call ResetUnitAnimation(loc_unit01)
            call SetUnitVertexColor(loc_unit01,255,255,255,255)
            call UnitRemoveAbility(loc_unit01,'A179')
            call SetUnitPosition(loc_unit01,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
            call Func0180(GetUnitX(loc_unit01),GetUnitY(loc_unit01),500)
        endif
    else
        set loc_real07=Func0149(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02))
        if loc_real07<100 then
            call Func3623(loc_unit01)
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
            call UnitRemoveAbility(loc_unit02,'A24L')
            call UnitRemoveAbility(loc_unit02,'B0ED')
            call Func0029((LoadGroupHandle(hashtable001,(loc_integer01),(187))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call SetUnitTimeScale(loc_unit01,1)
            call KillUnit(loc_unit03)
            set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
            call UnitAddAbility(loc_unit03,'A0GS')
            call SetUnitAbilityLevel(loc_unit03,'A0GS',loc_integer02)
            call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
            call SetUnitPathing(loc_unit01,true)
            call SetUnitVertexColor(loc_unit01,255,255,255,255)
            call UnitRemoveAbility(loc_unit01,'A179')
            call SetUnitPosition(loc_unit01,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
            call Func0180(GetUnitX(loc_unit01),GetUnitY(loc_unit01),200)
            set integer523=loc_integer02
            call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
        else
            if GetTriggerEvalCount(loc_trigger01)==1 then
                call DisableTrigger(loc_trigger01)
                call IssueImmediateOrder(loc_unit01,"holdposition")
                call EnableTrigger(loc_trigger01)
            endif
            if ModuloInteger(GetTriggerEvalCount(loc_trigger01),65)==0 then
                if GetUnitTypeId(loc_unit01)=='E02X' then
                    call SetUnitAnimationByIndex(loc_unit01,1)
                else
                    call SetUnitAnimationByIndex(loc_unit01,2)
                endif
            endif
            set loc_real06=Func0168(loc_unit01,loc_unit02)*bj_DEGTORAD
            call SetUnitFacing(loc_unit01,loc_real06*bj_RADTODEG)
            set loc_real04=loc_real02+loc_real01*Cos(loc_real06)
            set loc_real05=loc_real03+loc_real01*Sin(loc_real06)
            call SetUnitX(loc_unit01,loc_real04)
            call SetUnitY(loc_unit01,loc_real05)
            call SetUnitX(loc_unit03,GetUnitX(loc_unit02))
            call SetUnitY(loc_unit03,GetUnitY(loc_unit02))
            call SaveReal(hashtable001,(loc_integer01),(23),((loc_real04)*1.0))
            call SaveReal(hashtable001,(loc_integer01),(24),((loc_real05)*1.0))
            set group028=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
            set loc_group01=Func0030()
            set unit124=loc_unit01
            set unit365=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real04,loc_real05,325,Condition(function Func0305))
            set integer523=loc_integer02
            call ForGroup(loc_group01,function Func3624)
            call Func0029(loc_group01)
            set loc_group01=null
            if loc_real07<3000 and GetUnitAbilityLevel(loc_unit02,'A24L')==0 then
            endif
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 75644 ~ 75690
function Func3629 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'o00Q',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1P8')
    local string loc_string01=""
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1P8',false)
    call Func0193(loc_unit01,'A312')
    if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(loc_unit01))or Func0107(GetLocalPlayer())then
        set loc_string01="Abilities\\Spells\\Other\\HowlOfTerror\\HowlTarget.mdl"
        call PingMinimapEx(GetUnitX(loc_unit02),GetUnitY(loc_unit02),2,255,255,255,false)
    endif
    call IssueTargetOrder(loc_unit01,"move",loc_unit02)
    call SetUnitPathing(loc_unit01,false)
    if GetUnitTypeId(loc_unit01)=='E02X' then
        call SetUnitAnimationByIndex(loc_unit01,1)
    else
        call SetUnitAnimationByIndex(loc_unit01,2)
    endif
    call SetUnitTimeScale(loc_unit01,2.5)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A179',false)
    call SetUnitVertexColor(loc_unit01,255,255,255,100)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer01),(442),(((TimerGetElapsed(timer001))+50)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(23),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((GetUnitY(loc_unit01))*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget(loc_string01,loc_unit02,"overhead")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget(loc_string01,loc_unit02,"overhead")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(177),(AddSpecialEffectTarget("war3mapImported\\ShockwaveMissilePurple.mdx",loc_unit01,"origin")))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3628))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 75692 ~ 75697
function Func3630 takes nothing returns boolean
    if GetSpellAbilityId()=='A1P8' and Func0028(GetSpellTargetUnit())==false then
        call Func3629()
    endif
    return false
endfunction

// 75699 ~ 75705
function Func3631 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3630))
    set loc_trigger01=null
    call Func0132('A0X6')
endfunction
