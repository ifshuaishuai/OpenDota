
// 38064 ~ 38121
function Func1496 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(55)))
    local player loc_player01
    local integer loc_integer03
    local location loc_location01=GetRectCenter(rect011)
    local location loc_location02=GetRectCenter(rect004)
    if loc_integer02<6 then
        set loc_player01=players003[loc_integer02]
    elseif loc_integer02<11 then
        set loc_player01=players004[loc_integer02-5]
    endif
    if loc_integer02>10 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if boolean003==false then
            set boolean039=true
        endif
    elseif loc_integer02<6 then
        call SaveInteger(hashtable001,(loc_integer01),(55),(loc_integer02+1))
        set units001[GetPlayerId(loc_player01)]=null
        if Func0059(loc_player01)then
            loop
                exitwhen units001[GetPlayerId(loc_player01)]!=null
                set loc_integer03=Func0076()
                if booleans001[loc_integer03]==false then
                    if not boolean028 then
                        set booleans001[loc_integer03]=true
                    endif
                    set units001[GetPlayerId(loc_player01)]=CreateUnitAtLoc(loc_player01,integers070[loc_integer03],loc_location01,bj_UNIT_FACING)
                endif
            endloop
        endif
    elseif loc_integer02<11 then
        call SaveInteger(hashtable001,(loc_integer01),(55),(loc_integer02+1))
        set units001[GetPlayerId(loc_player01)]=null
        if Func0059(loc_player01)then
            loop
                exitwhen units001[GetPlayerId(loc_player01)]!=null
                set loc_integer03=Func0076()
                if booleans001[loc_integer03]==false then
                    if not boolean028 then
                        set booleans001[loc_integer03]=true
                    endif
                    set units001[GetPlayerId(loc_player01)]=CreateUnitAtLoc(loc_player01,integers070[loc_integer03],loc_location02,bj_UNIT_FACING)
                endif
            endloop
        endif
    endif
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    set loc_location01=null
    set loc_location02=null
    set loc_player01=null
    set loc_trigger01=null
    return false
endfunction

// 38123 ~ 38183
function Func1497 takes nothing returns nothing
    local location loc_location01=GetRectCenter(rect011)
    local location loc_location02=GetRectCenter(rect004)
    local location loc_location03=GetRectCenter(rect011)
    local location loc_location04=GetRectCenter(rect004)
    local integer loc_integer01=1
    local integer loc_integer02=5
    local integer loc_integer03
    local trigger loc_trigger01
    set boolean004=true
    set boolean038=false
    if not boolean028 then
        call Func0072()
    endif
    set integer003=400
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
        loop
            set loc_integer03=Func0076()
            exitwhen booleans001[loc_integer03]==false
        endloop
        if Func0056(player003)then
            set units001[GetPlayerId(player003)]=CreateUnit(player003,integers070[loc_integer03],GetLocationX(loc_location01),GetLocationY(loc_location01),270)
        else
            set units001[GetPlayerId(player003)]=CreateUnit(player003,integers070[loc_integer03],GetLocationX(loc_location02),GetLocationY(loc_location02),270)
        endif
        call RemoveLocation(loc_location01)
        call RemoveLocation(loc_location02)
        call RemoveLocation(loc_location03)
        call RemoveLocation(loc_location04)
        set loc_location01=null
        set loc_location02=null
        set loc_location03=null
        set loc_location04=null
        set loc_trigger01=null
        return
    endif
    set boolean039=false
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1496))
    call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(55),(1))
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    call RemoveLocation(loc_location03)
    call RemoveLocation(loc_location04)
    set loc_location01=null
    set loc_location02=null
    set loc_location03=null
    set loc_location04=null
    set loc_trigger01=null
endfunction

// 38185 ~ 38191
function Func1498 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    call Func0035(loc_trigger01)
    set boolean037=true
    set loc_trigger01=null
    return false
endfunction

// 38193 ~ 38804
function Func1499 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(35)))
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05=Func0063(force001)
    local integer loc_integer06=Func0063(force002)
    local location loc_location01=GetRectCenter(rect017)
    local location loc_location02=GetRectCenter(rect016)
    local location loc_location03=GetRectCenter(rect011)
    local location loc_location04=GetRectCenter(rect004)
    call Func0035(loc_trigger02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set integer455=(LoadInteger(hashtable001,(2001),(126)))
    set integer456=(LoadInteger(hashtable001,(2001),(127)))
    set integer457=(LoadInteger(hashtable001,(2001),(128)))
    set loc_integer02=1
    loop
        exitwhen loc_integer02>loc_integer05
        set integers140[loc_integer02]=integers134[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer03=GetRandomInt(1,3)
    if loc_integer03==1 then
        if loc_integer05==1 then
            set integers140[1]=integers134[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers134[2]
            set integers140[2]=integers134[1]
        elseif loc_integer05==3 then
            set integers140[1]=integers134[3]
            set integers140[2]=integers134[1]
            set integers140[3]=integers134[2]
        elseif loc_integer05==4 then
            set integers140[1]=integers134[4]
            set integers140[2]=integers134[3]
            set integers140[3]=integers134[2]
            set integers140[4]=integers134[1]
        elseif loc_integer05==5 then
            set integers140[1]=integers134[5]
            set integers140[2]=integers134[4]
            set integers140[3]=integers134[1]
            set integers140[4]=integers134[2]
            set integers140[5]=integers134[3]
        endif
    elseif loc_integer03==2 then
        if loc_integer05==1 then
            set integers140[1]=integers134[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers134[2]
            set integers140[2]=integers134[1]
        elseif loc_integer05==3 then
            set integers140[1]=integers134[2]
            set integers140[2]=integers134[3]
            set integers140[3]=integers134[1]
        elseif loc_integer05==4 then
            set integers140[1]=integers134[3]
            set integers140[2]=integers134[1]
            set integers140[3]=integers134[4]
            set integers140[4]=integers134[2]
        elseif loc_integer05==5 then
            set integers140[1]=integers134[4]
            set integers140[2]=integers134[3]
            set integers140[3]=integers134[2]
            set integers140[4]=integers134[5]
            set integers140[5]=integers134[1]
        endif
    else
        if loc_integer05==1 then
            set integers140[1]=integers134[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers134[1]
            set integers140[2]=integers134[2]
        elseif loc_integer05==3 then
            set integers140[1]=integers134[3]
            set integers140[2]=integers134[2]
            set integers140[3]=integers134[1]
        elseif loc_integer05==4 then
            set integers140[1]=integers134[2]
            set integers140[2]=integers134[4]
            set integers140[3]=integers134[3]
            set integers140[4]=integers134[1]
        elseif loc_integer05==5 then
            set integers140[1]=integers134[5]
            set integers140[2]=integers134[1]
            set integers140[3]=integers134[3]
            set integers140[4]=integers134[4]
            set integers140[5]=integers134[2]
        endif
    endif
    set loc_integer02=1
    loop
        exitwhen loc_integer02>loc_integer05
        set integers134[loc_integer02]=integers140[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer02=1
    loop
        exitwhen loc_integer02>loc_integer05
        set integers140[loc_integer02]=integers135[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer03=GetRandomInt(1,3)
    if loc_integer03==1 then
        if loc_integer05==1 then
            set integers140[1]=integers135[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers135[2]
            set integers140[2]=integers135[1]
        elseif loc_integer05==3 then
            set integers140[1]=integers135[3]
            set integers140[2]=integers135[1]
            set integers140[3]=integers135[2]
        elseif loc_integer05==4 then
            set integers140[1]=integers135[4]
            set integers140[2]=integers135[3]
            set integers140[3]=integers135[2]
            set integers140[4]=integers135[1]
        elseif loc_integer05==5 then
            set integers140[1]=integers135[5]
            set integers140[2]=integers135[4]
            set integers140[3]=integers135[1]
            set integers140[4]=integers135[2]
            set integers140[5]=integers135[3]
        endif
    elseif loc_integer03==2 then
        if loc_integer05==1 then
            set integers140[1]=integers135[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers135[2]
            set integers140[2]=integers135[1]
        elseif loc_integer05==3 then
            set integers140[1]=integers135[2]
            set integers140[2]=integers135[3]
            set integers140[3]=integers135[1]
        elseif loc_integer05==4 then
            set integers140[1]=integers135[3]
            set integers140[2]=integers135[1]
            set integers140[3]=integers135[4]
            set integers140[4]=integers135[2]
        elseif loc_integer05==5 then
            set integers140[1]=integers135[4]
            set integers140[2]=integers135[3]
            set integers140[3]=integers135[2]
            set integers140[4]=integers135[5]
            set integers140[5]=integers135[1]
        endif
    else
        if loc_integer05==1 then
            set integers140[1]=integers135[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers135[1]
            set integers140[2]=integers135[2]
        elseif loc_integer05==3 then
            set integers140[1]=integers135[3]
            set integers140[2]=integers135[2]
            set integers140[3]=integers135[1]
        elseif loc_integer05==4 then
            set integers140[1]=integers135[2]
            set integers140[2]=integers135[4]
            set integers140[3]=integers135[3]
            set integers140[4]=integers135[1]
        elseif loc_integer05==5 then
            set integers140[1]=integers135[5]
            set integers140[2]=integers135[1]
            set integers140[3]=integers135[3]
            set integers140[4]=integers135[4]
            set integers140[5]=integers135[2]
        endif
    endif
    set loc_integer02=1
    loop
        exitwhen loc_integer02>loc_integer05
        set integers135[loc_integer02]=integers140[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer02=1
    loop
        exitwhen loc_integer02>loc_integer05
        set integers140[loc_integer02]=integers136[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer03=GetRandomInt(1,3)
    if loc_integer03==1 then
        if loc_integer05==1 then
            set integers140[1]=integers136[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers136[2]
            set integers140[2]=integers136[1]
        elseif loc_integer05==3 then
            set integers140[1]=integers136[3]
            set integers140[2]=integers136[1]
            set integers140[3]=integers136[2]
        elseif loc_integer05==4 then
            set integers140[1]=integers136[4]
            set integers140[2]=integers136[3]
            set integers140[3]=integers136[2]
            set integers140[4]=integers136[1]
        elseif loc_integer05==5 then
            set integers140[1]=integers136[5]
            set integers140[2]=integers136[4]
            set integers140[3]=integers136[1]
            set integers140[4]=integers136[2]
            set integers140[5]=integers136[3]
        endif
    elseif loc_integer03==2 then
        if loc_integer05==1 then
            set integers140[1]=integers136[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers136[2]
            set integers140[2]=integers136[1]
        elseif loc_integer05==3 then
            set integers140[1]=integers136[2]
            set integers140[2]=integers136[3]
            set integers140[3]=integers136[1]
        elseif loc_integer05==4 then
            set integers140[1]=integers136[3]
            set integers140[2]=integers136[1]
            set integers140[3]=integers136[4]
            set integers140[4]=integers136[2]
        elseif loc_integer05==5 then
            set integers140[1]=integers136[4]
            set integers140[2]=integers136[3]
            set integers140[3]=integers136[2]
            set integers140[4]=integers136[5]
            set integers140[5]=integers136[1]
        endif
    else
        if loc_integer05==1 then
            set integers140[1]=integers136[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers136[1]
            set integers140[2]=integers136[2]
        elseif loc_integer05==3 then
            set integers140[1]=integers136[3]
            set integers140[2]=integers136[2]
            set integers140[3]=integers136[1]
        elseif loc_integer05==4 then
            set integers140[1]=integers136[2]
            set integers140[2]=integers136[4]
            set integers140[3]=integers136[3]
            set integers140[4]=integers136[1]
        elseif loc_integer05==5 then
            set integers140[1]=integers136[5]
            set integers140[2]=integers136[1]
            set integers140[3]=integers136[3]
            set integers140[4]=integers136[4]
            set integers140[5]=integers136[2]
        endif
    endif
    set loc_integer02=1
    loop
        exitwhen loc_integer02>loc_integer05
        set integers136[loc_integer02]=integers140[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer02=1
    loop
        exitwhen loc_integer02>loc_integer05
        set integers140[loc_integer02]=integers137[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer03=GetRandomInt(1,3)
    if loc_integer03==1 then
        if loc_integer05==1 then
            set integers140[1]=integers137[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers137[2]
            set integers140[2]=integers137[1]
        elseif loc_integer05==3 then
            set integers140[1]=integers137[3]
            set integers140[2]=integers137[1]
            set integers140[3]=integers137[2]
        elseif loc_integer05==4 then
            set integers140[1]=integers137[4]
            set integers140[2]=integers137[3]
            set integers140[3]=integers137[2]
            set integers140[4]=integers137[1]
        elseif loc_integer05==5 then
            set integers140[1]=integers137[5]
            set integers140[2]=integers137[4]
            set integers140[3]=integers137[1]
            set integers140[4]=integers137[2]
            set integers140[5]=integers137[3]
        endif
    elseif loc_integer03==2 then
        if loc_integer05==1 then
            set integers140[1]=integers137[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers137[2]
            set integers140[2]=integers137[1]
        elseif loc_integer05==3 then
            set integers140[1]=integers137[2]
            set integers140[2]=integers137[3]
            set integers140[3]=integers137[1]
        elseif loc_integer05==4 then
            set integers140[1]=integers137[3]
            set integers140[2]=integers137[1]
            set integers140[3]=integers137[4]
            set integers140[4]=integers137[2]
        elseif loc_integer05==5 then
            set integers140[1]=integers137[4]
            set integers140[2]=integers137[3]
            set integers140[3]=integers137[2]
            set integers140[4]=integers137[5]
            set integers140[5]=integers137[1]
        endif
    else
        if loc_integer05==1 then
            set integers140[1]=integers137[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers137[1]
            set integers140[2]=integers137[2]
        elseif loc_integer05==3 then
            set integers140[1]=integers137[3]
            set integers140[2]=integers137[2]
            set integers140[3]=integers137[1]
        elseif loc_integer05==4 then
            set integers140[1]=integers137[2]
            set integers140[2]=integers137[4]
            set integers140[3]=integers137[3]
            set integers140[4]=integers137[1]
        elseif loc_integer05==5 then
            set integers140[1]=integers137[5]
            set integers140[2]=integers137[1]
            set integers140[3]=integers137[3]
            set integers140[4]=integers137[4]
            set integers140[5]=integers137[2]
        endif
    endif
    set loc_integer02=1
    loop
        exitwhen loc_integer02>loc_integer05
        set integers137[loc_integer02]=integers140[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer02=1
    loop
        exitwhen loc_integer02>loc_integer05
        set integers140[loc_integer02]=integers138[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer03=GetRandomInt(1,3)
    if loc_integer03==1 then
        if loc_integer05==1 then
            set integers140[1]=integers138[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers138[2]
            set integers140[2]=integers138[1]
        elseif loc_integer05==3 then
            set integers140[1]=integers138[3]
            set integers140[2]=integers138[1]
            set integers140[3]=integers138[2]
        elseif loc_integer05==4 then
            set integers140[1]=integers138[4]
            set integers140[2]=integers138[3]
            set integers140[3]=integers138[2]
            set integers140[4]=integers138[1]
        elseif loc_integer05==5 then
            set integers140[1]=integers138[5]
            set integers140[2]=integers138[4]
            set integers140[3]=integers138[1]
            set integers140[4]=integers138[2]
            set integers140[5]=integers138[3]
        endif
    elseif loc_integer03==2 then
        if loc_integer05==1 then
            set integers140[1]=integers138[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers138[2]
            set integers140[2]=integers138[1]
        elseif loc_integer05==3 then
            set integers140[1]=integers138[2]
            set integers140[2]=integers138[3]
            set integers140[3]=integers138[1]
        elseif loc_integer05==4 then
            set integers140[1]=integers138[3]
            set integers140[2]=integers138[1]
            set integers140[3]=integers138[4]
            set integers140[4]=integers138[2]
        elseif loc_integer05==5 then
            set integers140[1]=integers138[4]
            set integers140[2]=integers138[3]
            set integers140[3]=integers138[2]
            set integers140[4]=integers138[5]
            set integers140[5]=integers138[1]
        endif
    else
        if loc_integer05==1 then
            set integers140[1]=integers138[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers138[1]
            set integers140[2]=integers138[2]
        elseif loc_integer05==3 then
            set integers140[1]=integers138[3]
            set integers140[2]=integers138[2]
            set integers140[3]=integers138[1]
        elseif loc_integer05==4 then
            set integers140[1]=integers138[2]
            set integers140[2]=integers138[4]
            set integers140[3]=integers138[3]
            set integers140[4]=integers138[1]
        elseif loc_integer05==5 then
            set integers140[1]=integers138[5]
            set integers140[2]=integers138[1]
            set integers140[3]=integers138[3]
            set integers140[4]=integers138[4]
            set integers140[5]=integers138[2]
        endif
    endif
    set loc_integer02=1
    loop
        exitwhen loc_integer02>loc_integer05
        set integers138[loc_integer02]=integers140[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer02=1
    loop
        exitwhen loc_integer02>loc_integer05
        set integers140[loc_integer02]=integers139[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer03=GetRandomInt(1,3)
    if loc_integer03==1 then
        if loc_integer05==1 then
            set integers140[1]=integers139[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers139[2]
            set integers140[2]=integers139[1]
        elseif loc_integer05==3 then
            set integers140[1]=integers139[3]
            set integers140[2]=integers139[1]
            set integers140[3]=integers139[2]
        elseif loc_integer05==4 then
            set integers140[1]=integers139[4]
            set integers140[2]=integers139[3]
            set integers140[3]=integers139[2]
            set integers140[4]=integers139[1]
        elseif loc_integer05==5 then
            set integers140[1]=integers139[5]
            set integers140[2]=integers139[4]
            set integers140[3]=integers139[1]
            set integers140[4]=integers139[2]
            set integers140[5]=integers139[3]
        endif
    elseif loc_integer03==2 then
        if loc_integer05==1 then
            set integers140[1]=integers139[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers139[2]
            set integers140[2]=integers139[1]
        elseif loc_integer05==3 then
            set integers140[1]=integers139[2]
            set integers140[2]=integers139[3]
            set integers140[3]=integers139[1]
        elseif loc_integer05==4 then
            set integers140[1]=integers139[3]
            set integers140[2]=integers139[1]
            set integers140[3]=integers139[4]
            set integers140[4]=integers139[2]
        elseif loc_integer05==5 then
            set integers140[1]=integers139[4]
            set integers140[2]=integers139[3]
            set integers140[3]=integers139[2]
            set integers140[4]=integers139[5]
            set integers140[5]=integers139[1]
        endif
    else
        if loc_integer05==1 then
            set integers140[1]=integers139[1]
        elseif loc_integer05==2 then
            set integers140[1]=integers139[1]
            set integers140[2]=integers139[2]
        elseif loc_integer05==3 then
            set integers140[1]=integers139[3]
            set integers140[2]=integers139[2]
            set integers140[3]=integers139[1]
        elseif loc_integer05==4 then
            set integers140[1]=integers139[2]
            set integers140[2]=integers139[4]
            set integers140[3]=integers139[3]
            set integers140[4]=integers139[1]
        elseif loc_integer05==5 then
            set integers140[1]=integers139[5]
            set integers140[2]=integers139[1]
            set integers140[3]=integers139[3]
            set integers140[4]=integers139[4]
            set integers140[5]=integers139[2]
        endif
    endif
    set loc_integer02=1
    loop
        exitwhen loc_integer02>loc_integer05
        set integers139[loc_integer02]=integers140[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer04=GetRandomInt(1,2)
    if integer455>=integer456 and integer455>=integer457 then
        call ClearTextMessages()
        call Func0152(bj_FORCE_ALL_PLAYERS,45,GetObjectName('n05Z')+" "+string036)
        call Func0152(bj_FORCE_ALL_PLAYERS,45," ")
        set loc_integer02=1
        set loc_integer03=1
        loop
            exitwhen loc_integer02>5
            if Func0059(players003[loc_integer02])then
                if loc_integer04==1 then
                    set units001[GetPlayerId(players003[loc_integer02])]=CreateUnitAtLoc(players003[loc_integer02],integers134[loc_integer03],loc_location01,bj_UNIT_FACING)
                else
                    set units001[GetPlayerId(players003[loc_integer02])]=CreateUnitAtLoc(players003[loc_integer02],integers135[loc_integer03],loc_location01,bj_UNIT_FACING)
                endif
                set loc_integer03=loc_integer03+1
            endif
            set loc_integer02=loc_integer02+1
        endloop
        set loc_integer02=1
        set loc_integer03=1
        loop
            exitwhen loc_integer02>5
            if Func0059(players004[loc_integer02])then
                if loc_integer04==1 then
                    set units001[GetPlayerId(players004[loc_integer02])]=CreateUnitAtLoc(players004[loc_integer02],integers135[loc_integer03],loc_location02,bj_UNIT_FACING)
                else
                    set units001[GetPlayerId(players004[loc_integer02])]=CreateUnitAtLoc(players004[loc_integer02],integers134[loc_integer03],loc_location02,bj_UNIT_FACING)
                endif
                set loc_integer03=loc_integer03+1
            endif
            set loc_integer02=loc_integer02+1
        endloop
    elseif integer456>=integer455 and integer456>=integer457 then
        call ClearTextMessages()
        call Func0152(bj_FORCE_ALL_PLAYERS,45,GetObjectName('n05Z')+" "+string037)
        call Func0152(bj_FORCE_ALL_PLAYERS,45," ")
        set loc_integer02=1
        set loc_integer03=1
        loop
            exitwhen loc_integer02>5
            if Func0059(players003[loc_integer02])then
                if loc_integer04==1 then
                    set units001[GetPlayerId(players003[loc_integer02])]=CreateUnitAtLoc(players003[loc_integer02],integers136[loc_integer03],loc_location01,bj_UNIT_FACING)
                else
                    set units001[GetPlayerId(players003[loc_integer02])]=CreateUnitAtLoc(players003[loc_integer02],integers137[loc_integer03],loc_location01,bj_UNIT_FACING)
                endif
                set loc_integer03=loc_integer03+1
            endif
            set loc_integer02=loc_integer02+1
        endloop
        set loc_integer02=1
        set loc_integer03=1
        loop
            exitwhen loc_integer02>5
            if Func0059(players004[loc_integer02])then
                if loc_integer04==1 then
                    set units001[GetPlayerId(players004[loc_integer02])]=CreateUnitAtLoc(players004[loc_integer02],integers137[loc_integer03],loc_location02,bj_UNIT_FACING)
                else
                    set units001[GetPlayerId(players004[loc_integer02])]=CreateUnitAtLoc(players004[loc_integer02],integers136[loc_integer03],loc_location02,bj_UNIT_FACING)
                endif
                set loc_integer03=loc_integer03+1
            endif
            set loc_integer02=loc_integer02+1
        endloop
    elseif integer457>=integer455 and integer457>=integer456 then
        call ClearTextMessages()
        call Func0152(bj_FORCE_ALL_PLAYERS,45,GetObjectName('n05Z')+" "+string038)
        call Func0152(bj_FORCE_ALL_PLAYERS,45," ")
        set loc_integer02=1
        set loc_integer03=1
        loop
            exitwhen loc_integer02>5
            if Func0059(players003[loc_integer02])then
                if loc_integer04==1 then
                    set units001[GetPlayerId(players003[loc_integer02])]=CreateUnitAtLoc(players003[loc_integer02],integers138[loc_integer03],loc_location01,bj_UNIT_FACING)
                else
                    set units001[GetPlayerId(players003[loc_integer02])]=CreateUnitAtLoc(players003[loc_integer02],integers139[loc_integer03],loc_location01,bj_UNIT_FACING)
                endif
                set loc_integer03=loc_integer03+1
            endif
            set loc_integer02=loc_integer02+1
        endloop
        set loc_integer02=1
        set loc_integer03=1
        loop
            exitwhen loc_integer02>5
            if Func0059(players004[loc_integer02])then
                if loc_integer04==1 then
                    set units001[GetPlayerId(players004[loc_integer02])]=CreateUnitAtLoc(players004[loc_integer02],integers139[loc_integer03],loc_location02,bj_UNIT_FACING)
                else
                    set units001[GetPlayerId(players004[loc_integer02])]=CreateUnitAtLoc(players004[loc_integer02],integers138[loc_integer03],loc_location02,bj_UNIT_FACING)
                endif
                set loc_integer03=loc_integer03+1
            endif
            set loc_integer02=loc_integer02+1
        endloop
    endif
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,70,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1498))
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    call RemoveLocation(loc_location03)
    call RemoveLocation(loc_location04)
    set loc_location01=null
    set loc_location02=null
    set loc_location03=null
    set loc_location04=null
    set loc_trigger01=null
    set loc_trigger02=null
    return false
endfunction

// 38806 ~ 38819
function Func1500 takes integer loc_integer01 returns integer
    if loc_integer01==1 then
        return Func0105(integers074[GetRandomInt(1,integer045)])
    elseif loc_integer01==2 then
        return Func0105(integers072[GetRandomInt(1,integer043)])
    elseif loc_integer01==3 then
        return Func0105(integers073[GetRandomInt(1,integer044)])
    elseif loc_integer01==4 then
        return Func0105(integers076[GetRandomInt(1,integer047)])
    elseif loc_integer01==5 then
        return Func0105(integers075[GetRandomInt(1,integer046)])
    endif
    return 0
endfunction

// 38821 ~ 38835
function Func1501 takes integer loc_integer01 returns integer
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    set loc_integer04=Func1500(loc_integer01)
    if boolean028 then
        return loc_integer04
    endif
    loop
        exitwhen booleans005[loc_integer04]==false
        set loc_integer04=Func1500(loc_integer01)
    endloop
    set booleans005[loc_integer04]=true
    return loc_integer04
endfunction

// 38837 ~ 38844
function Func1502 takes nothing returns nothing
    local integer loc_integer01=integer039
    loop
        exitwhen loc_integer01>integer042
        set booleans005[loc_integer01]=false
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 38846 ~ 38875
function Func1503 takes nothing returns boolean
    local integer loc_integer01=GetPlayerId(GetTriggerPlayer())
    local string loc_string01=SubString(GetEventPlayerChatString(),8,9)
    local integer loc_integer02=0
    if loc_string01=="1"then
        set loc_integer02=1
    elseif loc_string01=="2"then
        set loc_integer02=2
    elseif loc_string01=="3"then
        set loc_integer02=3
    endif
    if loc_integer02==0 then
        call Func0122(GetTriggerPlayer(),GetObjectName('n03D'))
        return false
    endif
    if(LoadBoolean(hashtable001,(2001),(950+loc_integer01)))then
        call Func0122(GetTriggerPlayer(),GetObjectName('n03A'))
        return false
    endif
    call SaveBoolean(hashtable001,(2001),(950+loc_integer01),(true))
    if loc_integer02==1 then
        call SaveInteger(hashtable001,(2001),(126),(1+(LoadInteger(hashtable001,(2001),(126)))))
    elseif loc_integer02==2 then
        call SaveInteger(hashtable001,(2001),(127),(1+(LoadInteger(hashtable001,(2001),(127)))))
    else
        call SaveInteger(hashtable001,(2001),(128),(1+(LoadInteger(hashtable001,(2001),(128)))))
    endif
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,20,GetObjectName('n09M')+" Option "+I2S(loc_integer02)+".")
    return false
endfunction

// 38877 ~ 39003
function Func1504 takes nothing returns nothing
    local integer loc_integer01=Func0063(force001)
    local integer loc_integer02=Func0063(force002)
    local integer loc_integer03
    local integer loc_integer04
    local trigger loc_trigger01=CreateTrigger()
    local location loc_location01=GetRectCenter(rect017)
    local location loc_location02=GetRectCenter(rect016)
    local location loc_location03=GetRectCenter(rect011)
    local location loc_location04=GetRectCenter(rect004)
    local integer loc_integer05
    local trigger loc_trigger02
    set boolean035=true
    set boolean038=false
    set boolean039=false
    call Func0072()
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
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-Option",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-Option",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-Option",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-Option",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-Option",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-Option",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-Option",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-Option",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-Option",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-Option",false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1503))
    call Func1502()
    set loc_integer03=1
    loop
        exitwhen loc_integer03>loc_integer01
        set integers134[loc_integer03]=integers070[Func1501(loc_integer03)]
        set string036=string036+GetObjectName(integers134[loc_integer03])
        set loc_integer03=loc_integer03+1
        if loc_integer03<=loc_integer01 then
            set string036=string036+"|c005BFEEA-|r"
        endif
    endloop
    set string036=string036+" |c00FF0000vs |r"
    set loc_integer03=1
    loop
        exitwhen loc_integer03>loc_integer02
        set integers135[loc_integer03]=integers070[Func1501(loc_integer03)]
        set string036=string036+GetObjectName(integers135[loc_integer03])
        set loc_integer03=loc_integer03+1
        if loc_integer03<=loc_integer02 then
            set string036=string036+"|c005BFEEA-|r"
        endif
    endloop
    call Func1502()
    set loc_integer03=1
    loop
        exitwhen loc_integer03>loc_integer01
        set integers136[loc_integer03]=integers070[Func1501(loc_integer03)]
        set string037=string037+GetObjectName(integers136[loc_integer03])+" "
        set loc_integer03=loc_integer03+1
        if loc_integer03<=loc_integer01 then
            set string037=string037+"|c005BFEEA-|r"
        endif
    endloop
    set string037=string037+" |c00FF0000vs |r"
    set loc_integer03=1
    loop
        exitwhen loc_integer03>loc_integer02
        set integers137[loc_integer03]=integers070[Func1501(loc_integer03)]
        set string037=string037+GetObjectName(integers137[loc_integer03])+" "
        set loc_integer03=loc_integer03+1
        if loc_integer03<=loc_integer02 then
            set string037=string037+"|c005BFEEA-|r"
        endif
    endloop
    call Func1502()
    set loc_integer03=1
    loop
        exitwhen loc_integer03>loc_integer01
        set integers138[loc_integer03]=integers070[Func1501(loc_integer03)]
        set string038=string038+GetObjectName(integers138[loc_integer03])+" "
        set loc_integer03=loc_integer03+1
        if loc_integer03<=loc_integer01 then
            set string038=string038+"|c005BFEEA-|r"
        endif
    endloop
    set string038=string038+" |c00FF0000vs |r"
    set loc_integer03=1
    loop
        exitwhen loc_integer03>loc_integer02
        set integers139[loc_integer03]=integers070[Func1501(loc_integer03)]
        set string038=string038+GetObjectName(integers139[loc_integer03])+" "
        set loc_integer03=loc_integer03+1
        if loc_integer03<=loc_integer02 then
            set string038=string038+"|c005BFEEA-|r"
        endif
    endloop
    call Func0152(bj_FORCE_ALL_PLAYERS,75," ")
    call Func0152(bj_FORCE_ALL_PLAYERS,75,GetObjectName('n06T'))
    call Func0152(bj_FORCE_ALL_PLAYERS,75,GetObjectName('n06I')+" "+GetObjectName('n06D'))
    call Func0152(bj_FORCE_ALL_PLAYERS,75," ")
    call Func0152(bj_FORCE_ALL_PLAYERS,75,string036)
    call Func0152(bj_FORCE_ALL_PLAYERS,75," ")
    call Func0152(bj_FORCE_ALL_PLAYERS,75,string037)
    call Func0152(bj_FORCE_ALL_PLAYERS,75," ")
    call Func0152(bj_FORCE_ALL_PLAYERS,75,string038)
    set loc_trigger02=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger02,30,false)
    call TriggerAddCondition(loc_trigger02,Condition(function Func1499))
    call SaveTriggerHandle(hashtable001,(GetHandleId(loc_trigger02)),(35),(loc_trigger01))
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    call RemoveLocation(loc_location03)
    call RemoveLocation(loc_location04)
    set loc_location01=null
    set loc_location02=null
    set loc_location03=null
    set loc_location04=null
    set loc_trigger01=null
    set loc_trigger02=null
endfunction

// 39005 ~ 39017
function Func1505 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer02=20-(loc_integer01-(loc_integer01/20)*20)
    call LeaderboardSetLabel(leaderboard001,"           "+GetObjectName('n0EZ')+" "+I2S(loc_integer02))
    if loc_integer01>125 then
        call DestroyLeaderboard(leaderboard001)
        call Func1325()
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    return false
endfunction

// 39019 ~ 39037
function Func1506 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1505))
    set leaderboard001=CreateLeaderboard()
    call LeaderboardSetStyle(leaderboard001,true,false,false,false)
    call LeaderboardDisplay(leaderboard001,false)
    call PlayerSetLeaderboard(players003[1],leaderboard001)
    call PlayerSetLeaderboard(players003[2],leaderboard001)
    call PlayerSetLeaderboard(players003[3],leaderboard001)
    call PlayerSetLeaderboard(players003[4],leaderboard001)
    call PlayerSetLeaderboard(players003[5],leaderboard001)
    call PlayerSetLeaderboard(players004[1],leaderboard001)
    call PlayerSetLeaderboard(players004[2],leaderboard001)
    call PlayerSetLeaderboard(players004[3],leaderboard001)
    call PlayerSetLeaderboard(players004[4],leaderboard001)
    call PlayerSetLeaderboard(players004[5],leaderboard001)
    set loc_trigger01=null
endfunction
