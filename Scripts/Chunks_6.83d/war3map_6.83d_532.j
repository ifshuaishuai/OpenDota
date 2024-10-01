
// 63340 ~ 63342
function Func2928 takes nothing returns boolean
    return GetSpellAbilityId()=='A0OK' or GetSpellAbilityId()=='A1VW'
endfunction

// 63344 ~ 63366
function Func2929 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer01=GetHeroInt(loc_unit02,true)-GetHeroInt(loc_unit01,true)
    local integer array loc_integers01
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit02,'A0OK')
    local integer loc_integer03=7+1*loc_integer02
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit02,'A1VW')
        set loc_integer03=7+1*loc_integer02+1
    endif
    set loc_integers01[1]=10
    set loc_integers01[2]=30
    set loc_integers01[3]=50
    if(loc_integer01>0)then
        call UnitDamageTarget(loc_unit02,loc_unit01,loc_integer01*loc_integer03,true,false,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
        call Func0173(I2S(R2I(loc_integer01*loc_integer03)),3,loc_unit01,0.023,216,30,30,216)
        if(loc_integer01<loc_integers01[loc_integer02]or GetUnitAbilityLevel(loc_unit02,'A1VW')>0)then
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl",loc_unit01,"overhead"))
            call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)*.25)
        endif
    endif
endfunction
