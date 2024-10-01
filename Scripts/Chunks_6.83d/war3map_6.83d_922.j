
// 93851 ~ 93860
function Func4540 takes nothing returns boolean
    if IsUnitInGroup(GetFilterUnit(),group046)==false and(GetUnitTypeId(GetFilterUnit())=='o01X' or GetUnitTypeId(GetFilterUnit())=='o020')and GetFilterUnit()!=unit427 then
        call GroupAddUnit(group046,GetFilterUnit())
        set integer567=integer567+1
        if GetUnitTypeId(GetFilterUnit())=='o01X' then
            call KillUnit(GetFilterUnit())
        endif
    endif
    return false
endfunction

// 93862 ~ 93873
function Func4541 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group046)==false then
        call GroupAddUnit(group046,GetEnumUnit())
        call Func0115(unit426,GetEnumUnit(),1,real418)
        if integer568==1 then
            call Func0365(unit426,GetEnumUnit(),0.25+0.5*integer566)
        endif
        if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true and((LoadInteger(hashtable001,(GetHandleId((GetEnumUnit()))),((809))))==1)then
            set unit428=GetEnumUnit()
        endif
    endif
endfunction

// 93875 ~ 93968
function Func4542 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real06
    local real loc_real07
    local boolean loc_boolean01=false
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local group loc_group02
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03=GetHeroStr(loc_unit01,true)
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(810)))
    if loc_unit03!=null then
        set loc_real01=GetUnitX(loc_unit03)
        set loc_real02=GetUnitY(loc_unit03)
    endif
    set loc_real03=bj_DEGTORAD*Func0169(GetUnitX(loc_unit02),GetUnitY(loc_unit02),loc_real01,loc_real02)
    set loc_real06=loc_real04+(real417)*0.03*Cos(loc_real03)
    set loc_real07=loc_real05+(real417)*0.03*Sin(loc_real03)
    if Func0149(loc_real06,loc_real07,loc_real01,loc_real02)<(5+(real417)*0.03)then
        set loc_real06=loc_real01
        set loc_real07=loc_real02
        set loc_boolean01=true
    endif
    set loc_real06=Func0126(loc_real06)
    set loc_real07=Func0129(loc_real07)
    set group046=loc_group01
    set unit426=loc_unit01
    set integer566=GetUnitAbilityLevel(loc_unit01,'A2UU')
    set real418=125
    set unit428=null
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4306))))==1)==true or GetTriggerEventId()==EVENT_UNIT_DEATH or GetUnitAbilityLevel(loc_unit02,'B08V')>0 or((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4336))))==1)==true or(loc_unit03==null and GetTriggerEvalCount(loc_trigger01)>200)then
        set loc_boolean01=true
    else
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl",loc_real06,loc_real07))
        if GetUnitTypeId(loc_unit02)=='o01X' or GetUnitTypeId(loc_unit02)=='o020' then
            set integer568=1
            call SetUnitPosition(loc_unit02,loc_real06,loc_real07)
            call SetUnitX(loc_unit02,Func0126(loc_real06))
            call SetUnitY(loc_unit02,Func0129(loc_real07))
        else
            set integer568=0
            call SetUnitX(loc_unit02,Func0126(loc_real06))
            call SetUnitY(loc_unit02,Func0129(loc_real07))
        endif
        call Func0180(loc_real06,loc_real07,150)
        call SaveReal(hashtable001,(loc_integer01),(23),((loc_real06)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(24),((loc_real07)*1.0))
        set loc_group02=Func0030()
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group02,loc_real06,loc_real07,200+25,Condition(function Func0305))
        call GroupRemoveUnit(loc_group02,loc_unit02)
        call ForGroup(loc_group02,function Func4541)
        call Func0029(loc_group02)
        if unit428!=null and integer568==1 then
            set loc_group02=Func0030()
            set unit427=null
            set real009=9999
            call GroupEnumUnitsInRange(loc_group02,GetUnitX(unit428),GetUnitY(unit428),600+25,Condition(function Func4504))
            call Func0029(loc_group02)
            if unit427!=null then
                set loc_unit03=unit427
                call SaveUnitHandle(hashtable001,(loc_integer01),(810),(loc_unit03))
                set loc_boolean01=false
            endif
        endif
        set loc_group02=null
    endif
    if loc_boolean01 then
        if GetUnitTypeId(loc_unit02)!='o01X' then
            call SetUnitPathing(loc_unit02,true)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func0029(loc_group01)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4335)),(2))
        if GetTriggerEventId()!=EVENT_UNIT_DEATH then
            if IsPlayerAlly(GetOwningPlayer(loc_unit01),GetOwningPlayer(loc_unit02))==false then
                call Func0115(unit426,loc_unit02,1,real418)
            endif
        endif
    endif
    set loc_unit02=null
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit01=null
    return false
endfunction
