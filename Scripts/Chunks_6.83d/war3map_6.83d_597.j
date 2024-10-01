
// 68431 ~ 68494
function Func3210 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(374)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(233)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(12)))
    local unit loc_unit04
    local group loc_group01
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local integer loc_integer05=(LoadInteger(hashtable001,(loc_integer01),(720)))
    if loc_integer05>0 then
        set loc_integer05=loc_integer05-1
        call SaveInteger(hashtable001,(loc_integer01),(720),(loc_integer05))
        return false
    endif
    if Func0149(GetUnitX(loc_unit03),GetUnitY(loc_unit03),GetUnitX(loc_unit02),GetUnitY(loc_unit02))>20 then
        set loc_real01=Func0169(GetUnitX(loc_unit03),GetUnitY(loc_unit03),GetUnitX(loc_unit02),GetUnitY(loc_unit02))
        call SetUnitFacing(loc_unit03,loc_real01)
        set loc_real02=GetUnitX(loc_unit03)+13.5*Cos(loc_real01*bj_DEGTORAD)
        set loc_real03=GetUnitY(loc_unit03)+13.5*Sin(loc_real01*bj_DEGTORAD)
        call SetUnitX(loc_unit03,loc_real02)
        call SetUnitY(loc_unit03,loc_real03)
    else
        if Func0194(loc_unit02)==false then
            set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
            call Func0193(loc_unit04,'A091')
            call SetUnitAbilityLevel(loc_unit04,'A091',loc_integer02)
            call IssueTargetOrder(loc_unit04,"frostnova",loc_unit02)
        endif
        if loc_integer03>loc_integer04 then
            call RemoveUnit(loc_unit03)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        else
            set loc_group01=Func0030()
            set unit124=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),600,Condition(function Func0303))
            call GroupRemoveUnit(loc_group01,loc_unit02)
            set loc_unit02=GroupPickRandomUnit(loc_group01)
            call Func0029(loc_group01)
            if loc_unit02==null then
                call RemoveUnit(loc_unit03)
                call FlushChildHashtable(hashtable001,(loc_integer01))
                call Func0035(loc_trigger01)
            else
                call SaveInteger(hashtable001,(loc_integer01),(720),(10))
                call SaveInteger(hashtable001,(loc_integer01),(233),(loc_integer03+1))
                call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
            endif
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_group01=null
    return false
endfunction

// 68496 ~ 68522
function Func3211 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A05T')
    local integer loc_integer02=10
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer03=GetHandleId(loc_trigger01)
    local unit loc_unit03
    if GetSpellAbilityId()=='A08H' then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A08H')+1
        set loc_integer02=100000
    endif
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e009',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer03),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer03),(374),(loc_unit03))
    call SaveInteger(hashtable001,(loc_integer03),(5),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer03),(233),(1))
    call SaveInteger(hashtable001,(loc_integer03),(12),(loc_integer02))
    call SaveInteger(hashtable001,(loc_integer03),(720),(0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3210))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_trigger01=null
endfunction

// 68524 ~ 68529
function Func3212 takes nothing returns boolean
    if GetSpellAbilityId()=='A05T' or GetSpellAbilityId()=='A08H' then
        call Func3211()
    endif
    return false
endfunction

// 68531 ~ 68536
function Func3213 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3212))
    set loc_trigger01=null
endfunction
