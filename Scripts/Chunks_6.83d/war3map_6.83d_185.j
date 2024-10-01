
// 37460 ~ 37467
function Func1481 takes nothing returns nothing
    local integer loc_integer01=0
    loop
        exitwhen loc_integer01>integer449
        call RemoveUnit(units018[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 37469 ~ 37472
function Func1482 takes real loc_real01,real loc_real02 returns nothing
    set units018[integer449]=CreateUnit(Player(0),'h06I',loc_real01,loc_real02,0)
    set integer449=integer449+1
endfunction

// 37474 ~ 37542
function Func1483 takes integer loc_integer01,boolean loc_boolean01 returns nothing
    local player loc_player01
    local real loc_real01
    set booleans038[loc_integer01]=true
    set integers133[integer451]=integers133[integer451]-1
    if integer451==1 then
        set loc_player01=players003[1]
        set integer453=integer453+1
        set integers131[integer453]=integers129[loc_integer01]
        if integer453<3 then
            call UnitAddAbility(units017[loc_integer01],'Aetl')
            call UnitAddAbility(units017[loc_integer01],'Aloc')
        endif
        call SetUnitPosition(units017[loc_integer01],reals024[integer453],reals025[integer453])
        set loc_real01=RMaxBJ(Func0050(units017[loc_integer01])-0.3,0.5)
        call Func1482(reals024[integer453],reals025[integer453])
        call SetUnitScale(units017[loc_integer01],loc_real01,loc_real01,loc_real01)
        call SetUnitFacing(units017[loc_integer01],270)
        if loc_boolean01==false then
            if integer452==1 or integer452==2 or integer452==3 or integer452==4 then
                call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n0H5')+" "+GetUnitName(units017[loc_integer01]))
                call Func0415("Ban"+I2S(GetPlayerId(loc_player01)),integers070[integers129[loc_integer01]])
            else
                call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n0H6')+" "+GetUnitName(units017[loc_integer01]))
                call Func0415("Pick"+I2S(GetPlayerId(loc_player01)),integers070[integers129[loc_integer01]])
            endif
        else
            if integer452==1 or integer452==2 or integer452==3 or integer452==4 then
                call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n0H7')+" "+GetUnitName(units017[loc_integer01]))
                call Func0415("Ban"+I2S(GetPlayerId(loc_player01)),integers070[integers129[loc_integer01]])
            else
                call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n0H8')+" "+GetUnitName(units017[loc_integer01]))
                call Func0415("Pick"+I2S(GetPlayerId(loc_player01)),integers070[integers129[loc_integer01]])
            endif
        endif
    else
        set loc_player01=players004[1]
        set integer454=integer454+1
        set integers132[integer454]=integers129[loc_integer01]
        if integer454<3 then
            call UnitAddAbility(units017[loc_integer01],'Aetl')
            call UnitAddAbility(units017[loc_integer01],'Aloc')
        endif
        call SetUnitPosition(units017[loc_integer01],reals026[integer454],reals027[integer454])
        set loc_real01=RMaxBJ(Func0050(units017[loc_integer01])-0.3,0.5)
        call Func1482(reals026[integer454],reals027[integer454])
        call SetUnitScale(units017[loc_integer01],loc_real01,loc_real01,loc_real01)
        call SetUnitFacing(units017[loc_integer01],90)
        if loc_boolean01==false then
            if integer452==1 or integer452==2 or integer452==3 or integer452==4 then
                call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n0H5')+" "+GetUnitName(units017[loc_integer01]))
                call Func0415("Ban"+I2S(GetPlayerId(loc_player01)),integers070[integers129[loc_integer01]])
            else
                call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n0H6')+" "+GetUnitName(units017[loc_integer01]))
                call Func0415("Pick"+I2S(GetPlayerId(loc_player01)),integers070[integers129[loc_integer01]])
            endif
        else
            if integer452==1 or integer452==2 or integer452==3 or integer452==4 then
                call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n0H7')+" "+GetUnitName(units017[loc_integer01]))
                call Func0415("Ban"+I2S(GetPlayerId(loc_player01)),integers070[integers129[loc_integer01]])
            else
                call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n0H8')+" "+GetUnitName(units017[loc_integer01]))
                call Func0415("Pick"+I2S(GetPlayerId(loc_player01)),integers070[integers129[loc_integer01]])
            endif
        endif
    endif
    call PauseUnit(units017[loc_integer01],true)
    call SetUnitOwner(units017[loc_integer01],loc_player01,true)
endfunction

// 37544 ~ 37554
function Func1484 takes unit loc_unit01 returns integer
    local integer loc_integer01=1
    loop
        exitwhen loc_integer01>28
        if units017[loc_integer01]==loc_unit01 then
            return loc_integer01
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return 0
endfunction

// 37556 ~ 37563
function Func1485 takes nothing returns nothing
    local integer loc_integer01
    loop
        set loc_integer01=GetRandomInt(1,28)
        exitwhen booleans038[loc_integer01]==false
    endloop
    call Func1483(loc_integer01,true)
endfunction

// 37565 ~ 37583
function Func1486 takes nothing returns boolean
    local unit loc_unit01=GetSoldUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local integer loc_integer01=GetPlayerId(loc_player01)
    local player loc_player02
    if integer451==1 then
        set loc_player02=players003[1]
    else
        set loc_player02=players004[1]
    endif
    call KillUnit(loc_unit01)
    if boolean112 or integers133[integer451]<1 or loc_player01!=loc_player02 then
        call Func0120(loc_player01,GetObjectName('n0CR'))
    elseif GetUnitTypeId(loc_unit01)=='h06N' then
        call Func1483(Func1484(GetSellingUnit()),false)
    endif
    set loc_unit01=null
    return false
endfunction
