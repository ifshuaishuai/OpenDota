
// 31027 ~ 31036
function Func1269 takes unit loc_unit01 returns nothing
    local integer loc_integer01=0
    loop
        exitwhen(loc_integer01==16)
        if IsUnitAlly(loc_unit01,Player(loc_integer01))then
            call UnitShareVision(loc_unit01,Player(loc_integer01),true)
        endif
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 31038 ~ 31040
function Func1270 takes nothing returns nothing
    call Func1269(GetEnumUnit())
endfunction

// 31042 ~ 31061
function Func1271 takes nothing returns nothing
    local integer loc_integer01
    local group loc_group01
    set loc_integer01=1
    loop
        exitwhen loc_integer01>5
        call SetPlayerAlliance(players003[0],players003[loc_integer01],ConvertAllianceType(5),false)
        call SetPlayerAlliance(players004[0],players004[loc_integer01],ConvertAllianceType(5),false)
        set loc_integer01=loc_integer01+1
    endloop
    set loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,players003[0],Condition(function Func0011))
    call ForGroup(loc_group01,function Func1270)
    call Func0029(loc_group01)
    set loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,players004[0],Condition(function Func0011))
    call ForGroup(loc_group01,function Func1270)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction
