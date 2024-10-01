
// 16295 ~ 16338
function Func0630 takes player loc_player01,unit loc_unit01,integer loc_integer01,integer loc_integer02,integer loc_integer03,integer loc_integer04,integer loc_integer05,integer loc_integer06,integer loc_integer07 returns nothing
    local item loc_item01
    call DisableTrigger(trigger058)
    if loc_integer02>0 then
        set loc_item01=UnitItemInSlot(loc_unit01,0)
        call Func0392(loc_item01)
    endif
    if loc_integer03>0 then
        set loc_item01=UnitItemInSlot(loc_unit01,1)
        call Func0392(loc_item01)
    endif
    if loc_integer04>0 then
        set loc_item01=UnitItemInSlot(loc_unit01,2)
        call Func0392(loc_item01)
    endif
    if loc_integer05>0 then
        set loc_item01=UnitItemInSlot(loc_unit01,3)
        call Func0392(loc_item01)
    endif
    if loc_integer06>0 then
        set loc_item01=UnitItemInSlot(loc_unit01,4)
        call Func0392(loc_item01)
    endif
    if loc_integer07>0 then
        set loc_item01=UnitItemInSlot(loc_unit01,5)
        call Func0392(loc_item01)
    endif
    set loc_item01=UnitAddItemById(loc_unit01,integers089[loc_integer01])
    call SetItemPlayer(loc_item01,loc_player01,true)
    call SetItemUserData(loc_item01,0)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIem\\AIemTarget.mdl",loc_unit01,"origin"))
    if Func0380(loc_item01)==integer235 then
        call SetItemCharges(loc_item01,8)
    endif
    call EnableTrigger(trigger058)
    if IsPlayerAlly(GetLocalPlayer(),loc_player01)==true then
        if loc_integer01==integer186 then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r |c00ffff00"+GetObjectName('n0LX')+"|r")
        elseif loc_integer01==integer212 then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r |c00ffff00"+GetObjectName('n0LY')+"|r")
        endif
    endif
    set loc_item01=null
endfunction

// 16340 ~ 16560
function Func0631 takes player loc_player01,unit loc_unit01,integer loc_integer01 returns boolean
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local integer array loc_integers01
    local boolean array loc_booleans01
    local integer array loc_integers02
    local boolean array loc_booleans02
    local boolean array loc_booleans03
    local integer array loc_integers03
    local player loc_player02
    local integer loc_integer05=1
    local integer loc_integer06
    local player array loc_players01
    local integer loc_integer07
    local item loc_item01
    local item loc_item02
    local item loc_item03
    local item loc_item04
    local item loc_item05
    local item loc_item06
    local player loc_player03
    local player loc_player04
    local player loc_player05
    local player loc_player06
    local player loc_player07
    local player loc_player08
    local integer loc_integer08
    local integer loc_integer09
    local integer loc_integer10
    local integer loc_integer11
    local integer loc_integer12
    local integer loc_integer13
    local integer loc_integer14
    local integer loc_integer15
    local integer loc_integer16
    local integer loc_integer17
    local integer loc_integer18
    local integer loc_integer19
    local boolean loc_boolean01=false
    local boolean loc_boolean02=true
    set loc_item01=UnitItemInSlot(loc_unit01,0)
    set loc_item02=UnitItemInSlot(loc_unit01,1)
    set loc_item03=UnitItemInSlot(loc_unit01,2)
    set loc_item04=UnitItemInSlot(loc_unit01,3)
    set loc_item05=UnitItemInSlot(loc_unit01,4)
    set loc_item06=UnitItemInSlot(loc_unit01,5)
    set loc_player03=GetItemPlayer(loc_item01)
    set loc_player04=GetItemPlayer(loc_item02)
    set loc_player05=GetItemPlayer(loc_item03)
    set loc_player06=GetItemPlayer(loc_item04)
    set loc_player07=GetItemPlayer(loc_item05)
    set loc_player08=GetItemPlayer(loc_item06)
    set loc_integer08=GetItemUserData(loc_item01)
    set loc_integer09=GetItemUserData(loc_item02)
    set loc_integer10=GetItemUserData(loc_item03)
    set loc_integer11=GetItemUserData(loc_item04)
    set loc_integer12=GetItemUserData(loc_item05)
    set loc_integer13=GetItemUserData(loc_item06)
    set loc_integer14=Func0380(loc_item01)
    set loc_integer15=Func0380(loc_item02)
    set loc_integer16=Func0380(loc_item03)
    set loc_integer17=Func0380(loc_item04)
    set loc_integer18=Func0380(loc_item05)
    set loc_integer19=Func0380(loc_item06)
    if(GetPlayerSlotState((loc_player01))==PLAYER_SLOT_STATE_LEFT)then
        set loc_integer05=5
        set loc_boolean01=true
    endif
    set loc_players01[1]=loc_player01
    if loc_boolean01 then
        set loc_integer06=2
        set loc_integer07=1
        loop
            exitwhen loc_integer06>loc_integer05
            if Func0056(loc_player01)then
                if loc_player01!=players003[loc_integer07]then
                    set loc_players01[loc_integer06]=players003[loc_integer07]
                    set loc_integer06=loc_integer06+1
                endif
            else
                if loc_player01!=players004[loc_integer07]then
                    set loc_players01[loc_integer06]=players004[loc_integer07]
                    set loc_integer06=loc_integer06+1
                endif
            endif
            set loc_integer07=loc_integer07+1
        endloop
    endif
    set loc_integer06=1
    loop
        exitwhen loc_integer06>loc_integer05
        set loc_player02=loc_players01[loc_integer06]
        set loc_integer02=0
        if loc_item01!=null and loc_integer08==1 and(loc_player03==loc_player02 or boolean054 or(GetPlayerSlotState((loc_player03))==PLAYER_SLOT_STATE_LEFT)==true)then
            set loc_integers01[loc_integer02+1]=loc_integer14
        else
            set loc_integers01[loc_integer02+1]=0
        endif
        set loc_integer02=1
        if loc_item02!=null and loc_integer09==1 and(loc_player04==loc_player02 or boolean054 or(GetPlayerSlotState((loc_player04))==PLAYER_SLOT_STATE_LEFT)==true)then
            set loc_integers01[loc_integer02+1]=loc_integer15
        else
            set loc_integers01[loc_integer02+1]=0
        endif
        set loc_integer02=2
        if loc_item03!=null and loc_integer10==1 and(loc_player05==loc_player02 or boolean054 or(GetPlayerSlotState((loc_player05))==PLAYER_SLOT_STATE_LEFT)==true)then
            set loc_integers01[loc_integer02+1]=loc_integer16
        else
            set loc_integers01[loc_integer02+1]=0
        endif
        set loc_integer02=3
        if loc_item04!=null and loc_integer11==1 and(loc_player06==loc_player02 or boolean054 or(GetPlayerSlotState((loc_player06))==PLAYER_SLOT_STATE_LEFT)==true)then
            set loc_integers01[loc_integer02+1]=loc_integer17
        else
            set loc_integers01[loc_integer02+1]=0
        endif
        set loc_integer02=4
        if loc_item05!=null and loc_integer12==1 and(loc_player07==loc_player02 or boolean054 or(GetPlayerSlotState((loc_player07))==PLAYER_SLOT_STATE_LEFT)==true)then
            set loc_integers01[loc_integer02+1]=loc_integer18
        else
            set loc_integers01[loc_integer02+1]=0
        endif
        set loc_integer02=5
        if loc_item06!=null and loc_integer13==1 and(loc_player08==loc_player02 or boolean054 or(GetPlayerSlotState((loc_player08))==PLAYER_SLOT_STATE_LEFT)==true)then
            set loc_integers01[loc_integer02+1]=loc_integer19
        else
            set loc_integers01[loc_integer02+1]=0
        endif
        set loc_integers01[0]=loc_integer01
        set loc_integer02=1
        loop
            exitwhen loc_integer02>(integer320)
            set loc_integers02[0]=integers095[loc_integer02]
            set loc_integers02[1]=integers096[loc_integer02]
            set loc_integers02[2]=integers097[loc_integer02]
            set loc_integers02[3]=integers098[loc_integer02]
            set loc_integers02[4]=integers099[loc_integer02]
            if loc_boolean02 then
                set loc_booleans02[0]=true
                set loc_booleans02[1]=true
                set loc_booleans02[2]=true
                set loc_booleans02[3]=true
                set loc_booleans02[4]=true
                set loc_booleans02[5]=true
                set loc_booleans02[6]=true
                set loc_booleans01[0]=true
                set loc_booleans01[1]=true
                set loc_booleans01[2]=true
                set loc_booleans01[3]=true
                set loc_booleans01[4]=true
                set loc_booleans01[5]=true
                set loc_booleans01[6]=true
                set loc_integers03[0]=0
                set loc_integers03[1]=0
                set loc_integers03[2]=0
                set loc_integers03[3]=0
                set loc_integers03[4]=0
                set loc_integers03[5]=0
                set loc_integers03[6]=0
                set loc_boolean02=false
            endif
            set loc_booleans03[0]=false
            set loc_booleans03[1]=false
            set loc_booleans03[2]=false
            set loc_booleans03[3]=false
            set loc_booleans03[4]=false
            set loc_integer03=0
            loop
                exitwhen loc_integer03==5
                if loc_integers02[loc_integer03]==0 then
                    set loc_booleans03[loc_integer03]=true
                else
                    set loc_integer04=0
                    loop
                        exitwhen loc_integer04==7
                        if loc_integers01[loc_integer04]==loc_integers02[loc_integer03]and loc_booleans01[loc_integer04]and loc_booleans02[loc_integer03]then
                            set loc_booleans01[loc_integer04]=false
                            set loc_booleans02[loc_integer03]=false
                            set loc_booleans03[loc_integer03]=true
                            set loc_integers03[loc_integer04]=1
                            set loc_integer04=7
                            set loc_boolean02=true
                        else
                            set loc_integer04=loc_integer04+1
                        endif
                    endloop
                endif
                if loc_booleans03[loc_integer03]==true then
                    set loc_integer03=loc_integer03+1
                else
                    set loc_integer03=5
                endif
            endloop
            if loc_booleans03[0]and loc_booleans03[1]and loc_booleans03[2]and loc_booleans03[3]and loc_booleans03[4]then
                call Func0630(loc_player02,loc_unit01,integers101[loc_integer02],loc_integers03[1],loc_integers03[2],loc_integers03[3],loc_integers03[4],loc_integers03[5],loc_integers03[6])
                set loc_integer02=integer320+2
            else
                set loc_integer02=loc_integer02+1
            endif
        endloop
        set boolean045=loc_integers03[0]==1
        if loc_integer02==(integer320+2)then
            set loc_item01=null
            set loc_item02=null
            set loc_item03=null
            set loc_item04=null
            set loc_item05=null
            set loc_item06=null
            return true
        endif
        set loc_integer06=loc_integer06+1
    endloop
    set loc_item01=null
    set loc_item02=null
    set loc_item03=null
    set loc_item04=null
    set loc_item05=null
    set loc_item06=null
    return false
endfunction

// 16562 ~ 16568
function Func0632 takes player loc_player01,unit loc_unit01,integer loc_integer01 returns boolean
    local integer loc_integer02=1
    local boolean loc_boolean01
    set boolean045=false
    set loc_boolean01=Func0631(loc_player01,loc_unit01,loc_integer01)
    return loc_boolean01
endfunction
