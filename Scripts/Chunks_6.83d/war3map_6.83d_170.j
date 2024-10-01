
// 33798 ~ 33803
function Func1394 takes nothing returns nothing
    if boolean002==false and boolean057 and GetTriggerPlayer()==player003 then
        set boolean057=false
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,GetObjectName('n0GX'))
    endif
endfunction

// 33805 ~ 33811
function Func1395 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    set loc_trigger01=null
    return false
endfunction

// 33813 ~ 33825
function Func1396 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=units001[GetPlayerId(GetTriggerPlayer())]
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\Sleep\\SleepTarget.mdl",loc_unit01,"overhead")))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_POINT_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1395))
    call SetUnitAnimation(loc_unit01,"sleep")
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 33827 ~ 33829
function Func1397 takes nothing returns nothing
    call SetUnitAnimationByIndex(units001[GetPlayerId(GetTriggerPlayer())],23)
endfunction

// 33831 ~ 33836
function Func1398 takes nothing returns nothing
    if units001[GetPlayerId(GetTriggerPlayer())]!=null then
        set integers121[GetPlayerId(GetTriggerPlayer())]=1
        call UnitRemoveAbility(units001[GetPlayerId(GetTriggerPlayer())],'A2KJ')
    endif
endfunction

// 33838 ~ 33849
function Func1399 takes nothing returns nothing
    if booleans035[GetPlayerId(GetTriggerPlayer())]==false then
        set booleans035[GetPlayerId(GetTriggerPlayer())]=true
        if GetObjectName('n0HH')=="Language: English"then
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,"You have activated the -tips system.")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,"Please remember that these are just introductory recommendations and are not the only way to play heroes.")
        endif
        if units001[GetPlayerId(GetTriggerPlayer())]!=null then
            call Func0426(GetTriggerPlayer(),GetUnitPointValue(units001[GetPlayerId(GetTriggerPlayer())]))
        endif
    endif
endfunction

// 33851 ~ 34031
function Func1400 takes integer loc_integer01,integer loc_integer02 returns integer
    if loc_integer02==0 then
        return loc_integer01
    elseif loc_integer02==1 then
        if loc_integer01=='Cdrt' then
            return 'Cdrt'
        endif
        if loc_integer01=='Cdrd' then
            return 'Idki'
        endif
        if loc_integer01=='Cvin' then
            return 'Isnw'
        endif
        if loc_integer01=='Cgrs' then
            return 'Isnw'
        endif
        if loc_integer01=='Clvg' then
            return 'Isnw'
        endif
        if loc_integer01=='Zvin' then
            return 'Idki'
        endif
        if loc_integer01=='Zbks' then
            return 'Ibsq'
        endif
        if loc_integer01=='Ndrd' then
            return 'Ibsq'
        endif
    elseif loc_integer02==2 then
        if loc_integer01=='Cdrt' then
            return 'Cdrt'
        endif
        if loc_integer01=='Cdrd' then
            return 'Yblm'
        endif
        if loc_integer01=='Cvin' then
            return 'Ybtl'
        endif
        if loc_integer01=='Cgrs' then
            return 'Cgrs'
        endif
        if loc_integer01=='Clvg' then
            return 'Clvg'
        endif
        if loc_integer01=='Zvin' then
            return 'Yrtl'
        endif
        if loc_integer01=='Zbks' then
            return 'Ywmb'
        endif
        if loc_integer01=='Ndrd' then
            return 'Jbtl'
        endif
    elseif loc_integer02==3 then
        if loc_integer01=='Cdrt' then
            return 'Cdrt'
        endif
        if loc_integer01=='Cdrd' then
            return 'Yblm'
        endif
        if loc_integer01=='Cvin' then
            return 'Ybtl'
        endif
        if loc_integer01=='Cgrs' then
            return 'Yrtl'
        endif
        if loc_integer01=='Clvg' then
            return 'Clvg'
        endif
        if loc_integer01=='Zvin' then
            return 'Yrtl'
        endif
        if loc_integer01=='Zbks' then
            return 'Ybtl'
        endif
        if loc_integer01=='Ndrd' then
            return 'Jbtl'
        endif
    elseif loc_integer02==4 then
        if loc_integer01=='Cdrt' then
            return 'Cdrt'
        endif
        if loc_integer01=='Cdrd' then
            return 'Crck'
        endif
        if loc_integer01=='Cvin' then
            return 'Avin'
        endif
        if loc_integer01=='Cgrs' then
            return 'Agrd'
        endif
        if loc_integer01=='Clvg' then
            return 'Alvd'
        endif
        if loc_integer01=='Zvin' then
            return 'Agrd'
        endif
        if loc_integer01=='Zbks' then
            return 'Crck'
        endif
        if loc_integer01=='Ndrd' then
            return 'Cvin'
        endif
    elseif loc_integer02==5 then
        if loc_integer01=='Cdrt' then
            return 'Cdrt'
        endif
        if loc_integer01=='Cdrd' then
            return 'Qdrr'
        endif
        if loc_integer01=='Cvin' then
            return 'Qcbp'
        endif
        if loc_integer01=='Cgrs' then
            return 'Qgrt'
        endif
        if loc_integer01=='Clvg' then
            return 'Qgrs'
        endif
        if loc_integer01=='Zvin' then
            return 'Qgrt'
        endif
        if loc_integer01=='Zbks' then
            return 'Qcbp'
        endif
        if loc_integer01=='Ndrd' then
            return 'Qstp'
        endif
    elseif loc_integer02==6 then
        if loc_integer01=='Cdrt' then
            return 'Cdrt'
        endif
        if loc_integer01=='Cdrd' then
            return 'Dbrk'
        endif
        if loc_integer01=='Cvin' then
            return 'Dgrs'
        endif
        if loc_integer01=='Cgrs' then
            return 'Odrt'
        endif
        if loc_integer01=='Clvg' then
            return 'Ofst'
        endif
        if loc_integer01=='Zvin' then
            return 'Drds'
        endif
        if loc_integer01=='Zbks' then
            return 'Dsqd'
        endif
        if loc_integer01=='Ndrd' then
            return 'Osmb'
        endif
    elseif loc_integer02==7 then
        if loc_integer01=='Cdrt' then
            return 'Cdrt'
        endif
        if loc_integer01=='Cdrd' then
            return 'Gbrk'
        endif
        if loc_integer01=='Cvin' then
            return 'Glvc'
        endif
        if loc_integer01=='Cgrs' then
            return 'Gdrt'
        endif
        if loc_integer01=='Clvg' then
            return 'Gdkr'
        endif
        if loc_integer01=='Zvin' then
            return 'Grds'
        endif
        if loc_integer01=='Zbks' then
            return 'Gsqd'
        endif
        if loc_integer01=='Ndrd' then
            return 'Ggrs'
        endif
    endif
    return 0
endfunction

// 34033 ~ 34080
function Func1401 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(149)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(150)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(151)))
    local real loc_real04=128
    local real loc_real05
    local real loc_real06
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(152)))
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(153)))
    loop
        exitwhen loc_real01>loc_real03
        loop
            exitwhen loc_real02>8192
            if GetLocalPlayer()==loc_player01 then
                set loc_integer03=loc_integer03+1
                set loc_real05=loc_real01
                set loc_real06=loc_real02
                call SetTerrainType(loc_real05,loc_real06,Func1400(integers042[loc_integer03],loc_integer02),integers046[loc_integer03],1,0)
                set loc_real05=-loc_real01
                set loc_real06=loc_real02
                call SetTerrainType(loc_real05,loc_real06,Func1400(integers043[loc_integer03],loc_integer02),integers047[loc_integer03],1,0)
                set loc_real05=-loc_real01
                set loc_real06=-loc_real02
                call SetTerrainType(loc_real05,loc_real06,Func1400(integers044[loc_integer03],loc_integer02),integers048[loc_integer03],1,0)
                set loc_real05=loc_real01
                set loc_real06=-loc_real02
                call SetTerrainType(loc_real05,loc_real06,Func1400(integers045[loc_integer03],loc_integer02),integers049[loc_integer03],1,0)
            endif
            set loc_real02=loc_real02+loc_real04
        endloop
        set loc_real02=0
        set loc_real01=loc_real01+loc_real04
    endloop
    set loc_real03=loc_real03+256
    call SaveReal(hashtable001,(loc_integer01),(149),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(150),((loc_real02)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(153),(loc_integer03))
    call SaveReal(hashtable001,(loc_integer01),(151),((loc_real03)*1.0))
    if loc_real03>8192 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    return false
endfunction

// 34082 ~ 34086
function Func1402 takes nothing returns nothing
    if GetTriggerPlayer()==GetLocalPlayer()and(GetDestructableTypeId(GetEnumDestructable())=='ATtr' or GetDestructableTypeId(GetEnumDestructable())=='B002')then
        call SetDestructableAnimation(GetEnumDestructable(),"stand alternate")
    endif
endfunction
