
// 21774 ~ 21819
function Func0855 takes unit loc_unit01,player loc_player01 returns nothing
    local integer loc_integer01
    if Func0056(loc_player01)then
        set loc_integer01=1
        if loc_unit01!=units006[loc_integer01]then
            call IssueImmediateOrder(units006[loc_integer01],"coldarrows")
        endif
        set loc_integer01=2
        if loc_unit01!=units006[loc_integer01]then
            call IssueImmediateOrder(units006[loc_integer01],"coldarrows")
        endif
        set loc_integer01=3
        if loc_unit01!=units006[loc_integer01]then
            call IssueImmediateOrder(units006[loc_integer01],"coldarrows")
        endif
        set loc_integer01=4
        if loc_unit01!=units006[loc_integer01]then
            call IssueImmediateOrder(units006[loc_integer01],"coldarrows")
        endif
        set loc_integer01=5
        if loc_unit01!=units006[loc_integer01]then
            call IssueImmediateOrder(units006[loc_integer01],"coldarrows")
        endif
    else
        set loc_integer01=7
        if loc_unit01!=units006[loc_integer01]then
            call IssueImmediateOrder(units006[loc_integer01],"coldarrows")
        endif
        set loc_integer01=8
        if loc_unit01!=units006[loc_integer01]then
            call IssueImmediateOrder(units006[loc_integer01],"coldarrows")
        endif
        set loc_integer01=9
        if loc_unit01!=units006[loc_integer01]then
            call IssueImmediateOrder(units006[loc_integer01],"coldarrows")
        endif
        set loc_integer01=10
        if loc_unit01!=units006[loc_integer01]then
            call IssueImmediateOrder(units006[loc_integer01],"coldarrows")
        endif
        set loc_integer01=11
        if loc_unit01!=units006[loc_integer01]then
            call IssueImmediateOrder(units006[loc_integer01],"coldarrows")
        endif
    endif
endfunction

// 21821 ~ 21844
function Func0856 takes nothing returns nothing
    local group loc_group01
    local unit loc_unit01=GetTriggerUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    if(Func0056(loc_player01)and boolean070==false)or(Func0056(loc_player01)==false and boolean071==false)then
        set loc_group01=Func0030()
        set player013=loc_player01
        call GroupEnumUnitsInRange(loc_group01,0,0,12000,Condition(function Func0853))
        call ForGroup(loc_group01,function Func0854)
        call Func0029(loc_group01)
        if Func0056(loc_player01)then
            set boolean070=true
            call Func0855(loc_unit01,loc_player01)
            set boolean070=false
        else
            set boolean071=true
            call Func0855(loc_unit01,loc_player01)
            set boolean071=false
        endif
    endif
    set loc_group01=null
    set loc_unit01=null
    set loc_player01=null
endfunction

// 21846 ~ 21850
function Func0857 takes nothing returns nothing
    if GetSpellAbilityId()=='A141' or GetSpellAbilityId()=='A1WI' then
        call Func0856()
    endif
endfunction
