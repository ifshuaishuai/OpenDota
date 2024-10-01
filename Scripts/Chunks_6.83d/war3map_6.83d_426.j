
// 55945 ~ 55957
function Func2498 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call Func0282(loc_unit02)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 55959 ~ 55993
function Func2499 takes nothing returns nothing
    local real loc_real01=real310
    local real loc_real02=real311
    local real loc_real03=real312
    local real loc_real04=real313
    local real loc_real05=GetUnitX(GetEnumUnit())
    local real loc_real06=GetUnitY(GetEnumUnit())
    local real loc_real07=((loc_real05-loc_real01)*(loc_real03-loc_real01)+(loc_real06-loc_real02)*(loc_real04-loc_real02))/((loc_real01-loc_real03)*(loc_real01-loc_real03)+(loc_real02-loc_real04)*(loc_real02-loc_real04))
    local real loc_real08=loc_real01+loc_real07*(loc_real03-loc_real01)
    local real loc_real09=loc_real02+loc_real07*(loc_real04-loc_real02)
    local real loc_real10=GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)*0.35/2
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02=GetUnitAbilityLevel(unit308,'A2ZH')
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
        call SetUnitPosition(GetEnumUnit(),loc_real08,loc_real09)
    else
        call SetUnitX(GetEnumUnit(),loc_real08)
        call SetUnitY(GetEnumUnit(),loc_real09)
    endif
    if loc_integer02>0 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call Func0281(GetEnumUnit())
        call TriggerRegisterTimerEvent(loc_trigger01,loc_integer02+3,false)
        call TriggerRegisterDeathEvent(loc_trigger01,GetEnumUnit())
        call TriggerAddCondition(loc_trigger01,Condition(function Func2498))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(unit308))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(GetEnumUnit()))
        set loc_trigger01=null
    endif
    call IssueTargetOrder(unit307,"slow",GetEnumUnit())
    call Func0115(unit308,GetEnumUnit(),1,loc_real10)
    call Func0115(unit308,GetEnumUnit(),2,loc_real10)
endfunction

// 55995 ~ 56045
function Func2500 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(282)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(283)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(341)))
    local integer loc_integer02=0
    local real loc_real04
    local real loc_real05
    local group loc_group01=Func0030()
    local group loc_group02=Func0030()
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1A1')
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer05='A1CE'
    if loc_integer03==0 then
        set loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2ZH')
        set loc_integer05='A2ZI'
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set unit124=loc_unit01
    set unit308=loc_unit01
    set unit307=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call Func0193(unit307,loc_integer05)
    call SetUnitAbilityLevel(unit307,loc_integer05,loc_integer03)
    loop
        exitwhen loc_integer02>loc_integer04
        set loc_real04=loc_real01+loc_integer02*200*Cos(loc_real03)
        set loc_real05=loc_real02+loc_integer02*200*Sin(loc_real03)
        call Func0163("Abilities\\Spells\\Orc\\EarthQuake\\EarthQuakeTarget.mdl",loc_real04,loc_real05,1.6)
        call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",loc_real04,loc_real05-250))
        call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",loc_real04,loc_real05))
        call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",loc_real04+250,loc_real05))
        call Func0180(loc_real04,loc_real05,300)
        call GroupEnumUnitsInRange(loc_group01,loc_real04,loc_real05,325,Condition(function Func0305))
        call GroupAddGroup(loc_group01,loc_group02)
        call GroupClear(loc_group01)
        set loc_integer02=loc_integer02+1
    endloop
    set real310=loc_real01
    set real311=loc_real02
    set real312=loc_real04
    set real313=loc_real05
    call ForGroup(loc_group02,function Func2499)
    call Func0029(loc_group02)
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 56047 ~ 56114
function Func2501 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(282)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(283)))
    local real loc_real04
    local real loc_real05
    local real loc_real06
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
    local ubersplat loc_ubersplat01
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    set loc_real17=loc_real02+200*loc_integer02*Cos(loc_real01)
    set loc_real18=loc_real03+200*loc_integer02*Sin(loc_real01)
    set loc_ubersplat01=CreateUbersplat(loc_real17,loc_real18,"THNE",255,255,255,255,false,false)
    call SetUbersplatRenderAlways(loc_ubersplat01,true)
    set loc_real05=loc_real17+250*Cos(bj_DEGTORAD*(loc_real01*bj_RADTODEG-45))
    set loc_real06=loc_real18+250*Sin(bj_DEGTORAD*(loc_real01*bj_RADTODEG-45))
    set loc_real07=loc_real17+250*Cos(bj_DEGTORAD*(loc_real01*bj_RADTODEG+45))
    set loc_real08=loc_real18+250*Sin(bj_DEGTORAD*(loc_real01*bj_RADTODEG+45))
    set loc_real09=loc_real17-125*Cos(bj_DEGTORAD*(loc_real01*bj_RADTODEG-45))
    set loc_real10=loc_real18-125*Sin(bj_DEGTORAD*(loc_real01*bj_RADTODEG-45))
    set loc_real11=loc_real17-125*Cos(bj_DEGTORAD*(loc_real01*bj_RADTODEG+45))
    set loc_real12=loc_real18-125*Sin(bj_DEGTORAD*(loc_real01*bj_RADTODEG+45))
    set loc_real13=loc_real17
    set loc_real14=loc_real18
    set loc_real15=loc_real17
    set loc_real16=loc_real18
    call Func0186(GetOwningPlayer(loc_unit01),4,loc_real17,loc_real18,500)
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",loc_real05,loc_real06))
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",loc_real07,loc_real08))
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",loc_real09,loc_real10))
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",loc_real11,loc_real12))
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",loc_real13,loc_real14))
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",loc_real15,loc_real16))
    if GetTriggerEvalCount(loc_trigger01)>loc_integer03 then
        set loc_real02=(LoadReal(hashtable001,(loc_integer01),(282)))
        set loc_real03=(LoadReal(hashtable001,(loc_integer01),(283)))
        set loc_real04=(LoadReal(hashtable001,(loc_integer01),(341)))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.5,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2500))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveReal(hashtable001,(loc_integer01),(282),((loc_real02)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(283),((loc_real03)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(341),((loc_real04)*1.0))
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 56116 ~ 56138
function Func2502 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=Atan2(loc_real02-GetUnitY(loc_unit01),loc_real01-GetUnitX(loc_unit01))
    local real loc_real04=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    local integer loc_integer02=11
    call TriggerRegisterTimerEvent(loc_trigger01,0.22,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2501))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(282),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(283),((GetUnitY(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(341),((loc_real03)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 56140 ~ 56145
function Func2503 takes nothing returns boolean
    if GetSpellAbilityId()=='A1A1' or GetSpellAbilityId()=='A2ZH' then
        call Func2502()
    endif
    return false
endfunction

// 56147 ~ 56152
function Func2504 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2503))
    set loc_trigger01=null
endfunction
