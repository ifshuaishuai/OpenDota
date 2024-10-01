
// 42659 ~ 42667
function Func1666 takes nothing returns nothing
    local unit loc_unit01=unit267
    local unit loc_unit02=GetEnumUnit()
    local integer loc_integer01=integer460
    call Func0365(loc_unit01,loc_unit02,1.4)
    call Func0115(loc_unit01,loc_unit02,1,300+100*loc_integer01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 42669 ~ 42728
function Func1667 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local unit loc_unit02
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real02=GetUnitX(loc_unit01)
    local real loc_real03=GetUnitY(loc_unit01)
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(66)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(67)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real06=Func0126(loc_real04+13.33*loc_integer02*Cos(loc_real01))
    local real loc_real07=Func0129(loc_real05+13.33*loc_integer02*Sin(loc_real01))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local group loc_group02
    if loc_integer02<19 then
        call SetUnitVertexColor(loc_unit01,255,255,255,5+loc_integer02*10)
        set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(186)))
        call SetUnitVertexColor(loc_unit02,255,255,255,5+loc_integer02*10)
    elseif loc_integer02<125 then
        call SetUnitVertexColor(loc_unit01,255,255,255,190)
    elseif loc_integer02<150 then
    endif
    set loc_group02=Func0030()
    set group007=loc_group01
    set unit124=loc_unit01
    set unit267=loc_unit01
    set integer460=loc_integer03
    call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit01),GetUnitY(loc_unit01),425,Condition(function Func1665))
    call ForGroup(loc_group02,function Func1664)
    call Func0029(loc_group02)
    call SetUnitX(loc_unit01,loc_real06)
    call SetUnitY(loc_unit01,loc_real07)
    if loc_integer02==140 then
        set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(186)))
        call KillUnit(loc_unit02)
    elseif loc_integer02<140 then
        set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(186)))
        call SetUnitX(loc_unit02,loc_real06)
        call SetUnitY(loc_unit02,loc_real07)
    endif
    if loc_integer02==150 then
        set loc_group02=Func0030()
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group02,loc_real06,loc_real07,425+25,Condition(function Func0305))
        call ForGroup(loc_group02,function Func1666)
        call Func0029(loc_group02)
        call KillUnit(loc_unit01)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 42730 ~ 42787
function Func1668 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real03=GetLocationX(loc_location01)
    local real loc_real04=GetLocationY(loc_location01)
    local real loc_real05
    local real loc_real06
    local real loc_real07
    local real loc_real08
    local real loc_real09
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02
    local unit loc_unit02
    local unit loc_unit03
    local string loc_string01=""
    local integer loc_integer03='h06U'
    if GetRandomInt(0,5)==0 then
        set loc_integer03='h0DJ'
    endif
    if IsPlayerAlly(GetOwningPlayer(loc_unit01),GetLocalPlayer())or Func0107(GetLocalPlayer())then
        set loc_string01="war3mapImported\\Whirlpool.mdx"
    endif
    if loc_real03==GetUnitX(loc_unit01)and loc_real04==GetUnitY(loc_unit01)then
        set loc_real03=loc_real03+50*Cos(GetUnitFacing(loc_unit01)*bj_DEGTORAD)
        set loc_real04=loc_real04+50*Sin(GetUnitFacing(loc_unit01)*bj_DEGTORAD)
    endif
    set loc_real05=Atan2(loc_real04-loc_real02,loc_real03-loc_real01)
    set loc_real06=loc_real01-1000*Cos(loc_real05)
    set loc_real07=loc_real02-1000*Sin(loc_real05)
    set loc_real08=loc_real01+1000*Cos(loc_real05)
    set loc_real09=loc_real02+1000*Sin(loc_real05)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A11K')
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer03,loc_real06,loc_real07,Atan2(loc_real04-loc_real02,loc_real03-loc_real01)*bj_RADTODEG)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h06V',loc_real06,loc_real07,Atan2(loc_real04-loc_real02,loc_real03-loc_real01)*bj_RADTODEG)
    call SetUnitVertexColor(loc_unit02,255,255,255,0)
    call SetUnitPathing(loc_unit02,false)
    call RemoveLocation(loc_location01)
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real05)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(186),(loc_unit03))
    call SaveReal(hashtable001,(loc_integer01),(66),((loc_real06)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(67),((loc_real07)*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call DestroyEffect(AddSpecialEffect(loc_string01,Func0126(loc_real08),Func0129(loc_real09)))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1667))
    set loc_unit01=null
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_location01=null
endfunction

// 42789 ~ 42794
function Func1669 takes nothing returns boolean
    if GetSpellAbilityId()=='A11K' then
        call Func1668()
    endif
    return false
endfunction

// 42796 ~ 42802
function Func1670 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1669))
    call Func0132('A11L')
    set loc_trigger01=null
endfunction
