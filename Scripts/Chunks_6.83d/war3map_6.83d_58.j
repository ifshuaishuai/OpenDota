
// 19017 ~ 19055
function Func0732 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    local integer loc_integer01=25
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(GetAttacker()))
    local integer loc_integer03=GetHandleId(loc_unit01)
    local real loc_real01=(TimerGetElapsed(timer001))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer03),(101)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer03),(99)))
    local boolean loc_boolean02=(LoadBoolean(hashtable001,(loc_integer03),(100)))
    local boolean loc_boolean03=loc_real01<loc_real02
    local boolean loc_boolean04=false
    if IsUnitType(loc_unit01,UNIT_TYPE_MELEE_ATTACKER)==false then
        set loc_integer01=10
    endif
    if GetRandomInt(0,100)<loc_integer01 then
        set loc_boolean04=true
    endif
    if GetUnitAbilityLevel(loc_unit01,'A0JJ')>0 or GetUnitAbilityLevel(loc_unit01,'A081')>0 or GetUnitAbilityLevel(loc_unit01,'A0G5')>0 or GetUnitAbilityLevel(loc_unit01,'A09E')>0 then
        call UnitRemoveAbility(loc_unit01,'A174')
        set loc_unit01=null
        return
    endif
    if loc_boolean01 and loc_boolean03==false and loc_boolean02==false then
        call SaveReal(hashtable001,(loc_integer03),(101),((loc_real01+2)*1.0))
        if loc_boolean04==false then
            call SaveBoolean(hashtable001,(loc_integer03),(100),(true))
        endif
    elseif loc_boolean03 or loc_boolean02 then
        call UnitRemoveAbility(loc_unit01,'A174')
        call SaveBoolean(hashtable001,(loc_integer03),(99),(false))
        call SaveBoolean(hashtable001,(loc_integer03),(100),(false))
    endif
    if loc_boolean04 then
        call Func0193(loc_unit01,'A174')
        call UnitMakeAbilityPermanent(loc_unit01,true,'A175')
        call SaveBoolean(hashtable001,(loc_integer03),(99),(true))
    endif
    set loc_unit01=null
endfunction

// 19057 ~ 19063
function Func0733 takes unit loc_unit01 returns unit
    if IsUnitType(loc_unit01,UNIT_TYPE_HERO)or GetUnitAbilityLevel(loc_unit01,'A04R')==0 then
        return loc_unit01
    else
        return units001[GetPlayerId(GetOwningPlayer(loc_unit01))]
    endif
endfunction

// 19065 ~ 19076
function Func0734 takes nothing returns boolean
    if IsUnitType(GetKillingUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitAlly(GetDyingUnit(),GetOwningPlayer(GetKillingUnit()))==false then
        if GetUnitTypeId(GetTriggerUnit())=='n00J' then
            call Func0115(GetDyingUnit(),Func0733(GetKillingUnit()),1,550)
        elseif GetUnitTypeId(GetTriggerUnit())=='n00A' then
            call Func0115(GetDyingUnit(),Func0733(GetKillingUnit()),1,675)
        elseif GetUnitTypeId(GetTriggerUnit())=='n006' then
            call Func0115(GetDyingUnit(),Func0733(GetKillingUnit()),1,800)
        endif
    endif
    return false
endfunction

// 19078 ~ 19111
function Func0735 takes nothing returns boolean
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=1
    if Func0394(loc_unit01,integers089[integer136])!=null then
        set loc_integer01=2
    endif
    if Func0393(loc_unit01,integers089[integer069],GetManipulatedItem())!=null then
        set loc_integer01=3
    endif
    if Func0393(loc_unit01,integers089[integer244],GetManipulatedItem())!=null then
        set loc_integer01=4
    endif
    if Func0393(loc_unit01,integers089[integer162],GetManipulatedItem())!=null or Func0393(loc_unit01,integers089[integer163],GetManipulatedItem())!=null or Func0393(loc_unit01,integers089[integer164],GetManipulatedItem())!=null then
        set loc_integer01=5
    endif
    if Func0393(loc_unit01,integers089[integer254],GetManipulatedItem())!=null then
        set loc_integer01=6
    endif
    if Func0393(loc_unit01,integers089[integer135],GetManipulatedItem())!=null then
        set loc_integer01=7
    endif
    if Func0393(loc_unit01,integers089[integer161],GetManipulatedItem())!=null then
        set loc_integer01=8
    endif
    if Func0393(loc_unit01,integers089[integer184],GetManipulatedItem())!=null then
        call UnitAddAbility(loc_unit01,'A0V0')
        call SetUnitAbilityLevel(loc_unit01,'A0V0',loc_integer01)
        call UnitMakeAbilityPermanent(loc_unit01,true,'A0V0')
    else
        call UnitRemoveAbility(loc_unit01,'A0V0')
    endif
    set loc_unit01=null
    return false
endfunction

// 19113 ~ 19144
function Func0736 takes nothing returns boolean
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=1
    if Func0394(loc_unit01,integers089[integer136])!=null then
        set loc_integer01=2
    endif
    if Func0394(loc_unit01,integers089[integer069])!=null then
        set loc_integer01=3
    endif
    if Func0394(loc_unit01,integers089[integer244])!=null then
        set loc_integer01=4
    endif
    if Func0394(loc_unit01,integers089[integer162])!=null or Func0394(loc_unit01,integers089[integer163])!=null or Func0394(loc_unit01,integers089[integer164])!=null then
        set loc_integer01=5
    endif
    if Func0394(loc_unit01,integers089[integer254])!=null then
        set loc_integer01=6
    endif
    if Func0393(loc_unit01,integers089[integer135],GetManipulatedItem())!=null then
        set loc_integer01=7
    endif
    if Func0394(loc_unit01,integers089[integer161])!=null then
        set loc_integer01=8
    endif
    if Func0394(loc_unit01,integers089[integer184])!=null then
        call UnitAddAbility(loc_unit01,'A0V0')
        call SetUnitAbilityLevel(loc_unit01,'A0V0',loc_integer01)
        call UnitMakeAbilityPermanent(loc_unit01,true,'A0V0')
    endif
    set loc_unit01=null
    return false
endfunction

// 19146 ~ 19207
function Func0737 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_DROP_ITEM then
        if Func0399(GetManipulatedItem())==integer238 or Func0399(GetManipulatedItem())==integer240 then
            call UnitRemoveAbility(loc_unit01,'A2QD')
        endif
        if Func0399(GetManipulatedItem())==integer221 then
            call UnitRemoveAbility(loc_unit01,'A1BW')
        endif
        if Func0399(GetManipulatedItem())==integer235 then
            call UnitRemoveAbility(loc_unit01,'A0G3')
            call UnitRemoveAbility(loc_unit01,'A09M')
            call UnitRemoveAbility(loc_unit01,'A0UX')
            call UnitRemoveAbility(loc_unit01,'A2KL')
        endif
        if Func0399(GetManipulatedItem())==integer237 or Func0399(GetManipulatedItem())==integer239 then
            call UnitRemoveAbility(loc_unit01,'A2QD')
            call UnitRemoveAbility(loc_unit01,'A0TC')
            call UnitRemoveAbility(loc_unit01,'A0UK')
        endif
        if Func0399(GetManipulatedItem())==integer141 then
            call UnitRemoveAbility(loc_unit01,'A2YE')
            call UnitRemoveAbility(loc_unit01,'A2YF')
            call UnitRemoveAbility(loc_unit01,'A319')
        endif
    endif
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
        if Func0399(GetManipulatedItem())==integer238 or Func0399(GetManipulatedItem())==integer240 then
            call UnitAddAbility(loc_unit01,'A2QD')
            call UnitMakeAbilityPermanent(loc_unit01,true,'A2QD')
        endif
        if Func0399(GetManipulatedItem())==integer221 then
            call UnitAddAbility(loc_unit01,'A1BW')
            call UnitMakeAbilityPermanent(loc_unit01,true,'A1BW')
        endif
        if Func0399(GetManipulatedItem())==integer141 then
            call Func0193(loc_unit01,'A319')
            if IsUnitType(loc_unit01,UNIT_TYPE_MELEE_ATTACKER)==true then
                call Func0193(loc_unit01,'A2YE')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2YE',false)
            else
                call Func0193(loc_unit01,'A2YF')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2YF',false)
            endif
        endif
        if Func0399(GetManipulatedItem())==integer235 then
            call Func0193(loc_unit01,'A0G3')
            call Func0193(loc_unit01,'A09M')
            call Func0193(loc_unit01,'A0UX')
            call Func0193(loc_unit01,'A2KL')
        endif
        if Func0399(GetManipulatedItem())==integer237 or Func0399(GetManipulatedItem())==integer239 then
            call UnitAddAbility(loc_unit01,'A2QD')
            call UnitMakeAbilityPermanent(loc_unit01,true,'A2QD')
            call UnitAddAbility(loc_unit01,'A0TC')
            call UnitMakeAbilityPermanent(loc_unit01,true,'A0TC')
            call UnitAddAbility(loc_unit01,'A0UK')
            call UnitMakeAbilityPermanent(loc_unit01,true,'A0UK')
        endif
    endif
    set loc_unit01=null
endfunction

// 19209 ~ 19214
function Func0738 takes nothing returns boolean
    if GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and(Func0399(GetManipulatedItem())==integer237 or Func0399(GetManipulatedItem())==integer238 or Func0399(GetManipulatedItem())==integer239 or Func0399(GetManipulatedItem())==integer240 or Func0399(GetManipulatedItem())==integer221 or Func0399(GetManipulatedItem())==integer235 or Func0399(GetManipulatedItem())==integer141)then
        call Func0737()
    endif
    return false
endfunction

// 19216 ~ 19248
function Func0739 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer array loc_integers01
    local integer loc_integer02=loc_integer01
    local integer loc_integer03=1
    local integer loc_integer04=0
    local integer loc_integer05
    if loc_integer01<1 then
        call UnitRemoveAbility(loc_unit01,integers113[0])
        call UnitRemoveAbility(loc_unit01,integers113[1])
        call UnitRemoveAbility(loc_unit01,integers113[2])
        call UnitRemoveAbility(loc_unit01,integers113[3])
        call UnitRemoveAbility(loc_unit01,integers113[4])
        return
    endif
    loop
        exitwhen loc_integer03==0
        set loc_integer03=loc_integer02/2
        set loc_integers01[loc_integer04]=loc_integer02-loc_integer03*2
        set loc_integer02=loc_integer03
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer05=4
    set loc_integer04=0
    loop
        exitwhen loc_integer04>loc_integer05
        if loc_integers01[loc_integer04]==1 then
            call Func0193(loc_unit01,integers113[loc_integer04])
        else
            call UnitRemoveAbility(loc_unit01,integers113[loc_integer04])
        endif
        set loc_integer04=loc_integer04+1
    endloop
endfunction

// 19250 ~ 19276
function Func0740 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local item loc_item01=(LoadItemHandle(hashtable001,(loc_integer01),(96)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local real loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-GetUnitState(loc_unit01,UNIT_STATE_LIFE)
    if GetTriggerEventId()==EVENT_UNIT_DROP_ITEM and GetManipulatedItem()==loc_item01 then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4298)),(2))
        call Func0739(loc_unit01,0)
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,Func0142(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-loc_real01,1))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()!=EVENT_UNIT_DROP_ITEM and loc_integer02<25 then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4298)),(1))
        set loc_integer02=loc_integer02+1
        call Func0739(loc_unit01,loc_integer02)
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,Func0142(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-loc_real01,1))
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
    else
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4298)),(2))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_item01=null
    return false
endfunction
