
// 40872 ~ 40908
function Func1576 takes integer loc_integer01,integer loc_integer02,integer loc_integer03,integer loc_integer04,integer loc_integer05,integer loc_integer06,real loc_real01,real loc_real02,boolean loc_boolean01 returns nothing
    local integer loc_integer07=GetHandleId(GetTriggeringTrigger())
    local image loc_image01=(LoadImageHandle(hashtable001,(loc_integer07),(476+loc_integer01)))
    local image loc_image02=(LoadImageHandle(hashtable001,(loc_integer07),(484+loc_integer01)))
    if loc_image01!=null then
        call DestroyImage(loc_image01)
        call SaveImageHandle(hashtable001,(loc_integer07),(476+loc_integer01),(null))
        set loc_image01=null
    endif
    if loc_image02!=null then
        call DestroyImage(loc_image02)
        call SaveImageHandle(hashtable001,(loc_integer07),(484+loc_integer01),(null))
        set loc_image02=null
    endif
    if loc_boolean01==false or loc_integer02<1 then
        return
    endif
    if StringLength(I2S(loc_integer02))>1 then
        call Func1456("Fonts\\"+SubString(I2S(loc_integer02),0,1)+".blp",120,120,loc_real01-30,loc_real02,0,true)
        call SetImageColor(image001,loc_integer03,loc_integer04,loc_integer05,loc_integer06)
        set loc_image01=image001
        call Func1456("Fonts\\"+SubString(I2S(loc_integer02),1,2)+".blp",120,120,loc_real01+30,loc_real02,0,true)
        call SetImageColor(image001,loc_integer03,loc_integer04,loc_integer05,loc_integer06)
        set loc_image02=image001
    else
        call Func1456("Fonts\\0.blp",120,120,loc_real01-30,loc_real02,0,true)
        call SetImageColor(image001,loc_integer03,loc_integer04,loc_integer05,loc_integer06)
        set loc_image01=image001
        call Func1456("Fonts\\"+SubString(I2S(loc_integer02),0,1)+".blp",120,120,loc_real01+30,loc_real02,0,true)
        call SetImageColor(image001,loc_integer03,loc_integer04,loc_integer05,loc_integer06)
        set loc_image02=image001
    endif
    call SaveImageHandle(hashtable001,(loc_integer07),(476+loc_integer01),(loc_image01))
    call SaveImageHandle(hashtable001,(loc_integer07),(484+loc_integer01),(loc_image02))
    set loc_image01=null
    set loc_image02=null
endfunction

// 40910 ~ 40997
function Func1577 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=Func0030()
    local group loc_group02=Func0030()
    local integer loc_integer02
    local integer loc_integer03
    local real loc_real01
    local real loc_real02
    local rect loc_rect01
    local player loc_player01
    local player loc_player02
    local integer loc_integer04=0
    local integer loc_integer05
    local unit loc_unit01
    local real loc_real03
    local real loc_real04=(TimerGetElapsed(timer001))
    loop
        exitwhen loc_integer04>5
        set loc_rect01=(LoadRectHandle(hashtable001,(loc_integer01),(460+loc_integer04)))
        set loc_integer05=(LoadInteger(hashtable001,(loc_integer01),(492+loc_integer04)))
        set loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(452+loc_integer04)))
        set loc_player01=GetOwningPlayer(loc_unit01)
        set loc_player02=(LoadPlayerHandle(hashtable001,(loc_integer01),(468+loc_integer04)))
        set loc_real01=GetRectCenterX(loc_rect01)
        set loc_real02=GetRectCenterY(loc_rect01)
        call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func1573))
        call GroupEnumUnitsInRect(loc_group02,loc_rect01,Condition(function Func1574))
        set loc_integer02=CountUnitsInGroup(loc_group01)
        set loc_integer03=CountUnitsInGroup(loc_group02)
        if(loc_integer02>0 and loc_integer03>0)or(loc_integer02==0 and loc_integer03==0)then
            if loc_player01==player002 then
                set loc_player02=player002
                call SavePlayerHandle(hashtable001,(loc_integer01),(468+loc_integer04),(loc_player02))
            endif
            set loc_integer05=61
            call SaveInteger(hashtable001,(loc_integer01),(492+loc_integer04),(loc_integer05))
        elseif loc_integer02>0 and loc_integer03==0 then
            set loc_player02=players003[1]
            call SavePlayerHandle(hashtable001,(loc_integer01),(468+loc_integer04),(loc_player02))
            set loc_integer05=loc_integer05-loc_integer02
            call SaveInteger(hashtable001,(loc_integer01),(492+loc_integer04),(loc_integer05))
        elseif loc_integer03>0 and loc_integer02==0 then
            set loc_player02=players004[1]
            call SavePlayerHandle(hashtable001,(loc_integer01),(468+loc_integer04),(loc_player02))
            set loc_integer05=loc_integer05-loc_integer03
            call SaveInteger(hashtable001,(loc_integer01),(492+loc_integer04),(loc_integer05))
        endif
        if loc_player02==player002 and loc_player01!=player002 then
            call SetUnitColor(loc_unit01,GetPlayerColor(loc_player02))
            call SetUnitOwner(loc_unit01,loc_player02,false)
            call Func1576(loc_integer04,loc_integer05,255,0,0,255,loc_real01,loc_real02,false)
        elseif loc_player02==loc_player01 then
            call Func1576(loc_integer04,loc_integer05,255,0,0,255,loc_real01,loc_real02,false)
            set loc_integer05=61
            call SaveInteger(hashtable001,(loc_integer01),(492+loc_integer04),(loc_integer05))
        elseif loc_player02!=player002 then
            if loc_integer05<61 then
                call Func1576(loc_integer04,loc_integer05,255,0,0,255,loc_real01,loc_real02,true)
            else
                call Func1576(loc_integer04,loc_integer05,255,0,0,255,loc_real01,loc_real02,false)
            endif
            if loc_integer05<1 then
                call PingMinimapEx(loc_real01,loc_real02,2,255,255,255,false)
                call Func0119(loc_player02,"Sound\\Interface\\Rescue.wav")
                call SetUnitOwner(loc_unit01,loc_player02,false)
                set loc_integer05=61
                call SaveInteger(hashtable001,(loc_integer01),(492+loc_integer04),(loc_integer05))
                call SaveReal(hashtable001,(loc_integer01),(500+loc_integer04),((loc_real04)*1.0))
                if Func0056(loc_player02)then
                    call SetUnitColor(loc_unit01,GetPlayerColor(players003[0]))
                    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,"|c00ff0303The Sentinel now controls a Capture Point.|r")
                    call ForGroup(loc_group01,function Func1575)
                else
                    call SetUnitColor(loc_unit01,GetPlayerColor(players004[0]))
                    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,"|c00ff0303The Scourge now controls a Capture Point.|r")
                    call ForGroup(loc_group02,function Func1575)
                endif
            endif
        endif
        set loc_integer04=loc_integer04+1
    endloop
    call Func0029(loc_group01)
    call Func0029(loc_group02)
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 40999 ~ 41108
function Func1578 takes nothing returns boolean
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local fogmodifier loc_fogmodifier01
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1577))
    call PingMinimapEx(GetRectCenterX(rect207),GetRectCenterY(rect207),4,255,255,255,false)
    call PingMinimapEx(GetRectCenterX(rect209),GetRectCenterY(rect209),4,255,255,255,false)
    call PingMinimapEx(GetRectCenterX(rect211),GetRectCenterY(rect211),4,255,255,255,false)
    call PingMinimapEx(GetRectCenterX(rect208),GetRectCenterY(rect208),4,255,255,255,false)
    call PingMinimapEx(GetRectCenterX(rect210),GetRectCenterY(rect210),4,255,255,255,false)
    call PingMinimapEx(GetRectCenterX(rect212),GetRectCenterY(rect212),4,255,255,255,false)
    set unit256=CreateUnit(player002,'ncp2',GetRectCenterX(rect207),GetRectCenterY(rect207),0)
    set unit257=CreateUnit(player002,'ncp2',GetRectCenterX(rect209),GetRectCenterY(rect209),0)
    set unit258=CreateUnit(player002,'ncp2',GetRectCenterX(rect211),GetRectCenterY(rect211),0)
    set unit259=CreateUnit(player002,'ncp2',GetRectCenterX(rect208),GetRectCenterY(rect208),0)
    set unit260=CreateUnit(player002,'ncp2',GetRectCenterX(rect210),GetRectCenterY(rect210),0)
    set unit261=CreateUnit(player002,'ncp2',GetRectCenterX(rect212),GetRectCenterY(rect212),0)
    set loc_fogmodifier01=CreateFogModifierRadius(players003[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(rect207),GetRectCenterY(rect207),600,true,true)
    call FogModifierStart(loc_fogmodifier01)
    set loc_fogmodifier01=CreateFogModifierRadius(players004[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(rect207),GetRectCenterY(rect207),600,true,true)
    call FogModifierStart(loc_fogmodifier01)
    set loc_fogmodifier01=CreateFogModifierRadius(players003[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(rect209),GetRectCenterY(rect209),600,true,true)
    call FogModifierStart(loc_fogmodifier01)
    set loc_fogmodifier01=CreateFogModifierRadius(players004[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(rect209),GetRectCenterY(rect209),600,true,true)
    call FogModifierStart(loc_fogmodifier01)
    set loc_fogmodifier01=CreateFogModifierRadius(players003[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(rect211),GetRectCenterY(rect211),600,true,true)
    call FogModifierStart(loc_fogmodifier01)
    set loc_fogmodifier01=CreateFogModifierRadius(players004[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(rect211),GetRectCenterY(rect211),600,true,true)
    call FogModifierStart(loc_fogmodifier01)
    set loc_fogmodifier01=CreateFogModifierRadius(players003[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(rect208),GetRectCenterY(rect208),600,true,true)
    call FogModifierStart(loc_fogmodifier01)
    set loc_fogmodifier01=CreateFogModifierRadius(players004[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(rect208),GetRectCenterY(rect208),600,true,true)
    call FogModifierStart(loc_fogmodifier01)
    set loc_fogmodifier01=CreateFogModifierRadius(players003[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(rect210),GetRectCenterY(rect210),600,true,true)
    call FogModifierStart(loc_fogmodifier01)
    set loc_fogmodifier01=CreateFogModifierRadius(players004[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(rect210),GetRectCenterY(rect210),600,true,true)
    call FogModifierStart(loc_fogmodifier01)
    set loc_fogmodifier01=CreateFogModifierRadius(players003[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(rect212),GetRectCenterY(rect212),600,true,true)
    call FogModifierStart(loc_fogmodifier01)
    set loc_fogmodifier01=CreateFogModifierRadius(players004[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(rect212),GetRectCenterY(rect212),600,true,true)
    call FogModifierStart(loc_fogmodifier01)
    call Func0172("Speed",unit256,255,233,12)
    call Func0172("Speed",unit259,255,233,12)
    call Func0172("Combat",unit257,255,233,12)
    call Func0172("Combat",unit260,255,233,12)
    call Func0172("Regen",unit258,255,233,12)
    call Func0172("Regen",unit261,255,233,12)
    call UnitAddAbility(unit256,'S00O')
    call UnitAddAbility(unit259,'S00R')
    call UnitAddAbility(unit257,'A1PO')
    call UnitAddAbility(unit257,'A1PL')
    call UnitAddAbility(unit260,'A1PN')
    call UnitAddAbility(unit260,'A1PJ')
    call UnitAddAbility(unit258,'A1PV')
    call UnitAddAbility(unit258,'A1PF')
    call UnitAddAbility(unit261,'A1PD')
    call UnitAddAbility(unit261,'A1PE')
    set real259=61
    set real260=61
    set real261=61
    set real262=61
    set real263=61
    set real264=61
    call SaveUnitHandle(hashtable001,(loc_integer01),(452),(unit256))
    call SaveUnitHandle(hashtable001,(loc_integer01),(453),(unit257))
    call SaveUnitHandle(hashtable001,(loc_integer01),(454),(unit258))
    call SaveUnitHandle(hashtable001,(loc_integer01),(455),(unit259))
    call SaveUnitHandle(hashtable001,(loc_integer01),(456),(unit260))
    call SaveUnitHandle(hashtable001,(loc_integer01),(457),(unit261))
    call SaveReal(hashtable001,(loc_integer01),(500),((-1)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(501),((-1)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(502),((-1)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(503),((-1)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(504),((-1)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(505),((-1)*1.0))
    call SaveRectHandle(hashtable001,(loc_integer01),(460),(rect207))
    call SaveRectHandle(hashtable001,(loc_integer01),(461),(rect209))
    call SaveRectHandle(hashtable001,(loc_integer01),(462),(rect211))
    call SaveRectHandle(hashtable001,(loc_integer01),(463),(rect208))
    call SaveRectHandle(hashtable001,(loc_integer01),(464),(rect210))
    call SaveRectHandle(hashtable001,(loc_integer01),(465),(rect212))
    call SavePlayerHandle(hashtable001,(loc_integer01),(468),(player002))
    call SavePlayerHandle(hashtable001,(loc_integer01),(469),(player002))
    call SavePlayerHandle(hashtable001,(loc_integer01),(470),(player002))
    call SavePlayerHandle(hashtable001,(loc_integer01),(471),(player002))
    call SavePlayerHandle(hashtable001,(loc_integer01),(472),(player002))
    call SavePlayerHandle(hashtable001,(loc_integer01),(473),(player002))
    call SaveInteger(hashtable001,(loc_integer01),(492),(61))
    call SaveInteger(hashtable001,(loc_integer01),(493),(61))
    call SaveInteger(hashtable001,(loc_integer01),(494),(61))
    call SaveInteger(hashtable001,(loc_integer01),(495),(61))
    call SaveInteger(hashtable001,(loc_integer01),(496),(61))
    call SaveInteger(hashtable001,(loc_integer01),(497),(61))
    call SaveImageHandle(hashtable001,(loc_integer01),(476),(null))
    call SaveImageHandle(hashtable001,(loc_integer01),(484),(null))
    call SaveImageHandle(hashtable001,(loc_integer01),(477),(null))
    call SaveImageHandle(hashtable001,(loc_integer01),(485),(null))
    call SaveImageHandle(hashtable001,(loc_integer01),(478),(null))
    call SaveImageHandle(hashtable001,(loc_integer01),(486),(null))
    call SaveImageHandle(hashtable001,(loc_integer01),(479),(null))
    call SaveImageHandle(hashtable001,(loc_integer01),(487),(null))
    call SaveImageHandle(hashtable001,(loc_integer01),(480),(null))
    call SaveImageHandle(hashtable001,(loc_integer01),(488),(null))
    call SaveImageHandle(hashtable001,(loc_integer01),(481),(null))
    call SaveImageHandle(hashtable001,(loc_integer01),(489),(null))
    call Func0035(GetTriggeringTrigger())
    set loc_trigger01=null
    return false
endfunction

// 41110 ~ 41118
function Func1579 takes nothing returns nothing
    local trigger loc_trigger01
    if boolean133 then
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,600,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1578))
        set loc_trigger01=null
    endif
endfunction
