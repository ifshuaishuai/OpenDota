
// 85551 ~ 85593
function Func4103 takes unit loc_unit01,unit loc_unit02,real loc_real01,real loc_real02,real loc_real03 returns nothing
    local integer loc_integer01=0
    local real loc_real04
    local real loc_real05=GetUnitY(loc_unit02)
    local real loc_real06
    local real loc_real07
    local real loc_real08
    local real loc_real09
    if loc_unit02!=null then
        set loc_real04=GetUnitX(loc_unit02)
        set loc_real05=GetUnitY(loc_unit02)
        set loc_real06=Func0169(loc_real01,loc_real02,loc_real04,loc_real05)
    else
        set loc_real06=loc_real03
        set loc_real04=loc_real01+50*Cos(loc_real06*bj_DEGTORAD)
        set loc_real05=loc_real02+50*Sin(loc_real06*bj_DEGTORAD)
    endif
    set loc_real09=loc_real06
    set loc_real07=loc_real04+200*Cos(loc_real09*bj_DEGTORAD)
    set loc_real08=loc_real05+200*Sin(loc_real09*bj_DEGTORAD)
    call Func0213(CreateDestructable('B006',loc_real07,loc_real08,-1*loc_real09,0.6,1),7)
    set loc_real09=loc_real06-40
    set loc_real07=loc_real04+200*Cos(loc_real09*bj_DEGTORAD)
    set loc_real08=loc_real05+200*Sin(loc_real09*bj_DEGTORAD)
    call Func0213(CreateDestructable('B006',loc_real07,loc_real08,-1*loc_real09,0.6,1),7)
    set loc_real09=loc_real06-80
    set loc_real07=loc_real04+200*Cos(loc_real09*bj_DEGTORAD)
    set loc_real08=loc_real05+200*Sin(loc_real09*bj_DEGTORAD)
    call Func0213(CreateDestructable('B006',loc_real07,loc_real08,-1*loc_real09,0.6,1),7)
    set loc_real09=loc_real06+40
    set loc_real07=loc_real04+200*Cos(loc_real09*bj_DEGTORAD)
    set loc_real08=loc_real05+200*Sin(loc_real09*bj_DEGTORAD)
    call Func0213(CreateDestructable('B006',loc_real07,loc_real08,-1*loc_real09,0.6,1),7)
    set loc_real09=loc_real06+80
    set loc_real07=loc_real04+200*Cos(loc_real09*bj_DEGTORAD)
    set loc_real08=loc_real05+200*Sin(loc_real09*bj_DEGTORAD)
    call Func0213(CreateDestructable('B006',loc_real07,loc_real08,-1*loc_real09,0.6,1),7)
    if loc_unit02!=null then
        call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\ChainFreeze_F6.mdx",loc_unit02,"chest"))
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\FrostWyrmMissile\\FrostWyrmMissile.mdl",loc_unit02,"chest"))
        call Func0115(unit394,loc_unit02,1,integer537*70)
    endif
endfunction
