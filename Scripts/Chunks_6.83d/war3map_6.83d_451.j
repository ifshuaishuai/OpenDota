
// 57880 ~ 57886
function Func2611 takes unit loc_unit01,unit loc_unit02,unit loc_unit03,integer loc_integer01 returns nothing
    call SetUnitOwner(loc_unit03,GetOwningPlayer(loc_unit02),false)
    call SetUnitAbilityLevel(loc_unit03,'A21O',loc_integer01)
    call IssueTargetOrder(loc_unit03,"curse",loc_unit02)
    call Func0115(loc_unit01,loc_unit02,1,25+50*loc_integer01)
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",loc_unit02,"overhead"))
endfunction

// 57888 ~ 57893
function Func2612 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group015)==false then
        call GroupAddUnit(group015,GetEnumUnit())
        call Func2611(unit315,GetEnumUnit(),unit316,integer492)
    endif
endfunction

// 57895 ~ 57950
function Func2613 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(675)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(676)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(433)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local group loc_group02=Func0030()
    if GetTriggerEvalCount(loc_trigger01)<=50 then
        set loc_real03=loc_real03+20
        set loc_real04=loc_real04+7
        call SaveReal(hashtable001,(loc_integer01),(13),((loc_real03)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(433),((loc_real04)*1.0))
    elseif GetTriggerEvalCount(loc_trigger01)<=100 then
        set loc_real03=loc_real03+20
        set loc_real04=loc_real04-7
        call SaveReal(hashtable001,(loc_integer01),(13),((loc_real03)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(433),((loc_real04)*1.0))
    endif
    call SetUnitX(loc_unit03,Func0126(loc_real01+loc_real04*Cos(loc_real03*bj_DEGTORAD)))
    call SetUnitY(loc_unit03,Func0129(loc_real02+loc_real04*Sin(loc_real03*bj_DEGTORAD)))
    set loc_real03=loc_real03+180
    call SetUnitX(loc_unit04,Func0126(loc_real01+loc_real04*Cos(loc_real03*bj_DEGTORAD)))
    call SetUnitY(loc_unit04,Func0129(loc_real02+loc_real04*Sin(loc_real03*bj_DEGTORAD)))
    set unit124=loc_unit01
    set unit315=loc_unit01
    set unit316=loc_unit02
    set group015=loc_group01
    set integer492=loc_integer02
    call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit03),GetUnitY(loc_unit03),125,Condition(function Func0305))
    call ForGroup(loc_group02,function Func2612)
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit04),GetUnitY(loc_unit04),125,Condition(function Func0305))
    call ForGroup(loc_group02,function Func2612)
    call Func0029(loc_group02)
    if GetTriggerEvalCount(loc_trigger01)>100 then
        call KillUnit(loc_unit03)
        call KillUnit(loc_unit04)
        call KillUnit(loc_unit02)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_unit02=null
    return false
endfunction

// 57952 ~ 57977
function Func2614 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e02Y',loc_real01,loc_real02,0)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e02Y',loc_real01,loc_real02,0)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call UnitAddAbility(loc_unit04,'A21O')
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit04))
    call SaveUnitHandle(hashtable001,(loc_integer01),(675),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(676),(loc_unit03))
    call SaveReal(hashtable001,(loc_integer01),(13),((0)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(433),((0)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(loc_unit01,'A21N')))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2613))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_trigger01=null
    set loc_unit04=null
endfunction
