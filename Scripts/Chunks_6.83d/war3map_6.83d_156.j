
// 31924 ~ 31960
function Func1293 takes nothing returns nothing
    local integer loc_integer01
    local player loc_player01
    local unit loc_unit01
    local string loc_string01
    if GetLocalPlayer()==GetTriggerPlayer()then
        call ClearTextMessages()
    endif
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,45,"|cff99ccff"+GetObjectName('n08B')+"|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,45," ")
    set loc_integer01=1
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        set loc_unit01=units001[GetPlayerId(loc_player01)]
        if IsPlayerAlly(GetTriggerPlayer(),loc_player01)and GetTriggerPlayer()!=loc_player01 and loc_unit01!=null and GetOwningPlayer(loc_unit01)==loc_player01 then
            set loc_string01=" "
            if Func1288(units001[GetPlayerId(GetTriggerPlayer())],loc_unit01)then
                set loc_string01=" |c00ff0303("+GetObjectName('n085')+")|r"
            endif
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,45,strings001[GetPlayerId(loc_player01)]+I2S(loc_integer01)+"|r"+" - "+"|cff99ccff"+GetUnitName(loc_unit01)+"|r"+loc_string01)
        endif
        set loc_player01=players004[loc_integer01]
        set loc_unit01=units001[GetPlayerId(loc_player01)]
        if IsPlayerAlly(GetTriggerPlayer(),loc_player01)and GetTriggerPlayer()!=loc_player01 and loc_unit01!=null and GetOwningPlayer(loc_unit01)==loc_player01 then
            set loc_string01=" "
            if Func1288(units001[GetPlayerId(GetTriggerPlayer())],loc_unit01)then
                set loc_string01=" |c00ff0303("+GetObjectName('n085')+")|r"
            endif
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,45,strings001[GetPlayerId(loc_player01)]+I2S(loc_integer01)+"|r"+" - "+"|cff99ccff"+GetUnitName(loc_unit01)+"|r"+loc_string01)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,45," ")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,45,"|cff99ccff"+GetObjectName('n083')+"|r |c00ff0303-swap #|r |cff99ccff"+GetObjectName('n086')+" -swapcancel "+GetObjectName('n087')+"|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,45," ")
endfunction
