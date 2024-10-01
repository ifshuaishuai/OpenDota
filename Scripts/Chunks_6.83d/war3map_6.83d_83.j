
// 21545 ~ 21560
function Func0841 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local group loc_group01=group004
    local unit loc_unit02=unit251
    if IsUnitInGroup(loc_unit01,loc_group01)==false then
        call GroupAddUnit(loc_group01,loc_unit01)
        call IssueTargetOrder(unit252,"slow",loc_unit01)
        set boolean156=true
        call Func0115(loc_unit02,loc_unit01,1,200)
        set boolean156=false
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl",loc_unit01,"origin"))
    endif
    set loc_unit01=null
    set loc_group01=null
    set loc_unit02=null
endfunction

// 21562 ~ 21606
function Func0842 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(133)))
    local real loc_real01
    local real loc_real02
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04
    local real loc_real05=GetUnitY(loc_unit01)
    local group loc_group02=Func0030()
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer03
    call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
    call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    set group004=loc_group01
    set unit251=loc_unit01
    set unit252=(LoadUnitHandle(hashtable001,(loc_integer01),(132)))
    if GetTriggerEvalCount(loc_trigger01)>37 then
        call KillUnit(loc_unit02)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_real01=loc_integer02*21
        set loc_integer03=0
        loop
            exitwhen loc_integer03>36
            set loc_real02=loc_real03+loc_real01*Cos(360*loc_integer03/36*bj_DEGTORAD)
            set loc_real04=loc_real05+loc_real01*Sin(360*loc_integer03/36*bj_DEGTORAD)
            set unit124=loc_unit01
            call GroupEnumUnitsInRange(loc_group02,loc_real02,loc_real04,150,Condition(function Func0303))
            call ForGroup(loc_group02,function Func0841)
            set loc_integer03=loc_integer03+1
        endloop
    endif
    call Func0029(loc_group02)
    set loc_trigger01=null
    set loc_unit02=null
    set loc_group01=null
    set loc_unit01=null
    set loc_group02=null
    return false
endfunction

// 21608 ~ 21629
function Func0843 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local group loc_group01=Func0030()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h091',loc_real01,loc_real02,0)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call UnitAddAbility(loc_unit03,'A0T0')
    call SaveGroupHandle(hashtable001,(loc_integer01),(133),(loc_group01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(132),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.06,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0842))
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit01=null
endfunction

// 21631 ~ 21635
function Func0844 takes nothing returns nothing
    if GetSpellAbilityId()=='A0T9' then
        call Func0843()
    endif
endfunction
