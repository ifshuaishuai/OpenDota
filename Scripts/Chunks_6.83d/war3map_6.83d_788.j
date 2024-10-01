
// 82131 ~ 82154
function Func3972 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real04=loc_real01+12*Cos(loc_real03)
    local real loc_real05=loc_real02+12*Sin(loc_real03)
    call SetUnitX(loc_unit02,loc_real04)
    call SetUnitY(loc_unit02,loc_real05)
    call SaveReal(hashtable001,(loc_integer01),(23),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((loc_real05)*1.0))
    if GetTriggerEvalCount(loc_trigger01)>25 then
        call Func0180(loc_real04,loc_real05,100)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 82156 ~ 82181
function Func3973 takes unit loc_unit01,unit loc_unit02,real loc_real01,real loc_real02,real loc_real03 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A271')
    call SetUnitPosition(loc_unit02,GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03*bj_DEGTORAD)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(23),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((GetUnitY(loc_unit02))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3972))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",loc_unit02,"chest")))
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3971))
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A270',false)
    call Func0193(loc_unit02,'A270')
    set loc_trigger01=null
endfunction

// 82183 ~ 82194
function Func3974 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group031)==false then
        if Func0147(unit381,GetEnumUnit())<24 or RAbsBJ(Cos(Func0168(unit381,GetEnumUnit())-real374))<0.26 then
            call GroupAddUnit(group031,GetEnumUnit())
            if Sin((Func0168(unit381,GetEnumUnit())-real374)*bj_DEGTORAD)<0 then
                call Func3973(unit380,GetEnumUnit(),real372,real373,real374-90)
            else
                call Func3973(unit380,GetEnumUnit(),real372,real373,real374+90)
            endif
        endif
    endif
endfunction

// 82196 ~ 82233
function Func3975 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local group loc_group02
    if GetTriggerEvalCount(loc_trigger01)>125 then
        call KillUnit(loc_unit02)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_real02=loc_real02+8*Cos(loc_real01)
        set loc_real03=loc_real03+8*Sin(loc_real01)
        call SetUnitX(loc_unit02,loc_real02)
        call SetUnitY(loc_unit02,loc_real03)
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real02)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real03)*1.0))
        set unit124=loc_unit01
        set real372=loc_real02
        set real373=loc_real03
        set real374=loc_real01*bj_RADTODEG
        set group031=loc_group01
        set unit380=loc_unit01
        set unit381=loc_unit02
        set loc_group02=Func0030()
        call GroupEnumUnitsInRange(loc_group02,loc_real02,loc_real03,225,Condition(function Func0305))
        call ForGroup(loc_group02,function Func3974)
        call Func0029(loc_group02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 82235 ~ 82255
function Func3976 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local real loc_real03=Atan2(loc_real02-GetUnitY(loc_unit01),loc_real01-GetUnitX(loc_unit01))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A271')
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0DA',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real03*bj_RADTODEG)
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3975))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 82257 ~ 82262
function Func3977 takes nothing returns boolean
    if GetSpellAbilityId()=='A271' then
        call Func3976()
    endif
    return false
endfunction

// 82264 ~ 82269
function Func3978 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3977))
    set loc_trigger01=null
endfunction
