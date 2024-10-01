
// 57979 ~ 57985
function Func2615 takes unit loc_unit01,unit loc_unit02,unit loc_unit03,integer loc_integer01 returns nothing
    call SetUnitOwner(loc_unit03,GetOwningPlayer(loc_unit02),false)
    call SetUnitAbilityLevel(loc_unit03,'A21P',loc_integer01)
    call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
    call Func0115(loc_unit01,loc_unit02,1,75)
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",loc_unit02,"overhead"))
endfunction

// 57987 ~ 57992
function Func2616 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group015)==false and unit317!=null and Func0194(unit317)==false then
        call GroupAddUnit(group015,GetEnumUnit())
        call Func2615(unit315,GetEnumUnit(),unit316,integer492)
    endif
endfunction

// 57994 ~ 58107
function Func2617 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(393)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(394)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(395)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(396)))
    local unit loc_unit06=(LoadUnitHandle(hashtable001,(loc_integer01),(397)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(13)))-12.5
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(433)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit07
    local group loc_group01
    local group loc_group02=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local unit loc_unit08=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    set loc_real04=loc_real04+900/20.0
    call SaveReal(hashtable001,(loc_integer01),(433),((loc_real04)*1.0))
    call SetUnitX(loc_unit02,Func0126(loc_real01+loc_real04*Cos(loc_real03*bj_DEGTORAD)))
    call SetUnitY(loc_unit02,Func0129(loc_real02+loc_real04*Sin(loc_real03*bj_DEGTORAD)))
    set loc_real03=loc_real03+6.25
    call SetUnitX(loc_unit03,Func0126(loc_real01+loc_real04*Cos(loc_real03*bj_DEGTORAD)))
    call SetUnitY(loc_unit03,Func0129(loc_real02+loc_real04*Sin(loc_real03*bj_DEGTORAD)))
    set loc_real03=loc_real03+6.25
    call SetUnitX(loc_unit04,Func0126(loc_real01+loc_real04*Cos(loc_real03*bj_DEGTORAD)))
    call SetUnitY(loc_unit04,Func0129(loc_real02+loc_real04*Sin(loc_real03*bj_DEGTORAD)))
    set loc_real03=loc_real03+6.25
    call SetUnitX(loc_unit05,Func0126(loc_real01+loc_real04*Cos(loc_real03*bj_DEGTORAD)))
    call SetUnitY(loc_unit05,Func0129(loc_real02+loc_real04*Sin(loc_real03*bj_DEGTORAD)))
    set loc_real03=loc_real03+6.25
    call SetUnitX(loc_unit06,Func0126(loc_real01+loc_real04*Cos(loc_real03*bj_DEGTORAD)))
    call SetUnitY(loc_unit06,Func0129(loc_real02+loc_real04*Sin(loc_real03*bj_DEGTORAD)))
    set unit315=loc_unit01
    set unit316=loc_unit08
    set group015=loc_group02
    set integer492=loc_integer02
    set loc_unit07=loc_unit02
    if loc_unit07!=null and Func0194(loc_unit07)==false then
        set loc_real01=GetUnitX(loc_unit07)
        set loc_real02=GetUnitY(loc_unit07)
        set unit317=loc_unit07
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,125,Condition(function Func0305))
        call ForGroup(loc_group01,function Func2616)
        call Func0029(loc_group01)
    endif
    set loc_unit07=loc_unit03
    if loc_unit07!=null and Func0194(loc_unit07)==false then
        set loc_real01=GetUnitX(loc_unit07)
        set loc_real02=GetUnitY(loc_unit07)
        set unit317=loc_unit07
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,125,Condition(function Func0305))
        call ForGroup(loc_group01,function Func2616)
        call Func0029(loc_group01)
    endif
    set loc_unit07=loc_unit04
    if loc_unit07!=null and Func0194(loc_unit07)==false then
        set loc_real01=GetUnitX(loc_unit07)
        set loc_real02=GetUnitY(loc_unit07)
        set unit317=loc_unit07
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,125,Condition(function Func0305))
        call ForGroup(loc_group01,function Func2616)
        call Func0029(loc_group01)
    endif
    set loc_unit07=loc_unit05
    if loc_unit07!=null and Func0194(loc_unit07)==false then
        set loc_real01=GetUnitX(loc_unit07)
        set loc_real02=GetUnitY(loc_unit07)
        set unit317=loc_unit07
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,125,Condition(function Func0305))
        call ForGroup(loc_group01,function Func2616)
        call Func0029(loc_group01)
    endif
    set loc_unit07=loc_unit06
    if loc_unit07!=null and Func0194(loc_unit07)==false then
        set loc_real01=GetUnitX(loc_unit07)
        set loc_real02=GetUnitY(loc_unit07)
        set unit317=loc_unit07
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,125,Condition(function Func0305))
        call ForGroup(loc_group01,function Func2616)
        call Func0029(loc_group01)
    endif
    if GetTriggerEvalCount(loc_trigger01)>20 then
        call KillUnit(loc_unit02)
        call KillUnit(loc_unit03)
        call KillUnit(loc_unit04)
        call KillUnit(loc_unit05)
        call KillUnit(loc_unit06)
        call KillUnit(loc_unit08)
        call Func0029(loc_group02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_unit05=null
    set loc_unit06=null
    set loc_unit08=null
    return false
endfunction

// 58109 ~ 58148
function Func2618 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=GetSpellTargetX()
    local real loc_real04=GetSpellTargetY()
    local real loc_real05=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e02Z',loc_real01,loc_real02,loc_real05-12.5)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e02Z',loc_real01,loc_real02,loc_real05-6.25)
    local unit loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'e02Z',loc_real01,loc_real02,loc_real05)
    local unit loc_unit05=CreateUnit(GetOwningPlayer(loc_unit01),'e02Z',loc_real01,loc_real02,loc_real05+6.25)
    local unit loc_unit06=CreateUnit(GetOwningPlayer(loc_unit01),'e02Z',loc_real01,loc_real02,loc_real05+12.5)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit07=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call UnitAddAbility(loc_unit07,'A21P')
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit07))
    call SaveUnitHandle(hashtable001,(loc_integer01),(393),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(394),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(395),(loc_unit04))
    call SaveUnitHandle(hashtable001,(loc_integer01),(396),(loc_unit05))
    call SaveUnitHandle(hashtable001,(loc_integer01),(397),(loc_unit06))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(433),((0)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real05)*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(loc_unit01,'A21M')))
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2617))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_unit05=null
    set loc_unit06=null
    set loc_trigger01=null
    set loc_unit07=null
endfunction

// 58150 ~ 58157
function Func2619 takes nothing returns boolean
    if GetSpellAbilityId()=='A21M' then
        call Func2618()
    elseif GetSpellAbilityId()=='A21N' then
        call Func2614()
    endif
    return false
endfunction
