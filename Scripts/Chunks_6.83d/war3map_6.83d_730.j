
// 77119 ~ 77136
function Func3719 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    if GetTriggerEvalCount(loc_trigger01)>5 or GetUnitAbilityLevel(loc_unit02,'B0AQ')==0 or GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call Func0035(loc_trigger01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
    else
        call Func0115(loc_unit01,loc_unit02,1,30*loc_integer02-30)
        call Func0173(I2S(30*loc_integer02-30),3,loc_unit02,0.025,160,255,0,230)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 77138 ~ 77160
function Func3720 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local trigger loc_trigger01
    local integer loc_integer02
    call Func0193(loc_unit03,'A17N')
    call SetUnitAbilityLevel(loc_unit03,'A17N',loc_integer01)
    if IssueTargetOrder(loc_unit03,"shadowstrike",loc_unit02)then
        call Func0115(loc_unit01,loc_unit02,1,25*loc_integer01)
        call Func0173(I2S(25*loc_integer01)+"!",3,loc_unit02,0.025,160,255,0,230)
        if loc_integer01>1 then
            set loc_trigger01=CreateTrigger()
            set loc_integer02=GetHandleId(loc_trigger01)
            call TriggerRegisterTimerEvent(loc_trigger01,3,true)
            call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
            call TriggerAddCondition(loc_trigger01,Condition(function Func3719))
            call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
            call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
            call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
            set loc_trigger01=null
        endif
    endif
    set loc_unit03=null
endfunction

// 77162 ~ 77169
function Func3721 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    if IsUnitInGroup(loc_unit01,group002)==false then
        call Func3720(unit370,loc_unit01,integer525)
        call GroupAddUnit(group002,loc_unit01)
    endif
    set loc_unit01=null
endfunction

// 77171 ~ 77219
function Func3722 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local group loc_group02
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06=30
    local unit loc_unit03
    set integer525=loc_integer02
    if GetTriggerEvalCount(loc_trigger01)>28 then
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call ShowUnit(loc_unit01,false)
        call KillUnit(loc_unit01)
    else
        set loc_real02=GetUnitX(loc_unit01)
        set loc_real03=GetUnitY(loc_unit01)
        set loc_group02=Func0030()
        set group002=loc_group01
        set unit124=loc_unit02
        set unit370=loc_unit02
        call GroupEnumUnitsInRange(loc_group02,loc_real02,loc_real03,150,Condition(function Func0318))
        call ForGroup(loc_group02,function Func3721)
        call Func0029(loc_group02)
        set loc_real04=Func0126(loc_real02+loc_real06*Cos(loc_real01*bj_DEGTORAD))
        set loc_real05=Func0129(loc_real03+loc_real06*Sin(loc_real01*bj_DEGTORAD))
        call SetUnitX(loc_unit01,loc_real04)
        call SetUnitY(loc_unit01,loc_real05)
        if ModuloInteger(GetTriggerEvalCount(loc_trigger01),3)==0 then
            set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'o01W',loc_real04,loc_real05,0)
            call KillUnit(loc_unit03)
            set loc_unit03=null
        endif
    endif
    set loc_trigger01=null
    set loc_group01=null
    set loc_group02=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 77221 ~ 77248
function Func3723 takes nothing returns nothing
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
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A173')
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h07K',loc_real01,loc_real02,loc_real05)
    call Func0184(sound039,loc_real01,loc_real02)
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real05)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.025,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3722))
    call RemoveLocation(loc_location01)
    set loc_trigger01=null
    set loc_unit02=null
    set loc_group01=null
    set loc_unit01=null
    set loc_location01=null
endfunction

// 77250 ~ 77255
function Func3724 takes nothing returns boolean
    if GetSpellAbilityId()=='A173' then
        call Func3723()
    endif
    return false
endfunction

// 77257 ~ 77262
function Func3725 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3724))
    set loc_trigger01=null
endfunction
