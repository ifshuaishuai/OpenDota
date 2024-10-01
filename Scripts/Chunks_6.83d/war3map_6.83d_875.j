
// 90394 ~ 90409
function Func4351 takes unit loc_unit01 returns nothing
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(728)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2E4')
    local integer loc_integer03=1
    set loc_integer01=IMinBJ(loc_integer01,4*loc_integer02)
    loop
        exitwhen loc_integer03>20
        if loc_integer01==loc_integer03 then
            call Func0193(loc_unit01,integers180[loc_integer03])
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),integers180[loc_integer03],false)
        else
            call UnitRemoveAbility(loc_unit01,integers180[loc_integer03])
        endif
        set loc_integer03=loc_integer03+1
    endloop
endfunction

// 90411 ~ 90423
function Func4352 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(728)))-1
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(728),(loc_integer02))
    call Func4351(loc_unit01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 90425 ~ 90443
function Func4353 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(728)))+1
    if IsUnitEnemy(GetAttacker(),GetOwningPlayer(loc_unit01))==true then
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(728),(loc_integer02))
        call Func4351(loc_unit01)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,16,false)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4352))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 90445 ~ 90454
function Func4354 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4353))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 90456 ~ 90461
function Func4355 takes nothing returns boolean
    if GetLearnedSkill()=='A2E4' and GetUnitAbilityLevel(GetTriggerUnit(),'A2E4')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func4354()
    endif
    return false
endfunction

// 90463 ~ 90488
function Func4356 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4355))
    set loc_trigger01=null
    set integers180[1]='A2DG'
    set integers180[2]='A2DF'
    set integers180[3]='A2DL'
    set integers180[4]='A2DM'
    set integers180[5]='A2DJ'
    set integers180[6]='A2DI'
    set integers180[7]='A2DN'
    set integers180[8]='A2DO'
    set integers180[9]='A2DH'
    set integers180[10]='A2DU'
    set integers180[11]='A2DP'
    set integers180[12]='A2DQ'
    set integers180[13]='A2DR'
    set integers180[14]='A2DS'
    set integers180[15]='A2DT'
    set integers180[16]='A2DK'
    set integers180[17]='A2OT'
    set integers180[18]='A2OS'
    set integers180[19]='A2OU'
    set integers180[20]='A2OV'
endfunction
