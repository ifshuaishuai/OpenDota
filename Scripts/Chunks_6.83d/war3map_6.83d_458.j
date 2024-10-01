
// 58530 ~ 58535
function Func2644 takes unit loc_unit01,real loc_real01,real loc_real02,integer loc_integer01 returns nothing
    call SetUnitPosition(loc_unit01,loc_real01,loc_real02)
    call IssueImmediateOrder(loc_unit01,"howlofterror")
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\HowlOfTerror\\HowlCaster.mdl",loc_real01,loc_real02))
    set loc_unit01=null
endfunction
