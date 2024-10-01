
// 48419 ~ 48427
function Func2029 takes nothing returns nothing
    local integer loc_integer01=GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
    if units023[loc_integer01]==null then
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n037'))
    else
        call SetUnitScale(units023[loc_integer01],2.5,2.5,2.5)
        call KillUnit(units023[loc_integer01])
    endif
endfunction

// 48429 ~ 48437
function Func2030 takes nothing returns boolean
    if GetSpellAbilityId()=='A0S9' then
        call Func2028()
    endif
    if GetSpellAbilityId()=='A0SA' then
        call Func2029()
    endif
    return false
endfunction

// 48439 ~ 48444
function Func2031 takes nothing returns boolean
    if GetLearnedSkill()=='A0S9' and GetUnitAbilityLevel(GetTriggerUnit(),'A0S9')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func0193(GetTriggerUnit(),'A0SA')
    endif
    return false
endfunction

// 48446 ~ 48451
function Func2032 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2030))
    set loc_trigger01=null
endfunction

// 48453 ~ 48455
function Func2033 takes nothing returns boolean
    return GetSpellAbilityId()=='A21E'
endfunction

// 48457 ~ 48460
function Func2034 takes nothing returns nothing
    call SetUnitX(GetEnumUnit(),real287)
    call SetUnitY(GetEnumUnit(),real288)
endfunction

// 48462 ~ 48502
function Func2035 takes nothing returns nothing
    local destructable array loc_destructables01
    local integer loc_integer01
    local integer loc_integer02
    local fogmodifier loc_fogmodifier01
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local location loc_location01
    local real loc_real01
    local real loc_real02
    local group loc_group01=Func0030()
    if loc_unit02==null then
        set loc_location01=GetSpellTargetLoc()
    else
        set loc_location01=GetUnitLoc(loc_unit02)
    endif
    set loc_real01=GetLocationX(loc_location01)
    set loc_real02=GetLocationY(loc_location01)
    set real287=loc_real01
    set real288=loc_real02
    if IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==true or Func0028(GetSpellTargetUnit())==false then
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,150,Condition(function Func0305))
        call Func0211(CreateFogModifierRadiusLocBJ(true,GetOwningPlayer(loc_unit01),FOG_OF_WAR_VISIBLE,loc_location01,1000.00),2.25+0.75*GetUnitAbilityLevel(loc_unit01,'A21E'))
        set loc_integer01=1
        set loc_integer02=8
        loop
            exitwhen loc_integer01>loc_integer02
            call Func0213(CreateDestructableLoc('B005',Func0002(loc_location01,150.00,(I2R(loc_integer01)*45.00)),GetRandomReal(0,360),1,0),2.25+0.75*GetUnitAbilityLevel(loc_unit01,'A21E'))
            set loc_integer01=loc_integer01+1
        endloop
    endif
    call RemoveLocation(loc_location01)
    call ForGroup(loc_group01,function Func2034)
    call Func0029(loc_group01)
    set loc_fogmodifier01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_location01=null
    set loc_group01=null
endfunction

// 48504 ~ 48509
function Func2036 takes nothing returns nothing
    if GetSpellAbilityId()=='A21E' and IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))and(LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))then
        call Func0123(GetTriggerUnit())
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n038'))
    endif
endfunction

// 48511 ~ 48519
function Func2037 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2033))
    call TriggerAddAction(loc_trigger01,function Func2035)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddAction(loc_trigger01,function Func2036)
endfunction

// 48525 ~ 48527
function Func2038 takes nothing returns boolean
    return GetSpellAbilityId()==('A01O')
endfunction

// 48529 ~ 48539
function Func2039 takes nothing returns nothing
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(GetTriggerUnit()))then
        call PingMinimapEx(loc_real01,loc_real02,3,255,255,255,false)
    endif
    call DestroyEffect(AddSpecialEffect("war3mapImported\\FurionTeleportTarget.mdx",loc_real01,loc_real02))
    call DestroyEffect(AddSpecialEffect("war3mapImported\\FurionTeleportTarget.mdx",GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit())))
    call RemoveLocation(loc_location01)
endfunction

// 48541 ~ 48546
function Func2040 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CHANNEL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2038))
    call TriggerAddAction(loc_trigger01,function Func2039)
endfunction
