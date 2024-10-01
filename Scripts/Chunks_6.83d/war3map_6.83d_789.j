
// 82271 ~ 82288
function Func3979 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(681)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if((TimerGetElapsed(timer001))-loc_real01<0.49)==false or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call UnitRemoveAbility(loc_unit01,'A1Z4')
        call UnitRemoveAbility(loc_unit01,'A1ZA')
        call UnitRemoveAbility(loc_unit01,'A1ZB')
        call UnitRemoveAbility(loc_unit01,'A1Z9')
        call UnitRemoveAbility(loc_unit01,'B0DV')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 82290 ~ 82323
function Func3980 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3979))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(681),(((TimerGetElapsed(timer001)))*1.0))
    if integer532==1 then
        set loc_integer02='A1Z4'
        call UnitRemoveAbility(loc_unit01,'A1ZA')
        call UnitRemoveAbility(loc_unit01,'A1ZB')
        call UnitRemoveAbility(loc_unit01,'A1Z9')
    elseif integer532==2 then
        set loc_integer02='A1ZA'
        call UnitRemoveAbility(loc_unit01,'A1Z4')
        call UnitRemoveAbility(loc_unit01,'A1ZB')
        call UnitRemoveAbility(loc_unit01,'A1Z9')
    elseif integer532==3 then
        set loc_integer02='A1ZB'
        call UnitRemoveAbility(loc_unit01,'A1Z4')
        call UnitRemoveAbility(loc_unit01,'A1ZA')
        call UnitRemoveAbility(loc_unit01,'A1Z9')
    elseif integer532==4 then
        set loc_integer02='A1Z9'
        call UnitRemoveAbility(loc_unit01,'A1Z4')
        call UnitRemoveAbility(loc_unit01,'A1ZA')
        call UnitRemoveAbility(loc_unit01,'A1ZB')
    endif
    call Func0193(loc_unit01,loc_integer02)
    call UnitMakeAbilityPermanent(loc_unit01,true,loc_integer02)
    set loc_trigger01=null
endfunction

// 82325 ~ 82342
function Func3981 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local real loc_real01=real379
    local real loc_real02=real380
    local real loc_real03=loc_real01+loc_real02*GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)
    set loc_real03=loc_real03/5
    if IsUnitEnemy(loc_unit01,GetOwningPlayer(unit382))==true then
        call Func0115(unit382,loc_unit01,3,loc_real03)
        if Func0098(loc_unit01)==false then
            call Func3980(loc_unit01)
        endif
    else
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real03*0.5)
    endif
    call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\FireRayTarget.mdx",loc_unit01,"origin"))
    call Func0186(GetOwningPlayer(loc_unit01),2,GetUnitX(unit382),GetUnitY(unit382),500)
    set loc_unit01=null
endfunction

// 82344 ~ 82634
function Func3982 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=GetUnitFacing(loc_unit01)
    local real loc_real02=loc_real01*bj_DEGTORAD
    local location loc_location01=GetUnitLoc(loc_unit01)
    local real loc_real03=GetLocationZ(loc_location01)
    local location loc_location02=Location(GetUnitX(loc_unit01)+real375*Cos(loc_real02),GetUnitY(loc_unit01)+real375*Sin(loc_real02))
    local real loc_real04=GetLocationZ(loc_location02)
    local lightning loc_lightning01=(LoadLightningHandle(hashtable001,(loc_integer01),(676)))
    local lightning loc_lightning02=(LoadLightningHandle(hashtable001,(loc_integer01),(677)))
    local lightning loc_lightning03=(LoadLightningHandle(hashtable001,(loc_integer01),(678)))
    local lightning loc_lightning04=(LoadLightningHandle(hashtable001,(loc_integer01),(679)))
    local lightning loc_lightning05=(LoadLightningHandle(hashtable001,(loc_integer01),(680)))
    local real loc_real05=1
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
    local real loc_real19
    local real loc_real20
    local real loc_real21
    local real loc_real22
    local real loc_real23
    local real loc_real24
    local real loc_real25
    local real loc_real26
    local real loc_real27
    local real loc_real28
    local real loc_real29
    local real loc_real30
    local real loc_real31
    local real loc_real32
    local real loc_real33
    local real loc_real34
    local real loc_real35
    local real loc_real36
    local real loc_real37
    local real loc_real38
    local group loc_group01
    local real loc_real39
    local real loc_real40
    local integer loc_integer03
    local real loc_real41
    local real loc_real42
    local real loc_real43
    local boolean loc_boolean01=FALSE
    local boolean loc_boolean02=false
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=null
    local unit loc_unit04=null
    local real loc_real44
    local real loc_real45
    local real loc_real46
    local real loc_real47=(LoadReal(hashtable001,(loc_integer01),(688)))
    local boolean loc_boolean03=(LoadBoolean(hashtable001,(loc_integer01),(689)))
    local boolean loc_boolean04=(LoadBoolean(hashtable001,(loc_integer01),(672)))
    local real loc_real48
    local ubersplat loc_ubersplat01
    local real loc_real49=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real50=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real51
    local real loc_real52
    local real loc_real53
    local real loc_real54=5
    if GetUnitCurrentOrder(loc_unit01)==852001 then
        call DisableTrigger(loc_trigger01)
        call Func0123(loc_unit01)
        call EnableTrigger(loc_trigger01)
    endif
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    if IsUnitPaused(loc_unit01)==false and(GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER)then
        set loc_real06=GetUnitX(loc_unit01)
        set loc_real07=GetUnitY(loc_unit01)
        if GetIssuedOrderId()!=852490 and GetIssuedOrderId()!=852185 and GetIssuedOrderId()!=852600 then
            call DisableTrigger(loc_trigger01)
            call Func0123(loc_unit01)
            call EnableTrigger(loc_trigger01)
        endif
        if GetIssuedOrderId()==851971 then
            if GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER then
                set loc_real39=GetUnitX(GetOrderTargetUnit())
                set loc_real40=GetUnitY(GetOrderTargetUnit())
            else
                set loc_real39=GetOrderPointX()
                set loc_real40=GetOrderPointY()
            endif
            set loc_real41=Func0169(loc_real39,loc_real40,loc_real06,loc_real07)
            if loc_real41<0 then
                set loc_real41=loc_real41+360
            endif
            set loc_real43=loc_real01-loc_real41
            if loc_real43<0 then
                set loc_real43=loc_real43+360
            endif
            if loc_real43<180 then
                set loc_boolean01=true
                set loc_real42=loc_real01+6
            else
                set loc_boolean02=true
                set loc_real42=loc_real01-6
            endif
            set loc_real47=Func0169(loc_real39,loc_real40,loc_real06,loc_real07)+180
            call SaveReal(hashtable001,(loc_integer01),(688),((loc_real47)*1.0))
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT or GetTriggerEventId()==EVENT_WIDGET_DEATH or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==-1 or loc_integer02>=6.0/.02 or Func0270(loc_unit01)or Func0077(loc_unit01)then
        if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and(GetSpellAbilityId()=='A1Z3' or GetSpellAbilityId()=='A1RK' or GetSpellAbilityId()=='A27H'))then
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4312)),(2))
            call Func0282(loc_unit01)
            call SetUnitPathing(loc_unit01,true)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call UnitRemoveAbility(loc_unit01,'A205')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1Z3',false)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A205',false)
            if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A1YY' then
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1YY',true)
            endif
            call DestroyLightning(loc_lightning01)
            call DestroyLightning(loc_lightning02)
            call DestroyLightning(loc_lightning03)
            call DestroyLightning(loc_lightning04)
            call DestroyLightning(loc_lightning05)
            call StopSound(sound065,false,true)
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
        if GetIssuedOrderId()==String2OrderIdBJ("immolation")then
            set loc_boolean03=true
        endif
        if GetIssuedOrderId()==String2OrderIdBJ("unimmolation")then
            set loc_boolean03=false
        endif
        call SaveBoolean(hashtable001,(loc_integer01),(689),(loc_boolean03))
    else
        set loc_real41=loc_real01-loc_real47
        if loc_real41<-180 then
            set loc_real41=loc_real41+360
        elseif loc_real41>180 then
            set loc_real41=loc_real41-360
        endif
        set loc_real48=1
        if loc_integer02<35 and loc_boolean04==true then
            set loc_real48=7
        endif
        if loc_real41<(-1*loc_real48)then
            set loc_real01=loc_real01+loc_real48
        elseif loc_real41>loc_real48 then
            set loc_real01=loc_real01-loc_real48
        else
            set loc_boolean04=false
            call SaveBoolean(hashtable001,(loc_integer01),(672),(loc_boolean04))
            set loc_real01=loc_real47
        endif
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4301))))==1)==false then
            call SetUnitFacing(loc_unit01,loc_real01)
        endif
        set loc_real02=loc_real01*bj_DEGTORAD
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
        set loc_real08=real375
        set loc_real06=GetUnitX(loc_unit01)+50*Cos(loc_real02)
        set loc_real07=GetUnitY(loc_unit01)+50*Sin(loc_real02)
        if loc_boolean03 and Func0268(loc_unit01)==false and Func0270(loc_unit01)==false then
            if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4331))))==1)==true then
                set loc_real54=loc_real54*2
            endif
            set loc_real46=loc_real02
            set loc_real44=Func0126(GetUnitX(loc_unit01)+loc_real54*Cos(loc_real46))
            set loc_real45=Func0129(GetUnitY(loc_unit01)+loc_real54*Sin(loc_real46))
            call Func0180(loc_real44,loc_real45,200)
            call SetUnitX(loc_unit01,loc_real44)
            call SetUnitY(loc_unit01,loc_real45)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)-GetUnitState(loc_unit01,UNIT_STATE_LIFE)*0.06*0.02)
        call Func0180(loc_real06,loc_real07,200)
        if ModuloInteger(loc_integer02,10)==0 then
            set group032=Func0030()
            set unit124=loc_unit01
            set loc_integer03=0
            loop
                exitwhen loc_integer03*50>real375
                set loc_real39=loc_real06+loc_integer03*50*Cos(loc_real02)
                set loc_real40=loc_real07+loc_integer03*50*Sin(loc_real02)
                set loc_group01=Func0030()
                call GroupEnumUnitsInRange(loc_group01,loc_real39,loc_real40,130+25,Condition(function Func0305))
                call GroupAddGroup(loc_group01,group032)
                call GroupEnumUnitsInRange(loc_group01,loc_real39,loc_real40,130+25,Condition(function Func0332))
                call GroupAddGroup(loc_group01,group032)
                call Func0029(loc_group01)
                if ModuloInteger(loc_integer03,3)==0 then
                    call Func0186(GetOwningPlayer(loc_unit01),2,loc_real39,loc_real40,225)
                endif
                set loc_integer03=loc_integer03+1
            endloop
            set unit382=loc_unit01
            set integer532=GetUnitAbilityLevel(loc_unit01,'A1YY')
            set loc_real53=(I2R(loc_integer02)/50.0)/6
            set real379=(5*integer532+10)+(5*integer532+10)*loc_real53
            set real380=(integer532+loc_real53*(integer532))/100
            call GroupRemoveUnit(group032,loc_unit01)
            call ForGroup(group032,function Func3981)
            call Func0029(group032)
            set loc_group01=null
            set group032=null
        endif
        if Func0194(loc_unit01)==false then
            if loc_unit02!=null then
                set loc_real08=Func0147(loc_unit01,loc_unit02)
            endif
            set loc_real09=loc_real06
            set loc_real10=loc_real07
            set loc_real11=loc_real03+200
            set loc_real12=loc_real09+loc_real08*Cos(loc_real02)
            set loc_real13=loc_real10+loc_real08*Sin(loc_real02)
            set loc_real14=loc_real04
            set loc_real15=loc_real06+real376*Cos((loc_real01-90)*bj_DEGTORAD)
            set loc_real16=loc_real07+real377*Cos((loc_real01-90)*bj_DEGTORAD)
            set loc_real17=loc_real03+200
            set loc_real18=loc_real15+loc_real08*Cos(loc_real02)
            set loc_real19=loc_real16+loc_real08*Sin(loc_real02)
            set loc_real20=loc_real04
            set loc_real21=loc_real06+real376*Cos((loc_real01+90)*bj_DEGTORAD)
            set loc_real22=loc_real07+real377*Cos((loc_real01+90)*bj_DEGTORAD)
            set loc_real23=loc_real03+200
            set loc_real24=loc_real21+loc_real08*Cos(loc_real02)
            set loc_real25=loc_real22+loc_real08*Sin(loc_real02)
            set loc_real26=loc_real04
            set loc_real27=loc_real06
            set loc_real28=loc_real07
            set loc_real29=loc_real03+200+real378
            set loc_real30=loc_real27+loc_real08*Cos(loc_real02)
            set loc_real31=loc_real28+loc_real08*Sin(loc_real02)
            set loc_real32=loc_real04
            set loc_real33=loc_real06
            set loc_real34=loc_real07
            set loc_real35=loc_real03+200-real378
            set loc_real36=loc_real33+loc_real08*Cos(loc_real02)
            set loc_real37=loc_real34+loc_real08*Sin(loc_real02)
            set loc_real38=loc_real04
            if ModuloInteger(loc_integer02,10)==0 and loc_real08==real375 then
                set loc_real39=GetUnitX(loc_unit01)+(real375)*Cos(loc_real02)
                set loc_real40=GetUnitY(loc_unit01)+(real375)*Sin(loc_real02)
                call DestroyEffect(AddSpecialEffect("war3mapImported\\FireRayTarget.mdx",loc_real39,loc_real40))
            endif
            if ModuloInteger(loc_integer02,10)==0 then
                call SetSoundPosition(sound065,GetUnitX(loc_unit01),GetUnitY(loc_unit01),100)
                set loc_real39=GetUnitX(loc_unit01)+(loc_real08)*Cos(loc_real02)
                set loc_real40=GetUnitY(loc_unit01)+(loc_real08)*Sin(loc_real02)
                set loc_ubersplat01=CreateUbersplat(loc_real39,loc_real40,"SRAY",255,255,255,255,false,false)
                call SetUbersplatRenderAlways(loc_ubersplat01,true)
                call Func0251(loc_ubersplat01,10)
                set loc_ubersplat01=null
            endif
            call MoveLightningEx(loc_lightning01,false,loc_real09,loc_real10,loc_real11,loc_real12,loc_real13,loc_real14)
            call MoveLightningEx(loc_lightning02,false,loc_real15,loc_real16,loc_real17,loc_real18,loc_real19,loc_real20)
            call MoveLightningEx(loc_lightning03,false,loc_real21,loc_real22,loc_real23,loc_real24,loc_real25,loc_real26)
            call MoveLightningEx(loc_lightning04,false,loc_real27,loc_real28,loc_real29,loc_real30,loc_real31,loc_real32)
            call MoveLightningEx(loc_lightning05,false,loc_real33,loc_real34,loc_real35,loc_real36,loc_real37,loc_real38)
            if Func0107(GetLocalPlayer())then
                set loc_real05=1
            endif
            call SetLightningColor(loc_lightning01,1.00,1.00,1.00,loc_real05)
            call SetLightningColor(loc_lightning02,1.00,1.00,1.00,loc_real05)
            call SetLightningColor(loc_lightning03,1.00,1.00,1.00,loc_real05)
            call SetLightningColor(loc_lightning04,1.00,1.00,1.00,loc_real05)
            call SetLightningColor(loc_lightning05,1.00,1.00,1.00,loc_real05)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_lightning01=null
    set loc_lightning02=null
    set loc_lightning03=null
    set loc_lightning04=null
    set loc_lightning05=null
    set loc_location01=null
    set loc_location02=null
    return false
endfunction

// 82636 ~ 82690
function Func3983 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetSpellTargetX(),GetSpellTargetY())*bj_DEGTORAD
    local real loc_real02=Func0126(GetUnitX(loc_unit01)+real375*Cos(loc_real01))
    local real loc_real03=Func0129(GetUnitY(loc_unit01)+real375*Sin(loc_real01))
    local lightning loc_lightning01=AddLightning("SRAY",false,GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real02,loc_real03)
    local lightning loc_lightning02=AddLightning("SRAY",false,GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real02,loc_real03)
    local lightning loc_lightning03=AddLightning("SRAY",false,GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real02,loc_real03)
    local lightning loc_lightning04=AddLightning("SRAY",false,GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real02,loc_real03)
    local lightning loc_lightning05=AddLightning("SRAY",false,GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real02,loc_real03)
    call SetUnitFacing(loc_unit01,loc_real01*bj_RADTODEG)
    call StartSound(sound065)
    call SetSoundPosition(sound065,GetUnitX(loc_unit01),GetUnitY(loc_unit01),100)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3982))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(688),((loc_real01*bj_RADTODEG)*1.0))
    call SaveLightningHandle(hashtable001,(loc_integer01),(676),(loc_lightning01))
    call SaveLightningHandle(hashtable001,(loc_integer01),(677),(loc_lightning02))
    call SaveLightningHandle(hashtable001,(loc_integer01),(678),(loc_lightning03))
    call SaveLightningHandle(hashtable001,(loc_integer01),(679),(loc_lightning04))
    call SaveLightningHandle(hashtable001,(loc_integer01),(680),(loc_lightning05))
    call SaveBoolean(hashtable001,(loc_integer01),(689),(false))
    call SaveBoolean(hashtable001,(loc_integer01),(672),(true))
    call SaveReal(hashtable001,(loc_integer01),(688),((loc_real01*bj_RADTODEG)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(23),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((GetUnitY(loc_unit01))*1.0))
    call Func0281(loc_unit01)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4312)),(1))
    call SetUnitPathing(loc_unit01,false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1Z3',true)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A205',true)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1YY',false)
    call Func0193(loc_unit01,'A1Z3')
    call UnitMakeAbilityPermanent(loc_unit01,true,'A1Z3')
    call Func0193(loc_unit01,'A205')
    call UnitMakeAbilityPermanent(loc_unit01,true,'A205')
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit01=null
    set loc_lightning01=null
    set loc_lightning02=null
    set loc_lightning03=null
    set loc_lightning04=null
    set loc_lightning05=null
endfunction

// 82692 ~ 82700
function Func3984 takes nothing returns boolean
    if GetSpellAbilityId()=='A1YY' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
        else
            call Func3983()
        endif
    endif
    return false
endfunction

// 82702 ~ 82712
function Func3985 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3984))
    call Func0254('A1Z4')
    call Func0254('A1ZA')
    call Func0254('A1ZB')
    call Func0254('A1Z9')
    set loc_trigger01=null
endfunction
