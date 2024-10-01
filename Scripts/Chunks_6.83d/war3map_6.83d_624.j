
// 70235 ~ 70238
function Func3303 takes nothing returns nothing
    call Func0115(unit349,GetEnumUnit(),1,integer517*125+25)
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Naga\\NagaBlood\\NagaBloodWindserpent.mdl",GetEnumUnit(),"overhead"))
endfunction

// 70240 ~ 70249
function Func3304 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=unit124
    local unit loc_unit02=unit125
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    call Func0115(loc_unit01,loc_unit02,1,loc_real01)
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Naga\\NagaBlood\\NagaBloodWindserpent.mdl",loc_unit02,"overhead"))
    set loc_unit01=null
    set loc_unit02=null
endfunction
