
// 65158 ~ 65171
function Func3035 takes unit loc_unit01,unit loc_unit02,integer loc_integer01,integer loc_integer02 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local unit loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local real loc_real01=0.5+0.3*loc_integer02
    if loc_integer02==7 then
        set loc_real01=2.5
    endif
    call Func0193(loc_unit03,'A0XK')
    call SetUnitAbilityLevel(loc_unit03,'A0XK',loc_integer02)
    call IssueTargetOrder(loc_unit03,"cyclone",loc_unit02)
    call Func0117(loc_unit04,loc_unit02,1,70+(loc_integer01+loc_integer01+loc_integer01)*15.0,loc_real01)
    set loc_unit03=null
    set loc_unit04=null
endfunction

// 65173 ~ 65178
function Func3036 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group002)==false then
        call GroupAddUnit(group002,GetEnumUnit())
        call Func3035(unit124,GetEnumUnit(),integer022,integer023)
    endif
endfunction

// 65180 ~ 65218
function Func3037 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(66)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(67)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(137)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(3000)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(3001)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local real loc_real04=GetUnitX(loc_unit01)+25*Cos(loc_real03)
    local real loc_real05=GetUnitY(loc_unit01)+25*Sin(loc_real03)
    local group loc_group02=Func0030()
    local real loc_real06=Func0149(loc_real04,loc_real05,loc_real01,loc_real02)
    if loc_real06<=30 then
        set loc_real04=loc_real01
        set loc_real05=loc_real02
    endif
    call SetUnitX(loc_unit01,Func0126(loc_real04))
    call SetUnitY(loc_unit01,Func0126(loc_real05))
    set unit124=loc_unit01
    set group002=loc_group01
    set integer022=loc_integer02
    set integer023=loc_integer03
    call GroupEnumUnitsInRange(loc_group02,loc_real04,loc_real05,200+25,Condition(function Func0305))
    call ForGroup(loc_group02,function Func3036)
    call Func0029(loc_group02)
    if loc_real06<=30 or GetTriggerEvalCount(loc_trigger01)>125 then
        call Func0029(loc_group01)
        call KillUnit(loc_unit01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 65220 ~ 65245
function Func3038 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local location loc_location01=GetSpellTargetLoc()
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=Atan2(loc_real02-GetUnitY(loc_unit01),loc_real01-GetUnitX(loc_unit01))
    local unit loc_unit02
    set loc_real01=GetUnitX(loc_unit01)
    set loc_real02=GetUnitY(loc_unit01)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'n01U',loc_real01,loc_real02,loc_real03*bj_RADTODEG)
    call TriggerRegisterTimerEvent(loc_trigger01,0.025,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3037))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(66),((loc_real01+(400+400.0*(LoadInteger(hashtable001,(GetHandleId((loc_unit01))),(3000))))*Cos(loc_real03))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(67),((loc_real02+(400+400.0*(LoadInteger(hashtable001,(GetHandleId((loc_unit01))),(3000))))*Sin(loc_real03))*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(3000),((LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3000)))))
    call SaveInteger(hashtable001,(loc_integer01),(3001),((LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3001)))))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03)*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(Func0030()))
    call RemoveLocation(loc_location01)
    set loc_trigger01=null
    set loc_location01=null
    set loc_unit01=null
endfunction

// 65247 ~ 65252
function Func3039 takes nothing returns boolean
    if GetSpellAbilityId()=='A0VK' then
        call Func3038()
    endif
    return false
endfunction

// 65254 ~ 65260
function Func3040 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3039))
    call Func0134('A0XK',GetRandomReal(1,25))
    set loc_trigger01=null
endfunction
