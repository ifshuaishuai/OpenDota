
// 71966 ~ 71972
function Func3417 takes nothing returns nothing
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl",GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit())))
    call Func0044(GetEnumUnit(),4406,1)
    call SetUnitPosition(GetEnumUnit(),real009,real010)
    call PanCameraToTimedForPlayer(GetOwningPlayer(GetEnumUnit()),real009,real010,0)
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl",GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit())))
endfunction

// 71974 ~ 71985
function Func3418 takes unit loc_unit01,unit loc_unit02 returns nothing
    local group loc_group01=Func0030()
    call DestroyEffect(AddSpecialEffect("Doodads\\Cinematic\\ShimmeringPortal\\ShimmeringPortal.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
    call DestroyEffect(AddSpecialEffect("Doodads\\Cinematic\\ShimmeringPortal\\ShimmeringPortal.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    set real009=GetUnitX(loc_unit02)
    set real010=GetUnitY(loc_unit02)
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),475,Condition(function Func0338))
    call ForGroup(loc_group01,function Func3417)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 71987 ~ 72027
function Func3419 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or loc_unit02==null or Func0194(loc_unit02)then
        call Func0035(loc_trigger01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call UnitRemoveType(loc_unit02,UNIT_TYPE_PEON)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0R0',true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2MB',false)
        call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n03F'))
    elseif loc_unit01==null or Func0194(loc_unit01)then
        call Func0035(loc_trigger01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call UnitRemoveType(loc_unit02,UNIT_TYPE_PEON)
        call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n03G'))
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0R0',true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2MB',false)
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A2MB' then
            call Func0035(loc_trigger01)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call UnitRemoveType(loc_unit02,UNIT_TYPE_PEON)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0R0',true)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2MB',false)
        endif
    else
        call Func0035(loc_trigger01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call UnitRemoveType(loc_unit02,UNIT_TYPE_PEON)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0R0',true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2MB',false)
        call Func3418(loc_unit01,loc_unit02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
