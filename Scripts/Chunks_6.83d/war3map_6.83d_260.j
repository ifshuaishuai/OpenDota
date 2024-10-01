
// 45498 ~ 45500
function Func1836 takes real loc_real01,real loc_real02,real loc_real03,real loc_real04 returns boolean
    return loc_real01<=loc_real02 and loc_real01<=loc_real03 and loc_real01<=loc_real04
endfunction

// 45502 ~ 45517
function Func1837 takes unit loc_unit01,real loc_real01,real loc_real02,real loc_real03 returns real
    local real loc_real04=GetUnitX(loc_unit01)
    local real loc_real05=GetUnitY(loc_unit01)
    local real loc_real06=Func0149(loc_real01-loc_real03,loc_real02,loc_real04,loc_real05)
    local real loc_real07=Func0149(loc_real01+loc_real03,loc_real02,loc_real04,loc_real05)
    local real loc_real08=Func0149(loc_real01,loc_real02+loc_real03,loc_real04,loc_real05)
    local real loc_real09=Func0149(loc_real01,loc_real02-loc_real03,loc_real04,loc_real05)
    if Func1836(loc_real06,loc_real07,loc_real09,loc_real08)then
        return 180.0
    elseif Func1836(loc_real07,loc_real06,loc_real09,loc_real08)then
        return 0.0
    elseif Func1836(loc_real09,loc_real07,loc_real06,loc_real08)then
        return 270.0
    endif
    return 90.0
endfunction

// 45519 ~ 45521
function Func1838 takes real loc_real01,real loc_real02,real loc_real03,real loc_real04,real loc_real05,real loc_real06,real loc_real07,real loc_real08 returns boolean
    return loc_real01<=loc_real02 and loc_real01<=loc_real03 and loc_real01<=loc_real04 and loc_real01<=loc_real05 and loc_real01<=loc_real06 and loc_real01<=loc_real07 and loc_real01<=loc_real08
endfunction

// 45523 ~ 45560
function Func1839 takes unit loc_unit01,integer loc_integer01 returns unit
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+1)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+2)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+3)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+4)))
    local unit loc_unit06=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+5)))
    local unit loc_unit07=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+6)))
    local unit loc_unit08=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+7)))
    local unit loc_unit09=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+8)))
    local real loc_real03=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    local real loc_real04=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit03),GetUnitY(loc_unit03))
    local real loc_real05=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit04),GetUnitY(loc_unit04))
    local real loc_real06=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit05),GetUnitY(loc_unit05))
    local real loc_real07=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit06),GetUnitY(loc_unit06))
    local real loc_real08=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit07),GetUnitY(loc_unit07))
    local real loc_real09=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit08),GetUnitY(loc_unit08))
    local real loc_real10=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit09),GetUnitY(loc_unit09))
    if Func1838(loc_real03,loc_real04,loc_real05,loc_real06,loc_real07,loc_real08,loc_real09,loc_real10)then
        return loc_unit02
    elseif Func1838(loc_real04,loc_real03,loc_real05,loc_real06,loc_real07,loc_real08,loc_real09,loc_real10)then
        return loc_unit03
    elseif Func1838(loc_real05,loc_real04,loc_real03,loc_real06,loc_real07,loc_real08,loc_real09,loc_real10)then
        return loc_unit04
    elseif Func1838(loc_real06,loc_real04,loc_real05,loc_real03,loc_real07,loc_real08,loc_real09,loc_real10)then
        return loc_unit05
    elseif Func1838(loc_real07,loc_real04,loc_real05,loc_real06,loc_real03,loc_real08,loc_real09,loc_real10)then
        return loc_unit06
    elseif Func1838(loc_real08,loc_real04,loc_real05,loc_real06,loc_real07,loc_real03,loc_real09,loc_real10)then
        return loc_unit07
    elseif Func1838(loc_real09,loc_real04,loc_real05,loc_real06,loc_real07,loc_real08,loc_real03,loc_real10)then
        return loc_unit08
    elseif Func1838(loc_real10,loc_real04,loc_real05,loc_real06,loc_real07,loc_real08,loc_real09,loc_real03)then
        return loc_unit09
    endif
    return null
endfunction

// 45562 ~ 45590
function Func1840 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real02=GetUnitX(loc_unit01)
    local real loc_real03=GetUnitY(loc_unit01)
    local real loc_real04=12
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=40+40*loc_integer02
    if GetTriggerEvalCount(loc_trigger01)>21 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4260)),(2))
        call Func0115(loc_unit02,loc_unit01,1,I2R(loc_integer03))
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,Func0142(GetUnitState(loc_unit01,UNIT_STATE_MANA)-loc_integer03,0))
        call Func0180(GetUnitX(loc_unit01),GetUnitY(loc_unit01),100)
    else
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",loc_real02,loc_real03))
        call Func0180(loc_real02,loc_real03,150)
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4261))))==1)==false then
            call SetUnitPosition(loc_unit01,loc_real02+loc_real04*Cos(loc_real01*bj_DEGTORAD),loc_real03+loc_real04*Sin(loc_real01*bj_DEGTORAD))
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 45592 ~ 45616
function Func1841 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetEnumUnit()
    local real loc_real01=real009
    local real loc_real02=real010
    local real loc_real03=real011
    local real loc_real04=Func1837(loc_unit01,loc_real01,loc_real02,loc_real03)
    local real loc_real05=200
    local real loc_real06=loc_real03-Func0149(GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01,loc_real02)+loc_real05/2
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",loc_unit01,"chest"))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4260)),(1))
    if loc_real06>0 then
        call SetUnitX(loc_unit01,GetUnitX(loc_unit01)+loc_real06*Cos(loc_real04*bj_DEGTORAD))
        call SetUnitY(loc_unit01,GetUnitY(loc_unit01)+loc_real06*Sin(loc_real04*bj_DEGTORAD))
    endif
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real04)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(integer022))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(unit124))
    call TriggerRegisterTimerEvent(loc_trigger01,0.04,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1840))
    set loc_trigger01=null
    set loc_unit01=null
endfunction
