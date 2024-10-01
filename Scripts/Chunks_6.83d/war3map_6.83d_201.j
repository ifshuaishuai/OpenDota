
// 41120 ~ 41122
function Func1580 takes nothing returns nothing
    set boolean133=true
endfunction

// 41124 ~ 41133
function Func1581 takes nothing returns nothing
    local integer loc_integer01=Func0380(GetEnumItem())
    if GetWidgetLife(GetEnumItem())>0 and GetItemPlayer(GetEnumItem())==player021 and loc_integer01!=integer198 and loc_integer01!=integer212 and loc_integer01!=integer213 and loc_integer01!=integer083 and loc_integer01!=integer084 then
        if IsItemVisible(GetEnumItem())then
            call SetItemVisible(GetEnumItem(),false)
        else
            call SetItemVisible(GetEnumItem(),true)
        endif
    endif
endfunction

// 41135 ~ 41168
function Func1582 takes nothing returns nothing
    local player loc_player01=player021
    local region loc_region01=CreateRegion()
    local unit loc_unit01=GetEnumUnit()
    local integer loc_integer01
    local integer loc_integer02=0
    local item loc_item01
    local integer loc_integer03
    local real loc_real01
    local real loc_real02
    if Func0056(loc_player01)then
        call RegionAddRect(loc_region01,rect044)
        set loc_real01=GetRectCenterX(rect044)
        set loc_real02=GetRectCenterY(rect044)
    else
        call RegionAddRect(loc_region01,rect045)
        set loc_real01=GetRectCenterX(rect045)
        set loc_real02=GetRectCenterY(rect045)
    endif
    loop
        exitwhen loc_integer02>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
        set loc_integer01=Func0380(loc_item01)
        if GetItemPlayer(loc_item01)==player021 and loc_integer01!=integer198 and loc_integer01!=integer212 and loc_integer01!=integer213 and loc_integer01!=integer083 and loc_integer01!=integer084 then
            call UnitRemoveItemFromSlot(loc_unit01,loc_integer02)
            set loc_integer03=GetPlayerId(GetItemPlayer(loc_item01))
            call SetItemPosition(loc_item01,loc_real01,loc_real02)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    call RemoveRegion(loc_region01)
    set loc_unit01=null
    set loc_region01=null
endfunction

// 41170 ~ 41172
function Func1583 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='ncop' or Func0096(GetFilterUnit())or(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and GetOwningPlayer(GetFilterUnit())!=player021 and GetOwningPlayer(GetFilterUnit())!=players003[0]and GetOwningPlayer(GetFilterUnit())!=players004[0]))and IsUnitAlly(GetFilterUnit(),player021)==true
endfunction

// 41174 ~ 41183
function Func1584 takes player loc_player01 returns nothing
    local integer loc_integer01=0
    local item loc_item01
    local integer loc_integer02=GetPlayerId(loc_player01)
    local group loc_group01=Func0030()
    set player021=loc_player01
    call GroupEnumUnitsInRange(loc_group01,0,0,99999,Condition(function Func1583))
    call ForGroup(loc_group01,function Func1582)
    call Func0029(loc_group01)
endfunction

// 41185 ~ 41188
function Func1585 takes player loc_player01 returns nothing
    set player021=loc_player01
    call EnumItemsInRectBJ(bj_mapInitialPlayableArea,function Func1581)
endfunction

// 41190 ~ 41211
function Func1586 takes unit loc_unit01 returns nothing
    local unit loc_unit02=loc_unit01
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local location loc_location01
    if Func0057(loc_player01)then
        set loc_location01=GetRectCenter(rect004)
    else
        set loc_location01=GetRectCenter(rect011)
    endif
    if boolean036==false and Func0194(loc_unit02)then
        call Func0485(loc_unit02,loc_player01,GetLocationX(loc_location01),GetLocationY(loc_location01),true)
        if Func0529(loc_unit02)==false or GetUnitAbilityLevel(loc_unit02,'A0MW')==0 then
            call ReviveHeroLoc(loc_unit02,loc_location01,true)
        else
            call Func0532(loc_unit02,loc_location01)
        endif
    endif
    call RemoveLocation(loc_location01)
    set loc_unit02=null
    set loc_player01=null
    set loc_location01=null
endfunction

// 41213 ~ 41220
function Func1587 takes unit loc_unit01,unit loc_unit02 returns nothing
    local player loc_player01=GetOwningPlayer(loc_unit02)
    local integer loc_integer01=GetPlayerId(loc_player01)
    call SetHeroXP(loc_unit02,GetHeroXP(loc_unit01),true)
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(787)))+integers144[loc_integer01])
    set integers143[loc_integer01]=GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)
    set integers144[loc_integer01]=0
endfunction

// 41222 ~ 41224
function Func1588 takes integer loc_integer01,unit loc_unit01 returns boolean
    return Func0046(integers070[loc_integer01])!=Func0045(loc_unit01)
endfunction

// 41226 ~ 41228
function Func1589 takes unit loc_unit01 returns integer
    return 255
endfunction

// 41230 ~ 41232
function Func1590 takes unit loc_unit01 returns integer
    return 255
endfunction
