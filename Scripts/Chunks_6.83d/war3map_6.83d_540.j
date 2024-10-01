
// 63698 ~ 63702
function Func2953 takes nothing returns nothing
    if GetPlayerId(GetOwningPlayer(GetEnumUnit()))==integer022 then
        call GroupAddUnit(group002,GetEnumUnit())
    endif
endfunction

// 63704 ~ 63713
function Func2954 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call GroupRemoveUnit((LoadGroupHandle(hashtable001,(loc_integer01),(257))),(LoadUnitHandle(hashtable001,(loc_integer01),(261))))
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl",GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit())))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call DisableTrigger(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 63715 ~ 63735
function Func2955 takes nothing returns boolean
    local unit loc_unit01=GetSummoningUnit()
    local unit loc_unit02=GetSummonedUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(260)))
    local trigger loc_trigger01=CreateTrigger()
    call SetUnitVertexColor(loc_unit02,255,255,255,100)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2954))
    call SaveGroupHandle(hashtable001,(GetHandleId(loc_trigger01)),(257),((LoadGroupHandle(hashtable001,(loc_integer01),(257)))))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(261),(unit333))
    set loc_integer02=loc_integer02+1
    call SaveInteger(hashtable001,(loc_integer01),(260),(loc_integer02))
    call SaveInteger(hashtable001,(loc_integer01),(2800+loc_integer02),(Func0024(loc_unit02)))
    call SaveTriggerHandle(hashtable001,(loc_integer01),(2900+loc_integer02),(loc_trigger01))
    call SetUnitX(loc_unit02,real338)
    call SetUnitY(loc_unit02,real339)
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
