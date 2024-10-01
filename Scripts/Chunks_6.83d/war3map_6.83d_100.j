
// 22353 ~ 22358
function Func0890 takes nothing returns nothing
    if Func0275(GetEnumUnit())==false then
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A1ZX',false)
        call Func0246(GetEnumUnit(),'A1ZX',1,real206,'B0DX')
    endif
endfunction

// 22360 ~ 22373
function Func0891 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=0
    local boolean loc_boolean01=false
    local boolean loc_boolean02=false
    local integer loc_integer02
    local group loc_group01
    set loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),925,Condition(function Func0329))
    call ForGroup(loc_group01,function Func0890)
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit01=null
endfunction

// 22375 ~ 22379
function Func0892 takes nothing returns nothing
    if GetSpellAbilityId()=='A1ZW' then
        call Func0891()
    endif
endfunction
