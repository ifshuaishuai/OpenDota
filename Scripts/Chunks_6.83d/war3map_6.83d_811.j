
// 84617 ~ 84622
function Func4073 takes nothing returns nothing
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==false then
        call Func0115(unit390,GetEnumUnit(),1,real388)
    else
    endif
endfunction

// 84624 ~ 84638
function Func4074 takes unit loc_unit01,unit loc_unit02 returns nothing
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set real388=25*integer534
    set unit390=loc_unit01
    set unit391=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),325,Condition(function Func0325))
    call Func0193(unit391,'A1TO')
    call ForGroup(loc_group01,function Func4073)
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathMissile.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    call KillUnit(loc_unit02)
    call Func0029(loc_group01)
    call UnitApplyTimedLife(CreateUnit(GetOwningPlayer(loc_unit01),'o00Q',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0),'BTLF',2)
    set loc_group01=null
endfunction

// 84640 ~ 84873
function Func4075 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(393)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(394)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(395)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(396)))
    local unit loc_unit06=(LoadUnitHandle(hashtable001,(loc_integer01),(397)))
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(138)))
    local real loc_real05=GetUnitX(loc_unit01)
    local real loc_real06=GetUnitY(loc_unit01)
    local real loc_real07
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real08
    local group loc_group01
    local integer loc_integer03=0
    local real loc_real09=2.25
    local real loc_real10
    if Func0194(loc_unit02)==false then
        set loc_integer03=loc_integer03+1
    endif
    if Func0194(loc_unit03)==false then
        set loc_integer03=loc_integer03+1
    endif
    if Func0194(loc_unit04)==false then
        set loc_integer03=loc_integer03+1
    endif
    if Func0194(loc_unit05)==false then
        set loc_integer03=loc_integer03+1
    endif
    if Func0194(loc_unit06)==false then
        set loc_integer03=loc_integer03+1
    endif
    if loc_integer03==5 then
        set loc_real09=2.25
    elseif loc_integer03==4 then
        set loc_real09=2.1
    elseif loc_integer03==3 then
        set loc_real09=1.95
    elseif loc_integer03==2 then
        set loc_real09=1.8
    elseif loc_integer03==1 then
        set loc_real09=1.65
    endif
    set loc_real07=-1*360*0.02/loc_real09
    set loc_real10=(LoadReal(hashtable001,(loc_integer01),(137)))+loc_real07
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real10)*1.0))
    set integer534=GetUnitAbilityLevel(loc_unit01,'A1T8')
    set unit390=loc_unit01
    if loc_integer02==50 then
        call ShowUnit(loc_unit03,true)
        call SaveBoolean(hashtable001,(loc_integer01),(512),(true))
        call Func0193(loc_unit03,'Aloc')
    endif
    if loc_integer02==100 then
        call ShowUnit(loc_unit04,true)
        call SaveBoolean(hashtable001,(loc_integer01),(513),(true))
        call Func0193(loc_unit04,'Aloc')
    endif
    if loc_integer02==150 then
        call ShowUnit(loc_unit05,true)
        call SaveBoolean(hashtable001,(loc_integer01),(514),(true))
        call Func0193(loc_unit05,'Aloc')
    endif
    if loc_integer02==200 then
        call ShowUnit(loc_unit06,true)
        call SaveBoolean(hashtable001,(loc_integer01),(515),(true))
        call Func0193(loc_unit06,'Aloc')
    endif
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A24A' then
            if(LoadBoolean(hashtable001,(loc_integer01),(655)))==true then
                call SaveBoolean(hashtable001,(loc_integer01),(655),(false))
                call SaveBoolean(hashtable001,(loc_integer01),(656),(false))
            else
                call SaveBoolean(hashtable001,(loc_integer01),(655),(true))
                call SaveBoolean(hashtable001,(loc_integer01),(656),(false))
            endif
        elseif GetSpellAbilityId()=='A24B' then
            if(LoadBoolean(hashtable001,(loc_integer01),(656)))==true then
                call SaveBoolean(hashtable001,(loc_integer01),(655),(false))
                call SaveBoolean(hashtable001,(loc_integer01),(656),(false))
            else
                call SaveBoolean(hashtable001,(loc_integer01),(655),(false))
                call SaveBoolean(hashtable001,(loc_integer01),(656),(true))
            endif
        endif
    endif
    if(LoadBoolean(hashtable001,(loc_integer01),(655)))then
        set loc_real04=RMaxBJ(loc_real04-5,100)
        call SaveReal(hashtable001,(loc_integer01),(138),((loc_real04)*1.0))
    elseif(LoadBoolean(hashtable001,(loc_integer01),(656)))then
        set loc_real04=RMinBJ(loc_real04+5,875)
        call SaveReal(hashtable001,(loc_integer01),(138),((loc_real04)*1.0))
    endif
    if GetTriggerEventId()==EVENT_UNIT_DEATH or loc_integer02==950 or(Func0194(loc_unit02)and Func0194(loc_unit03)and Func0194(loc_unit04)and Func0194(loc_unit05)and Func0194(loc_unit06))or(loc_integer02>1 and GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A1T8')then
        if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT then
            call UnitRemoveAbility(loc_unit01,'A24A')
            call UnitRemoveAbility(loc_unit01,'A24B')
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if Func0194(loc_unit02)==false then
            call Func4074(loc_unit01,loc_unit02)
        endif
        if Func0194(loc_unit03)==false then
            call Func4074(loc_unit01,loc_unit03)
        endif
        if Func0194(loc_unit04)==false then
            call Func4074(loc_unit01,loc_unit04)
        endif
        if Func0194(loc_unit05)==false then
            call Func4074(loc_unit01,loc_unit05)
        endif
        if Func0194(loc_unit06)==false then
            call Func4074(loc_unit01,loc_unit06)
        endif
    else
        set loc_group01=Func0030()
        if Func0194(loc_unit02)==false and(LoadBoolean(hashtable001,(loc_integer01),(511)))then
            set loc_real08=360*5/5.0
            set loc_real03=loc_real08+loc_real10
            set loc_real01=Func0126(loc_real05+loc_real04*Cos(loc_real03*bj_DEGTORAD))
            set loc_real02=Func0129(loc_real06+loc_real04*Sin(loc_real03*bj_DEGTORAD))
            call SetUnitX(loc_unit02,loc_real01)
            call SetUnitY(loc_unit02,loc_real02)
            set unit124=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,95,Condition(function Func0344))
            if FirstOfGroup(loc_group01)!=null then
                call Func4074(loc_unit01,loc_unit02)
            endif
            call GroupClear(loc_group01)
            set unit392=loc_unit02
            set integer535=1
            set unit390=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,175,Condition(function Func0324))
            call ForGroup(loc_group01,function Func4071)
            call GroupClear(loc_group01)
        endif
        if Func0194(loc_unit03)==false and(LoadBoolean(hashtable001,(loc_integer01),(512)))then
            set loc_real08=360*4/5.0
            set loc_real03=loc_real08+loc_real10
            set loc_real01=Func0126(loc_real05+loc_real04*Cos(loc_real03*bj_DEGTORAD))
            set loc_real02=Func0129(loc_real06+loc_real04*Sin(loc_real03*bj_DEGTORAD))
            call SetUnitX(loc_unit03,loc_real01)
            call SetUnitY(loc_unit03,loc_real02)
            set unit124=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,95,Condition(function Func0344))
            if FirstOfGroup(loc_group01)!=null then
                call Func4074(loc_unit01,loc_unit03)
            endif
            call GroupClear(loc_group01)
            set unit392=loc_unit03
            set integer535=2
            set unit390=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,175,Condition(function Func0324))
            call ForGroup(loc_group01,function Func4071)
            call GroupClear(loc_group01)
        endif
        if Func0194(loc_unit04)==false and(LoadBoolean(hashtable001,(loc_integer01),(513)))then
            set loc_real08=360*3/5.0
            set loc_real03=loc_real08+loc_real10
            set loc_real01=Func0126(loc_real05+loc_real04*Cos(loc_real03*bj_DEGTORAD))
            set loc_real02=Func0129(loc_real06+loc_real04*Sin(loc_real03*bj_DEGTORAD))
            call SetUnitX(loc_unit04,loc_real01)
            call SetUnitY(loc_unit04,loc_real02)
            set unit124=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,95,Condition(function Func0344))
            if FirstOfGroup(loc_group01)!=null then
                call Func4074(loc_unit01,loc_unit04)
            endif
            call GroupClear(loc_group01)
            set unit392=loc_unit04
            set integer535=3
            set unit390=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,175,Condition(function Func0324))
            call ForGroup(loc_group01,function Func4071)
            call GroupClear(loc_group01)
        endif
        if Func0194(loc_unit05)==false and(LoadBoolean(hashtable001,(loc_integer01),(514)))then
            set loc_real08=360*2/5.0
            set loc_real03=loc_real08+loc_real10
            set loc_real01=Func0126(loc_real05+loc_real04*Cos(loc_real03*bj_DEGTORAD))
            set loc_real02=Func0129(loc_real06+loc_real04*Sin(loc_real03*bj_DEGTORAD))
            call SetUnitX(loc_unit05,loc_real01)
            call SetUnitY(loc_unit05,loc_real02)
            set unit124=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,95,Condition(function Func0344))
            if FirstOfGroup(loc_group01)!=null then
                call Func4074(loc_unit01,loc_unit05)
            endif
            call GroupClear(loc_group01)
            set unit392=loc_unit05
            set integer535=4
            set unit390=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,175,Condition(function Func0324))
            call ForGroup(loc_group01,function Func4071)
            call GroupClear(loc_group01)
        endif
        if Func0194(loc_unit06)==false and(LoadBoolean(hashtable001,(loc_integer01),(515)))then
            set loc_real08=360*1/5.0
            set loc_real03=loc_real08+loc_real10
            set loc_real01=Func0126(loc_real05+loc_real04*Cos(loc_real03*bj_DEGTORAD))
            set loc_real02=Func0129(loc_real06+loc_real04*Sin(loc_real03*bj_DEGTORAD))
            call SetUnitX(loc_unit06,loc_real01)
            call SetUnitY(loc_unit06,loc_real02)
            set unit124=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,95,Condition(function Func0344))
            if FirstOfGroup(loc_group01)!=null then
                call Func4074(loc_unit01,loc_unit06)
            endif
            call GroupClear(loc_group01)
            set unit392=loc_unit06
            set integer535=5
            set unit390=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,175,Condition(function Func0324))
            call ForGroup(loc_group01,function Func4071)
            call GroupClear(loc_group01)
        endif
        call Func0029(loc_group01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_unit05=null
    set loc_unit06=null
    return false
endfunction

// 84875 ~ 84937
function Func4076 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02
    local unit loc_unit03
    local unit loc_unit04
    local unit loc_unit05
    local unit loc_unit06
    local real loc_real01
    local real loc_real02
    set loc_real01=GetUnitX(loc_unit01)+250*Cos(bj_DEGTORAD*360*5/5.0*-1.0)
    set loc_real02=GetUnitY(loc_unit01)+250*Sin(bj_DEGTORAD*360*5/5.0*-1.0)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0CJ',loc_real01,loc_real02,360*5/5.0*-1.0)
    call Func0193(loc_unit02,'Aloc')
    set loc_real01=GetUnitX(loc_unit01)+250*Cos(bj_DEGTORAD*360*4/5.0*-1.0)
    set loc_real02=GetUnitY(loc_unit01)+250*Sin(bj_DEGTORAD*360*4/5.0*-1.0)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h0CJ',loc_real01,loc_real02,360*4/5.0*-1.0)
    call ShowUnit(loc_unit03,false)
    call SetUnitInvulnerable(loc_unit03,true)
    set loc_real01=GetUnitX(loc_unit01)+250*Cos(bj_DEGTORAD*360*3/5.0*-1.0)
    set loc_real02=GetUnitY(loc_unit01)+250*Sin(bj_DEGTORAD*360*3/5.0*-1.0)
    set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'h0CJ',loc_real01,loc_real02,360*3/5.0*-1.0)
    call ShowUnit(loc_unit04,false)
    call SetUnitInvulnerable(loc_unit03,true)
    set loc_real01=GetUnitX(loc_unit01)+250*Cos(bj_DEGTORAD*360*2/5.0*-1.0)
    set loc_real02=GetUnitY(loc_unit01)+250*Sin(bj_DEGTORAD*360*2/5.0*-1.0)
    set loc_unit05=CreateUnit(GetOwningPlayer(loc_unit01),'h0CJ',loc_real01,loc_real02,360*2/5.0*-1.0)
    call ShowUnit(loc_unit05,false)
    call SetUnitInvulnerable(loc_unit05,true)
    set loc_real01=GetUnitX(loc_unit01)+250*Cos(bj_DEGTORAD*360*1/5.0*-1.0)
    set loc_real02=GetUnitY(loc_unit01)+250*Sin(bj_DEGTORAD*360*1/5.0*-1.0)
    set loc_unit06=CreateUnit(GetOwningPlayer(loc_unit01),'h0CJ',loc_real01,loc_real02,360*1/5.0*-1.0)
    call ShowUnit(loc_unit06,false)
    call SetUnitInvulnerable(loc_unit06,true)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(393),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(394),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(395),(loc_unit04))
    call SaveUnitHandle(hashtable001,(loc_integer01),(396),(loc_unit05))
    call SaveUnitHandle(hashtable001,(loc_integer01),(397),(loc_unit06))
    call SaveBoolean(hashtable001,(loc_integer01),(511),(true))
    call SaveBoolean(hashtable001,(loc_integer01),(512),(false))
    call SaveBoolean(hashtable001,(loc_integer01),(513),(false))
    call SaveBoolean(hashtable001,(loc_integer01),(514),(false))
    call SaveBoolean(hashtable001,(loc_integer01),(515),(false))
    call SaveBoolean(hashtable001,(loc_integer01),(655),(false))
    call SaveBoolean(hashtable001,(loc_integer01),(656),(false))
    call SaveReal(hashtable001,(loc_integer01),(138),((150)*1.0))
    call Func0193(loc_unit01,'A24B')
    call Func0193(loc_unit01,'A24A')
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4075))
    set loc_unit01=null
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_unit05=null
    set loc_unit06=null
endfunction

// 84939 ~ 84944
function Func4077 takes nothing returns boolean
    if GetSpellAbilityId()=='A1T8' then
        call Func4076()
    endif
    return false
endfunction

// 84946 ~ 84951
function Func4078 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4077))
    set loc_trigger01=null
endfunction
