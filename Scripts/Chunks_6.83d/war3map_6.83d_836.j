
// 87509 ~ 87543
function Func4189 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A29V')
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A29W' then
            call UnitRemoveAbility(loc_unit01,'A29W')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A29W',false)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A29V',true)
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call Func0365(loc_unit01,loc_unit02,0.5+0.5*loc_integer02)
            call SetUnitX(loc_unit01,GetUnitX(loc_unit02))
            call SetUnitY(loc_unit01,GetUnitY(loc_unit02))
            call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
            call UnitShareVision(loc_unit02,GetOwningPlayer(loc_unit01),false)
        endif
    else
        call UnitRemoveAbility(loc_unit01,'A29W')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A29W',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A29V',true)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call UnitShareVision(loc_unit02,GetOwningPlayer(loc_unit01),false)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
