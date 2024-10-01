
// 14148 ~ 14152
function Func0569 takes integer loc_integer01,integer loc_integer02 returns nothing
    set integers086[integer060]=loc_integer01
    set integers087[integer060]=loc_integer02
    set integer060=integer060+1
endfunction

// 14154 ~ 14165
function Func0570 takes unit loc_unit01 returns integer
    local integer loc_integer01=0
    local integer loc_integer02=GetUnitTypeId(loc_unit01)
    loop
        exitwhen loc_integer01>integer060
        if integers086[loc_integer01]==loc_integer02 then
            return integers087[loc_integer01]
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return-1
endfunction

// 14167 ~ 14180
function Func0571 takes unit loc_unit01 returns integer
    local integer loc_integer01=Func0570(loc_unit01)
    if loc_integer01==-1 then
        if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true then
            set loc_integer01=Func0106(loc_unit01)
        else
            set loc_integer01=Func0054(GetUnitLevel(loc_unit01))
        endif
    endif
    if IsUnitType(loc_unit01,UNIT_TYPE_SUMMONED)==true then
        set loc_integer01=R2I(loc_integer01*0.5)
    endif
    return loc_integer01
endfunction

// 14182 ~ 14184
function Func0572 takes nothing returns nothing
    call AddHeroXP(GetEnumUnit(),integer061,true)
endfunction

// 14186 ~ 14205
function Func0573 takes nothing returns boolean
    local unit loc_unit01=GetFilterUnit()
    local unit loc_unit02=GetDyingUnit()
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    if(GetOwningPlayer((loc_unit02))==player001)==false or IsUnitType(loc_unit02,UNIT_TYPE_ANCIENT)==true then
        if IsUnitEnemy(loc_unit01,GetOwningPlayer(loc_unit02))==false then
            return false
        endif
    endif
    if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==false or Func0194(loc_unit01)then
        return false
    endif
    if Func0263(loc_integer01)then
        return false
    endif
    if Func0149(real193,real194,GetUnitX(loc_unit01),GetUnitY(loc_unit01))>1300+25 then
        return false
    endif
    return true
endfunction

// 14207 ~ 14269
function Func0574 takes nothing returns boolean
    local unit loc_unit01=GetKillingUnit()
    local unit loc_unit02=GetDyingUnit()
    local integer loc_integer01=Func0571(loc_unit02)
    local integer loc_integer02
    local group loc_group01
    local group loc_group02
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local player loc_player01
    if IsUnitIllusion(loc_unit02)or GetUnitAbilityLevel(loc_unit02,'Aloc')>0 or loc_integer01==0 then
        return false
    endif
    if loc_unit01==null or IsPlayerAlly(GetOwningPlayer(loc_unit01),GetOwningPlayer(loc_unit02))==true or(GetOwningPlayer((loc_unit01))==player001)then
        return false
    endif
    set loc_group01=Func0030()
    set loc_group02=Func0030()
    set real193=loc_real01
    set real194=loc_real02
    set loc_player01=players003[1]
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0573))
    call GroupAddGroup(loc_group01,loc_group02)
    set loc_player01=players003[2]
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0573))
    call GroupAddGroup(loc_group01,loc_group02)
    set loc_player01=players003[3]
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0573))
    call GroupAddGroup(loc_group01,loc_group02)
    set loc_player01=players003[4]
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0573))
    call GroupAddGroup(loc_group01,loc_group02)
    set loc_player01=players003[5]
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0573))
    call GroupAddGroup(loc_group01,loc_group02)
    set loc_player01=players004[1]
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0573))
    call GroupAddGroup(loc_group01,loc_group02)
    set loc_player01=players004[2]
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0573))
    call GroupAddGroup(loc_group01,loc_group02)
    set loc_player01=players004[3]
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0573))
    call GroupAddGroup(loc_group01,loc_group02)
    set loc_player01=players004[4]
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0573))
    call GroupAddGroup(loc_group01,loc_group02)
    set loc_player01=players004[5]
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0573))
    call GroupAddGroup(loc_group01,loc_group02)
    set loc_integer02=CountUnitsInGroup(loc_group02)
    if loc_integer02>0 then
        set integer061=loc_integer01/loc_integer02
        call ForGroup(loc_group02,function Func0572)
    endif
    call Func0029(loc_group01)
    call Func0029(loc_group02)
    set loc_group01=null
    set loc_group02=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 14271 ~ 14284
function Func0575 takes nothing returns boolean
    local unit loc_unit01=GetSummonedUnit()
    local integer loc_integer01
    if IsUnitIllusion(loc_unit01)==true then
        set loc_integer01=integers019[GetPlayerId(GetOwningPlayer(loc_unit01))]
        if loc_integer01>2 and integers121[GetPlayerId(GetOwningPlayer(loc_unit01))]==0 then
            call Func0193(loc_unit01,'A2KJ')
        else
            call UnitRemoveAbility(loc_unit01,'A2KJ')
        endif
    endif
    set loc_unit01=null
    return false
endfunction

// 14286 ~ 14311
function Func0576 takes nothing returns nothing
    local trigger loc_trigger01=GetTriggeringTrigger()
    local player loc_player01=GetOwningPlayer(GetKillingUnit())
    local player loc_player02=GetOwningPlayer(GetTriggerUnit())
    local string loc_string01
    local integer loc_integer01=Func0523(GetTriggerUnit(),GetKillingUnit())
    if loc_player01==players003[0]or loc_player01==players004[0]then
        call Func0525(GetTriggerUnit(),GetKillingUnit(),150)
        set loc_string01=Func0522(GetTriggerUnit(),GetKillingUnit())+" "+GetObjectName('n04W')+" |c00ff0303"+GetObjectName('n04Y')+GetObjectName('n049')+"|r "
        if loc_integer01>1 then
            set loc_string01=loc_string01+"(+150 "+GetObjectName('n044')+")"
        else
            set loc_string01=loc_string01+"(+150 "+GetObjectName('n045')+")"
        endif
    else
        set loc_string01=strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n04W')+" |c00ff0303"+GetObjectName('n04Y')+GetObjectName('n049')+"|r "
        set loc_string01=loc_string01+"(+150 "+GetObjectName('n045')+")"
        call Func0240(loc_player01,150,units001[GetPlayerId(loc_player01)])
        set integers081[GetPlayerId(loc_player01)]=integers081[GetPlayerId(loc_player01)]+150
        set integers080[GetPlayerId(loc_player01)]=integers080[GetPlayerId(loc_player01)]+150
    endif
    call Func0152(force003,10,loc_string01)
    call Func0227(sound008)
    call Func0035(loc_trigger01)
    set loc_trigger01=null
endfunction

// 14313 ~ 14324
function Func0577 takes nothing returns boolean
    if GetOwningPlayer(GetKillingUnit())!=player001 and GetKillingUnit()!=null and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and IsPlayerEnemy(GetOwningPlayer(GetTriggerUnit()),GetOwningPlayer(GetKillingUnit()))==true then
        if GetOwningPlayer(GetKillingUnit())==players003[0]or GetOwningPlayer(GetKillingUnit())==players004[0]then
            if Func0523(GetTriggerUnit(),GetKillingUnit())>0 then
                call Func0576()
            endif
        else
            call Func0576()
        endif
    endif
    return false
endfunction

// 14326 ~ 14344
function Func0578 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
    endif
    if loc_integer02>4 or(GetTriggerEventId()==EVENT_UNIT_DAMAGED and GetEventDamage()>0)then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+0.2*GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE))
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+0.2*GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 14346 ~ 14354
function Func0579 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1.0,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0578))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
endfunction

// 14356 ~ 14387
function Func0580 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01
    local region loc_region01
    local integer loc_integer02=1+R2I((TimerGetElapsed(timer001))/240)
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(53)))
        call SetUnitAbilityLevel(loc_unit01,'ACtc',loc_integer02)
        set loc_region01=CreateRegion()
        call RegionAddRect(loc_region01,rect188)
        call RegionAddRect(loc_region01,rect189)
        call RegionAddRect(loc_region01,rect213)
        if IsUnitInRegion(loc_region01,loc_unit01)==false then
            if(LoadBoolean(hashtable001,(loc_integer01),(91)))==true then
                call SaveBoolean(hashtable001,(loc_integer01),(91),(false))
            else
                call SetUnitX(loc_unit01,GetRectCenterX(rect033))
                call SetUnitY(loc_unit01,GetRectCenterY(rect033))
                call SaveBoolean(hashtable001,(loc_integer01),(91),(true))
            endif
        endif
        call RemoveRegion(loc_region01)
        set loc_unit01=null
        set loc_region01=null
    endif
    set loc_trigger01=null
    return false
endfunction

// 14389 ~ 14398
function Func0581 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterTimerEvent(loc_trigger01,10,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0580))
    call SaveUnitHandle(hashtable001,(loc_integer01),(53),(loc_unit01))
    call SaveBoolean(hashtable001,(loc_integer01),(91),(true))
    set loc_trigger01=null
endfunction

// 14400 ~ 14428
function Func0582 takes nothing returns boolean
    local item loc_item01
    local integer loc_integer01=GetTriggerEvalCount(GetTriggeringTrigger())
    if loc_integer01==integer064 then
        call Func0035(GetTriggeringTrigger())
    endif
    if loc_integer01==integer064-180 or loc_integer01==integer064-60 then
        if unit243!=null then
            set loc_item01=Func0394(unit243,integers089[integer198])
            if loc_item01!=null then
                if loc_integer01==integer064-180 then
                    if Func0056(GetOwningPlayer(unit243))then
                        call Func0152(force001,15,GetObjectName('n0E9')+" |c00ff0303"+GetObjectName('n0E7')+"|r")
                    else
                        call Func0152(force002,15,GetObjectName('n0E9')+" |c00ff0303"+GetObjectName('n0E7')+"|r")
                    endif
                else
                    if Func0056(GetOwningPlayer(unit243))then
                        call Func0152(force001,15,GetObjectName('n0E9')+" |c00ff0303"+GetObjectName('n0DX')+"|r")
                    else
                        call Func0152(force002,15,GetObjectName('n0E9')+" |c00ff0303"+GetObjectName('n0DX')+"|r")
                    endif
                endif
            endif
        endif
    endif
    set loc_item01=null
    return false
endfunction

// 14430 ~ 14436
function Func0583 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0582))
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
endfunction

// 14438 ~ 14448
function Func0584 takes nothing returns boolean
    set integer062=GetTriggerEvalCount(GetTriggeringTrigger())
    if unit001!=null and GetUnitState(unit001,UNIT_STATE_LIFE)>1 then
        call SetPlayerTechResearched(GetOwningPlayer(unit001),'R00F',integer062)
        if GetUnitAbilityLevel(unit001,'A142')==0 then
            call UnitAddAbility(unit001,'A142')
        endif
        call SetUnitAbilityLevel(unit001,'A142',integer062+1)
    endif
    return false
endfunction

// 14450 ~ 14475
function Func0585 takes nothing returns nothing
    local integer loc_integer01=1
    local unit loc_unit01
    set unit243=null
    loop
        exitwhen loc_integer01>5
        set loc_unit01=units001[GetPlayerId(players003[loc_integer01])]
        if loc_unit01!=null and Func0394(loc_unit01,integers089[integer198])!=null then
            call DisableTrigger(trigger057)
            call Func0415("AegisOff",GetPlayerId(GetOwningPlayer(loc_unit01)))
            call RemoveItem(Func0394(loc_unit01,integers089[integer198]))
            call Func0579(loc_unit01)
            call EnableTrigger(trigger057)
        endif
        set loc_unit01=units001[GetPlayerId(players004[loc_integer01])]
        if loc_unit01!=null and Func0394(loc_unit01,integers089[integer198])!=null then
            call DisableTrigger(trigger057)
            call Func0415("AegisOff",GetPlayerId(GetOwningPlayer(loc_unit01)))
            call RemoveItem(Func0394(loc_unit01,integers089[integer198]))
            call Func0579(loc_unit01)
            call EnableTrigger(trigger057)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
endfunction

// 14477 ~ 14482
function Func0586 takes string loc_string01,string loc_string02 returns string
    local string loc_string03=GetObjectName('n0CA')
    set loc_string03=Func0418(loc_string03,"$team",loc_string01)
    set loc_string03=Func0418(loc_string03,"$team",loc_string02)
    return loc_string03
endfunction

// 14484 ~ 14486
function Func0587 takes nothing returns boolean
    return GetUnitTypeId(GetDyingUnit())=='n00L'
endfunction

// 14488 ~ 14490
function Func0588 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true
endfunction

// 14492 ~ 14520
function Func0589 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local location loc_location01
    local real loc_real01
    if GetTriggerEvalCount(loc_trigger01)==integer063 or boolean097 then
        set boolean097=false
        set loc_location01=GetRectCenter(rect033)
        call Func0585()
        set integer065=integer065+1
        set unit001=CreateUnitAtLoc(Player(12),'n00L',loc_location01,bj_UNIT_FACING)
        call SetUnitAcquireRange(unit001,150)
        call Func0581(unit001)
        call UnitAddAbility(unit001,'A142')
        call SetPlayerTechResearched(GetOwningPlayer(unit001),'R00F',integer062)
        call SetUnitAbilityLevel(unit001,'A142',integer062+1)
        call RemoveLocation(loc_location01)
        if integer065>1 then
            call UnitRemoveAbility(unit001,'A0K2')
            call UnitAddAbility(unit001,'A0Q6')
            call UnitAddItem(unit001,CreateItem(integers089[integer151],0,0))
        endif
        call UnitAddItem(unit001,CreateItem(integers089[integer198],0,0))
        call Func0035(loc_trigger01)
    elseif GetTriggerEvalCount(loc_trigger01)==integer064 then
        call Func0585()
    endif
    set loc_trigger01=null
    return false
endfunction

// 14522 ~ 14549
function Func0590 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0589))
    set boolean097=false
    set integer063=GetRandomInt(480,660)
    call Func0583()
    set boolean065=false
    if(Func0056(GetOwningPlayer(GetKillingUnit())))then
        call Func0415("Roshan",0)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,Func0586("|c00ff0000"+GetObjectName('n065')+"|r",GetObjectName('n065')))
        call AdjustPlayerStateBJ(200,players003[1],PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(200,players003[2],PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(200,players003[3],PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(200,players003[4],PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(200,players003[5],PLAYER_STATE_RESOURCE_GOLD)
    endif
    if(Func0057(GetOwningPlayer(GetKillingUnit())))then
        call Func0415("Roshan",1)
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,Func0586("|c00004000"+GetObjectName('n06C')+"|r",GetObjectName('n06C')))
        call AdjustPlayerStateBJ(200,players004[1],PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(200,players004[2],PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(200,players004[3],PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(200,players004[4],PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(200,players004[5],PLAYER_STATE_RESOURCE_GOLD)
    endif
    set loc_trigger01=null
endfunction

// 14551 ~ 14569
function Func0591 takes nothing returns nothing
    local texttag loc_texttag01=CreateTextTag()
    local unit loc_unit01=GetTriggerUnit()
    local player loc_player01=GetOwningPlayer(GetKillingUnit())
    call SetTextTagText(loc_texttag01,"$",0.027)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,0)
    call SetTextTagColorBJ(loc_texttag01,integers067[GetPlayerId(loc_player01)],integers068[GetPlayerId(loc_player01)],integers069[GetPlayerId(loc_player01)],15)
    call SetTextTagVelocity(loc_texttag01,0,0.035)
    call SetTextTagFadepoint(loc_texttag01,3)
    call SetTextTagLifespan(loc_texttag01,1.5)
    call SetTextTagPermanent(loc_texttag01,false)
    call SetTextTagVisibility(loc_texttag01,false)
    if GetLocalPlayer()==player009 or GetLocalPlayer()==player010 then
        call SetTextTagVisibility(loc_texttag01,true)
    endif
    set loc_texttag01=null
    set loc_unit01=null
    set loc_player01=null
endfunction

// 14571 ~ 14585
function Func0592 takes unit loc_unit01,player loc_player01 returns nothing
    local texttag loc_texttag01=CreateTextTag()
    call SetTextTagText(loc_texttag01,"!",0.03)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,0)
    call SetTextTagColorBJ(loc_texttag01,integers067[GetPlayerId(loc_player01)],integers068[GetPlayerId(loc_player01)],integers069[GetPlayerId(loc_player01)],15)
    call SetTextTagVelocity(loc_texttag01,0,0.035)
    call SetTextTagFadepoint(loc_texttag01,3)
    call SetTextTagLifespan(loc_texttag01,1.5)
    call SetTextTagPermanent(loc_texttag01,false)
    call SetTextTagVisibility(loc_texttag01,false)
    if booleans028[GetPlayerId(GetLocalPlayer())]==true or(boolean025 and(GetLocalPlayer()==player009 or GetLocalPlayer()==player010))then
        call SetTextTagVisibility(loc_texttag01,true)
    endif
    set loc_texttag01=null
endfunction
