
// 47351 ~ 47359
function Func1954 takes nothing returns nothing
    local real loc_real01=GetUnitX(GetEnumUnit())
    local real loc_real02=GetUnitY(GetEnumUnit())
    local integer loc_integer01=GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
    call SetUnitX(units021[loc_integer01],loc_real01)
    call SetUnitY(units021[loc_integer01],loc_real02)
    call IssueImmediateOrder(units021[loc_integer01],"fanofknives")
    call Func0115(GetTriggerUnit(),GetEnumUnit(),1,real283)
endfunction

// 47361 ~ 47370
function Func1955 takes nothing returns nothing
    local real loc_real01=GetUnitX(GetEnumUnit())
    local real loc_real02=GetUnitY(GetEnumUnit())
    local integer loc_integer01=GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true or IsUnitIllusion(GetEnumUnit())==true then
        call SetUnitX(units021[loc_integer01],loc_real01)
        call SetUnitY(units021[loc_integer01],loc_real02)
        call IssueImmediateOrder(units021[loc_integer01],"fanofknives")
    endif
endfunction
