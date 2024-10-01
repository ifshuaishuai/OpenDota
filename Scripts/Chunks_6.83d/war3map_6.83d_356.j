
// 51796 ~ 51816
function Func2237 takes nothing returns nothing
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(326)))
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local integer loc_integer01
    local integer loc_integer02
    local real loc_real04
    local real loc_real05
    if GetUnitTypeId(loc_unit01)!='O00P' then
        call DisableTrigger(GetTriggeringTrigger())
    elseif Func0194(loc_unit01)==false and(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(225)))==false then
        set loc_integer01=GetHeroAgi(loc_unit01,true)
        set loc_integer02=GetHeroStr(loc_unit01,true)
        set loc_real04=RMaxBJ(75+2*(loc_integer01-loc_integer02),35)
        set loc_real01=loc_real04
        set loc_real02=loc_real04
        set loc_real03=loc_real04
        call SetUnitVertexColorBJ(loc_unit01,loc_real01,loc_real02,loc_real03,GetRandomReal(0.00,10.00))
    endif
endfunction

// 51818 ~ 51820
function Func2238 takes nothing returns boolean
    return GetUnitTypeId(GetTriggerUnit())=='O00P' and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 51822 ~ 51833
function Func2239 takes nothing returns nothing
    local trigger loc_trigger01
    if((LoadBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(327)))==false)then
        set loc_trigger01=CreateTrigger()
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(326),(GetTriggerUnit()))
        call SaveTriggerHandle(hashtable001,(GetHandleId(GetTriggerUnit())),(328),(loc_trigger01))
        call TriggerAddAction(loc_trigger01,function Func2237)
        call TriggerRegisterTimerEvent(loc_trigger01,1.0,true)
        call SaveBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(327),(true))
        call UnitAddItem(GetTriggerUnit(),CreateItem('I00E',GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit())))
    endif
endfunction

// 51835 ~ 51840
function Func2240 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterEnterRectSimple(loc_trigger01,bj_mapInitialPlayableArea)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2238))
    call TriggerAddAction(loc_trigger01,function Func2239)
endfunction

// 51842 ~ 51844
function Func2241 takes nothing returns boolean
    return GetSpellAbilityId()=='A0G6' and GetUnitTypeId(GetSpellTargetUnit())!='n00L' and Func0028(GetSpellTargetUnit())==false
endfunction

// 51846 ~ 51910
function Func2242 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0G6')
    local unit loc_unit03
    local location loc_location01
    local real loc_real01
    local integer loc_integer02=GetHeroAgi(loc_unit01,true)
    local integer loc_integer03=GetHeroStr(loc_unit01,true)
    local real loc_real02=I2R(loc_integer02)/I2R(loc_integer03)
    local real loc_real03=I2R(loc_integer03)/I2R(loc_integer02)
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local real loc_real07
    local real loc_real08
    local real loc_real09
    local integer loc_integer04
    local integer loc_integer05
    local integer loc_integer06
    local string loc_string01
    local string loc_string02
    local string loc_string03
    local real loc_real10=0.25+loc_integer01
    if loc_real02<0.5 then
        set loc_real04=0.25
        set loc_real05=20*loc_integer01
    elseif loc_real02>1.5 then
        set loc_real04=0.5*loc_integer01
        set loc_real05=20*loc_integer01
    else
        set loc_real04=0.25+(loc_real02-0.5)*(0.5*loc_integer01-0.25)
        set loc_real05=20*loc_integer01
    endif
    if loc_real03<0.5 then
        set loc_real06=0.25
        set loc_real07=100
    elseif loc_real03>1.5 then
        set loc_real06=loc_real10
        set loc_real07=300
    else
        set loc_real07=100+(loc_real03-0.5)*200
        set loc_real06=0.25+(loc_real03-0.5)*(loc_real10-0.25)
    endif
    set loc_real08=loc_real05+loc_real04*loc_integer02
    set loc_real09=loc_real06
    set loc_integer04=R2I(loc_real09)
    set loc_integer05=R2I(10*loc_real09-loc_integer04*10)
    set loc_integer06=R2I(100*loc_real09-loc_integer05*10-loc_integer04*100)
    set loc_string01=I2S(loc_integer04)
    set loc_string02=I2S(loc_integer05)
    set loc_string03=I2S(loc_integer06)
    set loc_real01=Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01))
    set loc_location01=Location(GetUnitX(loc_unit02)+loc_real07*Cos(loc_real01),GetUnitY(loc_unit02)+loc_real07*Sin(loc_real01))
    call SetUnitPositionLoc(loc_unit02,loc_location01)
    call Func0180(GetLocationX(loc_location01),GetLocationY(loc_location01),200)
    call RemoveLocation(loc_location01)
    call Func0173("|c001ce6b9+"+I2S(R2I(loc_real08))+"|r |c00ff0303+"+loc_string01+"."+loc_string02+loc_string03+"|r",1,loc_unit02,0.023,255,255,255,216)
    call Func0115(loc_unit01,loc_unit02,1,loc_real08)
    call Func0365(loc_unit01,loc_unit02,loc_real09)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_location01=null
endfunction

// 51912 ~ 51918
function Func2243 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2241))
    call TriggerAddAction(loc_trigger01,function Func2242)
    call Func0132('A0X6')
endfunction

// 51920 ~ 51927
function Func2244 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group011)==false then
        call GroupAddUnit(group012,GetEnumUnit())
        call UnitRemoveAbility(GetEnumUnit(),'B02J')
        call UnitRemoveAbility(GetEnumUnit(),'BUsp')
        call UnitRemoveAbility(GetEnumUnit(),'Bust')
    endif
endfunction

// 51929 ~ 51933
function Func2245 takes nothing returns nothing
    call UnitRemoveAbility(GetEnumUnit(),'B02J')
    call UnitRemoveAbility(GetEnumUnit(),'BUsp')
    call UnitRemoveAbility(GetEnumUnit(),'Bust')
endfunction
