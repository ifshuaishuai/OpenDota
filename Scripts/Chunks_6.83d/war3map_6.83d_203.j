
// 41300 ~ 41313
function Func1594 takes integer loc_integer01 returns boolean
    local region loc_region01=CreateRegion()
    local boolean loc_boolean01=false
    if Func0056(Player(loc_integer01))==true then
        call RegionAddRect(loc_region01,rect017)
    else
        call RegionAddRect(loc_region01,rect016)
    endif
    if IsUnitInRegion(loc_region01,units019[loc_integer01])and IsUnitInRegion(loc_region01,units020[loc_integer01])then
        set loc_boolean01=true
    endif
    call RemoveRegion(loc_region01)
    return loc_boolean01 or Func0194(units019[loc_integer01])or Func0194(units020[loc_integer01])
endfunction

// 41315 ~ 41342
function Func1595 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local player loc_player01=Player(loc_integer02)
    if loc_integer03==1 then
        call Func1584(loc_player01)
    elseif loc_integer03==2 then
        call Func1585(loc_player01)
    elseif loc_integer03==3 then
        if units001[loc_integer02]==units019[loc_integer02]then
            call Func1586(units019[loc_integer02])
            call Func1592(units019[loc_integer02],loc_integer02,loc_player01)
            call Func1593(units020[loc_integer02],loc_integer02,loc_player01)
            call Func1587(units019[loc_integer02],units020[loc_integer02])
        else
            call Func1586(units020[loc_integer02])
            call Func1592(units020[loc_integer02],loc_integer02,loc_player01)
            call Func1593(units019[loc_integer02],loc_integer02,loc_player01)
            call Func1587(units020[loc_integer02],units019[loc_integer02])
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    return false
endfunction

// 41344 ~ 41363
function Func1596 takes nothing returns boolean
    local integer loc_integer01=GetPlayerId(GetTriggerPlayer())
    local real loc_real01=(TimerGetElapsed(timer001))
    local trigger loc_trigger01
    local integer loc_integer02
    if(loc_real01-reals028[loc_integer01])<180 then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0MR')+": "+I2S(R2I(180-(loc_real01-reals028[loc_integer01]))))
    elseif Func1594(loc_integer01)==false then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0MS'))
    else
        set reals028[loc_integer01]=loc_real01
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1595))
        call SaveInteger(hashtable001,(loc_integer02),(34),(loc_integer01))
        set loc_trigger01=null
    endif
    return false
endfunction
