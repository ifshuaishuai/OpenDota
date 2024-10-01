
// 80057 ~ 80066
function Func3882 takes nothing returns nothing
    local unit loc_unit01=unit374
    local unit loc_unit02=GetEnumUnit()
    local integer loc_integer01=integer528
    call Func3865(loc_unit01,loc_unit02)
    call Func0115(loc_unit01,loc_unit02,1,150+100*loc_integer01)
    call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\PlasmaShot.mdl",loc_unit02,"chest"))
    set loc_unit01=null
    set loc_unit02=null
endfunction
