
// 22118 ~ 22164
function Func0876 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(529)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(530)))
    local real loc_real03=GetUnitState(loc_unit01,UNIT_STATE_MANA)
    local real loc_real04=GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA)
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(668)))
    local real loc_real06=GetUnitStatePercent(loc_unit01,UNIT_STATE_MANA,UNIT_STATE_MAX_MANA)
    local real loc_real07=(loc_real05-loc_real06)/100
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEvalCount(loc_trigger01)==20*10 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if loc_real01<150 then
            call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real03-(150-loc_real01-loc_real02))
        endif
    else
        if loc_real07>0 then
            set loc_real01=loc_real01+loc_real07*loc_real04
            if loc_real02>0 then
                if loc_real07*loc_real04>loc_real02 then
                    call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real03+loc_real02)
                    set loc_real02=0
                else
                    if loc_real02>(loc_real04-loc_real03)then
                        set loc_real02=loc_real02-(loc_real04-loc_real03)
                        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real04)
                    else
                        set loc_real02=loc_real02-loc_real07*loc_real04
                        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real03+loc_real07*loc_real04)
                    endif
                endif
            endif
        endif
        set loc_real05=loc_real06
        call SaveReal(hashtable001,(loc_integer01),(668),((loc_real05)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(529),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(530),((loc_real02)*1.0))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 22166 ~ 22190
function Func0877 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real02=GetUnitState(loc_unit01,UNIT_STATE_MANA)
    if loc_real01>151 then
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real01-150)
    else
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,1)
    endif
    call Func0161("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl",loc_unit01,"origin",2)
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real02+150)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0876))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(242),((GetUnitState(loc_unit01,UNIT_STATE_MANA))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(529),((0)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(668),((GetUnitStatePercent(loc_unit01,UNIT_STATE_MANA,UNIT_STATE_MAX_MANA))*1.0))
    if(loc_real02+150)>GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA)then
        call SaveReal(hashtable001,(loc_integer01),(530),(((loc_real02+150)-GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA))*1.0))
    endif
    set loc_unit01=null
endfunction

// 22192 ~ 22196
function Func0878 takes nothing returns nothing
    if GetSpellAbilityId()=='A1Q8' then
        call Func0877()
    endif
endfunction
