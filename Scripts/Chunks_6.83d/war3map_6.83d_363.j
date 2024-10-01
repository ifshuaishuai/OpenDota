
// 52246 ~ 52248
function Func2266 takes nothing returns boolean
    return(Func0098(GetFilterUnit())==false and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and GetUnitAbilityLevel(GetFilterUnit(),'B03J')==0 and GetFilterUnit()!=unit294
endfunction

// 52250 ~ 52288
function Func2267 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(300)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(299)))
    local unit loc_unit03
    local group loc_group01=Func0030()
    set unit124=loc_unit02
    set unit294=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),1425,Condition(function Func2266))
    set loc_unit01=GroupPickRandomUnit(loc_group01)
    if loc_unit01==null then
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),1425,Condition(function Func0314))
        set loc_unit01=GroupPickRandomUnit(loc_group01)
    endif
    call Func0029(loc_group01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    if GetTriggerEvalCount(loc_trigger01)>loc_integer02 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        if loc_integer04=='A2KQ' then
            set loc_integer04='A2KR'
        endif
        call Func0193(loc_unit03,loc_integer04)
        call SetUnitAbilityLevel(loc_unit03,loc_integer04,loc_integer03)
        call IssueTargetOrder(loc_unit03,"acidbomb",loc_unit01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_group01=null
    return false
endfunction

// 52290 ~ 52317
function Func2268 takes integer loc_integer01 returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetSpellAbilityId()
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,loc_integer02)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer04=GetHandleId(loc_trigger01)
    if loc_integer01==2 then
        call Func0173(GetObjectName('n0K7'),5,GetTriggerUnit(),0.03,255,0,0,255)
    elseif loc_integer01==3 then
        call Func0173(GetObjectName('n0JT'),5,GetTriggerUnit(),0.03,255,0,0,255)
    elseif loc_integer01==4 then
        call Func0173(GetObjectName('n0K8'),5,GetTriggerUnit(),0.03,255,0,0,255)
    elseif loc_integer01==5 then
        call Func0173(GetObjectName('n0JO'),5,GetTriggerUnit(),0.03,255,0,0,255)
    endif
    set loc_integer01=loc_integer01-1
    call SaveUnitHandle(hashtable001,(loc_integer04),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer04),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer04),(300),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer04),(5),(loc_integer03))
    call SaveInteger(hashtable001,(loc_integer04),(299),(loc_integer02))
    call TriggerRegisterTimerEvent(loc_trigger01,0.4,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2267))
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
endfunction
