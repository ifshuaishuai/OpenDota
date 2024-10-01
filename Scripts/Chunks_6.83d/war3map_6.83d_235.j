
// 43751 ~ 43753
function Func1729 takes nothing returns boolean
    return GetSpellAbilityId()=='A0OO' or GetSpellAbilityId()=='A2U5'
endfunction

// 43755 ~ 43782
function Func1730 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real04)*1.0))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if loc_real01==loc_real03 and loc_real02==loc_real04 then
            if GetUnitAbilityLevel(loc_unit01,'A1WG')==0 then
                call Func0193(loc_unit01,'A1WG')
            endif
        else
            if GetUnitAbilityLevel(loc_unit01,'A1WG')>0 then
                call UnitRemoveAbility(loc_unit01,'A1WG')
            endif
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 43784 ~ 43792
function Func1731 takes nothing returns nothing
    if boolean140 then
        if(GetUnitTypeId(GetEnumUnit())=='n01Q' or GetUnitTypeId(GetEnumUnit())=='n01R')then
        endif
    elseif boolean141 then
        if(GetUnitTypeId(GetEnumUnit())=='n01M' or GetUnitTypeId(GetEnumUnit())=='n01S')then
        endif
    endif
endfunction

// 43794 ~ 43848
function Func1732 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0OO')
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local group loc_group01=Func0030()
    local unit loc_unit02
    local trigger loc_trigger01
    local integer loc_integer02
    local boolean loc_boolean01=GetSpellAbilityId()=='A0OO'
    local boolean loc_boolean02=GetSpellAbilityId()=='A2U5'
    set boolean140=loc_boolean01
    set boolean141=loc_boolean02
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0011))
    call ForGroup(loc_group01,function Func1731)
    call Func0029(loc_group01)
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl",loc_real01,loc_real02))
    if(loc_boolean01)then
        if(loc_integer01==1)then
            set loc_unit02=CreateUnit(loc_player01,'n01Q',loc_real01,loc_real02,270)
            call UnitApplyTimedLife(loc_unit02,'BTLF',60)
        elseif(loc_integer01==2)then
            set loc_unit02=CreateUnit(loc_player01,'n0NX',loc_real01,loc_real02,270)
            call UnitApplyTimedLife(loc_unit02,'BTLF',60)
        elseif(loc_integer01==3)then
            set loc_unit02=CreateUnit(loc_player01,'n0NV',loc_real01,loc_real02,270)
            call UnitApplyTimedLife(loc_unit02,'BTLF',60)
        elseif(loc_integer01==4)then
            set loc_unit02=CreateUnit(loc_player01,'n0NW',loc_real01,loc_real02,270)
            call UnitApplyTimedLife(loc_unit02,'BTLF',60)
        endif
        if loc_integer01==3 or loc_integer01==4 then
            set loc_trigger01=CreateTrigger()
            set loc_integer02=GetHandleId(loc_trigger01)
            call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
            call SaveReal(hashtable001,(loc_integer02),(6),((GetUnitX(loc_unit02))*1.0))
            call SaveReal(hashtable001,(loc_integer02),(7),((GetUnitY(loc_unit02))*1.0))
            call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit02))
            call TriggerAddCondition(loc_trigger01,Condition(function Func1730))
        endif
    endif
    if(loc_boolean02)then
        if(loc_integer01==1)then
            call UnitApplyTimedLife(CreateUnit(loc_player01,'n0NT',loc_real01,loc_real02,270),'BTLF',60)
        elseif(loc_integer01==2)then
            call UnitApplyTimedLife(CreateUnit(loc_player01,'n01M',loc_real01,loc_real02,270),'BTLF',60)
        elseif(loc_integer01==3)then
            call UnitApplyTimedLife(CreateUnit(loc_player01,'n0NS',loc_real01,loc_real02,270),'BTLF',60)
        elseif(loc_integer01==4)then
            call UnitApplyTimedLife(CreateUnit(loc_player01,'n0NU',loc_real01,loc_real02,270),'BTLF',60)
        endif
    endif
endfunction

// 43850 ~ 43858
function Func1733 takes nothing returns boolean
    if GetLearnedSkill()=='A0OO' and IsUnitIllusion(GetTriggerUnit())==false then
        if GetUnitAbilityLevel(GetTriggerUnit(),'A0OO')==1 then
            call Func0193(GetTriggerUnit(),'A2U5')
        endif
        call SetUnitAbilityLevel(GetTriggerUnit(),'A2U5',GetUnitAbilityLevel(GetTriggerUnit(),'A0OO'))
    endif
    return false
endfunction

// 43860 ~ 43869
function Func1734 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1729))
    call TriggerAddAction(loc_trigger01,function Func1732)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1733))
    set loc_trigger01=null
endfunction

// 43871 ~ 43941
function Func1735 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local texttag loc_texttag01=CreateTextTag()
    local integer loc_integer03
    local integer loc_integer04=1
    local unit loc_unit02
    local player loc_player02
    if loc_integer02==1 then
        set loc_integer03=200
    elseif loc_integer02==2 then
        set loc_integer03=275
    else
        set loc_integer03=350
    endif
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)+loc_integer03)
    call SetTextTagText(loc_texttag01,"+"+I2S(loc_integer03),0.025)
    call SetTextTagPosUnit(loc_texttag01,units001[GetPlayerId(loc_player01)],100)
    call SetTextTagColor(loc_texttag01,255,220,0,255)
    call SetTextTagVelocity(loc_texttag01,0,0.03)
    call SetTextTagVisibility(loc_texttag01,false)
    if GetLocalPlayer()==loc_player01 then
        call SetTextTagVisibility(loc_texttag01,true)
    endif
    call SetTextTagFadepoint(loc_texttag01,2)
    call SetTextTagLifespan(loc_texttag01,3)
    call SetTextTagPermanent(loc_texttag01,false)
    set integers081[GetPlayerId(loc_player01)]=integers081[GetPlayerId(loc_player01)]+loc_integer03
    set integer461=integer461+loc_integer03
    if loc_integer02==1 then
        set loc_integer03=50
    elseif loc_integer02==2 then
        set loc_integer03=100
    else
        set loc_integer03=150
    endif
    loop
        exitwhen loc_integer04>5
        if Func0056(loc_player01)then
            set loc_player02=players003[loc_integer04]
        else
            set loc_player02=players004[loc_integer04]
        endif
        if loc_player02!=loc_player01 then
            set loc_unit02=units001[GetPlayerId(loc_player02)]
            if Func0147(loc_unit02,loc_unit01)<950 then
                set loc_texttag01=CreateTextTag()
                call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD)+loc_integer03)
                call SetTextTagText(loc_texttag01,"+"+I2S(loc_integer03),0.025)
                call SetTextTagPosUnit(loc_texttag01,loc_unit02,100)
                call SetTextTagColor(loc_texttag01,255,220,0,255)
                call SetTextTagVelocity(loc_texttag01,0,0.03)
                call SetTextTagVisibility(loc_texttag01,false)
                if GetLocalPlayer()==loc_player02 then
                    call SetTextTagVisibility(loc_texttag01,true)
                endif
                call SetTextTagFadepoint(loc_texttag01,2)
                call SetTextTagLifespan(loc_texttag01,3)
                call SetTextTagPermanent(loc_texttag01,false)
                set integers081[GetPlayerId(loc_player02)]=integers081[GetPlayerId(loc_player02)]+loc_integer03
                set integer461=integer461+loc_integer03
            endif
        endif
        set loc_integer04=loc_integer04+1
    endloop
    set loc_unit01=null
    set loc_player01=null
    set loc_texttag01=null
endfunction

// 43943 ~ 43948
function Func1736 takes nothing returns boolean
    if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and(LoadReal(hashtable001,(GetHandleId(GetTriggerUnit())),(314)))>(TimerGetElapsed(timer001))then
        call Func1735()
    endif
    return false
endfunction
