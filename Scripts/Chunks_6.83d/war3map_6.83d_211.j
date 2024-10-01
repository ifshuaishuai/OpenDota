
// 42044 ~ 42050
function Func1637 takes nothing returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(unit262),GetUnitY(unit262),1800,Condition(function Func0349))
    set unit266=GroupPickRandomUnit(loc_group01)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 42052 ~ 42084
function Func1638 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    if GetTriggerEvalCount(loc_trigger01)==1 then
        call Func1637()
        if unit266==null then
            call RemoveUnit(unit262)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            return false
        endif
        call Func1620(GetObjectName(('n0N9')))
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call SaveEffectHandle(hashtable001,(GetHandleId(loc_trigger01)),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\InnerFire\\InnerFireTarget.mdl",unit266,"overhead")))
        call SaveEffectHandle(hashtable001,(GetHandleId(loc_trigger01)),(176),(AddSpecialEffect("Objects\\InventoryItems\\BattleStandard\\BattleStandard.mdl",2897,-2814)))
        call PingMinimap(2897,-2814,5)
        call SetUnitPosition(unit262,real265,real266)
        call SetUnitPosition(unit266,GetUnitX(unit262)+50,GetUnitY(unit262)+50)
        call PauseUnit(unit262,true)
        call SetUnitAnimationByIndex(unit262,7)
        call SetUnitPathing(unit262,false)
        call PauseUnit(unit266,true)
    else
        call Func1620(I2S(6-GetTriggerEvalCount(loc_trigger01)))
        if GetTriggerEvalCount(loc_trigger01)==6 then
            call Func1636((LoadEffectHandle(hashtable001,(loc_integer01),(175))),(LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    return false
endfunction

// 42086 ~ 42092
function Func1639 takes nothing returns boolean
    if boolean137==false then
        call SetUnitState(unit262,UNIT_STATE_LIFE,GetUnitState(unit262,UNIT_STATE_MAX_LIFE))
        call SetUnitState(unit262,UNIT_STATE_MANA,GetUnitState(unit262,UNIT_STATE_MAX_MANA))
    endif
    return false
endfunction

// 42094 ~ 42114
function Func1640 takes nothing returns nothing
    local trigger loc_trigger01
    if boolean136==false or boolean135 then
        set loc_trigger01=CreateTrigger()
        set unit262=CreateUnit(player001,'H0ES',real265,real266,0)
        call Func0193(unit262,'Abun')
        call PauseUnit(unit262,true)
        call SetUnitInvulnerable(unit262,true)
        call SetHeroLevel(unit262,25,false)
        call PingMinimap(real265,real266,4)
        call SetCameraPosition(GetUnitX(unit262),GetUnitY(unit262))
        call Func1620(GetObjectName(('n0N7')))
        call TriggerRegisterTimerEvent(loc_trigger01,20,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1638))
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterUnitEvent(loc_trigger01,unit262,EVENT_UNIT_DAMAGED)
        call TriggerRegisterTimerEvent(loc_trigger01,0.01,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1639))
    endif
    set loc_trigger01=null
endfunction

// 42116 ~ 42117
function Func1641 takes nothing returns nothing
endfunction

// 42119 ~ 42138
function Func1642 takes nothing returns nothing
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local location loc_location01=Location(loc_real01-450,loc_real02-450)
    local location loc_location02=Location(loc_real01+450,loc_real02+450)
    local rect loc_rect01=RectFromLoc(loc_location01,loc_location02)
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    set boolean138=false
    set boolean139=false
    call EnumItemsInRect(loc_rect01,null,function Func1641)
    if boolean138 and boolean139 then
        call SetItemVisible(item003,false)
        call RemoveItem(item004)
        call Func1640()
    endif
    set loc_location01=null
    set loc_location02=null
    set loc_rect01=null
endfunction

// 42140 ~ 42152
function Func1643 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
