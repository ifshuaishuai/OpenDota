
// 31506 ~ 31629
function Func1285 takes nothing returns nothing
    local player loc_player01=GetTriggerPlayer()
    local string loc_string01="|c006699CC"
    if boolean115 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"League Mode"+"|r:      "+GetObjectName('n075'))
    endif
    if boolean117 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Extended League"+"|r:      "+GetObjectName('n07B'))
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,"                                 "+GetObjectName('n070'))
    endif
    if boolean003 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Death Match"+"|r:        "+GetObjectName('n06Z'))
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,"                              "+GetObjectName('n06Y')+" "+I2S(Func0138(integer040,integer042-integer041+1))+" "+GetObjectName('n07C'))
    endif
    if boolean027 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Mirror Match"+"|r:       "+GetObjectName('n06W'))
    endif
    if boolean006 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"All Pick"+"|r:                 "+GetObjectName('n06V'))
    endif
    if boolean109 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Random Draft"+"|r:                 "+GetObjectName('n072'))
    endif
    if boolean113 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Single Draft"+"|r:                 "+GetObjectName('n07G'))
    endif
    if boolean004 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"All Random"+"|r:          "+GetObjectName('n071'))
    endif
    if boolean035 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Vote Random"+"|r:         "+GetObjectName('n074'))
    endif
    if boolean005 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Team Random"+"|r:     "+GetObjectName('n06M'))
    endif
    if boolean040 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Reverse"+"|r:                 "+GetObjectName('n073'))
    endif
    if boolean023 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Shuffle Players"+"|r:     "+GetObjectName('n07H'))
    endif
    if boolean030 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"All Agility"+"|r:             "+GetObjectName('n07L'))
    endif
    if boolean032 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"All Strength"+"|r:         "+GetObjectName('n07K'))
    endif
    if boolean031 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"All Intelligence"+"|r:    "+GetObjectName('n07J'))
    endif
    if boolean121 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Range Only"+"|r:    "+GetObjectName('n0G4'))
    endif
    if boolean120 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Melee Only"+"|r:    "+GetObjectName('n0G5'))
    endif
    if boolean028 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Duplicate Mode"+"|r:   "+GetObjectName('n07I'))
    endif
    if boolean007 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Item Drop"+"|r:             "+GetObjectName('n07F'))
    endif
    if boolean009 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"No Powerups"+"|r:        "+GetObjectName('n07M'))
    endif
    if boolean010 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Super Creeps"+"|r:        "+GetObjectName('n07N'))
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,"                             "+GetObjectName('n07O'))
    endif
    if boolean008 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Easy Mode"+"|r:           "+GetObjectName('n07T'))
    endif
    if boolean033 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Same Hero"+"|r:           "+GetObjectName('n07U')+" "+(strings005[GetPlayerId((player003))])+"|r"+" "+GetObjectName('n07W'))
    endif
    if boolean122 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Only Mid"+"|r:           "+GetObjectName('n080'))
    endif
    if boolean124 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"No Bot"+"|r:           "+GetObjectName('n07V'))
    endif
    if boolean126 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"No Mid"+"|r:           "+GetObjectName('n07S'))
    endif
    if boolean127 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"No Top"+"|r:           "+GetObjectName('n07R'))
    endif
    if boolean051 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"No Swap"+"|r:           "+GetObjectName('n07X'))
    endif
    if boolean051 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"No Repick"+"|r:           "+GetObjectName('n07Q'))
    endif
    if boolean054 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Pool Mode"+"|r:           "+GetObjectName('n07Y'))
    endif
    if boolean129 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Observer Info"+"|r:           "+GetObjectName('n07Z'))
    endif
    if boolean130 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Mini Hereos"+"|r:           "+GetObjectName('n0EC'))
    endif
    if boolean131 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Fast Respawn"+"|r:           "+GetObjectName('n0DP'))
    endif
    if boolean061 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Captains Mode"+"|r:           "+GetObjectName('n0ED'))
    endif
    if boolean053 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Experimental Runes"+"|r:           "+GetObjectName('n0G6'))
    endif
    if boolean060 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Captains Draft"+"|r:           "+GetObjectName('n0GF'))
    endif
    if boolean133 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Capture Point"+"|r:           "+GetObjectName('n0KH'))
    endif
    if boolean132 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Capture Point"+"|r:           "+GetObjectName('n0KI'))
    endif
    if boolean034 then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,20,loc_string01+"Normal Mode"+"|r:        "+GetObjectName('n07P'))
    endif
endfunction

// 31631 ~ 31638
function Func1286 takes nothing returns nothing
    if GetUnitTypeId(GetEnumUnit())=='n004' then
        call RemoveUnit(GetEnumUnit())
    endif
    if GetUnitTypeId(GetEnumUnit())=='o003' then
        call RemoveUnit(GetEnumUnit())
    endif
endfunction

// 31640 ~ 31845
function Func1287 takes unit loc_unit01,unit loc_unit02 returns nothing
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local player loc_player02=GetOwningPlayer(loc_unit02)
    local unit loc_unit03=CreateUnit(loc_player01,'e01F',0,0,0)
    local group loc_group01
    local item loc_item01
    local integer loc_integer01
    if booleans004[GetPlayerId(loc_player01)]==true then
        if GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)<100 then
            return
        endif
    endif
    if booleans004[GetPlayerId(loc_player02)]==true then
        if GetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD)<100 then
            return
        endif
    endif
    if booleans004[GetPlayerId(loc_player01)]==true and booleans003[GetPlayerId(loc_player01)]==false and integers120[GetPlayerId(loc_player01)]==0 then
        set integers120[GetPlayerId(loc_player01)]=1
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-100)
    endif
    if booleans004[GetPlayerId(loc_player02)]==true and booleans003[GetPlayerId(loc_player02)]==false and integers120[GetPlayerId(loc_player02)]==0 then
        set integers120[GetPlayerId(loc_player02)]=1
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD)-100)
    endif
    set loc_integer01=integers081[GetPlayerId(loc_player01)]
    set integers081[GetPlayerId(loc_player01)]=integers081[GetPlayerId(loc_player02)]
    set integers081[GetPlayerId(loc_player02)]=loc_integer01
    call DisableTrigger(trigger057)
    if GetUnitAbilityLevel(loc_unit01,'A03E')>0 then
        set unit128=loc_unit01
        set unit129=loc_unit02
        call ExecuteFunc("Func3233")
    elseif GetUnitAbilityLevel(loc_unit02,'A03E')>0 then
        set unit128=loc_unit02
        set unit129=loc_unit01
        call ExecuteFunc("Func3233")
    endif
    if GetUnitAbilityLevel(loc_unit01,'A0CY')>0 then
        set unit128=loc_unit01
        set unit129=loc_unit02
        call ExecuteFunc("Func2581")
    elseif GetUnitAbilityLevel(loc_unit02,'A0CY')>0 then
        set unit128=loc_unit02
        set unit129=loc_unit01
        call ExecuteFunc("Func2581")
    endif
    if GetUnitAbilityLevel(loc_unit01,'A13T')>0 then
        set unit128=loc_unit01
        set unit129=loc_unit02
        call ExecuteFunc("Func1650")
    elseif GetUnitAbilityLevel(loc_unit02,'A13T')>0 then
        set unit128=loc_unit02
        set unit129=loc_unit01
        call ExecuteFunc("Func1650")
    endif
    call FlushChildHashtable(hashtable001,(800+GetPlayerId(GetOwningPlayer(loc_unit01))))
    call FlushChildHashtable(hashtable001,(800+GetPlayerId(GetOwningPlayer(loc_unit02))))
    set loc_group01=Func0030()
    set bj_groupEnumOwningPlayer=loc_player01
    call GroupEnumUnitsInRect(loc_group01,GetWorldBounds(),filterGetUnitsInRectOfPlayer)
    call ForGroup(loc_group01,function Func1286)
    call Func0029(loc_group01)
    set loc_group01=Func0030()
    set bj_groupEnumOwningPlayer=loc_player02
    call GroupEnumUnitsInRect(loc_group01,GetWorldBounds(),filterGetUnitsInRectOfPlayer)
    call ForGroup(loc_group01,function Func1286)
    call Func0029(loc_group01)
    call SetUnitOwner(loc_unit02,loc_player01,true)
    call SetUnitOwner(loc_unit01,loc_player02,true)
    set units001[GetPlayerId(loc_player01)]=loc_unit02
    set units001[GetPlayerId(loc_player02)]=loc_unit01
    call SetPlayerName(loc_player01,(strings005[GetPlayerId((loc_player01))])+" ("+Func0040(units001[GetPlayerId(loc_player01)])+")")
    call SetPlayerName(loc_player02,(strings005[GetPlayerId((loc_player02))])+" ("+Func0040(units001[GetPlayerId(loc_player02)])+")")
    call UnitAddItem(loc_unit03,UnitItemInSlot(loc_unit02,0))
    call UnitAddItem(loc_unit03,UnitItemInSlot(loc_unit02,1))
    call UnitAddItem(loc_unit03,UnitItemInSlot(loc_unit02,2))
    call UnitAddItem(loc_unit03,UnitItemInSlot(loc_unit02,3))
    call UnitAddItem(loc_unit03,UnitItemInSlot(loc_unit02,4))
    call UnitAddItem(loc_unit03,UnitItemInSlot(loc_unit02,5))
    set loc_item01=UnitItemInSlot(loc_unit01,0)
    if loc_item01!=null then
        call SetItemPlayer(loc_item01,loc_player01,false)
        call SetItemUserData(loc_item01,1)
        call UnitAddItem(loc_unit02,loc_item01)
    endif
    set loc_item01=UnitItemInSlot(loc_unit01,1)
    if loc_item01!=null then
        call SetItemPlayer(loc_item01,loc_player01,false)
        call SetItemUserData(loc_item01,1)
        call UnitAddItem(loc_unit02,loc_item01)
    endif
    set loc_item01=UnitItemInSlot(loc_unit01,2)
    if loc_item01!=null then
        call SetItemPlayer(loc_item01,loc_player01,false)
        call SetItemUserData(loc_item01,1)
        call UnitAddItem(loc_unit02,loc_item01)
    endif
    set loc_item01=UnitItemInSlot(loc_unit01,3)
    if loc_item01!=null then
        call SetItemPlayer(loc_item01,loc_player01,false)
        call SetItemUserData(loc_item01,1)
        call UnitAddItem(loc_unit02,loc_item01)
    endif
    set loc_item01=UnitItemInSlot(loc_unit01,4)
    if loc_item01!=null then
        call SetItemPlayer(loc_item01,loc_player01,false)
        call SetItemUserData(loc_item01,1)
        call UnitAddItem(loc_unit02,loc_item01)
    endif
    set loc_item01=UnitItemInSlot(loc_unit01,5)
    if loc_item01!=null then
        call SetItemPlayer(loc_item01,loc_player01,false)
        call SetItemUserData(loc_item01,1)
        call UnitAddItem(loc_unit02,loc_item01)
    endif
    set loc_item01=UnitItemInSlot(loc_unit03,0)
    if loc_item01!=null then
        call SetItemPlayer(loc_item01,loc_player02,false)
        call SetItemUserData(loc_item01,1)
        call UnitAddItem(loc_unit01,loc_item01)
    endif
    set loc_item01=UnitItemInSlot(loc_unit03,1)
    if loc_item01!=null then
        call SetItemPlayer(loc_item01,loc_player02,false)
        call SetItemUserData(loc_item01,1)
        call UnitAddItem(loc_unit01,loc_item01)
    endif
    set loc_item01=UnitItemInSlot(loc_unit03,2)
    if loc_item01!=null then
        call SetItemPlayer(loc_item01,loc_player02,false)
        call SetItemUserData(loc_item01,1)
        call UnitAddItem(loc_unit01,loc_item01)
    endif
    set loc_item01=UnitItemInSlot(loc_unit03,3)
    if loc_item01!=null then
        call SetItemPlayer(loc_item01,loc_player02,false)
        call SetItemUserData(loc_item01,1)
        call UnitAddItem(loc_unit01,loc_item01)
    endif
    set loc_item01=UnitItemInSlot(loc_unit03,4)
    if loc_item01!=null then
        call SetItemPlayer(loc_item01,loc_player02,false)
        call SetItemUserData(loc_item01,1)
        call UnitAddItem(loc_unit01,loc_item01)
    endif
    set loc_item01=UnitItemInSlot(loc_unit03,5)
    if loc_item01!=null then
        call SetItemPlayer(loc_item01,loc_player02,false)
        call SetItemUserData(loc_item01,1)
        call UnitAddItem(loc_unit01,loc_item01)
    endif
    call RemoveUnit(loc_unit03)
    call EnableTrigger(trigger057)
    if(IsUnitType(loc_unit01,UNIT_TYPE_MELEE_ATTACKER)==true or GetUnitTypeId(loc_unit01)=='H06S')and Func0394(loc_unit01,integers089[integer127])!=null then
        call UnitRemoveItem(loc_unit01,Func0394(loc_unit01,integers089[integer127]))
    elseif(IsUnitType(loc_unit01,UNIT_TYPE_RANGED_ATTACKER)==true or GetUnitTypeId(loc_unit01)=='H06S')and Func0394(loc_unit01,integers089[integer126])!=null then
        call UnitRemoveItem(loc_unit01,Func0394(loc_unit01,integers089[integer126]))
    endif
    if(IsUnitType(loc_unit02,UNIT_TYPE_MELEE_ATTACKER)==true or GetUnitTypeId(loc_unit01)=='H06S')and Func0394(loc_unit02,integers089[integer127])!=null then
        call UnitRemoveItem(loc_unit01,Func0394(loc_unit02,integers089[integer127]))
    elseif(IsUnitType(loc_unit02,UNIT_TYPE_RANGED_ATTACKER)==true or GetUnitTypeId(loc_unit01)=='H06S')and Func0394(loc_unit02,integers089[integer126])!=null then
        call UnitRemoveItem(loc_unit01,Func0394(loc_unit02,integers089[integer126]))
    endif
    if GetUnitTypeId(loc_unit01)=='H06S' and Func0394(loc_unit01,integers089[integer126])!=null then
        call UnitRemoveItem(loc_unit01,Func0394(loc_unit01,integers089[integer126]))
    elseif GetUnitTypeId(loc_unit01)=='H06S' and Func0394(loc_unit01,integers089[integer127])!=null then
        call UnitRemoveItem(loc_unit01,Func0394(loc_unit01,integers089[integer127]))
    endif
    if GetUnitTypeId(loc_unit02)=='H06S' and Func0394(loc_unit02,integers089[integer126])!=null then
        call UnitRemoveItem(loc_unit02,Func0394(loc_unit02,integers089[integer126]))
    elseif GetUnitTypeId(loc_unit02)=='H06S' and Func0394(loc_unit02,integers089[integer127])!=null then
        call UnitRemoveItem(loc_unit02,Func0394(loc_unit02,integers089[integer127]))
    endif
    if(IsUnitType(loc_unit01,UNIT_TYPE_MELEE_ATTACKER)==true)and Func0394(loc_unit01,integers089[integer249])!=null then
        call UnitRemoveItem(loc_unit01,Func0394(loc_unit01,integers089[integer249]))
    elseif(IsUnitType(loc_unit01,UNIT_TYPE_RANGED_ATTACKER)==true)and Func0394(loc_unit01,integers089[integer126])!=null then
        call UnitRemoveItem(loc_unit01,Func0394(loc_unit01,integers089[integer126]))
    endif
    if(IsUnitType(loc_unit02,UNIT_TYPE_MELEE_ATTACKER)==true)and Func0394(loc_unit02,integers089[integer249])!=null then
        call UnitRemoveItem(loc_unit01,Func0394(loc_unit02,integers089[integer249]))
    elseif(IsUnitType(loc_unit02,UNIT_TYPE_RANGED_ATTACKER)==true)and Func0394(loc_unit02,integers089[integer248])!=null then
        call UnitRemoveItem(loc_unit01,Func0394(loc_unit02,integers089[integer248]))
    endif
    call ClearSelectionForPlayer(loc_player01)
    call SelectUnitAddForPlayer(loc_unit02,loc_player01)
    call ClearSelectionForPlayer(loc_player02)
    call SelectUnitAddForPlayer(loc_unit01,loc_player02)
    call FlushChildHashtable(hashtable001,(800+GetPlayerId(loc_player01)))
    call FlushChildHashtable(hashtable001,(800+GetPlayerId(loc_player02)))
    set unit124=loc_unit01
    call ExecuteFunc("Func3109")
    set unit124=loc_unit02
    call ExecuteFunc("Func3109")
    call Func0414(GetOwningPlayer(loc_unit01),"9",GetUnitTypeId(loc_unit01))
    call Func0414(GetOwningPlayer(loc_unit02),"9",GetUnitTypeId(loc_unit02))
    call Func0415("SWAP_"+I2S(GetPlayerId(GetOwningPlayer(loc_unit01)))+"_"+I2S(GetPlayerId(GetOwningPlayer(loc_unit02))),GetUnitTypeId(loc_unit01))
    call Func0415("SWAP_"+I2S(GetPlayerId(GetOwningPlayer(loc_unit02)))+"_"+I2S(GetPlayerId(GetOwningPlayer(loc_unit01))),GetUnitTypeId(loc_unit02))
    call Func0433(loc_player01)
    call Func0433(loc_player02)
    set loc_player01=null
    set loc_player02=null
    set loc_group01=null
    set loc_unit03=null
    set loc_item01=null
endfunction

// 31847 ~ 31849
function Func1288 takes unit loc_unit01,unit loc_unit02 returns boolean
    return(LoadBoolean(hashtable001,(800+GetPlayerId(GetOwningPlayer(loc_unit02))),(GetUnitTypeId(loc_unit01)+GetUnitTypeId(loc_unit02))))
endfunction

// 31851 ~ 31853
function Func1289 takes nothing returns nothing
    call FlushChildHashtable(hashtable001,(800+GetPlayerId(GetTriggerPlayer())))
endfunction
