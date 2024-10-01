
// 82714 ~ 82735
function Func3986 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1YX')
    if GetTriggerEventId()==EVENT_UNIT_DEATH or(TimerGetElapsed(timer001))>=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(757)))or Func0098(loc_unit02)==true then
        call UnitRemoveAbility(loc_unit02,'A2W7')
        call UnitRemoveAbility(loc_unit02,'A2W9')
        call UnitRemoveAbility(loc_unit02,'A2L8')
        call UnitRemoveAbility(loc_unit02,'A2W8')
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    if ModuloInteger(GetTriggerEvalCount(loc_trigger01),4)==0 then
        call Func0115(loc_unit01,loc_unit02,1,20*loc_integer02-10)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 82737 ~ 82772
function Func3987 takes nothing returns nothing
    local unit loc_unit01=unit383
    local unit loc_unit02=GetEnumUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1YX')
    local integer loc_integer03
    call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(757),(((TimerGetElapsed(timer001))+4)*1.0))
    if GetUnitAbilityLevel(loc_unit02,'A2W7')==0 and GetUnitAbilityLevel(loc_unit02,'A2W9')==0 and GetUnitAbilityLevel(loc_unit02,'A2L8')==0 and GetUnitAbilityLevel(loc_unit02,'A2W8')==0 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3986))
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",loc_unit02,"chest")))
        if Func0275(loc_unit02)==false then
            if loc_integer02==1 then
                set loc_integer03='A2W7'
            elseif loc_integer02==2 then
                set loc_integer03='A2W9'
            elseif loc_integer02==3 then
                set loc_integer03='A2L8'
            elseif loc_integer02==4 then
                set loc_integer03='A2W8'
            endif
            call UnitAddAbility(loc_unit02,loc_integer03)
            call UnitMakeAbilityPermanent(loc_unit02,true,loc_integer03)
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),loc_integer03,false)
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 82774 ~ 82787
function Func3988 takes unit loc_unit01,unit loc_unit02,real loc_real01,unit loc_unit03,unit loc_unit04 returns nothing
    local real loc_real02=GetUnitX(loc_unit02)
    local real loc_real03=GetUnitY(loc_unit02)
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set unit383=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,175+25,Condition(function Func0313))
    call ForGroup(loc_group01,function Func3987)
    call Func0029(loc_group01)
    call DestroyEffect(AddSpecialEffect("war3mapImported\\Firaga_2.mdx",loc_real02,loc_real03))
    call KillUnit(loc_unit02)
    call ShowUnit(loc_unit02,false)
    set loc_group01=null
endfunction

// 82789 ~ 82836
function Func3989 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(393)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(685)))
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local real loc_real07=18
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1YX')
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        set loc_real02=GetUnitX(loc_unit02)
        set loc_real03=GetUnitY(loc_unit02)
        call SaveReal(hashtable001,(loc_integer01),(47),((loc_real02)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(48),((loc_real03)*1.0))
        call RemoveSavedHandle(hashtable001,(loc_integer01),(17))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(null))
    elseif loc_unit02==null then
        set loc_real02=(LoadReal(hashtable001,(loc_integer01),(47)))
        set loc_real03=(LoadReal(hashtable001,(loc_integer01),(48)))
    else
        set loc_real02=GetUnitX(loc_unit02)
        set loc_real03=GetUnitY(loc_unit02)
    endif
    set loc_real06=Func0169(GetUnitX(loc_unit04),GetUnitY(loc_unit04),loc_real02,loc_real03)
    call SetUnitFacing(loc_unit04,loc_real06)
    set loc_real04=GetUnitX(loc_unit04)+loc_real07*Cos(loc_real06*bj_DEGTORAD)
    set loc_real05=GetUnitY(loc_unit04)+loc_real07*Sin(loc_real06*bj_DEGTORAD)
    call SetUnitX(loc_unit04,loc_real04)
    call SetUnitY(loc_unit04,loc_real05)
    if Func0149(loc_real04,loc_real05,loc_real02,loc_real03)<loc_real07*2 then
        call Func3988(loc_unit01,loc_unit04,loc_real01,loc_unit03,loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit04=null
    set loc_unit03=null
    return false
endfunction

// 82838 ~ 82861
function Func3990 takes unit loc_unit01,unit loc_unit02,unit loc_unit03,real loc_real01,unit loc_unit04 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01
    local unit loc_unit05
    if loc_unit01==loc_unit03 then
        call KillUnit(loc_unit02)
        call ShowUnit(loc_unit02,false)
    else
        call SetUnitVertexColor(loc_unit02,255,255,255,255)
        call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3989))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit03))
        call SaveUnitHandle(hashtable001,(loc_integer01),(393),(loc_unit02))
        call SaveReal(hashtable001,(loc_integer01),(47),((GetSpellTargetX())*1.0))
        call SaveReal(hashtable001,(loc_integer01),(48),((GetSpellTargetY())*1.0))
        call SaveReal(hashtable001,(loc_integer01),(685),((loc_real01)*1.0))
        call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit04))
    endif
    set loc_trigger01=null
endfunction

// 82863 ~ 83020
function Func3991 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(393)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(394)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(395)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(396)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1YX')
    local real loc_real03=GetUnitFacing(loc_unit01)
    local real loc_real04
    local real loc_real05
    local group loc_group01
    local group loc_group02
    local real loc_real06=-1*360*0.02/4
    local real loc_real07
    local real loc_real08
    local real loc_real09=(LoadReal(hashtable001,(loc_integer01),(685)))
    local real loc_real10
    local unit loc_unit06=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer04=800
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A1Z2' then
            if Func0194(loc_unit02)==false then
                call Func3990(loc_unit01,loc_unit02,GetSpellTargetUnit(),loc_real09,loc_unit06)
                call RemoveSavedHandle(hashtable001,(loc_integer01),(393))
            elseif Func0194(loc_unit03)==false then
                call Func3990(loc_unit01,loc_unit03,GetSpellTargetUnit(),loc_real09,loc_unit06)
                call RemoveSavedHandle(hashtable001,(loc_integer01),(394))
            elseif Func0194(loc_unit04)==false then
                call Func3990(loc_unit01,loc_unit04,GetSpellTargetUnit(),loc_real09,loc_unit06)
                call RemoveSavedHandle(hashtable001,(loc_integer01),(395))
            elseif Func0194(loc_unit05)==false then
                call Func3990(loc_unit01,loc_unit05,GetSpellTargetUnit(),loc_real09,loc_unit06)
                call RemoveSavedHandle(hashtable001,(loc_integer01),(396))
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1Z2',false)
                if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A1YX' then
                    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1YX',true)
                endif
                call FlushChildHashtable(hashtable001,(loc_integer01))
                call Func0035(loc_trigger01)
            endif
        elseif GetSpellAbilityId()=='A1RK' then
            if loc_unit02!=null and Func0194(loc_unit02)==false then
                call Func3990(loc_unit01,loc_unit02,loc_unit01,loc_real09,loc_unit06)
            endif
            if loc_unit03!=null and Func0194(loc_unit03)==false then
                call Func3990(loc_unit01,loc_unit03,loc_unit01,loc_real09,loc_unit06)
            endif
            if loc_unit04!=null and Func0194(loc_unit04)==false then
                call Func3990(loc_unit01,loc_unit04,loc_unit01,loc_real09,loc_unit06)
            endif
            if loc_unit05!=null and Func0194(loc_unit05)==false then
                call Func3990(loc_unit01,loc_unit05,loc_unit01,loc_real09,loc_unit06)
            endif
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1Z2',false)
            if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A1YX' then
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1YX',true)
            endif
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
        if loc_unit02!=null and Func0194(loc_unit02)==false then
            set loc_real08=360*4/4.0
            set loc_real07=loc_real08+loc_real06*loc_integer02
            set loc_real04=Func0126(loc_real01+200*Cos(loc_real07*bj_DEGTORAD))
            set loc_real05=Func0129(loc_real02+200*Sin(loc_real07*bj_DEGTORAD))
            call SetUnitFacing(loc_unit02,loc_real07-90)
            call SetUnitX(loc_unit02,loc_real04)
            call SetUnitY(loc_unit02,loc_real05)
        endif
        if loc_unit03!=null and Func0194(loc_unit03)==false then
            set loc_real08=360*3/4.0
            set loc_real07=loc_real08+loc_real06*loc_integer02
            set loc_real04=Func0126(loc_real01+200*Cos(loc_real07*bj_DEGTORAD))
            set loc_real05=Func0129(loc_real02+200*Sin(loc_real07*bj_DEGTORAD))
            call SetUnitFacing(loc_unit03,loc_real07-90)
            call SetUnitX(loc_unit03,loc_real04)
            call SetUnitY(loc_unit03,loc_real05)
        endif
        if loc_unit04!=null and Func0194(loc_unit04)==false then
            set loc_real08=360*2/4.0
            set loc_real07=loc_real08+loc_real06*loc_integer02
            set loc_real04=Func0126(loc_real01+200*Cos(loc_real07*bj_DEGTORAD))
            set loc_real05=Func0129(loc_real02+200*Sin(loc_real07*bj_DEGTORAD))
            call SetUnitFacing(loc_unit04,loc_real07-90)
            call SetUnitX(loc_unit04,loc_real04)
            call SetUnitY(loc_unit04,loc_real05)
        endif
        if loc_unit05!=null and Func0194(loc_unit05)==false then
            set loc_real08=360*1/4.0
            set loc_real07=loc_real08+loc_real06*loc_integer02
            set loc_real04=Func0126(loc_real01+200*Cos(loc_real07*bj_DEGTORAD))
            set loc_real05=Func0129(loc_real02+200*Sin(loc_real07*bj_DEGTORAD))
            call SetUnitFacing(loc_unit05,loc_real07-90)
            call SetUnitX(loc_unit05,loc_real04)
            call SetUnitY(loc_unit05,loc_real05)
        endif
        if loc_integer02>loc_integer04 or GetTriggerEventId()==EVENT_UNIT_DEATH then
            if loc_unit02!=null and Func0194(loc_unit02)==false then
                call Func3990(loc_unit01,loc_unit02,loc_unit01,loc_real09,loc_unit06)
            endif
            if loc_unit03!=null and Func0194(loc_unit03)==false then
                call Func3990(loc_unit01,loc_unit03,loc_unit01,loc_real09,loc_unit06)
            endif
            if loc_unit04!=null and Func0194(loc_unit04)==false then
                call Func3990(loc_unit01,loc_unit04,loc_unit01,loc_real09,loc_unit06)
            endif
            if loc_unit05!=null and Func0194(loc_unit05)==false then
                call Func3990(loc_unit01,loc_unit05,loc_unit01,loc_real09,loc_unit06)
            endif
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1Z2',false)
            if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A1YX' then
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1YX',true)
            endif
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        else
            set loc_real09=RMinBJ(0.25+0.75*(I2R(loc_integer02)/500.0),1)
            call SaveReal(hashtable001,(loc_integer01),(685),((loc_real09)*1.0))
            set loc_real10=0.25+(1-0.2)*2.5
            call SetUnitScale(loc_unit02,loc_real10,loc_real10,loc_real10)
            call SetUnitScale(loc_unit03,loc_real10,loc_real10,loc_real10)
            call SetUnitScale(loc_unit04,loc_real10,loc_real10,loc_real10)
            call SetUnitScale(loc_unit05,loc_real10,loc_real10,loc_real10)
            if loc_integer02==(loc_integer04-175)then
                call Func0228(sound066,GetOwningPlayer(loc_unit01))
            endif
            if loc_integer02>(loc_integer04-200)then
                if ModuloInteger(loc_integer02,10)==0 or ModuloInteger(loc_integer02,10)==1 or ModuloInteger(loc_integer02,10)==2 or ModuloInteger(loc_integer02,10)==3 or ModuloInteger(loc_integer02,10)==4 then
                    call SetUnitVertexColor(loc_unit02,255,0,0,255)
                    call SetUnitVertexColor(loc_unit03,255,0,0,255)
                    call SetUnitVertexColor(loc_unit04,255,0,0,255)
                    call SetUnitVertexColor(loc_unit05,255,0,0,255)
                else
                    call SetUnitVertexColor(loc_unit02,255,255,255,255)
                    call SetUnitVertexColor(loc_unit03,255,255,255,255)
                    call SetUnitVertexColor(loc_unit04,255,255,255,255)
                    call SetUnitVertexColor(loc_unit05,255,255,255,255)
                endif
            endif
        endif
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

// 83022 ~ 83070
function Func3992 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03
    local real loc_real04
    local unit loc_unit02
    local unit loc_unit03
    local unit loc_unit04
    local unit loc_unit05
    local real loc_real05=GetUnitFacing(loc_unit01)
    local unit loc_unit06=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call UnitAddAbility(loc_unit06,'A21U')
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)-GetUnitState(loc_unit01,UNIT_STATE_LIFE)*0.20)
    call Func0193(loc_unit01,'A1Z2')
    call UnitMakeAbilityPermanent(loc_unit01,true,'A1Z2')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1Z2',true)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1YX',false)
    set loc_real03=GetUnitX(loc_unit01)+200*Cos(bj_DEGTORAD*360*4/4.0*-1.0)
    set loc_real04=GetUnitY(loc_unit01)+200*Sin(bj_DEGTORAD*360*4/4.0*-1.0)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0CU',loc_real03,loc_real04,360*4/4.0*-1.0)
    set loc_real03=GetUnitX(loc_unit01)+200*Cos(bj_DEGTORAD*360*3/4.0*-1.0)
    set loc_real04=GetUnitY(loc_unit01)+200*Sin(bj_DEGTORAD*360*3/4.0*-1.0)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h0CU',loc_real03,loc_real04,360*3/4.0*-1.0)
    set loc_real03=GetUnitX(loc_unit01)+200*Cos(bj_DEGTORAD*360*2/4.0*-1.0)
    set loc_real04=GetUnitY(loc_unit01)+200*Sin(bj_DEGTORAD*360*2/4.0*-1.0)
    set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'h0CU',loc_real03,loc_real04,360*2/4.0*-1.0)
    set loc_real03=GetUnitX(loc_unit01)+200*Cos(bj_DEGTORAD*360*1/4.0*-1.0)
    set loc_real04=GetUnitY(loc_unit01)+200*Sin(bj_DEGTORAD*360*1/4.0*-1.0)
    set loc_unit05=CreateUnit(GetOwningPlayer(loc_unit01),'h0CU',loc_real03,loc_real04,360*1/4.0*-1.0)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3991))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(393),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(394),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(395),(loc_unit04))
    call SaveUnitHandle(hashtable001,(loc_integer01),(396),(loc_unit05))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit06))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_unit05=null
    set loc_unit06=null
endfunction

// 83072 ~ 83077
function Func3993 takes nothing returns boolean
    if GetSpellAbilityId()=='A1YX' then
        call Func3992()
    endif
    return false
endfunction

// 83079 ~ 83084
function Func3994 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3993))
    set loc_trigger01=null
endfunction
