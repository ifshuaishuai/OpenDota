
// 67890 ~ 67911
function Func3174 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetHeroXP(loc_unit01)
    local integer loc_integer02=GetHeroXP(loc_unit02)
    local integer loc_integer03=GetHandleId(loc_unit01)
    local integer loc_integer04=GetHandleId(loc_unit02)
    local integer loc_integer05=(LoadInteger(hashtable001,(loc_integer03),(368)))
    local integer loc_integer06=(LoadInteger(hashtable001,(loc_integer04),(368)))
    local integer loc_integer07
    if loc_integer01>loc_integer02 then
        set loc_integer07=loc_integer01-loc_integer02
        call AddHeroXP(loc_unit02,loc_integer07,true)
        if loc_integer02!=GetHeroXP(loc_unit02)then
            call SaveInteger(hashtable001,(loc_integer04),(368),(loc_integer06+loc_integer07))
        endif
    elseif loc_integer01<loc_integer02 then
        set loc_integer07=loc_integer02-loc_integer01
        call AddHeroXP(loc_unit01,loc_integer07,true)
        if loc_integer01!=GetHeroXP(loc_unit01)then
            call SaveInteger(hashtable001,(loc_integer03),(368),(loc_integer05+loc_integer07))
        endif
    endif
endfunction

// 67913 ~ 67933
function Func3175 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,('A0N8'))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,('A0NB'))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,('A0N7'))
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,('A0MW'))
    local integer loc_integer05=GetUnitAbilityLevel(loc_unit01,'Aamk')
    local integer loc_integer06=GetUnitAbilityLevel(loc_unit01,'A27C')
    local integer loc_integer07=GetUnitAbilityLevel(loc_unit02,('A0N8'))
    local integer loc_integer08=GetUnitAbilityLevel(loc_unit02,('A0NB'))
    local integer loc_integer09=GetUnitAbilityLevel(loc_unit02,('A0N7'))
    local integer loc_integer10=GetUnitAbilityLevel(loc_unit02,('A0MW'))
    local integer loc_integer11=GetUnitAbilityLevel(loc_unit02,'Aamk')
    local integer loc_integer12=GetUnitAbilityLevel(loc_unit02,'A27C')
    call Func3174(loc_unit01,loc_unit02)
    call Func3173(loc_unit01,loc_unit02,('A0N8'),loc_integer01,loc_integer07)
    call Func3173(loc_unit01,loc_unit02,('A0NB'),loc_integer02,loc_integer08)
    call Func3173(loc_unit01,loc_unit02,('A0N7'),loc_integer03,loc_integer09)
    call Func3173(loc_unit01,loc_unit02,('A0MW'),loc_integer04,loc_integer10)
    call Func3173(loc_unit01,loc_unit02,'A27C',loc_integer06,loc_integer12)
    call Func3173(loc_unit01,loc_unit02,'Aamk',loc_integer05,loc_integer11)
endfunction

// 67935 ~ 67939
function Func3176 takes unit loc_unit01,unit loc_unit02 returns nothing
    if loc_unit01!=null and loc_unit02!=null then
        call Func3175(loc_unit01,loc_unit02)
    endif
endfunction

// 67941 ~ 67960
function Func3177 takes nothing returns nothing
    local integer loc_integer01=GetHandleId((LoadPlayerHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(370))))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(699)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(700)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(701)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(702)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(703)))
    call DisableTrigger(trigger070)
    call Func3176(loc_unit01,loc_unit02)
    call Func3176(loc_unit01,loc_unit03)
    call Func3176(loc_unit01,loc_unit04)
    call Func3176(loc_unit01,loc_unit05)
    call Func3176(loc_unit02,loc_unit03)
    call Func3176(loc_unit02,loc_unit04)
    call Func3176(loc_unit02,loc_unit05)
    call Func3176(loc_unit03,loc_unit04)
    call Func3176(loc_unit03,loc_unit05)
    call Func3176(loc_unit04,loc_unit05)
    call EnableTrigger(trigger070)
endfunction

// 67962 ~ 67967
function Func3178 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call TriggerAddAction(loc_trigger01,function Func3177)
    call SavePlayerHandle(hashtable001,(GetHandleId(loc_trigger01)),(370),(GetOwningPlayer(GetTriggerUnit())))
endfunction

// 67969 ~ 67995
function Func3179 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01
    call SaveUnitHandle(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(699),(loc_unit01))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(367),(GetHeroXP(loc_unit01)))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(368),(0))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddAction(loc_trigger01,function Func3164)
    call SavePlayerHandle(hashtable001,(GetHandleId(loc_trigger01)),(370),(GetOwningPlayer(loc_unit01)))
    call SaveTriggerHandle(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(371),(loc_trigger01))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.3,true)
    call TriggerAddAction(loc_trigger01,function Func3163)
    call SavePlayerHandle(hashtable001,(GetHandleId(loc_trigger01)),(370),(GetOwningPlayer(loc_unit01)))
    call SaveTriggerHandle(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(372),(loc_trigger01))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddAction(loc_trigger01,function Func3166)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3165))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DROP_ITEM)
    call TriggerAddAction(loc_trigger01,function Func3169)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3167))
    call SaveTriggerHandle(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(369),(loc_trigger01))
    call ExecuteFunc("Func3178")
endfunction

// 67997 ~ 68015
function Func3180 takes unit loc_unit01,boolean loc_boolean01 returns nothing
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local integer loc_integer01=GetHandleId(loc_player01)
    local unit loc_unit02
    set integer514=integer514+1
    if integer514==1 then
        call Func3179(loc_unit01)
    endif
    call TriggerExecute((LoadTriggerHandle(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(371))))
    call TriggerExecute((LoadTriggerHandle(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(372))))
    if loc_boolean01==false then
        call Func3170(loc_unit01,'A0MW')
        call Func3170(loc_unit01,'A27C')
    endif
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'H00J',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call Func3172(loc_unit02,loc_unit01)
    call Func3168(loc_unit02,loc_unit01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(699+integer514),(loc_unit02))
endfunction

// 68017 ~ 68024
function Func3181 takes nothing returns nothing
    if boolean149==false then
        set boolean149=true
        call DisableTrigger(trigger070)
        call Func3180(unit124,true)
        call EnableTrigger(trigger070)
    endif
endfunction

// 68026 ~ 68044
function Func3182 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if IsUnitIllusion(GetTriggerUnit())==false and GetOwningPlayer(GetTriggerUnit())==GetOwningPlayer(loc_unit01)and Func3158(GetTriggerUnit())then
        if GetLearnedSkill()=='A0MW' or GetLearnedSkill()=='A27C' then
            call DisableTrigger(GetTriggeringTrigger())
            call Func3180(GetTriggerUnit(),false)
            call EnableTrigger(GetTriggeringTrigger())
        elseif GetLearnedSkill()=='Aamk' or GetLearnedSkill()=='A0N8' or GetLearnedSkill()=='A0NB' or GetLearnedSkill()=='A0N7' then
            call TriggerExecute((LoadTriggerHandle(hashtable001,(GetHandleId(GetOwningPlayer(GetTriggerUnit()))),(371))))
            call TriggerExecute((LoadTriggerHandle(hashtable001,(GetHandleId(GetOwningPlayer(GetTriggerUnit()))),(372))))
            call DisableTrigger(GetTriggeringTrigger())
            call Func3170(GetTriggerUnit(),GetLearnedSkill())
            call EnableTrigger(GetTriggeringTrigger())
        endif
    endif
    return false
endfunction

// 68046 ~ 68056
function Func3183 takes nothing returns nothing
    local unit loc_unit01=unit124
    local integer loc_integer01
    set trigger069=CreateTrigger()
    set trigger070=trigger069
    set loc_integer01=GetHandleId(trigger069)
    call Func0176(trigger069,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(trigger069,Condition(function Func3182))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_unit01=null
endfunction
