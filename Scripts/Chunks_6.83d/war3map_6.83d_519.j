
// 62728 ~ 62764
function Func2887 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(188)))
    local texttag loc_texttag01
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetEventDamageSource()==loc_unit03 then
        set loc_texttag01=CreateTextTag()
        call Func0173(I2S(loc_integer02),loc_integer02,loc_unit02,0.03,127,127,255,255)
        call SetTextTagText(loc_texttag01,"+"+I2S(R2I(loc_real01)),0.025)
        call SetTextTagPosUnit(loc_texttag01,loc_unit02,10)
        call SetTextTagColor(loc_texttag01,255,0,0,255)
        call SetTextTagVelocity(loc_texttag01,0,0.0355)
        call SetTextTagFadepoint(loc_texttag01,2)
        call SetTextTagPermanent(loc_texttag01,false)
        call SetTextTagLifespan(loc_texttag01,2)
        if IsUnitVisible(loc_unit02,GetLocalPlayer())or Func0107(GetLocalPlayer())then
            call SetTextTagVisibility(loc_texttag01,true)
        else
            call SetTextTagVisibility(loc_texttag01,false)
        endif
        call Func0115(loc_unit01,loc_unit02,1,loc_real01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_texttag01=null
    return false
endfunction

// 62766 ~ 62827
function Func2888 takes nothing returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(GetTriggerUnit(),'A055')
    local integer loc_integer02
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local location loc_location01=GetUnitLoc(loc_unit01)
    local real loc_real01
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer03=GetHandleId(loc_trigger01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    if loc_integer01==1 then
        set loc_integer02=GetRandomInt(1,2)
        if loc_integer02==1 then
            set loc_real01=GetRandomReal(100,200)
        elseif loc_integer02==2 then
            set loc_real01=GetRandomReal(1,100)
        endif
    elseif loc_integer01==2 then
        set loc_integer02=GetRandomInt(1,3)
        if loc_integer02==1 then
            set loc_real01=GetRandomReal(170,225)
        elseif loc_integer02==2 then
            set loc_real01=GetRandomReal(110,170)
        elseif loc_integer02==3 then
            set loc_real01=GetRandomReal(50,110)
        endif
    elseif loc_integer01==3 then
        set loc_integer02=GetRandomInt(1,4)
        if loc_integer02==1 then
            set loc_real01=GetRandomReal(195,250)
        elseif loc_integer02==2 then
            set loc_real01=GetRandomReal(155,195)
        elseif loc_integer02==3 then
            set loc_real01=GetRandomReal(115,155)
        elseif loc_integer02==4 then
            set loc_real01=GetRandomReal(75,115)
        endif
    elseif loc_integer01==4 then
        set loc_integer02=GetRandomInt(2,4)
        if loc_integer02==2 then
            set loc_real01=GetRandomReal(225,275)
        elseif loc_integer02==3 then
            set loc_real01=GetRandomReal(175,225)
        elseif loc_integer02==4 then
            set loc_real01=GetRandomReal(100,175)
        endif
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2887))
    call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer03),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer03),(19),(loc_unit03))
    call SaveReal(hashtable001,(loc_integer03),(20),((loc_real01)*1.0))
    if(loc_integer01==4)then
    endif
    call SaveInteger(hashtable001,(loc_integer03),(188),(loc_integer02))
    call Func0193(loc_unit03,'A04U')
    call SetUnitAbilityLevel(loc_unit03,'A04U',loc_integer02)
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    set loc_trigger01=null
endfunction

// 62829 ~ 62834
function Func2889 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2886))
    call TriggerAddAction(loc_trigger01,function Func2888)
endfunction
