
// 41365 ~ 41396
function Func1597 takes nothing returns boolean
    local integer loc_integer01=1
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local player loc_player01
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        set loc_integer02=GetPlayerId(loc_player01)
        set loc_integer04=GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)
        if integers143[loc_integer02]<loc_integer04 and booleans039[loc_integer02]==false then
            set integers144[loc_integer02]=integers144[loc_integer02]+loc_integer04-integers143[loc_integer02]
        endif
        set integers143[loc_integer02]=loc_integer04
        if booleans039[loc_integer02]==true then
            set booleans039[loc_integer02]=false
        endif
        set loc_player01=players004[loc_integer01]
        set loc_integer02=GetPlayerId(loc_player01)
        set loc_integer04=GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)
        if integers143[loc_integer02]<loc_integer04 and booleans039[loc_integer02]==false then
            set integers144[loc_integer02]=integers144[loc_integer02]+loc_integer04-integers143[loc_integer02]
        endif
        set integers143[loc_integer02]=loc_integer04
        if booleans039[loc_integer02]==true then
            set booleans039[loc_integer02]=false
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return false
endfunction

// 41398 ~ 41507
function Func1598 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(55)))
    local player loc_player01
    local integer loc_integer03
    local location loc_location01=GetRectCenter(rect011)
    local location loc_location02=GetRectCenter(rect004)
    local integer loc_integer04
    if loc_integer02<6 then
        set loc_player01=players003[loc_integer02]
        set loc_integer04=GetPlayerId(loc_player01)
    elseif loc_integer02<11 then
        set loc_player01=players004[loc_integer02-5]
        set loc_integer04=GetPlayerId(loc_player01)
    endif
    if loc_integer02>10 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call TriggerRegisterTimerEvent(trigger066,0.1,true)
        call TriggerAddCondition(trigger066,Condition(function Func1597))
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
                    set units001[loc_integer04]=CreateUnitAtLoc(loc_player01,integers070[loc_integer03],loc_location01,bj_UNIT_FACING)
                    set units019[loc_integer04]=units001[loc_integer04]
                    call Func1592(units001[loc_integer04],loc_integer04,loc_player01)
                endif
            endloop
        endif
    elseif loc_integer02<11 then
        call SaveInteger(hashtable001,(loc_integer01),(55),(loc_integer02+1))
        set units001[GetPlayerId(loc_player01)]=null
        if Func0059(loc_player01)then
            loop
                exitwhen units001[loc_integer04]!=null
                set loc_integer03=Func0076()
                if booleans001[loc_integer03]==false then
                    if not boolean028 then
                        set booleans001[loc_integer03]=true
                    endif
                    set units001[loc_integer04]=CreateUnitAtLoc(loc_player01,integers070[loc_integer03],loc_location02,bj_UNIT_FACING)
                    set units019[loc_integer04]=units001[loc_integer04]
                    call Func1592(units001[loc_integer04],loc_integer04,loc_player01)
                endif
            endloop
        endif
    endif
    if loc_integer02<6 then
        set loc_player01=players003[loc_integer02]
    elseif loc_integer02<11 then
        set loc_player01=players004[loc_integer02-5]
    endif
    if loc_integer02<6 then
        call SaveInteger(hashtable001,(loc_integer01),(55),(loc_integer02+1))
        set units001[GetPlayerId(loc_player01)]=null
        if Func0059(loc_player01)then
            loop
                exitwhen units001[loc_integer04]!=null
                set loc_integer03=Func0076()
                if booleans001[loc_integer03]==false and Func1588(loc_integer03,units019[loc_integer04])then
                    if not boolean028 then
                        set booleans001[loc_integer03]=true
                    endif
                    set units001[loc_integer04]=CreateUnitAtLoc(loc_player01,integers070[loc_integer03],loc_location01,bj_UNIT_FACING)
                    set units020[loc_integer04]=units001[loc_integer04]
                    set integers143[loc_integer04]=GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)
                    call Func1593(units001[loc_integer04],loc_integer04,loc_player01)
                    call SaveUnitHandle(hashtable001,(GetHandleId(units020[loc_integer04])),(788),(units019[loc_integer04]))
                    call SaveUnitHandle(hashtable001,(GetHandleId(units019[loc_integer04])),(788),(units020[loc_integer04]))
                endif
            endloop
        endif
    elseif loc_integer02<11 then
        call SaveInteger(hashtable001,(loc_integer01),(55),(loc_integer02+1))
        set units001[loc_integer04]=null
        if Func0059(loc_player01)then
            loop
                exitwhen units001[loc_integer04]!=null
                set loc_integer03=Func0076()
                if booleans001[loc_integer03]==false and Func1588(loc_integer03,units019[loc_integer04])then
                    if not boolean028 then
                        set booleans001[loc_integer03]=true
                    endif
                    set units001[loc_integer04]=CreateUnitAtLoc(loc_player01,integers070[loc_integer03],loc_location02,bj_UNIT_FACING)
                    set units020[loc_integer04]=units001[loc_integer04]
                    set integers143[loc_integer04]=GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)
                    call Func1593(units001[loc_integer04],loc_integer04,loc_player01)
                    call SaveUnitHandle(hashtable001,(GetHandleId(units020[loc_integer04])),(788),(units019[loc_integer04]))
                    call SaveUnitHandle(hashtable001,(GetHandleId(units019[loc_integer04])),(788),(units020[loc_integer04]))
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

// 41509 ~ 41549
function Func1599 takes nothing returns nothing
    local integer loc_integer01=1
    local integer loc_integer02
    local real loc_real01=(TimerGetElapsed(timer001))
    local trigger loc_trigger01
    set boolean134=true
    set boolean039=false
    set boolean052=false
    call Func0068('H00I')
    call Func0068('O00P')
    call Func0068('H00U')
    loop
        exitwhen loc_integer01>5
        set loc_integer02=GetPlayerId(players003[loc_integer01])
        set booleans039[loc_integer02]=false
        set reals028[loc_integer02]=loc_real01-180
        set integers144[loc_integer02]=0
        set loc_integer02=GetPlayerId(players004[loc_integer01])
        set booleans039[loc_integer02]=false
        set reals028[loc_integer02]=loc_real01-180
        set integers144[loc_integer02]=0
        set loc_integer01=loc_integer01+1
    endloop
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1598))
    call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(55),(1))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-tt",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-tt",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-tt",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-tt",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-tt",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-tt",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-tt",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-tt",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-tt",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-tt",true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1596))
    set loc_trigger01=null
endfunction
