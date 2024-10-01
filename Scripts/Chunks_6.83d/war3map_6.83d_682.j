
// 73737 ~ 73772
function Func3516 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer array loc_integers01
    local integer loc_integer02=loc_integer01
    local integer loc_integer03=1
    local integer loc_integer04=0
    local integer loc_integer05
    if loc_integer01<1 then
        call UnitRemoveAbility(loc_unit01,integers170[0])
        call UnitRemoveAbility(loc_unit01,integers170[1])
        call UnitRemoveAbility(loc_unit01,integers170[2])
        call UnitRemoveAbility(loc_unit01,integers170[3])
        call UnitRemoveAbility(loc_unit01,integers170[4])
        call UnitRemoveAbility(loc_unit01,integers170[5])
        call UnitRemoveAbility(loc_unit01,integers170[6])
        call UnitRemoveAbility(loc_unit01,integers170[7])
        return
    endif
    loop
        exitwhen loc_integer03==0
        set loc_integer03=loc_integer02/2
        set loc_integers01[loc_integer04]=loc_integer02-loc_integer03*2
        set loc_integer02=loc_integer03
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer05=loc_integer04
    set loc_integer04=0
    loop
        exitwhen loc_integer04>loc_integer05
        if loc_integers01[loc_integer04]==1 then
            call Func0193(loc_unit01,integers170[loc_integer04])
        else
            call UnitRemoveAbility(loc_unit01,integers170[loc_integer04])
        endif
        set loc_integer04=loc_integer04+1
    endloop
endfunction

// 73774 ~ 73801
function Func3517 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        if GetTriggerUnit()==loc_unit01 then
            call Func3515(loc_unit01,0)
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(null))
        else
            call Func3516(loc_unit02,0)
            call SaveUnitHandle(hashtable001,(loc_integer01),(17),(null))
        endif
    else
        if loc_unit01!=null then
            call Func3515(loc_unit01,0)
        endif
        if loc_unit02!=null then
            call Func3516(loc_unit02,0)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 73803 ~ 73824
function Func3518 takes unit loc_unit01,unit loc_unit02,unit loc_unit03 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    if loc_unit03==null then
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    elseif loc_unit03==loc_unit02 then
        call Func3516(loc_unit02,0)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(null))
    else
        call Func3515(loc_unit01,0)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(null))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,18,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3517))
endfunction

// 73826 ~ 73864
function Func3519 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local lightning loc_lightning01=(LoadLightningHandle(hashtable001,(loc_integer01),(196)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    call MoveLightning(loc_lightning01,true,GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    call SetUnitX(loc_unit03,GetUnitX(loc_unit02))
    call SetUnitY(loc_unit03,GetUnitY(loc_unit02))
    if Func0149(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02))>700 or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call DestroyLightning(loc_lightning01)
        call KillUnit(loc_unit03)
        if GetTriggerEventId()==EVENT_UNIT_DEATH then
            call Func3518(loc_unit01,loc_unit02,GetTriggerUnit())
        else
            call Func3518(loc_unit01,loc_unit02,null)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif loc_integer03>160 then
        call DestroyLightning(loc_lightning01)
        call KillUnit(loc_unit03)
        call Func3518(loc_unit01,loc_unit02,null)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif ModuloInteger(loc_integer03,20)==0 or loc_integer03==1 then
        call Func3515(loc_unit01,(loc_integer02*7)*R2I(loc_integer03/20))
        call Func3516(loc_unit02,(loc_integer02*7)*R2I(loc_integer03/20))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_lightning01=null
    set loc_unit03=null
    return false
endfunction

// 73866 ~ 73880
function Func3520 takes unit loc_unit01,unit loc_unit02,lightning loc_lightning01,unit loc_unit03 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1DP')
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3519))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveLightningHandle(hashtable001,(loc_integer01),(196),(loc_lightning01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    set loc_trigger01=null
endfunction

// 73882 ~ 73923
function Func3521 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local lightning loc_lightning01=(LoadLightningHandle(hashtable001,(loc_integer01),(196)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(64)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(65)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(137)))
    local unit loc_unit03=null
    local group loc_group01=Func0030()
    set loc_real03=Func0126(loc_real03+25*Cos(loc_real05))
    set loc_real04=Func0129(loc_real04+25*Sin(loc_real05))
    call SaveReal(hashtable001,(loc_integer01),(64),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(65),((loc_real04)*1.0))
    call MoveLightning(loc_lightning01,true,loc_real01,loc_real02,loc_real03,loc_real04)
    call SetUnitX(loc_unit02,loc_real03)
    call SetUnitY(loc_unit02,loc_real04)
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real03,loc_real04,225,Condition(function Func0342))
    set loc_unit03=FirstOfGroup(loc_group01)
    call Func0029(loc_group01)
    if loc_unit03!=null then
        call Func3520(loc_unit01,loc_unit03,loc_lightning01,loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEvalCount(loc_trigger01)>25 or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call DestroyLightning(loc_lightning01)
        call KillUnit(loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_lightning01=null
    set loc_unit03=null
    set loc_group01=null
    set loc_unit02=null
    return false
endfunction

// 73925 ~ 73954
function Func3522 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    local location loc_location01
    local lightning loc_lightning01=AddLightning("CLSB",true,GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h088',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call SetLightningColor(loc_lightning01,0.3,0.5,1,1)
    if loc_unit02==null then
        set loc_location01=GetSpellTargetLoc()
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3521))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveLightningHandle(hashtable001,(loc_integer01),(196),(loc_lightning01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
        call SaveReal(hashtable001,(loc_integer01),(137),((Atan2(GetLocationY(loc_location01)-GetUnitY(loc_unit01),GetLocationX(loc_location01)-GetUnitX(loc_unit01)))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(64),((GetUnitX(loc_unit01))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(65),((GetUnitY(loc_unit01))*1.0))
        call RemoveLocation(loc_location01)
        set loc_location01=null
        set loc_trigger01=null
    else
        call Func3520(loc_unit01,loc_unit02,loc_lightning01,loc_unit03)
    endif
    set loc_unit02=null
endfunction

// 73956 ~ 73961
function Func3523 takes nothing returns boolean
    if GetSpellAbilityId()=='A1DP' and Func0028(GetSpellTargetUnit())==false then
        call Func3522()
    endif
    return false
endfunction

// 73963 ~ 73984
function Func3524 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3523))
    set loc_trigger01=null
    set integers169[0]='A1DV'
    set integers169[1]='A1DQ'
    set integers169[2]='A1DR'
    set integers169[3]='A1DS'
    set integers169[4]='A1DT'
    set integers169[5]='A1DU'
    set integers169[6]='A1DW'
    set integers169[7]='A1DX'
    set integers170[0]='A1E4'
    set integers170[1]='A1E3'
    set integers170[2]='A1E2'
    set integers170[3]='A1E1'
    set integers170[4]='A1E0'
    set integers170[5]='A1E5'
    set integers170[6]='A1DZ'
    set integers170[7]='A1DY'
endfunction
