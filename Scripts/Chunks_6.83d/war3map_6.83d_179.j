
// 36425 ~ 36429
function Func1456 takes string loc_string01,real loc_real01,real loc_real02,real loc_real03,real loc_real04,real loc_real05,boolean loc_boolean01 returns nothing
    set image001=CreateImage(loc_string01,loc_real01,loc_real02,0,loc_real03-(loc_real01/2),loc_real04-(loc_real02/2),loc_real05,0,0,0,2)
    call SetImageRenderAlways(image001,true)
    call ShowImage(image001,loc_boolean01)
endfunction

// 36431 ~ 36447
function Func1457 takes integer loc_integer01,integer loc_integer02,integer loc_integer03,integer loc_integer04,integer loc_integer05,real loc_real01,real loc_real02,integer loc_integer06 returns nothing
    if StringLength(I2S(loc_integer01))>1 then
        call Func1456("Fonts\\"+SubString(I2S(loc_integer01),0,1)+".blp",90,90,loc_real01-20,loc_real02,0,true)
        call SetImageColor(image001,loc_integer02,loc_integer03,loc_integer04,loc_integer05)
        call SaveImageHandle(hashtable001,(loc_integer06),(158),(image001))
        call Func1456("Fonts\\"+SubString(I2S(loc_integer01),1,2)+".blp",90,90,loc_real01+20,loc_real02,0,true)
        call SetImageColor(image001,loc_integer02,loc_integer03,loc_integer04,loc_integer05)
        call SaveImageHandle(hashtable001,(loc_integer06),(159),(image001))
    else
        call Func1456("Fonts\\0.blp",90,90,loc_real01-20,loc_real02,0,true)
        call SetImageColor(image001,loc_integer02,loc_integer03,loc_integer04,loc_integer05)
        call SaveImageHandle(hashtable001,(loc_integer06),(158),(image001))
        call Func1456("Fonts\\"+SubString(I2S(loc_integer01),0,1)+".blp",90,90,loc_real01+20,loc_real02,0,true)
        call SetImageColor(image001,loc_integer02,loc_integer03,loc_integer04,loc_integer05)
        call SaveImageHandle(hashtable001,(loc_integer06),(159),(image001))
    endif
endfunction

// 36449 ~ 36497
function Func1458 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(57)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer04=loc_integer02-loc_integer03
    local image loc_image01=(LoadImageHandle(hashtable001,(loc_integer01),(158)))
    local image loc_image02=(LoadImageHandle(hashtable001,(loc_integer01),(159)))
    local integer loc_integer05
    local integer loc_integer06
    local integer loc_integer07
    local integer loc_integer08
    if loc_integer03>0 then
        call ShowImage(loc_image01,false)
        call DestroyImage(loc_image01)
        call ShowImage(loc_image02,false)
        call DestroyImage(loc_image02)
    endif
    if loc_integer03==loc_integer02 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if loc_integer04<6 then
            set loc_integer05=255
            set loc_integer06=0
            set loc_integer07=0
        elseif GetLocalPlayer()==player019 or GetLocalPlayer()==player020 then
            set loc_integer05=integers067[GetPlayerId(GetLocalPlayer())]
            set loc_integer06=integers068[GetPlayerId(GetLocalPlayer())]
            set loc_integer07=integers069[GetPlayerId(GetLocalPlayer())]
        else
            set loc_integer05=255
            set loc_integer06=255
            set loc_integer07=255
        endif
        if IsPlayerAlly(player019,GetLocalPlayer())then
            set loc_integer08=255
        else
            set loc_integer08=125
        endif
        call Func1457(loc_integer04,loc_integer05,loc_integer06,loc_integer07,loc_integer08,loc_real01,loc_real02,loc_integer01)
    endif
    set loc_trigger01=null
    set loc_image01=null
    set loc_image02=null
    return false
endfunction

// 36499 ~ 36509
function Func1459 takes integer loc_integer01,real loc_real01,real loc_real02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1458))
    call SaveInteger(hashtable001,(loc_integer02),(57),(loc_integer01))
    call SaveReal(hashtable001,(loc_integer02),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((loc_real02)*1.0))
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
endfunction

// 36511 ~ 36536
function Func1460 takes integer loc_integer01,real loc_real01,real loc_real02,integer loc_integer02 returns nothing
    call Func1456("Fonts\\Y.blp",90,90,loc_real01-150,loc_real02,0,true)
    call SetImageColor(image001,255,0,0,loc_integer01)
    call SaveImageHandle(hashtable001,(loc_integer02),(158),(image001))
    call Func1456("Fonts\\O.blp",90,90,loc_real01-110,loc_real02,0,true)
    call SetImageColor(image001,255,0,0,loc_integer01)
    call SaveImageHandle(hashtable001,(loc_integer02),(159),(image001))
    call Func1456("Fonts\\U.blp",90,90,loc_real01-70,loc_real02,0,true)
    call SetImageColor(image001,255,0,0,loc_integer01)
    call SaveImageHandle(hashtable001,(loc_integer02),(160),(image001))
    call Func1456("Fonts\\R.blp",90,90,loc_real01-30,loc_real02,0,true)
    call SetImageColor(image001,255,0,0,loc_integer01)
    call SaveImageHandle(hashtable001,(loc_integer02),(161),(image001))
    call Func1456("Fonts\\T.blp",90,90,loc_real01+30,loc_real02,0,true)
    call SetImageColor(image001,255,0,0,loc_integer01)
    call SaveImageHandle(hashtable001,(loc_integer02),(162),(image001))
    call Func1456("Fonts\\U.blp",90,90,loc_real01+70,loc_real02,0,true)
    call SetImageColor(image001,255,0,0,loc_integer01)
    call SaveImageHandle(hashtable001,(loc_integer02),(163),(image001))
    call Func1456("Fonts\\R.blp",90,90,loc_real01+110,loc_real02,0,true)
    call SetImageColor(image001,255,0,0,loc_integer01)
    call SaveImageHandle(hashtable001,(loc_integer02),(164),(image001))
    call Func1456("Fonts\\N.blp",90,90,loc_real01+150,loc_real02,0,true)
    call SetImageColor(image001,255,0,0,loc_integer01)
    call SaveImageHandle(hashtable001,(loc_integer02),(165),(image001))
endfunction

// 36538 ~ 36604
function Func1461 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01
    local real loc_real02
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local image loc_image01=(LoadImageHandle(hashtable001,(loc_integer01),(158)))
    local image loc_image02=(LoadImageHandle(hashtable001,(loc_integer01),(159)))
    local image loc_image03=(LoadImageHandle(hashtable001,(loc_integer01),(160)))
    local image loc_image04=(LoadImageHandle(hashtable001,(loc_integer01),(161)))
    local image loc_image05=(LoadImageHandle(hashtable001,(loc_integer01),(162)))
    local image loc_image06=(LoadImageHandle(hashtable001,(loc_integer01),(163)))
    local image loc_image07=(LoadImageHandle(hashtable001,(loc_integer01),(164)))
    local image loc_image08=(LoadImageHandle(hashtable001,(loc_integer01),(165)))
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05
    local integer loc_integer06
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    if Func0056(loc_player01)then
        set loc_real01=real251
        set loc_real02=real252+250
    else
        set loc_real01=real253
        set loc_real02=real254+250
    endif
    if loc_integer02>0 then
        call ShowImage(loc_image01,false)
        call DestroyImage(loc_image01)
        call ShowImage(loc_image02,false)
        call DestroyImage(loc_image02)
        call ShowImage(loc_image03,false)
        call DestroyImage(loc_image03)
        call ShowImage(loc_image04,false)
        call DestroyImage(loc_image04)
        call ShowImage(loc_image05,false)
        call DestroyImage(loc_image05)
        call ShowImage(loc_image06,false)
        call DestroyImage(loc_image06)
        call ShowImage(loc_image07,false)
        call DestroyImage(loc_image07)
        call ShowImage(loc_image08,false)
        call DestroyImage(loc_image08)
    endif
    if loc_integer02==20 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if GetLocalPlayer()==player019 or GetLocalPlayer()==player020 then
            set loc_integer06=255
        else
            set loc_integer06=0
        endif
        call Func1460(loc_integer06,loc_real01,loc_real02,loc_integer01)
    endif
    set loc_trigger01=null
    set loc_image01=null
    set loc_image02=null
    set loc_image03=null
    set loc_image04=null
    set loc_image05=null
    set loc_image06=null
    set loc_image07=null
    set loc_image08=null
    set loc_player01=null
    return false
endfunction

// 36606 ~ 36614
function Func1462 takes player loc_player01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1461))
    call SavePlayerHandle(hashtable001,(loc_integer01),(54),(loc_player01))
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
endfunction
