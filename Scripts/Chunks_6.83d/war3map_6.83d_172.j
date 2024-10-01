
// 34140 ~ 34193
function Func1406 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(149)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(150)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(151)))
    local real loc_real04=128
    local real loc_real05
    local real loc_real06
    loop
        exitwhen loc_real01>loc_real03
        loop
            exitwhen loc_real02>8192
            set integer029=integer029+1
            set loc_real05=loc_real01
            set loc_real06=loc_real02
            if IsPointBlighted(loc_real05,loc_real06)==false then
                set integers042[integer029]=GetTerrainType(loc_real05,loc_real06)
                set integers046[integer029]=GetTerrainVariance(loc_real05,loc_real06)
            endif
            set loc_real05=-loc_real01
            set loc_real06=loc_real02
            if IsPointBlighted(loc_real05,loc_real06)==false then
                set integers043[integer029]=GetTerrainType(loc_real05,loc_real06)
                set integers047[integer029]=GetTerrainVariance(loc_real05,loc_real06)
            endif
            set loc_real05=-loc_real01
            set loc_real06=-loc_real02
            if IsPointBlighted(loc_real05,loc_real06)==false then
                set integers044[integer029]=GetTerrainType(loc_real05,loc_real06)
                set integers048[integer029]=GetTerrainVariance(loc_real05,loc_real06)
            endif
            set loc_real05=loc_real01
            set loc_real06=-loc_real02
            if IsPointBlighted(loc_real05,loc_real06)==false then
                set integers045[integer029]=GetTerrainType(loc_real05,loc_real06)
                set integers049[integer029]=GetTerrainVariance(loc_real05,loc_real06)
            endif
            set loc_real02=loc_real02+loc_real04
        endloop
        set loc_real02=0
        set loc_real01=loc_real01+loc_real04
    endloop
    set loc_real03=loc_real03+256
    call SaveReal(hashtable001,(loc_integer01),(149),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(150),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(151),((loc_real03)*1.0))
    if loc_real03>8192 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    return false
endfunction

// 34195 ~ 34207
function Func1407 takes nothing returns nothing
    local trigger loc_trigger01
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1153))
    set timer003=CreateTimer()
    call TimerStart(timer003,integer027+1,false,null)
    call RemoveUnitFromStock(unit134,'h02C')
    call AddUnitToStock(unit134,'h02C',1,2)
    call RemoveUnitFromStock(unit178,'h02C')
    call AddUnitToStock(unit178,'h02C',1,2)
    set loc_trigger01=null
endfunction

// 34209 ~ 34216
function Func1408 takes string loc_string01 returns boolean
    if loc_string01=="-ma"or loc_string01=="-ms"or loc_string01=="-cs"or loc_string01=="-cson"or loc_string01=="-disablehelp"or loc_string01=="-enablehelp"or loc_string01=="-unstuck"or loc_string01=="-recreate"then
        return true
    elseif loc_string01=="-swaphero"or loc_string01=="-showmsg"or loc_string01=="-hidemsg"or loc_string01=="-showdeny"or loc_string01=="-hidedeny"or loc_string01=="-weather rain"or loc_string01=="-weather snow"or loc_string01=="-weather moonlight"or loc_string01=="-weather wind"or loc_string01=="-weather random"or loc_string01=="-weather off"or loc_string01=="-denyinfo"or loc_string01=="-di"or loc_string01=="-deathon"or loc_string01=="-don"or loc_string01=="-deathoff"or loc_string01=="-doff"or loc_string01=="-roll"or loc_string01=="-hideheronames"or loc_string01=="-hhn"or loc_string01=="-test"or loc_string01=="-mute"or loc_string01=="-wtf"or loc_string01=="-fleshstr"or loc_string01=="-fs"or loc_string01=="-switchon"then
        return true
    endif
    return false
endfunction

// 34218 ~ 34220
function Func1409 takes nothing returns boolean
    return not boolean002
endfunction

// 34222 ~ 34228
function Func1410 takes string loc_string01 returns nothing
    if string001==""then
        set string001="|c006699CC"+loc_string01+"|r"
    else
        set string001=string001+"/|c006699CC"+loc_string01+"|r"
    endif
endfunction

// 34230 ~ 34232
function Func1411 takes string loc_string01,integer loc_integer01,integer loc_integer02 returns string
    return SubString(loc_string01,0,loc_integer01)+SubString(loc_string01,loc_integer02,StringLength(loc_string01))
endfunction
