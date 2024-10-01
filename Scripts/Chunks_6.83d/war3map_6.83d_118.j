
// 23137 ~ 23141
function Func0942 takes integer loc_integer01,unit loc_unit01,unit loc_unit02 returns nothing
    set boolean156=true
    call Func0115(loc_unit01,loc_unit02,1,300+100*loc_integer01)
    set boolean156=false
endfunction

// 23143 ~ 23163
function Func0943 takes nothing returns nothing
    local integer loc_integer01=0
    if GetSpellAbilityId()=='A02O' then
        set loc_integer01=1
    endif
    if GetSpellAbilityId()=='A08Y' then
        set loc_integer01=2
    endif
    if GetSpellAbilityId()=='A08Z' then
        set loc_integer01=3
    endif
    if GetSpellAbilityId()=='A090' then
        set loc_integer01=4
    endif
    if GetSpellAbilityId()=='A092' then
        set loc_integer01=5
    endif
    if loc_integer01>0 and Func0028(GetSpellTargetUnit())==false then
        call Func0942(loc_integer01,GetTriggerUnit(),GetSpellTargetUnit())
    endif
endfunction

// 23165 ~ 23169
function Func0944 takes nothing returns nothing
    if GetSpellAbilityId()=='A2HQ' then
        call Func0546(GetTriggerUnit(),GetSpellTargetUnit())
    endif
endfunction

// 23171 ~ 23175
function Func0945 takes unit loc_unit01,integer loc_integer01,real loc_real01,real loc_real02 returns nothing
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer01,loc_real01,loc_real02,0)
    call UnitApplyTimedLife(loc_unit02,'BTLF',15)
    set loc_unit02=null
endfunction

// 23177 ~ 23191
function Func0946 takes nothing returns nothing
    local unit loc_unit01
    local real loc_real01
    local real loc_real02
    if GetSpellAbilityId()=='A1ZL' then
        set loc_real01=GetDestructableX(GetSpellTargetDestructable())
        set loc_real02=GetDestructableY(GetSpellTargetDestructable())
        call Func0945(GetTriggerUnit(),'n0LM',loc_real01,loc_real02)
    elseif GetSpellAbilityId()=='A1ZM' then
        set loc_real01=GetDestructableX(GetSpellTargetDestructable())
        set loc_real02=GetDestructableY(GetSpellTargetDestructable())
        call Func0945(GetTriggerUnit(),'n0LN',loc_real01,loc_real02)
    endif
    set loc_unit01=null
endfunction

// 23193 ~ 23208
function Func0947 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call UnitRemoveAbility(loc_unit01,'A308')
    call UnitRemoveAbility(loc_unit02,'A308')
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
