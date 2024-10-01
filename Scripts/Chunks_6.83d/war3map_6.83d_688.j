
// 74283 ~ 74286
function Func3542 takes nothing returns nothing
    call Func0115(unit360,GetEnumUnit(),1,110)
    call IssueTargetOrder(unit361,"slow",GetEnumUnit())
endfunction

// 74288 ~ 74317
function Func3543 takes unit loc_unit01,real loc_real01,real loc_real02,integer loc_integer01,integer loc_integer02 returns nothing
    local group loc_group01=Func0030()
    local real loc_real03
    local string loc_string01
    if loc_integer02==8 then
        set loc_real03=675
    elseif loc_integer02==9 then
        set loc_real03=700
    elseif loc_integer02==10 then
        set loc_real03=725
    else
        set loc_real03=250+50*loc_integer02
    endif
    if loc_integer02<4 then
        set loc_string01="war3mapImported\\EpiPulse_1_4.mdx"
    elseif loc_integer02<8 then
        set loc_string01="war3mapImported\\EpiPulse_5_8.mdx"
    else
        set loc_string01="war3mapImported\\EpiPulse_9_12.mdx"
    endif
    call DestroyEffect(AddSpecialEffect(loc_string01,loc_real01,loc_real02))
    set unit124=loc_unit01
    set unit360=loc_unit01
    set unit361=units029[GetPlayerId(GetOwningPlayer(loc_unit01))]
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,loc_real03,Condition(function Func0305))
    call ForGroup(loc_group01,function Func3542)
    call Func0029(loc_group01)
    call Func0218(0.03,false,loc_real01,loc_real02,150+100*loc_integer02,150+100*loc_integer02,72,0.03,512)
    set loc_group01=null
endfunction

// 74319 ~ 74352
function Func3544 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(24)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(15)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(25)))
    local integer loc_integer04=4+loc_integer02*2
    local real loc_real03=loc_real01
    local real loc_real04=loc_real02
    if loc_boolean01 then
        set loc_integer04=loc_integer04+2
    endif
    if loc_integer03>loc_integer04 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if loc_unit01!=null and Func0194(loc_unit01)==false then
            set loc_real03=GetUnitX(loc_unit01)
            set loc_real04=GetUnitY(loc_unit01)
        endif
        call Func3543(loc_unit01,loc_real03,loc_real04,loc_integer02,loc_integer03)
        call SaveInteger(hashtable001,(loc_integer01),(25),(loc_integer03+1))
        call SaveReal(hashtable001,(loc_integer01),(23),((loc_real03)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(24),((loc_real04)*1.0))
    endif
    set loc_trigger01=null
    set loc_player01=null
    set loc_unit01=null
    return false
endfunction

// 74354 ~ 74383
function Func3545 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A06R')
    local boolean loc_boolean01=false
    if loc_integer02==0 then
        set loc_boolean01=true
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1B4')
    endif
    if Func0056(loc_player01)then
        set units029[GetPlayerId(loc_player01)]=CreateUnit(players004[0],'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    else
        set units029[GetPlayerId(loc_player01)]=CreateUnit(players003[0],'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    endif
    call Func0193(units029[GetPlayerId(loc_player01)],'A17B')
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SavePlayerHandle(hashtable001,(loc_integer01),(54),(GetOwningPlayer(loc_unit01)))
    call SaveReal(hashtable001,(loc_integer01),(23),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((GetUnitY(loc_unit01))*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveInteger(hashtable001,(loc_integer01),(25),(2))
    call SaveBoolean(hashtable001,(loc_integer01),(15),(loc_boolean01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.35,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3544))
    call Func3543(loc_unit01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_integer02,1)
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 74385 ~ 74390
function Func3546 takes nothing returns boolean
    if GetSpellAbilityId()=='A06R' or GetSpellAbilityId()=='A1B4' then
        call Func3545()
    endif
    return false
endfunction

// 74392 ~ 74398
function Func3547 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_FINISH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3546))
    call Func0132('A17B')
    set loc_trigger01=null
endfunction
