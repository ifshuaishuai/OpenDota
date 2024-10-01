
// 61574 ~ 61576
function Func2826 takes nothing returns nothing
    call Func0115(unit326,GetEnumUnit(),1,integer501*10)
endfunction

// 61578 ~ 61602
function Func2827 takes unit loc_unit01,integer loc_integer01,integer loc_integer02 returns nothing
    local group loc_group01=Func0030()
    local group loc_group02=Func0030()
    local integer loc_integer03=0
    set unit124=loc_unit01
    loop
        exitwhen loc_integer03>loc_integer02
        call GroupEnumUnitsInRange(loc_group02,(LoadReal(hashtable001,(loc_integer01),(2300+loc_integer03))),(LoadReal(hashtable001,(loc_integer01),(2500+loc_integer03))),225,Condition(function Func0305))
        call GroupAddGroup(loc_group02,loc_group01)
        call GroupClear(loc_group02)
        set loc_integer03=loc_integer03+1
    endloop
    call Func0029(loc_group02)
    if FirstOfGroup(loc_group01)!=null then
        set unit326=loc_unit01
        set integer501=GetUnitAbilityLevel(loc_unit01,'A19Z')
        set unit327=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',0,0,0)
        call Func0193(unit327,'A19U')
        call SetUnitAbilityLevel(unit327,'A19U',integer501)
        call ForGroup(loc_group01,function Func2826)
    endif
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_group02=null
endfunction

// 61604 ~ 61646
function Func2828 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(24)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03
    local real loc_real03
    local real loc_real04
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(loc_trigger01)>360 then
        set loc_integer03=0
        loop
            exitwhen loc_integer03>loc_integer02
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(2700+loc_integer03))))
            set loc_integer03=loc_integer03+1
        endloop
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_real03=GetUnitX(loc_unit01)
        set loc_real04=GetUnitY(loc_unit01)
        if boolean025==true then
            call Func2825(loc_unit01)
        endif
        if Func0149(loc_real03,loc_real04,loc_real01,loc_real02)>125 then
            set loc_integer02=loc_integer02+1
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
            call SaveReal(hashtable001,(loc_integer01),(23),((loc_real03)*1.0))
            call SaveReal(hashtable001,(loc_integer01),(24),((loc_real04)*1.0))
            call SaveEffectHandle(hashtable001,(loc_integer01),(2700+loc_integer02),(AddSpecialEffect("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",loc_real03,loc_real04)))
            call SaveReal(hashtable001,(loc_integer01),(2300+loc_integer02),((loc_real03)*1.0))
            call SaveReal(hashtable001,(loc_integer01),(2500+loc_integer02),((loc_real04)*1.0))
        endif
        if ModuloInteger(GetTriggerEvalCount(loc_trigger01),10)==0 then
            set boolean146=true
            call Func2827(loc_unit01,loc_integer01,loc_integer02)
            set boolean146=false
        endif
        call Func0180(GetUnitX(loc_unit01),GetUnitY(loc_unit01),100)
    endif
    return false
endfunction

// 61648 ~ 61662
function Func2829 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2828))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveEffectHandle(hashtable001,(loc_integer01),(2700),(AddSpecialEffect("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01))))
    call SaveReal(hashtable001,(loc_integer01),(23),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((GetUnitY(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(2300),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(2500),((GetUnitY(loc_unit01))*1.0))
    set loc_unit01=null
    set loc_trigger01=null
endfunction
