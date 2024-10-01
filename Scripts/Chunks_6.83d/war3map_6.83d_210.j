
// 41845 ~ 41851
function Func1631 takes nothing returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(unit262),GetUnitY(unit262),1000,Condition(function Func0349))
    set unit266=GroupPickRandomUnit(loc_group01)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 41853 ~ 41946
function Func1632 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local real loc_real07
    local real loc_real08
    local integer loc_integer02=GetRandomInt(0,2)
    if GetTriggerEvalCount(loc_trigger01)==1 then
        call Func1631()
        if unit266==null then
            call RemoveUnit(unit262)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            return false
        endif
        call Func1620(GetObjectName(('n0NA')))
        call SaveEffectHandle(hashtable001,(GetHandleId(loc_trigger01)),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\InnerFire\\InnerFireTarget.mdl",unit266,"overhead")))
        if loc_integer02==0 then
            set loc_real01=real267
            set loc_real02=real268
            set loc_real03=real269
            set loc_real04=real270
            set loc_real05=real271
            set loc_real06=real272
            set loc_real07=real273
            set loc_real08=real274
        elseif loc_integer02==1 then
            set loc_real01=real271
            set loc_real02=real272
            set loc_real03=real267
            set loc_real04=real268
            set loc_real05=real269
            set loc_real06=real270
            set loc_real07=real273
            set loc_real08=real274
        elseif loc_integer02==2 then
            set loc_real01=real269
            set loc_real02=real270
            set loc_real03=real273
            set loc_real04=real274
            set loc_real05=real271
            set loc_real06=real272
            set loc_real07=real267
            set loc_real08=real268
        endif
        call ClearSelection()
        call SetUnitPosition(unit262,loc_real01,loc_real02)
        set unit263=CreateUnit(GetOwningPlayer(unit262),'H0ES',loc_real03,loc_real04,GetUnitFacing(unit262))
        set unit264=CreateUnit(GetOwningPlayer(unit262),'H0ES',loc_real05,loc_real06,GetUnitFacing(unit262))
        set unit265=CreateUnit(GetOwningPlayer(unit262),'H0ES',loc_real07,loc_real08,GetUnitFacing(unit262))
        call IssueImmediateOrder(unit266,"holdposition")
        call SetUnitVertexColor(unit263,220,255,255,255)
        call SetUnitVertexColor(unit264,220,255,255,255)
        call SetUnitVertexColor(unit265,220,255,255,255)
        call TriggerRegisterUnitEvent(loc_trigger01,unit262,EVENT_UNIT_DAMAGED)
        call TriggerRegisterUnitEvent(loc_trigger01,unit263,EVENT_UNIT_DAMAGED)
        call TriggerRegisterUnitEvent(loc_trigger01,unit264,EVENT_UNIT_DAMAGED)
        call TriggerRegisterUnitEvent(loc_trigger01,unit265,EVENT_UNIT_DAMAGED)
        call PauseUnit(unit262,true)
        call SetUnitInvulnerable(unit262,false)
        call PauseUnit(unit263,true)
        call PauseUnit(unit264,true)
        call PauseUnit(unit265,true)
        call SetHeroLevel(unit263,25,false)
        call SetHeroLevel(unit264,25,false)
        call SetHeroLevel(unit265,25,false)
        if boolean135 then
            call SetUnitVertexColor(unit262,0,255,255,255)
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED and GetEventDamage()>0 and GetEventDamageSource()==unit266 then
        call PauseUnit(unit262,false)
        call PauseUnit(unit263,false)
        call PauseUnit(unit264,false)
        call PauseUnit(unit265,false)
        call RemoveUnit(unit263)
        call RemoveUnit(unit264)
        call RemoveUnit(unit265)
        if GetTriggerUnit()==unit262 then
            call Func1629()
        else
            call Func1630()
        endif
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    return false
endfunction

// 41948 ~ 41954
function Func1633 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func1620(GetObjectName(('n0NB')))
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1632))
    set loc_trigger01=null
endfunction

// 41956 ~ 41963
function Func1634 takes nothing returns nothing
    call Func1620(GetObjectName(('n0NC')))
    if boolean135 then
        call Func1633()
    else
        call RemoveUnit(unit262)
    endif
endfunction

// 41965 ~ 42021
function Func1635 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real01=2897
    local real loc_real02=-2814
    local real loc_real03=GetUnitX(unit262)
    local real loc_real04=GetUnitY(unit262)
    local real loc_real05
    local real loc_real06
    local real loc_real07
    local real loc_real08
    local real loc_real09
    local real loc_real10
    local location loc_location01
    local real loc_real11=Func0149(real265,real266,2897,-2814)
    local real loc_real12=loc_real11/200
    local real loc_real13=0.1
    if Func0149(GetUnitX(unit266),GetUnitY(unit266),2897,-2814)<100 then
        call Func1633()
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call SetUnitAnimationByIndex(unit262,0)
        call SetUnitFlyHeight(unit262,GetUnitDefaultFlyHeight(unit262),0)
        call SetUnitPosition(unit262,2897,-2814)
        call PauseUnit(unit262,false)
        call SetUnitPathing(unit262,true)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_trigger01=null
        return false
    endif
    set loc_real05=Func0169(loc_real03,loc_real04,loc_real01,loc_real02)
    set loc_real08=(loc_integer02-100)*(loc_integer02-100)*loc_real13
    set loc_real09=loc_real03+loc_real12*Cos(loc_real05*bj_DEGTORAD)
    set loc_real10=loc_real04+loc_real12*Sin(loc_real05*bj_DEGTORAD)
    if loc_integer02<201 then
        call SetUnitFlyHeight(unit262,10000*loc_real13-loc_real08,0)
        call SetUnitPosition(unit262,loc_real09,loc_real10)
    else
        call SetUnitFlyHeight(unit262,GetUnitDefaultFlyHeight(unit262),0)
        call PauseUnit(unit262,false)
        call SetUnitPathing(unit262,true)
        set loc_location01=Location(loc_real09,loc_real10)
        call TerrainDeformationRippleBJ(0.2,true,loc_location01,1.00,300.00,96.00,1,64.00)
        call RemoveLocation(loc_location01)
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl",GetUnitX(unit262),GetUnitY(unit262)))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call SetUnitAnimationByIndex(unit262,0)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func1634()
    endif
    set loc_trigger01=null
    return false
endfunction

// 42023 ~ 42042
function Func1636 takes effect loc_effect01,effect loc_effect02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01
    call SetUnitPosition(unit262,real265,real266)
    set loc_unit01=CreateUnit(GetOwningPlayer(unit262),'e00E',GetUnitX(unit262),GetUnitY(unit262),0)
    call SetUnitPosition(unit266,GetUnitX(unit262)+50,GetUnitY(unit262)+50)
    call PauseUnit(unit262,false)
    call PauseUnit(unit266,false)
    call Func0193(unit262,'Amrf')
    call UnitRemoveAbility(unit262,'Amrf')
    call Func0193(loc_unit01,'A2VY')
    call IssueTargetOrder(loc_unit01,"ensnare",unit266)
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1635))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(loc_effect01))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(loc_effect02))
    set loc_trigger01=null
    set loc_unit01=null
endfunction
