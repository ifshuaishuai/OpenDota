
// 49557 ~ 49578
function Func2101 takes unit loc_unit01,unit loc_unit02 returns nothing
    local real loc_real01=GetRandomReal(0,360)
    local real loc_real02=GetUnitX(loc_unit02)+50*Cos(loc_real01*bj_DEGTORAD)
    local real loc_real03=GetUnitY(loc_unit02)+50*Sin(loc_real01*bj_DEGTORAD)
    local real loc_real04=GetRandomReal(200,225)
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4256))))==1)==false then
        call SetUnitPosition(loc_unit01,loc_real02,loc_real03)
    else
        call SetUnitX(loc_unit01,loc_real02)
        call SetUnitY(loc_unit01,loc_real03)
    endif
    call SetUnitFacing(loc_unit01,bj_RADTODEG*Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01)))
    call SetUnitAnimation(loc_unit01,"Attack")
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl",loc_unit01,"chest"))
    if Func0058(GetOwningPlayer(loc_unit02))==false and IsUnitType(loc_unit02,UNIT_TYPE_ANCIENT)==false then
        set loc_real04=99999
    endif
    call Func0115(loc_unit01,loc_unit02,2,loc_real04)
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4256))))==1)==false then
        call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
    endif
endfunction

// 49580 ~ 49592
function Func2102 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call Func2101(loc_unit01,loc_unit02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 49594 ~ 49604
function Func2103 takes unit loc_unit01 returns nothing
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),450,Condition(function Func0354))
    set unit124=GroupPickRandomUnit(loc_group01)
    if unit124!=null then
        call Func2101(loc_unit01,unit124)
    endif
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 49606 ~ 49645
function Func2104 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(216)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(325)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(28)))
    local unit loc_unit03
    if loc_integer04>loc_integer02 then
        call KillUnit(loc_unit02)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A05G',true)
        call SetUnitPathing(loc_unit01,true)
        call SetUnitInvulnerable(loc_unit01,false)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4253)),(2))
        call SetUnitVertexColor(loc_unit01,255,255,255,255)
    else
        call SaveInteger(hashtable001,(loc_integer01),(28),(loc_integer04+1))
        call Func2103(loc_unit01)
        if unit124==null then
            call KillUnit(loc_unit02)
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A05G',true)
            call SetUnitPathing(loc_unit01,true)
            call SetUnitInvulnerable(loc_unit01,false)
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4253)),(2))
            call SetUnitVertexColor(loc_unit01,255,255,255,255)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit03=null
    set loc_unit02=null
    return false
endfunction

// 49647 ~ 49694
function Func2105 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0M1')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A05G')
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local integer loc_integer04=3
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'o00D',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1AX')
        if loc_integer01==1 then
            set loc_integer04=6
        elseif loc_integer01==2 then
            set loc_integer04=9
        elseif loc_integer01==3 then
            set loc_integer04=12
        endif
    elseif loc_integer01==2 then
        set loc_integer04=6
    elseif loc_integer01==3 then
        set loc_integer04=9
    endif
    call SetPlayerAbilityAvailable(loc_player01,'A05G',false)
    call SetUnitVertexColor(loc_unit01,255,255,255,125)
    call SetUnitPathing(loc_unit01,false)
    call SetUnitInvulnerable(loc_unit01,true)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4253)),(1))
    call SaveUnitHandle(hashtable001,(loc_integer02),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2102))
    set loc_trigger01=CreateTrigger()
    set loc_integer02=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer02),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit03))
    call SaveInteger(hashtable001,(loc_integer02),(216),(loc_integer04))
    call SaveInteger(hashtable001,(loc_integer02),(325),(loc_integer03))
    call SaveInteger(hashtable001,(loc_integer02),(28),(2))
    call SaveEffectHandle(hashtable001,(loc_integer02),(32),(AddSpecialEffectTarget("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile_mini.mdl",loc_unit01,"weapon")))
    call TriggerRegisterTimerEvent(loc_trigger01,0.4,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2104))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    set loc_player01=null
endfunction

// 49696 ~ 49701
function Func2106 takes nothing returns boolean
    if GetSpellAbilityId()=='A0M1' or GetSpellAbilityId()=='A1AX' then
        call Func2105()
    endif
    return false
endfunction
