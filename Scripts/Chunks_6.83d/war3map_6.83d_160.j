
// 32193 ~ 32199
function Func1307 takes player loc_player01 returns string
    local string loc_string01=strings003[GetPlayerId(loc_player01)]
    if strings003[GetPlayerId(loc_player01)]!="Here"then
        return" |c00ff0303("+GetObjectName('n089')+" at "+SubString(loc_string01,10,StringLength(loc_string01))+"|c00ff0303)|r"
    endif
    return" "
endfunction

// 32201 ~ 32226
function Func1308 takes nothing returns nothing
    local integer loc_integer01=1
    local integer loc_integer02=5
    local integer loc_integer03
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,20," ")
    if(Func0057(GetTriggerPlayer())==true)then
        loop
            exitwhen loc_integer01>loc_integer02
            set loc_integer03=GetPlayerId(players003[loc_integer01])
            if(units001[loc_integer03]!=null)then
                call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,20,strings001[loc_integer03]+(strings005[GetPlayerId((players003[loc_integer01]))])+"|r "+GetObjectName('n08M')+" "+GetUnitName(units001[loc_integer03])+" ("+GetObjectName('n08L')+" "+I2S(GetUnitLevel(units001[loc_integer03]))+")"+Func1307(players003[loc_integer01]))
            endif
            set loc_integer01=loc_integer01+1
        endloop
    else
        loop
            exitwhen loc_integer01>loc_integer02
            set loc_integer03=GetPlayerId(players004[loc_integer01])
            if(units001[loc_integer03]!=null)then
                call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,20,strings001[loc_integer03]+(strings005[GetPlayerId((players004[loc_integer01]))])+"|r "+GetObjectName('n08M')+" "+GetUnitName(units001[loc_integer03])+" ("+GetObjectName('n08L')+" "+I2S(GetUnitLevel(units001[loc_integer03]))+")"+Func1307(players004[loc_integer01]))
            endif
            set loc_integer01=loc_integer01+1
        endloop
    endif
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,20," ")
endfunction

// 32228 ~ 32230
function Func1309 takes unit loc_unit01 returns boolean
    return GetUnitTypeId(loc_unit01)=='N01O' or GetUnitTypeId(loc_unit01)=='N013' or GetUnitTypeId(loc_unit01)=='N014' or GetUnitTypeId(loc_unit01)=='N015'
endfunction
