
// 90711 ~ 90719
function Func4366 takes unit loc_unit01,unit loc_unit02 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local integer loc_integer01=R2I(100*GetUnitState(loc_unit02,UNIT_STATE_LIFE)/GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE))
    local integer loc_integer02=Func0139(Func0138(R2I(100-loc_integer01)/5,20),1)
    call UnitAddAbility(loc_unit03,'A2DV')
    call SetUnitAbilityLevel(loc_unit03,'A2DV',loc_integer02)
    call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
    set loc_unit03=null
endfunction

// 90721 ~ 90728
function Func4367 takes nothing returns nothing
    if boolean036==false and((LoadInteger(hashtable001,(GetHandleId((GetEnumUnit()))),((4348))))==1)==false then
        call Func0044(GetEnumUnit(),4349,0.49)
        call Func0115(unit411,GetEnumUnit(),3,(25+25*integer554)*0.5)
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",GetEnumUnit(),"origin"))
        call Func4366(unit411,GetEnumUnit())
    endif
endfunction

// 90730 ~ 90737
function Func4368 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group042)==false then
        call GroupAddUnit(group042,GetEnumUnit())
        call Func0115(unit411,GetEnumUnit(),3,60+40*integer554)
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",GetEnumUnit(),"origin"))
        call Func4366(unit411,GetEnumUnit())
    endif
endfunction

// 90739 ~ 90860
function Func4369 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(33)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local group loc_group02
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local real loc_real06
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A2E6' then
            call SaveInteger(hashtable001,(loc_integer01),(33),(2))
            call GroupClear(loc_group01)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2E6',false)
            set loc_trigger01=CreateTrigger()
            set loc_integer01=GetHandleId(loc_trigger01)
            call TriggerRegisterTimerEvent(loc_trigger01,0,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func4365))
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        endif
    elseif GetTriggerEventId()==EVENT_WIDGET_DEATH or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==-1 then
        call Func0282(loc_unit01)
        if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A2YO' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2YO',true)
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2E6',false)
        call UnitRemoveAbility(loc_unit01,'A2E6')
        call UnitRemoveAbility(loc_unit01,'Bpig')
        call UnitRemoveAbility(loc_unit01,'BEia')
        call KillUnit(loc_unit02)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif loc_integer02==0 then
        set loc_real05=Func0169(GetUnitX(loc_unit02),GetUnitY(loc_unit02),loc_real01,loc_real02)*bj_DEGTORAD
        set loc_real03=GetUnitX(loc_unit02)+18*Cos(loc_real05)
        set loc_real04=GetUnitY(loc_unit02)+18*Sin(loc_real05)
        call Func0180(loc_real03,loc_real04,175)
        if Func0149(loc_real03,loc_real04,loc_real01,loc_real02)<40 then
            set loc_real03=loc_real01
            set loc_real04=loc_real02
        endif
        call SetUnitX(loc_unit02,loc_real03)
        call SetUnitY(loc_unit02,loc_real04)
        set unit124=loc_unit01
        set unit411=loc_unit01
        set integer554=GetUnitAbilityLevel(loc_unit01,'A2YO')
        set group042=loc_group01
        set loc_group02=Func0030()
        call GroupEnumUnitsInRange(loc_group02,loc_real03,loc_real04,real401+25,Condition(function Func0305))
        call ForGroup(loc_group02,function Func4368)
        call Func0029(loc_group02)
        if loc_real03==loc_real01 and loc_real04==loc_real02 then
            call SaveInteger(hashtable001,(loc_integer01),(33),(1))
            call GroupClear(loc_group01)
        endif
    elseif loc_integer02==1 then
        set loc_integer03=loc_integer03+1
        if loc_integer03==25 then
            set loc_real03=GetUnitX(loc_unit02)
            set loc_real04=GetUnitY(loc_unit02)
            call Func0180(loc_real03,loc_real04,175)
            set loc_integer03=0
            set unit124=loc_unit01
            set unit411=loc_unit01
            set integer554=GetUnitAbilityLevel(loc_unit01,'A2YO')
            set loc_group02=Func0030()
            call GroupEnumUnitsInRange(loc_group02,loc_real03,loc_real04,real402+25,Condition(function Func0305))
            call ForGroup(loc_group02,function Func4367)
            call Func0029(loc_group02)
            set loc_real06=(15+5*integer554)/2
            if GetUnitState(loc_unit01,UNIT_STATE_MANA)<loc_real06 or Func0147(loc_unit01,loc_unit02)>2000 then
                call SaveInteger(hashtable001,(loc_integer01),(33),(2))
                call GroupClear(loc_group01)
                call UnitRemoveAbility(loc_unit01,'A2E6')
                call UnitRemoveAbility(loc_unit01,'Bpig')
                call UnitRemoveAbility(loc_unit01,'BEia')
            else
                call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)-loc_real06)
            endif
        endif
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
    elseif loc_integer02==2 then
        set loc_real05=Func0169(GetUnitX(loc_unit02),GetUnitY(loc_unit02),GetUnitX(loc_unit01),GetUnitY(loc_unit01))*bj_DEGTORAD
        set loc_real03=GetUnitX(loc_unit02)+16*Cos(loc_real05)
        set loc_real04=GetUnitY(loc_unit02)+16*Sin(loc_real05)
        call Func0180(loc_real03,loc_real04,175)
        call SetUnitX(loc_unit02,loc_real03)
        call SetUnitY(loc_unit02,loc_real04)
        set unit124=loc_unit01
        set unit411=loc_unit01
        set integer554=GetUnitAbilityLevel(loc_unit01,'A2YO')
        set group042=loc_group01
        set loc_group02=Func0030()
        call GroupEnumUnitsInRange(loc_group02,loc_real03,loc_real04,real401+25,Condition(function Func0305))
        call ForGroup(loc_group02,function Func4368)
        call Func0029(loc_group02)
        if Func0149(loc_real03,loc_real04,GetUnitX(loc_unit01),GetUnitY(loc_unit01))<40 then
            call Func0282(loc_unit01)
            call KillUnit(loc_unit02)
            call Func0029(loc_group01)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A2YO' then
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2YO',true)
            endif
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2E6',false)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 90862 ~ 90887
function Func4370 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local real loc_real03=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01,loc_real02)*bj_DEGTORAD
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0DS',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real03*bj_RADTODEG)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4369))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(33),(0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call Func0281(loc_unit01)
    call Func0193(loc_unit01,'A2E6')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2YO',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2E6',true)
    set loc_unit01=null
    set loc_trigger01=null
    set loc_unit02=null
endfunction

// 90889 ~ 90894
function Func4371 takes nothing returns boolean
    if GetSpellAbilityId()=='A2YO' then
        call Func4370()
    endif
    return false
endfunction

// 90896 ~ 90902
function Func4372 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4371))
    call Func0132('A2DV')
    set loc_trigger01=null
endfunction
