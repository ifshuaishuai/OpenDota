
// 7686 ~ 7727
function Func0437 takes unit loc_unit01 returns nothing
    local real loc_real01=1
    local integer loc_integer01=UnitInventorySize(loc_unit01)
    local integer loc_integer02=0
    local item loc_item01
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A03P')
    if loc_integer03>0 then
        if loc_integer03==1 then
            set loc_real01=loc_real01*0.8
        elseif loc_integer03==2 then
            set loc_real01=loc_real01*0.7
        elseif loc_integer03==3 then
            set loc_real01=loc_real01*0.6
        elseif loc_integer03==4 then
            set loc_real01=loc_real01*0.5
        endif
    endif
    set loc_integer03=GetUnitAbilityLevel(loc_unit01,'A0MX')
    if loc_integer03>0 then
        set loc_real01=loc_real01*(1-(0.05+0.05*loc_integer03))
    endif
    loop
        exitwhen loc_integer02>loc_integer01
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
        if Func0399(loc_item01)==integer224 then
            set loc_real01=loc_real01*0.65
        elseif Func0399(loc_item01)==integer128 or Func0399(loc_item01)==integer257 then
            set loc_real01=loc_real01*0.75
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer03=R2I((1-loc_real01)/0.05)
    if loc_integer03>0 then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2V2',false)
        call Func0193(loc_unit01,'A2V2')
        call UnitMakeAbilityPermanent(loc_unit01,true,'A2V3')
        call SetUnitAbilityLevel(loc_unit01,'A2V3',loc_integer03)
    else
        call UnitRemoveAbility(loc_unit01,'A2V2')
    endif
    set loc_item01=null
endfunction

// 7729 ~ 7739
function Func0438 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    call Func0437(loc_unit01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 7741 ~ 7748
function Func0439 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0438))
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    set loc_trigger01=null
endfunction

// 7750 ~ 7759
function Func0440 takes nothing returns boolean
    if GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and(Func0399(GetManipulatedItem())==integer224 or Func0399(GetManipulatedItem())==integer128 or Func0399(GetManipulatedItem())==integer257)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
            call Func0437(GetTriggerUnit())
        else
            call Func0439(GetTriggerUnit())
        endif
    endif
    return false
endfunction
