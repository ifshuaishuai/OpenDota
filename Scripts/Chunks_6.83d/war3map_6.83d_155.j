
// 31855 ~ 31865
function Func1290 takes player loc_player01 returns integer
    local integer loc_integer01=1
    loop
        exitwhen loc_integer01>5
        if players003[loc_integer01]==loc_player01 or players004[loc_integer01]==loc_player01 then
            return loc_integer01
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return-1
endfunction

// 31867 ~ 31883
function Func1291 takes unit loc_unit01,unit loc_unit02,boolean loc_boolean01 returns boolean
    call SaveBoolean(hashtable001,(800+GetPlayerId(GetOwningPlayer(loc_unit01))),(GetUnitTypeId(loc_unit01)+GetUnitTypeId(loc_unit02)),(true))
    if Func1288(loc_unit01,loc_unit02)then
        call Func1287(loc_unit01,loc_unit02)
        return true
    else
        call DisplayTimedTextToPlayer(GetOwningPlayer(loc_unit02),0,real003,30,"  ")
        call DisplayTimedTextToPlayer(GetOwningPlayer(loc_unit02),0,real003,30,"                         "+strings001[GetPlayerId(GetOwningPlayer(loc_unit01))]+GetUnitName(loc_unit01)+"|r |cff99ccff"+GetObjectName('n082')+" "+GetObjectName('n083')+"|r |c00ff0303-swap "+I2S(Func1290(GetOwningPlayer(loc_unit01)))+"|r |cff99ccff"+GetObjectName('n081')+"|r")
        call DisplayTimedTextToPlayer(GetOwningPlayer(loc_unit02),0,real003,30,"  ")
        if loc_boolean01 then
            call DisplayTimedTextToPlayer(GetOwningPlayer(loc_unit01),0,real003,30,"  ")
            call DisplayTimedTextToPlayer(GetOwningPlayer(loc_unit01),0,real003,30,"|cff99ccff"+GetObjectName('n08C')+" |r"+strings001[GetPlayerId(GetOwningPlayer(loc_unit02))]+GetUnitName(loc_unit02)+"|r")
            call DisplayTimedTextToPlayer(GetOwningPlayer(loc_unit01),0,real003,30,"  ")
        endif
    endif
    return false
endfunction

// 31885 ~ 31922
function Func1292 takes nothing returns nothing
    local integer loc_integer01=S2I(SubString(GetEventPlayerChatString(),6,StringLength(GetEventPlayerChatString())))
    if GetEventPlayerChatString()=="-swapall"then
        set loc_integer01=1
        set unit125=units001[GetPlayerId(GetTriggerPlayer())]
        loop
            exitwhen loc_integer01>5
            if Func0056(GetTriggerPlayer())then
                set player005=players003[loc_integer01]
            else
                set player005=players004[loc_integer01]
            endif
            set unit124=units001[GetPlayerId(player005)]
            if not(unit125==null or GetOwningPlayer(unit125)!=GetTriggerPlayer()or unit124==null or GetOwningPlayer(unit124)!=player005 or player005==GetTriggerPlayer())then
                if Func1291(unit125,unit124,false)then
                    return
                endif
            endif
            set loc_integer01=loc_integer01+1
        endloop
        return
    elseif loc_integer01<1 or loc_integer01>5 then
        call Func0120(GetTriggerPlayer(),GetObjectName('n02Z'))
        return
    endif
    set unit125=units001[GetPlayerId(GetTriggerPlayer())]
    if Func0056(GetTriggerPlayer())then
        set player005=players003[loc_integer01]
    else
        set player005=players004[loc_integer01]
    endif
    set unit124=units001[GetPlayerId(player005)]
    if unit125==null or GetOwningPlayer(unit125)!=GetTriggerPlayer()or unit124==null or GetOwningPlayer(unit124)!=player005 or player005==GetTriggerPlayer()then
        call Func0120(GetTriggerPlayer(),GetObjectName('n02Z'))
        return
    endif
    call Func1291(unit125,unit124,true)
endfunction
