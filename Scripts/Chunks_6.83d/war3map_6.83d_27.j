
// 8724 ~ 8739
function Func0459 takes player loc_player01 returns nothing
    local integer loc_integer01=0
    local string loc_string01=GetPlayerName(loc_player01)
    local integer loc_integer02=StringLength(loc_string01)
    local integer loc_integer03=loc_integer02
    loop
        exitwhen loc_integer01==loc_integer02
        if SubString(loc_string01,loc_integer01,loc_integer01+1)=="("and SubString(loc_string01,loc_integer01-1,loc_integer01)==" "then
            set loc_integer03=loc_integer01-1
            call SetPlayerName(loc_player01,SubString(loc_string01,0,loc_integer03))
            set loc_integer01=loc_integer02
        else
            set loc_integer01=loc_integer01+1
        endif
    endloop
endfunction

// 8741 ~ 8930
function Func0460 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05=0
    local integer loc_integer06=0
    local integer loc_integer07
    local trigger loc_trigger01
    local location loc_location01=GetRectCenter(rect029)
    local location loc_location02=GetRectCenter(rect030)
    if GetPlayerState(players003[0],PLAYER_STATE_OBSERVER)!=0 or GetPlayerState(players004[0],PLAYER_STATE_OBSERVER)!=0 then
        set boolean025=true
        set players003[0]=Player(13)
        set players004[0]=Player(14)
        set player009=Player(0)
        set player010=Player(6)
        call SetAllyColorFilterState(0)
        loop
            exitwhen loc_integer05>5
            call SetPlayerAlliance(Player(0),players003[loc_integer05],ConvertAllianceType(0),true)
            call SetPlayerAlliance(Player(0),players003[loc_integer05],ConvertAllianceType(4),true)
            call SetPlayerAlliance(Player(0),players004[loc_integer05],ConvertAllianceType(0),false)
            call SetPlayerAlliance(Player(0),players004[loc_integer05],ConvertAllianceType(4),false)
            set loc_integer05=loc_integer05+1
        endloop
    endif
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
    call ForceAddPlayer(force003,players003[1])
    call ForceAddPlayer(force003,players003[2])
    call ForceAddPlayer(force003,players003[3])
    call ForceAddPlayer(force003,players003[4])
    call ForceAddPlayer(force003,players003[5])
    call ForceAddPlayer(force003,players004[1])
    call ForceAddPlayer(force003,players004[2])
    call ForceAddPlayer(force003,players004[3])
    call ForceAddPlayer(force003,players004[4])
    call ForceAddPlayer(force003,players004[5])
    if boolean025 then
        call ForceAddPlayer(force003,Player(0))
        call ForceAddPlayer(force003,Player(6))
    endif
    set loc_integer05=0
    set loc_integer06=0
    loop
        exitwhen loc_integer05>5
        loop
            exitwhen loc_integer06>5
            if(loc_integer05!=loc_integer06)then
                call SetPlayerAlliance(players003[loc_integer05],players003[loc_integer06],ConvertAllianceType(0),true)
                call SetPlayerAlliance(players003[loc_integer05],players003[loc_integer06],ConvertAllianceType(1),true)
                call SetPlayerAlliance(players003[loc_integer05],players003[loc_integer06],ConvertAllianceType(2),true)
                call SetPlayerAlliance(players003[loc_integer05],players003[loc_integer06],ConvertAllianceType(3),true)
                call SetPlayerAlliance(players003[loc_integer05],players003[loc_integer06],ConvertAllianceType(4),true)
                call SetPlayerAlliance(players003[loc_integer05],players003[loc_integer06],ConvertAllianceType(5),true)
                call SetPlayerAlliance(players003[loc_integer05],players003[loc_integer06],ConvertAllianceType(6),false)
                call SetPlayerAlliance(players003[loc_integer05],players003[loc_integer06],ConvertAllianceType(7),false)
                call SetPlayerAlliance(players004[loc_integer05],players004[loc_integer06],ConvertAllianceType(0),true)
                call SetPlayerAlliance(players004[loc_integer05],players004[loc_integer06],ConvertAllianceType(1),true)
                call SetPlayerAlliance(players004[loc_integer05],players004[loc_integer06],ConvertAllianceType(2),true)
                call SetPlayerAlliance(players004[loc_integer05],players004[loc_integer06],ConvertAllianceType(3),true)
                call SetPlayerAlliance(players004[loc_integer05],players004[loc_integer06],ConvertAllianceType(4),true)
                call SetPlayerAlliance(players004[loc_integer05],players004[loc_integer06],ConvertAllianceType(5),true)
                call SetPlayerAlliance(players004[loc_integer05],players004[loc_integer06],ConvertAllianceType(6),false)
                call SetPlayerAlliance(players004[loc_integer05],players004[loc_integer06],ConvertAllianceType(7),false)
                call SetPlayerAlliance(players003[loc_integer05],players004[loc_integer06],ConvertAllianceType(0),false)
                call SetPlayerAlliance(players003[loc_integer05],players004[loc_integer06],ConvertAllianceType(1),false)
                call SetPlayerAlliance(players003[loc_integer05],players004[loc_integer06],ConvertAllianceType(2),false)
                call SetPlayerAlliance(players003[loc_integer05],players004[loc_integer06],ConvertAllianceType(3),false)
                call SetPlayerAlliance(players003[loc_integer05],players004[loc_integer06],ConvertAllianceType(4),false)
                call SetPlayerAlliance(players003[loc_integer05],players004[loc_integer06],ConvertAllianceType(5),false)
                call SetPlayerAlliance(players003[loc_integer05],players004[loc_integer06],ConvertAllianceType(6),false)
                call SetPlayerAlliance(players003[loc_integer05],players004[loc_integer06],ConvertAllianceType(7),false)
                call SetPlayerAlliance(players004[loc_integer05],players003[loc_integer06],ConvertAllianceType(0),false)
                call SetPlayerAlliance(players004[loc_integer05],players003[loc_integer06],ConvertAllianceType(1),false)
                call SetPlayerAlliance(players004[loc_integer05],players003[loc_integer06],ConvertAllianceType(2),false)
                call SetPlayerAlliance(players004[loc_integer05],players003[loc_integer06],ConvertAllianceType(3),false)
                call SetPlayerAlliance(players004[loc_integer05],players003[loc_integer06],ConvertAllianceType(4),false)
                call SetPlayerAlliance(players004[loc_integer05],players003[loc_integer06],ConvertAllianceType(5),false)
                call SetPlayerAlliance(players004[loc_integer05],players003[loc_integer06],ConvertAllianceType(6),false)
                call SetPlayerAlliance(players004[loc_integer05],players003[loc_integer06],ConvertAllianceType(7),false)
            endif
            set loc_integer06=loc_integer06+1
        endloop
        set loc_integer06=0
        set loc_integer05=loc_integer05+1
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
    call SetPlayerName(players003[0],GetObjectName('n03N'))
    call SetPlayerName(players004[0],GetObjectName('n03O'))
    call SetPlayerName(player001,GetObjectName('n0E8'))
    call Func0455()
    if(players003[0]!=Player(0)or players004[0]!=Player(6))then
        call Func0458()
    endif
    call Func0454()
    set loc_integer02=Func0066(force001)
    set loc_integer01=Func0066(force002)
    set loc_integer03=1
    set loc_integer04=5
    loop
        exitwhen loc_integer03>loc_integer04
        if(Func0059(players003[loc_integer03]))then
            call SetPlayerState(players003[loc_integer03],PLAYER_STATE_RESOURCE_GOLD,(4375/loc_integer02))
            call SetPlayerState(players003[loc_integer03],PLAYER_STATE_RESOURCE_LUMBER,0)
        endif
        if(Func0059(players004[loc_integer03]))then
            call SetPlayerState(players004[loc_integer03],PLAYER_STATE_RESOURCE_GOLD,(4375/loc_integer01))
            call SetPlayerState(players004[loc_integer03],PLAYER_STATE_RESOURCE_LUMBER,0)
        endif
        set loc_integer03=loc_integer03+1
    endloop
    call SetPlayerHandicapXP(players003[1],1)
    call SetPlayerHandicapXP(players003[2],1)
    call SetPlayerHandicapXP(players003[3],1)
    call SetPlayerHandicapXP(players003[4],1)
    call SetPlayerHandicapXP(players003[5],1)
    call SetPlayerHandicapXP(players004[1],1)
    call SetPlayerHandicapXP(players004[2],1)
    call SetPlayerHandicapXP(players004[3],1)
    call SetPlayerHandicapXP(players004[4],1)
    call SetPlayerHandicapXP(players004[5],1)
    call SetPlayerState(players003[0],PLAYER_STATE_GIVES_BOUNTY,1)
    call SetPlayerState(players003[1],PLAYER_STATE_GIVES_BOUNTY,1)
    call SetPlayerState(players003[2],PLAYER_STATE_GIVES_BOUNTY,1)
    call SetPlayerState(players003[3],PLAYER_STATE_GIVES_BOUNTY,1)
    call SetPlayerState(players003[4],PLAYER_STATE_GIVES_BOUNTY,1)
    call SetPlayerState(players003[5],PLAYER_STATE_GIVES_BOUNTY,1)
    call SetPlayerState(players004[0],PLAYER_STATE_GIVES_BOUNTY,1)
    call SetPlayerState(players004[1],PLAYER_STATE_GIVES_BOUNTY,1)
    call SetPlayerState(players004[2],PLAYER_STATE_GIVES_BOUNTY,1)
    call SetPlayerState(players004[3],PLAYER_STATE_GIVES_BOUNTY,1)
    call SetPlayerState(players004[4],PLAYER_STATE_GIVES_BOUNTY,1)
    call SetPlayerState(players004[5],PLAYER_STATE_GIVES_BOUNTY,1)
    call Func0102()
    call Func0453()
    call Func0459(players003[1])
    call Func0459(players003[2])
    call Func0459(players003[3])
    call Func0459(players003[4])
    call Func0459(players003[5])
    call Func0459(players004[1])
    call Func0459(players004[2])
    call Func0459(players004[3])
    call Func0459(players004[4])
    call Func0459(players004[5])
    set loc_integer05=1
    loop
        exitwhen loc_integer05>5
        if Func0059(players003[loc_integer05])then
            call CreateUnitAtLoc(players003[loc_integer05],'n00C',loc_location01,bj_UNIT_FACING)
        endif
        if Func0059(players004[loc_integer05])then
            call CreateUnitAtLoc(players004[loc_integer05],'n00C',loc_location02,bj_UNIT_FACING)
        endif
        set loc_integer05=loc_integer05+1
    endloop
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    set loc_integer07=0
    loop
        set strings005[loc_integer07]=GetPlayerName(Player(loc_integer07))
        set loc_integer07=loc_integer07+1
        exitwhen loc_integer07==16
    endloop
    set loc_location01=null
    set loc_location02=null
endfunction

// 8932 ~ 8934
function Func0461 takes nothing returns nothing
    call Func0460()
endfunction
