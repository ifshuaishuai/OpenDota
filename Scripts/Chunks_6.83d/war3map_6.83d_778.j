
// 81120 ~ 81125
function Func3933 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group029)==false then
        call GroupAddUnit(group029,GetEnumUnit())
        call Func0115(unit376,GetEnumUnit(),7,real370)
    endif
endfunction

// 81127 ~ 81170
function Func3934 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real02=Func0147(loc_unit01,loc_unit02)
    local real loc_real03=GetUnitX(loc_unit02)+real369*0.02*Cos(loc_real01*bj_DEGTORAD)
    local real loc_real04=GetUnitY(loc_unit02)+real369*0.02*Sin(loc_real01*bj_DEGTORAD)
    local group loc_group02
    local real loc_real05=100+350*loc_real02/900
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A306')
    local real loc_real06
    if loc_integer02>0 then
        set loc_real06=190+100*loc_integer02
    else
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A307')
        set loc_real06=200+125*loc_integer02
    endif
    if loc_real02>900 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func0029(loc_group01)
        call KillUnit(loc_unit02)
    else
        call SetUnitX(loc_unit02,loc_real03)
        call SetUnitY(loc_unit02,loc_real04)
        set unit124=loc_unit01
        set unit376=loc_unit01
        set group029=loc_group01
        set real370=loc_real06
        set loc_group02=Func0030()
        call GroupEnumUnitsInRange(loc_group02,loc_real03,loc_real04,loc_real05,Condition(function Func0305))
        call ForGroup(loc_group02,function Func3933)
        call Func0029(loc_group02)
        set loc_group02=null
    endif
    set loc_group01=null
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 81172 ~ 81189
function Func3935 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0EW',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local real loc_real03=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01,loc_real02)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3934))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(Func0030()))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03)*1.0))
    set loc_unit01=null
    set loc_trigger01=null
    set loc_unit02=null
endfunction

// 81191 ~ 81196
function Func3936 takes nothing returns boolean
    if GetSpellAbilityId()=='A306' or GetSpellAbilityId()=='A307' then
        call Func3935()
    endif
    return false
endfunction

// 81198 ~ 81203
function Func3937 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3936))
    set loc_trigger01=null
endfunction
