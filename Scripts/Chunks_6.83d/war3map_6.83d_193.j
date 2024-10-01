
// 39560 ~ 39604
function Func1517 takes nothing returns boolean
    local player loc_player01
    set boolean041=true
    set loc_player01=players003[1]
    if(GetPlayerSlotState((loc_player01))==PLAYER_SLOT_STATE_EMPTY)==false and booleans006[GetPlayerId(loc_player01)]==false then
        call Func0092(loc_player01)
    endif
    set loc_player01=players003[2]
    if(GetPlayerSlotState((loc_player01))==PLAYER_SLOT_STATE_EMPTY)==false and booleans006[GetPlayerId(loc_player01)]==false then
        call Func0092(loc_player01)
    endif
    set loc_player01=players003[3]
    if(GetPlayerSlotState((loc_player01))==PLAYER_SLOT_STATE_EMPTY)==false and booleans006[GetPlayerId(loc_player01)]==false then
        call Func0092(loc_player01)
    endif
    set loc_player01=players003[4]
    if(GetPlayerSlotState((loc_player01))==PLAYER_SLOT_STATE_EMPTY)==false and booleans006[GetPlayerId(loc_player01)]==false then
        call Func0092(loc_player01)
    endif
    set loc_player01=players003[5]
    if(GetPlayerSlotState((loc_player01))==PLAYER_SLOT_STATE_EMPTY)==false and booleans006[GetPlayerId(loc_player01)]==false then
        call Func0092(loc_player01)
    endif
    set loc_player01=players004[1]
    if(GetPlayerSlotState((loc_player01))==PLAYER_SLOT_STATE_EMPTY)==false and booleans006[GetPlayerId(loc_player01)]==false then
        call Func0092(loc_player01)
    endif
    set loc_player01=players004[2]
    if(GetPlayerSlotState((loc_player01))==PLAYER_SLOT_STATE_EMPTY)==false and booleans006[GetPlayerId(loc_player01)]==false then
        call Func0092(loc_player01)
    endif
    set loc_player01=players004[3]
    if(GetPlayerSlotState((loc_player01))==PLAYER_SLOT_STATE_EMPTY)==false and booleans006[GetPlayerId(loc_player01)]==false then
        call Func0092(loc_player01)
    endif
    set loc_player01=players004[4]
    if(GetPlayerSlotState((loc_player01))==PLAYER_SLOT_STATE_EMPTY)==false and booleans006[GetPlayerId(loc_player01)]==false then
        call Func0092(loc_player01)
    endif
    set loc_player01=players004[5]
    if(GetPlayerSlotState((loc_player01))==PLAYER_SLOT_STATE_EMPTY)==false and booleans006[GetPlayerId(loc_player01)]==false then
        call Func0092(loc_player01)
    endif
    return false
endfunction

// 39606 ~ 39611
function Func1518 takes nothing returns boolean
    set boolean038=false
    set boolean039=false
    call Func0072()
    return false
endfunction

// 39613 ~ 39675
function Func1519 takes nothing returns nothing
    local integer loc_integer01=2000
    local player array loc_players01
    local player array loc_players02
    local integer loc_integer02=0
    local integer loc_integer03=0
    local integer loc_integer04=0
    local trigger loc_trigger01=CreateTrigger()
    set boolean040=true
    call TriggerAddCondition(loc_trigger01,Condition(function Func1517))
    call TriggerRegisterTimerEvent(loc_trigger01,60-TimerGetElapsed(timer001),false)
    set loc_trigger01=CreateTrigger()
    call TriggerAddCondition(loc_trigger01,Condition(function Func1518))
    call TriggerRegisterTimerEvent(loc_trigger01,57-TimerGetElapsed(timer001),false)
    set loc_trigger01=null
    if Func0059(players003[1])then
        set loc_integer02=loc_integer02+1
        set loc_players01[loc_integer02]=players003[1]
    endif
    if Func0059(players003[2])then
        set loc_integer02=loc_integer02+1
        set loc_players01[loc_integer02]=players003[2]
    endif
    if Func0059(players003[3])then
        set loc_integer02=loc_integer02+1
        set loc_players01[loc_integer02]=players003[3]
    endif
    if Func0059(players003[4])then
        set loc_integer02=loc_integer02+1
        set loc_players01[loc_integer02]=players003[4]
    endif
    if Func0059(players003[5])then
        set loc_integer02=loc_integer02+1
        set loc_players01[loc_integer02]=players003[5]
    endif
    if Func0059(players004[1])then
        set loc_integer03=loc_integer03+1
        set loc_players02[loc_integer03]=players004[1]
    endif
    if Func0059(players004[2])then
        set loc_integer03=loc_integer03+1
        set loc_players02[loc_integer03]=players004[2]
    endif
    if Func0059(players004[3])then
        set loc_integer03=loc_integer03+1
        set loc_players02[loc_integer03]=players004[3]
    endif
    if Func0059(players004[4])then
        set loc_integer03=loc_integer03+1
        set loc_players02[loc_integer03]=players004[4]
    endif
    if Func0059(players004[5])then
        set loc_integer03=loc_integer03+1
        set loc_players02[loc_integer03]=players004[5]
    endif
    set loc_integer04=1
    loop
        exitwhen loc_integer04>loc_integer02
        call SavePlayerHandle(hashtable001,(2000),(550+GetPlayerId(loc_players01[loc_integer04])),(loc_players02[loc_integer04]))
        call SavePlayerHandle(hashtable001,(2000),(550+GetPlayerId(loc_players02[loc_integer04])),(loc_players01[loc_integer04]))
        set loc_integer04=loc_integer04+1
    endloop
endfunction

// 39677 ~ 39679
function Func1520 takes nothing returns nothing
    call Func0136(GetEnumUnit())
endfunction

// 39681 ~ 39689
function Func1521 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetPlayerId(GetOwningPlayer(loc_unit01))
    set items001[loc_integer01]=UnitItemInSlot(loc_unit01,0)
    set items002[loc_integer01]=UnitItemInSlot(loc_unit01,1)
    set items003[loc_integer01]=UnitItemInSlot(loc_unit01,2)
    set items004[loc_integer01]=UnitItemInSlot(loc_unit01,3)
    set items005[loc_integer01]=UnitItemInSlot(loc_unit01,4)
    set items006[loc_integer01]=UnitItemInSlot(loc_unit01,5)
endfunction

// 39691 ~ 39713
function Func1522 takes player loc_player01,player loc_player02 returns integer
    local unit loc_unit01=units001[GetPlayerId(loc_player01)]
    local unit loc_unit02=units001[GetPlayerId(loc_player02)]
    call UnitRemoveBuffs(loc_unit01,true,true)
    call UnitRemoveBuffs(loc_unit02,true,true)
    if loc_unit01==null and loc_unit02==null then
        call Func0152(bj_FORCE_ALL_PLAYERS,15,strings001[GetPlayerId(players003[0])]+(strings005[GetPlayerId((loc_player01))])+" "+GetObjectName('n067')+" "+(strings005[GetPlayerId((loc_player02))])+" "+GetObjectName('n0A0')+"|r")
    elseif GetRandomInt(1,2)==1 then
        if(loc_unit01!=null)then
            return GetUnitTypeId(loc_unit01)
        else
            return GetUnitTypeId(loc_unit02)
        endif
    else
        if(loc_unit02!=null)then
            return GetUnitTypeId(loc_unit02)
        else
            return GetUnitTypeId(loc_unit01)
        endif
    endif
    call Func0152(bj_FORCE_ALL_PLAYERS,15,strings001[GetPlayerId(players003[0])]+(strings005[GetPlayerId((loc_player01))])+" "+GetObjectName('n067')+" "+(strings005[GetPlayerId((loc_player02))])+" "+GetObjectName('n09B'))
    return Func0076()
endfunction

// 39715 ~ 39722
function Func1523 takes nothing returns nothing
    if(GetUnitTypeId(GetEnumUnit())=='n004')then
        call RemoveUnit(GetEnumUnit())
    endif
    if(GetUnitTypeId(GetEnumUnit())=='o003')then
        call RemoveUnit(GetEnumUnit())
    endif
endfunction

// 39724 ~ 39831
function Func1524 takes nothing returns boolean
    local integer loc_integer01
    local group loc_group01=Func0030()
    local unit loc_unit01
    local location loc_location01=GetRectCenter(rect011)
    local location loc_location02=GetRectCenter(rect004)
    local integer loc_integer02=Func0063(force001)
    local player array loc_players01
    local player array loc_players02
    local integer loc_integer03
    local integer loc_integer04
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local integer loc_integer05
    local group loc_group02=Func0030()
    call GroupEnumUnitsInRect(loc_group02,GetWorldBounds(),Condition(function Func0011))
    call ForGroup(loc_group02,function Func1523)
    call Func0029(loc_group02)
    set loc_integer01=1
    set loc_integer03=1
    set loc_integer04=1
    loop
        exitwhen loc_integer01>5
        if(Func0059(players003[loc_integer01]))then
            call Func1521(units001[GetPlayerId(players003[loc_integer01])])
            call GroupAddUnit(loc_group01,units001[GetPlayerId(players003[loc_integer01])])
            set loc_players01[loc_integer03]=players003[loc_integer01]
            set loc_integer03=loc_integer03+1
        endif
        if(Func0059(players004[loc_integer01]))then
            call Func1521(units001[GetPlayerId(players004[loc_integer01])])
            call GroupAddUnit(loc_group01,units001[GetPlayerId(players004[loc_integer01])])
            set loc_players02[loc_integer04]=players004[loc_integer01]
            set loc_integer04=loc_integer04+1
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer03=1
    loop
        exitwhen loc_integer03>loc_integer02
        set loc_integer05=Func1522(loc_players01[loc_integer03],loc_players02[loc_integer03])
        if(units001[GetPlayerId(loc_players01[loc_integer03])]==null)then
            set loc_real01=GetLocationX(loc_location01)+GetRandomReal(1,40)
            set loc_real02=GetLocationY(loc_location01)+GetRandomReal(1,40)
            set loc_real03=270
        else
            set loc_real01=GetUnitX(units001[GetPlayerId(loc_players01[loc_integer03])])
            set loc_real02=GetUnitY(units001[GetPlayerId(loc_players01[loc_integer03])])
            set loc_real03=GetUnitFacing(units001[GetPlayerId(loc_players01[loc_integer03])])
            call SetUnitPathing(units001[GetPlayerId(loc_players01[loc_integer03])],false)
        endif
        set units001[GetPlayerId(loc_players01[loc_integer03])]=CreateUnit(loc_players01[loc_integer03],loc_integer05,loc_real01,loc_real02,loc_real03)
        call SetUnitPathing(units001[GetPlayerId(loc_players01[loc_integer03])],false)
        call SetUnitPosition(units001[GetPlayerId(loc_players01[loc_integer03])],loc_real01,loc_real02)
        call UnitAddItem(units001[GetPlayerId(loc_players01[loc_integer03])],items001[GetPlayerId(loc_players01[loc_integer03])])
        call UnitAddItem(units001[GetPlayerId(loc_players01[loc_integer03])],items002[GetPlayerId(loc_players01[loc_integer03])])
        call UnitAddItem(units001[GetPlayerId(loc_players01[loc_integer03])],items003[GetPlayerId(loc_players01[loc_integer03])])
        call UnitAddItem(units001[GetPlayerId(loc_players01[loc_integer03])],items004[GetPlayerId(loc_players01[loc_integer03])])
        call UnitAddItem(units001[GetPlayerId(loc_players01[loc_integer03])],items005[GetPlayerId(loc_players01[loc_integer03])])
        call UnitAddItem(units001[GetPlayerId(loc_players01[loc_integer03])],items006[GetPlayerId(loc_players01[loc_integer03])])
        call ClearSelectionForPlayer(loc_players01[loc_integer03])
        call SelectUnitAddForPlayer(units001[GetPlayerId(loc_players01[loc_integer03])],loc_players01[loc_integer03])
        call PanCameraToTimedForPlayer(loc_players01[loc_integer03],loc_real01,loc_real02,0)
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Awaken\\Awaken.mdl",loc_real01,loc_real02))
        if(units001[GetPlayerId(loc_players02[loc_integer03])]==null)then
            set loc_real01=GetLocationX(loc_location02)
            set loc_real02=GetLocationY(loc_location02)
            set loc_real03=270
        else
            set loc_real01=GetUnitX(units001[GetPlayerId(loc_players02[loc_integer03])])
            set loc_real02=GetUnitY(units001[GetPlayerId(loc_players02[loc_integer03])])
            set loc_real03=GetUnitFacing(units001[GetPlayerId(loc_players02[loc_integer03])])
            call SetUnitPathing(units001[GetPlayerId(loc_players02[loc_integer03])],false)
        endif
        set units001[GetPlayerId(loc_players02[loc_integer03])]=CreateUnit(loc_players02[loc_integer03],loc_integer05,loc_real01,loc_real02,loc_real03)
        call SetUnitPathing(units001[GetPlayerId(loc_players02[loc_integer03])],false)
        call SetUnitPosition(units001[GetPlayerId(loc_players02[loc_integer03])],loc_real01,loc_real02)
        call UnitAddItem(units001[GetPlayerId(loc_players02[loc_integer03])],items001[GetPlayerId(loc_players02[loc_integer03])])
        call UnitAddItem(units001[GetPlayerId(loc_players02[loc_integer03])],items002[GetPlayerId(loc_players02[loc_integer03])])
        call UnitAddItem(units001[GetPlayerId(loc_players02[loc_integer03])],items003[GetPlayerId(loc_players02[loc_integer03])])
        call UnitAddItem(units001[GetPlayerId(loc_players02[loc_integer03])],items004[GetPlayerId(loc_players02[loc_integer03])])
        call UnitAddItem(units001[GetPlayerId(loc_players02[loc_integer03])],items005[GetPlayerId(loc_players02[loc_integer03])])
        call UnitAddItem(units001[GetPlayerId(loc_players02[loc_integer03])],items006[GetPlayerId(loc_players02[loc_integer03])])
        call ClearSelectionForPlayer(loc_players02[loc_integer03])
        call SelectUnitAddForPlayer(units001[GetPlayerId(loc_players02[loc_integer03])],loc_players02[loc_integer03])
        call PanCameraToTimedForPlayer(loc_players02[loc_integer03],loc_real01,loc_real02,0)
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Awaken\\Awaken.mdl",loc_real01,loc_real02))
        set loc_integer03=loc_integer03+1
    endloop
    call ForGroup(loc_group01,function Func1520)
    call Func0029(loc_group01)
    set loc_integer03=1
    loop
        exitwhen loc_integer03>loc_integer02
        call SetUnitPathing(units001[GetPlayerId(loc_players01[loc_integer03])],true)
        call SetUnitPathing(units001[GetPlayerId(loc_players02[loc_integer03])],true)
        set loc_integer03=loc_integer03+1
    endloop
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    set loc_group01=null
    set loc_unit01=null
    set loc_location01=null
    set loc_location02=null
    set loc_group02=null
    return false
endfunction

// 39833 ~ 39836
function Func1525 takes nothing returns boolean
    set boolean026=true
    return false
endfunction

// 39838 ~ 39843
function Func1526 takes nothing returns boolean
    set boolean039=false
    set boolean038=false
    call Func0072()
    return false
endfunction

// 39845 ~ 39860
function Func1527 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0152(force003,10,GetObjectName('n09H'))
    call Func0152(force003,10,GetObjectName('n09E'))
    set boolean027=true
    call Func0068('H00I')
    call TriggerRegisterTimerEvent(loc_trigger01,60-TimerGetElapsed(timer001),false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1524))
    set loc_trigger01=CreateTrigger()
    call TriggerAddCondition(loc_trigger01,Condition(function Func1526))
    call TriggerRegisterTimerEvent(loc_trigger01,57-TimerGetElapsed(timer001),false)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,55+60-TimerGetElapsed(timer001),false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1525))
    set loc_trigger01=null
endfunction

// 39862 ~ 39950
function Func1528 takes nothing returns nothing
    local location loc_location01=GetRectCenter(rect017)
    local location loc_location02=GetRectCenter(rect016)
    local location loc_location03=GetRectCenter(rect011)
    local location loc_location04=GetRectCenter(rect004)
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    if not boolean028 then
        call Func0072()
    endif
    set boolean005=true
    set integer003=400
    set boolean038=false
    call PanCameraToTimedLocForPlayer(players003[1],loc_location03,0)
    call PanCameraToTimedLocForPlayer(players003[2],loc_location03,0)
    call PanCameraToTimedLocForPlayer(players003[3],loc_location03,0)
    call PanCameraToTimedLocForPlayer(players003[4],loc_location03,0)
    call PanCameraToTimedLocForPlayer(players003[5],loc_location03,0)
    call PanCameraToTimedLocForPlayer(players004[1],loc_location04,0)
    call PanCameraToTimedLocForPlayer(players004[2],loc_location04,0)
    call PanCameraToTimedLocForPlayer(players004[3],loc_location04,0)
    call PanCameraToTimedLocForPlayer(players004[4],loc_location04,0)
    call PanCameraToTimedLocForPlayer(players004[5],loc_location04,0)
    if boolean033 then
        if Func0056(player003)then
            loop
                set loc_integer03=GetRandomInt(integer039,integer040)
                exitwhen booleans001[loc_integer03]==false
            endloop
            set units001[GetPlayerId(player003)]=CreateUnit(player003,integers070[loc_integer03],GetLocationX(loc_location01),GetLocationY(loc_location01),270)
        else
            loop
                set loc_integer03=GetRandomInt(integer041,integer042)
                exitwhen booleans001[loc_integer03]==false
            endloop
            set units001[GetPlayerId(player003)]=CreateUnit(player003,integers070[loc_integer03],GetLocationX(loc_location02),GetLocationY(loc_location02),270)
        endif
        call RemoveLocation(loc_location01)
        call RemoveLocation(loc_location02)
        call RemoveLocation(loc_location03)
        call RemoveLocation(loc_location04)
        return
    endif
    set boolean039=false
    set loc_integer01=1
    set loc_integer02=5
    loop
        exitwhen loc_integer01>loc_integer02
        set units001[GetPlayerId(players003[loc_integer01])]=null
        if(Func0059(players003[loc_integer01]))then
            loop
                set loc_integer03=GetRandomInt(integer039,integer040)
                if(booleans001[loc_integer03]==false)then
                    if not boolean028 then
                        set booleans001[loc_integer03]=true
                    endif
                    set units001[GetPlayerId(players003[loc_integer01])]=CreateUnitAtLoc(players003[loc_integer01],integers070[loc_integer03],loc_location01,bj_UNIT_FACING)
                endif
                exitwhen(units001[GetPlayerId(players003[loc_integer01])]!=null)
            endloop
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    set loc_integer02=5
    loop
        exitwhen loc_integer01>loc_integer02
        set units001[GetPlayerId(players004[loc_integer01])]=null
        if(Func0059(players004[loc_integer01]))then
            loop
                set loc_integer03=GetRandomInt(integer041,integer042)
                if(booleans001[loc_integer03]==false)then
                    if not boolean028 then
                        set booleans001[loc_integer03]=true
                    endif
                    set units001[GetPlayerId(players004[loc_integer01])]=CreateUnitAtLoc(players004[loc_integer01],integers070[loc_integer03],loc_location02,bj_UNIT_FACING)
                endif
                exitwhen(units001[GetPlayerId(players004[loc_integer01])]!=null)
            endloop
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set boolean039=true
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    call RemoveLocation(loc_location03)
    call RemoveLocation(loc_location04)
endfunction

// 39952 ~ 39956
function Func1529 takes nothing returns nothing
    set boolean056=true
    call Func0152(bj_FORCE_ALL_PLAYERS,10,GetObjectName('n06K')+" "+GetObjectName('n06L'))
    call DisableTrigger(GetTriggeringTrigger())
endfunction

// 39958 ~ 39969
function Func1530 takes nothing returns nothing
    local integer loc_integer01=S2I(SubString(GetEventPlayerChatString(),6,StringLength(GetEventPlayerChatString())))
    if loc_integer01>integer028 then
        call Func0120(player003,GetObjectName('n03C'))
    elseif loc_integer01<10 then
        call Func0120(player003,GetObjectName('n02I'))
    else
        set integer028=loc_integer01
        call Func0152(bj_FORCE_ALL_PLAYERS,10,GetObjectName('n06X')+" "+I2S(integer028)+" "+GetObjectName('n06N'))
        call DisableTrigger(GetTriggeringTrigger())
    endif
endfunction

// 39971 ~ 39975
function Func1531 takes nothing returns nothing
    call DisableTrigger((LoadTriggerHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(170))))
    call DisableTrigger((LoadTriggerHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(171))))
    call DisableTrigger(GetTriggeringTrigger())
endfunction

// 39977 ~ 39993
function Func1532 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local trigger loc_trigger02=CreateTrigger()
    local trigger loc_trigger03=CreateTrigger()
    set integer028=Func0138(integer040,integer042-integer041+1)
    call Func0152(bj_FORCE_ALL_PLAYERS,10.00," ")
    call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n06O')+" -nd "+GetObjectName('n067')+" -lives xx "+GetObjectName('n06Q'))
    call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n060')+" "+I2S(integer028))
    call TriggerRegisterTimerEvent(loc_trigger01,15,false)
    call TriggerAddAction(loc_trigger01,function Func1531)
    call SaveTriggerHandle(hashtable001,(GetHandleId(loc_trigger01)),(170),(loc_trigger03))
    call SaveTriggerHandle(hashtable001,(GetHandleId(loc_trigger01)),(171),(loc_trigger02))
    call TriggerRegisterPlayerChatEvent(loc_trigger03,player003,"-nd",true)
    call TriggerAddAction(loc_trigger03,function Func1529)
    call TriggerRegisterPlayerChatEvent(loc_trigger02,player003,"-lives",false)
    call TriggerAddAction(loc_trigger02,function Func1530)
endfunction

// 39995 ~ 40066
function Func1533 takes nothing returns nothing
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId(GetTriggeringTrigger())),(173)))
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05
    local location loc_location01=GetRectCenter(rect029)
    local location loc_location02=GetRectCenter(rect030)
    if boolean036 then
        return
    endif
    if Func0056(Player(loc_integer01))then
        set loc_integer02=integer039
        set loc_integer03=integer040
        set loc_integer05=0
    else
        set loc_integer02=integer041
        set loc_integer03=integer042
        set loc_integer05=1
    endif
    if boolean006 then
        set loc_integer02=integer039
        set loc_integer03=integer042
        if Func0056(Player(loc_integer01))then
            call CreateUnitAtLoc(Player(loc_integer01),'n00C',loc_location01,bj_UNIT_FACING)
            call CreateUnitAtLoc(Player(loc_integer01),'n00C',loc_location02,bj_UNIT_FACING)
        else
            call CreateUnitAtLoc(Player(loc_integer01),'n00C',loc_location01,bj_UNIT_FACING)
            call CreateUnitAtLoc(Player(loc_integer01),'n00C',loc_location02,bj_UNIT_FACING)
        endif
    else
        set loc_integer02=integer039
        set loc_integer03=integer042
        if Func0056(Player(loc_integer01))then
            call CreateUnitAtLoc(Player(loc_integer01),'n00C',loc_location01,bj_UNIT_FACING)
        else
            call CreateUnitAtLoc(Player(loc_integer01),'n00C',loc_location02,bj_UNIT_FACING)
        endif
    endif
    if not boolean004 then
        loop
            exitwhen loc_integer02>loc_integer03
            if booleans001[loc_integer02]==false then
                call SetPlayerTechMaxAllowed(Player(loc_integer01),integers070[loc_integer02],1)
            endif
            set loc_integer02=loc_integer02+1
        endloop
        if(GetPlayerState(Player(loc_integer01),PLAYER_STATE_RESOURCE_GOLD)<250)then
            call SetPlayerState(Player(loc_integer01),PLAYER_STATE_RESOURCE_GOLD,250)
        endif
    elseif(integers031[loc_integer05]<integer028)then
        set units001[loc_integer01]=null
        if Func0059(Player(loc_integer01))then
            loop
                set loc_integer04=Func0076()
                if booleans001[loc_integer04]==false then
                    set booleans001[loc_integer04]=true
                    if Func0056(Player(loc_integer01))then
                        set units001[loc_integer01]=CreateUnitAtLoc(Player(loc_integer01),integers070[loc_integer04],loc_location01,bj_UNIT_FACING)
                    else
                        set units001[loc_integer01]=CreateUnitAtLoc(Player(loc_integer01),integers070[loc_integer04],loc_location02,bj_UNIT_FACING)
                    endif
                endif
                exitwhen units001[loc_integer01]!=null
            endloop
        endif
    endif
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    if not boolean004 then
    endif
endfunction

// 40068 ~ 40102
function Func1534 takes nothing returns nothing
    local location loc_location01
    local real loc_real01
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02
    set boolean003=true
    call Func0068('H00I')
    set loc_integer02=1
    loop
        exitwhen loc_integer02>5
        set loc_integer01=GetPlayerId(players003[loc_integer02])
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerExpireEvent(loc_trigger01,timers002[loc_integer01])
        call TriggerAddAction(loc_trigger01,function Func1533)
        call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(173),(loc_integer01))
        set loc_integer01=GetPlayerId(players004[loc_integer02])
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerExpireEvent(loc_trigger01,timers002[loc_integer01])
        call TriggerAddAction(loc_trigger01,function Func1533)
        call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(173),(loc_integer01))
        set loc_integer02=loc_integer02+1
    endloop
    call UnitRemoveAbility(unit218,'Aawa')
    call UnitRemoveAbility(unit219,'Aawa')
    call UnitRemoveAbility(unit220,'Aawa')
    call UnitRemoveAbility(unit221,'Aawa')
    call UnitRemoveAbility(unit222,'Aawa')
    call UnitRemoveAbility(unit223,'Aawa')
    call UnitRemoveAbility(unit224,'Aawa')
    call UnitRemoveAbility(unit225,'Aawa')
    call UnitRemoveAbility(unit226,'Aawa')
    call UnitRemoveAbility(unit227,'Aawa')
    call ExecuteFunc("Func1532")
endfunction

// 40104 ~ 40128
function Func1535 takes nothing returns nothing
    local integer loc_integer01=GetRandomInt(1,4)
    set boolean029=true
    if(loc_integer01==1)then
        call Func0152(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName('n0FD'))
        call Func0152(bj_FORCE_ALL_PLAYERS,20.00," ")
        call ExecuteFunc("Func1474")
    endif
    if(loc_integer01==2)then
        call Func0152(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName('n0FE'))
        call Func0152(bj_FORCE_ALL_PLAYERS,20.00," ")
        call ExecuteFunc("Func1495")
    endif
    if(loc_integer01==3)then
        call Func0152(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName('n0FK'))
        call Func0152(bj_FORCE_ALL_PLAYERS,20.00," ")
        call ExecuteFunc("Func1504")
    endif
    if(loc_integer01==4)then
        call Func0152(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName('n0FM'))
        call Func0152(bj_FORCE_ALL_PLAYERS,20.00," ")
        call ExecuteFunc("Func1544")
        call ExecuteFunc("Func1497")
    endif
endfunction

// 40130 ~ 40134
function Func1536 takes nothing returns nothing
    set boolean028=true
    call Func0068('H00I')
    call Func0068('N0MU')
endfunction

// 40136 ~ 40345
function Func1537 takes nothing returns nothing
    local integer loc_integer01=Func0063(force001)
    local integer loc_integer02=Func0063(force002)
    local integer loc_integer03=loc_integer01+loc_integer02
    local integer loc_integer04
    local integer loc_integer05
    local integer loc_integer06
    local integer loc_integer07
    local integer loc_integer08
    local player array loc_players01
    local player array loc_players02
    local integer loc_integer09
    local integer loc_integer10
    local integer loc_integer11
    local location loc_location01=GetRectCenter(rect011)
    local location loc_location02=GetRectCenter(rect004)
    local location loc_location03=GetRectCenter(rect029)
    local location loc_location04=GetRectCenter(rect030)
    set boolean023=true
    call Func0500(players003[1])
    call Func0500(players003[2])
    call Func0500(players003[3])
    call Func0500(players003[4])
    call Func0500(players003[5])
    call Func0500(players004[1])
    call Func0500(players004[2])
    call Func0500(players004[3])
    call Func0500(players004[4])
    call Func0500(players004[5])
    set loc_integer06=1
    loop
        exitwhen loc_integer06>5
        if Func0059(players003[loc_integer06])then
            call CreateUnitAtLoc(players003[loc_integer06],'n00C',loc_location03,bj_UNIT_FACING)
            call CreateUnitAtLoc(players003[loc_integer06],'n00C',loc_location04,bj_UNIT_FACING)
        endif
        if Func0059(players004[loc_integer06])then
            call CreateUnitAtLoc(players004[loc_integer06],'n00C',loc_location03,bj_UNIT_FACING)
            call CreateUnitAtLoc(players004[loc_integer06],'n00C',loc_location04,bj_UNIT_FACING)
        endif
        set loc_integer06=loc_integer06+1
    endloop
    call RemoveLocation(loc_location03)
    call RemoveLocation(loc_location04)
    set loc_integer10=GetPlayerState(players003[1],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players003[2],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players003[3],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players003[4],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players003[5],PLAYER_STATE_RESOURCE_GOLD)
    set loc_integer11=GetPlayerState(players004[1],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players004[2],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players004[3],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players004[4],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players004[5],PLAYER_STATE_RESOURCE_GOLD)
    set loc_players01[1]=null
    set loc_players01[2]=null
    set loc_players01[3]=null
    set loc_players01[4]=null
    set loc_players01[5]=null
    set loc_players01[6]=null
    set loc_players01[7]=null
    set loc_players01[8]=null
    set loc_players01[9]=null
    set loc_players01[10]=null
    set loc_integer08=1
    set loc_integer09=1
    set loc_integer04=1
    loop
        exitwhen loc_integer04>5
        if(Func0059(players003[loc_integer04]))then
            set loc_players01[loc_integer09]=players003[loc_integer04]
            set loc_integer09=loc_integer09+1
        else
            set loc_players02[loc_integer08]=players003[loc_integer04]
            set loc_integer08=loc_integer08+1
        endif
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer04=1
    loop
        exitwhen loc_integer04>5
        if(Func0059(players004[loc_integer04]))then
            set loc_players01[loc_integer09]=players004[loc_integer04]
            set loc_integer09=loc_integer09+1
        else
            set loc_players02[loc_integer08]=players004[loc_integer04]
            set loc_integer08=loc_integer08+1
        endif
        set loc_integer04=loc_integer04+1
    endloop
    set players003[1]=null
    set players003[2]=null
    set players003[3]=null
    set players003[4]=null
    set players003[5]=null
    set players004[1]=null
    set players004[2]=null
    set players004[3]=null
    set players004[4]=null
    set players004[5]=null
    set loc_integer04=1
    loop
        exitwhen loc_integer04>(loc_integer03/2)
        set loc_integer05=GetRandomInt(1,loc_integer03)
        if(loc_players01[loc_integer05]!=null)then
            set players003[loc_integer04]=loc_players01[loc_integer05]
            set loc_players01[loc_integer05]=null
            set loc_integer04=loc_integer04+1
        endif
    endloop
    set loc_integer06=loc_integer04
    set loc_integer04=1
    loop
        exitwhen loc_integer04>loc_integer03-loc_integer06+1
        set loc_integer05=GetRandomInt(1,loc_integer03)
        if(loc_players01[loc_integer05]!=null)then
            set players004[loc_integer04]=loc_players01[loc_integer05]
            set loc_players01[loc_integer05]=null
            set loc_integer04=loc_integer04+1
        endif
    endloop
    set loc_integer08=loc_integer04
    set loc_integer04=loc_integer06
    set loc_integer07=1
    loop
        exitwhen loc_integer04>5
        set players003[loc_integer04]=loc_players02[loc_integer07]
        set loc_integer07=loc_integer07+1
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer04=loc_integer08
    loop
        exitwhen loc_integer04>5
        set players004[loc_integer04]=loc_players02[loc_integer07]
        set loc_integer07=loc_integer07+1
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer04=0
    loop
        exitwhen loc_integer04>5
        set loc_integer04=loc_integer04+1
    endloop
    call SetPlayerTeam(players003[0],0)
    call SetPlayerTeam(players003[1],0)
    call SetPlayerTeam(players003[2],0)
    call SetPlayerTeam(players003[3],0)
    call SetPlayerTeam(players003[4],0)
    call SetPlayerTeam(players003[5],0)
    call SetPlayerTeam(players004[0],1)
    call SetPlayerTeam(players004[1],1)
    call SetPlayerTeam(players004[2],1)
    call SetPlayerTeam(players004[3],1)
    call SetPlayerTeam(players004[4],1)
    call SetPlayerTeam(players004[5],1)
    call Func0454()
    set loc_integer06=0
    set loc_integer07=0
    loop
        exitwhen loc_integer06>5
        loop
            exitwhen loc_integer07>5
            call SetPlayerAllianceStateBJ(players003[loc_integer06],players003[loc_integer07],3)
            call SetPlayerAllianceStateBJ(players004[loc_integer06],players004[loc_integer07],3)
            call SetPlayerAllianceStateBJ(players003[loc_integer06],players004[loc_integer07],0)
            call SetPlayerAllianceStateBJ(players004[loc_integer06],players003[loc_integer07],0)
            set loc_integer07=loc_integer07+1
        endloop
        set loc_integer07=0
        set loc_integer06=loc_integer06+1
    endloop
    call ForceClear(force001)
    call ForceClear(force002)
    call ForceAddPlayer(force001,players003[0])
    call ForceAddPlayer(force001,players003[1])
    call ForceAddPlayer(force001,players003[2])
    call ForceAddPlayer(force001,players003[3])
    call ForceAddPlayer(force001,players003[4])
    call ForceAddPlayer(force001,players003[5])
    call ForceAddPlayer(force002,players004[0])
    call ForceAddPlayer(force002,players004[1])
    call ForceAddPlayer(force002,players004[2])
    call ForceAddPlayer(force002,players004[3])
    call ForceAddPlayer(force002,players004[4])
    call ForceAddPlayer(force002,players004[5])
    call ExecuteFunc("Func0455")
    call Func1060()
    set loc_integer01=Func0063(force001)
    set loc_integer02=Func0063(force002)
    set loc_integer04=1
    loop
        exitwhen loc_integer04>5
        if(Func0059(players003[loc_integer04]))then
            call SetPlayerStateBJ(players003[loc_integer04],PLAYER_STATE_RESOURCE_GOLD,(4375/loc_integer01))
            call SetPlayerStateBJ(players003[loc_integer04],PLAYER_STATE_RESOURCE_LUMBER,0)
        endif
        if(Func0059(players004[loc_integer04]))then
            call SetPlayerStateBJ(players004[loc_integer04],PLAYER_STATE_RESOURCE_GOLD,(4375/loc_integer02))
            call SetPlayerStateBJ(players004[loc_integer04],PLAYER_STATE_RESOURCE_LUMBER,0)
        endif
        set loc_integer04=loc_integer04+1
    endloop
    if boolean025 then
        set loc_integer06=0
        loop
            exitwhen loc_integer06>5
            call SetPlayerAlliance(Player(0),players003[loc_integer06],ConvertAllianceType(0),true)
            call SetPlayerAlliance(Player(0),players003[loc_integer06],ConvertAllianceType(4),true)
            call SetPlayerAlliance(Player(0),players004[loc_integer06],ConvertAllianceType(0),false)
            call SetPlayerAlliance(Player(0),players004[loc_integer06],ConvertAllianceType(4),false)
            set loc_integer06=loc_integer06+1
        endloop
    endif
    call Func0453()
    set loc_location01=null
    set loc_location02=null
    set loc_location03=null
    set loc_location04=null
endfunction

// 40347 ~ 40518
function Func1538 takes nothing returns nothing
    local integer loc_integer01=Func0063(force001)
    local integer loc_integer02=Func0063(force002)
    local integer loc_integer03=loc_integer01+loc_integer02
    local integer loc_integer04
    local integer loc_integer05
    local integer loc_integer06
    local integer loc_integer07
    local integer loc_integer08
    local player array loc_players01
    local player array loc_players02
    local integer loc_integer09
    local integer loc_integer10
    local integer loc_integer11
    local location loc_location01
    local location loc_location02
    local location loc_location03
    local location loc_location04
    local integer loc_integer12
    set loc_integer12=GetRandomInt(1,2)
    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,GetObjectName('n0GY'))
    if loc_integer12==1 then
        return
    endif
    set boolean119=true
    set loc_location01=GetRectCenter(rect011)
    set loc_location02=GetRectCenter(rect004)
    set loc_location03=GetRectCenter(rect029)
    set loc_location04=GetRectCenter(rect030)
    call Func0500(players003[1])
    call Func0500(players003[2])
    call Func0500(players003[3])
    call Func0500(players003[4])
    call Func0500(players003[5])
    call Func0500(players004[1])
    call Func0500(players004[2])
    call Func0500(players004[3])
    call Func0500(players004[4])
    call Func0500(players004[5])
    set loc_integer06=1
    loop
        exitwhen loc_integer06>5
        if Func0059(players003[loc_integer06])then
            call CreateUnitAtLoc(players003[loc_integer06],'n00C',loc_location03,bj_UNIT_FACING)
            call CreateUnitAtLoc(players003[loc_integer06],'n00C',loc_location04,bj_UNIT_FACING)
        endif
        if Func0059(players004[loc_integer06])then
            call CreateUnitAtLoc(players004[loc_integer06],'n00C',loc_location03,bj_UNIT_FACING)
            call CreateUnitAtLoc(players004[loc_integer06],'n00C',loc_location04,bj_UNIT_FACING)
        endif
        set loc_integer06=loc_integer06+1
    endloop
    call RemoveLocation(loc_location03)
    call RemoveLocation(loc_location04)
    set loc_integer10=GetPlayerState(players003[1],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players003[2],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players003[3],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players003[4],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players003[5],PLAYER_STATE_RESOURCE_GOLD)
    set loc_integer11=GetPlayerState(players004[1],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players004[2],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players004[3],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players004[4],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(players004[5],PLAYER_STATE_RESOURCE_GOLD)
    set loc_players01[1]=players003[1]
    set loc_players01[2]=players003[2]
    set loc_players01[3]=players003[3]
    set loc_players01[4]=players003[4]
    set loc_players01[5]=players003[5]
    set loc_players01[6]=players004[1]
    set loc_players01[7]=players004[2]
    set loc_players01[8]=players004[3]
    set loc_players01[9]=players004[4]
    set loc_players01[10]=players004[5]
    set players003[1]=loc_players01[6]
    set players003[2]=loc_players01[7]
    set players003[3]=loc_players01[8]
    set players003[4]=loc_players01[9]
    set players003[5]=loc_players01[10]
    set players004[1]=loc_players01[1]
    set players004[2]=loc_players01[2]
    set players004[3]=loc_players01[3]
    set players004[4]=loc_players01[4]
    set players004[5]=loc_players01[5]
    call SetPlayerTeam(players003[0],0)
    call SetPlayerTeam(players003[1],0)
    call SetPlayerTeam(players003[2],0)
    call SetPlayerTeam(players003[3],0)
    call SetPlayerTeam(players003[4],0)
    call SetPlayerTeam(players003[5],0)
    call SetPlayerTeam(players004[0],1)
    call SetPlayerTeam(players004[1],1)
    call SetPlayerTeam(players004[2],1)
    call SetPlayerTeam(players004[3],1)
    call SetPlayerTeam(players004[4],1)
    call SetPlayerTeam(players004[5],1)
    call Func0454()
    set loc_integer06=0
    set loc_integer07=0
    loop
        exitwhen loc_integer06>5
        loop
            exitwhen loc_integer07>5
            call SetPlayerAllianceStateBJ(players003[loc_integer06],players003[loc_integer07],3)
            call SetPlayerAllianceStateBJ(players004[loc_integer06],players004[loc_integer07],3)
            call SetPlayerAllianceStateBJ(players003[loc_integer06],players004[loc_integer07],0)
            call SetPlayerAllianceStateBJ(players004[loc_integer06],players003[loc_integer07],0)
            set loc_integer07=loc_integer07+1
        endloop
        set loc_integer07=0
        set loc_integer06=loc_integer06+1
    endloop
    call ForceClear(force001)
    call ForceClear(force002)
    call ForceAddPlayer(force001,players003[0])
    call ForceAddPlayer(force001,players003[1])
    call ForceAddPlayer(force001,players003[2])
    call ForceAddPlayer(force001,players003[3])
    call ForceAddPlayer(force001,players003[4])
    call ForceAddPlayer(force001,players003[5])
    call ForceAddPlayer(force002,players004[0])
    call ForceAddPlayer(force002,players004[1])
    call ForceAddPlayer(force002,players004[2])
    call ForceAddPlayer(force002,players004[3])
    call ForceAddPlayer(force002,players004[4])
    call ForceAddPlayer(force002,players004[5])
    call ExecuteFunc("Func0455")
    set loc_integer01=Func0063(force001)
    set loc_integer02=Func0063(force002)
    set loc_integer04=1
    loop
        exitwhen loc_integer04>5
        if(Func0059(players003[loc_integer04]))then
            call SetPlayerStateBJ(players003[loc_integer04],PLAYER_STATE_RESOURCE_GOLD,(4375/loc_integer01))
            call SetPlayerStateBJ(players003[loc_integer04],PLAYER_STATE_RESOURCE_LUMBER,0)
        endif
        if(Func0059(players004[loc_integer04]))then
            call SetPlayerStateBJ(players004[loc_integer04],PLAYER_STATE_RESOURCE_GOLD,(4375/loc_integer02))
            call SetPlayerStateBJ(players004[loc_integer04],PLAYER_STATE_RESOURCE_LUMBER,0)
        endif
        set loc_integer04=loc_integer04+1
    endloop
    call PanCameraToTimedLocForPlayer(players003[1],loc_location01,0)
    call PanCameraToTimedLocForPlayer(players003[2],loc_location01,0)
    call PanCameraToTimedLocForPlayer(players003[3],loc_location01,0)
    call PanCameraToTimedLocForPlayer(players003[4],loc_location01,0)
    call PanCameraToTimedLocForPlayer(players003[5],loc_location01,0)
    call PanCameraToTimedLocForPlayer(players004[1],loc_location02,0)
    call PanCameraToTimedLocForPlayer(players004[2],loc_location02,0)
    call PanCameraToTimedLocForPlayer(players004[3],loc_location02,0)
    call PanCameraToTimedLocForPlayer(players004[4],loc_location02,0)
    call PanCameraToTimedLocForPlayer(players004[5],loc_location02,0)
    call DestroyFogModifier(CreateFogModifierRectBJ(true,players003[1],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
    call DestroyFogModifier(CreateFogModifierRectBJ(true,players003[2],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
    call DestroyFogModifier(CreateFogModifierRectBJ(true,players003[3],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
    call DestroyFogModifier(CreateFogModifierRectBJ(true,players003[4],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
    call DestroyFogModifier(CreateFogModifierRectBJ(true,players003[5],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
    call DestroyFogModifier(CreateFogModifierRectBJ(true,players004[1],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
    call DestroyFogModifier(CreateFogModifierRectBJ(true,players004[2],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
    call DestroyFogModifier(CreateFogModifierRectBJ(true,players004[3],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
    call DestroyFogModifier(CreateFogModifierRectBJ(true,players004[4],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
    call DestroyFogModifier(CreateFogModifierRectBJ(true,players004[5],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
    if boolean025 then
        set loc_integer06=0
        loop
            exitwhen loc_integer06>5
            call SetPlayerAlliance(Player(0),players003[loc_integer06],ConvertAllianceType(0),true)
            call SetPlayerAlliance(Player(0),players003[loc_integer06],ConvertAllianceType(4),true)
            call SetPlayerAlliance(Player(0),players004[loc_integer06],ConvertAllianceType(0),false)
            call SetPlayerAlliance(Player(0),players004[loc_integer06],ConvertAllianceType(4),false)
            set loc_integer06=loc_integer06+1
        endloop
    endif
    call Func0453()
    call Func1060()
    set loc_location01=null
    set loc_location02=null
    set loc_location03=null
    set loc_location04=null
endfunction

// 40520 ~ 40538
function Func1539 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    set boolean030=true
    set loc_integer01=1
    set loc_integer02=integer045
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0068(integers074[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    set loc_integer02=integer044
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0068(integers073[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
endfunction
