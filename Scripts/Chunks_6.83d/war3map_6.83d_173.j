
// 34234 ~ 34248
function Func1412 takes string loc_string01 returns string
    local integer loc_integer01=StringLength(loc_string01)
    local string loc_string02
    local string loc_string03=""
    local integer loc_integer02=0
    loop
        exitwhen(loc_integer02==loc_integer01)
        set loc_string02=StringCase(SubString(loc_string01,loc_integer02,loc_integer02+1),false)
        if not(loc_string02==StringCase(loc_string02,true))then
            set loc_string03=loc_string03+loc_string02
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return loc_string03
endfunction

// 34250 ~ 34812
function Func1413 takes string loc_string01,integer loc_integer01 returns nothing
    local string loc_string02=Func1412(loc_string01)
    local string array loc_strings01
    local string array loc_strings02
    local string array loc_strings03
    local boolean array loc_booleans01
    local integer loc_integer02
    local integer loc_integer03=StringLength(loc_string02)
    local integer loc_integer04=0
    local integer loc_integer05=0
    local integer loc_integer06=0
    local boolean loc_boolean01
    local boolean loc_boolean02
    local boolean loc_boolean03
    local boolean loc_boolean04
    local boolean loc_boolean05
    local boolean loc_boolean06
    local boolean loc_boolean07
    local boolean loc_boolean08
    local boolean loc_boolean09
    local boolean loc_boolean10
    local boolean loc_boolean11
    local boolean loc_boolean12
    local boolean loc_boolean13
    local boolean loc_boolean14
    local boolean loc_boolean15
    local boolean loc_boolean16
    local boolean loc_boolean17
    local boolean loc_boolean18
    local boolean loc_boolean19
    local boolean loc_boolean20
    local boolean loc_boolean21
    local boolean loc_boolean22
    local boolean loc_boolean23
    local boolean loc_boolean24
    local boolean loc_boolean25
    local boolean loc_boolean26
    local boolean loc_boolean27
    local boolean loc_boolean28
    local boolean loc_boolean29
    local boolean loc_boolean30
    local boolean loc_boolean31
    local boolean loc_boolean32
    local boolean loc_boolean33
    local boolean loc_boolean34
    local boolean loc_boolean35
    local boolean loc_boolean36
    local boolean loc_boolean37
    local boolean loc_boolean38
    local boolean loc_boolean39
    local boolean loc_boolean40
    local boolean loc_boolean41
    local boolean loc_boolean42
    local boolean loc_boolean43
    set loc_strings01[1]="allpick"
    set loc_strings02[1]="ap"
    set loc_strings01[2]="allrandom"
    set loc_strings02[2]="ar"
    set loc_strings01[3]="leaguemode"
    set loc_strings02[3]="lm"
    set loc_strings01[4]="mirrormatch"
    set loc_strings02[4]="mm"
    set loc_strings01[5]="teamrandom"
    set loc_strings02[5]="tr"
    set loc_strings01[6]="deathmatch"
    set loc_strings02[6]="dm"
    set loc_strings01[7]="moderandom"
    set loc_strings02[7]="mr"
    set loc_strings01[8]="shuffleplayers"
    set loc_strings02[8]="sp"
    set loc_strings01[9]="allagility"
    set loc_strings02[9]="aa"
    set loc_strings01[10]="allintelligence"
    set loc_strings02[10]="ai"
    set loc_strings01[11]="allstrength"
    set loc_strings02[11]="as"
    set loc_strings01[12]="itemdrop"
    set loc_strings02[12]="id"
    set loc_strings01[13]="nopowerups"
    set loc_strings02[13]="np"
    set loc_strings01[14]="supercreeps"
    set loc_strings02[14]="sc"
    set loc_strings01[15]="easymode"
    set loc_strings02[15]="em"
    set loc_strings01[16]="duplicatemode"
    set loc_strings02[16]="du"
    set loc_strings01[17]="samehero"
    set loc_strings02[17]="sh"
    set loc_strings01[18]="voterandom"
    set loc_strings02[18]="vr"
    set loc_strings01[19]="reverse"
    set loc_strings02[19]="rv"
    set loc_strings01[20]="randomdraft"
    set loc_strings02[20]="rd"
    set loc_strings01[21]="onlymid"
    set loc_strings02[21]="om"
    set loc_strings01[22]="extendedleague"
    set loc_strings02[22]="xl"
    set loc_strings01[23]="nomid"
    set loc_strings02[23]="nm"
    set loc_strings01[24]="notop"
    set loc_strings02[24]="nt"
    set loc_strings01[25]="nobot"
    set loc_strings02[25]="nb"
    set loc_strings01[26]="noswap"
    set loc_strings02[26]="ns"
    set loc_strings01[27]="norepick"
    set loc_strings02[27]="nr"
    set loc_strings01[28]="captainsdraft"
    set loc_strings02[28]="cd"
    set loc_strings01[29]="singledraft"
    set loc_strings02[29]="sd"
    set loc_strings01[30]="poolingmode"
    set loc_strings02[30]="pm"
    set loc_strings01[31]="observerinfo"
    set loc_strings02[31]="oi"
    set loc_strings01[32]="miniheroes"
    set loc_strings02[32]="mi"
    set loc_strings01[33]="captainsmode"
    set loc_strings02[33]="cm"
    set loc_strings01[34]="fastrespawn"
    set loc_strings02[34]="fr"
    set loc_strings01[35]="meleeonly"
    set loc_strings02[35]="mo"
    set loc_strings01[36]="rangeonly"
    set loc_strings02[36]="ro"
    set loc_strings01[37]="experimentalrunes"
    set loc_strings02[37]="er"
    set loc_strings01[38]="randomside"
    set loc_strings02[38]="rs"
    set loc_strings01[39]="switchon"
    set loc_strings02[39]="so"
    set loc_strings01[40]="zoommode"
    set loc_strings02[40]="zm"
    set loc_strings01[41]="capturepoint"
    set loc_strings02[41]="cp"
    set loc_strings01[42]="unban"
    set loc_strings02[42]="ub"
    set loc_strings01[43]="tagteam"
    set loc_strings02[43]="tt"
    set loc_integer02=43
    set loc_integer04=-1
    loop
        exitwhen loc_integer04==loc_integer03-1
        set loc_integer04=loc_integer04+1
        set loc_integer05=loc_integer04
        loop
            exitwhen loc_integer05==loc_integer03
            set loc_integer05=loc_integer05+1
            set loc_integer06=1
            loop
                exitwhen loc_integer06>loc_integer02
                if loc_strings01[loc_integer06]==SubString(loc_string02,loc_integer04,loc_integer05)then
                    set loc_booleans01[loc_integer06]=true
                    set loc_integer06=loc_integer02+1
                    set loc_string02=Func1411(loc_string02,loc_integer04,loc_integer05)
                    set loc_integer04=-1
                    set loc_integer03=StringLength(loc_string02)
                    set loc_integer05=loc_integer03
                else
                    set loc_integer06=loc_integer06+1
                endif
            endloop
        endloop
    endloop
    set loc_integer04=-1
    loop
        exitwhen loc_integer04==loc_integer03-1
        set loc_integer04=loc_integer04+1
        set loc_integer05=loc_integer04
        loop
            exitwhen loc_integer05==loc_integer03
            set loc_integer05=loc_integer05+1
            set loc_integer06=1
            loop
                exitwhen loc_integer06>loc_integer02
                if loc_strings02[loc_integer06]==SubString(loc_string02,loc_integer04,loc_integer05)then
                    set loc_booleans01[loc_integer06]=true
                    set loc_integer06=loc_integer02+1
                    set loc_string02=Func1411(loc_string02,loc_integer04,loc_integer05)
                    set loc_integer04=-1
                    set loc_integer03=StringLength(loc_string02)
                    set loc_integer05=loc_integer03
                else
                    set loc_integer06=loc_integer06+1
                endif
            endloop
        endloop
    endloop
    set loc_boolean01=loc_booleans01[1]
    set loc_boolean02=loc_booleans01[2]
    set loc_boolean03=loc_booleans01[3]
    set loc_boolean04=loc_booleans01[4]
    set loc_boolean05=loc_booleans01[5]
    set loc_boolean06=loc_booleans01[6]
    set loc_boolean07=loc_booleans01[7]
    set loc_boolean08=loc_booleans01[8]
    set loc_boolean09=loc_booleans01[9]
    set loc_boolean10=loc_booleans01[10]
    set loc_boolean11=loc_booleans01[11]
    set loc_boolean12=loc_booleans01[12]
    set loc_boolean13=loc_booleans01[13]
    set loc_boolean14=loc_booleans01[14]
    set loc_boolean15=loc_booleans01[15]
    set loc_boolean16=loc_booleans01[16]
    set loc_boolean17=loc_booleans01[17]
    set loc_boolean18=loc_booleans01[18]
    set loc_boolean19=loc_booleans01[19]
    set loc_boolean20=loc_booleans01[20]
    set loc_boolean21=loc_booleans01[21]
    set loc_boolean28=loc_booleans01[22]
    set loc_boolean24=loc_booleans01[23]
    set loc_boolean22=loc_booleans01[24]
    set loc_boolean23=loc_booleans01[25]
    set loc_boolean25=loc_booleans01[26]
    set loc_boolean27=loc_booleans01[27]
    set loc_boolean38=loc_booleans01[28]
    set loc_boolean29=loc_booleans01[29]
    set loc_boolean30=loc_booleans01[30]
    set loc_boolean31=loc_booleans01[31]
    set loc_boolean32=loc_booleans01[32]
    set loc_boolean33=loc_booleans01[33]
    set loc_boolean34=loc_booleans01[34]
    set loc_boolean35=loc_booleans01[35]
    set loc_boolean36=loc_booleans01[36]
    set loc_boolean37=loc_booleans01[37]
    set loc_boolean39=loc_booleans01[38]
    set loc_boolean26=loc_booleans01[39]
    set loc_boolean41=loc_booleans01[40]
    set loc_boolean40=loc_booleans01[41]
    set loc_boolean42=loc_booleans01[42]
    set loc_boolean43=loc_booleans01[43]
    if loc_string02!=""or Func1408(loc_string01)then
        return
    endif
    if(loc_boolean02 and(loc_boolean33 or loc_boolean01 or loc_boolean05 or loc_boolean03 or loc_boolean07 or loc_boolean19 or loc_boolean20 or loc_boolean38 or loc_boolean29 or loc_boolean43))or(loc_boolean01 and(loc_boolean05 or loc_boolean07))or(loc_boolean05 and(loc_boolean03 or loc_boolean07))or(loc_boolean03 and loc_boolean07)or(loc_boolean04 and loc_boolean17)then
        call Func0120(player003,GetObjectName('n02U'))
        return
    endif
    if(loc_boolean09 and(loc_boolean10 or loc_boolean11 or loc_boolean06))or(loc_boolean11 and(loc_boolean10 or loc_boolean06))or(loc_boolean10 and loc_boolean06)then
        call Func0120(player003,GetObjectName('n02U'))
        return
    endif
    if(loc_boolean36 and(loc_boolean35 or loc_boolean06))or(loc_boolean35 and loc_boolean06)then
        call Func0120(player003,GetObjectName('n02U'))
        return
    endif
    if loc_boolean19 and(loc_boolean33 or loc_boolean02 or loc_boolean05 or loc_boolean07 or loc_boolean03 or loc_boolean06 or loc_boolean17 or loc_boolean43)then
        call Func0120(player003,GetObjectName('n02U'))
        return
    endif
    if(loc_boolean06 and(loc_boolean33 or loc_boolean05 or loc_boolean03 or loc_boolean07 or loc_boolean17 or loc_boolean19 or loc_boolean20 or loc_boolean38 or loc_boolean29 or loc_boolean43))or(loc_boolean04 and loc_boolean06)or(loc_boolean17 and loc_boolean06)then
        call Func0120(player003,GetObjectName('n02T'))
        return
    endif
    if loc_boolean03 and(loc_boolean43 or loc_boolean33 or loc_boolean01 or loc_boolean20 or loc_boolean38 or loc_boolean02 or loc_boolean29 or loc_boolean04 or loc_boolean05 or loc_boolean06 or loc_boolean07 or loc_boolean09 or loc_boolean10 or loc_boolean11 or loc_boolean12 or loc_boolean13 or loc_boolean14 or loc_boolean15 or loc_boolean16 or loc_boolean17 or loc_boolean19 or loc_boolean21 or loc_boolean23 or loc_boolean24 or loc_boolean22 or loc_boolean28 or loc_boolean35 or loc_boolean36)then
        call Func0120(player003,GetObjectName('n031'))
        return
    endif
    if loc_boolean28 and(loc_boolean43 or loc_boolean33 or loc_boolean01 or loc_boolean20 or loc_boolean38 or loc_boolean02 or loc_boolean29 or loc_boolean04 or loc_boolean05 or loc_boolean06 or loc_boolean07 or loc_boolean09 or loc_boolean10 or loc_boolean11 or loc_boolean12 or loc_boolean13 or loc_boolean14 or loc_boolean15 or loc_boolean16 or loc_boolean17 or loc_boolean19 or loc_boolean21 or loc_boolean23 or loc_boolean24 or loc_boolean22 or loc_boolean03 or loc_boolean36 or loc_boolean35)then
        call Func0120(player003,GetObjectName('n032'))
        return
    endif
    if loc_boolean33 and(loc_boolean43 or loc_boolean08 or loc_boolean28 or loc_boolean01 or loc_boolean20 or loc_boolean38 or loc_boolean02 or loc_boolean29 or loc_boolean04 or loc_boolean05 or loc_boolean06 or loc_boolean07 or loc_boolean09 or loc_boolean10 or loc_boolean11 or loc_boolean12 or loc_boolean13 or loc_boolean14 or loc_boolean15 or loc_boolean16 or loc_boolean17 or loc_boolean19 or loc_boolean21 or loc_boolean23 or loc_boolean24 or loc_boolean22 or loc_boolean03 or loc_boolean35 or loc_boolean36)then
        call Func0120(player003,GetObjectName('n032'))
        return
    endif
    if loc_boolean20 and(loc_boolean43 or loc_boolean38 or loc_boolean33 or loc_boolean01 or loc_boolean03 or loc_boolean02 or loc_boolean29 or loc_boolean04 or loc_boolean05 or loc_boolean06 or loc_boolean07 or loc_boolean09 or loc_boolean10 or loc_boolean11 or loc_boolean17 or loc_boolean19 or loc_boolean36 or loc_boolean35)then
        call Func0120(player003,GetObjectName('n02U'))
        return
    endif
    if loc_boolean38 and(loc_boolean43 or loc_boolean20 or loc_boolean33 or loc_boolean01 or loc_boolean03 or loc_boolean02 or loc_boolean29 or loc_boolean04 or loc_boolean05 or loc_boolean06 or loc_boolean07 or loc_boolean09 or loc_boolean10 or loc_boolean11 or loc_boolean17 or loc_boolean19 or loc_boolean36 or loc_boolean35)then
        call Func0120(player003,GetObjectName('n02U'))
        return
    endif
    if loc_boolean07 and(loc_boolean43 or loc_boolean33 or loc_boolean01 or loc_boolean03 or loc_boolean02 or loc_boolean29 or loc_boolean04 or loc_boolean05 or loc_boolean06 or loc_boolean09 or loc_boolean10 or loc_boolean11 or loc_boolean17 or loc_boolean19 or loc_boolean36 or loc_boolean35)then
        call Func0120(player003,GetObjectName('n02U'))
        return
    endif
    if loc_boolean29 and(loc_boolean43 or loc_boolean33 or loc_boolean01 or loc_boolean03 or loc_boolean02 or loc_boolean20 or loc_boolean38 or loc_boolean04 or loc_boolean05 or loc_boolean06 or loc_boolean07 or loc_boolean09 or loc_boolean10 or loc_boolean11 or loc_boolean17 or loc_boolean19 or loc_boolean36 or loc_boolean35)then
        call Func0120(player003,GetObjectName('n02U'))
        return
    endif
    if loc_boolean18 and(loc_boolean43 or loc_boolean33 or loc_boolean03 or loc_boolean20 or loc_boolean38 or loc_boolean29 or loc_boolean02 or loc_boolean04 or loc_boolean05 or loc_boolean06 or loc_boolean07 or loc_boolean09 or loc_boolean10 or loc_boolean11 or loc_boolean17 or loc_boolean19 or loc_boolean36 or loc_boolean35)then
        call Func0120(player003,GetObjectName('n02U'))
        return
    endif
    if loc_boolean43 and(loc_boolean26 or loc_boolean18 or loc_boolean33 or loc_boolean03 or loc_boolean20 or loc_boolean38 or loc_boolean29 or loc_boolean02 or loc_boolean04 or loc_boolean05 or loc_boolean06 or loc_boolean07 or loc_boolean09 or loc_boolean10 or loc_boolean11 or loc_boolean17 or loc_boolean19 or loc_boolean36 or loc_boolean35)then
        call Func0120(player003,GetObjectName('n02U'))
        return
    endif
    if loc_boolean04 and Func0063(force001)!=Func0063(force002)then
        call Func0120(player003,GetObjectName('n034'))
        return
    endif
    if loc_boolean18 and Func0063(force001)!=Func0063(force002)then
        call Func0120(player003,GetObjectName('n034'))
        return
    endif
    if loc_boolean19 and Func0063(force001)!=Func0063(force002)then
        call Func0120(player003,GetObjectName('n034'))
        return
    endif
    if loc_boolean03 and not(Func0059(players003[1])and Func0059(players003[2])and Func0059(players003[3])and Func0059(players003[4])and Func0059(players003[5])and Func0059(players004[1])and Func0059(players004[2])and Func0059(players004[3])and Func0059(players004[4])and Func0059(players004[5]))then
    endif
    if loc_boolean28 and not(Func0059(players003[1])and Func0059(players003[2])and Func0059(players003[3])and Func0059(players003[4])and Func0059(players003[5])and Func0059(players004[1])and Func0059(players004[2])and Func0059(players004[3])and Func0059(players004[4])and Func0059(players004[5]))then
    endif
    if loc_boolean43 or loc_boolean41 or loc_boolean40 or loc_boolean34 or loc_boolean33 or loc_boolean01 or loc_boolean02 or loc_boolean03 or loc_boolean04 or loc_boolean05 or loc_boolean06 or loc_boolean07 or loc_boolean08 or loc_boolean09 or loc_boolean10 or loc_boolean11 or loc_boolean12 or loc_boolean13 or loc_boolean14 or loc_boolean16 or loc_boolean15 or loc_boolean17 or loc_boolean18 or loc_boolean19 or loc_boolean20 or loc_boolean38 or loc_boolean21 or loc_boolean23 or loc_boolean24 or loc_boolean22 or loc_boolean25 or loc_boolean27 or loc_boolean28 or loc_boolean29 or loc_boolean30 or loc_boolean31 or loc_boolean32 or loc_boolean35 or loc_boolean36 or loc_boolean37 or loc_boolean39 or loc_boolean26 then
        call DisableTrigger(trigger063)
    else
        return
    endif
    if loc_boolean33==false then
        call Func1060()
        call Func1106()
    endif
    if loc_boolean03==false and loc_boolean28==false then
        call Func1325()
    endif
    set string028=Func1412(loc_string01)
    if boolean104 then
        call Func0415("Mode"+string028,0)
    else
        call Func0415("Mode"+string028,GetPlayerId(player003))
    endif
    set boolean034=false
    if loc_boolean03 then
        set string002=GetObjectName('n0HZ')
    elseif loc_boolean28 then
        set string002=GetObjectName('n0I8')
    elseif loc_boolean20 then
        set string002=GetObjectName('n0IN')
    elseif loc_boolean38 then
        set string002=GetObjectName('n0I9')
    elseif loc_boolean04 then
        set string002=GetObjectName('n0IH')
    elseif loc_boolean06 then
        set string002=GetObjectName('n0II')
    elseif loc_boolean19 then
        set string002=GetObjectName('n0IC')
    elseif loc_boolean01 then
        set string002=GetObjectName('n0ID')
    elseif loc_boolean02 then
        set string002=GetObjectName('n0I7')
    elseif loc_boolean05 then
        set string002=GetObjectName('n0I6')
    elseif loc_boolean07 then
        set string002=GetObjectName('n0IJ')
    elseif loc_boolean18 then
        set string002=GetObjectName('n0I5')
    elseif loc_boolean29 then
        set string002=GetObjectName('n0I4')
    elseif loc_boolean33 then
        set string002=GetObjectName('n0IG')
    elseif loc_boolean43 then
        set string002=GetObjectName('n0MP')
    endif
    if loc_boolean33 then
        call Func1410(GetObjectName('n0IK'))
    endif
    if loc_boolean43 then
        call Func1410(GetObjectName('n0MQ'))
    endif
    if loc_boolean03 then
        call Func1410(GetObjectName('n0I3'))
    endif
    if loc_boolean28 then
        call Func1410(GetObjectName('n0I2'))
    endif
    if loc_boolean20 then
        call Func1410(GetObjectName('n0IF'))
    endif
    if loc_boolean38 then
        call Func1410(GetObjectName('n0I1'))
    endif
    if loc_boolean06 then
        call Func1410(GetObjectName('n0IA'))
    endif
    if loc_boolean04 then
        call Func1410(GetObjectName('n0I0'))
    endif
    if loc_boolean01 then
        call Func1410(GetObjectName('n0IL'))
    endif
    if loc_boolean02 then
        call Func1410(GetObjectName('n0IQ'))
    endif
    if loc_boolean18 then
        call Func1410(GetObjectName('n0IM'))
    endif
    if loc_boolean07 then
        call Func1410(GetObjectName('n0IE'))
    endif
    if loc_boolean05 then
        call Func1410(GetObjectName('n0IB'))
    endif
    if loc_boolean08 then
        call Func1410(GetObjectName('n0IO'))
    endif
    if loc_boolean09 then
        call Func1410(GetObjectName('n0IU'))
    endif
    if loc_boolean11 then
        call Func1410(GetObjectName('n0IP'))
    endif
    if loc_boolean10 then
        call Func1410(GetObjectName('n0IS'))
    endif
    if loc_boolean36 then
        call Func1410(GetObjectName('n0IT'))
    endif
    if loc_boolean35 then
        call Func1410(GetObjectName('n032'))
    endif
    if loc_boolean16 then
        call Func1410(GetObjectName('n0IX'))
    endif
    if loc_boolean12 then
        call Func1410(GetObjectName('n0IZ'))
    endif
    if loc_boolean13 then
        call Func1410(GetObjectName('n0J6'))
    endif
    if loc_boolean14 then
        call Func1410(GetObjectName('n0J7'))
    endif
    if loc_boolean15 then
        call Func1410(GetObjectName('n0J9'))
    endif
    if loc_boolean17 then
        call Func1410(GetObjectName('n0JA'))
    endif
    if loc_boolean19 then
        call Func1410(GetObjectName('n0IW'))
    endif
    if loc_boolean21 then
        call Func1410(GetObjectName('n0IV'))
    endif
    if loc_boolean24 then
        call Func1410(GetObjectName('n0IR'))
    endif
    if loc_boolean23 then
        call Func1410(GetObjectName('n0JB'))
    endif
    if loc_boolean22 then
        call Func1410(GetObjectName('n0J8'))
    endif
    if loc_boolean25 then
        call Func1410(GetObjectName('n0JC'))
    endif
    if loc_boolean27 then
        call Func1410(GetObjectName('n0JF'))
    endif
    if loc_boolean29 then
        call Func1410(GetObjectName('n0J0'))
    endif
    if loc_boolean30 then
        call Func1410(GetObjectName('n0IY'))
    endif
    if loc_boolean31 then
        call Func1410(GetObjectName('n0J5'))
    endif
    if loc_boolean32 then
        call Func1410(GetObjectName('n0J4'))
    endif
    if loc_boolean34 then
        call Func1410(GetObjectName('n0JD'))
    endif
    if loc_boolean37 then
        call Func1410(GetObjectName('n0JE'))
    endif
    if loc_boolean39 then
        call Func1410(GetObjectName('n0J1'))
    endif
    if loc_boolean26 then
        call Func1410(GetObjectName('n0J2'))
    endif
    if loc_boolean41 then
        call Func1410(GetObjectName('n0KA'))
    endif
    if loc_boolean40 then
        call Func1410(GetObjectName('n0KC'))
    endif
    if loc_boolean42 then
        call Func1410(GetObjectName('n0L2'))
    endif
    call Func0152(bj_FORCE_ALL_PLAYERS,20.00," ")
    if loc_integer01==1 then
        call Func0152(bj_FORCE_ALL_PLAYERS,20.00,strings001[GetPlayerId(player003)]+(strings005[GetPlayerId((player003))])+"|r"+" "+GetObjectName('n061')+" "+string001)
    else
        call Func0152(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName('n0HN')+" "+string001)
    endif
    call Func0152(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName('n063')+" -gameinfo.")
    call Func0152(bj_FORCE_ALL_PLAYERS,20.00," ")
    call Func0125("Func1537",loc_boolean08)
    call Func0125("Func1538",loc_boolean39)
    call Func0125("Func1556",loc_boolean42)
    call Func0125("Func1534",loc_boolean06)
    call Func0125("Func1527",loc_boolean04)
    call Func0125("Func1542",loc_boolean17)
    call Func0125("Func1539",loc_boolean09)
    call Func0125("Func1544",loc_boolean10)
    call Func0125("Func1543",loc_boolean11)
    call Func0125("Func1546",loc_boolean36)
    call Func0125("Func1545",loc_boolean35)
    call Func0125("Func1536",loc_boolean16)
    call Func0125("Func1497",loc_boolean02)
    call Func0125("Func1504",loc_boolean18)
    call Func0125("Func1416",loc_boolean01)
    call Func0125("Func1528",loc_boolean05)
    call Func0125("Func1519",loc_boolean19)
    call Func0125("Func1509",loc_boolean03)
    call Func0125("Func1516",loc_boolean28)
    call Func0125("Func1452",loc_boolean33)
    call Func0125("Func1474",loc_boolean20)
    call Func0125("Func1495",loc_boolean29)
    call Func0125("Func1535",loc_boolean07)
    call Func0125("Func1547",loc_boolean12)
    call Func0125("Func1549",loc_boolean13)
    call Func0125("Func1550",loc_boolean14)
    call Func0125("Func1548",loc_boolean15)
    call Func0125("Func1554",loc_boolean21)
    call Func0125("Func1555",loc_boolean23)
    call Func0125("Func1558",loc_boolean22)
    call Func0125("Func1557",loc_boolean24)
    call Func0125("Func1561",loc_boolean26)
    call Func0125("Func1559",loc_boolean25)
    call Func0125("Func1560",loc_boolean27)
    call Func0125("Func1562",loc_boolean30)
    call Func0125("Func1565",loc_boolean31)
    call Func0125("Func1568",loc_boolean32)
    call Func0125("Func1569",loc_boolean34)
    call Func0125("Func1570",loc_boolean37)
    call Func0125("Func1490",loc_boolean38)
    call Func0125("Func1572",loc_boolean41)
    call Func0125("Func1580",loc_boolean40)
    call Func0125("Func1599",loc_boolean43)
    set boolean048=true
    call Func0274(0,0,false)
    if boolean061==false and boolean060==false then
        call Func1407()
    endif
    call Func0526()
    if loc_boolean26==false then
        set booleans025[0]=true
        set booleans025[1]=true
        set booleans025[2]=true
        set booleans025[3]=true
        set booleans025[4]=true
        set booleans025[5]=true
        set booleans025[6]=true
        set booleans025[7]=true
        set booleans025[8]=true
        set booleans025[9]=true
        set booleans025[10]=true
        set booleans025[11]=true
        set booleans025[12]=true
        set booleans025[13]=true
        set booleans025[14]=true
        set booleans025[15]=true
        set booleans025[16]=true
    endif
endfunction

// 34814 ~ 34816
function Func1414 takes nothing returns nothing
    call Func1413(GetEventPlayerChatString(),1)
endfunction

// 34818 ~ 34826
function Func1415 takes nothing returns boolean
    if(string025)!=""and boolean048==false then
        set boolean104=true
        call Func1413("-"+(string025),2)
    else
        call TriggerRegisterPlayerChatEvent(trigger063,player003,"-",false)
    endif
    return false
endfunction

// 34828 ~ 34848
function Func1416 takes nothing returns nothing
    local location loc_location01=GetRectCenter(rect029)
    local location loc_location02=GetRectCenter(rect030)
    local integer loc_integer01=1
    set boolean006=true
    set integer027=150
    loop
        exitwhen loc_integer01>5
        if Func0059(players003[loc_integer01])then
            call CreateUnitAtLoc(players003[loc_integer01],'n00C',loc_location02,bj_UNIT_FACING)
        endif
        if Func0059(players004[loc_integer01])then
            call CreateUnitAtLoc(players004[loc_integer01],'n00C',loc_location01,bj_UNIT_FACING)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    set loc_location01=null
    set loc_location02=null
endfunction
