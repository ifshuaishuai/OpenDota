
// 54669 ~ 54671
function Func2414 takes integer loc_integer01 returns boolean
    return loc_integer01=='A2YZ' or loc_integer01=='A2YW' or loc_integer01=='A2YV' or loc_integer01=='A2YY' or loc_integer01=='A2YX' or loc_integer01=='A2Z0' or loc_integer01=='A2ZL'
endfunction

// 54673 ~ 54702
function Func2415 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01=10+30*GetUnitAbilityLevel(loc_unit01,'A0K9')
    local trigger loc_trigger01
    local integer loc_integer01
    local real loc_real02=GetUnitX(loc_unit02)-75*Cos(GetUnitFacing(loc_unit02)*bj_DEGTORAD)
    local real loc_real03=GetUnitY(loc_unit02)-75*Sin(GetUnitFacing(loc_unit02)*bj_DEGTORAD)
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(828)))
    if loc_integer02>0 then
        call SetUnitX(loc_unit01,loc_real02)
        call SetUnitY(loc_unit01,loc_real03)
        call SetUnitFacing(loc_unit01,GetUnitFacing(loc_unit02))
        call DestroyEffect(AddSpecialEffect("war3mapImported\\BlinkStrike.mdx",loc_real02,loc_real03))
        if IsUnitEnemy(loc_unit02,GetOwningPlayer(loc_unit01))then
            call Func0115(loc_unit01,loc_unit02,1,loc_real01)
            call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(332),(true))
            call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
        endif
        call UnitRemoveAbility(loc_unit01,integers157[loc_integer02])
        set loc_integer02=loc_integer02-1
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(828),(loc_integer02))
        call Func0193(loc_unit01,integers157[loc_integer02])
    else
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0NY'))
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 54704 ~ 54709
function Func2416 takes nothing returns boolean
    if Func2414(GetSpellAbilityId())then
        call Func2415()
    endif
    return false
endfunction

// 54711 ~ 54716
function Func2417 takes nothing returns boolean
    if Func2414(GetSpellAbilityId())then
        call DestroyEffect(AddSpecialEffect("war3mapImported\\BlinkStrike.mdx",GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit())))
    endif
    return false
endfunction
