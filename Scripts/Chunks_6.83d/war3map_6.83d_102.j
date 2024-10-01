
// 22386 ~ 22389
function Func0894 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    return Func0112(loc_integer01)
endfunction

// 22391 ~ 22393
function Func0895 takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(),player014)and Func0194(GetFilterUnit())==false and(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true or IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==true or Func0894(GetFilterUnit()))and Func0893(GetFilterUnit())==false
endfunction

// 22395 ~ 22403
function Func0896 takes unit loc_unit01 returns boolean
    local group loc_group01=Func0030()
    local boolean loc_boolean01
    set player014=GetOwningPlayer(loc_unit01)
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1050,Condition(function Func0895))
    set loc_boolean01=FirstOfGroup(loc_group01)!=null
    call Func0029(loc_group01)
    return loc_boolean01
endfunction

// 22405 ~ 22462
function Func0897 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01
    local integer loc_integer02
    local boolean loc_boolean01
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetAttacker()==loc_unit01 then
            call UnitRemoveAbility(loc_unit01,'A20L')
            call UnitRemoveAbility(loc_unit01,'A20S')
            call UnitRemoveAbility(loc_unit01,'B0E2')
            call UnitRemoveAbility(loc_unit01,'B09Y')
            call Func0412(loc_unit01)
            if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4302))))==1)==false then
                call UnitSetUsesAltIcon(loc_unit01,false)
            endif
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4420)),(2))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        set loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(671)))
        set loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
        set loc_group01=Func0030()
        set player014=GetOwningPlayer(loc_unit01)
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1050,Condition(function Func0895))
        if GetUnitAbilityLevel(loc_unit01,'B09Y')>0 then
            call SaveBoolean(hashtable001,(loc_integer01),(671),(true))
        elseif loc_boolean01 then
            call SaveBoolean(hashtable001,(loc_integer01),(671),(false))
            call UnitRemoveAbility(loc_unit01,'A20L')
            call Func0193(loc_unit01,'A20L')
        endif
        if loc_integer02>350 or FirstOfGroup(loc_group01)!=null then
            call UnitRemoveAbility(loc_unit01,'A20L')
            call UnitRemoveAbility(loc_unit01,'A20S')
            call UnitRemoveAbility(loc_unit01,'B0E2')
            call UnitRemoveAbility(loc_unit01,'B09Y')
            call Func0412(loc_unit01)
            if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4302))))==1)==false and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4421))))==1)==false then
                call UnitSetUsesAltIcon(loc_unit01,false)
            endif
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4420)),(2))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
        call Func0029(loc_group01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 22464 ~ 22493
function Func0898 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    if Func0058(GetOwningPlayer(loc_unit01))and Func0896(loc_unit01)==false then
        if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(loc_unit01))==false and Func0107(GetLocalPlayer())==false then
            call UnitSetUsesAltIcon(loc_unit01,true)
            call Func0413(loc_unit01)
        endif
        call Func0193(loc_unit01,'A20L')
        call UnitMakeAbilityPermanent(loc_unit01,true,'A20L')
        if Func0275(loc_unit01)==false then
            call Func0193(loc_unit01,'A20S')
            call UnitMakeAbilityPermanent(loc_unit01,true,'A20S')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A20S',false)
        endif
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveInteger(hashtable001,(loc_integer01),(34),(0))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveBoolean(hashtable001,(loc_integer01),(671),(false))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\SmokeOfDeceit.mdx",loc_unit01,"chest")))
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4420)),(1))
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerRegisterTimerEvent(loc_trigger01,.1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0897))
        set loc_trigger01=null
    endif
    set loc_unit01=null
endfunction

// 22495 ~ 22503
function Func0899 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1225,Condition(function Func0328))
    call ForGroup(loc_group01,function Func0898)
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 22505 ~ 22509
function Func0900 takes nothing returns nothing
    if GetSpellAbilityId()=='A206' then
        call Func0899()
    endif
endfunction
