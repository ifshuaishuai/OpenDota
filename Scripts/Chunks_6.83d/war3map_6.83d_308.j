
// 48330 ~ 48335
function Func2026 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group002)==false then
        call GroupAddUnit(group002,GetEnumUnit())
        call Func0115(unit124,GetEnumUnit(),1,real009)
    endif
endfunction

// 48337 ~ 48384
function Func2027 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local group loc_group02
    local real loc_real02
    local real loc_real03
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        set unit124=CreateUnit(GetOwningPlayer(loc_unit01),'h06O',GetUnitX((LoadUnitHandle(hashtable001,(loc_integer01),(14)))),GetUnitY((LoadUnitHandle(hashtable001,(loc_integer01),(14)))),0)
        call SetUnitScale(unit124,2.5,2.5,2.5)
        call KillUnit(unit124)
        call SetUnitPosition((LoadUnitHandle(hashtable001,(loc_integer01),(14))),GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        call ShowUnit((LoadUnitHandle(hashtable001,(loc_integer01),(14))),false)
        call ShowUnit((LoadUnitHandle(hashtable001,(loc_integer01),(14))),true)
        call SelectUnitAddForPlayer((LoadUnitHandle(hashtable001,(loc_integer01),(14))),GetOwningPlayer((LoadUnitHandle(hashtable001,(loc_integer01),(14)))))
        set units023[GetPlayerId(GetOwningPlayer(loc_unit01))]=null
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEvalCount(loc_trigger01)>120 then
        set units023[GetPlayerId(GetOwningPlayer(loc_unit01))]=null
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SetUnitScale(loc_unit01,2.5,2.5,2.5)
        call KillUnit(loc_unit01)
    else
        set loc_real02=GetUnitX(loc_unit01)
        set loc_real03=GetUnitY(loc_unit01)
        set loc_group02=Func0030()
        set group002=loc_group01
        set unit124=loc_unit01
        set real009=loc_integer02*70
        call GroupEnumUnitsInRange(loc_group02,loc_real02,loc_real03,225+25,Condition(function Func0318))
        call ForGroup(loc_group02,function Func2026)
        call Func0029(loc_group02)
        call SetUnitX(loc_unit01,Func0126(loc_real02+15*Cos(loc_real01*bj_DEGTORAD)))
        call SetUnitY(loc_unit01,Func0129(loc_real03+15*Sin(loc_real01*bj_DEGTORAD)))
    endif
    set loc_trigger01=null
    set loc_group01=null
    set loc_group02=null
    set loc_unit01=null
    return false
endfunction

// 48386 ~ 48417
function Func2028 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=Func0030()
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=GetLocationX(loc_location01)
    local real loc_real04=GetLocationY(loc_location01)
    local real loc_real05=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0S9')
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h06O',loc_real01,loc_real02,loc_real05)
    call Func0184(sound014,loc_real01,loc_real02)
    call Func0193(GetTriggerUnit(),'A0SA')
    set units023[GetPlayerId(GetOwningPlayer(loc_unit01))]=loc_unit02
    call SetUnitScale(loc_unit02,3.5,3.5,3.5)
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real05)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.025,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2027))
    call RemoveLocation(loc_location01)
    set loc_trigger01=null
    set loc_unit02=null
    set loc_group01=null
    set loc_unit01=null
    set loc_location01=null
endfunction
