
// 34952 ~ 34973
function Func1421 takes integer loc_integer01,integer loc_integer02 returns string
    if loc_integer01<0 then
        set loc_integer01=0
    endif
    if TimerGetElapsed(timer001)<15 then
        return "|c00555555"+I2S(loc_integer01)
    endif
    if integer440==3 then
        return "|c00555555"+I2S(loc_integer01)
    endif
    if integer440==1 and loc_integer02!=Func1417()then
        return "|c00555555"+I2S(loc_integer01)
    elseif integer440==2 and loc_integer02!=Func1417()then
        return "|c00555555"+I2S(loc_integer01)
    elseif loc_integer01==0 then
        return "|c00555555"+I2S(loc_integer01)
    elseif loc_integer01<6 then
        return "|c00ff0303"+I2S(loc_integer01)
    else
        return I2S(loc_integer01)
    endif
endfunction

// 34975 ~ 35309
function Func1422 takes nothing returns boolean
    local multiboarditem loc_multiboarditem01
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04=7
    local integer loc_integer05=0
    set loc_integer02=1
    set loc_integer03=loc_integer05
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.5)
    call MultiboardSetItemValue(loc_multiboarditem01,strings001[GetPlayerId(players003[1])]+(strings005[GetPlayerId((players003[1]))])+"|r")
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer02=loc_integer02+2
    set loc_integer03=loc_integer05
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,"|c006699CC"+GetObjectName('n0EV'))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=0
    set loc_integer02=loc_integer02
    set loc_integer03=loc_integer05+loc_integer01+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers124[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers124[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=1
    set loc_integer03=loc_integer05+loc_integer01+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers124[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers124[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=2
    set loc_integer03=loc_integer05+loc_integer01+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers124[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers124[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=3
    set loc_integer03=loc_integer05+loc_integer01+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers124[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers124[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=4
    set loc_integer03=loc_integer05+loc_integer01+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers124[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers124[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer02=loc_integer02+2
    set loc_integer03=loc_integer05
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,"|c006699CC"+GetObjectName('n0EX'))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=0
    set loc_integer02=loc_integer02
    set loc_integer03=loc_integer05+loc_integer01+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers126[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers126[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=1
    set loc_integer03=loc_integer05+loc_integer01+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers126[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers126[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=2
    set loc_integer03=loc_integer05+loc_integer01+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers126[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers126[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=3
    set loc_integer03=loc_integer05+loc_integer01+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers126[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers126[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=4
    set loc_integer03=loc_integer05+loc_integer01+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers126[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers126[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer02=loc_integer02+2
    set loc_integer03=loc_integer05
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,"|c006699CC"+GetObjectName('n0EU'))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer03=loc_integer05+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    if player016==players003[1]then
        call MultiboardSetItemValue(loc_multiboarditem01,Func1421(integer438,1))
    else
        call MultiboardSetItemValue(loc_multiboarditem01," ")
    endif
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer02=loc_integer02+1
    set loc_integer03=loc_integer05
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,"|c006699CC"+GetObjectName('n0ET'))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer03=loc_integer05+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,Func1421(integers123[1],1))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer02=loc_integer02+2
    set loc_integer03=loc_integer05
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,"|c006699CC"+GetObjectName('n0EY'))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer03=loc_integer05+1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    if TimerGetElapsed(timer001)<15 then
        call MultiboardSetItemValue(loc_multiboarditem01,"|c00555555"+GetObjectName('n0F1'))
    elseif integer440==1 then
        call MultiboardSetItemValue(loc_multiboarditem01,GetObjectName('n0F4'))
    elseif integer440==2 then
        call MultiboardSetItemValue(loc_multiboarditem01,"|c00555555"+GetObjectName('n0F1'))
    else
        call MultiboardSetItemValue(loc_multiboarditem01,"|c00555555"+GetObjectName('n0F2'))
    endif
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer02=1
    set loc_integer03=loc_integer04
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemWidth(loc_multiboarditem01,1.5)
    call MultiboardSetItemValue(loc_multiboarditem01,"   "+strings001[GetPlayerId(players004[1])]+(strings005[GetPlayerId((players004[1]))])+"|r")
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer02=loc_integer02+2
    set loc_integer03=loc_integer04-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,"|c006699CC"+" "+GetObjectName('n0EV'))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=0
    set loc_integer03=loc_integer04+loc_integer01+1-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers125[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers125[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=1
    set loc_integer03=loc_integer04+loc_integer01+1-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers125[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers125[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=2
    set loc_integer03=loc_integer04+loc_integer01+1-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers125[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers125[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=3
    set loc_integer03=loc_integer04+loc_integer01+1-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers125[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers125[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=4
    set loc_integer03=loc_integer04+loc_integer01+1-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers125[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers125[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer02=loc_integer02+2
    set loc_integer03=loc_integer04-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,"|c006699CC"+" "+GetObjectName('n0EX'))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=0
    set loc_integer03=loc_integer04+loc_integer01+1-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers127[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers127[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=1
    set loc_integer03=loc_integer04+loc_integer01+1-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers127[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers127[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=2
    set loc_integer03=loc_integer04+loc_integer01+1-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers127[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers127[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=3
    set loc_integer03=loc_integer04+loc_integer01+1-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers127[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers127[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer01=4
    set loc_integer03=loc_integer04+loc_integer01+1-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
    if integers127[loc_integer01]>0 then
        call MultiboardSetItemStyle(loc_multiboarditem01,false,true)
        call MultiboardSetItemIcon(loc_multiboarditem01,strings006[integers127[loc_integer01]])
    endif
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer02=loc_integer02+2
    set loc_integer03=loc_integer04-2
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,"|c006699CC"+GetObjectName('n0EU'))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer03=loc_integer04-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    if player016==players004[1]then
        call MultiboardSetItemValue(loc_multiboarditem01,Func1421(integer438,2))
    else
        call MultiboardSetItemValue(loc_multiboarditem01," ")
    endif
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer02=loc_integer02+1
    set loc_integer03=loc_integer04-2
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,"|c006699CC"+GetObjectName('n0ET'))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer03=loc_integer04-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,Func1421(integers123[2],2))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer02=loc_integer02+2
    set loc_integer03=loc_integer04-2
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    call MultiboardSetItemValue(loc_multiboarditem01,"|c006699CC"+GetObjectName('n0EY'))
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_integer03=loc_integer04-1
    set loc_multiboarditem01=MultiboardGetItem(multiboard004,loc_integer02,loc_integer03)
    call MultiboardSetItemStyle(loc_multiboarditem01,true,false)
    if TimerGetElapsed(timer001)<15 then
        call MultiboardSetItemValue(loc_multiboarditem01,"|c00555555"+GetObjectName('n0F1'))
    elseif integer440==2 then
        call MultiboardSetItemValue(loc_multiboarditem01,GetObjectName('n0F4'))
    elseif integer440==1 then
        call MultiboardSetItemValue(loc_multiboarditem01,"|c00555555"+GetObjectName('n0F1'))
    else
        call MultiboardSetItemValue(loc_multiboarditem01,"|c00555555"+GetObjectName('n0F2'))
    endif
    call MultiboardSetItemWidth(loc_multiboarditem01,0.035)
    call MultiboardReleaseItem(loc_multiboarditem01)
    return false
endfunction

// 35311 ~ 35337
function Func1423 takes nothing returns nothing
    local integer loc_integer01=12
    local integer loc_integer02=14
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer03
    local multiboarditem loc_multiboarditem01
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1422))
    set multiboard004=CreateMultiboard()
    call MultiboardSetItemsWidth(multiboard004,0.015)
    call MultiboardSetRowCount(multiboard004,loc_integer01)
    call MultiboardSetColumnCount(multiboard004,loc_integer02)
    call MultiboardSetTitleText(multiboard004,GetObjectName('n0K6'))
    call MultiboardSetItemsStyle(multiboard004,false,false)
    call MultiboardMinimize(multiboard004,false)
    call MultiboardDisplay(multiboard004,true)
    set loc_integer03=0
    loop
        exitwhen loc_integer03>loc_integer02
        set loc_multiboarditem01=MultiboardGetItem(multiboard004,0,loc_integer03)
        call MultiboardSetItemWidth(loc_multiboarditem01,0.015)
        call MultiboardReleaseItem(loc_multiboarditem01)
        set loc_integer03=loc_integer03+1
    endloop
    set loc_trigger01=null
    set loc_multiboarditem01=null
endfunction
