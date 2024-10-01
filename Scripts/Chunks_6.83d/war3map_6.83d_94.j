
// 22019 ~ 22051
function Func0870 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=unit124
    local unit loc_unit02=unit125
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    local trigger loc_trigger01
    local integer loc_integer02=3
    if loc_unit01==loc_unit02 then
        set loc_integer02=4
    endif
    if IsPlayerAlly(GetOwningPlayer(loc_unit02),GetOwningPlayer(loc_unit01))==true and loc_unit01!=loc_unit02 then
        call Func0867(loc_unit02,4)
    elseif loc_unit01!=loc_unit02 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A1QC',false)
        call UnitAddAbility(loc_unit02,'A1QC')
        call UnitMakeAbilityPermanent(loc_unit02,true,'A1QC')
        call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0865))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
        call Func0867(loc_unit02,loc_integer02)
        call Func0173("+"+I2S(R2I(loc_real01)),2,loc_unit02,0.027,3,216,120,216)
        set boolean156=true
        call Func0115(loc_unit01,loc_unit02,1,loc_real01)
        set boolean156=false
    else
        call Func0867(loc_unit01,loc_integer02)
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 22053 ~ 22071
function Func0871 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=Func0196(loc_unit01,loc_unit02,'h0BS',"Func0870",1000,false)
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=Func0045(loc_unit01)
    local real loc_real01
    if loc_integer02==2 then
        set loc_real01=GetHeroAgi(loc_unit01,true)
    elseif loc_integer02==3 then
        set loc_real01=GetHeroStr(loc_unit01,true)
    elseif loc_integer02==1 then
        set loc_real01=GetHeroInt(loc_unit01,true)
    endif
    call SaveReal(hashtable001,(loc_integer01),(20),((loc_real01*2.0+75)*1.0))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 22073 ~ 22077
function Func0872 takes nothing returns nothing
    if GetSpellAbilityId()=='A1QD' and(IsPlayerAlly(GetOwningPlayer(GetSpellTargetUnit()),GetOwningPlayer(GetTriggerUnit()))==true or Func0028(GetSpellTargetUnit())==false)then
        call Func0871()
    endif
endfunction
