
// 32657 ~ 32676
function Func1334 takes nothing returns nothing
    local integer loc_integer01=S2I(SubString(GetEventPlayerChatString(),6,StringLength(GetEventPlayerChatString())))
    local integer loc_integer02=GetPlayerId(GetTriggerPlayer())
    set integers051[loc_integer02]=integers051[loc_integer02]+1
    if integers051[loc_integer02]>20 then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName('n0DQ'))
        return
    endif
    if GetEventPlayerChatString()=="-rollon"or GetEventPlayerChatString()=="-rolloff"then
        return
    endif
    if loc_integer01==0 then
        set loc_integer01=100
    endif
    if loc_integer01>0 and loc_integer01<2001 then
        call Func0154(force003,5,strings001[GetPlayerId(GetTriggerPlayer())]+(strings005[GetPlayerId((GetTriggerPlayer()))])+"|r "+GetObjectName('n05I')+" "+I2S(GetRandomInt(1,loc_integer01))+" "+GetObjectName('n05M')+" "+I2S(loc_integer01))
    else
        call Func0120(GetTriggerPlayer(),GetObjectName('n02Y'))
    endif
endfunction

// 32678 ~ 32686
function Func1335 takes nothing returns nothing
    local integer loc_integer01
    if GetRandomInt(1,2)==1 then
        set loc_integer01=GetRandomInt(integer041,integer042)
    else
        set loc_integer01=GetRandomInt(integer039,integer040)
    endif
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName('n0GS')+" "+Func0041(loc_integer01))
endfunction

// 32688 ~ 32708
function Func1336 takes nothing returns nothing
    local integer loc_integer01=S2I(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
    if GetTriggerPlayer()!=players003[1]or loc_integer01>2 or loc_integer01<1 or boolean061==false or TimerGetElapsed(timer001)>14 or boolean107==true then
        return
    endif
    set integer439=loc_integer01
    set integer440=loc_integer01
    set boolean106=true
    if loc_integer01==1 then
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(players003[1])]+(strings005[GetPlayerId((players003[1]))])+"|r "+GetObjectName('n0DS'))
    else
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(players004[1])]+(strings005[GetPlayerId((players004[1]))])+"|r "+GetObjectName('n0DS'))
    endif
    if integer439==1 then
        set player017=players003[1]
        set player018=players004[1]
    else
        set player017=players004[1]
        set player018=players003[1]
    endif
endfunction

// 32710 ~ 32712
function Func1337 takes nothing returns nothing
    set booleans012[GetPlayerId(GetTriggerPlayer())]=false
endfunction

// 32714 ~ 32716
function Func1338 takes nothing returns nothing
    set booleans012[GetPlayerId(GetTriggerPlayer())]=true
endfunction

// 32718 ~ 32733
function Func1339 takes nothing returns nothing
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n090'))
    set booleans030[GetPlayerId(GetTriggerPlayer())]=true
    if GetLocalPlayer()==GetTriggerPlayer()then
        call SetPlayerName(players003[1],(strings005[GetPlayerId((players003[1]))]))
        call SetPlayerName(players003[2],(strings005[GetPlayerId((players003[2]))]))
        call SetPlayerName(players003[3],(strings005[GetPlayerId((players003[3]))]))
        call SetPlayerName(players003[4],(strings005[GetPlayerId((players003[4]))]))
        call SetPlayerName(players003[5],(strings005[GetPlayerId((players003[5]))]))
        call SetPlayerName(players004[1],(strings005[GetPlayerId((players004[1]))]))
        call SetPlayerName(players004[2],(strings005[GetPlayerId((players004[2]))]))
        call SetPlayerName(players004[3],(strings005[GetPlayerId((players004[3]))]))
        call SetPlayerName(players004[4],(strings005[GetPlayerId((players004[4]))]))
        call SetPlayerName(players004[5],(strings005[GetPlayerId((players004[5]))]))
    endif
endfunction

// 32735 ~ 32744
function Func1340 takes nothing returns nothing
    local integer loc_integer01=GetPlayerId(GetTriggerPlayer())
    if booleans013[loc_integer01]==true then
        set booleans013[loc_integer01]=false
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName('n08T'))
    else
        set booleans013[loc_integer01]=true
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName('n091'))
    endif
endfunction

// 32746 ~ 32749
function Func1341 takes nothing returns nothing
    local integer loc_integer01=GetPlayerId(GetTriggerPlayer())
    set booleans031[loc_integer01]=true
endfunction

// 32751 ~ 32752
function Func1342 takes nothing returns nothing
endfunction

// 32754 ~ 32774
function Func1343 takes nothing returns nothing
    local integer loc_integer01=1
    local player loc_player01
    local real loc_real01
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        if Func0059(loc_player01)then
            set loc_real01=integers017[GetPlayerId(loc_player01)]/(TimerGetElapsed(timer001))*60
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n084')+" "+R2S(loc_real01))
        endif
        set loc_player01=players004[loc_integer01]
        if Func0059(loc_player01)then
            set loc_real01=integers017[GetPlayerId(loc_player01)]/(TimerGetElapsed(timer001))*60
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n084')+" "+R2S(loc_real01))
        endif
        set loc_integer01=loc_integer01+1
    endloop
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00," ")
    set loc_player01=null
endfunction

// 32776 ~ 32778
function Func1344 takes nothing returns nothing
    call Func0235(GetTriggerPlayer())
endfunction

// 32780 ~ 32784
function Func1345 takes nothing returns boolean
    call Func0035(GetTriggeringTrigger())
    set boolean102=true
    return false
endfunction

// 32786 ~ 32791
function Func1346 takes real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1345))
    set loc_trigger01=null
endfunction

// 32793 ~ 32807
function Func1347 takes player loc_player01 returns nothing
    local integer loc_integer01
    local player loc_player02
    set loc_integer01=0
    loop
        set loc_player02=Player(loc_integer01)
        if(PlayersAreCoAllied(loc_player01,loc_player02)and loc_player01!=loc_player02)then
            call SetPlayerAlliance(loc_player01,loc_player02,ALLIANCE_SHARED_VISION,true)
            call SetPlayerAlliance(loc_player01,loc_player02,ALLIANCE_SHARED_CONTROL,true)
            call SetPlayerAlliance(loc_player02,loc_player01,ALLIANCE_SHARED_CONTROL,true)
        endif
        set loc_integer01=loc_integer01+1
        exitwhen loc_integer01==12
    endloop
endfunction

// 32809 ~ 32854
function Func1348 takes nothing returns nothing
    local integer loc_integer01=S2I(SubString(GetEventPlayerChatString(),9,StringLength(GetEventPlayerChatString())))
    local integer loc_integer02=1
    local player loc_player01
    local string loc_string01
    if boolean102 then
        if(integer002<10)then
            set loc_string01=I2S(integer001)+":0"+I2S(integer002)
        else
            set loc_string01=I2S(integer001)+":"+I2S(integer002)
        endif
        if loc_integer01<1 or booleans032[loc_integer01]==false then
            loop
                exitwhen loc_integer02>5
                set loc_player01=players003[loc_integer02]
                if Func0059(loc_player01)and((TimerGetElapsed(timer001))-reals001[GetPlayerId(loc_player01)])>300.0 and booleans032[GetPlayerId(loc_player01)]==false then
                    set booleans032[GetPlayerId(loc_player01)]=true
                    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n05G')+" "+R2S(((TimerGetElapsed(timer001))-reals001[GetPlayerId(loc_player01)])/60)+" "+GetObjectName('N05F'))
                    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00,GetObjectName('n05O')+" |cff99ccff-kickafk "+I2S(GetPlayerId(loc_player01))+" |r "+GetObjectName('n05P'))
                    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00," ")
                endif
                set loc_player01=players004[loc_integer02]
                if Func0059(loc_player01)and((TimerGetElapsed(timer001))-reals001[GetPlayerId(loc_player01)])>300.0 and booleans032[GetPlayerId(loc_player01)]==false then
                    set booleans032[GetPlayerId(loc_player01)]=true
                    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n05G')+" "+R2S(((TimerGetElapsed(timer001))-reals001[GetPlayerId(loc_player01)])/60)+" "+GetObjectName('N05F'))
                    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00,GetObjectName('n05O')+" |cff99ccff-kickafk "+I2S(GetPlayerId(loc_player01))+" |r "+GetObjectName('n05P'))
                    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00," ")
                endif
                set loc_integer02=loc_integer02+1
            endloop
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00," ")
        elseif Func0059(Player(loc_integer01))==true and IsPlayerAlly(GetTriggerPlayer(),Player(loc_integer01))==true then
            call DisplayTimedTextToPlayer(Player(loc_integer01),0,real003,3600,"|c00ff0303"+GetObjectName('n05E')+"|r")
            call Func0481(Player(loc_integer01))
            set strings003[GetPlayerId(Player(loc_integer01))]="|c00555555"+loc_string01+"|r"
            call RemovePlayer(Player(loc_integer01),PLAYER_GAME_RESULT_DEFEAT)
            call Func1347(Player(loc_integer01))
            if boolean057 then
                call Func0264(Player(loc_integer01))
            endif
            set booleans018[GetPlayerId(Player(loc_integer01))]=true
            call Func0480(Player(loc_integer01))
            call Func0152(force003,30.00,"|c00ff0303"+(strings005[GetPlayerId((Player(loc_integer01)))])+" "+GetObjectName('n05E')+"|r")
        endif
    endif
endfunction

// 32856 ~ 32881
function Func1349 takes nothing returns nothing
    local integer loc_integer01=1
    local player loc_player01
    local integer loc_integer02=0
    if boolean102 then
        loop
            exitwhen loc_integer01>5
            set loc_player01=players003[loc_integer01]
            if Func0059(loc_player01)and((TimerGetElapsed(timer001))-reals001[GetPlayerId(loc_player01)])/60>0.2 then
                set loc_integer02=loc_integer02+1
                call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n05D')+" "+R2S(((TimerGetElapsed(timer001))-reals001[GetPlayerId(loc_player01)])/60)+" "+GetObjectName('N05F'))
            endif
            set loc_player01=players004[loc_integer01]
            if Func0059(loc_player01)and((TimerGetElapsed(timer001))-reals001[GetPlayerId(loc_player01)])/60>0.2 then
                set loc_integer02=loc_integer02+1
                call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n05D')+" "+R2S(((TimerGetElapsed(timer001))-reals001[GetPlayerId(loc_player01)])/60)+" "+GetObjectName('N05F'))
            endif
            set loc_integer01=loc_integer01+1
        endloop
        if loc_integer02<1 then
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00,GetObjectName('N05Q'))
        else
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00," ")
        endif
    endif
endfunction

// 32883 ~ 32908
function Func1350 takes nothing returns boolean
    local integer loc_integer01=1
    local player loc_player01
    local real loc_real01=(TimerGetElapsed(timer001))
    if boolean102 then
        loop
            exitwhen loc_integer01>5
            set loc_player01=players003[loc_integer01]
            if Func0059(loc_player01)and(loc_real01-reals001[GetPlayerId(loc_player01)])>300.0 and booleans032[GetPlayerId(loc_player01)]==false then
                set booleans032[GetPlayerId(loc_player01)]=true
                call Func0152(force001,15,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n05G')+" "+R2S((loc_real01-reals001[GetPlayerId(loc_player01)])/60)+" "+GetObjectName('N05F'))
                call Func0152(force001,15,GetObjectName('n05O')+" |cff99ccff-kickafk "+I2S(GetPlayerId(loc_player01))+" |r "+GetObjectName('n05P'))
                call Func0152(force001,15," ")
            endif
            set loc_player01=players004[loc_integer01]
            if Func0059(loc_player01)and(loc_real01-reals001[GetPlayerId(loc_player01)])>300.0 and booleans032[GetPlayerId(loc_player01)]==false then
                set booleans032[GetPlayerId(loc_player01)]=true
                call Func0152(force002,15,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n05G')+" "+R2S((loc_real01-reals001[GetPlayerId(loc_player01)])/60)+" "+GetObjectName('N05F'))
                call Func0152(force002,15,GetObjectName('n05O')+" |cff99ccff-kickafk "+I2S(GetPlayerId(loc_player01))+" |r "+GetObjectName('n05P'))
                call Func0152(force002,15," ")
            endif
            set loc_integer01=loc_integer01+1
        endloop
    endif
    return false
endfunction

// 32910 ~ 32929
function Func1351 takes nothing returns boolean
    if GetOwningPlayer(GetTriggerUnit())!=players003[0]and GetOwningPlayer(GetTriggerUnit())!=players004[0]then
        set integers017[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]=integers017[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]+1
        if GetIssuedOrderId()!=851983 then
            set reals001[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]=(TimerGetElapsed(timer001))
            set booleans032[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]=false
        endif
        if(GetIssuedOrderId()==851983 or GetIssuedOrderId()==851971)and GetOrderTargetItem()!=null then
            if GetIssuedOrderId()==851983 or(GetIssuedOrderId()==851971 and(LoadBoolean(hashtable001,(GetHandleId(GetItemPlayer(GetOrderTargetItem()))),(139)))==true)then
                if GetItemPlayer(GetOrderTargetItem())!=GetOwningPlayer(GetTriggerUnit())and IsPointInRegion(region001,GetItemX(GetOrderTargetItem()),GetItemY(GetOrderTargetItem()))==true then
                    call DisableTrigger(GetTriggeringTrigger())
                    call Func0123(GetTriggerUnit())
                    call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0G7'))
                    call EnableTrigger(GetTriggeringTrigger())
                endif
            endif
        endif
    endif
    return false
endfunction

// 32931 ~ 32933
function Func1352 takes nothing returns boolean
    return Func0096(GetFilterUnit())and GetOwningPlayer(GetFilterUnit())==GetTriggerPlayer()
endfunction

// 32935 ~ 32937
function Func1353 takes nothing returns nothing
    call UnitAddType(GetEnumUnit(),UNIT_TYPE_PEON)
endfunction

// 32939 ~ 32941
function Func1354 takes nothing returns nothing
    call UnitRemoveType(GetEnumUnit(),UNIT_TYPE_PEON)
endfunction

// 32943 ~ 32948
function Func1355 takes nothing returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,0,0,12000,Condition(function Func1352))
    call Func0029(loc_group01)
    set loc_group01=null
endfunction
