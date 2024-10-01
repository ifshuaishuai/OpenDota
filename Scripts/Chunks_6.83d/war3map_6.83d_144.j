
// 30590 ~ 30596
function Func1241 takes nothing returns boolean
    if Func0496(GetTriggerUnit())and IsUnitIllusion(GetTriggerUnit())==false then
        call Func0433(GetOwningPlayer(GetTriggerUnit()))
        call Func0415("Level"+I2S(GetHeroLevel(GetTriggerUnit())),GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
    endif
    return false
endfunction

// 30598 ~ 30603
function Func1242 takes nothing returns nothing
    if boolean104==false then
        call Func1236()
        call Func0035(GetTriggeringTrigger())
    endif
endfunction

// 30605 ~ 30610
function Func1243 takes nothing returns boolean
    if boolean002==false and(bj_isSinglePlayer and Func1210())==false then
        call Func1242()
    endif
    return false
endfunction

// 30612 ~ 30654
function Func1244 takes nothing returns boolean
    local integer loc_integer01=0
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local boolean loc_boolean01
    loop
        exitwhen loc_integer01>11
        if GetLocalPlayer()==Player(loc_integer01)then
            set loc_real01=GetCameraTargetPositionX()
            set loc_real02=GetCameraTargetPositionY()
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=0
    call PauseGame(true)
    call TriggerSleepAction(0)
    loop
        exitwhen loc_integer01>11
        if GetLocalPlayer()==Player(loc_integer01)then
            call SetCameraPosition(loc_real01+1,loc_real02+1)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    call TriggerSleepAction(0)
    call PauseGame(false)
    set loc_integer01=0
    loop
        exitwhen loc_integer01>11
        if GetLocalPlayer()==Player(loc_integer01)then
            set loc_real03=GetCameraTargetPositionX()
            if loc_real03==loc_real01+1 then
                set loc_boolean01=false
            else
                set loc_boolean01=true
            endif
            call SetCameraPosition(loc_real01,loc_real02)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return loc_boolean01
endfunction

// 30656 ~ 30668
function Func1245 takes nothing returns nothing
    call CinematicModeBJ(true,bj_FORCE_ALL_PLAYERS)
    call PauseGame(false)
    call TriggerSleepAction(.0)
    call EnableUserControl(false)
    call TriggerSleepAction(.0)
    if Func1244()==false then
        set boolean099=true
    endif
    call EnableUserControl(true)
    call Func0001(1)
    call CinematicModeBJ(false,bj_FORCE_ALL_PLAYERS)
endfunction
