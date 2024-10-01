
// 91748 ~ 91751
function Func4426 takes nothing returns nothing
    call Func0365(unit417,GetEnumUnit(),1.5)
    call Func0115(unit417,GetEnumUnit(),2,50+50*integer557)
endfunction

// 91753 ~ 91791
function Func4427 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real04=GetUnitX(loc_unit01)
    local real loc_real05=GetUnitY(loc_unit01)
    local group loc_group01=Func0030()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2F4')
    set loc_real04=Func0126(loc_real04+32*Cos(loc_real01))
    set loc_real05=Func0129(loc_real05+32*Sin(loc_real01))
    if Func0149(loc_real04,loc_real05,loc_real02,loc_real03)<40 then
        set loc_real04=loc_real02
        set loc_real05=loc_real03
    endif
    call SetUnitX(loc_unit01,loc_real04)
    call SetUnitY(loc_unit01,loc_real05)
    call SetUnitFacing(loc_unit01,loc_real01*bj_RADTODEG)
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real04,loc_real05,125+25,Condition(function Func0305))
    if FirstOfGroup(loc_group01)!=null or(loc_real04==loc_real02 and loc_real05==loc_real03)or GetTriggerEvalCount(loc_trigger01)>200 or GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call DestroyEffect(AddSpecialEffect("war3mapImported\\BlackDragonMissile.mdx",loc_real04,loc_real05))
        call GroupEnumUnitsInRange(loc_group01,loc_real04,loc_real05,300+25,Condition(function Func0305))
        set integer557=loc_integer02
        set unit417=loc_unit01
        if GetTriggerEventId()!=EVENT_WIDGET_DEATH then
            call ForGroup(loc_group01,function Func4426)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 91793 ~ 91811
function Func4428 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=GetSpellTargetX()
    local real loc_real04=GetSpellTargetY()
    local real loc_real05=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)*bj_DEGTORAD
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4427))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real05)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(47),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(48),((loc_real04)*1.0))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 91813 ~ 91818
function Func4429 takes nothing returns boolean
    if GetSpellAbilityId()=='A2F4' then
        call Func4428()
    endif
    return false
endfunction

// 91820 ~ 91825
function Func4430 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4429))
    set loc_trigger01=null
endfunction
