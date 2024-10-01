
// 43459 ~ 43477
function Func1715 takes unit loc_unit01,real loc_real01,real loc_real02,group loc_group01 returns nothing
    local group loc_group02=Func0030()
    local unit loc_unit02
    call Func0180(loc_real01,loc_real02,150)
    call GroupEnumUnitsInRange(loc_group02,loc_real01,loc_real02,150,Condition(function Func0011))
    loop
        set loc_unit02=FirstOfGroup(loc_group02)
        exitwhen loc_unit02==null
        if(IsUnitInGroup(loc_unit02,loc_group01)==false and IsUnitEnemy(loc_unit02,GetOwningPlayer(loc_unit01)))then
            if(GetUnitAbilityLevel(loc_unit02,'A04R')!=1 and GetUnitState(loc_unit02,UNIT_STATE_LIFE)>0 and IsUnitType(loc_unit02,UNIT_TYPE_STRUCTURE)==false)then
                call GroupAddUnit(loc_group01,loc_unit02)
                call Func0115(loc_unit01,loc_unit02,2,40+GetUnitAbilityLevel(loc_unit01,'A0O1')*30)
                call AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",loc_unit02,"overhead")
            endif
        endif
        call GroupRemoveUnit(loc_group02,loc_unit02)
    endloop
    call Func0029(loc_group02)
endfunction

// 43479 ~ 43516
function Func1716 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetExpiredTimer())
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(290)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(284)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(285)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(286)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(287)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(288)))
    local real loc_real06=(LoadReal(hashtable001,(loc_integer01),(289)))
    local real loc_real07=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real08=1-loc_real07
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(291)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(133)))
    local real loc_real09=RMaxBJ(Func0149(loc_real01,loc_real02,loc_real03,loc_real04)/1300,0.4)
    call SetUnitX(loc_unit01,Func0126(loc_real01*loc_real07*loc_real07+loc_real05*2*loc_real07*loc_real08+loc_real03*loc_real08*loc_real08))
    call SetUnitY(loc_unit01,Func0129(loc_real02*loc_real07*loc_real07+loc_real06*2*loc_real07*loc_real08+loc_real04*loc_real08*loc_real08))
    call Func1715(loc_unit02,GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_group01)
    if(loc_boolean01)then
        call SaveReal(hashtable001,(loc_integer01),(137),((loc_real07-.02/loc_real09)*1.0))
    else
        call SaveReal(hashtable001,(loc_integer01),(137),((loc_real07+.02/loc_real09)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(284),((GetUnitX(loc_unit02))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(285),((GetUnitY(loc_unit02))*1.0))
    endif
    if(loc_real07<0 and loc_boolean01)then
        call SaveBoolean(hashtable001,(loc_integer01),(291),(false))
        call SaveReal(hashtable001,(loc_integer01),(288),((loc_real01+300*Cos(Atan2(loc_real04-loc_real02,loc_real03-loc_real01)+(LoadReal(hashtable001,(loc_integer01),(292)))))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(289),((loc_real02+300*Sin(Atan2(loc_real04-loc_real02,loc_real03-loc_real01)+(LoadReal(hashtable001,(loc_integer01),(292)))))*1.0))
    endif
    if(loc_real07>1 and loc_boolean01==false)then
        call PauseTimer(GetExpiredTimer())
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call RemoveUnit(loc_unit01)
        call DestroyTimer(GetExpiredTimer())
    endif
endfunction

// 43518 ~ 43568
function Func1717 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=GetLocationX(GetSpellTargetLoc())
    local real loc_real04=GetLocationY(GetSpellTargetLoc())
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e01T',loc_real01,loc_real02,270.0)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e01T',loc_real01,loc_real02,270.0)
    local integer loc_integer01
    local integer loc_integer02
    local timer loc_timer01=CreateTimer()
    local timer loc_timer02=CreateTimer()
    if GetSpellTargetUnit()!=null then
        set loc_real03=GetUnitX(GetSpellTargetUnit())
        set loc_real04=GetUnitY(GetSpellTargetUnit())
    endif
    call Func0193(loc_unit02,'Amrf')
    call UnitRemoveAbility(loc_unit02,'Amrf')
    call SetUnitFlyHeight(loc_unit02,150,0)
    call Func0193(loc_unit03,'Amrf')
    call UnitRemoveAbility(loc_unit03,'Amrf')
    call SetUnitFlyHeight(loc_unit03,150,0)
    set loc_integer01=GetHandleId(loc_timer01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(290),(loc_unit02))
    call SaveGroupHandle(hashtable001,(loc_integer01),(133),(Func0030()))
    call SaveReal(hashtable001,(loc_integer01),(284),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(285),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(286),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(287),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(288),((loc_real01+300*Cos(Atan2(loc_real04-loc_real02,loc_real03-loc_real01)+45))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(289),((loc_real02+300*Sin(Atan2(loc_real04-loc_real02,loc_real03-loc_real01)+45))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(137),((1)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(292),((-45)*1.0))
    call SaveBoolean(hashtable001,(loc_integer01),(291),(true))
    set loc_integer02=GetHandleId(loc_timer02)
    call SaveUnitHandle(hashtable001,(loc_integer02),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(290),(loc_unit03))
    call SaveGroupHandle(hashtable001,(loc_integer02),(133),(Func0030()))
    call SaveReal(hashtable001,(loc_integer02),(284),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(285),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(286),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(287),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(288),((loc_real01+300*Cos(Atan2(loc_real04-loc_real02,loc_real03-loc_real01)-45))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(289),((loc_real02+300*Sin(Atan2(loc_real04-loc_real02,loc_real03-loc_real01)-45))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(137),((1)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(292),((45)*1.0))
    call SaveBoolean(hashtable001,(loc_integer02),(291),(true))
    call TimerStart(loc_timer01,.025,true,function Func1716)
    call TimerStart(loc_timer02,.025,true,function Func1716)
endfunction

// 43570 ~ 43575
function Func1718 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1713))
    call TriggerAddAction(loc_trigger01,function Func1717)
endfunction
