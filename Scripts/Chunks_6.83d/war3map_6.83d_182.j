
// 36966 ~ 36976
function Func1469 takes unit loc_unit01 returns integer
    local integer loc_integer01=1
    loop
        exitwhen loc_integer01>24
        if units012[loc_integer01]==loc_unit01 then
            return loc_integer01
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return 0
endfunction

// 36978 ~ 37002
function Func1470 takes nothing returns boolean
    local unit loc_unit01=GetSoldUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    call KillUnit(loc_unit01)
    if booleans037[GetPlayerId(loc_player01)]==true then
        call Func0120(loc_player01,GetObjectName('n0D7'))
        set loc_unit01=null
        set loc_player01=null
        return false
    endif
    if loc_player01!=player019 and loc_player01!=player020 then
        call Func0120(loc_player01,GetObjectName('n0CR'))
        set loc_unit01=null
        set loc_player01=null
        return false
    endif
    if GetUnitTypeId(loc_unit01)=='h06N' then
        call Func1463(loc_player01,Func1469(GetSellingUnit()),false)
        call KillUnit(units014[GetPlayerId(loc_player01)])
        call KillUnit(units015[GetPlayerId(loc_player01)])
    endif
    set loc_unit01=null
    set loc_player01=null
    return false
endfunction

// 37004 ~ 37017
function Func1471 takes nothing returns boolean
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    if GetSpellAbilityId()=='A0ZB' and Func1469(loc_unit02)!=0 then
        if(loc_player01==player019 or loc_player01==player020)and booleans037[GetPlayerId(loc_player01)]==false and booleans036[Func1469(loc_unit02)]==false then
            call Func1463(loc_player01,Func1469(loc_unit02),false)
            call RemoveUnit(loc_unit01)
        endif
    endif
    set loc_unit02=null
    set loc_player01=null
    return false
endfunction
