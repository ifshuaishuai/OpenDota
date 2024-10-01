
// 41234 ~ 41236
function Func1591 takes unit loc_unit01 returns integer
    return 255
endfunction

// 41238 ~ 41271
function Func1592 takes unit loc_unit01,integer loc_integer01,player loc_player01 returns nothing
    local player loc_player02=GetOwningPlayer(loc_unit01)
    local player loc_player03
    local integer loc_integer02
    local item loc_item01
    if Func0056(GetOwningPlayer(loc_unit01))then
        set loc_player03=players003[0]
    else
        set loc_player03=players004[0]
    endif
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(787),(GetPlayerState(GetOwningPlayer(loc_unit01),PLAYER_STATE_RESOURCE_GOLD)))
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(140),(false))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4259)),(1))
    call UnitAddAbility(loc_unit01,'A04R')
    call Func0276(loc_unit01,true)
    call PauseUnit(loc_unit01,true)
    call SetUnitVertexColor(loc_unit01,Func1589(loc_unit01),Func1590(loc_unit01),Func1591(loc_unit01),150)
    call SelectUnitRemoveForPlayer(loc_unit01,GetOwningPlayer(loc_unit01))
    call SetUnitOwner(loc_unit01,loc_player03,false)
    call SetUnitPathing(loc_unit01,false)
    call SetUnitX(loc_unit01,GetUnitX(units006[loc_integer01]))
    call SetUnitY(loc_unit01,GetUnitY(units006[loc_integer01]))
    set loc_integer02=0
    loop
        exitwhen loc_integer02>5
        if UnitItemInSlot(loc_unit01,loc_integer02)==null then
            set loc_item01=CreateItem('I02M',GetUnitX(loc_unit01),GetUnitY(loc_unit01))
            call UnitAddItem(loc_unit01,loc_item01)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_player02=null
    set loc_player03=null
endfunction

// 41273 ~ 41298
function Func1593 takes unit loc_unit01,integer loc_integer01,player loc_player01 returns nothing
    local integer loc_integer02
    set units001[loc_integer01]=loc_unit01
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(140),(false))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4259)),(2))
    call UnitRemoveAbility(loc_unit01,'A04R')
    call Func0276(loc_unit01,false)
    call PauseUnit(loc_unit01,false)
    call SetUnitVertexColor(loc_unit01,Func1589(loc_unit01),Func1590(loc_unit01),Func1591(loc_unit01),255)
    call SelectUnitAddForPlayer(loc_unit01,GetOwningPlayer(loc_unit01))
    call SetUnitOwner(loc_unit01,loc_player01,false)
    call SetUnitPathing(loc_unit01,true)
    if Func0056(Player(loc_integer01))==true then
        call SetUnitPosition(loc_unit01,GetRectCenterX(rect011),GetRectCenterY(rect011))
    else
        call SetUnitPosition(loc_unit01,GetRectCenterX(rect004),GetRectCenterY(rect004))
    endif
    set loc_integer02=0
    loop
        exitwhen loc_integer02>5
        if GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer02))=='I02M' then
            call Func0392(UnitItemInSlot(loc_unit01,loc_integer02))
        endif
        set loc_integer02=loc_integer02+1
    endloop
endfunction
