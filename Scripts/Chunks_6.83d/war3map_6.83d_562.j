
// 65400 ~ 65406
function Func3052 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0193(loc_unit03,'A0VT')
    call SetUnitAbilityLevel(loc_unit03,'A0VT',loc_integer01)
    call IssueTargetOrder(loc_unit03,"drunkenhaze",loc_unit02)
    set loc_unit03=null
endfunction

// 65408 ~ 65440
function Func3053 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(193)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(3000)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(3001)))
    local integer loc_integer04=loc_integer03*25/3
    local real loc_real03
    local real loc_real04
    local integer loc_integer05=GetTriggerEvalCount(loc_trigger01)
    if loc_integer05>loc_integer04/3 then
        call SaveReal(hashtable001,(loc_integer01),(193),((loc_real02*0.98)*1.0))
    endif
    if loc_integer05>loc_integer04 or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if GetTriggerEventId()!=EVENT_UNIT_DEATH then
            call Func3052(loc_unit01,loc_unit02,loc_integer02)
        endif
    else
        set loc_real03=Func0126(GetUnitX(loc_unit02)+loc_real02*Cos(loc_real01))
        set loc_real04=Func0129(GetUnitY(loc_unit02)+loc_real02*Sin(loc_real01))
        call Func0180(loc_real03,loc_real04,150)
        call SetUnitPosition(loc_unit02,loc_real03,loc_real04)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 65442 ~ 65457
function Func3054 takes unit loc_unit01,unit loc_unit02,integer loc_integer01,integer loc_integer02,integer loc_integer03 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer04=GetHandleId(loc_trigger01)
    local real loc_real01=Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01))
    call Func0115(loc_unit01,loc_unit02,1,loc_integer03*40)
    call SaveUnitHandle(hashtable001,(loc_integer04),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer04),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer04),(13),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer04),(193),((6)*1.0))
    call SaveInteger(hashtable001,(loc_integer04),(3000),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer04),(3001),(loc_integer02))
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3053))
    set loc_trigger01=null
endfunction

// 65459 ~ 65464
function Func3055 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group002)==false and Func0098(GetEnumUnit())==false then
        call GroupAddUnit(group002,GetEnumUnit())
        call Func3054(unit124,GetEnumUnit(),integer022,integer023,integer024)
    endif
endfunction

// 65466 ~ 65518
function Func3056 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(66)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(67)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(3000)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(3001)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(3002)))
    local real loc_real04=GetUnitX(loc_unit01)
    local real loc_real05=GetUnitY(loc_unit01)
    local group loc_group02
    if Func0149(loc_real04,loc_real05,loc_real02,loc_real03)<100 then
        set loc_real04=loc_real02
        set loc_real05=loc_real03
    else
        set loc_real04=loc_real04+33*Cos(loc_real01)
        set loc_real05=loc_real05+33*Sin(loc_real01)
    endif
    call SetUnitX(loc_unit01,Func0126(loc_real04))
    call SetUnitY(loc_unit01,Func0129(loc_real05))
    set loc_group02=Func0030()
    set unit124=loc_unit01
    set group002=loc_group01
    set integer022=loc_integer02
    set integer023=loc_integer03
    set integer024=loc_integer04
    call GroupEnumUnitsInRange(loc_group02,loc_real04,loc_real05,200,Condition(function Func0305))
    call ForGroup(loc_group02,function Func3055)
    call Func0029(loc_group02)
    if(loc_real04==loc_real02 and loc_real05==loc_real03)or GetTriggerEvalCount(loc_trigger01)>35 then
        set loc_group02=Func0030()
        set unit124=loc_unit01
        set group002=loc_group01
        set integer022=loc_integer02
        set integer023=loc_integer03
        set integer024=loc_integer04
        call GroupEnumUnitsInRange(loc_group02,loc_real04,loc_real05,250,Condition(function Func0305))
        call ForGroup(loc_group02,function Func3055)
        call Func0029(loc_group02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit01)
        call Func0029(loc_group01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 65520 ~ 65543
function Func3057 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local location loc_location01=GetSpellTargetLoc()
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=Atan2(loc_real02-GetUnitY(loc_unit01),loc_real01-GetUnitX(loc_unit01))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'n01X',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real03*bj_RADTODEG)
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3056))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(66),((GetUnitX(loc_unit01)+1000*Cos(loc_real03))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(67),((GetUnitY(loc_unit01)+1000*Sin(loc_real03))*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(Func0030()))
    call SaveInteger(hashtable001,(loc_integer01),(3000),((LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3000)))))
    call SaveInteger(hashtable001,(loc_integer01),(3001),((LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3001)))))
    call SaveInteger(hashtable001,(loc_integer01),(3002),((LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3002)))))
    call RemoveLocation(loc_location01)
    set loc_trigger01=null
    set loc_location01=null
    set loc_unit01=null
endfunction

// 65545 ~ 65550
function Func3058 takes nothing returns boolean
    if GetSpellAbilityId()=='A0VM' then
        call Func3057()
    endif
    return false
endfunction

// 65552 ~ 65558
function Func3059 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3058))
    call Func0134('A0VT',GetRandomReal(1,25))
    set loc_trigger01=null
endfunction
