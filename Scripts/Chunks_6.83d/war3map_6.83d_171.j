
// 34088 ~ 34092
function Func1403 takes nothing returns nothing
    if GetTriggerPlayer()==GetLocalPlayer()and(GetDestructableTypeId(GetEnumDestructable())=='ATtr' or GetDestructableTypeId(GetEnumDestructable())=='B002')then
        call SetDestructableAnimation(GetEnumDestructable(),"stand")
    endif
endfunction

// 34094 ~ 34111
function Func1404 takes integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    if loc_integer01==1 then
        call EnumDestructablesInRectAll(GetWorldBounds(),function Func1402)
    else
        call EnumDestructablesInRectAll(GetWorldBounds(),function Func1403)
    endif
    set integers050[GetPlayerId(GetTriggerPlayer())]=loc_integer01
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1401))
    call SaveInteger(hashtable001,(loc_integer02),(152),(loc_integer01))
    call SaveReal(hashtable001,(loc_integer02),(149),((0)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(150),((0)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(151),((160)*1.0))
    call SavePlayerHandle(hashtable001,(loc_integer02),(54),(GetTriggerPlayer()))
    set loc_trigger01=null
endfunction

// 34113 ~ 34138
function Func1405 takes nothing returns nothing
    if booleans011[GetPlayerId(GetTriggerPlayer())]==false then
        set integers041[GetPlayerId(GetTriggerPlayer())]=integers041[GetPlayerId(GetTriggerPlayer())]+1
        if integers041[GetPlayerId(GetTriggerPlayer())]<9 then
            if GetEventPlayerChatString()=="-terrain"or GetEventPlayerChatString()=="-terrain default"then
                call Func1404(0)
            elseif GetEventPlayerChatString()=="-terrain snow"then
                call Func1404(1)
            elseif GetEventPlayerChatString()=="-terrain city1"then
                call Func1404(2)
            elseif GetEventPlayerChatString()=="-terrain city2"then
                call Func1404(3)
            elseif GetEventPlayerChatString()=="-terrain jungle"then
                call Func1404(4)
            elseif GetEventPlayerChatString()=="-terrain highlands"then
                call Func1404(5)
            elseif GetEventPlayerChatString()=="-terrain reddungeon"then
                call Func1404(6)
            elseif GetEventPlayerChatString()=="-terrain bluedungeon"then
                call Func1404(7)
            endif
        else
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName('n0GL'))
        endif
    endif
endfunction
