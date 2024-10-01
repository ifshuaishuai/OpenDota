
// 51650 ~ 51667
function Func2230 takes unit loc_unit01,integer loc_integer01,real loc_real01 returns nothing
    local integer loc_integer02=GetHeroAgi(loc_unit01,false)
    local integer loc_integer03=GetHeroStr(loc_unit01,false)
    local real loc_real02=GetUnitState(loc_unit01,UNIT_STATE_MANA)
    if loc_integer01==0 then
        if loc_real02>=loc_real01 and loc_integer02>2 and Func0194(loc_unit01)==false then
            call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real02-loc_real01)
            call SetHeroAgi(loc_unit01,loc_integer02-2,true)
            call SetHeroStr(loc_unit01,loc_integer03+2,true)
        endif
    elseif loc_integer01==1 then
        if loc_real02>=loc_real01 and loc_integer03>2 and Func0194(loc_unit01)==false then
            call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real02-loc_real01)
            call SetHeroAgi(loc_unit01,loc_integer02+2,true)
            call SetHeroStr(loc_unit01,loc_integer03-2,true)
        endif
    endif
endfunction

// 51669 ~ 51678
function Func2231 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0KX')
    call Func2230(loc_unit01,1,30.0/loc_integer02)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 51680 ~ 51689
function Func2232 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0KX')
    call Func2230(loc_unit01,0,30.0/loc_integer02)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 51691 ~ 51755
function Func2233 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(226)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0KX')
    local integer reals001=(LoadInteger(hashtable001,(loc_integer01),(227)))
    local real loc_real01=1.0/loc_integer02
    if loc_integer02==4 then
        set loc_real01=0.2
    endif
    if GetIssuedOrderId()==852549 then
        if loc_trigger02!=null then
            call FlushChildHashtable(hashtable001,(GetHandleId(loc_trigger02)))
            call Func0035(loc_trigger02)
        endif
        set loc_trigger02=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger02,loc_real01,true)
        call TriggerAddCondition(loc_trigger02,Condition(function Func2231))
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger02)),(14),(loc_unit01))
        call SaveTriggerHandle(hashtable001,(loc_integer01),(226),(loc_trigger02))
        call SaveInteger(hashtable001,(loc_integer01),(227),(GetIssuedOrderId()))
        call UnitAddAbility(loc_unit01,'A22L')
        call UnitRemoveAbility(loc_unit01,'A22T')
    elseif GetIssuedOrderId()==852546 then
        if loc_trigger02!=null then
            call FlushChildHashtable(hashtable001,(GetHandleId(loc_trigger02)))
            call Func0035(loc_trigger02)
        endif
        set loc_trigger02=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger02,loc_real01,true)
        call TriggerAddCondition(loc_trigger02,Condition(function Func2232))
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger02)),(14),(loc_unit01))
        call SaveTriggerHandle(hashtable001,(loc_integer01),(226),(loc_trigger02))
        call SaveInteger(hashtable001,(loc_integer01),(227),(GetIssuedOrderId()))
        call UnitAddAbility(loc_unit01,'A22T')
        call UnitRemoveAbility(loc_unit01,'A22L')
    elseif GetIssuedOrderId()==852550 then
        if loc_trigger02!=null then
            call FlushChildHashtable(hashtable001,(GetHandleId(loc_trigger02)))
            call Func0035(loc_trigger02)
        endif
        call SaveTriggerHandle(hashtable001,(loc_integer01),(226),(null))
        call SaveInteger(hashtable001,(loc_integer01),(227),(GetIssuedOrderId()))
        call UnitRemoveAbility(loc_unit01,'A22L')
        call UnitRemoveAbility(loc_unit01,'A22T')
    elseif GetIssuedOrderId()==852547 then
        if loc_trigger02!=null then
            call FlushChildHashtable(hashtable001,(GetHandleId(loc_trigger02)))
            call Func0035(loc_trigger02)
        endif
        call SaveTriggerHandle(hashtable001,(loc_integer01),(226),(null))
        call SaveInteger(hashtable001,(loc_integer01),(227),(GetIssuedOrderId()))
        call UnitRemoveAbility(loc_unit01,'A22L')
        call UnitRemoveAbility(loc_unit01,'A22T')
    elseif GetIssuedOrderId()==852548 and reals001!=852546 and reals001!=852546 then
        call Func2230(loc_unit01,1,30*loc_real01)
    elseif GetIssuedOrderId()==852545 and reals001!=852546 and reals001!=852546 then
        call Func2230(loc_unit01,0,30*loc_real01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_trigger02=null
    return false
endfunction

// 51757 ~ 51780
function Func2234 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02=GetUnitAbilityLevel(GetTriggerUnit(),'A0KX')
    if loc_integer02==1 then
        call SetHeroAgi(loc_unit01,GetHeroAgi(loc_unit01,false)+3,true)
        call SetHeroStr(loc_unit01,GetHeroStr(loc_unit01,false)+3,true)
    else
        call SetHeroAgi(loc_unit01,GetHeroAgi(loc_unit01,false)+1,true)
        call SetHeroStr(loc_unit01,GetHeroStr(loc_unit01,false)+1,true)
    endif
    if loc_integer02==1 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call Func0193(loc_unit01,'A0KW')
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_ORDER)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2233))
        call SaveTriggerHandle(hashtable001,(loc_integer01),(226),(null))
    else
        call SetUnitAbilityLevel(loc_unit01,'A0KW',loc_integer02)
    endif
    set loc_trigger01=null
endfunction

// 51782 ~ 51787
function Func2235 takes nothing returns boolean
    if GetLearnedSkill()=='A0KX' and IsUnitIllusion(GetTriggerUnit())==false then
        call Func2234()
    endif
    return false
endfunction

// 51789 ~ 51794
function Func2236 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2235))
    set loc_trigger01=null
endfunction
