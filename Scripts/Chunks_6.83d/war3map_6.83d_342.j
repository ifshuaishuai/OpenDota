
// 50843 ~ 50845
function Func2178 takes nothing returns nothing
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl",GetEnumUnit(),"origin"))
endfunction

// 50847 ~ 50859
function Func2179 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call Func0115(loc_unit01,loc_unit02,1,0.75*GetUnitAbilityLevel(loc_unit01,'A0KV')*75)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 50861 ~ 50889
function Func2180 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local group loc_group01
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if Func0194(loc_unit02)then
        set loc_group01=Func0030()
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),175+25,Condition(function Func0303))
        set loc_unit02=GroupPickRandomUnit(loc_group01)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl",loc_unit02,"origin"))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2179))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 50891 ~ 50893
function Func2181 takes nothing returns nothing
    call Func0115(unit289,GetEnumUnit(),1,real298)
endfunction

// 50895 ~ 50910
function Func2182 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    set real298=GetUnitAbilityLevel(loc_unit01,'A0KV')*75
    set unit289=loc_unit01
    call ForGroup(loc_group01,function Func2181)
    call Func0029(loc_group01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction
