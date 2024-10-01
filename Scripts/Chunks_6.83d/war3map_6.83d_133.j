
// 29145 ~ 29260
function Func1162 takes nothing returns boolean
    local unit loc_unit01
    local real loc_real01
    local boolean loc_boolean01=Func0124()
    set loc_unit01=unit159
    if loc_unit01!=null and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MANA)
        if loc_boolean01 then
            set loc_real01=Func0142(loc_real01-25,0)
        else
            set loc_real01=Func0141(loc_real01+5,300)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real01)
    endif
    set loc_unit01=unit160
    if loc_unit01!=null and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MANA)
        if loc_boolean01 then
            set loc_real01=Func0142(loc_real01-25,0)
        else
            set loc_real01=Func0141(loc_real01+5,300)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real01)
    endif
    set loc_unit01=unit161
    if loc_unit01!=null and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MANA)
        if loc_boolean01 then
            set loc_real01=Func0142(loc_real01-25,0)
        else
            set loc_real01=Func0141(loc_real01+5,300)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real01)
    endif
    set loc_unit01=unit162
    if loc_unit01!=null and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MANA)
        if loc_boolean01 then
            set loc_real01=Func0142(loc_real01-25,0)
        else
            set loc_real01=Func0141(loc_real01+5,300)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real01)
    endif
    set loc_unit01=unit163
    if loc_unit01!=null and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MANA)
        if loc_boolean01 then
            set loc_real01=Func0142(loc_real01-25,0)
        else
            set loc_real01=Func0141(loc_real01+5,300)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real01)
    endif
    set loc_unit01=unit164
    if loc_unit01!=null and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MANA)
        if loc_boolean01 then
            set loc_real01=Func0142(loc_real01-25,0)
        else
            set loc_real01=Func0141(loc_real01+5,300)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real01)
    endif
    set loc_unit01=unit165
    if loc_unit01!=null and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MANA)
        if loc_boolean01 then
            set loc_real01=Func0142(loc_real01-25,0)
        else
            set loc_real01=Func0141(loc_real01+5,300)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real01)
    endif
    set loc_unit01=unit166
    if loc_unit01!=null and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MANA)
        if loc_boolean01 then
            set loc_real01=Func0142(loc_real01-25,0)
        else
            set loc_real01=Func0141(loc_real01+5,300)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real01)
    endif
    set loc_unit01=unit167
    if loc_unit01!=null and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MANA)
        if loc_boolean01 then
            set loc_real01=Func0142(loc_real01-25,0)
        else
            set loc_real01=Func0141(loc_real01+5,300)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real01)
    endif
    set loc_unit01=unit168
    if loc_unit01!=null and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MANA)
        if loc_boolean01 then
            set loc_real01=Func0142(loc_real01-25,0)
        else
            set loc_real01=Func0141(loc_real01+5,300)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real01)
    endif
    set loc_unit01=unit169
    if loc_unit01!=null and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MANA)
        if loc_boolean01 then
            set loc_real01=Func0142(loc_real01-25,0)
        else
            set loc_real01=Func0141(loc_real01+5,300)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real01)
    endif
    return false
endfunction

// 29262 ~ 29272
function Func1163 takes nothing returns boolean
    local real loc_real01
    if GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(unit125))==true then
        set loc_real01=Func0149(real010,real011,GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()))
        if loc_real01<real009 then
            set real009=loc_real01
            set unit124=GetFilterUnit()
        endif
    endif
    return false
endfunction

// 29274 ~ 29285
function Func1164 takes unit loc_unit01,real loc_real01,real loc_real02 returns unit
    local group loc_group01=Func0030()
    set unit124=null
    set unit125=loc_unit01
    set real009=99999
    set real010=loc_real01
    set real011=loc_real02
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,2000,Condition(function Func1163))
    call Func0029(loc_group01)
    set loc_group01=null
    return unit124
endfunction

// 29287 ~ 29300
function Func1165 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01
    if GetSpellAbilityId()=='A231' then
        set loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
        call UnitRemoveAbility(loc_unit01,'Binf')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 29302 ~ 29330
function Func1166 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01
    local real loc_real01
    local real loc_real02
    local unit loc_unit02=GetSpellTargetUnit()
    call Func0044(loc_unit01,4256,1)
    if loc_unit02==null then
        set loc_location01=GetSpellTargetLoc()
        set loc_real01=GetLocationX(loc_location01)
        set loc_real02=GetLocationY(loc_location01)
        call RemoveLocation(loc_location01)
        if GetSpellAbilityId()=='A1R5' then
            set loc_unit02=Func0794(loc_unit01,loc_real01,loc_real02)
        else
            set loc_unit02=Func1164(loc_unit01,loc_real01,loc_real02)
        endif
        set loc_real01=GetUnitX(loc_unit02)
        set loc_real02=GetUnitY(loc_unit02)
    else
        set loc_real01=GetUnitX(GetSpellTargetUnit())
        set loc_real02=GetUnitY(GetSpellTargetUnit())
    endif
    if(IsUnitAlly(loc_unit01,GetLocalPlayer())and GetLocalPlayer()!=GetOwningPlayer(loc_unit01))or(boolean025 and(GetLocalPlayer()==player009 or GetLocalPlayer()==player010))then
        call PingMinimapEx(loc_real01,loc_real02,3,255,255,255,false)
    endif
    set loc_unit01=null
    set loc_location01=null
endfunction

// 29332 ~ 29337
function Func1167 takes nothing returns boolean
    if GetSpellAbilityId()=='A231' then
        call Func1166()
    endif
    return false
endfunction

// 29339 ~ 29345
function Func1168 takes nothing returns nothing
    call Func0068('N00R')
    call Func0068('N0M7')
    call Func0068('N0MK')
    call Func0068('N0MD')
    call Func0068('N0MU')
endfunction

// 29347 ~ 29352
function Func1169 takes nothing returns nothing
    if Func0096(GetEnumUnit())and IsUnitAlly(GetEnumUnit(),players003[0])==false and GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)>0.5 then
        call UnitRemoveAbility(GetEnumUnit(),'B08H')
        call Func0115(unit130,GetEnumUnit(),2,500)
    endif
endfunction

// 29354 ~ 29359
function Func1170 takes nothing returns nothing
    if Func0096(GetEnumUnit())and IsUnitAlly(GetEnumUnit(),players004[0])==false and GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)>0.5 then
        call UnitRemoveAbility(GetEnumUnit(),'B08H')
        call Func0115(unit174,GetEnumUnit(),2,500)
    endif
endfunction

// 29361 ~ 29372
function Func1171 takes nothing returns boolean
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,rect044,Condition(function Func0011))
    call ForGroup(loc_group01,function Func1169)
    call Func0029(loc_group01)
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,rect045,Condition(function Func0011))
    call ForGroup(loc_group01,function Func1170)
    call Func0029(loc_group01)
    set loc_group01=null
    return false
endfunction

// 29374 ~ 29463
function Func1172 takes string loc_string01 returns nothing
    local integer loc_integer01
    local player loc_player01
    local string loc_string02
    local integer loc_integer02=R2I(TimerGetElapsed(timer001)-real001)
    local integer loc_integer03=loc_integer02/60-1/2
    local integer loc_integer04=ModuloInteger(loc_integer02,60)
    call Func0102()
    set loc_integer01=1
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        set loc_string02=I2S(GetPlayerId(loc_player01))
        call StoreInteger(gamecache001,loc_string02,"1",(integers001[GetPlayerId((loc_player01))]))
        call StoreInteger(gamecache001,loc_string02,"2",(integers002[GetPlayerId((loc_player01))]))
        call StoreInteger(gamecache001,loc_string02,"3",(integers003[GetPlayerId((loc_player01))]))
        call StoreInteger(gamecache001,loc_string02,"4",(integers004[GetPlayerId((loc_player01))]))
        call StoreInteger(gamecache001,loc_string02,"5",(integers006[GetPlayerId((loc_player01))]))
        call StoreInteger(gamecache001,loc_string02,"6",(GetPlayerState((loc_player01),PLAYER_STATE_RESOURCE_GOLD)))
        call StoreInteger(gamecache001,loc_string02,"7",(LoadInteger(hashtable001,(400+GetPlayerId((loc_player01))),(79))))
        call StoreInteger(gamecache001,loc_string02,"8_0",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(0)))))
        call StoreInteger(gamecache001,loc_string02,"8_1",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(1)))))
        call StoreInteger(gamecache001,loc_string02,"8_2",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(2)))))
        call StoreInteger(gamecache001,loc_string02,"8_3",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(3)))))
        call StoreInteger(gamecache001,loc_string02,"8_4",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(4)))))
        call StoreInteger(gamecache001,loc_string02,"8_5",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(5)))))
        call StoreInteger(gamecache001,loc_string02,"9",(GetUnitTypeId(units001[GetPlayerId((loc_player01))])))
        call StoreInteger(gamecache001,loc_string02,"id",loc_integer01)
        set loc_player01=players004[loc_integer01]
        set loc_string02=I2S(GetPlayerId(loc_player01))
        call StoreInteger(gamecache001,loc_string02,"1",(integers001[GetPlayerId((loc_player01))]))
        call StoreInteger(gamecache001,loc_string02,"2",(integers002[GetPlayerId((loc_player01))]))
        call StoreInteger(gamecache001,loc_string02,"3",(integers003[GetPlayerId((loc_player01))]))
        call StoreInteger(gamecache001,loc_string02,"4",(integers004[GetPlayerId((loc_player01))]))
        call StoreInteger(gamecache001,loc_string02,"5",(integers006[GetPlayerId((loc_player01))]))
        call StoreInteger(gamecache001,loc_string02,"6",(GetPlayerState((loc_player01),PLAYER_STATE_RESOURCE_GOLD)))
        call StoreInteger(gamecache001,loc_string02,"7",(LoadInteger(hashtable001,(400+GetPlayerId((loc_player01))),(79))))
        call StoreInteger(gamecache001,loc_string02,"8_0",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(0)))))
        call StoreInteger(gamecache001,loc_string02,"8_1",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(1)))))
        call StoreInteger(gamecache001,loc_string02,"8_2",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(2)))))
        call StoreInteger(gamecache001,loc_string02,"8_3",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(3)))))
        call StoreInteger(gamecache001,loc_string02,"8_4",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(4)))))
        call StoreInteger(gamecache001,loc_string02,"8_5",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(5)))))
        call StoreInteger(gamecache001,loc_string02,"9",(GetUnitTypeId(units001[GetPlayerId((loc_player01))])))
        call StoreInteger(gamecache001,loc_string02,"id",loc_integer01+5)
        if GetLocalPlayer()==player003 then
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"1")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"2")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"3")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"4")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"5")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"6")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"7")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"8_0")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"8_1")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"8_2")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"8_3")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"8_4")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"8_5")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"9")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"id")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"1")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"2")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"3")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"4")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"5")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"6")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"7")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"8_0")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"8_1")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"8_2")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"8_3")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"8_4")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"8_5")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"9")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"id")
        endif
        set loc_integer01=loc_integer01+1
    endloop
    if boolean094==false then
        call StoreInteger(gamecache001,"Global","Winner",integer427)
        call StoreInteger(gamecache001,"Global","m",loc_integer03)
        call StoreInteger(gamecache001,"Global","s",loc_integer04)
        if GetLocalPlayer()==player003 then
            call SyncStoredInteger(gamecache001,"Global","Winner")
            call SyncStoredInteger(gamecache001,"Global","m")
            call SyncStoredInteger(gamecache001,"Global","s")
        endif
    endif
endfunction

// 29465 ~ 29467
function Func1173 takes nothing returns nothing
    call Func1172("1")
endfunction

// 29469 ~ 29486
function Func1174 takes nothing returns nothing
    local player loc_player01=player015
    local string loc_string01=I2S(GetPlayerId(loc_player01))
    call StoreInteger(gamecache001,loc_string01,"8_0",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(0)))))
    call StoreInteger(gamecache001,loc_string01,"8_1",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(1)))))
    call StoreInteger(gamecache001,loc_string01,"8_2",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(2)))))
    call StoreInteger(gamecache001,loc_string01,"8_3",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(3)))))
    call StoreInteger(gamecache001,loc_string01,"8_4",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(4)))))
    call StoreInteger(gamecache001,loc_string01,"8_5",(GetItemTypeId(UnitItemInSlot(units001[GetPlayerId((loc_player01))],(5)))))
    if GetLocalPlayer()==player003 then
        call SyncStoredInteger(gamecache001,I2S(GetPlayerId(loc_player01)),"8_0")
        call SyncStoredInteger(gamecache001,I2S(GetPlayerId(loc_player01)),"8_1")
        call SyncStoredInteger(gamecache001,I2S(GetPlayerId(loc_player01)),"8_2")
        call SyncStoredInteger(gamecache001,I2S(GetPlayerId(loc_player01)),"8_3")
        call SyncStoredInteger(gamecache001,I2S(GetPlayerId(loc_player01)),"8_4")
        call SyncStoredInteger(gamecache001,I2S(GetPlayerId(loc_player01)),"8_5")
    endif
endfunction

// 29488 ~ 29491
function Func1175 takes nothing returns boolean
    call ExecuteFunc("Func1095")
    return false
endfunction

// 29493 ~ 29495
function Func1176 takes nothing returns nothing
    call Func0053(GetEnumUnit())
endfunction

// 29497 ~ 29503
function Func1177 takes nothing returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,0,0,12000,Condition(function Func0298))
    call ForGroup(loc_group01,function Func1176)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 29505 ~ 29522
function Func1178 takes nothing returns nothing
    set bj_changeLevelShowScores=true
    call DisableTrigger(trigger047)
    call DisableTrigger(trigger048)
    call ExecuteFunc("Func0684")
    if boolean025 then
        call DisableTrigger(trigger061)
    endif
    call DisableTrigger(trigger054)
    call ClearTextMessages()
    call Func0152(bj_FORCE_ALL_PLAYERS,60,string003+" "+GetObjectName('n054')+" www.getdota.com.")
    set boolean036=true
    call Func0192()
    call DisableTrigger(trigger007)
    call DisableTrigger(trigger029)
    call DisableTrigger(trigger053)
    call Func0031()
endfunction

// 29524 ~ 29535
function Func1179 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call PanCameraToTimed(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),0)
    call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1175))
    set integer427=2
    set string003="|c0020c000"+GetObjectName('n03O')+"|r"
    call Func1178()
    call Func1177()
    call Func1172("2")
    set loc_trigger01=null
endfunction

// 29537 ~ 29544
function Func1180 takes nothing returns boolean
    call SetUnitVertexColorBJ(unit185,100,100,100,GetTriggerEvalCount(GetTriggeringTrigger()))
    if GetTriggerEvalCount(GetTriggeringTrigger())==100 then
        call ShowUnit(unit185,false)
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 29546 ~ 29561
function Func1181 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call PanCameraToTimed(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),0)
    call TriggerRegisterTimerEvent(loc_trigger01,1.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1175))
    set integer427=1
    set string003="|c00ff0303"+GetObjectName('n03N')+"|r"
    call Func1178()
    call Func1177()
    call Func1172("1")
    call AddSpecialEffect("war3mapImported\\FrozenThronesDeath2.mdx",GetUnitX(unit185)+150,GetUnitY(unit185)+100)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1180))
    set loc_trigger01=null
endfunction
