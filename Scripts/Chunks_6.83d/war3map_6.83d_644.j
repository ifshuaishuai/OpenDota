
// 71294 ~ 71320
function Func3376 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=unit125
    local unit loc_unit02=unit124
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0CQ')
    local integer loc_integer03
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,'A0BR')
    if loc_integer04==1 then
        set loc_integer03=15
    elseif loc_integer04==2 then
        set loc_integer03=22
    elseif loc_integer04==3 then
        set loc_integer03=29
    else
        set loc_integer03=36
    endif
    set loc_integer03=loc_integer03+1
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==false then
        set loc_integer02=loc_integer02+1
    else
        set loc_integer02=loc_integer02+12
    endif
    set loc_integer02=IMinBJ(loc_integer03,loc_integer02)
    call SetUnitAbilityLevel(loc_unit01,'A0CQ',loc_integer02)
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(710),(loc_integer02))
    set loc_unit01=null
endfunction

// 71322 ~ 71349
function Func3377 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    local trigger loc_trigger01
    local integer loc_integer04
    local unit loc_unit01=GetKillingUnit()
    if GetUnitTypeId(loc_unit01)=='e00C' then
        set loc_unit01=units001[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
    endif
    set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0CQ')
    set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0BR')
    if loc_integer02==1 then
        set loc_integer03=15
    elseif loc_integer02==2 then
        set loc_integer03=22
    elseif loc_integer02==3 then
        set loc_integer03=29
    else
        set loc_integer03=36
    endif
    if loc_integer01<=loc_integer03 then
        set loc_trigger01=Func0196(GetTriggerUnit(),loc_unit01,'h0CR',"Func3376",500,false)
        set loc_integer04=GetHandleId(loc_trigger01)
        set loc_trigger01=null
        call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\ZigguratMissile\\ZigguratMissile.mdl",GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit())))
    endif
endfunction

// 71351 ~ 71356
function Func3378 takes nothing returns nothing
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(710)))
    call SaveInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(710),(R2I(GetUnitAbilityLevel(GetTriggerUnit(),'A0CQ')*0.5)+1))
    call SetUnitAbilityLevel(GetTriggerUnit(),'A0CQ',R2I(GetUnitAbilityLevel(GetTriggerUnit(),'A0CQ')*0.5)+1)
    call Func3366(GetTriggerUnit(),loc_integer01-(LoadInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(710))))
endfunction

// 71358 ~ 71368
function Func3379 takes nothing returns boolean
    if GetUnitAbilityLevel(GetKillingUnit(),'A0BR')>0 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func3377()
    elseif GetUnitAbilityLevel(units001[GetPlayerId(GetOwningPlayer(GetKillingUnit()))],'A0BR')>0 and GetUnitTypeId(GetKillingUnit())=='e00C' then
        call Func3377()
    endif
    if GetUnitAbilityLevel(GetTriggerUnit(),'A0BR')>0 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func3378()
    endif
    return false
endfunction

// 71370 ~ 71389
function Func3380 takes nothing returns boolean
    local unit loc_unit01=units001[GetPlayerId(GetTriggerPlayer())]
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0CQ')-1
    local integer loc_integer02=0
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A0BR')
    if loc_integer03==1 then
        set loc_integer02=12
    elseif loc_integer03==2 then
        set loc_integer02=20
    elseif loc_integer03==3 then
        set loc_integer02=28
    elseif loc_integer03==4 then
        set loc_integer02=36
    endif
    set loc_integer01=IMaxBJ(IMinBJ(loc_integer01,loc_integer02),0)
    if GetUnitTypeId(loc_unit01)=='Nfir' then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetObjectName('n0KE')+" "+I2S(loc_integer01)+"/"+I2S(loc_integer02))
    endif
    return false
endfunction

// 71391 ~ 71418
function Func3381 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3379))
    set loc_trigger01=CreateTrigger()
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
    call TriggerAddCondition(loc_trigger01,Condition(function Func3380))
    set loc_trigger01=null
endfunction

// 71420 ~ 71422
function Func3382 takes nothing returns boolean
    return GetSpellAbilityId()=='A02H'
endfunction

// 71424 ~ 71435
function Func3383 takes nothing returns nothing
    local unit loc_unit01
    if(Func0124()==false)then
        set loc_unit01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),'e00E',GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit()),bj_UNIT_FACING)
        call Func0193(loc_unit01,'A02R')
        call IssueTargetOrder(loc_unit01,"slow",GetSpellTargetUnit())
    else
        set loc_unit01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),'e00E',GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit()),bj_UNIT_FACING)
        call Func0193(loc_unit01,'A1H1')
        call IssueTargetOrder(loc_unit01,"slow",GetSpellTargetUnit())
    endif
endfunction

// 71437 ~ 71442
function Func3384 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3382))
    call TriggerAddAction(loc_trigger01,function Func3383)
endfunction
