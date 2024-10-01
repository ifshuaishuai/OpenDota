
// 32111 ~ 32138
function Func1303 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real01
    local real loc_real02
    if GetTriggerEventId()==EVENT_UNIT_DEATH or loc_integer02>60 then
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4259))))==1)==false then
            if Func0056(GetOwningPlayer(loc_unit01))then
                set loc_real01=GetRectCenterX(rect011)
                set loc_real02=GetRectCenterY(rect011)
            else
                set loc_real01=GetRectCenterX(rect004)
                set loc_real02=GetRectCenterY(rect004)
            endif
            call SetUnitPosition(loc_unit01,loc_real01,loc_real02)
            call PauseUnit(loc_unit01,false)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call PauseUnit(loc_unit01,true)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 32140 ~ 32162
function Func1304 takes player loc_player01 returns nothing
    local unit loc_unit01=units001[GetPlayerId(loc_player01)]
    local trigger loc_trigger01
    if Func0194(loc_unit01)==false then
        set loc_trigger01=CreateTrigger()
        call DisplayTimedTextToPlayer(loc_player01,0,real003,30.0,GetObjectName('n08K'))
        call UnitRemoveBuffs(loc_unit01,true,false)
        call UnitRemoveAbility(loc_unit01,'Bcyc')
        call UnitRemoveAbility(loc_unit01,'Bcy2')
        call UnitRemoveAbility(loc_unit01,'B02J')
        call UnitRemoveAbility(loc_unit01,'BUsp')
        call UnitRemoveAbility(loc_unit01,'Bust')
        call UnitRemoveAbility(loc_unit01,'B02F')
        call PauseUnit(loc_unit01,true)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1303))
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(loc_unit01))
    endif
    set loc_player01=null
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 32164 ~ 32175
function Func1305 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        call Func1304(loc_player01)
    endif
    set loc_trigger01=null
    return false
endfunction

// 32177 ~ 32191
function Func1306 takes nothing returns nothing
    local player loc_player01=GetTriggerPlayer()
    local unit loc_unit01=units001[GetPlayerId(loc_player01)]
    local trigger loc_trigger01
    if Func0194(loc_unit01)==false then
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,3.5,false)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1305))
        call SavePlayerHandle(hashtable001,(GetHandleId(loc_trigger01)),(54),(loc_player01))
    endif
    set loc_player01=null
    set loc_unit01=null
    set loc_trigger01=null
endfunction
