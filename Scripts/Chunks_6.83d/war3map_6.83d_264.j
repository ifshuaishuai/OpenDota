
// 45930 ~ 45940
function Func1857 takes unit loc_unit01,unit loc_unit02 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0Z8')
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1CV')
    endif
    call Func0193(loc_unit03,'A0Z9')
    call SetUnitAbilityLevel(loc_unit03,'A0Z9',loc_integer01)
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    set loc_unit03=null
endfunction

// 45942 ~ 45947
function Func1858 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group002)==false then
        call GroupAddUnit(group002,GetEnumUnit())
        call Func1857(unit124,GetEnumUnit())
    endif
endfunction

// 45949 ~ 45994
function Func1859 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(18)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit03
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(16)))
    local group loc_group02
    local real loc_real01=200
    if loc_unit02==null then
        set loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(700+loc_integer02+1-loc_integer03)))
        call RemoveUnit(loc_unit03)
    else
        set loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(700+loc_integer03)))
        call SetUnitX(loc_unit01,GetUnitX(loc_unit03))
        call SetUnitY(loc_unit01,GetUnitY(loc_unit03))
        call RemoveUnit(loc_unit03)
        if loc_integer03==loc_integer02 then
            set loc_real01=225
        endif
        set loc_group02=Func0030()
        set unit124=loc_unit01
        set group002=loc_group01
        call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01,Condition(function Func0312))
        call ForGroup(loc_group02,function Func1858)
        call Func0029(loc_group02)
    endif
    if loc_integer03==(loc_integer02)then
        if loc_unit02!=null then
            call PauseUnit(loc_unit02,false)
        endif
        call Func0180(GetUnitX(loc_unit01),GetUnitY(loc_unit01),100)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 45996 ~ 46059
function Func1860 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(12)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local real loc_real02=GetUnitX(loc_unit01)+loc_integer03*50*Cos(loc_real01*bj_DEGTORAD)
    local real loc_real03=GetUnitY(loc_unit01)+loc_integer03*50*Sin(loc_real01*bj_DEGTORAD)
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(15)))
    local unit loc_unit02
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(11)))
    local integer loc_integer04=GetHandleId(loc_trigger02)
    local group loc_group01=Func0030()
    local unit loc_unit03=null
    local integer loc_integer05='u00V'
    local real loc_real04=125
    if loc_integer03==1 then
        set loc_real04=100
    endif
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,loc_real04,Condition(function Func0289))
    call GroupRemoveUnit(loc_group01,loc_unit01)
    set loc_unit03=GroupPickRandomUnit(loc_group01)
    call Func0029(loc_group01)
    if loc_unit03!=null or loc_integer03==loc_integer02 or loc_integer03==(loc_integer02-1)or loc_integer03==(loc_integer02-2)then
        set loc_integer05='u00U'
    endif
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer05,loc_real02,loc_real03,loc_real01)
    call SaveUnitHandle(hashtable001,(loc_integer04),(700+loc_integer03),(loc_unit02))
    if loc_unit03!=null then
        if(IsUnitAlly(loc_unit03,GetOwningPlayer(loc_unit01))==true and loc_boolean01==false)or((LoadInteger(hashtable001,(GetHandleId((loc_unit03))),((4259))))==1)==true then
            set loc_unit03=null
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if loc_unit03!=null and IsUnitAlly(loc_unit03,GetOwningPlayer(loc_unit01))==false then
            call PauseUnit(loc_unit03,true)
        endif
        call TriggerRegisterTimerEvent(loc_trigger02,0.5/loc_integer02,true)
        call TriggerAddCondition(loc_trigger02,Condition(function Func1859))
        call SaveInteger(hashtable001,(loc_integer04),(18),(loc_integer03))
        call SaveUnitHandle(hashtable001,(loc_integer04),(17),(loc_unit03))
        call SaveUnitHandle(hashtable001,(loc_integer04),(14),(loc_unit01))
        call SaveGroupHandle(hashtable001,(loc_integer04),(16),(Func0030()))
    elseif loc_integer03>loc_integer02 then
        set loc_unit03=null
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger02,0.5/loc_integer02,true)
        call TriggerAddCondition(loc_trigger02,Condition(function Func1859))
        call SaveInteger(hashtable001,(loc_integer04),(18),(loc_integer03))
        call SaveUnitHandle(hashtable001,(loc_integer04),(17),(loc_unit03))
        call SaveUnitHandle(hashtable001,(loc_integer04),(14),(loc_unit01))
        call SaveGroupHandle(hashtable001,(loc_integer04),(16),(Func0030()))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger02=null
    set loc_group01=null
    set loc_unit03=null
    return false
endfunction

// 46061 ~ 46090
function Func1861 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetLocationX(loc_location01),GetLocationY(loc_location01))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0Z8')
    local integer loc_integer03
    local integer loc_integer04
    local boolean loc_boolean01=true
    local trigger loc_trigger02=CreateTrigger()
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1CV')
        set loc_boolean01=true
    endif
    set loc_integer03=1500+500*loc_integer02
    set loc_integer04=loc_integer03/50
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real01)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(12),(loc_integer04))
    call SaveTriggerHandle(hashtable001,(loc_integer01),(11),(loc_trigger02))
    call SaveBoolean(hashtable001,(loc_integer01),(15),(loc_boolean01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.5/loc_integer04,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1860))
    call RemoveLocation(loc_location01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_location01=null
endfunction

// 46092 ~ 46097
function Func1862 takes nothing returns boolean
    if GetSpellAbilityId()=='A0Z8' or GetSpellAbilityId()=='A1CV' then
        call Func1861()
    endif
    return false
endfunction

// 46099 ~ 46104
function Func1863 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1862))
    set loc_trigger01=null
endfunction
