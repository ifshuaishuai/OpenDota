
// 56855 ~ 56857
function Func2543 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='H00E' or GetUnitTypeId(GetFilterUnit())=='H00G' or GetUnitTypeId(GetFilterUnit())=='H00F' or GetUnitTypeId(GetFilterUnit())=='E00P' or GetUnitTypeId(GetFilterUnit())=='N00B' or GetUnitTypeId(GetFilterUnit())=='UC60' or GetUnitTypeId(GetFilterUnit())=='EC77' or GetUnitTypeId(GetFilterUnit())=='U00P' or GetUnitTypeId(GetFilterUnit())=='E02N' or GetUnitTypeId(GetFilterUnit())=='E02O' or GetUnitTypeId(GetFilterUnit())=='O016' or GetUnitTypeId(GetFilterUnit())=='O017' or GetUnitTypeId(GetFilterUnit())=='E02F' or GetUnitTypeId(GetFilterUnit())=='H0DO' or GetUnitTypeId(GetFilterUnit())=='N0M7' or GetUnitTypeId(GetFilterUnit())=='N0MB' or GetUnitTypeId(GetFilterUnit())=='N0MC' or GetUnitTypeId(GetFilterUnit())=='N0MO' or GetUnitTypeId(GetFilterUnit())=='N0MA' or GetUnitTypeId(GetFilterUnit())=='N0MW')and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit124))
endfunction

// 56859 ~ 56884
function Func2544 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(347)))
    local group loc_group01
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call DestroyEffect(AddSpecialEffect("war3mapImported\\NewGroundEX.mdx",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),200,Condition(function Func2543))
        if FirstOfGroup(loc_group01)!=null then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call SetUnitExploded(loc_unit01,true)
            call KillUnit(loc_unit01)
        endif
        call Func0029(loc_group01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 56886 ~ 56933
function Func2545 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetOwningPlayer(GetTriggerUnit()))
    local group loc_group01=Func0030()
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(346)))
    local integer loc_integer03=0
    local unit loc_unit01
    local integer loc_integer04
    local unit loc_unit02
    local integer loc_integer05
    local integer loc_integer06
    local integer loc_integer07
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit03=units001[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]
    local integer loc_integer08=GetUnitAbilityLevel(loc_unit03,'A05J')
    call GroupEnumUnitsInRect(loc_group01,bj_mapInitialPlayableArea,Condition(function Func2542))
    call TriggerRegisterTimerEvent(loc_trigger01,0.4,true)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2544))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(347),(GetTriggerUnit()))
    set loc_integer02=(loc_integer02+1)
    call StartTimerBJ((LoadTimerHandle(hashtable001,(loc_integer01),(1500+loc_integer02))),false,15000.00)
    call SaveUnitHandle(hashtable001,(loc_integer01),(1600+loc_integer02),(GetTriggerUnit()))
    set loc_integer03=CountUnitsInGroup(loc_group01)
    if(loc_integer03>20)then
        set loc_integer04=99999
        set loc_integer06=1
        set loc_integer07=loc_integer02
        loop
            exitwhen loc_integer06>loc_integer07
            set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(1600+loc_integer06)))
            set loc_integer05=R2I(TimerGetRemaining((LoadTimerHandle(hashtable001,(loc_integer01),(1500+loc_integer06)))))
            if(GetUnitState(loc_unit02,UNIT_STATE_LIFE)>0 and loc_integer05<loc_integer04)then
                set loc_unit01=loc_unit02
                set loc_integer04=loc_integer05
            endif
            set loc_integer06=loc_integer06+1
        endloop
        call ExplodeUnitBJ(loc_unit01)
    endif
    call SaveInteger(hashtable001,(loc_integer01),(346),(loc_integer02))
    call Func0029(loc_group01)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2538))
    call SaveUnitHandle(hashtable001,(loc_integer01),(347),(GetTriggerUnit()))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer08))
endfunction

// 56935 ~ 56963
function Func2546 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-st",true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2540))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterEnterRectSimple(loc_trigger01,GetWorldBounds())
    call TriggerAddCondition(loc_trigger01,Condition(function Func2541))
    call TriggerAddAction(loc_trigger01,function Func2545)
    set loc_trigger01=null
endfunction
