
// 56279 ~ 56315
function Func2511 takes real loc_real01,real loc_real02,real loc_real03,real loc_real04,real loc_real05,real loc_real06 returns real
    local real loc_real07
    local real loc_real08
    local real loc_real09
    local real loc_real10
    local real loc_real11
    local real loc_real12
    local real loc_real13
    local real loc_real14
    local real loc_real15
    local real loc_real16
    local real loc_real17
    local real loc_real18
    local real loc_real19
    local real loc_real20
    local real loc_real21
    local real loc_real22
    local real loc_real23
    set loc_real18=loc_real03-loc_real05
    set loc_real19=loc_real04-loc_real06
    set loc_real20=-1*loc_real19
    set loc_real21=loc_real18
    set loc_real22=SquareRoot(loc_real20*loc_real20+loc_real21*loc_real21)
    set loc_real20=loc_real20/loc_real22
    set loc_real21=loc_real21/loc_real22
    set loc_real07=loc_real01-loc_real03
    set loc_real08=loc_real02-loc_real04
    set loc_real09=SquareRoot(loc_real07*loc_real07+loc_real08*loc_real08)
    set loc_real10=loc_real07/loc_real09
    set loc_real11=loc_real08/loc_real09
    set loc_real23=loc_real07*loc_real20+loc_real08*loc_real21
    set loc_real12=-1*loc_real01+2*loc_real03+2*loc_real20*loc_real23
    set loc_real13=-1*loc_real02+2*loc_real04+2*loc_real21*loc_real23
    set loc_real16=loc_real05+loc_real03-loc_real12
    set loc_real17=loc_real06+loc_real04-loc_real13
    return loc_real17
endfunction

// 56317 ~ 56448
function Func2512 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(335)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(282)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(283)))
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=GetUnitX(loc_unit02)
    local real loc_real06=GetUnitY(loc_unit02)
    local real loc_real07
    local real loc_real08
    local real loc_real09
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local group loc_group02
    local real loc_real10
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1A8')
    local real loc_real11=(LoadReal(hashtable001,(loc_integer01),(342)))
    local real loc_real12=(TimerGetElapsed(timer001))
    call SetUnitX(loc_unit03,GetUnitX(loc_unit02))
    call SetUnitY(loc_unit03,GetUnitY(loc_unit02))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call ShowUnit(loc_unit02,false)
        call KillUnit(loc_unit02)
        call KillUnit(loc_unit03)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4270)),(2))
        if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A1A8' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1A8',true)
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2NI',false)
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A2NI' then
            call IssueImmediateOrder(loc_unit02,"stop")
            call SaveBoolean(hashtable001,(loc_integer01),(249),(true))
            call SetUnitAnimationByIndex(loc_unit02,3)
            call Func2506(GetTriggerUnit())
        elseif GetSpellAbilityId()=='A2LK' then
            if IssueImmediateOrder(loc_unit01,"charm")then
                call UnitRemoveAbility(loc_unit02,'A2LK')
            endif
        endif
    elseif Func0149(loc_real03,loc_real04,loc_real05,loc_real06)<100 then
        call Func2508(loc_unit01,loc_unit02,loc_unit03,(LoadInteger(hashtable001,(loc_integer01),(344))),(LoadInteger(hashtable001,(loc_integer01),(345))))
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A1A8' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1A8',true)
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2NI',false)
    elseif GetTriggerEvalCount(loc_trigger01)>400 or(LoadBoolean(hashtable001,(loc_integer01),(249)))==true then
        call Func0193(loc_unit02,'Aloc')
        if GetTriggerEvalCount(loc_trigger01)==401 and(LoadBoolean(hashtable001,(loc_integer01),(249)))==false then
            call IssueImmediateOrder(loc_unit02,"stop")
            call SetUnitAnimationByIndex(loc_unit02,3)
        endif
        set loc_group02=Func0030()
        set integer486=loc_integer02
        set integer487=(LoadInteger(hashtable001,(loc_integer01),(344)))
        set integer488=(LoadInteger(hashtable001,(loc_integer01),(345)))
        set real314=30+30*loc_integer02
        set unit309=loc_unit01
        set unit124=loc_unit01
        set group014=loc_group01
        call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit02),GetUnitY(loc_unit02),300,Condition(function Func0305))
        call ForGroup(loc_group02,function Func2509)
        call Func0029(loc_group02)
        set loc_group02=null
        call SaveInteger(hashtable001,(loc_integer01),(344),(integer487))
        call SaveInteger(hashtable001,(loc_integer01),(345),(integer488))
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4269))))==1)==false then
            set loc_real09=Atan2(loc_real04-loc_real06,loc_real03-loc_real05)
            call SetUnitFacing(loc_unit02,loc_real09*bj_RADTODEG)
            set loc_real07=GetUnitX(loc_unit02)+12*Cos(loc_real09)
            set loc_real08=GetUnitY(loc_unit02)+12*Sin(loc_real09)
            call SetUnitX(loc_unit02,Func0126(loc_real07))
            call SetUnitY(loc_unit02,Func0129(loc_real08))
            call SaveReal(hashtable001,(loc_integer01),(282),((loc_real03)*1.0))
            call SaveReal(hashtable001,(loc_integer01),(283),((loc_real04)*1.0))
        endif
    else
        call SetUnitMoveSpeed(loc_unit02,GetUnitMoveSpeed(loc_unit01))
        call UnitRemoveAbility(loc_unit02,'Aloc')
        set loc_group02=Func0030()
        set integer486=loc_integer02
        set integer487=(LoadInteger(hashtable001,(loc_integer01),(344)))
        set integer488=(LoadInteger(hashtable001,(loc_integer01),(345)))
        set real314=30+30*loc_integer02
        set unit309=loc_unit01
        set unit124=loc_unit01
        set group014=loc_group01
        call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit02),GetUnitY(loc_unit02),300,Condition(function Func0305))
        call ForGroup(loc_group02,function Func2509)
        call Func0029(loc_group02)
        set loc_group02=null
        call SaveInteger(hashtable001,(loc_integer01),(344),(integer487))
        call SaveInteger(hashtable001,(loc_integer01),(345),(integer488))
        if loc_real01!=loc_real03 or loc_real02!=loc_real04 then
            set loc_real11=loc_real12
            call SaveReal(hashtable001,(loc_integer01),(342),((loc_real11)*1.0))
        endif
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4269))))==1)==false then
            if loc_real11==loc_real12 then
                set loc_real07=Func2510(loc_real01,loc_real02,loc_real03,loc_real04,loc_real05,loc_real06)
                set loc_real08=Func2511(loc_real01,loc_real02,loc_real03,loc_real04,loc_real05,loc_real06)
                set loc_real09=Atan2(loc_real08-loc_real06,loc_real07-loc_real05)*bj_RADTODEG
                call SaveReal(hashtable001,(loc_integer01),(282),((loc_real03)*1.0))
                call SaveReal(hashtable001,(loc_integer01),(283),((loc_real04)*1.0))
            endif
            if(loc_real11+0.3)<loc_real12 then
                call SaveInteger(hashtable001,(loc_integer01),(343),(1))
            elseif(loc_real11+0.3)>loc_real12 and(LoadInteger(hashtable001,(loc_integer01),(343)))==1 then
                call SaveInteger(hashtable001,(loc_integer01),(343),(2))
            elseif(LoadInteger(hashtable001,(loc_integer01),(343)))==3 then
                call SaveInteger(hashtable001,(loc_integer01),(343),(1))
            endif
        else
            call SaveInteger(hashtable001,(loc_integer01),(343),(3))
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    set loc_unit03=null
    return false
endfunction

// 56450 ~ 56502
function Func2513 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real03=GetLocationX(loc_location01)
    local real loc_real04=GetLocationY(loc_location01)
    local real loc_real05=Atan2(loc_real04-loc_real02,loc_real03-loc_real01)
    local real loc_real06=Func0142(Func0149(loc_real01,loc_real02,loc_real03,loc_real04),300)
    local real loc_real07=Func0126(loc_real01+loc_real06*Cos(loc_real05))
    local real loc_real08=Func0129(loc_real02+loc_real06*Sin(loc_real05))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h07U',loc_real07,loc_real08,(loc_real05*bj_RADTODEG)-180)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'o02D',loc_real07,loc_real08,(loc_real05*bj_RADTODEG)-180)
    call SetUnitMoveSpeed(loc_unit02,GetUnitMoveSpeed(loc_unit01))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",loc_unit02,"chest"))
    if GetUnitAbilityLevel(loc_unit01,'A1CD')>0 then
        call Func0193(loc_unit02,'A1CQ')
    endif
    if GetUnitAbilityLevel(loc_unit01,'A1AA')==0 then
        call UnitRemoveAbility(loc_unit02,'A2LK')
    endif
    call UnitAddAbility(loc_unit01,'A2NI')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1A8',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2NI',true)
    call RemoveLocation(loc_location01)
    set units025[GetPlayerId(GetOwningPlayer(loc_unit01))]=loc_unit02
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4270)),(1))
    call Func0193(loc_unit02,'Avul')
    call Func0193(loc_unit02,'Aetl')
    if(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(339)))==true then
        call TriggerEvaluate((LoadTriggerHandle(hashtable001,(loc_integer01),(338))))
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2512))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(335),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call SaveReal(hashtable001,(loc_integer01),(282),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(283),((loc_real02)*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call SaveInteger(hashtable001,(loc_integer01),(343),(2))
    call SaveReal(hashtable001,(loc_integer01),(342),(((TimerGetElapsed(timer001))-5)*1.0))
    call SaveBoolean(hashtable001,(loc_integer01),(249),(false))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 56504 ~ 56509
function Func2514 takes nothing returns boolean
    if GetSpellAbilityId()=='A1A8' then
        call Func2513()
    endif
    return false
endfunction

// 56511 ~ 56517
function Func2515 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2514))
    call Func0132('A1G9')
    set loc_trigger01=null
endfunction
