
// 92555 ~ 92590
function Func4472 takes nothing returns nothing
    if Func0275(GetEnumUnit())then
        return
    endif
    if integer560==1 then
        set integer561='A2M9'
    elseif integer560==2 then
        set integer561='A2MA'
    elseif integer560==3 then
        set integer561='A2LN'
    elseif integer560==4 then
        set integer561='A2M8'
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),integer561)==0 then
        call Func0193(GetEnumUnit(),integer561)
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),integer561,false)
        call UnitMakeAbilityPermanent(GetEnumUnit(),true,'ACes')
        if integer561=='A2M9' then
            call UnitMakeAbilityPermanent(GetEnumUnit(),true,'A2M4')
        elseif integer561=='A2MA' then
            call UnitMakeAbilityPermanent(GetEnumUnit(),true,'A2M5')
        elseif integer561=='A2LN' then
            call UnitMakeAbilityPermanent(GetEnumUnit(),true,'A2M6')
        elseif integer561=='A2M8' then
            call UnitMakeAbilityPermanent(GetEnumUnit(),true,'A2M7')
        elseif integer561=='A2NP' then
            call UnitMakeAbilityPermanent(GetEnumUnit(),true,'A2NM')
        elseif integer561=='A2NS' then
            call UnitMakeAbilityPermanent(GetEnumUnit(),true,'A2NL')
        elseif integer561=='A2NR' then
            call UnitMakeAbilityPermanent(GetEnumUnit(),true,'A2NN')
        elseif integer561=='A2NQ' then
            call UnitMakeAbilityPermanent(GetEnumUnit(),true,'A2NO')
        endif
    endif
endfunction

// 92592 ~ 92633
function Func4473 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(442)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2LM')
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(340)))
    local group loc_group02=Func0030()
    local group loc_group03=Func0030()
    local group loc_group04=Func0030()
    set integer560=loc_integer02
    if(TimerGetElapsed(timer001))>loc_real03 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call ForGroup(loc_group01,function Func4471)
        call Func0029(loc_group01)
        call Func0029(loc_group02)
        call Func0029(loc_group03)
        call Func0029(loc_group04)
        return false
    endif
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group03,loc_real01,loc_real02,275+25,Condition(function Func0338))
    call GroupEnumUnitsInRange(loc_group04,loc_real01,loc_real02,275+144,Condition(function Func0323))
    call GroupAddGroup(loc_group03,loc_group02)
    call GroupAddGroup(loc_group04,loc_group02)
    call Func0029(loc_group03)
    call Func0029(loc_group04)
    call GroupRemoveGroup(loc_group02,loc_group01)
    call ForGroup(loc_group01,function Func4471)
    call ForGroup(loc_group02,function Func4472)
    call SaveGroupHandle(hashtable001,(loc_integer01),(340),(loc_group02))
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 92635 ~ 92666
function Func4474 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local integer loc_integer02
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2LM')
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4473))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveGroupHandle(hashtable001,(loc_integer01),(340),(Func0030()))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(442),(((TimerGetElapsed(timer001))+3+0.5*loc_integer03)*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffect("war3mapImported\\MagneticField04.mdl",loc_real01,loc_real02)))
    set loc_integer02=0
    loop
        exitwhen loc_integer02>5
        call SetPlayerAbilityAvailable(players003[loc_integer02],'A2M9',false)
        call SetPlayerAbilityAvailable(players004[loc_integer02],'A2M9',false)
        call SetPlayerAbilityAvailable(players003[loc_integer02],'A2MA',false)
        call SetPlayerAbilityAvailable(players004[loc_integer02],'A2MA',false)
        call SetPlayerAbilityAvailable(players003[loc_integer02],'A2MA',false)
        call SetPlayerAbilityAvailable(players004[loc_integer02],'A2LN',false)
        call SetPlayerAbilityAvailable(players003[loc_integer02],'A2M8',false)
        call SetPlayerAbilityAvailable(players004[loc_integer02],'A2M8',false)
        set loc_integer02=loc_integer02+1
    endloop
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 92668 ~ 92673
function Func4475 takes nothing returns boolean
    if GetSpellAbilityId()=='A2LM' then
        call Func4474()
    endif
    return false
endfunction

// 92675 ~ 92680
function Func4476 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4475))
    set loc_trigger01=null
endfunction
