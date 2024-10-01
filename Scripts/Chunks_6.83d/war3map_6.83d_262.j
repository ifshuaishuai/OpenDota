
// 45669 ~ 45684
function Func1845 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(155)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if loc_boolean01 then
        call Func0186(loc_player01,.2,loc_real01,loc_real02,500)
    endif
    set loc_trigger01=null
    set loc_player01=null
    return false
endfunction

// 45686 ~ 45694
function Func1846 takes unit loc_unit01 returns nothing
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local unit loc_unit02=CreateUnit(loc_player01,'u00W',loc_real01,loc_real02,0)
    call KillUnit(loc_unit02)
    set loc_player01=null
    set loc_unit02=null
endfunction

// 45696 ~ 45737
function Func1847 takes integer loc_integer01,real loc_real01,real loc_real02,boolean loc_boolean01,player loc_player01 returns nothing
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+1)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+2)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+3)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+4)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+5)))
    local unit loc_unit06=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+6)))
    local unit loc_unit07=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+7)))
    local unit loc_unit08=(LoadUnitHandle(hashtable001,(loc_integer01),(1100+8)))
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1845))
    call SaveReal(hashtable001,(GetHandleId(loc_trigger01)),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(GetHandleId(loc_trigger01)),(7),((loc_real02)*1.0))
    call SavePlayerHandle(hashtable001,(GetHandleId(loc_trigger01)),(54),(loc_player01))
    call SaveBoolean(hashtable001,(GetHandleId(loc_trigger01)),(155),(loc_boolean01))
    set boolean142=true
    call Func1846(loc_unit01)
    call RemoveUnit(loc_unit01)
    call Func1846(loc_unit02)
    call RemoveUnit(loc_unit02)
    call Func1846(loc_unit03)
    call RemoveUnit(loc_unit03)
    call Func1846(loc_unit04)
    call RemoveUnit(loc_unit04)
    call Func1846(loc_unit05)
    call RemoveUnit(loc_unit05)
    call Func1846(loc_unit06)
    call RemoveUnit(loc_unit06)
    call Func1846(loc_unit07)
    call RemoveUnit(loc_unit07)
    call Func1846(loc_unit08)
    call RemoveUnit(loc_unit08)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_unit05=null
    set loc_unit06=null
    set loc_unit07=null
    set loc_unit08=null
endfunction

// 45739 ~ 45743
function Func1848 takes nothing returns nothing
    local integer loc_integer01=(40+40*integer465)/2
    call Func0115(unit275,GetEnumUnit(),1,I2R(loc_integer01))
    call SetUnitState(GetEnumUnit(),UNIT_STATE_MANA,Func0142(GetUnitState(GetEnumUnit(),UNIT_STATE_MANA)-loc_integer01,0))
endfunction

// 45745 ~ 45763
function Func1849 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local group loc_group01
    if boolean142==false then
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set unit275=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),175+25,Condition(function Func0313))
        call Func0029(loc_group01)
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit01=null
    return false
endfunction

// 45765 ~ 45775
function Func1850 takes unit loc_unit01,integer loc_integer01,integer loc_integer02,player loc_player01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer03=GetHandleId(loc_trigger01)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call SaveUnitHandle(hashtable001,(loc_integer03),(19),(loc_unit01))
    call TriggerAddCondition(loc_trigger01,Condition(function Func1849))
    if IsUnitVisible(loc_unit01,loc_player01)then
        call SaveBoolean(hashtable001,(loc_integer01),(155),(true))
    endif
    call SaveUnitHandle(hashtable001,(loc_integer01),(1100+loc_integer02),(loc_unit01))
endfunction

// 45777 ~ 45791
function Func1851 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(57)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    if loc_integer02>R2I(loc_real01*100)then
        call Func1847(loc_integer01,(LoadReal(hashtable001,(loc_integer01),(6))),(LoadReal(hashtable001,(loc_integer01),(7))),(LoadBoolean(hashtable001,(loc_integer01),(155))),(LoadPlayerHandle(hashtable001,(loc_integer01),(154))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func1844(loc_trigger01,(LoadUnitHandle(hashtable001,(loc_integer01),(14))),(LoadReal(hashtable001,(loc_integer01),(6))),(LoadReal(hashtable001,(loc_integer01),(7))),(LoadReal(hashtable001,(loc_integer01),(138))),(LoadInteger(hashtable001,(loc_integer01),(5))))
    endif
    set loc_trigger01=null
    return false
endfunction
