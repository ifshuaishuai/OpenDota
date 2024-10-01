
// 81733 ~ 81740
function Func3959 takes nothing returns nothing
    local unit loc_unit01=unit379
    local unit loc_unit02=GetEnumUnit()
    call Func0115(loc_unit01,loc_unit02,1,40+20*integer531)
    call Func0161("Doodads\\Cinematic\\FireTrapUp\\FireTrapUp.mdl",loc_unit02,"origin",1)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 81742 ~ 81764
function Func3960 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2YR')
    local group loc_group01
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set unit124=loc_unit01
        set unit379=loc_unit01
        set integer531=loc_integer02
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1000+25,Condition(function Func0305))
        call ForGroup(loc_group01,function Func3959)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 81766 ~ 81804
function Func3961 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(589)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if IsUnitIllusion(GetEventDamageSource())==true then
            call Func0145(loc_unit01,GetEventDamage())
        endif
    else
        if GetUnitX(loc_unit01)!=loc_real01 or GetUnitY(loc_unit01)!=loc_real02 then
            call SetUnitPosition(loc_unit01,loc_real01,loc_real02)
        endif
        if GetUnitY(loc_unit02)!=loc_real01 or GetUnitY(loc_unit02)!=loc_real02 then
            call SetUnitPosition(loc_unit02,loc_real01,loc_real02)
        endif
        call SetUnitX(loc_unit04,GetUnitX(loc_unit02))
        call SetUnitY(loc_unit04,GetUnitY(loc_unit02))
        if loc_unit03!=null and(GetUnitY(loc_unit03)!=loc_real01 or GetUnitY(loc_unit03)!=loc_real02)then
            call SetUnitPosition(loc_unit03,loc_real01,loc_real02)
        endif
    endif
    if GetTriggerEvalCount(loc_trigger01)==1 then
        call PauseUnit(loc_unit02,true)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    return false
endfunction
