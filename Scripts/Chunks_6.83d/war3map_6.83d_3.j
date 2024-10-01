
// 3491 ~ 3511
function Func0083 takes player loc_player01,integer loc_integer01 returns nothing
    local texttag loc_texttag01
    if loc_integer01>0 then
        set integers081[GetPlayerId(loc_player01)]=integers081[GetPlayerId(loc_player01)]+loc_integer01
        set integers080[GetPlayerId(loc_player01)]=integers080[GetPlayerId(loc_player01)]+loc_integer01
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

// 3513 ~ 3551
function Func0084 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer loc_integer02
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local integer loc_integer03=0
    local integer loc_integer04
    if loc_integer01==1 then
        set loc_integer02=160
    elseif loc_integer01==2 then
        set loc_integer02=200
    elseif loc_integer01==3 then
        set loc_integer02=240
    elseif loc_integer01==4 then
        set loc_integer02=280
    endif
    if IsUnitAlly(GetDyingUnit(),loc_player01)then
        if loc_integer01==1 then
            set loc_integer02=80
        elseif loc_integer01==2 then
            set loc_integer02=100
        elseif loc_integer01==3 then
            set loc_integer02=120
        elseif loc_integer01==4 then
            set loc_integer02=140
        endif
    endif
    if GetOwningPlayer(GetDyingUnit())==players004[0]then
        call Func0083(players003[1],loc_integer02)
        call Func0083(players003[2],loc_integer02)
        call Func0083(players003[3],loc_integer02)
        call Func0083(players003[4],loc_integer02)
        call Func0083(players003[5],loc_integer02)
    else
        call Func0083(players004[1],loc_integer02)
        call Func0083(players004[2],loc_integer02)
        call Func0083(players004[3],loc_integer02)
        call Func0083(players004[4],loc_integer02)
        call Func0083(players004[5],loc_integer02)
    endif
endfunction

// 3553 ~ 3576
function Func0085 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer loc_integer02
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local integer loc_integer03=0
    local integer loc_integer04
    if loc_integer01==1 then
        set loc_integer02=100
    elseif loc_integer01==2 then
        set loc_integer02=175
    endif
    if GetOwningPlayer(GetDyingUnit())==players004[0]then
        call Func0083(players003[1],loc_integer02)
        call Func0083(players003[2],loc_integer02)
        call Func0083(players003[3],loc_integer02)
        call Func0083(players003[4],loc_integer02)
        call Func0083(players003[5],loc_integer02)
    else
        call Func0083(players004[1],loc_integer02)
        call Func0083(players004[2],loc_integer02)
        call Func0083(players004[3],loc_integer02)
        call Func0083(players004[4],loc_integer02)
        call Func0083(players004[5],loc_integer02)
    endif
endfunction
