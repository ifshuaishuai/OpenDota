
// 45793 ~ 45796
function Func1852 takes nothing returns nothing
    call SetUnitX(GetEnumUnit(),GetUnitX(unit124))
    call SetUnitY(GetEnumUnit(),GetUnitY(unit124))
endfunction

// 45798 ~ 45902
function Func1853 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0Z5')
    local integer loc_integer03='u00S'
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03
    local real loc_real04
    local real loc_real05=125
    local unit loc_unit02
    local real loc_real06=4+loc_integer02
    local real loc_real07=5
    local group loc_group01
    local rect loc_rect01
    local player loc_player01
    local integer loc_integer04=2
    if loc_integer02==4 then
        set loc_integer04=3
    endif
    set integer465=loc_integer02
    set boolean142=false
    if Func0056(GetOwningPlayer(loc_unit01))then
        set loc_player01=players004[0]
    else
        set loc_player01=players003[0]
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveBoolean(hashtable001,(loc_integer01),(155),(false))
    set loc_real03=loc_real01+loc_real05
    set loc_real04=loc_real02
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer03,loc_real03,loc_real04,0)
    call SetUnitPosition(loc_unit02,loc_real03,loc_real04)
    call Func1850(loc_unit02,loc_integer01,1,loc_player01)
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,loc_integer04)
    set loc_real03=loc_real01+loc_real05
    set loc_real04=loc_real02+loc_real05
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer03,loc_real03,loc_real04,0)
    call SetUnitPosition(loc_unit02,loc_real03,loc_real04)
    call Func1850(loc_unit02,loc_integer01,2,loc_player01)
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,loc_integer04)
    set loc_real03=loc_real01
    set loc_real04=loc_real02+loc_real05
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer03,loc_real03,loc_real04,0)
    call SetUnitPosition(loc_unit02,loc_real03,loc_real04)
    call Func1850(loc_unit02,loc_integer01,3,loc_player01)
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,loc_integer04)
    set loc_real03=loc_real01-loc_real05
    set loc_real04=loc_real02+loc_real05
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer03,loc_real03,loc_real04,0)
    call SetUnitPosition(loc_unit02,loc_real03,loc_real04)
    call Func1850(loc_unit02,loc_integer01,4,loc_player01)
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,loc_integer04)
    set loc_real03=loc_real01-loc_real05
    set loc_real04=loc_real02
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer03,loc_real03,loc_real04,0)
    call SetUnitPosition(loc_unit02,loc_real03,loc_real04)
    call Func1850(loc_unit02,loc_integer01,5,loc_player01)
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,loc_integer04)
    set loc_real03=loc_real01-loc_real05
    set loc_real04=loc_real02-loc_real05
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer03,loc_real03,loc_real04,0)
    call SetUnitPosition(loc_unit02,loc_real03,loc_real04)
    call Func1850(loc_unit02,loc_integer01,6,loc_player01)
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,loc_integer04)
    set loc_real03=loc_real01
    set loc_real04=loc_real02-loc_real05
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer03,loc_real03,loc_real04,0)
    call SetUnitPosition(loc_unit02,loc_real03,loc_real04)
    call Func1850(loc_unit02,loc_integer01,7,loc_player01)
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,loc_integer04)
    set loc_real03=loc_real01+loc_real05
    set loc_real04=loc_real02-loc_real05
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer03,loc_real03,loc_real04,0)
    call SetUnitPosition(loc_unit02,loc_real03,loc_real04)
    call Func1850(loc_unit02,loc_integer01,8,loc_player01)
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,loc_integer04)
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1851))
    call SaveReal(hashtable001,(loc_integer01),(57),((loc_real06)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(138),((loc_real05)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SavePlayerHandle(hashtable001,(loc_integer01),(154),(loc_player01))
    set loc_real05=loc_real05+110
    set loc_group01=Func0030()
    set loc_rect01=Rect(loc_real01-loc_real05,loc_real02-loc_real05,loc_real01+loc_real05,loc_real02+loc_real05)
    set unit124=loc_unit01
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0342))
    call ForGroup(loc_group01,function Func1852)
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_rect01=null
    set loc_player01=null
    return false
endfunction

// 45904 ~ 45913
function Func1854 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1853))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 45915 ~ 45920
function Func1855 takes nothing returns boolean
    if GetSpellAbilityId()=='A0Z5' then
        call Func1854()
    endif
    return false
endfunction

// 45922 ~ 45928
function Func1856 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1855))
    set loc_trigger01=null
    set boolean142=false
endfunction
