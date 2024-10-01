
// 87710 ~ 87713
function Func4200 takes unit loc_unit01 returns nothing
    call UnitRemoveAbility(loc_unit01,'BOhx')
    call UnitRemoveAbility(loc_unit01,'B00H')
endfunction

// 87715 ~ 87718
function Func4201 takes unit loc_unit01 returns nothing
    call UnitRemoveAbility(loc_unit01,'A2H9')
    call UnitRemoveAbility(loc_unit01,'B0FM')
endfunction

// 87720 ~ 87726
function Func4202 takes unit loc_unit01 returns nothing
    call UnitRemoveAbility(loc_unit01,'A2JH')
    call UnitRemoveAbility(loc_unit01,'A2JG')
    call UnitRemoveAbility(loc_unit01,'A2JJ')
    call UnitRemoveAbility(loc_unit01,'A2JI')
    call UnitRemoveAbility(loc_unit01,'B0FL')
endfunction

// 87728 ~ 87731
function Func4203 takes unit loc_unit01 returns nothing
    call Func0193(loc_unit01,'A2H9')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2H9',false)
endfunction
