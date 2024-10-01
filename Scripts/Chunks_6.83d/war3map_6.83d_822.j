
// 86028 ~ 86058
function Func4124 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    local real loc_real05=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)*bj_DEGTORAD
    local group loc_group01=Func0030()
    set real392=0
    set integer539=loc_integer01
    set unit396=loc_unit01
    call SetUnitVertexColor(loc_unit01,255,255,255,0)
    set real392=1.5*RMaxBJ(133,GetUnitMoveSpeed(loc_unit01))+integer539*100
    call SetUnitTimeScale(unit399,2)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4120))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(unit398))
    call SaveUnitHandle(hashtable001,(loc_integer02),(45),(unit399))
    call SaveReal(hashtable001,(loc_integer02),(137),((loc_real05)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(671),((real392*0.02)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(47),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(48),((loc_real04)*1.0))
    call SaveInteger(hashtable001,(loc_integer02),(34),(loc_integer01))
    call SaveGroupHandle(hashtable001,(loc_integer02),(22),(group037))
    call SaveGroupHandle(hashtable001,(loc_integer02),(133),(Func0030()))
    set loc_trigger01=null
    set loc_group01=null
endfunction

// 86060 ~ 86114
function Func4125 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group01
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local real loc_real03=RMinBJ(2.5+(loc_integer02*0.02),10)
    local real loc_real04=225+40*(loc_integer02*0.02)
    local unit loc_unit04
    call SetUnitX(loc_unit01,loc_real01)
    call SetUnitY(loc_unit01,loc_real02)
    set integer538=GetUnitAbilityLevel(loc_unit01,'A1S7')
    set unit124=loc_unit01
    set unit396=loc_unit01
    set unit397=loc_unit02
    set unit398=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    set unit399=loc_unit03
    call SetUnitScale(loc_unit03,loc_real03,loc_real03,loc_real03)
    if GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER then
        if GetIssuedOrderId()==851971 then
            set loc_unit04=GetOrderTargetUnit()
            if Func0147(loc_unit01,loc_unit04)<425 and IsUnitAlly(loc_unit04,GetOwningPlayer(loc_unit01))==true and(IsUnitType(loc_unit04,UNIT_TYPE_HERO)==true or GetOwningPlayer(loc_unit04)==GetOwningPlayer(loc_unit01))then
                call Func4121(loc_unit01,(LoadGroupHandle(hashtable001,(loc_integer01),(22))),loc_unit04)
            endif
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A2XK' then
            call Func4124(loc_unit01,loc_unit02,integer539)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        set group037=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
        set loc_group01=Func0030()
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),100+25,Condition(function Func4123))
        call ForGroup(loc_group01,function Func4122)
        call Func0029(loc_group01)
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
        if loc_integer02==200 then
            call Func4124(loc_unit01,loc_unit02,integer539)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit03=null
    return false
endfunction

// 86116 ~ 86156
function Func4126 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h0C3',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
    local group loc_group01=Func0030()
    set real392=0
    set integer539=0
    set unit396=loc_unit01
    set group037=Func0030()
    set real392=1.5*RMaxBJ(133,GetUnitMoveSpeed(loc_unit01))
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),100+25,Condition(function Func4123))
    call ForGroup(loc_group01,function Func4122)
    call Func0029(loc_group01)
    set unit398=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call Func0193(unit398,'A0X6')
    call SetUnitInvulnerable(loc_unit01,true)
    call Func0193(loc_unit01,'Abun')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1YO',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1YQ',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1YR',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1S7',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2XK',true)
    call Func0193(loc_unit01,'A2XK')
    call SetUnitTimeScale(loc_unit03,2)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4125))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(unit398))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit03))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(group037))
    set loc_trigger01=null
    set loc_group01=null
endfunction

// 86158 ~ 86163
function Func4127 takes nothing returns boolean
    if GetSpellAbilityId()=='A1S7' then
        call Func4126()
    endif
    return false
endfunction

// 86165 ~ 86171
function Func4128 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4127))
    call Func0132('A0X6')
    set loc_trigger01=null
endfunction
