
// 52024 ~ 52042
function Func2251 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2KU')
    local integer loc_integer02='A244'
    call Func0115(loc_unit01,loc_unit02,1,100+30*loc_integer01)
    if loc_integer01==2 then
        set loc_integer02='A245'
    elseif loc_integer01==3 then
        set loc_integer02='A246'
    elseif loc_integer01==4 then
        set loc_integer02='A247'
    endif
    if Func0275(loc_unit02)==false then
        call Func0243(loc_unit02,loc_integer02,1,8)
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),loc_integer02,false)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\CrushingWave\\CrushingWaveDamage.mdl",loc_unit02,"chest"))
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 52044 ~ 52049
function Func2252 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group013)==false and Func0098(GetEnumUnit())==false then
        call GroupAddUnit(group013,GetEnumUnit())
        call Func2251(unit292,GetEnumUnit())
    endif
endfunction

// 52051 ~ 52065
function Func2253 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local group loc_group01=Func0030()
    call DestroyEffect(AddSpecialEffect("war3mapImported\\RipTide09.mdx",loc_real01,loc_real02))
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,320+25,Condition(function Func0305))
    call ForGroup(loc_group01,function Func2252)
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_group01=null
endfunction
