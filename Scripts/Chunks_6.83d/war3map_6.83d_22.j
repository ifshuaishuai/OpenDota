
// 7568 ~ 7577
function Func0431 takes integer loc_integer01 returns integer
    local real loc_real01=TimerGetElapsed(timer001)-real001
    local real loc_real02=(R2I(loc_real01)/60)-(1/2)
    local real loc_real03=100+loc_integer01*loc_integer01*1.5+loc_real02*15
    local integer loc_integer02
    set loc_integer02=R2I(loc_real03/50)
    set loc_integer02=IMinBJ(loc_integer02,59)
    set loc_integer02=IMaxBJ(loc_integer02,0)
    return loc_integer02
endfunction

// 7579 ~ 7600
function Func0432 takes player loc_player01 returns nothing
    local integer loc_integer01=GetPlayerId(loc_player01)
    local unit loc_unit01=units006[loc_integer01]
    local unit loc_unit02=units001[loc_integer01]
    local integer loc_integer02=GetHeroLevel(loc_unit02)
    local integer loc_integer03=0
    loop
        exitwhen loc_integer03>59
        call RemoveUnitFromStock(loc_unit01,integers063[loc_integer03])
        set loc_integer03=loc_integer03+1
    endloop
    if boolean003==true then
        return
    endif
    if boolean091==false then
        return
    endif
    call AddUnitToStock(loc_unit01,integers063[Func0431(loc_integer02)],1,1)
    set integers064[loc_integer01]=integers063[Func0431(loc_integer02)]
    set loc_unit02=null
    set loc_unit01=null
endfunction

// 7602 ~ 7624
function Func0433 takes player loc_player01 returns nothing
    local integer loc_integer01=GetPlayerId(loc_player01)
    local unit loc_unit01=units006[loc_integer01]
    local unit loc_unit02=units001[loc_integer01]
    local integer loc_integer02=GetHeroLevel(loc_unit02)
    local integer loc_integer03=0
    if boolean003==true then
        return
    endif
    if boolean091==false then
        return
    endif
    if integers064[loc_integer01]=='h0D4' then
        return
    endif
    if integers064[loc_integer01]!=0 then
        call RemoveUnitFromStock(loc_unit01,integers064[loc_integer01])
    endif
    call AddUnitToStock(loc_unit01,integers063[Func0431(loc_integer02)],1,1)
    set integers064[loc_integer01]=integers063[Func0431(loc_integer02)]
    set loc_unit02=null
    set loc_unit01=null
endfunction

// 7626 ~ 7641
function Func0434 takes nothing returns boolean
    if boolean003==true then
        return false
    endif
    call Func0433(players003[1])
    call Func0433(players003[2])
    call Func0433(players003[3])
    call Func0433(players003[4])
    call Func0433(players003[5])
    call Func0433(players004[1])
    call Func0433(players004[2])
    call Func0433(players004[3])
    call Func0433(players004[4])
    call Func0433(players004[5])
    return false
endfunction

// 7643 ~ 7659
function Func0435 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local unit loc_unit01=units006[loc_integer02]
    local unit loc_unit02=units001[loc_integer02]
    local integer loc_integer03=GetHeroLevel(loc_unit02)
    local integer loc_integer04=0
    call RemoveUnitFromStock(loc_unit01,'h0D4')
    call AddUnitToStock(loc_unit01,integers063[Func0431(loc_integer03)],1,1)
    set integers064[loc_integer02]=integers063[Func0431(loc_integer03)]
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit02=null
    return false
endfunction

// 7661 ~ 7684
function Func0436 takes player loc_player01 returns nothing
    local integer loc_integer01=GetPlayerId(loc_player01)
    local unit loc_unit01=units006[loc_integer01]
    local unit loc_unit02=units001[loc_integer01]
    local integer loc_integer02=GetHeroLevel(loc_unit02)
    local integer loc_integer03=0
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer04=GetHandleId(loc_trigger01)
    call Func0429(loc_unit02)
    loop
        exitwhen loc_integer03>59
        call RemoveUnitFromStock(loc_unit01,integers063[loc_integer03])
        set loc_integer03=loc_integer03+1
    endloop
    call TriggerAddCondition(loc_trigger01,Condition(function Func0435))
    call TriggerRegisterTimerEvent(loc_trigger01,360,false)
    call SaveInteger(hashtable001,(loc_integer04),(34),(loc_integer01))
    set integers064[loc_integer01]='h0D4'
    call RemoveUnitFromStock(loc_unit01,'h0D4')
    call AddUnitToStock(loc_unit01,'h0D4',0,1)
    set loc_unit02=null
    set loc_unit01=null
    set loc_trigger01=null
endfunction
