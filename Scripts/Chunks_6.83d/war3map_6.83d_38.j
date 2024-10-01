
// 14622 ~ 14626
function Func0596 takes player loc_player01,player loc_player02 returns string
    local string loc_string01=GetObjectName('n0AP')
    set loc_string01=Func0418(loc_string01,"$dead",(strings005[GetPlayerId((loc_player01))]))
    return loc_string01
endfunction

// 14628 ~ 14638
function Func0597 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    call SetTerrainPathable(loc_real01,loc_real02,PATHING_TYPE_WALKABILITY,false)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 14640 ~ 14652
function Func0598 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    call SetTerrainPathable(loc_real01,loc_real02,PATHING_TYPE_WALKABILITY,true)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0597))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 14654 ~ 14703
function Func0599 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer03
    local integer loc_integer04=1
    local integer loc_integer05
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local integer loc_integer06=140
    if Func0095(loc_unit01)then
        set loc_integer06=180
    endif
    set loc_integer03=loc_integer06-loc_integer02
    loop
        exitwhen loc_integer04>5
        if IsPlayerAlly(GetOwningPlayer(loc_unit01),players003[0])then
            set loc_integer05=GetPlayerId(players003[loc_integer04])
        else
            set loc_integer05=GetPlayerId(players004[loc_integer04])
        endif
        set loc_integer04=loc_integer04+1
        if loc_integer03==0 then
            call LeaderboardDisplay(leaderboards002[loc_integer05],false)
            if IsPlayerAlly(players003[0],Player(loc_integer05))then
                set booleans021[GetPlayerId(players003[0])]=false
            endif
            if IsPlayerAlly(players004[0],Player(loc_integer05))then
                set booleans021[GetPlayerId(players004[0])]=false
            endif
        else
            if Func0194(units001[loc_integer05])==false then
                call PlayerSetLeaderboard(Player(loc_integer05),leaderboards002[loc_integer05])
                call LeaderboardDisplay(leaderboards002[loc_integer05],true)
                call LeaderboardSetLabel(leaderboards002[loc_integer05],"    "+GetObjectName('n0LZ')+" "+I2S(loc_integer03))
            endif
        endif
    endloop
    if loc_integer03==2 then
        call SetUnitPosition(loc_unit01,loc_real01,loc_real02)
    endif
    if loc_integer03==0 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 14705 ~ 14723
function Func0600 takes player loc_player01,integer loc_integer01 returns nothing
    local texttag loc_texttag01
    if loc_integer01>0 then
        set loc_texttag01=CreateTextTag()
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
        call SetTextTagText(loc_texttag01,"+"+I2S(loc_integer01),0.025)
        call SetTextTagPosUnit(loc_texttag01,units001[GetPlayerId(loc_player01)],0)
        call SetTextTagColor(loc_texttag01,255,220,0,255)
        call SetTextTagVelocity(loc_texttag01,0,0.03)
        if GetLocalPlayer()==loc_player01 then
            call SetTextTagVisibility(loc_texttag01,true)
        else
            call SetTextTagVisibility(loc_texttag01,false)
        endif
        call SetTextTagFadepoint(loc_texttag01,2)
        call SetTextTagLifespan(loc_texttag01,3)
        call SetTextTagPermanent(loc_texttag01,false)
    endif
endfunction

// 14725 ~ 14773
function Func0601 takes nothing returns boolean
    local real loc_real01
    local real loc_real02
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=1
    local integer loc_integer02=175
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer03=GetHandleId(loc_trigger01)
    if Func0095(loc_unit01)==false then
        set loc_integer02=150
    endif
    call Func0415("Courier"+I2S(GetPlayerId(GetOwningPlayer(GetTriggerUnit()))),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0152(force003,10.00,Func0596(GetOwningPlayer(GetTriggerUnit()),GetOwningPlayer(GetKillingUnit())))
    call PingMinimapEx(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),6,255,0,0,false)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0599))
    call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit01))
    if IsPlayerAlly(GetOwningPlayer(loc_unit01),players003[0])and booleans021[GetPlayerId(players003[0])]==false then
        set booleans021[GetPlayerId(players003[0])]=true
        loop
            exitwhen loc_integer01>5
            call Func0600(players004[loc_integer01],loc_integer02)
            set loc_integer01=loc_integer01+1
        endloop
    endif
    set loc_integer01=1
    if IsPlayerAlly(GetOwningPlayer(loc_unit01),players004[0])and booleans021[GetPlayerId(players004[0])]==false then
        set booleans021[GetPlayerId(players004[0])]=true
        loop
            exitwhen loc_integer01>5
            call Func0600(players003[loc_integer01],loc_integer02)
            set loc_integer01=loc_integer01+1
        endloop
    endif
    if Func0056(GetOwningPlayer(loc_unit01))then
        set loc_real01=GetRectCenterX(rect011)
        set loc_real02=GetRectCenterY(rect011)
    else
        set loc_real01=GetRectCenterX(rect004)
        set loc_real02=GetRectCenterY(rect004)
    endif
    call SaveReal(hashtable001,(loc_integer03),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer03),(7),((loc_real02)*1.0))
    if IsTerrainPathable(GetUnitX(loc_unit01),GetUnitY(loc_unit01),PATHING_TYPE_WALKABILITY)then
        call Func0598(loc_unit01)
    endif
    set loc_trigger01=null
    return false
endfunction

// 14775 ~ 14795
function Func0602 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=real016
    local real loc_real02=real017
    if Func0057(GetOwningPlayer(loc_unit01))then
        set loc_real01=real104
        set loc_real02=real105
    endif
    if Func0194(loc_unit01)==false then
        if Func0149(GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01,loc_real02)<800 then
            call Func0193(loc_unit01,'Avul')
        else
            call UnitRemoveAbility(loc_unit01,'Avul')
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 14797 ~ 14811
function Func0603 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A29N',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2XM',false)
    call UnitMakeAbilityPermanent(loc_unit01,true,'A29M')
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0601))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0602))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
endfunction

// 14813 ~ 14819
function Func0604 takes nothing returns nothing
    if Func0096(GetTriggerUnit())and IsUnitIllusion(GetTriggerUnit())==false then
        call Func0415("Courier"+I2S(GetPlayerId(GetOwningPlayer(GetTriggerUnit()))),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0152(force003,10.00,Func0596(GetOwningPlayer(GetTriggerUnit()),GetOwningPlayer(GetKillingUnit())))
        call PingMinimapEx(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),6,255,0,0,false)
    endif
endfunction

// 14821 ~ 14866
function Func0605 takes nothing returns boolean
    call Func0035(GetTriggeringTrigger())
    set booleans021[GetPlayerId(players003[0])]=false
    set booleans021[GetPlayerId(players004[0])]=false
    set leaderboards002[GetPlayerId(players003[1])]=CreateLeaderboard()
    set leaderboards002[GetPlayerId(players003[2])]=CreateLeaderboard()
    set leaderboards002[GetPlayerId(players003[3])]=CreateLeaderboard()
    set leaderboards002[GetPlayerId(players003[4])]=CreateLeaderboard()
    set leaderboards002[GetPlayerId(players003[5])]=CreateLeaderboard()
    set leaderboards002[GetPlayerId(players004[1])]=CreateLeaderboard()
    set leaderboards002[GetPlayerId(players004[2])]=CreateLeaderboard()
    set leaderboards002[GetPlayerId(players004[3])]=CreateLeaderboard()
    set leaderboards002[GetPlayerId(players004[4])]=CreateLeaderboard()
    set leaderboards002[GetPlayerId(players004[5])]=CreateLeaderboard()
    call PlayerSetLeaderboard(players003[1],leaderboards002[GetPlayerId(players003[1])])
    call PlayerSetLeaderboard(players003[2],leaderboards002[GetPlayerId(players003[2])])
    call PlayerSetLeaderboard(players003[3],leaderboards002[GetPlayerId(players003[3])])
    call PlayerSetLeaderboard(players003[4],leaderboards002[GetPlayerId(players003[4])])
    call PlayerSetLeaderboard(players003[5],leaderboards002[GetPlayerId(players003[5])])
    call PlayerSetLeaderboard(players004[1],leaderboards002[GetPlayerId(players004[1])])
    call PlayerSetLeaderboard(players004[2],leaderboards002[GetPlayerId(players004[2])])
    call PlayerSetLeaderboard(players004[3],leaderboards002[GetPlayerId(players004[3])])
    call PlayerSetLeaderboard(players004[4],leaderboards002[GetPlayerId(players004[4])])
    call PlayerSetLeaderboard(players004[5],leaderboards002[GetPlayerId(players004[5])])
    call LeaderboardDisplay(leaderboards002[GetPlayerId(players003[1])],false)
    call LeaderboardDisplay(leaderboards002[GetPlayerId(players003[2])],false)
    call LeaderboardDisplay(leaderboards002[GetPlayerId(players003[3])],false)
    call LeaderboardDisplay(leaderboards002[GetPlayerId(players003[4])],false)
    call LeaderboardDisplay(leaderboards002[GetPlayerId(players003[5])],false)
    call LeaderboardDisplay(leaderboards002[GetPlayerId(players004[1])],false)
    call LeaderboardDisplay(leaderboards002[GetPlayerId(players004[2])],false)
    call LeaderboardDisplay(leaderboards002[GetPlayerId(players004[3])],false)
    call LeaderboardDisplay(leaderboards002[GetPlayerId(players004[4])],false)
    call LeaderboardDisplay(leaderboards002[GetPlayerId(players004[5])],false)
    call LeaderboardSetLabelBJ(leaderboards002[GetPlayerId(players003[1])]," ")
    call LeaderboardSetLabelBJ(leaderboards002[GetPlayerId(players003[2])]," ")
    call LeaderboardSetLabelBJ(leaderboards002[GetPlayerId(players003[3])]," ")
    call LeaderboardSetLabelBJ(leaderboards002[GetPlayerId(players003[4])]," ")
    call LeaderboardSetLabelBJ(leaderboards002[GetPlayerId(players003[5])]," ")
    call LeaderboardSetLabelBJ(leaderboards002[GetPlayerId(players004[1])]," ")
    call LeaderboardSetLabelBJ(leaderboards002[GetPlayerId(players004[2])]," ")
    call LeaderboardSetLabelBJ(leaderboards002[GetPlayerId(players004[3])]," ")
    call LeaderboardSetLabelBJ(leaderboards002[GetPlayerId(players004[4])]," ")
    call LeaderboardSetLabelBJ(leaderboards002[GetPlayerId(players004[5])]," ")
    return false
endfunction

// 14868 ~ 14878
function Func0606 takes nothing returns nothing
    local integer loc_integer01=GetUnitTypeId(GetTriggerUnit())
    if loc_integer01=='e00R' or loc_integer01=='e011' or loc_integer01=='e00S' or loc_integer01=='e019' or loc_integer01=='u00M' or loc_integer01=='u00D' or loc_integer01=='u00N' or loc_integer01=='u00T' then
        if IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit()))then
            set integers014[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers014[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
            call Func0152(force003,10,strings001[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+(strings005[GetPlayerId((GetOwningPlayer(GetKillingUnit())))])+"|r "+GetObjectName('n04P')+".")
        else
            call Func0152(force003,10,strings001[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+(strings005[GetPlayerId((GetOwningPlayer(GetKillingUnit())))])+"|r "+GetObjectName('n0EN')+".")
        endif
    endif
endfunction

// 14880 ~ 14882
function Func0607 takes integer loc_integer01 returns boolean
    return loc_integer01=='I006' or loc_integer01=='I008' or loc_integer01=='I00J' or loc_integer01=='I00K' or loc_integer01=='I007' or loc_integer01=='I0RC'
endfunction

// 14884 ~ 14888
function Func0608 takes nothing returns nothing
    if GetWidgetLife(GetEnumItem())>0 and Func0607(GetItemTypeId(GetEnumItem()))then
        set item002=GetEnumItem()
    endif
endfunction

// 14890 ~ 14898
function Func0609 takes nothing returns integer
    local integer loc_integer01=GetRandomInt(1,5)
    loop
        exitwhen loc_integer01!=integer319
        set loc_integer01=GetRandomInt(1,5)
    endloop
    set integer319=loc_integer01
    return loc_integer01
endfunction

// 14900 ~ 14952
function Func0610 takes nothing returns boolean
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local integer loc_integer01
    local item loc_item01
    local item loc_item02
    if GetRandomInt(1,2)==1 then
        set loc_real03=GetLocationX(location018)
        set loc_real04=GetLocationY(location018)
        set loc_real05=GetLocationX(location019)
        set loc_real06=GetLocationY(location019)
    else
        set loc_real03=GetLocationX(location019)
        set loc_real04=GetLocationY(location019)
        set loc_real05=GetLocationX(location018)
        set loc_real06=GetLocationY(location018)
    endif
    set item002=null
    call EnumItemsInRect(rect018,Condition(function Func0011),function Func0608)
    set loc_item01=item002
    set item002=null
    call EnumItemsInRect(rect015,Condition(function Func0011),function Func0608)
    set loc_item02=item002
    call RemoveItem(loc_item01)
    call RemoveItem(loc_item02)
    if boolean066==false then
        set loc_integer01=Func0609()
        if loc_integer01==1 then
            call CreateItem('I007',loc_real03,loc_real04)
        elseif loc_integer01==2 then
            call CreateItem('I006',loc_real03,loc_real04)
        elseif loc_integer01==3 then
            call CreateItem('I00K',loc_real03,loc_real04)
        elseif loc_integer01==4 then
            call CreateItem('I008',loc_real03,loc_real04)
        elseif loc_integer01==5 then
            call CreateItem('I00J',loc_real03,loc_real04)
        endif
        set item002=CreateItem('I0RC',loc_real05,loc_real06)
        call SaveBoolean(hashtable001,(GetHandleId(item002)),(835),(false))
    else
        set boolean066=false
        set item002=CreateItem('I0RC',loc_real03,loc_real04)
        call SaveBoolean(hashtable001,(GetHandleId(item002)),(835),(true))
        set item002=CreateItem('I0RC',loc_real05,loc_real06)
        call SaveBoolean(hashtable001,(GetHandleId(item002)),(835),(true))
    endif
    return false
endfunction

// 14954 ~ 15404
function Func0611 takes nothing returns nothing
    set integer320=integer320+1
    set integers095[integer320]=integer100
    set integers096[integer320]=integer112
    set integers101[integer320]=integer156
    set integer320=integer320+1
    set integers095[integer320]=integer102
    set integers096[integer320]=integer087
    set integers097[integer320]=integer264
    set integers101[integer320]=integer157
    set integer320=integer320+1
    set integers095[integer320]=integer077
    set integers096[integer320]=integer087
    set integers097[integer320]=integer265
    set integers101[integer320]=integer158
    set integer320=integer320+1
    set integers095[integer320]=integer101
    set integers096[integer320]=integer106
    set integers101[integer320]=integer159
    set integer320=integer320+1
    set integers095[integer320]=integer069
    set integers096[integer320]=integer266
    set integers101[integer320]=integer161
    set integer320=integer320+1
    set integers095[integer320]=integer069
    set integers096[integer320]=integer071
    set integers097[integer320]=integer070
    set integers101[integer320]=integer162
    set integer320=integer320+1
    set integers095[integer320]=integer069
    set integers096[integer320]=integer073
    set integers097[integer320]=integer070
    set integers101[integer320]=integer163
    set integer320=integer320+1
    set integers095[integer320]=integer069
    set integers096[integer320]=integer103
    set integers097[integer320]=integer070
    set integers101[integer320]=integer164
    set integer320=integer320+1
    set integers095[integer320]=integer070
    set integers096[integer320]=integer268
    set integers101[integer320]=integer165
    set integer320=integer320+1
    set integers095[integer320]=integer099
    set integers096[integer320]=integer103
    set integers097[integer320]=integer106
    set integers101[integer320]=integer167
    set integer320=integer320+1
    set integers095[integer320]=integer072
    set integers096[integer320]=integer082
    set integers097[integer320]=integer269
    set integers101[integer320]=integer168
    set integer320=integer320+1
    set integers095[integer320]=integer072
    set integers096[integer320]=integer105
    set integers097[integer320]=integer270
    set integers101[integer320]=integer169
    set integer320=integer320+1
    set integers095[integer320]=integer072
    set integers096[integer320]=integer090
    set integers097[integer320]=integer271
    set integers101[integer320]=integer170
    set integer320=integer320+1
    set integers095[integer320]=integer074
    set integers096[integer320]=integer071
    set integers097[integer320]=integer272
    set integers101[integer320]=integer171
    set integer320=integer320+1
    set integers095[integer320]=integer095
    set integers096[integer320]=integer073
    set integers097[integer320]=integer273
    set integers101[integer320]=integer172
    set integer320=integer320+1
    set integers095[integer320]=integer113
    set integers096[integer320]=integer073
    set integers097[integer320]=integer274
    set integers101[integer320]=integer173
    set integer320=integer320+1
    set integers095[integer320]=integer076
    set integers096[integer320]=integer077
    set integers097[integer320]=integer103
    set integers101[integer320]=integer175
    set integer320=integer320+1
    set integers095[integer320]=integer093
    set integers096[integer320]=integer070
    set integers097[integer320]=integer275
    set integers101[integer320]=integer176
    set integer320=integer320+1
    set integers095[integer320]=integer074
    set integers096[integer320]=integer074
    set integers097[integer320]=integer103
    set integers098[integer320]=integer276
    set integers101[integer320]=integer177
    set integer320=integer320+1
    set integers095[integer320]=integer177
    set integers096[integer320]=integer276
    set integers101[integer320]=integer178
    set integer320=integer320+1
    set integers095[integer320]=integer179
    set integers096[integer320]=integer276
    set integers101[integer320]=integer178
    set integer320=integer320+1
    set integers095[integer320]=integer085
    set integers096[integer320]=integer091
    set integers101[integer320]=integer181
    set integer320=integer320+1
    set integers095[integer320]=integer091
    set integers096[integer320]=integer277
    set integers101[integer320]=integer183
    set integer320=integer320+1
    set integers095[integer320]=integer106
    set integers096[integer320]=integer107
    set integers097[integer320]=integer112
    set integers098[integer320]=integer278
    set integers101[integer320]=integer184
    set integer320=integer320+1
    set integers095[integer320]=integer098
    set integers096[integer320]=integer081
    set integers097[integer320]=integer111
    set integers101[integer320]=integer185
    set integer320=integer320+1
    set integers095[integer320]=integer157
    set integers096[integer320]=integer158
    set integers097[integer320]=integer279
    set integers101[integer320]=integer186
    set integer320=integer320+1
    set integers095[integer320]=integer172
    set integers096[integer320]=integer171
    set integers101[integer320]=integer187
    set integer320=integer320+1
    set integers095[integer320]=integer093
    set integers096[integer320]=integer093
    set integers097[integer320]=integer281
    set integers101[integer320]=integer188
    set integer320=integer320+1
    set integers095[integer320]=integer156
    set integers096[integer320]=integer076
    set integers097[integer320]=integer078
    set integers101[integer320]=integer189
    set integer320=integer320+1
    set integers095[integer320]=integer075
    set integers096[integer320]=integer076
    set integers097[integer320]=integer282
    set integers101[integer320]=integer190
    set integer320=integer320+1
    set integers095[integer320]=integer093
    set integers096[integer320]=integer095
    set integers097[integer320]=integer283
    set integers101[integer320]=integer191
    set integer320=integer320+1
    set integers095[integer320]=integer171
    set integers096[integer320]=integer110
    set integers097[integer320]=integer284
    set integers101[integer320]=integer200
    set integer320=integer320+1
    set integers095[integer320]=integer078
    set integers096[integer320]=integer259
    set integers101[integer320]=integer201
    set integer320=integer320+1
    set integers095[integer320]=integer107
    set integers096[integer320]=integer170
    set integers097[integer320]=integer286
    set integers101[integer320]=integer202
    set integer320=integer320+1
    set integers095[integer320]=integer202
    set integers096[integer320]=integer286
    set integers101[integer320]=integer203
    set integer320=integer320+1
    set integers095[integer320]=integer203
    set integers096[integer320]=integer286
    set integers101[integer320]=integer204
    set integer320=integer320+1
    set integers095[integer320]=integer204
    set integers096[integer320]=integer286
    set integers101[integer320]=integer205
    set integer320=integer320+1
    set integers095[integer320]=integer205
    set integers096[integer320]=integer286
    set integers101[integer320]=integer206
    set integer320=integer320+1
    set integers095[integer320]=integer107
    set integers096[integer320]=integer073
    set integers097[integer320]=integer287
    set integers101[integer320]=integer207
    set integer320=integer320+1
    set integers095[integer320]=integer207
    set integers096[integer320]=integer287
    set integers101[integer320]=integer208
    set integer320=integer320+1
    set integers095[integer320]=integer208
    set integers096[integer320]=integer287
    set integers101[integer320]=integer209
    set integer320=integer320+1
    set integers095[integer320]=integer110
    set integers096[integer320]=integer156
    set integers097[integer320]=integer288
    set integers101[integer320]=integer210
    set integer320=integer320+1
    set integers095[integer320]=integer079
    set integers096[integer320]=integer104
    set integers101[integer320]=integer212
    set integer320=integer320+1
    set integers095[integer320]=integer190
    set integers096[integer320]=integer079
    set integers097[integer320]=integer289
    set integers101[integer320]=integer214
    set integer320=integer320+1
    set integers095[integer320]=integer079
    set integers096[integer320]=integer113
    set integers097[integer320]=integer113
    set integers101[integer320]=integer215
    set integer320=integer320+1
    set integers095[integer320]=integer104
    set integers096[integer320]=integer290
    set integers101[integer320]=integer217
    set integer320=integer320+1
    set integers095[integer320]=integer092
    set integers096[integer320]=integer111
    set integers097[integer320]=integer291
    set integers101[integer320]=integer219
    set integer320=integer320+1
    set integers095[integer320]=integer092
    set integers096[integer320]=integer181
    set integers097[integer320]=integer292
    set integers101[integer320]=integer221
    set integer320=integer320+1
    set integers095[integer320]=integer092
    set integers096[integer320]=integer182
    set integers097[integer320]=integer292
    set integers101[integer320]=integer221
    set integer320=integer320+1
    set integers095[integer320]=integer110
    set integers096[integer320]=integer110
    set integers097[integer320]=integer098
    set integers098[integer320]=integer067
    set integers101[integer320]=integer222
    set integer320=integer320+1
    set integers095[integer320]=integer110
    set integers096[integer320]=integer110
    set integers097[integer320]=integer098
    set integers098[integer320]=integer068
    set integers101[integer320]=integer222
    set integer320=integer320+1
    set integers095[integer320]=integer080
    set integers096[integer320]=integer099
    set integers097[integer320]=integer128
    set integers101[integer320]=integer224
    set integer320=integer320+1
    set integers095[integer320]=integer106
    set integers096[integer320]=integer077
    set integers097[integer320]=integer311
    set integers101[integer320]=integer255
    set integer320=integer320+1
    set integers095[integer320]=integer098
    set integers096[integer320]=integer095
    set integers097[integer320]=integer074
    set integers098[integer320]=integer107
    set integers101[integer320]=integer321
    set integer320=integer320+1
    set integers095[integer320]=integer156
    set integers096[integer320]=integer167
    set integers097[integer320]=integer295
    set integers101[integer320]=integer226
    set integer320=integer320+1
    set integers095[integer320]=integer110
    set integers096[integer320]=integer094
    set integers097[integer320]=integer112
    set integers101[integer320]=integer227
    set integer320=integer320+1
    set integers095[integer320]=integer111
    set integers096[integer320]=integer100
    set integers097[integer320]=integer108
    set integers101[integer320]=integer228
    set integer320=integer320+1
    set integers095[integer320]=integer111
    set integers096[integer320]=integer100
    set integers097[integer320]=integer109
    set integers101[integer320]=integer228
    set integer320=integer320+1
    set integers095[integer320]=integer081
    set integers096[integer320]=integer101
    set integers097[integer320]=integer296
    set integers101[integer320]=integer230
    set integer320=integer320+1
    set integers095[integer320]=integer086
    set integers096[integer320]=integer176
    set integers097[integer320]=integer306
    set integers101[integer320]=integer231
    set integer320=integer320+1
    set integers095[integer320]=integer150
    set integers097[integer320]=integer297
    set integers101[integer320]=integer232
    set integer320=integer320+1
    set integers095[integer320]=integer102
    set integers096[integer320]=integer159
    set integers097[integer320]=integer091
    set integers098[integer320]=integer298
    set integers101[integer320]=integer233
    set integer320=integer320+1
    set integers095[integer320]=integer102
    set integers096[integer320]=integer160
    set integers097[integer320]=integer091
    set integers098[integer320]=integer298
    set integers101[integer320]=integer233
    set integer320=integer320+1
    set integers095[integer320]=integer086
    set integers096[integer320]=integer097
    set integers097[integer320]=integer077
    set integers098[integer320]=integer299
    set integers101[integer320]=integer234
    set integer320=integer320+1
    set integers095[integer320]=integer185
    set integers096[integer320]=integer253
    set integers097[integer320]=integer317
    set integers101[integer320]=integer235
    set integer320=integer320+1
    set integers095[integer320]=integer228
    set integers096[integer320]=integer158
    set integers097[integer320]=integer318
    set integers101[integer320]=integer141
    set integer320=integer320+1
    set integers095[integer320]=integer229
    set integers096[integer320]=integer158
    set integers097[integer320]=integer318
    set integers101[integer320]=integer141
    set integer320=integer320+1
    set integers095[integer320]=integer102
    set integers096[integer320]=integer102
    set integers097[integer320]=integer100
    set integers098[integer320]=integer096
    set integers101[integer320]=integer236
    set integer320=integer320+1
    set integers095[integer320]=integer070
    set integers096[integer320]=integer085
    set integers097[integer320]=integer075
    set integers098[integer320]=integer300
    set integers101[integer320]=integer240
    set integer320=integer320+1
    set integers095[integer320]=integer094
    set integers096[integer320]=integer097
    set integers097[integer320]=integer301
    set integers101[integer320]=integer241
    set integer320=integer320+1
    set integers095[integer320]=integer167
    set integers096[integer320]=integer167
    set integers097[integer320]=integer313
    set integers101[integer320]=integer243
    set integer320=integer320+1
    set integers095[integer320]=integer069
    set integers096[integer320]=integer075
    set integers097[integer320]=integer075
    set integers101[integer320]=integer244
    set integer320=integer320+1
    set integers095[integer320]=integer125
    set integers096[integer320]=integer087
    set integers097[integer320]=integer087
    set integers098[integer320]=integer087
    set integers099[integer320]=integer302
    set integers101[integer320]=integer245
    set integer320=integer320+1
    set integers095[integer320]=integer107
    set integers096[integer320]=integer102
    set integers097[integer320]=integer303
    set integers101[integer320]=integer246
    set integer320=integer320+1
    set integers095[integer320]=integer236
    set integers096[integer320]=integer157
    set integers097[integer320]=integer304
    set integers101[integer320]=integer247
    set integer320=integer320+1
    set integers095[integer320]=integer108
    set integers096[integer320]=integer105
    set integers097[integer320]=integer105
    set integers101[integer320]=integer248
    set integer320=integer320+1
    set integers095[integer320]=integer109
    set integers096[integer320]=integer105
    set integers097[integer320]=integer105
    set integers101[integer320]=integer248
    set integer320=integer320+1
    set integers095[integer320]=integer106
    set integers096[integer320]=integer082
    set integers097[integer320]=integer082
    set integers098[integer320]=integer307
    set integers101[integer320]=integer251
    set integer320=integer320+1
    set integers095[integer320]=integer106
    set integers096[integer320]=integer102
    set integers097[integer320]=integer308
    set integers101[integer320]=integer253
    set integer320=integer320+1
    set integers095[integer320]=integer080
    set integers096[integer320]=integer250
    set integers101[integer320]=integer129
    set integer320=integer320+1
    set integers095[integer320]=integer069
    set integers096[integer320]=integer081
    set integers101[integer320]=integer254
    set integer320=integer320+1
    set integers095[integer320]=integer103
    set integers096[integer320]=integer168
    set integers097[integer320]=integer310
    set integers101[integer320]=integer132
    set integer320=integer320+1
    set integers095[integer320]=integer132
    set integers096[integer320]=integer310
    set integers101[integer320]=integer132
    set integer320=integer320+1
    set integers095[integer320]=integer133
    set integers096[integer320]=integer310
    set integers101[integer320]=integer132
    set integer320=integer320+1
    set integers095[integer320]=integer085
    set integers096[integer320]=integer170
    set integers097[integer320]=integer312
    set integers101[integer320]=integer256
    set integer320=integer320+1
    set integers095[integer320]=integer069
    set integers096[integer320]=integer101
    set integers097[integer320]=integer102
    set integers101[integer320]=integer135
    set integer320=integer320+1
    set integers095[integer320]=integer107
    set integers096[integer320]=integer107
    set integers097[integer320]=integer111
    set integers101[integer320]=integer137
    set integer320=integer320+1
    set integers095[integer320]=integer172
    set integers096[integer320]=integer128
    set integers101[integer320]=integer257
    set integer320=integer320+1
    set integers095[integer320]=integer173
    set integers096[integer320]=integer104
    set integers101[integer320]=integer258
    set integer320=integer320+1
    set integers095[integer320]=integer169
    set integers096[integer320]=integer159
    set integers101[integer320]=integer139
    set integer320=integer320+1
    set integers095[integer320]=integer169
    set integers096[integer320]=integer160
    set integers101[integer320]=integer140
    set integer320=integer320+1
    set integers095[integer320]=integer261
    set integers096[integer320]=integer261
    set integers097[integer320]=integer261
    set integers098[integer320]=integer261
    set integers099[integer320]=integer261
    set integers100[integer320]=integer261
    set integers101[integer320]=integer262
endfunction

// 15406 ~ 15408
function Func0612 takes nothing returns nothing
    call Func0611()
endfunction

// 15410 ~ 15947
function Func0613 takes nothing returns nothing
    set integer066=integer066+1
    set integers088[integer066]='I0AZ'
    set integers089[integer066]='I011'
    set integers090[integer066]=0
    set integers091[integer066]='I0EY'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer322=integer066
    set integer066=integer066+1
    set integers088[integer066]='I00F'
    set integers089[integer066]='I00D'
    set integers090[integer066]=0
    set integers091[integer066]='I0EZ'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer323=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0R9'
    set integers089[integer066]='I0RA'
    set integers090[integer066]=0
    set integers091[integer066]='I0RB'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer386=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0R6'
    set integers089[integer066]='I0R7'
    set integers090[integer066]=0
    set integers091[integer066]='I0R8'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer385=integer066
    set integer066=integer066+1
    set integers088[integer066]='I018'
    set integers089[integer066]='I009'
    set integers090[integer066]=0
    set integers091[integer066]='I0F0'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer324=integer066
    set integer066=integer066+1
    set integers088[integer066]='I019'
    set integers089[integer066]='I005'
    set integers090[integer066]=0
    set integers091[integer066]='I0F6'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer325=integer066
    set integer066=integer066+1
    set integers088[integer066]='I01A'
    set integers089[integer066]='I00G'
    set integers090[integer066]=0
    set integers091[integer066]='I0F1'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer326=integer066
    set integer066=integer066+1
    set integers088[integer066]='I01B'
    set integers089[integer066]='I004'
    set integers090[integer066]=0
    set integers091[integer066]='I0F2'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer327=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0R3'
    set integers089[integer066]='I0R4'
    set integers090[integer066]=0
    set integers091[integer066]='I0R5'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer384=integer066
    set integer066=integer066+1
    set integers088[integer066]='I01H'
    set integers089[integer066]='I003'
    set integers090[integer066]=0
    set integers091[integer066]='I0F3'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer328=integer066
    set integer066=integer066+1
    set integers088[integer066]='I01I'
    set integers089[integer066]='I002'
    set integers090[integer066]=0
    set integers091[integer066]='I0F5'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer329=integer066
    set integer066=integer066+1
    set integers088[integer066]='I02K'
    set integers089[integer066]='I001'
    set integers090[integer066]=0
    set integers091[integer066]='I0F4'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer330=integer066
    set integer066=integer066+1
    set integers088[integer066]='I02L'
    set integers089[integer066]='I00I'
    set integers090[integer066]=0
    set integers091[integer066]='I0FE'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer331=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0R1'
    set integers089[integer066]='I0R0'
    set integers090[integer066]=0
    set integers091[integer066]='I0R2'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer332=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0B2'
    set integers089[integer066]='I00H'
    set integers090[integer066]=0
    set integers091[integer066]='I0F9'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer334=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0B3'
    set integers089[integer066]='I00P'
    set integers090[integer066]=0
    set integers091[integer066]='I0FA'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer335=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0B4'
    set integers089[integer066]='I00U'
    set integers090[integer066]=0
    set integers091[integer066]='I0F7'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer336=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0B7'
    set integers089[integer066]='I000'
    set integers090[integer066]=0
    set integers091[integer066]='I0FD'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer337=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0B6'
    set integers089[integer066]='I016'
    set integers090[integer066]=0
    set integers091[integer066]='I0FC'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer338=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0B5'
    set integers089[integer066]='I017'
    set integers090[integer066]=0
    set integers091[integer066]='I0FB'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer339=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0B9'
    set integers089[integer066]='I00O'
    set integers090[integer066]=0
    set integers091[integer066]='I0F8'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer340=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0J5'
    set integers089[integer066]='I0IT'
    set integers090[integer066]=0
    set integers091[integer066]='I0IJ'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer341=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0IV'
    set integers089[integer066]='I0IU'
    set integers090[integer066]=0
    set integers091[integer066]='I0I9'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer342=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0IW'
    set integers089[integer066]='I0IS'
    set integers090[integer066]=0
    set integers091[integer066]='I0II'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer343=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0IX'
    set integers089[integer066]='I0IR'
    set integers090[integer066]=0
    set integers091[integer066]='I0IA'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer344=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0IY'
    set integers089[integer066]='I0IQ'
    set integers090[integer066]=0
    set integers091[integer066]='I0IH'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer345=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0IZ'
    set integers089[integer066]='I0IK'
    set integers090[integer066]=0
    set integers091[integer066]='I0IG'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer346=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0J0'
    set integers089[integer066]='I0IL'
    set integers090[integer066]=0
    set integers091[integer066]='I0IF'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer347=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0J1'
    set integers089[integer066]='I0IM'
    set integers090[integer066]=0
    set integers091[integer066]='I0IE'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer348=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0J2'
    set integers089[integer066]='I0IP'
    set integers090[integer066]=0
    set integers091[integer066]='I0ID'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer349=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0J3'
    set integers089[integer066]='I0IO'
    set integers090[integer066]=0
    set integers091[integer066]='I0IC'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer350=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0J4'
    set integers089[integer066]='I0IN'
    set integers090[integer066]=0
    set integers091[integer066]='I0IB'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer351=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0I6'
    set integers089[integer066]='I0I7'
    set integers090[integer066]=0
    set integers091[integer066]='I0I8'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer352=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0JZ'
    set integers089[integer066]='I0JS'
    set integers090[integer066]=0
    set integers091[integer066]='I0JR'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer353=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0K0'
    set integers089[integer066]='I0JT'
    set integers090[integer066]=0
    set integers091[integer066]='I0JL'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer354=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0K1'
    set integers089[integer066]='I0JU'
    set integers090[integer066]=0
    set integers091[integer066]='I0JM'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer355=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0K2'
    set integers089[integer066]='I0JW'
    set integers090[integer066]=0
    set integers091[integer066]='I0JN'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer356=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0K3'
    set integers089[integer066]='I0JV'
    set integers090[integer066]=0
    set integers091[integer066]='I0JQ'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer357=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0K4'
    set integers089[integer066]='I0JY'
    set integers090[integer066]=0
    set integers091[integer066]='I0JP'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer358=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0K5'
    set integers089[integer066]='I0JX'
    set integers090[integer066]=0
    set integers091[integer066]='I0JO'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer359=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0KI'
    set integers089[integer066]='I0KH'
    set integers090[integer066]=0
    set integers091[integer066]='I0KJ'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer360=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0L4'
    set integers089[integer066]='I0L5'
    set integers090[integer066]=0
    set integers091[integer066]='I0L8'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer333=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0L3'
    set integers089[integer066]='I0L0'
    set integers090[integer066]=0
    set integers091[integer066]='I0L9'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer361=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0L2'
    set integers089[integer066]='I0L7'
    set integers090[integer066]=0
    set integers091[integer066]='I0LA'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer362=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0LU'
    set integers089[integer066]='I0LV'
    set integers090[integer066]=0
    set integers091[integer066]='I0LW'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer363=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0M1'
    set integers089[integer066]='I0M0'
    set integers090[integer066]=0
    set integers091[integer066]='I0M2'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer364=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0M5'
    set integers089[integer066]='I0M4'
    set integers090[integer066]=0
    set integers091[integer066]='I0M3'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer365=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0M6'
    set integers089[integer066]='I0M7'
    set integers090[integer066]=0
    set integers091[integer066]='I0M8'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer366=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0MF'
    set integers089[integer066]='I0MG'
    set integers090[integer066]=0
    set integers091[integer066]='I0MH'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer367=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0MM'
    set integers089[integer066]='I0ML'
    set integers090[integer066]=0
    set integers091[integer066]='I0MN'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer368=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0MO'
    set integers089[integer066]='I0MP'
    set integers090[integer066]=0
    set integers091[integer066]='I0MQ'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer369=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0NQ'
    set integers089[integer066]='I0NR'
    set integers090[integer066]=0
    set integers091[integer066]='I0NS'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer370=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0NT'
    set integers089[integer066]='I0NU'
    set integers090[integer066]=0
    set integers091[integer066]='I0NV'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer371=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0NW'
    set integers089[integer066]='I0NX'
    set integers090[integer066]=0
    set integers091[integer066]='I0NY'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer372=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0NZ'
    set integers089[integer066]='I0O0'
    set integers090[integer066]=0
    set integers091[integer066]='I0O1'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer373=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0OR'
    set integers089[integer066]='I0OS'
    set integers090[integer066]=0
    set integers091[integer066]='I0OT'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer374=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0PG'
    set integers089[integer066]='I0PH'
    set integers090[integer066]=0
    set integers091[integer066]='I0PI'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer375=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0PJ'
    set integers089[integer066]='I0PK'
    set integers090[integer066]=0
    set integers091[integer066]='I0PL'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer376=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0PP'
    set integers089[integer066]='I0PQ'
    set integers090[integer066]=0
    set integers091[integer066]='I0PR'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer377=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0PS'
    set integers089[integer066]='I0PT'
    set integers090[integer066]=0
    set integers091[integer066]='I0PU'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer378=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0PV'
    set integers089[integer066]='I0PW'
    set integers090[integer066]=0
    set integers091[integer066]='I0PX'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer379=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0Q0'
    set integers089[integer066]='I0Q2'
    set integers090[integer066]=0
    set integers091[integer066]='I0Q4'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer381=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0Q1'
    set integers089[integer066]='I0Q3'
    set integers090[integer066]=0
    set integers091[integer066]='I0Q5'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer380=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0QL'
    set integers089[integer066]='I0QM'
    set integers090[integer066]=0
    set integers091[integer066]='I0QN'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer382=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0QO'
    set integers089[integer066]='I0QP'
    set integers090[integer066]=0
    set integers091[integer066]='I0QQ'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer383=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0RJ'
    set integers089[integer066]='I0RK'
    set integers090[integer066]=0
    set integers091[integer066]='I0RL'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer387=integer066
    set integer066=integer066+1
    set integers088[integer066]='I0RM'
    set integers089[integer066]='I0RN'
    set integers090[integer066]=0
    set integers091[integer066]='I0RO'
    set strings012[integer066]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
    set integers093[integer066]=60
    set integer388=integer066
endfunction

// 15949 ~ 15951
function Func0614 takes nothing returns nothing
    call Func0613()
endfunction

// 15953 ~ 15964
function Func0615 takes unit loc_unit01 returns nothing
    local real loc_real01
    local real loc_real02
    if Func0056(GetOwningPlayer(loc_unit01))then
        set loc_real01=GetRectCenterX(rect011)
        set loc_real02=GetRectCenterY(rect011)
    else
        set loc_real01=GetRectCenterX(rect004)
        set loc_real02=GetRectCenterY(rect004)
    endif
    call IssuePointOrder(loc_unit01,"move",loc_real01,loc_real02)
endfunction

// 15966 ~ 15973
function Func0616 takes nothing returns nothing
    local item loc_item01=GetEnumItem()
    if GetWidgetLife(loc_item01)>0 and GetItemPlayer(loc_item01)==player012 and integer389==0 and IsItemVisible(loc_item01)==true then
        set integer389=integer389+1
        call UnitAddItem(unit244,loc_item01)
    endif
    set loc_item01=null
endfunction
