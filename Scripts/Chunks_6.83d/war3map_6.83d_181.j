
// 36675 ~ 36681
function Func1466 takes player loc_player01,unit loc_unit01 returns nothing
    local integer loc_integer01=80
    if GetLocalPlayer()==loc_player01 then
        set loc_integer01=255
    endif
    call SetUnitVertexColor(loc_unit01,255,255,255,loc_integer01)
endfunction

// 36683 ~ 36762
function Func1467 takes player loc_player01,player loc_player02 returns nothing
    local unit loc_unit01
    local real loc_real01
    local real loc_real02
    call Func1462(loc_player01)
    call Func0118(loc_player01,"Sound\\Interface\\Rescue.wav")
    if Func0056(loc_player01)then
        if GetLocalPlayer()==loc_player01 then
            call PingMinimapEx(real244,real245,5,255,255,255,false)
        endif
        set loc_unit01=CreateUnit(loc_player01,'n02A',real244-250,real245,0)
        call UnitApplyTimedLife(loc_unit01,'BTLF',20)
        call UnitAddAbility(loc_unit01,'Aloc')
        set units014[GetPlayerId(loc_player01)]=loc_unit01
        call Func1466(loc_player01,loc_unit01)
        if GetLocalPlayer()==loc_player01 then
            call ClearTextMessages()
        endif
        call DisplayTimedTextToPlayer(loc_player01,0,0,10," ")
        call DisplayTimedTextToPlayer(loc_player01,0,0,10," ")
        call DisplayTimedTextToPlayer(loc_player01,0,0,20,GetObjectName('n068'))
        call DisplayTimedTextToPlayer(loc_player01,0,0,10," ")
    else
        call Func1462(loc_player01)
        if GetLocalPlayer()==loc_player01 then
            call PingMinimapEx(real246,real247,5,255,255,255,false)
        endif
        set loc_unit01=CreateUnit(loc_player01,'n02A',real244-250,real245,0)
        call SetUnitVertexColor(loc_unit01,255,255,255,175)
        call UnitApplyTimedLife(loc_unit01,'BTLF',20)
        call UnitAddAbility(loc_unit01,'Aloc')
        set units015[GetPlayerId(loc_player01)]=loc_unit01
        call Func1466(loc_player01,loc_unit01)
        if GetLocalPlayer()==loc_player01 then
            call ClearTextMessages()
        endif
        call DisplayTimedTextToPlayer(loc_player01,0,0,10," ")
        call DisplayTimedTextToPlayer(loc_player01,0,0,10," ")
        call DisplayTimedTextToPlayer(loc_player01,0,0,20,GetObjectName('n068'))
        call DisplayTimedTextToPlayer(loc_player01,0,0,10," ")
    endif
    if loc_player02!=null then
        call Func1462(loc_player02)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
        if Func0056(loc_player02)then
            if GetLocalPlayer()==loc_player02 then
                call PingMinimapEx(real244,real245,5,255,255,255,false)
            endif
            set loc_unit01=CreateUnit(loc_player02,'n02A',real244+250,real245,0)
            call UnitApplyTimedLife(loc_unit01,'BTLF',20)
            call UnitAddAbility(loc_unit01,'Aloc')
            set units014[GetPlayerId(loc_player02)]=loc_unit01
            call Func1466(loc_player02,loc_unit01)
            if GetLocalPlayer()==loc_player02 then
                call ClearTextMessages()
            endif
            call DisplayTimedTextToPlayer(loc_player02,0,0,10," ")
            call DisplayTimedTextToPlayer(loc_player02,0,0,10," ")
            call DisplayTimedTextToPlayer(loc_player02,0,0,20,GetObjectName('n068'))
            call DisplayTimedTextToPlayer(loc_player02,0,0,10," ")
        else
            if GetLocalPlayer()==loc_player02 then
                call PingMinimapEx(real246,real247,5,255,255,255,false)
            endif
            set loc_unit01=CreateUnit(loc_player02,'n02A',real244+250,real245,0)
            call UnitApplyTimedLife(loc_unit01,'BTLF',20)
            call UnitAddAbility(loc_unit01,'Aloc')
            set units015[GetPlayerId(loc_player02)]=loc_unit01
            call Func1466(loc_player02,loc_unit01)
            if GetLocalPlayer()==loc_player02 then
                call ClearTextMessages()
            endif
            call DisplayTimedTextToPlayer(loc_player02,0,0,10," ")
            call DisplayTimedTextToPlayer(loc_player02,0,0,10," ")
            call DisplayTimedTextToPlayer(loc_player02,0,0,20,GetObjectName('n068'))
            call DisplayTimedTextToPlayer(loc_player02,0,0,10," ")
        endif
    endif
    set loc_unit01=null
endfunction

// 36764 ~ 36964
function Func1468 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(25)))
    local player loc_player01=player019
    local player loc_player02=player020
    local integer loc_integer03
    set player019=null
    set player020=null
    if loc_integer02==0 then
        if integer447==1 then
            set player019=players003[1]
        else
            set player019=players004[1]
        endif
        call Func1465(player019)
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(player019)]+(strings005[GetPlayerId((player019))])+"|r"+" "+GetObjectName('n064'))
        call Func1467(player019,player020)
        call Func1459(20,real251,real252)
    elseif loc_integer02==1 then
        if integer447==1 then
            if boolean111==false then
                set player019=players004[1]
                set player020=players004[2]
            else
                set player019=players004[1]
                set player020=players004[1]
            endif
        else
            if boolean111==false then
                set player019=players003[1]
                set player020=players003[2]
            else
                set player019=players003[1]
                set player020=players003[1]
            endif
        endif
        if booleans037[GetPlayerId(loc_player01)]==false then
            call Func1463(loc_player01,Func1464(),true)
        endif
        call Func1465(player019)
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(player019)]+(strings005[GetPlayerId((player019))])+"|r"+" "+GetObjectName('n064'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(player020)]+(strings005[GetPlayerId((player020))])+"|r"+" "+GetObjectName('n064'))
        call Func1467(player019,player020)
        call Func1459(20,real251,real252)
    elseif loc_integer02==2 then
        if integer447==1 then
            if boolean111==false then
                set player019=players003[2]
                set player020=players003[3]
            else
                set player019=players003[1]
                set player020=players003[1]
            endif
        else
            if boolean111==false then
                set player019=players004[2]
                set player020=players004[3]
            else
                set player019=players004[1]
                set player020=players004[1]
            endif
        endif
        if booleans037[GetPlayerId(loc_player01)]==false then
            call Func1463(loc_player01,Func1464(),true)
        endif
        if booleans037[GetPlayerId(loc_player02)]==false then
            call Func1463(loc_player02,Func1464(),true)
        endif
        call Func1465(player019)
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(player019)]+(strings005[GetPlayerId((player019))])+"|r"+" "+GetObjectName('n064'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(player020)]+(strings005[GetPlayerId((player020))])+"|r"+" "+GetObjectName('n064'))
        call Func1467(player019,player020)
        call Func1459(20,real251,real252)
    elseif loc_integer02==3 then
        if integer447==1 then
            if boolean111==false then
                set player019=players004[3]
                set player020=players004[4]
            else
                set player019=players004[1]
                set player020=players004[1]
            endif
        else
            if boolean111==false then
                set player019=players003[3]
                set player020=players003[4]
            else
                set player019=players003[1]
                set player020=players003[1]
            endif
        endif
        if booleans037[GetPlayerId(loc_player01)]==false then
            call Func1463(loc_player01,Func1464(),true)
        endif
        if booleans037[GetPlayerId(loc_player02)]==false then
            call Func1463(loc_player02,Func1464(),true)
        endif
        call Func1465(player019)
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(player019)]+(strings005[GetPlayerId((player019))])+"|r"+" "+GetObjectName('n064'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(player020)]+(strings005[GetPlayerId((player020))])+"|r"+" "+GetObjectName('n064'))
        call Func1467(player019,player020)
        call Func1459(20,real251,real252)
    elseif loc_integer02==4 then
        if integer447==1 then
            if boolean111==false then
                set player019=players003[4]
                set player020=players003[5]
            else
                set player019=players003[1]
                set player020=players003[1]
            endif
        else
            if boolean111==false then
                set player019=players004[4]
                set player020=players004[5]
            else
                set player019=players004[1]
                set player020=players004[1]
            endif
        endif
        if booleans037[GetPlayerId(loc_player01)]==false then
            call Func1463(loc_player01,Func1464(),true)
        endif
        if booleans037[GetPlayerId(loc_player02)]==false then
            call Func1463(loc_player02,Func1464(),true)
        endif
        call Func1465(player019)
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(player019)]+(strings005[GetPlayerId((player019))])+"|r"+" "+GetObjectName('n064'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(player020)]+(strings005[GetPlayerId((player020))])+"|r"+" "+GetObjectName('n064'))
        call Func1467(player019,player020)
        call Func1459(20,real251,real252)
    elseif loc_integer02==5 then
        if integer447==1 then
            if boolean111==false then
                set player019=players004[5]
            else
                set player019=players004[1]
            endif
        else
            if boolean111==false then
                set player019=players003[5]
            else
                set player020=players003[1]
            endif
        endif
        if booleans037[GetPlayerId(loc_player01)]==false then
            call Func1463(loc_player01,Func1464(),true)
        endif
        if booleans037[GetPlayerId(loc_player02)]==false then
            call Func1463(loc_player02,Func1464(),true)
        endif
        call Func1465(player019)
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(player019)]+(strings005[GetPlayerId((player019))])+"|r"+" "+GetObjectName('n064'))
        call Func1467(player019,player020)
        call Func1459(20,real251,real252)
    elseif loc_integer02==6 then
        if booleans037[GetPlayerId(loc_player01)]==false then
            call Func1463(loc_player01,Func1464(),true)
        endif
        call SuspendTimeOfDay(false)
    endif
    if loc_integer02==7 then
        set boolean110=true
    endif
    if loc_integer02==8 then
        call Func1454()
        set loc_integer03=1
        loop
            exitwhen loc_integer03>24
            call RemoveUnit(units012[loc_integer03])
            set loc_integer03=loc_integer03+1
        endloop
        call Func0501()
        call Func1346(60)
        call UnitApplyTimedLife(units011[1],'BTLF',2)
        call UnitApplyTimedLife(units011[2],'BTLF',2)
        call UnitApplyTimedLife(units011[3],'BTLF',2)
        call UnitApplyTimedLife(units011[4],'BTLF',2)
        call UnitApplyTimedLife(units011[5],'BTLF',2)
        call UnitApplyTimedLife(units011[6],'BTLF',2)
        call UnitApplyTimedLife(units011[7],'BTLF',2)
        call UnitApplyTimedLife(units011[8],'BTLF',2)
        call UnitApplyTimedLife(units011[9],'BTLF',2)
        call UnitApplyTimedLife(units011[10],'BTLF',2)
        call UnitApplyTimedLife(units011[11],'BTLF',2)
        call UnitApplyTimedLife(units011[12],'BTLF',2)
        call Func0035(trigger064)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,7,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1453))
    else
        call SaveInteger(hashtable001,(loc_integer01),(25),(loc_integer02+1))
    endif
    set loc_trigger01=null
    set loc_player01=null
    set loc_player02=null
    return false
endfunction
