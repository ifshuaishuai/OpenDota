
// 37019 ~ 37041
function Func1472 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01
    local integer loc_integer02=1
    call Func0035(loc_trigger01)
    call SuspendTimeOfDay(true)
    set integer447=GetRandomInt(1,2)
    call Func0152(bj_FORCE_ALL_PLAYERS,15.00," ")
    if integer447==1 then
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName('n05K')+" "+strings001[GetPlayerId(players003[0])]+GetObjectName('n065')+"|r"+" "+GetObjectName('n066'))
    else
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName('n05K')+" "+strings001[GetPlayerId(players004[0])]+GetObjectName('n06C')+"|r"+" "+GetObjectName('n066'))
    endif
    call Func0152(bj_FORCE_ALL_PLAYERS,15.00," ")
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,20,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1468))
    call SaveInteger(hashtable001,(loc_integer01),(25),(0))
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 37043 ~ 37049
function Func1473 takes nothing returns boolean
    if boolean111==false then
        set boolean111=true
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName('n0GD'))
    endif
    return false
endfunction

// 37051 ~ 37258
function Func1474 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=1
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local integer loc_integer02
    local integer loc_integer03
    local boolean loc_boolean01=false
    local boolean loc_boolean02=false
    local boolean loc_boolean03=false
    local boolean loc_boolean04=false
    local boolean loc_boolean05=false
    local boolean loc_boolean06=false
    local boolean loc_boolean07=false
    local boolean loc_boolean08=false
    local boolean loc_boolean09=false
    local boolean array loc_booleans01
    local player loc_player01
    local real loc_real04
    local boolean loc_boolean10=false
    local real loc_real05
    set boolean102=false
    set trigger064=CreateTrigger()
    call TriggerAddCondition(trigger064,Condition(function Func1470))
    call Func0118(GetLocalPlayer(),"Sound\\Interface\\Rescue.wav")
    set loc_player01=players003[1]
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players003[2]
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players003[3]
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players003[4]
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players003[5]
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players004[1]
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players004[2]
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players004[3]
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players004[4]
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    set loc_player01=players004[5]
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
    call TriggerRegisterTimerEvent(loc_trigger01,15-TimerGetElapsed(timer001),false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1472))
    set boolean109=true
    set integer027=180
    set boolean039=false
    set boolean038=false
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
    call ShowUnit(unit228,false)
    call ShowUnit(unit229,false)
    call ShowUnit(unit230,false)
    call ShowUnit(unit231,false)
    call ShowUnit(unit236,false)
    call ShowUnit(unit237,false)
    call ShowUnit(unit238,false)
    call ShowUnit(unit239,false)
    call ShowUnit(unit232,false)
    call ShowUnit(unit233,false)
    call ShowUnit(unit234,false)
    call ShowUnit(unit235,false)
    set loc_integer01=1
    loop
        exitwhen loc_integer01>24
        set loc_integer03=Func0093(true,true)
        if loc_boolean01 then
            set loc_boolean01=false
            set loc_integer03=91
        elseif loc_boolean02 then
            set loc_boolean02=false
            set loc_integer03=51
        elseif loc_boolean03 then
            set loc_boolean03=false
            set loc_integer03=99
        elseif loc_boolean04 then
            set loc_boolean04=false
            if GetRandomInt(1,2)==1 then
                set loc_integer03=104
            else
                set loc_integer03=65
            endif
        elseif loc_boolean05 then
            set loc_boolean05=false
            set loc_integer03=109
        elseif loc_boolean06 then
            set loc_boolean06=false
            set loc_integer03=15
        elseif loc_boolean07 then
            set loc_boolean07=false
            set loc_integer03=110
        elseif loc_boolean08 then
            set loc_boolean08=false
        elseif loc_boolean09 then
            set loc_boolean09=false
        endif
        if loc_booleans01[loc_integer03]==false and((loc_integer03)!=23)then
            set loc_booleans01[loc_integer03]=true
            set integers128[loc_integer01]=loc_integer03
            set loc_integer01=loc_integer01+1
        endif
    endloop
    set units011[1]=CreateUnit(players003[0],'n0DC',real244,real245,0)
    set units011[2]=CreateUnit(players003[1],'n0DC',real244,real245,0)
    set units011[3]=CreateUnit(players003[2],'n0DC',real244,real245,0)
    set units011[4]=CreateUnit(players003[3],'n0DC',real244,real245,0)
    set units011[5]=CreateUnit(players003[4],'n0DC',real244,real245,0)
    set units011[6]=CreateUnit(players003[5],'n0DC',real244,real245,0)
    set units011[7]=CreateUnit(players004[0],'n0DC',real246,real247,0)
    set units011[8]=CreateUnit(players004[1],'n0DC',real246,real247,0)
    set units011[9]=CreateUnit(players004[2],'n0DC',real246,real247,0)
    set units011[10]=CreateUnit(players004[3],'n0DC',real246,real247,0)
    set units011[11]=CreateUnit(players004[4],'n0DC',real246,real247,0)
    set units011[12]=CreateUnit(players004[5],'n0DC',real246,real247,0)
    call PanCameraToTimedForPlayer(players003[1],real244,real245,0)
    call PanCameraToTimedForPlayer(players003[2],real244,real245,0)
    call PanCameraToTimedForPlayer(players003[3],real244,real245,0)
    call PanCameraToTimedForPlayer(players003[4],real244,real245,0)
    call PanCameraToTimedForPlayer(players003[5],real244,real245,0)
    call PanCameraToTimedForPlayer(players004[1],real244,real245,0)
    call PanCameraToTimedForPlayer(players004[2],real244,real245,0)
    call PanCameraToTimedForPlayer(players004[3],real244,real245,0)
    call PanCameraToTimedForPlayer(players004[4],real244,real245,0)
    call PanCameraToTimedForPlayer(players004[5],real244,real245,0)
    set real251=real244
    set real252=real245
    set real253=real246
    set real254=real247
    set reals016[1]=real244+real249*(-2)
    set reals017[1]=real245+real250
    set reals016[2]=real244+real249*(-1)
    set reals017[2]=real245+real250
    set reals016[3]=real244+real249*(0)
    set reals017[3]=real245+real250
    set reals016[4]=real244+real249*(1)
    set reals017[4]=real245+real250
    set reals016[5]=real244+real249*(2)
    set reals017[5]=real245+real250
    set reals018[1]=real244+real249*(-2)
    set reals019[1]=real245-real250
    set reals018[2]=real244+real249*(-1)
    set reals019[2]=real245-real250
    set reals018[3]=real244+real249*(0)
    set reals019[3]=real245-real250
    set reals018[4]=real244+real249*(1)
    set reals019[4]=real245-real250
    set reals018[5]=real244+real249*(2)
    set reals019[5]=real245-real250
    set reals020[1]=real246+real249*(-2)
    set reals021[1]=real247+real250
    set reals020[2]=real246+real249*(-1)
    set reals021[2]=real247+real250
    set reals020[3]=real246+real249*(0)
    set reals021[3]=real247+real250
    set reals020[4]=real246+real249*(1)
    set reals021[4]=real247+real250
    set reals020[5]=real246+real249*(2)
    set reals021[5]=real247+real250
    set reals022[1]=real246+real249*(-2)
    set reals023[1]=real247-real250
    set reals022[2]=real246+real249*(-1)
    set reals023[2]=real247-real250
    set reals022[3]=real246+real249*(0)
    set reals023[3]=real247-real250
    set reals022[4]=real246+real249*(1)
    set reals023[4]=real247-real250
    set reals022[5]=real246+real249*(2)
    set reals023[5]=real247-real250
    set loc_real04=real248
    set loc_integer01=1
    loop
        exitwhen loc_integer01>24
        if loc_boolean10==false then
            set loc_boolean10=true
        else
            set loc_boolean10=false
        endif
        set loc_real03=loc_integer01/I2R(24)*360.0
        set loc_real01=real244+loc_real04*Cos(loc_real03*bj_DEGTORAD)
        set loc_real02=real245+loc_real04*Sin(loc_real03*bj_DEGTORAD)
        set units012[loc_integer01]=CreateUnit(players003[0],integers077[integers128[loc_integer01]],loc_real01,loc_real02,Func0169(loc_real01,loc_real02,real244,real245))
        call Func1455(loc_real01,loc_real02)
        if loc_boolean10 then
            call SetUnitColor(units012[loc_integer01],GetPlayerColor(players004[5]))
        else
            call SetUnitColor(units012[loc_integer01],GetPlayerColor(players004[4]))
        endif
        call TriggerRegisterUnitEvent(trigger064,units012[loc_integer01],EVENT_UNIT_SELL)
        set loc_integer01=loc_integer01+1
    endloop
    call Func0072()
    set loc_trigger01=null
    set loc_player01=null
endfunction

// 37260 ~ 37291
function Func1475 takes nothing returns boolean
    local unit loc_unit01=GetSoldUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local integer loc_integer01
    local real loc_real01
    local real loc_real02
    local real loc_real03
    if GetUnitTypeId(loc_unit01)=='h06N' and IsPlayerAlly(GetOwningPlayer(loc_unit01),GetOwningPlayer(GetSellingUnit()))then
        if units001[GetPlayerId(loc_player01)]!=null then
            call Func0120(loc_player01,GetObjectName('n0F3'))
            call KillUnit(loc_unit01)
            set loc_unit01=null
            set loc_player01=null
            return false
        endif
        set loc_real01=GetUnitX(GetSellingUnit())
        set loc_real02=GetUnitY(GetSellingUnit())
        set loc_integer01=Func0104(GetUnitTypeId(GetSellingUnit()))
        set loc_real03=GetUnitFacing(GetSellingUnit())
        call RemoveUnit(GetSellingUnit())
        call CreateUnit(loc_player01,loc_integer01,loc_real01,loc_real02,loc_real03)
    endif
    if GetUnitTypeId(loc_unit01)=='h06N' then
        call KillUnit(loc_unit01)
    endif
    if units001[GetPlayerId(players003[1])]!=null and units001[GetPlayerId(players003[2])]!=null and units001[GetPlayerId(players003[3])]!=null and units001[GetPlayerId(players003[4])]!=null and units001[GetPlayerId(players003[5])]!=null and units001[GetPlayerId(players004[1])]!=null and units001[GetPlayerId(players004[2])]!=null and units001[GetPlayerId(players004[3])]!=null and units001[GetPlayerId(players004[4])]!=null and units001[GetPlayerId(players004[5])]!=null then
        call Func0035(GetTriggeringTrigger())
    endif
    set loc_unit01=null
    set loc_player01=null
    return false
endfunction

// 37293 ~ 37338
function Func1476 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01
    local integer loc_integer02
    local string loc_string01
    local unit loc_unit01
    local real loc_real01
    local real loc_real02
    local integer loc_integer03
    local real loc_real03
    local real loc_real04=GetRectCenterX(rect011)+125
    local real loc_real05=GetRectCenterY(rect011)+75
    local real loc_real06=GetRectCenterX(rect004)+100
    local real loc_real07=GetRectCenterY(rect004)
    set boolean092=true
    set loc_integer03=1
    loop
        exitwhen loc_integer03>5
        set loc_real01=loc_real04-290+(loc_integer03-1)*100
        set loc_real02=loc_real05
        call CreateUnit(players003[loc_integer03+1],'n00C',loc_real04,loc_real05,bj_UNIT_FACING)
        set loc_unit01=CreateUnit(players003[0],integers077[integers131[loc_integer03+2]],loc_real01,loc_real02,270)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SELL)
        call PanCameraToTimedForPlayer(players003[loc_integer03],loc_real04,loc_real05,0)
        set loc_integer03=loc_integer03+1
    endloop
    set loc_integer03=1
    loop
        exitwhen loc_integer03>5
        set loc_real01=loc_real06-290+(loc_integer03-1)*100
        set loc_real02=loc_real07
        call CreateUnit(players004[loc_integer03+1],'n00C',loc_real06,loc_real07,bj_UNIT_FACING)
        set loc_unit01=CreateUnit(players004[0],integers077[integers132[loc_integer03+2]],loc_real01,loc_real02,270)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SELL)
        call PanCameraToTimedForPlayer(players004[loc_integer03],loc_real06,loc_real07,0)
        set loc_integer03=loc_integer03+1
    endloop
    call TriggerAddCondition(loc_trigger01,Condition(function Func1475))
    call SuspendTimeOfDay(false)
    call EnableTrigger(trigger052)
    call EnableTrigger(trigger050)
    set integer027=90
    call Func1407()
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 37340 ~ 37348
function Func1477 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    set boolean062=true
    call Func0035(loc_trigger01)
    call DestroyFogModifier(CreateFogModifierRadius(players003[0],FOG_OF_WAR_MASKED,real242,real243,700,false,false))
    call DestroyFogModifier(CreateFogModifierRadius(players004[0],FOG_OF_WAR_MASKED,real242,real243,700,false,false))
    set loc_trigger01=null
    return false
endfunction
