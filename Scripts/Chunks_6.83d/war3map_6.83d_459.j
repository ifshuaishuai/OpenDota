
// 58537 ~ 58543
function Func2645 takes nothing returns boolean
    if(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitInGroup(GetFilterUnit(),group016)==false then
        call GroupAddUnit(group016,GetFilterUnit())
        call Func0115(unit318,GetFilterUnit(),7,real321)
    endif
    return false
endfunction

// 58545 ~ 58583
function Func2646 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(7)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(133)))
    local group loc_group02
    if GetTriggerEvalCount(loc_trigger01)>10 then
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set group016=loc_group01
        set unit318=loc_unit01
        set real321=loc_integer02*20+10
        set unit124=loc_unit01
        set loc_group02=Func0030()
        call GroupEnumUnitsInRange(loc_group02,loc_real02,loc_real03,325,Condition(function Func2645))
        call Func0029(loc_group02)
        set loc_group02=null
        call Func2644(loc_unit02,loc_real02,loc_real03,loc_integer02)
        if ModuloInteger(GetTriggerEvalCount(loc_trigger01),2)==0 then
            call KillUnit(CreateUnit(GetOwningPlayer(loc_unit01),'e02A',loc_real02,loc_real03,0))
        endif
        set loc_real02=Func0126(loc_real02+200*Cos(loc_real01*bj_DEGTORAD))
        set loc_real03=Func0129(loc_real03+200*Sin(loc_real01*bj_DEGTORAD))
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real02)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real03)*1.0))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    return false
endfunction

// 58585 ~ 58613
function Func2647 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=GetLocationX(loc_location01)
    local real loc_real04=GetLocationY(loc_location01)
    local real loc_real05=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A17O')
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call Func0193(loc_unit02,'A0AP')
    call SetUnitAbilityLevel(loc_unit02,'A0AP',loc_integer02)
    call RemoveLocation(loc_location01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real05)*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(133),(Func0030()))
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2646))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_location01=null
    set loc_unit02=null
endfunction

// 58615 ~ 58620
function Func2648 takes nothing returns boolean
    if GetSpellAbilityId()=='A17O' then
        call Func2647()
    endif
    return false
endfunction

// 58622 ~ 58627
function Func2649 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2648))
    set loc_trigger01=null
endfunction
