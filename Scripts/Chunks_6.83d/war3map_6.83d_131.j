
// 25046 ~ 25169
function Func1059 takes nothing returns nothing
    local integer loc_integer01=GetRandomInt(1,9)
    local location loc_location01
    if boolean122 then
        set loc_integer01=GetRandomInt(1,3)
        if loc_integer01==1 then
            set loc_integer01=2
        endif
        if loc_integer01==2 then
            set loc_integer01=5
        endif
        if loc_integer01==3 then
            set loc_integer01=8
        endif
    endif
    if(loc_integer01==1)then
        set loc_location01=GetRectCenter(rect186)
        call CreateNUnitsAtLoc(1,'n003',players003[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n051'))
        call Func1000(bj_lastCreatedGroup,4)
    endif
    if(loc_integer01==2)then
        set loc_location01=GetRectCenter(rect185)
        call CreateNUnitsAtLoc(1,'n003',players003[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n052'))
        call Func1000(bj_lastCreatedGroup,2)
    endif
    if(loc_integer01==3)then
        set loc_location01=GetRectCenter(rect184)
        call CreateNUnitsAtLoc(1,'n003',players003[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n053'))
        call Func1000(bj_lastCreatedGroup,3)
    endif
    if(loc_integer01==4)then
        set loc_location01=GetRectCenter(rect186)
        call CreateNUnitsAtLoc(1,'n00E',players003[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n058'))
        call Func1000(bj_lastCreatedGroup,4)
    endif
    if(loc_integer01==5)then
        set loc_location01=GetRectCenter(rect185)
        call CreateNUnitsAtLoc(1,'n00E',players003[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n04Z'))
        call Func1000(bj_lastCreatedGroup,2)
    endif
    if(loc_integer01==6)then
        set loc_location01=GetRectCenter(rect184)
        call CreateNUnitsAtLoc(1,'n00E',players003[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n057'))
        call Func1000(bj_lastCreatedGroup,3)
    endif
    if(loc_integer01==7)and boolean122==false then
        set loc_location01=GetRectCenter(rect186)
        call CreateNUnitsAtLoc(1,'n00D',players003[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n056'))
        call Func1000(bj_lastCreatedGroup,4)
    endif
    if(loc_integer01==8)and boolean122==false then
        set loc_location01=GetRectCenter(rect185)
        call CreateNUnitsAtLoc(1,'n00D',players003[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n04T'))
        call Func1000(bj_lastCreatedGroup,2)
    endif
    if(loc_integer01==9)then
        set loc_location01=GetRectCenter(rect184)
        call CreateNUnitsAtLoc(1,'n00D',players003[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n05C'))
        call Func1000(bj_lastCreatedGroup,3)
    endif
    if(loc_integer01==1)then
        set loc_location01=GetRectCenter(rect182)
        call CreateNUnitsAtLoc(1,'n003',players004[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n0CD'))
        call Func1000(bj_lastCreatedGroup,4)
    endif
    if(loc_integer01==2)then
        set loc_location01=GetRectCenter(rect181)
        call CreateNUnitsAtLoc(1,'n003',players004[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n0CE'))
        call Func1000(bj_lastCreatedGroup,2)
    endif
    if(loc_integer01==3)then
        set loc_location01=GetRectCenter(rect183)
        call CreateNUnitsAtLoc(1,'n003',players004[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n0CC'))
        call Func1000(bj_lastCreatedGroup,3)
    endif
    if(loc_integer01==4)then
        set loc_location01=GetRectCenter(rect182)
        call CreateNUnitsAtLoc(1,'n00E',players004[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n0CG'))
        call Func1000(bj_lastCreatedGroup,4)
    endif
    if(loc_integer01==5)then
        set loc_location01=GetRectCenter(rect181)
        call CreateNUnitsAtLoc(1,'n00E',players004[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n0CH'))
        call Func1000(bj_lastCreatedGroup,2)
    endif
    if(loc_integer01==6)then
        set loc_location01=GetRectCenter(rect183)
        call CreateNUnitsAtLoc(1,'n00E',players004[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n0CF'))
        call Func1000(bj_lastCreatedGroup,3)
    endif
    if(loc_integer01==7)then
        set loc_location01=GetRectCenter(rect182)
        call CreateNUnitsAtLoc(1,'n00D',players004[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n0CJ'))
        call Func1000(bj_lastCreatedGroup,4)
    endif
    if(loc_integer01==8)then
        set loc_location01=GetRectCenter(rect181)
        call CreateNUnitsAtLoc(1,'n00D',players004[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n0CK'))
        call Func1000(bj_lastCreatedGroup,2)
    endif
    if(loc_integer01==9)then
        set loc_location01=GetRectCenter(rect183)
        call CreateNUnitsAtLoc(1,'n00D',players004[0],loc_location01,bj_UNIT_FACING)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName('n0CI'))
        call Func1000(bj_lastCreatedGroup,3)
    endif
endfunction

// 25171 ~ 25322
function Func1060 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05
    local player loc_player01
    set integer420=integer420+1
    set integer423=0
    set integer424=0
    set loc_integer05=0
    loop
        exitwhen loc_integer05>5
        set loc_player01=players003[loc_integer05]
        if Func0060(loc_player01)then
            set integer423=integer423+1
        endif
        set loc_player01=players004[loc_integer05]
        if Func0060(loc_player01)then
            set integer424=integer424+1
        endif
        set loc_integer05=loc_integer05+1
    endloop
    if boolean059==false then
        set integer007=integer423
        set integer008=integer424
    endif
    set loc_integer01=1
    set loc_integer02=5
    set loc_integer03=1
    loop
        exitwhen loc_integer01>loc_integer02
        set loc_player01=players003[loc_integer01]
        if Func0060(loc_player01)then
            set players001[loc_integer03]=loc_player01
            set loc_integer03=loc_integer03+1
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    set loc_integer02=5
    set loc_integer03=1
    loop
        exitwhen loc_integer01>loc_integer02
        set loc_player01=players004[loc_integer01]
        if Func0060(loc_player01)then
            set players002[loc_integer03]=loc_player01
            set loc_integer03=loc_integer03+1
        endif
        set loc_integer01=loc_integer01+1
    endloop
    if integer420==1 then
        set multiboard001=CreateMultiboardBJ(7+6,3+integer424+integer423," ")
        call MultiboardMinimize(multiboard001,true)
    endif
    call Func0015(multiboard001,2,1,"CD")
    call Func0015(multiboard001,3,1,"|c00838B8BL|r")
    call Func0015(multiboard001,4,1,string029+"K|r")
    call Func0015(multiboard001,5,1,string031+"D|r")
    call Func0015(multiboard001,6,1,string032+"A|r")
    call Func0015(multiboard001,1,2,GetObjectName('n0DK'))
    call Func0015(multiboard001,4,2,string029+"0|r")
    call Func0015(multiboard001,5,2,string031+"0|r")
    call Func0015(multiboard001,1,3+integer423,GetObjectName('n0DO'))
    call Func0015(multiboard001,4,3+integer423,string029+"0|r")
    call Func0015(multiboard001,5,3+integer423,string031+"0|r")
    call Func0018(multiboard001,1,2,(Func0079(SubString(strings001[GetPlayerId((players003[0]))],4,6)))/255.0*100,(Func0079(SubString(strings001[GetPlayerId((players003[0]))],6,8)))/255.0*100,(Func0079(SubString(strings001[GetPlayerId((players003[0]))],8,10)))/255.0*100,0)
    call Func0018(multiboard001,1,3+integer423,(Func0079(SubString(strings001[GetPlayerId((players004[0]))],4,6)))/255.0*100,(Func0079(SubString(strings001[GetPlayerId((players004[0]))],6,8)))/255.0*100,(Func0079(SubString(strings001[GetPlayerId((players004[0]))],8,10)))/255.0*100,0)
    set loc_integer01=1
    set loc_integer02=3+integer424+integer423
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0019(multiboard001,1,loc_integer01,10.8)
        call Func0019(multiboard001,2,loc_integer01,2)
        call Func0019(multiboard001,3,loc_integer01,2)
        call Func0019(multiboard001,4,loc_integer01,1.3)
        call Func0019(multiboard001,5,loc_integer01,1.3)
        call Func0019(multiboard001,6,loc_integer01,1.3)
        call Func0019(multiboard001,7,loc_integer01,2.5)
        call Func0019(multiboard001,8,loc_integer01,0.01)
        call Func0019(multiboard001,9,loc_integer01,0.01)
        call Func0019(multiboard001,10,loc_integer01,0.01)
        call Func0019(multiboard001,11,loc_integer01,0.01)
        call Func0019(multiboard001,12,loc_integer01,0.01)
        call Func0019(multiboard001,13,loc_integer01,0.01)
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    set loc_integer02=7+6
    loop
        exitwhen loc_integer01>loc_integer02
        set loc_integer03=1
        set loc_integer04=3+integer424+integer423
        loop
            exitwhen loc_integer03>loc_integer04
            call Func0017(multiboard001,loc_integer01,loc_integer03,true,false)
            set loc_integer03=loc_integer03+1
        endloop
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    set loc_integer02=integer423
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0017(multiboard001,1,loc_integer01+2,true,true)
        call Func0018(multiboard001,7,loc_integer01+2,255,204,0,0)
        set integers115[GetPlayerId(players001[loc_integer01])]=1-1
        set integers116[GetPlayerId(players001[loc_integer01])]=loc_integer01+2-1
        call Func0015(multiboard001,1,loc_integer01+2,(strings005[GetPlayerId((players001[loc_integer01]))]))
        if Func0059(players001[loc_integer01])then
            call Func0018(multiboard001,1,loc_integer01+2,(Func0079(SubString(strings001[GetPlayerId((players001[loc_integer01]))],4,6)))/255.0*100,(Func0079(SubString(strings001[GetPlayerId((players001[loc_integer01]))],6,8)))/255.0*100,(Func0079(SubString(strings001[GetPlayerId((players001[loc_integer01]))],8,10)))/255.0*100,0)
            call Func0018(multiboard001,2,loc_integer01+2,(Func0079(SubString(strings001[GetPlayerId((players001[loc_integer01]))],4,6)))/255.0*100,(Func0079(SubString(strings001[GetPlayerId((players001[loc_integer01]))],6,8)))/255.0*100,(Func0079(SubString(strings001[GetPlayerId((players001[loc_integer01]))],8,10)))/255.0*100,0)
        else
            call Func0015(multiboard001,1,loc_integer01+2,"|c00333333"+(strings005[GetPlayerId((players001[loc_integer01]))])+"|r")
        endif
        call Func0015(multiboard001,4,(loc_integer01+2),string029+"0|r")
        call Func0015(multiboard001,5,(loc_integer01+2),string031+"0|r")
        call Func0015(multiboard001,6,(loc_integer01+2),string032+"0|r")
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    set loc_integer02=integer424
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0017(multiboard001,1,loc_integer01+3+integer423,true,true)
        call Func0018(multiboard001,7,loc_integer01+3+integer423,255,204,0,0)
        set integers115[GetPlayerId(players002[loc_integer01])]=1-1
        set integers116[GetPlayerId(players002[loc_integer01])]=loc_integer01+3+integer423-1
        call Func0015(multiboard001,1,loc_integer01+3+integer423,(strings005[GetPlayerId((players002[loc_integer01]))]))
        if Func0059(players002[loc_integer01])then
            call Func0018(multiboard001,1,loc_integer01+3+integer423,(Func0079(SubString(strings001[GetPlayerId((players002[loc_integer01]))],4,6)))/255.0*100,(Func0079(SubString(strings001[GetPlayerId((players002[loc_integer01]))],6,8)))/255.0*100,(Func0079(SubString(strings001[GetPlayerId((players002[loc_integer01]))],8,10)))/255.0*100,0)
            call Func0018(multiboard001,2,loc_integer01+3+integer423,(Func0079(SubString(strings001[GetPlayerId((players002[loc_integer01]))],4,6)))/255.0*100,(Func0079(SubString(strings001[GetPlayerId((players002[loc_integer01]))],6,8)))/255.0*100,(Func0079(SubString(strings001[GetPlayerId((players002[loc_integer01]))],8,10)))/255.0*100,0)
        else
            call Func0015(multiboard001,1,loc_integer01+3+integer423,"|c00333333"+(strings005[GetPlayerId((players002[loc_integer01]))])+"|r")
        endif
        call Func0015(multiboard001,4,(loc_integer01+3+integer423),string029+"0|r")
        call Func0015(multiboard001,5,(loc_integer01+3+integer423),string031+"0|r")
        call Func0015(multiboard001,6,(loc_integer01+3+integer423),string032+"0|r")
        set loc_integer01=loc_integer01+1
    endloop
    set integer421=1
    set integer422=3+integer424+integer423-2
    if boolean025 and(GetLocalPlayer()==player009 or GetLocalPlayer()==player010)and integer420==1 then
        call MultiboardDisplay(multiboard001,false)
    endif
    call Func0017(multiboard001,7,1,false,true)
    call Func0016(multiboard001,7,1,"UI\\Feedback\\Resources\\ResourceGold.blp")
    call Func0526()
    if integer420>1 then
        call TriggerExecute(trigger026)
    endif
endfunction

// 25324 ~ 25349
function Func1061 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    call Func0015(multiboard001,4,2,string029+I2S(integers001[GetPlayerId(players003[0])])+"|r")
    call Func0015(multiboard001,5,2,string031+I2S(integers002[GetPlayerId(players003[0])])+"|r")
    call Func0015(multiboard001,4,3+integer423,string029+I2S(integers001[GetPlayerId(players004[0])])+"|r")
    call Func0015(multiboard001,5,3+integer423,string031+I2S(integers002[GetPlayerId(players004[0])])+"|r")
    set loc_integer01=1
    set loc_integer02=integer423
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0015(multiboard001,4,(loc_integer01+2),string029+I2S(integers001[GetPlayerId(players001[loc_integer01])])+"|r")
        call Func0015(multiboard001,5,(loc_integer01+2),string031+I2S(integers002[GetPlayerId(players001[loc_integer01])])+"|r")
        call Func0015(multiboard001,6,(loc_integer01+2),string032+I2S(integers006[GetPlayerId(players001[loc_integer01])])+"|r")
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    set loc_integer02=integer424
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0015(multiboard001,4,(loc_integer01+3+integer423),string029+I2S(integers001[GetPlayerId(players002[loc_integer01])])+"|r")
        call Func0015(multiboard001,5,(loc_integer01+3+integer423),string031+I2S(integers002[GetPlayerId(players002[loc_integer01])])+"|r")
        call Func0015(multiboard001,6,(loc_integer01+3+integer423),string032+I2S(integers006[GetPlayerId(players002[loc_integer01])])+"|r")
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 25351 ~ 25365
function Func1062 takes nothing returns boolean
    if(GetUnitTypeId(GetTriggerUnit())=='e00R')then
        return true
    endif
    if(GetUnitTypeId(GetTriggerUnit())=='e011')then
        return true
    endif
    if(GetUnitTypeId(GetTriggerUnit())=='e00S')then
        return true
    endif
    if(GetUnitTypeId(GetTriggerUnit())=='e019')then
        return true
    endif
    return false
endfunction

// 25367 ~ 25369
function Func1063 takes nothing returns nothing
    set integers022[1]=(integers022[1]+1)
endfunction

// 25371 ~ 25385
function Func1064 takes nothing returns boolean
    if(GetUnitTypeId(GetTriggerUnit())=='u00M')then
        return true
    endif
    if(GetUnitTypeId(GetTriggerUnit())=='u00D')then
        return true
    endif
    if(GetUnitTypeId(GetTriggerUnit())=='u00N')then
        return true
    endif
    if(GetUnitTypeId(GetTriggerUnit())=='u00T')then
        return true
    endif
    return false
endfunction

// 25387 ~ 25389
function Func1065 takes nothing returns nothing
    set integers022[2]=(integers022[2]+1)
endfunction

// 25391 ~ 25403
function Func1066 takes integer loc_integer01 returns integer
    local integer loc_integer02=0
    local integer loc_integer03=0
    local string loc_string01=I2S(loc_integer01)
    loop
        exitwhen loc_integer02>StringLength(loc_string01)
        if SubString(loc_string01,loc_integer02,loc_integer02+1)=="1"then
            set loc_integer03=loc_integer03+1
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return loc_integer03
endfunction

// 25405 ~ 25411
function Func1067 takes player loc_player01,integer loc_integer01 returns string
    if IsPlayerAlly(GetLocalPlayer(),loc_player01)==true then
        return Func0403(UnitItemInSlot(units001[GetPlayerId(loc_player01)],loc_integer01-1))
    else
        return"UI\\Widgets\\Console\\Undead\\undead-inventory-slotfiller.blp"
    endif
endfunction

// 25413 ~ 25707
function Func1068 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local string loc_string01
    local real loc_real01
    local string loc_string02=" "
    local integer loc_integer03
    local integer loc_integer04
    local integer array loc_integers01
    local string array loc_strings01
    local integer loc_integer05=0
    local integer array loc_integers02
    local string array loc_strings02
    local integer loc_integer06=0
    local integer loc_integer07=0
    local integer loc_integer08
    local string loc_string03
    local string loc_string04
    local string loc_string05
    local string loc_string06
    local string loc_string07
    local string loc_string08=" "
    local string loc_string09
    local real loc_real02
    local string loc_string10
    local integer loc_integer09=0
    local string loc_string11=""
    local string loc_string12=""
    local integer loc_integer10=0
    local integer loc_integer11=0
    local string loc_string13=""
    if multiboard001==null then
        return
    endif
    set loc_integer04=1
    loop
        exitwhen loc_integer04>5
        set loc_integer03=R2I(TimerGetRemaining(timers002[GetPlayerId(players003[loc_integer04])]))
        if loc_integer03>0 then
            set loc_integer09=loc_integer09+Func1066(loc_integer03)
            if loc_integer10==0 then
                if loc_integer03<10 then
                    set loc_string11=strings001[GetPlayerId(players003[loc_integer04])]+"0"+I2S(loc_integer03)+" |r"
                else
                    set loc_string11=strings001[GetPlayerId(players003[loc_integer04])]+I2S(loc_integer03)+" |r"
                endif
            else
                if loc_integer03<10 then
                    set loc_string11=loc_string11+string033+"| |r"+strings001[GetPlayerId(players003[loc_integer04])]+"0"+I2S(loc_integer03)+" |r"
                else
                    set loc_string11=loc_string11+string033+"| |r"+strings001[GetPlayerId(players003[loc_integer04])]+I2S(loc_integer03)+" |r"
                endif
            endif
            set loc_integer10=loc_integer10+1
        endif
        set loc_integer04=loc_integer04+1
    endloop
    if loc_integer10>0 then
        if IsPlayerAlly(GetLocalPlayer(),players003[0])==true then
            set loc_string11=string033+"["+GetObjectName('n0JS')+" |r"+loc_string11+string033+"]|r"
        else
            set loc_string11=string030+"["+GetObjectName('n0JR')+" |r"+loc_string11+string030+"]|r"
        endif
    endif
    set loc_integer04=1
    loop
        exitwhen loc_integer04>5
        set loc_integer03=R2I(TimerGetRemaining(timers002[GetPlayerId(players004[loc_integer04])]))
        if loc_integer03>0 then
            set loc_integer09=loc_integer09+Func1066(loc_integer03)
            if loc_integer11==0 then
                if loc_integer03<10 then
                    set loc_string12=strings001[GetPlayerId(players004[loc_integer04])]+"0"+I2S(loc_integer03)+" |r"
                else
                    set loc_string12=strings001[GetPlayerId(players004[loc_integer04])]+I2S(loc_integer03)+" |r"
                endif
            else
                if loc_integer03<10 then
                    set loc_string12=loc_string12+string033+"| |r"+strings001[GetPlayerId(players004[loc_integer04])]+"0"+I2S(loc_integer03)+" |r"
                else
                    set loc_string12=loc_string12+string033+"| |r"+strings001[GetPlayerId(players004[loc_integer04])]+I2S(loc_integer03)+" |r"
                endif
            endif
            set loc_integer11=loc_integer11+1
        endif
        set loc_integer04=loc_integer04+1
    endloop
    if loc_integer11>0 then
        if IsPlayerAlly(GetLocalPlayer(),players004[0])==true then
            set loc_string12=string033+"["+GetObjectName('n0JS')+" |r"+loc_string12+string033+"]|r"
        else
            set loc_string12=string030+"["+GetObjectName('n0JR')+" |r"+loc_string12+string030+"]|r"
        endif
    endif
    if multiboard001!=null then
        set loc_integer08=GetPlayerId(GetLocalPlayer())
        if loc_integer08>=0 and loc_integer08<16 then
            if booleans014[loc_integer07]then
                set loc_string03=I2S(integers001[loc_integer08])
                set loc_string04=I2S(integers002[loc_integer08])
                set loc_string05=I2S(integers006[loc_integer08])
                set loc_string06=I2S(integers003[loc_integer08])
                set loc_string07=I2S(integers004[loc_integer08])
                set loc_string08=" |c00838B8B("+loc_string03+"/"+loc_string04+"/"+loc_string05+" - "+loc_string06+"/"+loc_string07+" - |r|c00FFDC00"+I2S(integers081[loc_integer08])+"|r |c00838B8B)|r"
            endif
        endif
    endif
    if loc_integer11==0 and loc_integer10==0 then
        call MultiboardSetTitleText(multiboard001,loc_string08)
    else
        if IsPlayerAlly(GetLocalPlayer(),players003[0])==true then
            call MultiboardSetTitleText(multiboard001,loc_string12+" "+loc_string11+" "+loc_string08)
        else
            call MultiboardSetTitleText(multiboard001,loc_string11+" "+loc_string12+" "+loc_string08)
        endif
    endif
    if(boolean025 and(GetLocalPlayer()==player009 or GetLocalPlayer()==player010))==false then
        call MultiboardDisplay(multiboard001,true)
    endif
    if booleans033[GetPlayerId(GetLocalPlayer())]==false then
        call SetWaterBaseColor(0,0,255,255)
    endif
    set loc_integer01=1
    set loc_integer02=integer423
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0016(multiboard001,1,loc_integer01+2,Func0042(units001[GetPlayerId(players001[loc_integer01])]))
        call Func0015(multiboard001,3,loc_integer01+2,"|c00838B8B"+I2S(GetHeroLevel(units001[GetPlayerId(players001[loc_integer01])]))+"|r")
        if booleans031[GetPlayerId(GetLocalPlayer())]then
            call Func0019(multiboard001,7,1,3)
            call Func0019(multiboard001,8,1,2.8)
            call Func0019(multiboard001,9,1,0.8)
            call Func0019(multiboard001,10,1,0.8)
            call Func0019(multiboard001,11,1,0.8)
            call Func0019(multiboard001,12,1,0.8)
            call Func0019(multiboard001,13,1,0.1)
            call Func0019(multiboard001,7,loc_integer01+2,3)
            call Func0019(multiboard001,8,loc_integer01+2,1.1)
            call Func0019(multiboard001,9,loc_integer01+2,1.1)
            call Func0019(multiboard001,10,loc_integer01+2,1.1)
            call Func0019(multiboard001,11,loc_integer01+2,1.1)
            call Func0019(multiboard001,12,loc_integer01+2,1.1)
            call Func0019(multiboard001,13,loc_integer01+2,0.1)
            call Func0017(multiboard001,8,loc_integer01+2,false,true)
            call Func0017(multiboard001,9,loc_integer01+2,false,true)
            call Func0017(multiboard001,10,loc_integer01+2,false,true)
            call Func0017(multiboard001,11,loc_integer01+2,false,true)
            call Func0017(multiboard001,12,loc_integer01+2,false,true)
            call Func0017(multiboard001,13,loc_integer01+2,false,true)
            call Func0015(multiboard001,8,1,"Items")
        else
            call Func0019(multiboard001,7,1,2)
            call Func0019(multiboard001,8,1,0.1)
            call Func0019(multiboard001,9,1,0.1)
            call Func0019(multiboard001,10,1,0.1)
            call Func0019(multiboard001,11,1,0.1)
            call Func0019(multiboard001,12,1,0.1)
            call Func0019(multiboard001,13,1,0.1)
            call Func0019(multiboard001,7,loc_integer01+2,2.5)
            call Func0019(multiboard001,8,loc_integer01+2,0.1)
            call Func0019(multiboard001,9,loc_integer01+2,0.1)
            call Func0019(multiboard001,10,loc_integer01+2,0.1)
            call Func0019(multiboard001,11,loc_integer01+2,0.1)
            call Func0019(multiboard001,12,loc_integer01+2,0.1)
            call Func0019(multiboard001,13,loc_integer01+2,0.1)
            call Func0017(multiboard001,8,loc_integer01+2,false,false)
            call Func0017(multiboard001,9,loc_integer01+2,false,false)
            call Func0017(multiboard001,10,loc_integer01+2,false,false)
            call Func0017(multiboard001,11,loc_integer01+2,false,false)
            call Func0017(multiboard001,12,loc_integer01+2,false,false)
            call Func0017(multiboard001,13,loc_integer01+2,false,false)
            call Func0015(multiboard001,8,1," ")
        endif
        call Func0016(multiboard001,8,loc_integer01+2,Func1067(players001[loc_integer01],1))
        call Func0016(multiboard001,9,loc_integer01+2,Func1067(players001[loc_integer01],2))
        call Func0016(multiboard001,10,loc_integer01+2,Func1067(players001[loc_integer01],3))
        call Func0016(multiboard001,11,loc_integer01+2,Func1067(players001[loc_integer01],4))
        call Func0016(multiboard001,12,loc_integer01+2,Func1067(players001[loc_integer01],5))
        call Func0016(multiboard001,13,loc_integer01+2,Func1067(players001[loc_integer01],6))
        if(Func0048(units001[GetPlayerId(players001[loc_integer01])])and units001[GetPlayerId(players001[loc_integer01])]!=null and TimerGetRemaining(timers002[GetPlayerId(players001[loc_integer01])])>0)then
            if IsPlayerAlly(GetLocalPlayer(),players001[loc_integer01])then
                set loc_string13=string033+" ("+(I2S(R2I(TimerGetRemaining(timers002[GetPlayerId(players001[loc_integer01])]))))+")|r"
            else
                set loc_string13=string030+" ("+(I2S(R2I(TimerGetRemaining(timers002[GetPlayerId(players001[loc_integer01])]))))+")|r"
            endif
        else
            set loc_string13="  "
        endif
        if booleans018[GetPlayerId(players001[loc_integer01])]then
            call Func0015(multiboard001,1,loc_integer01+2,"|c00333333"+(strings005[GetPlayerId((players001[loc_integer01]))])+"|r"+loc_string13)
        else
            call Func0015(multiboard001,1,loc_integer01+2,(strings005[GetPlayerId((players001[loc_integer01]))])+loc_string13)
        endif
        set loc_real02=(TimerGetRemaining(timers003[GetPlayerId((players001[loc_integer01]))]))
        if loc_real02>0 then
            set loc_string09=I2S(R2I(loc_real02))
        else
            set loc_string09=" "
        endif
        if IsPlayerAlly(GetLocalPlayer(),players001[loc_integer01])==false then
            call Func0015(multiboard001,7,loc_integer01+2," ")
            set loc_string09=" "
        else
            call Func0015(multiboard001,7,loc_integer01+2,"|cffffcc00"+I2S(R2I(GetPlayerState(players001[loc_integer01],PLAYER_STATE_RESOURCE_GOLD)))+"|r")
        endif
        call Func0015(multiboard001,2,loc_integer01+2,loc_string09)
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    set loc_integer02=integer424
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0016(multiboard001,1,loc_integer01+3+integer423,Func0042(units001[GetPlayerId(players002[loc_integer01])]))
        call Func0015(multiboard001,3,loc_integer01+3+integer423,"|c00838B8B"+I2S(GetHeroLevel(units001[GetPlayerId(players002[loc_integer01])]))+"|r")
        if booleans031[GetPlayerId(GetLocalPlayer())]then
            call Func0019(multiboard001,7,1,3)
            call Func0019(multiboard001,8,1,2.8)
            call Func0019(multiboard001,9,1,0.8)
            call Func0019(multiboard001,10,1,0.8)
            call Func0019(multiboard001,11,1,0.8)
            call Func0019(multiboard001,12,1,0.8)
            call Func0019(multiboard001,13,1,0.1)
            call Func0019(multiboard001,7,loc_integer01+3+integer423,3)
            call Func0019(multiboard001,8,loc_integer01+3+integer423,1.1)
            call Func0019(multiboard001,9,loc_integer01+3+integer423,1.1)
            call Func0019(multiboard001,10,loc_integer01+3+integer423,1.1)
            call Func0019(multiboard001,11,loc_integer01+3+integer423,1.1)
            call Func0019(multiboard001,12,loc_integer01+3+integer423,1.1)
            call Func0019(multiboard001,13,loc_integer01+3+integer423,0.1)
            call Func0017(multiboard001,8,loc_integer01+3+integer423,false,true)
            call Func0017(multiboard001,9,loc_integer01+3+integer423,false,true)
            call Func0017(multiboard001,10,loc_integer01+3+integer423,false,true)
            call Func0017(multiboard001,11,loc_integer01+3+integer423,false,true)
            call Func0017(multiboard001,12,loc_integer01+3+integer423,false,true)
            call Func0017(multiboard001,13,loc_integer01+3+integer423,false,true)
            call Func0015(multiboard001,8,1,"Items")
        else
            call Func0019(multiboard001,7,1,2)
            call Func0019(multiboard001,8,1,0.1)
            call Func0019(multiboard001,9,1,0.1)
            call Func0019(multiboard001,10,1,0.1)
            call Func0019(multiboard001,11,1,0.1)
            call Func0019(multiboard001,12,1,0.1)
            call Func0019(multiboard001,13,1,0.1)
            call Func0019(multiboard001,7,loc_integer01+3+integer423,2.5)
            call Func0019(multiboard001,8,loc_integer01+3+integer423,0.1)
            call Func0019(multiboard001,9,loc_integer01+3+integer423,0.1)
            call Func0019(multiboard001,10,loc_integer01+3+integer423,0.1)
            call Func0019(multiboard001,11,loc_integer01+3+integer423,0.1)
            call Func0019(multiboard001,12,loc_integer01+3+integer423,0.1)
            call Func0019(multiboard001,13,loc_integer01+3+integer423,0.1)
            call Func0017(multiboard001,8,loc_integer01+3+integer423,false,false)
            call Func0017(multiboard001,9,loc_integer01+3+integer423,false,false)
            call Func0017(multiboard001,10,loc_integer01+3+integer423,false,false)
            call Func0017(multiboard001,11,loc_integer01+3+integer423,false,false)
            call Func0017(multiboard001,12,loc_integer01+3+integer423,false,false)
            call Func0017(multiboard001,13,loc_integer01+3+integer423,false,false)
            call Func0015(multiboard001,8,1," ")
        endif
        call Func0016(multiboard001,8,loc_integer01+3+integer423,Func1067(players002[loc_integer01],1))
        call Func0016(multiboard001,9,loc_integer01+3+integer423,Func1067(players002[loc_integer01],2))
        call Func0016(multiboard001,10,loc_integer01+3+integer423,Func1067(players002[loc_integer01],3))
        call Func0016(multiboard001,11,loc_integer01+3+integer423,Func1067(players002[loc_integer01],4))
        call Func0016(multiboard001,12,loc_integer01+3+integer423,Func1067(players002[loc_integer01],5))
        call Func0016(multiboard001,13,loc_integer01+3+integer423,Func1067(players002[loc_integer01],6))
        if(Func0048(units001[GetPlayerId(players002[loc_integer01])])and units001[GetPlayerId(players002[loc_integer01])]!=null and TimerGetRemaining(timers002[GetPlayerId(players002[loc_integer01])])>0)then
            if IsPlayerAlly(GetLocalPlayer(),players002[loc_integer01])then
                set loc_string13=string033+" ("+(I2S(R2I(TimerGetRemaining(timers002[GetPlayerId(players002[loc_integer01])]))))+")|r"
            else
                set loc_string13=string030+" ("+(I2S(R2I(TimerGetRemaining(timers002[GetPlayerId(players002[loc_integer01])]))))+")|r"
            endif
        else
            set loc_string13="  "
        endif
        if booleans018[GetPlayerId(players002[loc_integer01])]then
            call Func0015(multiboard001,1,loc_integer01+3+integer423,"|c00333333"+(strings005[GetPlayerId((players002[loc_integer01]))])+"|r"+loc_string13)
        else
            call Func0015(multiboard001,1,loc_integer01+3+integer423,(strings005[GetPlayerId((players002[loc_integer01]))])+loc_string13)
        endif
        set loc_real02=(TimerGetRemaining(timers003[GetPlayerId((players002[loc_integer01]))]))
        if loc_real02>0 then
            set loc_string09=I2S(R2I(loc_real02))
        else
            set loc_string09=" "
        endif
        if IsPlayerAlly(GetLocalPlayer(),players002[loc_integer01])==false then
            call Func0015(multiboard001,7,loc_integer01+3+integer423," ")
            set loc_string09=" "
        else
            call Func0015(multiboard001,7,loc_integer01+3+integer423,"|cffffcc00"+I2S(R2I(GetPlayerState(players002[loc_integer01],PLAYER_STATE_RESOURCE_GOLD)))+"|r")
        endif
        call Func0015(multiboard001,2,loc_integer01+3+integer423,loc_string09)
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 25709 ~ 25750
function Func1069 takes nothing returns nothing
    set leaderboards001[GetPlayerId(players003[1])]=CreateLeaderboard()
    set leaderboards001[GetPlayerId(players003[2])]=CreateLeaderboard()
    set leaderboards001[GetPlayerId(players003[3])]=CreateLeaderboard()
    set leaderboards001[GetPlayerId(players003[4])]=CreateLeaderboard()
    set leaderboards001[GetPlayerId(players003[5])]=CreateLeaderboard()
    set leaderboards001[GetPlayerId(players004[1])]=CreateLeaderboard()
    set leaderboards001[GetPlayerId(players004[2])]=CreateLeaderboard()
    set leaderboards001[GetPlayerId(players004[3])]=CreateLeaderboard()
    set leaderboards001[GetPlayerId(players004[4])]=CreateLeaderboard()
    set leaderboards001[GetPlayerId(players004[5])]=CreateLeaderboard()
    call PlayerSetLeaderboard(players003[1],leaderboards001[GetPlayerId(players003[1])])
    call PlayerSetLeaderboard(players003[2],leaderboards001[GetPlayerId(players003[2])])
    call PlayerSetLeaderboard(players003[3],leaderboards001[GetPlayerId(players003[3])])
    call PlayerSetLeaderboard(players003[4],leaderboards001[GetPlayerId(players003[4])])
    call PlayerSetLeaderboard(players003[5],leaderboards001[GetPlayerId(players003[5])])
    call PlayerSetLeaderboard(players004[1],leaderboards001[GetPlayerId(players004[1])])
    call PlayerSetLeaderboard(players004[2],leaderboards001[GetPlayerId(players004[2])])
    call PlayerSetLeaderboard(players004[3],leaderboards001[GetPlayerId(players004[3])])
    call PlayerSetLeaderboard(players004[4],leaderboards001[GetPlayerId(players004[4])])
    call PlayerSetLeaderboard(players004[5],leaderboards001[GetPlayerId(players004[5])])
    call LeaderboardDisplay(leaderboards001[GetPlayerId(players003[1])],false)
    call LeaderboardDisplay(leaderboards001[GetPlayerId(players003[2])],false)
    call LeaderboardDisplay(leaderboards001[GetPlayerId(players003[3])],false)
    call LeaderboardDisplay(leaderboards001[GetPlayerId(players003[4])],false)
    call LeaderboardDisplay(leaderboards001[GetPlayerId(players003[5])],false)
    call LeaderboardDisplay(leaderboards001[GetPlayerId(players004[1])],false)
    call LeaderboardDisplay(leaderboards001[GetPlayerId(players004[2])],false)
    call LeaderboardDisplay(leaderboards001[GetPlayerId(players004[3])],false)
    call LeaderboardDisplay(leaderboards001[GetPlayerId(players004[4])],false)
    call LeaderboardDisplay(leaderboards001[GetPlayerId(players004[5])],false)
    call LeaderboardSetLabelBJ(leaderboards001[GetPlayerId(players003[1])],"Creep Kills: 0 Denies: 0")
    call LeaderboardSetLabelBJ(leaderboards001[GetPlayerId(players003[2])],"Creep Kills: 0 Denies: 0")
    call LeaderboardSetLabelBJ(leaderboards001[GetPlayerId(players003[3])],"Creep Kills: 0 Denies: 0")
    call LeaderboardSetLabelBJ(leaderboards001[GetPlayerId(players003[4])],"Creep Kills: 0 Denies: 0")
    call LeaderboardSetLabelBJ(leaderboards001[GetPlayerId(players003[5])],"Creep Kills: 0 Denies: 0")
    call LeaderboardSetLabelBJ(leaderboards001[GetPlayerId(players004[1])],"Creep Kills: 0 Denies: 0")
    call LeaderboardSetLabelBJ(leaderboards001[GetPlayerId(players004[2])],"Creep Kills: 0 Denies: 0")
    call LeaderboardSetLabelBJ(leaderboards001[GetPlayerId(players004[3])],"Creep Kills: 0 Denies: 0")
    call LeaderboardSetLabelBJ(leaderboards001[GetPlayerId(players004[4])],"Creep Kills: 0 Denies: 0")
    call LeaderboardSetLabelBJ(leaderboards001[GetPlayerId(players004[5])],"Creep Kills: 0 Denies: 0")
endfunction

// 25752 ~ 25754
function Func1070 takes nothing returns string
    return string028
endfunction

// 25756 ~ 25758
function Func1071 takes nothing returns string
    return string003
endfunction

// 25760 ~ 25762
function Func1072 takes player loc_player01 returns string
    return strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"
endfunction

// 25764 ~ 25771
function Func1073 takes player loc_player01 returns string
    local string loc_string01=I2S(integers085[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25773 ~ 25780
function Func1074 takes player loc_player01 returns string
    local string loc_string01=I2S(integers084[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25782 ~ 25796
function Func1075 takes nothing returns nothing
    local integer loc_integer01=1
    local multiboarditem loc_multiboarditem01
    loop
        exitwhen loc_integer01>integer425
        if(strings003[GetPlayerId((players007[loc_integer01]))])!="Here"then
            set loc_multiboarditem01=MultiboardGetItem(multiboard002,integers117[loc_integer01],integers118[loc_integer01])
            call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
            call MultiboardSetItemValue(loc_multiboarditem01,"|c00555555"+(strings003[GetPlayerId((players007[loc_integer01]))])+"|r")
            call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
            call MultiboardReleaseItem(loc_multiboarditem01)
        endif
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 25798 ~ 25805
function Func1076 takes player loc_player01 returns string
    local string loc_string01=I2S(GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD))
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25807 ~ 25814
function Func1077 takes player loc_player01 returns string
    local string loc_string01=I2S(integers007[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25816 ~ 25823
function Func1078 takes player loc_player01 returns string
    local string loc_string01=I2S(GetUnitLevel(units001[GetPlayerId(loc_player01)]))
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25825 ~ 25832
function Func1079 takes player loc_player01 returns string
    local string loc_string01=I2S(integers008[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25834 ~ 25841
function Func1080 takes player loc_player01 returns string
    local string loc_string01=I2S(integers015[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25843 ~ 25850
function Func1081 takes player loc_player01 returns string
    local string loc_string01=I2S(integers009[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25852 ~ 25859
function Func1082 takes player loc_player01 returns string
    local string loc_string01=I2S(integers006[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25861 ~ 25868
function Func1083 takes player loc_player01 returns string
    local string loc_string01=I2S(integers001[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25870 ~ 25877
function Func1084 takes player loc_player01 returns string
    local string loc_string01=I2S(integers002[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25879 ~ 25886
function Func1085 takes player loc_player01 returns string
    local string loc_string01=I2S(integers003[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25888 ~ 25895
function Func1086 takes player loc_player01 returns string
    local string loc_string01=I2S(integers004[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25897 ~ 25904
function Func1087 takes player loc_player01 returns string
    local string loc_string01=I2S((LoadInteger(hashtable001,(400+GetPlayerId(loc_player01)),(79))))
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25906 ~ 25913
function Func1088 takes player loc_player01 returns string
    local string loc_string01=I2S(integers011[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25915 ~ 25922
function Func1089 takes player loc_player01 returns string
    local string loc_string01=I2S(integers012[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25924 ~ 25931
function Func1090 takes player loc_player01 returns string
    local string loc_string01=I2S(integers010[GetPlayerId(loc_player01)])
    local string loc_string02=loc_string01
    if loc_player01==GetLocalPlayer()then
        set loc_string02=string034+loc_string01+"|r"
    endif
    return loc_string02
endfunction

// 25933 ~ 25952
function Func1091 takes player loc_player01 returns string
    local string loc_string01
    local string loc_string02
    local string loc_string03
    local integer loc_integer01=integers016[GetPlayerId(loc_player01)]
    local integer loc_integer02=integers014[GetPlayerId(loc_player01)]
    if loc_integer01<1 then
        set loc_integer01=0
    endif
    if loc_integer02<1 then
        set loc_integer02=0
    endif
    set loc_string01=I2S(loc_integer01)
    set loc_string02=I2S(loc_integer02)
    set loc_string03=loc_string01+"/"+loc_string02
    if loc_player01==GetLocalPlayer()then
        set loc_string03=string034+loc_string01+"|r/"+string034+loc_string02+"|r"
    endif
    return loc_string03
endfunction

// 25954 ~ 25970
function Func1092 takes player loc_player01 returns string
    local integer loc_integer01=integers013[GetPlayerId(loc_player01)]
    local string loc_string01
    local integer loc_integer02
    local integer loc_integer03
    set loc_integer02=(loc_integer01/60)-(1/2)
    set loc_integer03=ModuloInteger(loc_integer01,60)
    if(loc_integer03<10)then
        set loc_string01=I2S(loc_integer02)+":0"+I2S(loc_integer03)
    else
        set loc_string01=I2S(loc_integer02)+":"+I2S(loc_integer03)
    endif
    if loc_player01==GetLocalPlayer()then
        set loc_string01=string034+loc_string01+"|r"
    endif
    return loc_string01
endfunction

// 25972 ~ 25991
function Func1093 takes player loc_player01,player loc_player02 returns string
    local string loc_string01
    local string loc_string02
    local string loc_string03
    local integer loc_integer01=(LoadInteger(hashtable001,(400+GetPlayerId(loc_player01)),(450+GetPlayerId(loc_player02))))
    local integer loc_integer02=(LoadInteger(hashtable001,(400+GetPlayerId(loc_player01)),(500+GetPlayerId(loc_player02))))
    if loc_integer01<1 then
        set loc_integer01=0
    endif
    if loc_integer02<1 then
        set loc_integer02=0
    endif
    set loc_string01=I2S(loc_integer01)
    set loc_string02=I2S(loc_integer02)
    set loc_string03=loc_string01+"/"+loc_string02
    if loc_player01==GetLocalPlayer()then
        set loc_string03=string034+loc_string01+"|r/"+string034+loc_string02+"|r"
    endif
    return loc_string03
endfunction

// 25993 ~ 25995
function Func1094 takes nothing returns string
    return"|c00ff0303"+I2S(integers001[GetPlayerId(players003[0])])+"|r/|c0020c000"+I2S(integers002[GetPlayerId(players003[0])])+"|r"
endfunction

// 25997 ~ 26792
function Func1095 takes nothing returns nothing
    local integer loc_integer01=integer423
    local integer loc_integer02=integer424
    local player array loc_players01
    local player array loc_players02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05=21+Func0139(loc_integer01,loc_integer02)+1
    local integer loc_integer06=1+(loc_integer01+loc_integer02)*2
    local multiboarditem loc_multiboarditem01
    local integer loc_integer07
    local integer loc_integer08
    local integer loc_integer09
    local integer loc_integer10
    local string loc_string01="|r"
    local string loc_string02="|cff99ccff"
    local integer loc_integer11
    local integer loc_integer12
    call DisableTrigger(trigger029)
    call DestroyMultiboard(multiboard001)
    if loc_integer01>0 and loc_integer02>0 then
        set loc_integer05=loc_integer05+2
    endif
    set multiboard002=CreateMultiboard()
    call MultiboardSetItemsWidth(multiboard002,0)
    call MultiboardSetRowCount(multiboard002,loc_integer05)
    call MultiboardSetColumnCount(multiboard002,loc_integer06)
    call MultiboardSetTitleText(multiboard002,GetObjectName('n0E3')+" "+" - "+(string028))
    call MultiboardMinimize(multiboard002,true)
    call MultiboardSetItemsStyle(multiboard002,false,false)
    call MultiboardDisplay(multiboard002,true)
    call MultiboardMinimize(multiboard002,false)
    call MultiboardSetTitleText(multiboard002,GetObjectName('n0E3')+" "+" - "+(string028)+" - "+("|c00ff0303"+I2S(integers001[GetPlayerId(players003[0])])+"|r/|c0020c000"+I2S(integers002[GetPlayerId(players003[0])])+"|r"))
    set loc_integer08=1
    set loc_integer07=1
    loop
        exitwhen loc_integer07>5
        if Func0059(players003[loc_integer07])or GetPlayerSlotState(players003[loc_integer07])==PLAYER_SLOT_STATE_LEFT then
            set loc_players01[loc_integer08]=players003[loc_integer07]
            set loc_integer08=loc_integer08+1
        endif
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer08=1
    set loc_integer07=1
    loop
        exitwhen loc_integer07>5
        if Func0059(players004[loc_integer07])or GetPlayerSlotState(players004[loc_integer07])==PLAYER_SLOT_STATE_LEFT then
            set loc_players02[loc_integer08]=players004[loc_integer07]
            set loc_integer08=loc_integer08+1
        endif
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=0
    set loc_integer04=0
    loop
        exitwhen loc_integer07>loc_integer05
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer07,loc_integer04)
        call MultiboardSetItemWidth(loc_multiboarditem01,0.075)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer03=0
    set loc_integer04=0
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01," ")
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,false,false)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1072(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1072(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer03=loc_integer03+1
    set loc_integer04=0
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,false,false)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,true)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1078(loc_players01[loc_integer07]))
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players01[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,true)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1078(loc_players02[loc_integer07]))
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players02[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer03=loc_integer03+1
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0EB')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players01[loc_integer07]))],(1)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players01[loc_integer07]))],(2)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.054)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players02[loc_integer07]))],(1)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players02[loc_integer07]))],(2)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.054)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer03=loc_integer03+1
    set loc_integer04=0
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+" "+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players01[loc_integer07]))],(3)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players01[loc_integer07]))],(4)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.054)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players02[loc_integer07]))],(3)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players02[loc_integer07]))],(4)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.054)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer03=loc_integer03+1
    set loc_integer04=0
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+" "+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players01[loc_integer07]))],(5)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players01[loc_integer07]))],(6)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.054)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players02[loc_integer07]))],(5)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players02[loc_integer07]))],(6)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.054)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0E2')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1076(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1076(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0E1')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1083(loc_players01[loc_integer07])+"/"+Func1084(loc_players01[loc_integer07])+"/"+Func1082(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1083(loc_players02[loc_integer07])+"/"+Func1084(loc_players02[loc_integer07])+"/"+Func1082(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DZ')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1085(loc_players01[loc_integer07])+"/"+Func1086(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1085(loc_players02[loc_integer07])+"/"+Func1086(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0JU')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1073(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1073(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0KF')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1074(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1074(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0E0')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1079(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1079(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DT')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1091(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1091(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DY')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1087(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1087(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DU')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1080(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1080(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DV')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1092(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1092(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DW')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1081(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1081(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DN')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1077(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1077(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0D8')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1088(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1088(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DI')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1089(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1089(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DM')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1090(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1090(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    if loc_integer01>0 and loc_integer02>0 then
        set loc_integer04=0
        set loc_integer11=loc_integer03
        set loc_integer12=loc_integer04
        set loc_integer03=loc_integer03+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DL')+loc_string01)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer03=loc_integer11
        set loc_integer08=1
        loop
            exitwhen loc_integer08>loc_integer01
            set loc_integer04=0
            set loc_integer03=loc_integer11
            set loc_integer07=1
            loop
                exitwhen loc_integer07>loc_integer02
                set loc_integer04=loc_integer08+(loc_integer08-1)
                set loc_integer03=loc_integer03+1
                set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
                call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
                call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players01[loc_integer08]))])))
                call MultiboardSetItemWidth(loc_multiboarditem01,0.01)
                call MultiboardReleaseItem(loc_multiboarditem01)
                set loc_integer04=loc_integer04+1
                set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
                call MultiboardSetItemStyle(loc_multiboarditem01,true,true)
                call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players02[loc_integer07]))])))
                call MultiboardSetItemValue(loc_multiboarditem01," "+Func1093(loc_players01[loc_integer08],loc_players02[loc_integer07]))
                call MultiboardSetItemWidth(loc_multiboarditem01,0.059)
                call MultiboardReleaseItem(loc_multiboarditem01)
                set loc_integer07=loc_integer07+1
            endloop
            set loc_integer08=loc_integer08+1
        endloop
        set loc_integer08=loc_integer01+1
        loop
            exitwhen loc_integer08>(loc_integer02+loc_integer01)
            set loc_integer04=0
            set loc_integer03=loc_integer11
            set loc_integer07=1
            loop
                exitwhen loc_integer07>loc_integer01
                set loc_integer04=loc_integer08+(loc_integer08-1)
                set loc_integer03=loc_integer03+1
                set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
                call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
                call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players02[loc_integer08-loc_integer01]))])))
                call MultiboardSetItemWidth(loc_multiboarditem01,0.01)
                call MultiboardReleaseItem(loc_multiboarditem01)
                set loc_integer04=loc_integer04+1
                set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
                call MultiboardSetItemStyle(loc_multiboarditem01,true,true)
                call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players01[loc_integer07]))])))
                call MultiboardSetItemValue(loc_multiboarditem01," "+Func1093(loc_players02[loc_integer08-loc_integer01],loc_players01[loc_integer07]))
                call MultiboardSetItemWidth(loc_multiboarditem01,0.059)
                call MultiboardReleaseItem(loc_multiboarditem01)
                set loc_integer07=loc_integer07+1
            endloop
            set loc_integer08=loc_integer08+1
        endloop
    endif
    set loc_integer03=loc_integer03+1
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0CZ')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(strings003[GetPlayerId((loc_players01[loc_integer07]))]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set integer425=integer425+1
        set integers117[integer425]=loc_integer03
        set integers118[integer425]=loc_integer04
        set players007[integer425]=loc_players01[loc_integer07]
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(strings003[GetPlayerId((loc_players02[loc_integer07]))]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set integer425=integer425+1
        set integers117[integer425]=loc_integer03
        set integers118[integer425]=loc_integer04
        set players007[integer425]=loc_players02[loc_integer07]
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0D9')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_multiboarditem01=MultiboardGetItem(multiboard002,loc_integer03,loc_integer04+1)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,(string003))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
    call MultiboardReleaseItem(loc_multiboarditem01)
    call MultiboardMinimize(multiboard002,true)
    call MultiboardMinimize(multiboard002,false)
endfunction

// 26794 ~ 26796
function Func1096 takes nothing returns string
    return string028
endfunction

// 26798 ~ 26800
function Func1097 takes player loc_player01 returns string
    return strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"
endfunction

// 26802 ~ 26812
function Func1098 takes player loc_player01 returns string
    local integer loc_integer01=integers016[GetPlayerId(loc_player01)]
    local integer loc_integer02=integers014[GetPlayerId(loc_player01)]
    if loc_integer01<1 then
        set loc_integer01=0
    endif
    if loc_integer02<1 then
        set loc_integer02=0
    endif
    return I2S(loc_integer01)+"/"+I2S(loc_integer02)
endfunction

// 26814 ~ 26827
function Func1099 takes player loc_player01 returns string
    local integer loc_integer01=integers013[GetPlayerId(loc_player01)]
    local string loc_string01
    local integer loc_integer02
    local integer loc_integer03
    set loc_integer02=(loc_integer01/60)-(1/2)
    set loc_integer03=ModuloInteger(loc_integer01,60)
    if(loc_integer03<10)then
        set loc_string01=I2S(loc_integer02)+":0"+I2S(loc_integer03)
    else
        set loc_string01=I2S(loc_integer02)+":"+I2S(loc_integer03)
    endif
    return loc_string01
endfunction

// 26829 ~ 26839
function Func1100 takes player loc_player01,player loc_player02 returns string
    local integer loc_integer01=(LoadInteger(hashtable001,(400+GetPlayerId(loc_player01)),(450+GetPlayerId(loc_player02))))
    local integer loc_integer02=(LoadInteger(hashtable001,(400+GetPlayerId(loc_player01)),(500+GetPlayerId(loc_player02))))
    if loc_integer01<1 then
        set loc_integer01=0
    endif
    if loc_integer02<1 then
        set loc_integer02=0
    endif
    return I2S(loc_integer01)+"/"+I2S(loc_integer02)
endfunction

// 26841 ~ 26849
function Func1101 takes player loc_player01 returns string
    local string loc_string01
    if Func0194(units001[GetPlayerId(loc_player01)])then
        set loc_string01=I2S(R2I(TimerGetRemaining(timers002[GetPlayerId(loc_player01)])))
    else
        set loc_string01=" "
    endif
    return loc_string01
endfunction

// 26851 ~ 26860
function Func1102 takes player loc_player01 returns string
    local real loc_real01=(TimerGetRemaining(timers003[GetPlayerId((loc_player01))]))
    local string loc_string01
    if loc_real01>0 then
        set loc_string01=I2S(R2I(loc_real01))
    else
        set loc_string01=" "
    endif
    return loc_string01
endfunction

// 26862 ~ 26873
function Func1103 takes integer loc_integer01,integer loc_integer02 returns nothing
    set multiboard003=CreateMultiboard()
    call MultiboardSetItemsWidth(multiboard003,0)
    call MultiboardSetRowCount(multiboard003,loc_integer01)
    call MultiboardSetColumnCount(multiboard003,loc_integer02)
    call MultiboardSetTitleText(multiboard003,GetObjectName('n0E3')+" "+" - "+(string028))
    call MultiboardMinimize(multiboard003,true)
    call MultiboardSetItemsStyle(multiboard003,false,false)
    if GetLocalPlayer()==player009 or GetLocalPlayer()==player010 then
        call MultiboardDisplay(multiboard003,true)
    endif
endfunction

// 26875 ~ 26877
function Func1104 takes nothing returns string
    return"|c00ff0303"+I2S(integers001[GetPlayerId(players003[0])])+"|r/|c0020c000"+I2S(integers002[GetPlayerId(players003[0])])+"|r"
endfunction

// 26879 ~ 27806
function Func1105 takes nothing returns nothing
    local integer loc_integer01=integer007
    local integer loc_integer02=integer008
    local player array loc_players01
    local player array loc_players02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05=1+21+Func0139(loc_integer01,loc_integer02)
    local integer loc_integer06=1+(loc_integer01+loc_integer02)*2
    local multiboarditem loc_multiboarditem01
    local integer loc_integer07
    local integer loc_integer08
    local integer loc_integer09
    local integer loc_integer10
    local string loc_string01="|r"
    local string loc_string02="|cff99ccff"
    local integer loc_integer11
    local integer loc_integer12
    local integer loc_integer13=131
    local integer loc_integer14=139
    local integer loc_integer15=139
    local integer loc_integer16=255
    local integer loc_integer17=0
    local string loc_string03=""
    local string loc_string04=""
    local integer loc_integer18=0
    local integer loc_integer19=0
    local integer loc_integer20
    if loc_integer01>0 and loc_integer02>0 then
        set loc_integer05=loc_integer05+2
    endif
    if GetTriggerExecCount(GetTriggeringTrigger())==1 then
        call Func1103(loc_integer05,loc_integer06)
    endif
    if boolean025 and(GetLocalPlayer()==player009 or GetLocalPlayer()==player010)then
        call MultiboardDisplay(multiboard003,true)
    endif
    set loc_integer07=1
    loop
        exitwhen loc_integer07>5
        set loc_integer20=R2I(TimerGetRemaining(timers002[GetPlayerId(players003[loc_integer07])]))
        if loc_integer20>0 then
            set loc_integer17=loc_integer17+Func1066(loc_integer20)
            if loc_integer18==0 then
                if loc_integer20<10 then
                    set loc_string03=strings001[GetPlayerId(players003[loc_integer07])]+"0"+I2S(loc_integer20)+" |r"
                else
                    set loc_string03=strings001[GetPlayerId(players003[loc_integer07])]+I2S(loc_integer20)+" |r"
                endif
            else
                if loc_integer20<10 then
                    set loc_string03=loc_string03+string033+"| |r"+strings001[GetPlayerId(players003[loc_integer07])]+"0"+I2S(loc_integer20)+" |r"
                else
                    set loc_string03=loc_string03+string033+"| |r"+strings001[GetPlayerId(players003[loc_integer07])]+I2S(loc_integer20)+" |r"
                endif
            endif
            set loc_integer18=loc_integer18+1
        endif
        set loc_integer07=loc_integer07+1
    endloop
    if loc_integer18>0 then
        set loc_string03=string033+"[Sentinel: |r"+loc_string03+string033+"]|r"
    endif
    set loc_integer07=1
    loop
        exitwhen loc_integer07>5
        set loc_integer20=R2I(TimerGetRemaining(timers002[GetPlayerId(players004[loc_integer07])]))
        if loc_integer20>0 then
            set loc_integer17=loc_integer17+Func1066(loc_integer20)
            if loc_integer19==0 then
                if loc_integer20<10 then
                    set loc_string04=strings001[GetPlayerId(players004[loc_integer07])]+"0"+I2S(loc_integer20)+" |r"
                else
                    set loc_string04=strings001[GetPlayerId(players004[loc_integer07])]+I2S(loc_integer20)+" |r"
                endif
            else
                if loc_integer20<10 then
                    set loc_string04=loc_string04+string033+"| |r"+strings001[GetPlayerId(players004[loc_integer07])]+"0"+I2S(loc_integer20)+" |r"
                else
                    set loc_string04=loc_string04+string033+"| |r"+strings001[GetPlayerId(players004[loc_integer07])]+I2S(loc_integer20)+" |r"
                endif
            endif
            set loc_integer19=loc_integer19+1
        endif
        set loc_integer07=loc_integer07+1
    endloop
    if loc_integer19>0 then
        set loc_string04=string033+"[Scourge: |r"+loc_string04+string033+"]|r"
    endif
    call MultiboardSetTitleText(multiboard003,loc_string03+" "+loc_string04+" "+GetObjectName('n0E3')+" "+" - "+(string028)+" - "+("|c00ff0303"+I2S(integers001[GetPlayerId(players003[0])])+"|r/|c0020c000"+I2S(integers002[GetPlayerId(players003[0])])+"|r"))
    set loc_integer08=1
    set loc_integer07=1
    loop
        exitwhen loc_integer07>5
        if Func0059(players003[loc_integer07])or GetPlayerSlotState(players003[loc_integer07])==PLAYER_SLOT_STATE_LEFT then
            set loc_players01[loc_integer08]=players003[loc_integer07]
            set loc_integer08=loc_integer08+1
        endif
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer08=1
    set loc_integer07=1
    loop
        exitwhen loc_integer07>5
        if Func0059(players004[loc_integer07])or GetPlayerSlotState(players004[loc_integer07])==PLAYER_SLOT_STATE_LEFT then
            set loc_players02[loc_integer08]=players004[loc_integer07]
            set loc_integer08=loc_integer08+1
        endif
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=0
    set loc_integer04=0
    loop
        exitwhen loc_integer07>loc_integer05
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer07,loc_integer04)
        call MultiboardSetItemWidth(loc_multiboarditem01,0.075)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer03=0
    set loc_integer04=0
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01," ")
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,false,false)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1097(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1097(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer03=loc_integer03+1
    set loc_integer04=0
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,false,false)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,true)
        call MultiboardSetItemValue(loc_multiboarditem01,"("+(I2S(GetUnitLevel(units001[GetPlayerId((loc_players01[loc_integer07]))])))+")")
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players01[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,true)
        call MultiboardSetItemValue(loc_multiboarditem01,"("+(I2S(GetUnitLevel(units001[GetPlayerId((loc_players02[loc_integer07]))])))+")")
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players02[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer03=loc_integer03+1
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0EB')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players01[loc_integer07]))],(1)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players01[loc_integer07]))],(2)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.054)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players02[loc_integer07]))],(1)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players02[loc_integer07]))],(2)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.054)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer03=loc_integer03+1
    set loc_integer04=0
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+" "+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players01[loc_integer07]))],(3)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players01[loc_integer07]))],(4)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.054)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players02[loc_integer07]))],(3)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players02[loc_integer07]))],(4)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.054)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer03=loc_integer03+1
    set loc_integer04=0
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+" "+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players01[loc_integer07]))],(5)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players01[loc_integer07]))],(6)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.054)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players02[loc_integer07]))],(5)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,(Func0403(UnitItemInSlot(units001[GetPlayerId((loc_players02[loc_integer07]))],(6)-1))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.054)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0E2')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(GetPlayerState((loc_players01[loc_integer07]),PLAYER_STATE_RESOURCE_GOLD))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(GetPlayerState((loc_players02[loc_integer07]),PLAYER_STATE_RESOURCE_GOLD))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0LT')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers065[Func0431(GetHeroLevel(units001[GetPlayerId((loc_players01[loc_integer07]))]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers065[Func0431(GetHeroLevel(units001[GetPlayerId((loc_players02[loc_integer07]))]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DZ')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers003[GetPlayerId((loc_players01[loc_integer07]))]))+"/"+(I2S(integers004[GetPlayerId((loc_players01[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers003[GetPlayerId((loc_players02[loc_integer07]))]))+"/"+(I2S(integers004[GetPlayerId((loc_players02[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0E1')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers001[GetPlayerId((loc_players01[loc_integer07]))]))+"/"+(I2S(integers002[GetPlayerId((loc_players01[loc_integer07]))]))+"/"+(I2S(integers006[GetPlayerId((loc_players01[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers001[GetPlayerId((loc_players02[loc_integer07]))]))+"/"+(I2S(integers002[GetPlayerId((loc_players02[loc_integer07]))]))+"/"+(I2S(integers006[GetPlayerId((loc_players02[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0JU')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1073(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1073(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0KF')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1074(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1074(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0E0')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers008[GetPlayerId((loc_players01[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers008[GetPlayerId((loc_players02[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DT')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1098(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1098(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DY')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S((LoadInteger(hashtable001,(400+GetPlayerId((loc_players01[loc_integer07]))),(79))))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S((LoadInteger(hashtable001,(400+GetPlayerId((loc_players02[loc_integer07]))),(79))))))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DU')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers015[GetPlayerId((loc_players01[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers015[GetPlayerId((loc_players02[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DV')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1099(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,Func1099(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DW')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers009[GetPlayerId((loc_players01[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers009[GetPlayerId((loc_players02[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DN')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers007[GetPlayerId((loc_players01[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers007[GetPlayerId((loc_players02[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0D8')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers011[GetPlayerId((loc_players01[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers011[GetPlayerId((loc_players02[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DI')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers012[GetPlayerId((loc_players01[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers012[GetPlayerId((loc_players02[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DM')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers010[GetPlayerId((loc_players01[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,(I2S(integers010[GetPlayerId((loc_players02[loc_integer07]))])))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    if loc_integer01>0 and loc_integer02>0 then
        set loc_integer04=0
        set loc_integer11=loc_integer03
        set loc_integer12=loc_integer04
        set loc_integer03=loc_integer03+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0DL')+loc_string01)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer03=loc_integer11
        set loc_integer08=1
        loop
            exitwhen loc_integer08>loc_integer01
            set loc_integer04=0
            set loc_integer03=loc_integer11
            set loc_integer07=1
            loop
                exitwhen loc_integer07>loc_integer02
                set loc_integer04=loc_integer08+(loc_integer08-1)
                set loc_integer03=loc_integer03+1
                set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
                call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
                call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players01[loc_integer08]))])))
                call MultiboardSetItemWidth(loc_multiboarditem01,0.01)
                call MultiboardReleaseItem(loc_multiboarditem01)
                set loc_integer04=loc_integer04+1
                set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
                call MultiboardSetItemStyle(loc_multiboarditem01,true,true)
                call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players02[loc_integer07]))])))
                call MultiboardSetItemValue(loc_multiboarditem01," "+Func1100(loc_players01[loc_integer08],loc_players02[loc_integer07]))
                call MultiboardSetItemWidth(loc_multiboarditem01,0.059)
                call MultiboardReleaseItem(loc_multiboarditem01)
                set loc_integer07=loc_integer07+1
            endloop
            set loc_integer08=loc_integer08+1
        endloop
        set loc_integer08=loc_integer01+1
        loop
            exitwhen loc_integer08>(loc_integer02+loc_integer01)
            set loc_integer04=0
            set loc_integer03=loc_integer11
            set loc_integer07=1
            loop
                exitwhen loc_integer07>loc_integer01
                set loc_integer04=loc_integer08+(loc_integer08-1)
                set loc_integer03=loc_integer03+1
                set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
                call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
                call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players02[loc_integer08-loc_integer01]))])))
                call MultiboardSetItemWidth(loc_multiboarditem01,0.01)
                call MultiboardReleaseItem(loc_multiboarditem01)
                set loc_integer04=loc_integer04+1
                set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
                call MultiboardSetItemStyle(loc_multiboarditem01,true,true)
                call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players01[loc_integer07]))])))
                call MultiboardSetItemValue(loc_multiboarditem01," "+Func1100(loc_players02[loc_integer08-loc_integer01],loc_players01[loc_integer07]))
                call MultiboardSetItemWidth(loc_multiboarditem01,0.059)
                call MultiboardReleaseItem(loc_multiboarditem01)
                set loc_integer07=loc_integer07+1
            endloop
            set loc_integer08=loc_integer08+1
        endloop
    endif
    set loc_integer03=loc_integer03+1
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0HS')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        if Func1101(loc_players01[loc_integer07])==" "then
            call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        else
            call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
            call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players01[loc_integer07]))])))
        endif
        call MultiboardSetItemValue(loc_multiboarditem01,Func1102(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        call MultiboardSetItemValueColor(loc_multiboarditem01,loc_integer13,loc_integer14,loc_integer15,loc_integer16)
        if Func1101(loc_players02[loc_integer07])==" "then
            call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        else
            call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
            call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players02[loc_integer07]))])))
        endif
        call MultiboardSetItemValue(loc_multiboarditem01,Func1102(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer04=0
    set loc_integer03=loc_integer03+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string02+GetObjectName('n0E4')+loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer04=0
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer01
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        if Func1101(loc_players01[loc_integer07])==" "then
            call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        else
            call MultiboardSetItemStyle(loc_multiboarditem01,true,true)
            call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players01[loc_integer07]))])))
        endif
        call MultiboardSetItemValue(loc_multiboarditem01,Func1101(loc_players01[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
    set loc_integer07=1
    loop
        exitwhen loc_integer07>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_multiboarditem01=MultiboardGetItem(multiboard003,loc_integer03,loc_integer04)
        if Func1101(loc_players02[loc_integer07])==" "then
            call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
        else
            call MultiboardSetItemStyle(loc_multiboarditem01,true,true)
            call MultiboardSetItemIcon(loc_multiboarditem01,(Func0042(units001[GetPlayerId((loc_players02[loc_integer07]))])))
        endif
        call MultiboardSetItemValue(loc_multiboarditem01,Func1101(loc_players02[loc_integer07]))
        call MultiboardSetItemWidth(loc_multiboarditem01,0.07)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer07=loc_integer07+1
    endloop
endfunction

// 27808 ~ 27816
function Func1106 takes nothing returns nothing
    local trigger loc_trigger01
    if boolean025 then
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddAction(loc_trigger01,function Func1105)
        set trigger061=loc_trigger01
    endif
endfunction

// 27818 ~ 27854
function Func1107 takes nothing returns boolean
    local integer loc_integer01=GetUnitTypeId(GetTriggerUnit())
    local string loc_string01
    if GetLocalPlayer()==GetTriggerPlayer()then
        if loc_integer01=='hC95' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='n01K' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='nC38' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='e025' then
        elseif loc_integer01=='n00V' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='n00W' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='n002' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='n00X' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='n009' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='n0HE' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='nC35' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='u00Q' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='uC74' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='u010' then
            call ResetUnitAnimation(GetTriggerUnit())
        elseif loc_integer01=='u00Z' then
            call ResetUnitAnimation(GetTriggerUnit())
        endif
    endif
    return false
endfunction

// 27856 ~ 27896
function Func1108 takes nothing returns boolean
    local integer loc_integer01=GetUnitTypeId(GetTriggerUnit())
    local string loc_string01
    if GetLocalPlayer()==GetTriggerPlayer()then
        if loc_integer01=='hC95' then
            set loc_string01="stand work"
        elseif loc_integer01=='n01K' then
            set loc_string01="stand third"
        elseif loc_integer01=='nC38' then
            call SetUnitAnimationByIndex(GetTriggerUnit(),3)
        elseif loc_integer01=='e025' then
        elseif loc_integer01=='n00V' then
            set loc_string01="spell attack"
        elseif loc_integer01=='n00W' then
            set loc_string01="spell"
        elseif loc_integer01=='n002' then
            call SetUnitAnimationByIndex(GetTriggerUnit(),3)
        elseif loc_integer01=='n00X' then
            set loc_string01="stand work"
        elseif loc_integer01=='n009' then
            set loc_string01="stand work"
        elseif loc_integer01=='n0HE' then
            set loc_string01="stand victory"
        elseif loc_integer01=='nC35' then
            set loc_string01="stand work"
        elseif loc_integer01=='u00Q' then
            set loc_string01="stand work"
        elseif loc_integer01=='uC74' then
            set loc_string01="stand work gold"
        elseif loc_integer01=='u010' then
            set loc_string01="stand work"
        elseif loc_integer01=='u00Z' then
            set loc_string01="stand work"
        endif
        if loc_string01!=""then
            call SetUnitAnimation(GetTriggerUnit(),loc_string01)
            call QueueUnitAnimation(GetTriggerUnit(),loc_string01)
        endif
    endif
    return false
endfunction

// 27898 ~ 27900
function Func1109 takes nothing returns boolean
    return GetObjectName('n0K5')!="Only Translate This String If Simplified Chinese"
endfunction

// 27902 ~ 27913
function Func1110 takes nothing returns boolean
    local integer loc_integer01=0
    local string loc_string01="我开通了中文微博：@IceFrogCN(新浪)，@IceFrogdev(腾讯)"
    loop
        exitwhen loc_integer01>12
        if GetRandomInt(0,10)<11 and(GetObjectName('n0K5')!="Only Translate This String If Simplified Chinese")then
            call DisplayTimedTextToPlayer(Player(loc_integer01),0,0,20,"|CFF00FF00"+loc_string01+"|r")
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return false
endfunction

// 27915 ~ 27916
function Func1111 takes unit loc_unit01 returns nothing
endfunction

// 27918 ~ 28209
function Func1112 takes nothing returns boolean
    local real loc_real01
    local real loc_real02
    local unit loc_unit01
    if boolean088==false then
        set loc_unit01=unit145
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real210)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
    endif
    if boolean089==false then
        set loc_unit01=unit146
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real211)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
    endif
    if boolean090==false then
        set loc_unit01=unit147
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real212)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
    endif
    if boolean087==false then
        set loc_unit01=unit148
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real213)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit149
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real214)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit150
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real215)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit151
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real216)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit152
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real217)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit153
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real218)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit154
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real219)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit155
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real220)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit156
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real221)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit157
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real222)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit158
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real223)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit141
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real224)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
    endif
    if boolean084==false then
        set loc_unit01=unit189
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real225)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
    endif
    if boolean085==false then
        set loc_unit01=unit190
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real226)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
    endif
    if boolean086==false then
        set loc_unit01=unit191
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real227)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
    endif
    if boolean083==false then
        set loc_unit01=unit192
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real228)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit193
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real229)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit194
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real230)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit195
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real231)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit196
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real232)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit197
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real233)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit198
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real234)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit199
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real235)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit200
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real236)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit201
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real237)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit202
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real238)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
        set loc_unit01=unit185
        if loc_unit01!=null then
            set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            set loc_real02=loc_real01+real240
            if loc_real02<(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)-real239)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func1111(loc_unit01)
            endif
        endif
    endif
    return false
endfunction

// 28211 ~ 28231
function Func1113 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean084 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real225=real225+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28233 ~ 28253
function Func1114 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean085 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real226=real226+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28255 ~ 28275
function Func1115 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean086 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real227=real227+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28277 ~ 28297
function Func1116 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean083 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real228=real228+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28299 ~ 28319
function Func1117 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean083 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real229=real229+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28321 ~ 28341
function Func1118 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean083 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real230=real230+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28343 ~ 28363
function Func1119 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean083 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real231=real231+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28365 ~ 28385
function Func1120 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean083 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real232=real232+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28387 ~ 28407
function Func1121 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean083 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real233=real233+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28409 ~ 28429
function Func1122 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean083 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real234=real234+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28431 ~ 28451
function Func1123 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean083 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real235=real235+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28453 ~ 28473
function Func1124 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean083 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real236=real236+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28475 ~ 28495
function Func1125 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean083 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real237=real237+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28497 ~ 28517
function Func1126 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean083 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real238=real238+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28519 ~ 28539
function Func1127 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean083 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real239=real239+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28541 ~ 28561
function Func1128 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean088 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real210=real210+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28563 ~ 28583
function Func1129 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean089 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real211=real211+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28585 ~ 28605
function Func1130 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean090 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real212=real212+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28607 ~ 28627
function Func1131 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean087 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real213=real213+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28629 ~ 28649
function Func1132 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean087 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real214=real214+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28651 ~ 28671
function Func1133 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean087 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real215=real215+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28673 ~ 28693
function Func1134 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean087 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real216=real216+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28695 ~ 28715
function Func1135 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean087 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real217=real217+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28717 ~ 28737
function Func1136 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean087 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real218=real218+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28739 ~ 28759
function Func1137 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean087 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real219=real219+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28761 ~ 28781
function Func1138 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean087 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real220=real220+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28783 ~ 28803
function Func1139 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean087 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real221=real221+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28805 ~ 28825
function Func1140 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean087 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real222=real222+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28827 ~ 28847
function Func1141 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean087 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real223=real223+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28849 ~ 28869
function Func1142 takes nothing returns boolean
    local real loc_real01=GetEventDamage()
    if IsUnitIllusion(GetEventDamageSource())==true then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
        set loc_real01=(1-0.25)*loc_real01
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean087 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
            set real224=real224+loc_real01
        else
            if IsUnitIllusion(GetEventDamageSource())==true then
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*loc_real01)
            else
                call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*loc_real01)
            endif
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 28871 ~ 28876
function Func1143 takes nothing returns boolean
    if GetOwningPlayer(GetFilterUnit())==players004[0]then
        set boolean087=true
    endif
    return false
endfunction

// 28878 ~ 28883
function Func1144 takes nothing returns boolean
    if GetOwningPlayer(GetFilterUnit())==players004[0]then
        set boolean088=true
    endif
    return false
endfunction

// 28885 ~ 28890
function Func1145 takes nothing returns boolean
    if GetOwningPlayer(GetFilterUnit())==players004[0]then
        set boolean089=true
    endif
    return false
endfunction

// 28892 ~ 28897
function Func1146 takes nothing returns boolean
    if GetOwningPlayer(GetFilterUnit())==players004[0]then
        set boolean090=true
    endif
    return false
endfunction

// 28899 ~ 28904
function Func1147 takes nothing returns boolean
    if GetOwningPlayer(GetFilterUnit())==players003[0]then
        set boolean083=true
    endif
    return false
endfunction

// 28906 ~ 28911
function Func1148 takes nothing returns boolean
    if GetOwningPlayer(GetFilterUnit())==players003[0]then
        set boolean084=true
    endif
    return false
endfunction

// 28913 ~ 28918
function Func1149 takes nothing returns boolean
    if GetOwningPlayer(GetFilterUnit())==players003[0]then
        set boolean085=true
    endif
    return false
endfunction

// 28920 ~ 28925
function Func1150 takes nothing returns boolean
    if GetOwningPlayer(GetFilterUnit())==players003[0]then
        set boolean086=true
    endif
    return false
endfunction

// 28927 ~ 28958
function Func1151 takes nothing returns boolean
    local group loc_group01=Func0030()
    set boolean083=false
    set boolean084=false
    set boolean085=false
    set boolean086=false
    set boolean087=false
    set boolean088=false
    set boolean089=false
    set boolean090=false
    call GroupEnumUnitsInRect(loc_group01,rect063,Condition(function Func1143))
    call GroupEnumUnitsInRect(loc_group01,rect064,Condition(function Func1143))
    call GroupEnumUnitsInRect(loc_group01,rect065,Condition(function Func1143))
    call GroupEnumUnitsInRect(loc_group01,rect195,Condition(function Func1143))
    call GroupEnumUnitsInRect(loc_group01,rect196,Condition(function Func1143))
    call GroupEnumUnitsInRect(loc_group01,rect197,Condition(function Func1143))
    call GroupEnumUnitsInRect(loc_group01,rect193,Condition(function Func1144))
    call GroupEnumUnitsInRect(loc_group01,rect201,Condition(function Func1145))
    call GroupEnumUnitsInRect(loc_group01,rect194,Condition(function Func1146))
    call GroupEnumUnitsInRect(loc_group01,rect066,Condition(function Func1147))
    call GroupEnumUnitsInRect(loc_group01,rect067,Condition(function Func1147))
    call GroupEnumUnitsInRect(loc_group01,rect068,Condition(function Func1147))
    call GroupEnumUnitsInRect(loc_group01,rect200,Condition(function Func1147))
    call GroupEnumUnitsInRect(loc_group01,rect198,Condition(function Func1147))
    call GroupEnumUnitsInRect(loc_group01,rect199,Condition(function Func1147))
    call GroupEnumUnitsInRect(loc_group01,rect190,Condition(function Func1148))
    call GroupEnumUnitsInRect(loc_group01,rect191,Condition(function Func1149))
    call GroupEnumUnitsInRect(loc_group01,rect192,Condition(function Func1150))
    call Func0029(loc_group01)
    set loc_group01=null
    return false
endfunction

// 28960 ~ 28964
function Func1152 takes nothing returns boolean
    call Func0035(GetTriggeringTrigger())
    call TriggerEvaluate(trigger024)
    return false
endfunction

// 28966 ~ 29061
function Func1153 takes nothing returns boolean
    local real loc_real01=TimerGetRemaining(timer003)
    local real loc_real02=loc_real01
    local integer loc_integer01=R2I(loc_real02)
    local integer loc_integer02=loc_integer01/60-1/2
    local integer loc_integer03=ModuloInteger(loc_integer01,60)
    local trigger loc_trigger01
    local integer loc_integer04
    local player loc_player01
    if loc_real01==0 then
        set boolean091=true
        call Func0415("GameStart",1)
        call Func0274(loc_integer02,loc_integer03,true)
        set boolean049=true
        set real001=TimerGetElapsed(timer001)
        call Func0035(GetTriggeringTrigger())
        call SetFloatGameState(GAME_STATE_TIME_OF_DAY,6.00)
        call SuspendTimeOfDay(false)
        call SetTimeOfDayScale(0.625)
        if boolean009==false then
            if boolean053 then
                call TriggerRegisterTimerEvent(trigger056,120,true)
            else
                call TriggerRegisterTimerEvent(trigger056,120,true)
            endif
            call TriggerEvaluate(trigger056)
        endif
        call TriggerRegisterTimerEvent(trigger024,60,true)
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,30,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1152))
        set loc_trigger01=null
        call TriggerRegisterTimerEventPeriodic(trigger007,30.00)
        call TriggerExecute(trigger007)
        call TriggerRegisterTimerEventPeriodic(trigger022,450.00)
        call TriggerRegisterTimerEventSingle(trigger005,2699.00)
        call TriggerRegisterTimerEventSingle(trigger006,999.00)
        call TriggerRegisterTimerEventSingle(trigger006,1999.00)
        call TriggerRegisterTimerEventSingle(trigger006,2999.00)
        call TriggerRegisterTimerEvent(trigger055,300,true)
        call TriggerRegisterTimerEvent(trigger062,300,true)
        call TriggerRegisterTimerEvent(trigger051,30,true)
        call TriggerEvaluate(trigger051)
        if boolean010 then
            call TriggerRegisterTimerEvent(trigger025,600,true)
        endif
        call ExecuteFunc("Func1579")
    elseif loc_real01==7 then
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,30,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0998))
    elseif loc_real02<12 and boolean050==false then
        set boolean050=true
        call PlaySoundBJ(sound032)
        call Func0274(loc_integer02,loc_integer03,true)
    elseif loc_real02==20 then
        if GetRandomInt(0,10)<2 then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,6,"|c006699CC"+GetObjectName('n0LG')+"|r")
        endif
    elseif loc_real02==60 then
        call ExecuteFunc("Func1110")
    else
        call Func0274(loc_integer02,loc_integer03,true)
    endif
    if boolean006==true and ModuloInteger(GetTriggerEvalCount(GetTriggeringTrigger()),4)==0 then
        if loc_real01==85 then
            if units001[GetPlayerId(GetLocalPlayer())]==null then
                call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,6,"|c006699CC"+GetObjectName('n0NJ')+"|r")
            endif
        elseif loc_real01==80 then
            if units001[GetPlayerId(GetLocalPlayer())]==null then
                call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,6,"|c006699CC"+GetObjectName('n0NK')+"|r")
            endif
        elseif loc_real01<75 and loc_real01>0 then
            if loc_real01==74 then
                if units001[GetPlayerId(GetLocalPlayer())]==null then
                    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,6,"|c006699CC"+GetObjectName('n0NL')+"|r")
                endif
            endif
            set loc_integer04=0
            loop
                exitwhen loc_integer04>5
                set loc_player01=players003[loc_integer04]
                if units001[GetPlayerId(loc_player01)]==null then
                    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-1)
                endif
                set loc_player01=players004[loc_integer04]
                if units001[GetPlayerId(loc_player01)]==null then
                    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-1)
                endif
                set loc_integer04=loc_integer04+1
            endloop
        endif
    endif
    return false
endfunction

// 29063 ~ 29072
function Func1154 takes nothing returns boolean
    if IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GetAttacker()))and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1 and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false and GetOwningPlayer(GetFilterUnit())!=player001 then
        if IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==true then
            set unit253=GetFilterUnit()
        else
            set unit254=GetFilterUnit()
        endif
    endif
    return false
endfunction

// 29074 ~ 29094
function Func1155 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    local unit loc_unit02=GetTriggerUnit()
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),900,Condition(function Func1154))
    call Func0029(loc_group01)
    call DisableTrigger(GetTriggeringTrigger())
    if unit253!=null then
        call IssueTargetOrder(loc_unit01,"attack",unit253)
        call GroupAddUnit(group005,loc_unit01)
    elseif IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true and unit254!=null then
        call IssueTargetOrder(loc_unit01,"attack",unit254)
        call GroupAddUnit(group005,loc_unit01)
    endif
    call EnableTrigger(GetTriggeringTrigger())
    set unit253=null
    set unit254=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
endfunction

// 29096 ~ 29104
function Func1156 takes nothing returns nothing
    if GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<1 then
        call GroupRemoveUnit(group005,GetEnumUnit())
    endif
    if GetUnitCurrentOrder(GetEnumUnit())!=OrderId("attack")then
        call GroupRemoveUnit(group005,GetEnumUnit())
        call IssuePointOrderLoc(GetEnumUnit(),"attack",locations001[GetUnitAbilityLevel(GetEnumUnit(),integer012)])
    endif
endfunction

// 29106 ~ 29109
function Func1157 takes nothing returns boolean
    call ForGroup(group005,function Func1156)
    return false
endfunction

// 29111 ~ 29114
function Func1158 takes string loc_string01 returns nothing
    set integer426=integer426+1
    set strings013[integer426]=loc_string01
endfunction
