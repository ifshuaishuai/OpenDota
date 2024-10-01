
// 60647 ~ 60649
function Func2779 takes nothing returns boolean
    return(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and GetUnitAbilityLevel(GetFilterUnit(),'B008')==0 and GetUnitAbilityLevel(GetFilterUnit(),'Bcyc')==0 and GetUnitAbilityLevel(GetFilterUnit(),'Bcy2')==0
endfunction

// 60651 ~ 60658
function Func2780 takes integer loc_integer01,integer loc_integer02 returns nothing
    local integer loc_integer03=1
    loop
        exitwhen loc_integer03>loc_integer02
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(2700+loc_integer03))))
        set loc_integer03=loc_integer03+1
    endloop
endfunction

// 60660 ~ 60663
function Func2781 takes nothing returns nothing
    call UnitWakeUp(GetEnumUnit())
    call IssueTargetOrder(GetEnumUnit(),"attack",unit323)
endfunction

// 60665 ~ 60699
function Func2782 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(220)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(365)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if GetTriggerEventId()!=EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER and GetTriggerEventId()!=EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER and GetTriggerEventId()!=EVENT_PLAYER_UNIT_ISSUED_ORDER then
        set loc_integer04=loc_integer04+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer04))
        if loc_integer04==(8+2*loc_integer03)or Func0194(loc_unit01)then
            call UnitRemoveAbility(loc_unit01,'A0I5')
            call Func0029(loc_group01)
            call Func2780(loc_integer01,loc_integer02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        else
            call DisableTrigger(loc_trigger01)
            set unit323=loc_unit01
            call ForGroup(loc_group01,function Func2781)
            call EnableTrigger(loc_trigger01)
        endif
    else
        if IsUnitInGroup(GetTriggerUnit(),loc_group01)==true and UnitIsSleeping(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'B008')==0 and GetIssuedOrderId()!=851973 and boolean145==false then
            call DisableTrigger(loc_trigger01)
            call IssueTargetOrder(GetTriggerUnit(),"attack",loc_unit01)
            call EnableTrigger(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit01=null
    return false
endfunction
