
// 30670 ~ 30707
function Func1246 takes nothing returns boolean
    local integer loc_integer01=1
    local unit loc_unit01
    loop
        exitwhen loc_integer01>5
        set loc_unit01=units001[GetPlayerId(players003[loc_integer01])]
        if loc_unit01!=null and Func0194(loc_unit01)==false and IsUnitEnemy(loc_unit01,GetLocalPlayer())==true then
            if boolean099 and(boolean025==false or(boolean025==true and(GetLocalPlayer()==player009 or GetLocalPlayer()==player010)))then
                if IsUnitVisible(loc_unit01,GetLocalPlayer())==false then
                    if integer026==2 then
                        call Func0413(loc_unit01)
                    endif
                else
                    if integer026==2 then
                        call Func0412(loc_unit01)
                    endif
                endif
            endif
        endif
        set loc_unit01=units001[GetPlayerId(players004[loc_integer01])]
        if loc_unit01!=null and Func0194(loc_unit01)==false and IsUnitEnemy(loc_unit01,GetLocalPlayer())==true then
            if boolean099 and(boolean025==false or(boolean025==true and(GetLocalPlayer()==player009 or GetLocalPlayer()==player010)))then
                if IsUnitVisible(loc_unit01,GetLocalPlayer())==false then
                    if integer026==2 then
                        call Func0413(loc_unit01)
                    endif
                else
                    if integer026==2 then
                        call Func0412(loc_unit01)
                    endif
                endif
            endif
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
    return false
endfunction

// 30709 ~ 30714
function Func1247 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1246))
    set loc_trigger01=null
endfunction

// 30716 ~ 30719
function Func1248 takes nothing returns nothing
    call Func1245()
    call Func1247()
endfunction
