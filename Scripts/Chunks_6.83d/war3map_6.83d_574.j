
// 66480 ~ 66497
function Func3107 takes nothing returns boolean
    if IsUnitIllusion(GetTriggerUnit())==false and(GetLearnedSkill()=='A21X' or GetLearnedSkill()=='A21W' or GetLearnedSkill()=='A21V')then
        call Func3103(GetTriggerUnit())
        if GetLearnedSkill()=='A21X' then
            call SetHeroAgi(GetTriggerUnit(),GetHeroAgi(GetTriggerUnit(),false)+2,true)
            call SaveInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(3000),(GetUnitAbilityLevel(GetTriggerUnit(),'A21X')))
        endif
        if GetLearnedSkill()=='A21W' then
            call SetHeroStr(GetTriggerUnit(),GetHeroStr(GetTriggerUnit(),false)+2,true)
            call SaveInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(3001),(GetUnitAbilityLevel(GetTriggerUnit(),'A21W')))
        endif
        if GetLearnedSkill()=='A21V' then
            call SetHeroInt(GetTriggerUnit(),GetHeroInt(GetTriggerUnit(),false)+2,true)
            call SaveInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(3002),(GetUnitAbilityLevel(GetTriggerUnit(),'A21V')))
        endif
    endif
    return false
endfunction

// 66499 ~ 66506
function Func3108 takes nothing returns boolean
    if GetSpellAbilityId()=='A21X' or GetSpellAbilityId()=='A21W' or GetSpellAbilityId()=='A21V' then
        call Func3105()
    elseif GetSpellAbilityId()=='A21Y' or GetSpellAbilityId()=='A1GU' then
        call Func3102()
    endif
    return false
endfunction

// 66508 ~ 66523
function Func3109 takes nothing returns nothing
    local unit loc_unit01=unit124
    local integer loc_integer01=1
    local integer loc_integer02
    if GetUnitTypeId(loc_unit01)!='H00U' then
        return
    endif
    loop
        exitwhen loc_integer01>11
        set loc_integer02=integers165[loc_integer01]
        call Func0193(loc_unit01,loc_integer02)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer02,false)
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
endfunction

// 66525 ~ 66537
function Func3110 takes nothing returns boolean
    if GetUnitTypeId(GetTriggerUnit())=='H00U' and IsUnitIllusion(GetTriggerUnit())==false then
        set unit124=GetTriggerUnit()
        call Func3109()
    elseif(GetUnitTypeId(GetTriggerUnit())=='Ubal' or GetUnitTypeId(GetTriggerUnit())=='E02X')and IsUnitIllusion(GetTriggerUnit())==false then
        set unit124=GetTriggerUnit()
        call ExecuteFunc("Func3823")
    elseif GetUnitTypeId(GetTriggerUnit())=='H00I' and IsUnitIllusion(GetTriggerUnit())==false then
        set unit124=GetTriggerUnit()
        call ExecuteFunc("Func3183")
    endif
    return false
endfunction

// 66539 ~ 66575
function Func3111 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0132((integers165[1]))
    call Func0132((integers165[2]))
    call Func0132((integers165[3]))
    call Func0132((integers165[4]))
    call Func0132((integers165[5]))
    call Func0132((integers165[6]))
    call Func0132((integers165[7]))
    call Func0132((integers165[8]))
    call Func0132((integers165[9]))
    call Func0132((integers165[10]))
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3108))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3107))
    set loc_trigger01=null
    call Func0152(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName('n06G'))
    call Func0134('A0XO',GetRandomReal(1,25))
    call Func0134('A0WD',GetRandomReal(1,25))
    call Func0134('A0VE',GetRandomReal(1,25))
    call Func0134('A0V7',GetRandomReal(1,25))
    call Func0134('A21V',GetRandomReal(1,25))
    call Func0134('A21X',GetRandomReal(1,25))
    call Func0134('A21W',GetRandomReal(1,25))
    call Func3034()
    call Func3040()
    call Func3045()
    call Func3051()
    call Func3059()
    call Func3068()
    call Func3080()
    call Func3088()
    call Func3093()
    call Func3098()
endfunction
