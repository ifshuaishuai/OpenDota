
// 37585 ~ 37616
function Func1487 takes nothing returns boolean
    local integer loc_integer01=1
    local trigger loc_trigger01
    call Func0035(GetTriggeringTrigger())
    loop
        exitwhen loc_integer01>28
        call RemoveUnit(units017[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
    call SuspendTimeOfDay(false)
    call Func1481()
    call Func0501()
    call Func1346(90)
    call UnitApplyTimedLife(units016[1],'BTLF',2)
    call UnitApplyTimedLife(units016[2],'BTLF',2)
    call UnitApplyTimedLife(units016[3],'BTLF',2)
    call UnitApplyTimedLife(units016[4],'BTLF',2)
    call UnitApplyTimedLife(units016[5],'BTLF',2)
    call UnitApplyTimedLife(units016[6],'BTLF',2)
    call UnitApplyTimedLife(units016[7],'BTLF',2)
    call UnitApplyTimedLife(units016[8],'BTLF',2)
    call UnitApplyTimedLife(units016[9],'BTLF',2)
    call UnitApplyTimedLife(units016[10],'BTLF',2)
    call UnitApplyTimedLife(units016[11],'BTLF',2)
    call UnitApplyTimedLife(units016[12],'BTLF',2)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,7,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1477))
    set loc_trigger01=null
    call Func1476()
    return false
endfunction

// 37618 ~ 37674
function Func1488 takes nothing returns boolean
    local integer loc_integer01
    local trigger loc_trigger01
    local force loc_force01
    local string loc_string01="|c006699CC"
    set integers130[integer451]=IMaxBJ(integers130[integer451]-1,0)
    call Func1480(false,false)
    if integers133[integer451]<1 then
        if integer451==1 then
            call Func0118(players003[1],"Sound\\Interface\\Rescue.wav")
            call Func0118(players003[2],"Sound\\Interface\\Rescue.wav")
            call Func0118(players003[3],"Sound\\Interface\\Rescue.wav")
            call Func0118(players003[4],"Sound\\Interface\\Rescue.wav")
            call Func0118(players003[5],"Sound\\Interface\\Rescue.wav")
        else
            call Func0118(players004[1],"Sound\\Interface\\Rescue.wav")
            call Func0118(players004[2],"Sound\\Interface\\Rescue.wav")
            call Func0118(players004[3],"Sound\\Interface\\Rescue.wav")
            call Func0118(players004[4],"Sound\\Interface\\Rescue.wav")
            call Func0118(players004[5],"Sound\\Interface\\Rescue.wav")
        endif
        set integer452=integer452+1
        if integer451==1 then
            set integer451=2
            set loc_force01=force002
        else
            set integer451=1
            set loc_force01=force001
        endif
        set integers130[integer451]=IMaxBJ(integers130[integer451],6)
        if integer452==1 or integer452==2 or integer452==3 or integer452==4 then
            set integers133[integer451]=1
            call Func0152(loc_force01,15,loc_string01+GetObjectName('n0H2')+"|r")
        elseif integer452==5 then
            set integers133[integer451]=1
            call Func0152(loc_force01,15,loc_string01+GetObjectName('n0H3')+"|r")
        elseif integer452==6 or integer452==7 or integer452==8 or integer452==9 then
            set integers133[integer451]=2
            call Func0152(loc_force01,15,loc_string01+GetObjectName('n0H4')+"|r")
        elseif integer452==10 then
            set integers133[integer451]=1
            call Func0152(loc_force01,15,loc_string01+GetObjectName('n0H3')+"|r")
        else
            call Func1480(false,true)
            call Func0035(GetTriggeringTrigger())
            call Func0035(trigger065)
            set loc_trigger01=CreateTrigger()
            call TriggerRegisterTimerEvent(loc_trigger01,6,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func1487))
            set loc_trigger01=null
            call Func0152(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName('n0H9'))
        endif
    elseif integers130[integer451]==0 then
        call Func1485()
    endif
    return false
endfunction

// 37676 ~ 37707
function Func1489 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local force loc_force01
    local string loc_string01="|c006699CC"
    call Func0035(loc_trigger01)
    set integer450=GetRandomInt(1,2)
    call Func0152(bj_FORCE_ALL_PLAYERS,15.00," ")
    if integer450==1 then
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName('n05K')+" "+strings001[GetPlayerId(players003[0])]+GetObjectName('n065')+"|r"+" "+GetObjectName('n066'))
    else
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName('n05K')+" "+strings001[GetPlayerId(players004[0])]+GetObjectName('n06C')+"|r"+" "+GetObjectName('n066'))
    endif
    call Func0152(bj_FORCE_ALL_PLAYERS,15.00," ")
    set integer451=integer450
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1488))
    set integers130[1]=150
    set integers130[2]=150
    set integer452=1
    set integers133[integer451]=1
    call Func1480(true,false)
    if integer451==1 then
        set loc_force01=force001
    else
        set loc_force01=force002
    endif
    call Func0152(loc_force01,15,loc_string01+GetObjectName('n0H2')+"|r")
    set boolean112=false
    set loc_trigger01=null
    return false
endfunction

// 37709 ~ 37892
function Func1490 takes nothing returns nothing
    local integer loc_integer01
    local player loc_player01
    local boolean loc_boolean01=false
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local trigger loc_trigger01
    local integer loc_integer02
    local boolean loc_boolean02=false
    local boolean loc_boolean03=false
    local boolean loc_boolean04=false
    local boolean loc_boolean05=false
    local boolean loc_boolean06=false
    local boolean loc_boolean07=false
    local boolean loc_boolean08=false
    local boolean loc_boolean09=false
    local boolean loc_boolean10=false
    local integer loc_integer03
    local string loc_string01="|c006699CC"
    local boolean array loc_booleans01
    call Func1168()
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,15,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1489))
    set loc_trigger01=null
    set integer451=-1
    set boolean102=false
    set boolean060=true
    set boolean039=false
    set boolean038=false
    set boolean092=false
    call Func0118(GetLocalPlayer(),"Sound\\Interface\\Rescue.wav")
    call SuspendTimeOfDay(true)
    set trigger065=CreateTrigger()
    call UnitAddAbility(unit228,'Agho')
    call UnitAddAbility(unit229,'Agho')
    call UnitAddAbility(unit230,'Agho')
    call UnitAddAbility(unit231,'Agho')
    call UnitAddAbility(unit236,'Agho')
    call UnitAddAbility(unit237,'Agho')
    call UnitAddAbility(unit238,'Agho')
    call UnitAddAbility(unit239,'Agho')
    call UnitAddAbility(unit232,'Agho')
    call UnitAddAbility(unit233,'Agho')
    call UnitAddAbility(unit234,'Agho')
    call UnitAddAbility(unit235,'Agho')
    set loc_player01=players003[1]
    set units016[1]=CreateUnit(loc_player01,'n0DC',real242,real243,0)
    call PanCameraToTimedForPlayer(loc_player01,real242,real243,0)
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players003[2]
    set units016[2]=CreateUnit(loc_player01,'n0DC',real242,real243,0)
    call PanCameraToTimedForPlayer(loc_player01,real242,real243,0)
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players003[3]
    set units016[3]=CreateUnit(loc_player01,'n0DC',real242,real243,0)
    call PanCameraToTimedForPlayer(loc_player01,real242,real243,0)
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players003[4]
    set units016[4]=CreateUnit(loc_player01,'n0DC',real242,real243,0)
    call PanCameraToTimedForPlayer(loc_player01,real242,real243,0)
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players003[5]
    set units016[5]=CreateUnit(loc_player01,'n0DC',real242,real243,0)
    call PanCameraToTimedForPlayer(loc_player01,real242,real243,0)
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players004[1]
    set units016[6]=CreateUnit(loc_player01,'n0DC',real242,real243,0)
    call PanCameraToTimedForPlayer(loc_player01,real242,real243,0)
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players004[2]
    set units016[7]=CreateUnit(loc_player01,'n0DC',real242,real243,0)
    call PanCameraToTimedForPlayer(loc_player01,real242,real243,0)
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players004[3]
    set units016[8]=CreateUnit(loc_player01,'n0DC',real242,real243,0)
    call PanCameraToTimedForPlayer(loc_player01,real242,real243,0)
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players004[4]
    set units016[9]=CreateUnit(loc_player01,'n0DC',real242,real243,0)
    call PanCameraToTimedForPlayer(loc_player01,real242,real243,0)
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players004[5]
    set units016[10]=CreateUnit(loc_player01,'n0DC',real242,real243,0)
    call PanCameraToTimedForPlayer(loc_player01,real242,real243,0)
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set reals024[1]=real242+real256*(-3.5)
    set reals025[1]=real243+real257
    set reals024[2]=real242+real256*(3.5)
    set reals025[2]=real243+real257
    set reals024[3]=real242+real256*(-2)
    set reals025[3]=real243+real257
    set reals024[4]=real242+real256*(-1)
    set reals025[4]=real243+real257
    set reals024[5]=real242+real256*(0)
    set reals025[5]=real243+real257
    set reals024[6]=real242+real256*(1)
    set reals025[6]=real243+real257
    set reals024[7]=real242+real256*(2)
    set reals025[7]=real243+real257
    set reals026[1]=real242+real256*(-3.5)
    set reals027[1]=real243-real257
    set reals026[2]=real242+real256*(3.5)
    set reals027[2]=real243-real257
    set reals026[3]=real242+real256*(-2)
    set reals027[3]=real243-real257
    set reals026[4]=real242+real256*(-1)
    set reals027[4]=real243-real257
    set reals026[5]=real242+real256*(0)
    set reals027[5]=real243-real257
    set reals026[6]=real242+real256*(1)
    set reals027[6]=real243-real257
    set reals026[7]=real242+real256*(2)
    set reals027[7]=real243-real257
    call Func0180(real242,real243,600)
    set loc_integer01=1
    loop
        exitwhen loc_integer01>28
        set loc_integer02=Func0093(true,true)
        if loc_boolean02 then
            set loc_boolean02=false
            set loc_integer02=50
        elseif loc_boolean03 then
            set loc_boolean03=false
            set loc_integer02=51
        elseif loc_boolean04 then
            set loc_boolean04=false
            set loc_integer02=104
        elseif loc_boolean05 then
            set loc_boolean05=false
            set loc_integer02=65
        elseif loc_boolean06 then
            set loc_boolean06=false
            set loc_integer02=49
        elseif loc_boolean07 then
            set loc_boolean07=false
            if GetRandomInt(1,2)==1 then
                set loc_integer02=16
            else
                set loc_integer02=86
            endif
        elseif loc_boolean08 then
            set loc_boolean08=false
            if GetRandomInt(1,2)==1 then
                set loc_integer02=73
            else
                set loc_integer02=83
            endif
        elseif loc_boolean09 then
            set loc_boolean09=false
        elseif loc_boolean10 then
            set loc_boolean10=false
        endif
        if loc_booleans01[loc_integer02]==false then
            set loc_booleans01[loc_integer02]=true
            set integers129[loc_integer01]=loc_integer02
            call Func0415("Pool"+I2S(loc_integer01),integers070[integers129[loc_integer01]])
            if loc_boolean01==false then
                set loc_boolean01=true
            else
                set loc_boolean01=false
            endif
            set loc_real01=(loc_integer01/I2R(28))*360.0
            set loc_real02=real242+real255*Cos(loc_real01*bj_DEGTORAD)
            set loc_real03=real243+real255*Sin(loc_real01*bj_DEGTORAD)
            set units017[loc_integer01]=CreateUnit(players003[0],integers077[integers129[loc_integer01]],loc_real02,loc_real03,Func0169(loc_real02,loc_real03,real242,real243))
            call SetUnitPathing(units017[loc_integer01],false)
            call SetUnitX(units017[loc_integer01],loc_real02)
            call SetUnitY(units017[loc_integer01],loc_real03)
            call Func1482(loc_real02,loc_real03)
            if loc_boolean01 then
                call SetUnitColor(units017[loc_integer01],GetPlayerColor(players004[5]))
            else
                call SetUnitColor(units017[loc_integer01],GetPlayerColor(players004[4]))
            endif
            set booleans038[loc_integer01]=false
            call TriggerRegisterUnitEvent(trigger065,units017[loc_integer01],EVENT_UNIT_SELL)
            set loc_integer01=loc_integer01+1
        endif
    endloop
    call TriggerAddCondition(trigger065,Condition(function Func1486))
    call Func0072()
endfunction
