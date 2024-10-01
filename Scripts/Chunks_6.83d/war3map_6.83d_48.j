
// 17246 ~ 17248
function Func0651 takes integer loc_integer01 returns boolean
    return loc_integer01==integer182 or loc_integer01==integer239 or loc_integer01==integer240 or loc_integer01==integer242 or loc_integer01==integer181 or loc_integer01==integer237 or loc_integer01==integer238 or loc_integer01==integer241 or loc_integer01==integer083 or loc_integer01==integer084 or loc_integer01==integer165 or loc_integer01==integer166
endfunction

// 17250 ~ 17252
function Func0652 takes integer loc_integer01 returns boolean
    return loc_integer01==integer083 or loc_integer01==integer084
endfunction

// 17254 ~ 17335
function Func0653 takes unit loc_unit01,item loc_item01 returns boolean
    local integer loc_integer01=0
    local item loc_item02=loc_item01
    local integer loc_integer02=Func0399(loc_item02)
    local integer loc_integer03=0
    local boolean loc_boolean01=false
    local integer loc_integer04=Func0400(loc_item02)
    local boolean loc_boolean02=false
    if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true then
        if loc_integer02==integer182 then
            set loc_integer03=integer181
        endif
        if loc_integer02==integer166 then
            set loc_integer03=integer165
        endif
        if loc_integer02==integer239 then
            set loc_integer03=integer237
        endif
        if loc_integer02==integer240 then
            set loc_integer03=integer238
        endif
        if loc_integer02==integer242 then
            set loc_integer03=integer241
        endif
        if loc_integer02==integer084 then
            set loc_integer03=integer083
        endif
        if loc_integer04==integer084 then
            set loc_integer03=integer083
            set loc_boolean02=true
        endif
        if loc_integer03!=0 then
            set player005=GetItemPlayer(loc_item02)
            call Func0392(loc_item02)
            if loc_boolean02 then
                set item002=UnitAddItemById(loc_unit01,integers091[loc_integer03])
            else
                set item002=UnitAddItemById(loc_unit01,integers089[loc_integer03])
            endif
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
            set loc_boolean01=true
        endif
    else
        if loc_integer02==integer181 then
            set loc_integer03=integer182
        endif
        if loc_integer02==integer165 then
            set loc_integer03=integer166
        endif
        if loc_integer02==integer237 then
            set loc_integer03=integer239
        endif
        if loc_integer02==integer238 then
            set loc_integer03=integer240
        endif
        if loc_integer02==integer241 then
            set loc_integer03=integer242
        endif
        if loc_integer02==integer083 then
            set loc_integer03=integer084
        endif
        if loc_integer04==integer083 then
            set loc_integer03=integer084
            set loc_boolean02=true
        endif
        if loc_integer03!=0 then
            set player005=GetItemPlayer(loc_item02)
            call Func0392(loc_item02)
            if loc_boolean02 then
                set item002=UnitAddItemById(loc_unit01,integers091[loc_integer03])
            else
                set item002=UnitAddItemById(loc_unit01,integers089[loc_integer03])
            endif
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
            set loc_boolean01=true
        endif
    endif
    set loc_item02=null
    return loc_boolean01
endfunction

// 17337 ~ 17342
function Func0654 takes unit loc_unit01,item loc_item01 returns boolean
    if Func0651(Func0399(loc_item01))or Func0652(Func0400(loc_item01))then
        return Func0653(loc_unit01,loc_item01)
    endif
    return false
endfunction

// 17344 ~ 17353
function Func0655 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    set booleans039[loc_integer02]=false
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 17355 ~ 17358
function Func0656 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetPlayerId(GetOwningPlayer(loc_unit01))
    set booleans039[loc_integer01]=true
endfunction

// 17360 ~ 17543
function Func0657 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(26)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(97)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(93)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(95)))
    local item loc_item01
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local player loc_player02
    local integer loc_integer04
    local boolean loc_boolean02=false
    local item loc_item02
    local integer loc_integer05
    local integer loc_integer06
    local integer loc_integer07
    local item loc_item03
    local integer loc_integer08
    local item loc_item04
    local boolean loc_boolean03=false
    call DisableTrigger(trigger058)
    if loc_boolean01 then
        set loc_item04=null
        set loc_player02=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
        set loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(76)))
    else
        set loc_item01=(LoadItemHandle(hashtable001,(loc_integer01),(96)))
        set loc_item04=loc_item01
        set loc_player02=GetItemPlayer(loc_item01)
        set loc_integer04=GetItemCharges(loc_item01)
    endif
    if loc_boolean01==false and loc_item01==null then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call EnableTrigger(trigger058)
        set loc_trigger01=null
        set loc_unit01=null
        set loc_player01=null
        return false
    endif
    if loc_integer02==1 then
        if loc_player01!=loc_player02 and GetUnitTypeId(loc_unit01)=='ncop' then
            if Func0386(Func0377(loc_integer03))or Func0387(Func0377(loc_integer03))then
                set loc_boolean02=true
            endif
            if IsPlayerEnemy(loc_player01,loc_player02)then
                call Func0389(integers088[loc_integer03],reals005[GetPlayerId(loc_player01)],reals006[GetPlayerId(loc_player01)],loc_player02,loc_boolean02,loc_integer04)
            else
                call Func0389(integers088[loc_integer03],reals005[GetPlayerId(loc_player02)],reals006[GetPlayerId(loc_player02)],loc_player02,loc_boolean02,loc_integer04)
            endif
            call Func0120(loc_player01,GetObjectName('n0DR'))
            if loc_boolean01==false then
                set loc_boolean03=true
                call Func0392(loc_item01)
            endif
        elseif boolean054==false and loc_boolean01==false and GetItemType(loc_item01)==ITEM_TYPE_CAMPAIGN and Func0401(loc_item01)!=0 and(loc_player01==loc_player02 or(GetPlayerSlotState((loc_player02))==PLAYER_SLOT_STATE_LEFT))then
            if Func0387(loc_integer03)or Func0386(loc_integer03)then
                set loc_boolean02=true
            else
                set loc_boolean02=false
            endif
            if(GetPlayerSlotState((loc_player02))==PLAYER_SLOT_STATE_LEFT)and Func0378(loc_integer03)then
            else
                call Func0392(loc_item01)
                set loc_boolean03=true
                set loc_item02=UnitAddItemById(loc_unit01,integers089[loc_integer03])
                set loc_item04=loc_item02
                call SetItemPlayer(loc_item02,loc_player02,false)
                call SetItemUserData(loc_item02,0)
                if loc_boolean02 then
                    call SetItemCharges(loc_item02,loc_integer04)
                endif
            endif
        elseif boolean054==false and loc_boolean01==false and GetItemType(loc_item01)==ITEM_TYPE_PERMANENT and loc_player01!=loc_player02 and integers091[Func0380(loc_item01)]!=0 and(GetPlayerSlotState((loc_player02))==PLAYER_SLOT_STATE_LEFT)==false then
            if Func0387(loc_integer03)or Func0386(loc_integer03)then
                set loc_boolean02=true
            else
                set loc_boolean02=false
            endif
            call Func0392(loc_item01)
            set loc_boolean03=true
            set loc_item02=UnitAddItemById(loc_unit01,integers091[loc_integer03])
            set loc_item04=loc_item02
            call SetItemPlayer(loc_item02,loc_player02,false)
            call SetItemUserData(loc_item02,0)
            if loc_boolean02 then
                call SetItemCharges(loc_item02,loc_integer04)
            endif
        elseif loc_boolean01==false and GetItemType(loc_item01)==ITEM_TYPE_PERMANENT and Func0385(loc_item01)and IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true then
            set loc_integer05=Func0382(loc_unit01)
            set loc_integer06=Func0383(loc_unit01)
            if loc_integer06!=0 then
                call UnitAddAbility(loc_unit01,loc_integer06)
                call UnitMakeAbilityPermanent(loc_unit01,true,loc_integer06)
                call SetPlayerAbilityAvailable(loc_player01,loc_integer06,false)
                if GetUnitTypeId(loc_unit01)=='H00U' then
                    set unit124=loc_unit01
                    call ExecuteFunc("Func3106")
                elseif GetUnitTypeId(loc_unit01)=='Hmkg' then
                    set unit124=loc_unit01
                    call ExecuteFunc("Func2270")
                endif
            endif
            if loc_integer03!=loc_integer05 then
                call Func0392(loc_item01)
                set loc_item02=UnitAddItemById(loc_unit01,integers089[loc_integer05])
                set loc_item04=loc_item02
                call SetItemPlayer(loc_item02,loc_player02,false)
                call SetItemUserData(loc_item02,1)
            endif
        elseif loc_boolean01==false and GetItemType(loc_item01)==ITEM_TYPE_ARTIFACT then
            call DisableTrigger(trigger057)
            set loc_item03=Func0395(loc_player02,loc_unit01,loc_integer03,loc_item01)
            if loc_item03==null then
            else
                call SetItemCharges(loc_item03,loc_integer04+GetItemCharges(loc_item03))
                call Func0392(loc_item01)
                set loc_item04=null
            endif
            call EnableTrigger(trigger057)
        elseif loc_boolean01 and Func0386(Func0377(loc_integer03))then
            call DisableTrigger(trigger057)
            if Func0398(loc_unit01)==0 and Func0396(loc_player02,loc_unit01,loc_integer03)==null then
                call Func0120(loc_player01,GetObjectName('n02O'))
                call Func0389(integers088[(loc_integer03)],(((LoadReal(hashtable001,(loc_integer01),(6))))*1.0),(((LoadReal(hashtable001,(loc_integer01),(7))))*1.0),(loc_player02),(true),(loc_integer04))
            else
                set loc_item03=Func0396(loc_player02,loc_unit01,loc_integer03)
                if loc_item03==null then
                    call DisableTrigger(trigger057)
                    set loc_item02=UnitAddItemById(loc_unit01,integers089[loc_integer03])
                    set loc_item04=loc_item02
                    call SetItemPlayer(loc_item02,loc_player02,false)
                    call SetItemUserData(loc_item02,1)
                    call SetItemCharges(loc_item02,loc_integer04)
                else
                    call SetItemCharges(loc_item03,loc_integer04+GetItemCharges(loc_item03))
                endif
            endif
            call EnableTrigger(trigger057)
        elseif loc_boolean01==true then
            call Func0636(loc_player02,loc_unit01,null,loc_integer03,(LoadReal(hashtable001,(loc_integer01),(6))),(LoadReal(hashtable001,(loc_integer01),(7))),loc_integer04,1)
        elseif loc_boolean01==false and(GetItemType(loc_item01)==ITEM_TYPE_PERMANENT or GetItemType(loc_item01)==ITEM_TYPE_CAMPAIGN)then
            call SetItemUserData(loc_item01,1)
            set loc_boolean03=Func0632(loc_player02,loc_unit01,0)
        endif
        if loc_boolean03==false and loc_item04!=null and Func0406(loc_item04)==false then
            set loc_boolean03=Func0654(loc_unit01,loc_item04)
        endif
        if loc_boolean03==false and loc_item04!=null and Func0406(loc_item04)==false then
            call Func0650(loc_unit01,loc_item04)
        endif
    else
        if GetWidgetLife(loc_item01)>0 then
            set loc_integer05=Func0382(loc_unit01)
            set loc_integer06=Func0383(loc_unit01)
            if Func0394(loc_unit01,integers089[loc_integer05])==null and GetUnitAbilityLevel(loc_unit01,loc_integer06)>0 then
                call UnitRemoveAbility(loc_unit01,loc_integer06)
                if GetUnitTypeId(loc_unit01)=='Hmkg' then
                    set unit124=loc_unit01
                    call ExecuteFunc("Func2271")
                endif
            endif
            if IsItemOwned(loc_item01)==false then
                if GetItemType(loc_item01)==ITEM_TYPE_ARTIFACT or Func0387(loc_integer03)or Func0386(loc_integer03)then
                    set loc_boolean02=true
                endif
                call Func0389(integers088[loc_integer03],GetItemX(loc_item01),GetItemY(loc_item01),loc_player02,loc_boolean02,loc_integer04)
                call Func0392(loc_item01)
            endif
        endif
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call EnableTrigger(trigger058)
    set loc_trigger01=null
    set loc_item01=null
    set loc_unit01=null
    set loc_player01=null
    set loc_player02=null
    set loc_item02=null
    set loc_item03=null
    set loc_item04=null
    return false
endfunction

// 17545 ~ 17549
function Func0658 takes nothing returns boolean
    call EnableTrigger(trigger057)
    call Func0035(GetTriggeringTrigger())
    return false
endfunction

// 17551 ~ 17557
function Func0659 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call DisableTrigger(trigger057)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0658))
    set loc_trigger01=null
endfunction

// 17559 ~ 17711
function Func0660 takes nothing returns boolean
    local item loc_item01
    local integer loc_integer01
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05
    set loc_integer05=GetPlayerId(GetOwningPlayer(loc_unit01))
    if(IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true or Func0262(loc_unit01))and IsUnitIllusion(loc_unit01)==false and GetUnitTypeId(loc_unit01)!='N0MM' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
            if GetItemTypeId(GetManipulatedItem())==integers089[integer113]then
                set integer391=integer391+1
                set integers102[loc_integer05]=integers102[loc_integer05]+1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer088]then
                set integer392=integer392+1
                set integers103[loc_integer05]=integers103[loc_integer05]+1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer235]then
                set integer393=integer393+1
                set integers104[loc_integer05]=integers104[loc_integer05]+1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer173]or GetItemTypeId(GetManipulatedItem())==integers089[integer258]then
                set integer394=integer394+1
                set integers105[loc_integer05]=integers105[loc_integer05]+1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer219]then
                set integer395=integer395+1
                set integers111[loc_integer05]=integers111[loc_integer05]+1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer210]then
                set integer390=integer390+1
                set integers106[loc_integer05]=integers106[loc_integer05]+1
                call Func0407(loc_unit01,'I0HM')
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer187]then
                set integer396=integer396+1
                set integers107[loc_integer05]=integers107[loc_integer05]+1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer172]then
                set integer397=integer397+1
                set integers108[loc_integer05]=integers108[loc_integer05]+1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer257]then
                set integer398=integer398+1
                set integers109[loc_integer05]=integers109[loc_integer05]+1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer135]then
                set integer399=integer399+1
                set integers112[loc_integer05]=integers112[loc_integer05]+1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer177]then
                set integer400=integer400+1
                set integers110[loc_integer05]=integers110[loc_integer05]+1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer178]then
                set integer400=integer400+1
                set integers110[loc_integer05]=integers110[loc_integer05]+1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer179]then
                set integer400=integer400+1
                set integers110[loc_integer05]=integers110[loc_integer05]+1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer180]then
                set integer400=integer400+1
                set integers110[loc_integer05]=integers110[loc_integer05]+1
            endif
        elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_DROP_ITEM then
            if GetItemTypeId(GetManipulatedItem())==integers089[integer113]then
                set integers102[loc_integer05]=integers102[loc_integer05]-1
                set integer391=integer391-1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer088]and GetUnitTypeId(loc_unit01)!='N0MM' then
                set integers103[loc_integer05]=integers103[loc_integer05]-1
                set integer392=integer392-1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer135]then
                set integers112[loc_integer05]=integers112[loc_integer05]-1
                set integer399=integer399-1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer235]then
                set integers104[loc_integer05]=integers104[loc_integer05]-1
                set integer393=integer393-1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer173]or GetItemTypeId(GetManipulatedItem())==integers089[integer258]then
                set integer394=integer394-1
                set integers105[loc_integer05]=integers105[loc_integer05]-1
                if integers105[loc_integer05]<1 or Func0393(loc_unit01,integers089[integer173],GetManipulatedItem())==null or Func0393(loc_unit01,integers089[integer258],GetManipulatedItem())==null then
                    call UnitRemoveAbility(loc_unit01,'A174')
                endif
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer219]and GetUnitTypeId(loc_unit01)!='N0MM' then
                set integers111[loc_integer05]=integers111[loc_integer05]-1
                set integer395=integer395-1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer210]or GetItemTypeId(GetManipulatedItem())==integers091[integer210]then
                set integer390=IMaxBJ(integer390-1,0)
                set integers106[loc_integer05]=IMaxBJ(integers106[loc_integer05]-1,0)
                call UnitRemoveAbility(loc_unit01,'B0BI')
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer177]then
                set integer400=integer400-1
                set integers110[loc_integer05]=integers110[loc_integer05]-1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer178]then
                set integer400=integer400-1
                set integers110[loc_integer05]=integers110[loc_integer05]-1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer179]then
                set integer400=integer400-1
                set integers110[loc_integer05]=integers110[loc_integer05]-1
            elseif GetItemTypeId(GetManipulatedItem())==integers089[integer180]then
                set integer400=integer400-1
                set integers110[loc_integer05]=integers110[loc_integer05]-1
            endif
        endif
    endif
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_PAWN_ITEM then
        set loc_item01=GetSoldItem()
        call SetItemUserData(loc_item01,-2)
        set loc_integer03=Func0382(loc_unit01)
        set loc_integer04=Func0383(loc_unit01)
        if Func0393(loc_unit01,integers089[loc_integer03],loc_item01)==null and GetUnitAbilityLevel(loc_unit01,loc_integer04)>0 then
            call UnitRemoveAbility(loc_unit01,loc_integer04)
            if GetUnitTypeId(loc_unit01)=='Hmkg' then
                set unit124=loc_unit01
                call ExecuteFunc("Func2271")
            endif
        endif
        if boolean134==true then
            call Func0656(loc_unit01)
        endif
    elseif GetItemTypeId(GetManipulatedItem())!='I00E' and GetItemTypeId(GetManipulatedItem())!='I02M' then
        set loc_item01=GetManipulatedItem()
        if IsUnitIllusion(loc_unit01)or GetItemUserData(loc_item01)==-2 then
            set loc_item01=null
            set loc_unit01=null
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
            set loc_integer01=1
        else
            set loc_integer01=2
        endif
        if(loc_integer01==1 or(loc_integer01==2 and Func0406(loc_item01)==false and GetWidgetLife(loc_item01)>0))and GetUnitTypeId(loc_unit01)!='H00J' then
            set loc_trigger01=CreateTrigger()
            set loc_integer02=GetHandleId(loc_trigger01)
            call TriggerRegisterTimerEvent(loc_trigger01,0,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func0657))
            call SaveUnitHandle(hashtable001,(loc_integer02),(26),(loc_unit01))
            call SaveInteger(hashtable001,(loc_integer02),(97),(loc_integer01))
            call SaveInteger(hashtable001,(loc_integer02),(93),(Func0380(loc_item01)))
            if Func0406(loc_item01)then
                call SaveBoolean(hashtable001,(loc_integer02),(95),(true))
                call SavePlayerHandle(hashtable001,(loc_integer02),(54),(GetItemPlayer(loc_item01)))
                call SaveInteger(hashtable001,(loc_integer02),(76),(GetItemCharges(loc_item01)))
                call SaveReal(hashtable001,(loc_integer02),(6),((GetItemX(loc_item01))*1.0))
                call SaveReal(hashtable001,(loc_integer02),(7),((GetItemY(loc_item01))*1.0))
            else
                call SaveBoolean(hashtable001,(loc_integer02),(95),(false))
                call SaveItemHandle(hashtable001,(loc_integer02),(96),(loc_item01))
                call SaveInteger(hashtable001,(loc_integer02),(76),(GetItemCharges(loc_item01)))
                call SetItemUserData(loc_item01,0)
            endif
        else
        endif
    endif
    set loc_item01=null
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 17713 ~ 17720
function Func0661 takes nothing returns boolean
    if GetSpellAbilityId()=='A1RI' or GetSpellAbilityId()=='A0BE' then
        if Func0194(GetTriggerUnit())==false then
            call Func0649(GetTriggerUnit())
        endif
    endif
    return false
endfunction

// 17722 ~ 17724
function Func0662 takes nothing returns nothing
    call Func0649(unit124)
endfunction

// 17726 ~ 17767
function Func0663 takes unit loc_unit01,integer loc_integer01,boolean loc_boolean01 returns nothing
    local string loc_string01
    local string loc_string02
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local real loc_real01=2
    local string loc_string03="Use"
    if loc_boolean01 then
        set loc_string03="Store"
    endif
    if loc_integer01=='I006' then
        set loc_string01="|c00ff0000"+GetObjectName('n0JQ')+"|r"
        call Func0415("Rune"+loc_string03+"1",GetPlayerId(loc_player01))
    elseif loc_integer01=='I008' then
        set loc_string01="|c0000ff00"+GetObjectName('n0JN')+"|r"
        call Func0415("Rune"+loc_string03+"2",GetPlayerId(loc_player01))
    elseif loc_integer01=='I00K' then
        set loc_string01="|c000000ff"+GetObjectName('n0K3')+"|r"
        call Func0415("Rune"+loc_string03+"3",GetPlayerId(loc_player01))
    elseif loc_integer01=='I007' then
        set loc_string01="|c00afaf00"+GetObjectName('n0K2')+"|r"
        call Func0415("Rune"+loc_string03+"4",GetPlayerId(loc_player01))
    elseif loc_integer01=='I00J' then
        set loc_string01="|c00652DC1"+GetObjectName('n0K4')+"|r"
        call Func0415("Rune"+loc_string03+"5",GetPlayerId(loc_player01))
    elseif loc_integer01=='I0RC' then
        set loc_string01="|c00FFD700"+GetObjectName('n0NR')+"|r"
        call Func0415("Rune"+loc_string03+"6",GetPlayerId(loc_player01))
    endif
    if loc_boolean01 then
        set loc_string02=strings001[GetPlayerId(loc_player01)]+GetUnitName(loc_unit01)+"|r "+GetObjectName('n0GU')+"|r "+loc_string01+" "+GetObjectName('n0GW')
        set loc_real01=1
    else
        if boolean068 then
            set loc_string02=strings001[GetPlayerId(loc_player01)]+GetUnitName(loc_unit01)+"|r "+GetObjectName('n0GV')+"|r "+loc_string01+" "+GetObjectName('n0GW')
        else
            set loc_string02=strings001[GetPlayerId(loc_player01)]+GetUnitName(loc_unit01)+"|r "+GetObjectName('n0GT')+"|r "+loc_string01+" "+GetObjectName('n0GW')
        endif
    endif
    if(IsPlayerAlly(GetLocalPlayer(),loc_player01)and GetLocalPlayer()!=loc_player01)or Func0107(GetLocalPlayer())then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,loc_real01,loc_string02)
    endif
endfunction

// 17769 ~ 17787
function Func0664 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    if GetUnitAbilityLevel(loc_unit01,'B01S')==0 then
        call UnitRemoveAbility(loc_unit01,'B01S')
        call UnitRemoveAbility(loc_unit01,'B04A')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetUnitState(loc_unit01,UNIT_STATE_LIFE)==GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)and GetUnitState(loc_unit01,UNIT_STATE_MANA)==GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA)then
        call UnitRemoveAbility(loc_unit01,'B01S')
        call UnitRemoveAbility(loc_unit01,'B04A')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 17789 ~ 17796
function Func0665 takes unit loc_unit01,item loc_item01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0664))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    set loc_trigger01=null
endfunction

// 17798 ~ 17810
function Func0666 takes unit loc_unit01,item loc_item01 returns nothing
    local integer loc_integer01=R2I((TimerGetElapsed(timer001))/60)
    local integer loc_integer02=50+5*loc_integer01
    local integer loc_integer03=50+2*loc_integer01
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(GetHandleId(loc_item01)),(835)))
    if loc_boolean01 then
        set loc_integer02=100
        set loc_integer03=100
    endif
    call AddHeroXP(loc_unit01,loc_integer02,true)
    call Func0240(GetOwningPlayer(loc_unit01),loc_integer03,loc_unit01)
    call PlaySoundOnUnitBJ(sound078,100,loc_unit01)
endfunction

// 17812 ~ 17826
function Func0667 takes unit loc_unit01,item loc_item01 returns nothing
    local unit loc_unit02=loc_unit01
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',loc_real01,loc_real02,0)
    if IsUnitType(loc_unit02,UNIT_TYPE_MELEE_ATTACKER)==true then
        call UnitAddAbility(loc_unit03,'A2XN')
    else
        call UnitAddAbility(loc_unit03,'A0GR')
    endif
    call IssueTargetOrderById(loc_unit03,852274,loc_unit02)
    call IssueTargetOrderById(loc_unit03,852274,loc_unit02)
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 17828 ~ 17847
function Func0668 takes unit loc_unit01,item loc_item01 returns nothing
    if GetItemTypeId(loc_item01)=='I007' or GetItemTypeId(loc_item01)=='I006' or GetItemTypeId(loc_item01)=='I008' or GetItemTypeId(loc_item01)=='I00K' or GetItemTypeId(loc_item01)=='I00J' or GetItemTypeId(loc_item01)=='I0RC' then
        call Func0663(loc_unit01,GetItemTypeId(loc_item01),false)
    endif
    if GetItemTypeId(loc_item01)=='I007' then
        call Func0667(loc_unit01,loc_item01)
    elseif GetItemTypeId(loc_item01)=='I00J' then
        if GetUnitAbilityLevel(loc_unit01,'B09Y')>0 then
            call UnitRemoveAbility(loc_unit01,'B09Y')
            call UnitRemoveAbility(loc_unit01,'B01Q')
            call DisableTrigger(GetTriggeringTrigger())
            call UnitAddItemById(loc_unit01,'I00J')
            call EnableTrigger(GetTriggeringTrigger())
        endif
    elseif GetItemTypeId(loc_item01)=='I008' then
        call Func0665(loc_unit01,loc_item01)
    elseif GetItemTypeId(loc_item01)=='I0RC' then
        call Func0666(loc_unit01,loc_item01)
    endif
endfunction

// 17849 ~ 17882
function Func0669 takes unit loc_unit01,item loc_item01 returns nothing
    local integer loc_integer01
    local integer loc_integer02
    call UnitRemoveAbility(loc_unit01,'A27S')
    call UnitRemoveAbility(loc_unit01,'A27Q')
    call UnitRemoveAbility(loc_unit01,'A27R')
    call UnitRemoveAbility(loc_unit01,'A27T')
    if GetUnitAbilityLevel(loc_unit01,'A28F')>0 then
        call UnitRemoveAbility(loc_unit01,'A28F')
        call UnitAddAbility(loc_unit01,'A28F')
    endif
    if GetUnitTypeId(loc_unit01)=='Edem' then
        set loc_integer01='A0KY'
    elseif GetUnitTypeId(loc_unit01)=='U00F' then
        set loc_integer01='A06D'
    elseif GetUnitTypeId(loc_unit01)=='EC77' then
        set loc_integer01='A0MM'
    elseif GetUnitTypeId(loc_unit01)=='Ogrh' then
        set loc_integer01='A0YK'
    elseif GetUnitTypeId(loc_unit01)=='H00J' or GetUnitTypeId(loc_unit01)=='H00I' then
        set loc_integer01='A2QA'
    elseif GetUnitTypeId(loc_unit01)=='UC60' then
        set loc_integer01='A2TS'
    else
        set loc_unit01=null
        return
    endif
    set loc_integer02=GetUnitAbilityLevel(loc_unit01,loc_integer01)
    if loc_integer02>0 then
        call UnitRemoveAbility(loc_unit01,loc_integer01)
        call UnitAddAbility(loc_unit01,loc_integer01)
        call SetUnitAbilityLevel(loc_unit01,loc_integer01,loc_integer02)
    endif
endfunction

// 17884 ~ 17910
function Func0670 takes item loc_item01,unit loc_unit01,boolean loc_boolean01 returns nothing
    local integer loc_integer01=Func0380(loc_item01)
    local integer loc_integer02=GetHandleId(loc_unit01)
    local string loc_string01=""
    if(loc_integer01==integer083 and Func0393(loc_unit01,integer083,loc_item01)==null)or(loc_integer01==integer084 and Func0393(loc_unit01,integer084,loc_item01)==null)then
        if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(loc_unit01))==true or Func0107(GetLocalPlayer())then
            set loc_string01="Abilities\\Spells\\Human\\MagicSentry\\MagicSentryCaster.mdl"
        endif
        if loc_boolean01 then
            if Func0398(loc_unit01)>0 or GetItemType(loc_item01)==ITEM_TYPE_PERMANENT or GetItemType(loc_item01)==ITEM_TYPE_CAMPAIGN then
                if GetUnitAbilityLevel(loc_unit01,'A26A')==0 and GetUnitAbilityLevel(loc_unit01,'A26B')==0 then
                    if loc_string01=="Abilities\\Spells\\Human\\MagicSentry\\MagicSentryCaster.mdl" then
                        call Func0193(loc_unit01,'A26A')
                    else
                        call Func0193(loc_unit01,'A26B')
                    endif
                endif
            endif
        else
            if not(GetUnitAbilityLevel(loc_unit01,'A26A')==0 and GetUnitAbilityLevel(loc_unit01,'A26B')==0)then
                call UnitRemoveAbility(loc_unit01,'A26B')
                call UnitRemoveAbility(loc_unit01,'A26A')
                call RemoveSavedHandle(hashtable001,(loc_integer02),(670))
            endif
        endif
    endif
endfunction

// 17912 ~ 17931
function Func0671 takes nothing returns boolean
    local unit loc_unit01=GetTriggerUnit()
    local item loc_item01=GetManipulatedItem()
    local integer loc_integer01=GetItemTypeId(loc_item01)
    if loc_item01==null or IsUnitIllusion(loc_unit01)==true or IsUnitType(loc_unit01,UNIT_TYPE_HERO)==false or Func0468(GetUnitTypeId(loc_unit01))or GetItemTypeId(loc_item01)=='I00E' or GetItemTypeId(loc_item01)=='I02M' then
        set loc_unit01=null
        set loc_item01=null
        return false
    endif
    if(GetTriggerEventId()==EVENT_PLAYER_UNIT_DROP_ITEM and GetItemType(loc_item01)!=ITEM_TYPE_PURCHASABLE)or GetTriggerEventId()==EVENT_PLAYER_UNIT_PAWN_ITEM then
        call Func0670(loc_item01,loc_unit01,false)
        call Func0415("DRI_"+I2S(GetPlayerId(GetOwningPlayer(loc_unit01))),integers089[Func0377(Func0380(loc_item01))])
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
        call Func0670(loc_item01,loc_unit01,true)
        call Func0415("PUI_"+I2S(GetPlayerId(GetOwningPlayer(loc_unit01))),integers089[Func0377(Func0380(loc_item01))])
    endif
    set loc_unit01=null
    set loc_item01=null
    return false
endfunction

// 17933 ~ 17957
function Func0672 takes nothing returns boolean
    local integer loc_integer01
    if integer401>0 and reals010[1]<1 then
        set loc_integer01=2
        loop
            exitwhen loc_integer01>integer401
            set reals010[loc_integer01-1]=reals010[loc_integer01]
            set items007[loc_integer01-1]=items007[loc_integer01]
            set loc_integer01=loc_integer01+1
        endloop
        set integer401=integer401-1
    endif
    set loc_integer01=1
    loop
        exitwhen loc_integer01>integer401
        if reals010[loc_integer01]>=1 then
            set reals010[loc_integer01]=reals010[loc_integer01]-1
            if reals010[loc_integer01]<1 then
                call SetItemDroppable(items007[loc_integer01],true)
            endif
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return false
endfunction

// 17959 ~ 17964
function Func0673 takes item loc_item01 returns nothing
    set integer401=integer401+1
    set items007[integer401]=loc_item01
    set reals010[integer401]=(integers093[(Func0399(loc_item01))])
    call SetItemDroppable(loc_item01,false)
endfunction

// 17966 ~ 17971
function Func0674 takes nothing returns boolean
    if GetUnitTypeId(GetTriggerUnit())!='e00E' and(integers093[(Func0399(GetManipulatedItem()))])>0 then
        call Func0673(GetManipulatedItem())
    endif
    return false
endfunction
