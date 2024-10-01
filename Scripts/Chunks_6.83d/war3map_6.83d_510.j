
// 62041 ~ 62060
function Func2851 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer loc_integer02=1
    if loc_integer01==0 then
        call UnitRemoveAbility(loc_unit01,'B05R')
        call Func0420(loc_unit01,0)
    else
        call Func0420(loc_unit01,loc_integer01*5)
    endif
    set loc_integer02=1
    loop
        exitwhen loc_integer02>20
        if loc_integer02!=loc_integer01 then
            call UnitRemoveAbility(loc_unit01,integers162[loc_integer02])
        elseif GetUnitAbilityLevel(loc_unit01,integers162[loc_integer02])==0 then
            call UnitRemoveAbility(loc_unit01,'B05R')
            call UnitAddAbility(loc_unit01,integers162[loc_integer02])
        endif
        set loc_integer02=loc_integer02+1
    endloop
endfunction

// 62062 ~ 62110
function Func2852 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local group loc_group02=Func0030()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0I8')
    local integer loc_integer03=0
    local real loc_real01
    local real loc_real02=0
    set unit124=loc_unit01
    set unit328=loc_unit01
    set group018=loc_group01
    set integer502=loc_integer02
    set real331=0
    set real332=0
    call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit01),GetUnitY(loc_unit01),25+25000,Condition(function Func0342))
    call ForGroup(loc_group02,function Func2850)
    call Func0029(loc_group02)
    if real332>0 then
        set loc_real01=real332-real331
        set loc_real02=(loc_real01*loc_integer02*10)
        set loc_integer03=IMinBJ(R2I(loc_real02/5),20)
    endif
    set loc_group02=Func0030()
    call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit01),GetUnitY(loc_unit01),25+25000,Condition(function Func0342))
    call ForGroup(loc_group02,function Func2849)
    set group019=loc_group02
    call ForGroup(group018,function Func2848)
    call ForGroup(group018,function Func2847)
    if loc_integer03==0 then
        call Func2851(loc_unit01,loc_integer03)
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(814),(0))
    else
        call Func2851(loc_unit01,loc_integer03)
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(814),(loc_integer03))
    endif
    if loc_integer03<5 then
        call UnitRemoveAbility(loc_unit01,'A214')
    else
        call Func0193(loc_unit01,'A214')
    endif
    call Func0029(loc_group02)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group02=null
    set loc_group01=null
    return false
endfunction

// 62112 ~ 62165
function Func2853 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local player loc_player01
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2852))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(Func0030()))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.04,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2845))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.005,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2844))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    set loc_player01=players003[1]
    set units026[GetPlayerId(loc_player01)]=CreateUnit(GetOwningPlayer(loc_unit01),'o02B',Func0113(loc_unit01),Func0114(loc_unit01),0)
    set units027[GetPlayerId(loc_player01)]=null
    set loc_player01=players003[2]
    set units026[GetPlayerId(loc_player01)]=CreateUnit(GetOwningPlayer(loc_unit01),'o02B',Func0113(loc_unit01),Func0114(loc_unit01),0)
    set units027[GetPlayerId(loc_player01)]=null
    set loc_player01=players003[3]
    set units026[GetPlayerId(loc_player01)]=CreateUnit(GetOwningPlayer(loc_unit01),'o02B',Func0113(loc_unit01),Func0114(loc_unit01),0)
    set units027[GetPlayerId(loc_player01)]=null
    set loc_player01=players003[4]
    set units026[GetPlayerId(loc_player01)]=CreateUnit(GetOwningPlayer(loc_unit01),'o02B',Func0113(loc_unit01),Func0114(loc_unit01),0)
    set units027[GetPlayerId(loc_player01)]=null
    set loc_player01=players003[5]
    set units026[GetPlayerId(loc_player01)]=CreateUnit(GetOwningPlayer(loc_unit01),'o02B',Func0113(loc_unit01),Func0114(loc_unit01),0)
    set units027[GetPlayerId(loc_player01)]=null
    set loc_player01=players004[1]
    set units026[GetPlayerId(loc_player01)]=CreateUnit(GetOwningPlayer(loc_unit01),'o02B',Func0113(loc_unit01),Func0114(loc_unit01),0)
    set units027[GetPlayerId(loc_player01)]=null
    set loc_player01=players004[2]
    set units026[GetPlayerId(loc_player01)]=CreateUnit(GetOwningPlayer(loc_unit01),'o02B',Func0113(loc_unit01),Func0114(loc_unit01),0)
    set units027[GetPlayerId(loc_player01)]=null
    set loc_player01=players004[3]
    set units026[GetPlayerId(loc_player01)]=CreateUnit(GetOwningPlayer(loc_unit01),'o02B',Func0113(loc_unit01),Func0114(loc_unit01),0)
    set units027[GetPlayerId(loc_player01)]=null
    set loc_player01=players004[4]
    set units026[GetPlayerId(loc_player01)]=CreateUnit(GetOwningPlayer(loc_unit01),'o02B',Func0113(loc_unit01),Func0114(loc_unit01),0)
    set units027[GetPlayerId(loc_player01)]=null
    set loc_player01=players004[5]
    set units026[GetPlayerId(loc_player01)]=CreateUnit(GetOwningPlayer(loc_unit01),'o02B',Func0113(loc_unit01),Func0114(loc_unit01),0)
    set units027[GetPlayerId(loc_player01)]=null
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 62167 ~ 62172
function Func2854 takes nothing returns boolean
    if GetLearnedSkill()=='A0I8' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A0I8')==1 then
        call Func2853()
    endif
    return false
endfunction

// 62174 ~ 62199
function Func2855 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2854))
    set integers162[1]='A2U8'
    set integers162[2]='A20W'
    set integers162[3]='A2U9'
    set integers162[4]='A2U6'
    set integers162[5]='A2U7'
    set integers162[6]='A2UC'
    set integers162[7]='A2UD'
    set integers162[8]='A2UA'
    set integers162[9]='A2UB'
    set integers162[10]='A20Z'
    set integers162[11]='A2UF'
    set integers162[12]='A2UE'
    set integers162[13]='A2UG'
    set integers162[14]='A2UH'
    set integers162[15]='A20X'
    set integers162[16]='A2UL'
    set integers162[17]='A2UL'
    set integers162[18]='A20Y'
    set integers162[19]='A2UJ'
    set integers162[20]='A2UI'
    set loc_trigger01=null
endfunction
