
// 2511 ~ 2520
function Func0005 takes itemtype loc_itemtype01,integer loc_integer01 returns nothing
    local group loc_group01
    set bj_stockPickedItemType=loc_itemtype01
    set bj_stockPickedItemLevel=loc_integer01
    set loc_group01=CreateGroup()
    call GroupEnumUnitsOfType(loc_group01,"marketplace",boolexpr001)
    call ForGroup(loc_group01,function UpdateEachStockBuildingEnum)
    call DestroyGroup(loc_group01)
    set loc_group01=null
endfunction

// 2522 ~ 2560
function Func0006 takes nothing returns nothing
    local integer loc_integer01
    local itemtype loc_itemtype01
    local integer loc_integer02=0
    local integer loc_integer03=0
    local integer loc_integer04
    set loc_integer04=1
    loop
        if(bj_stockAllowedPermanent[loc_integer04])then
            set loc_integer03=loc_integer03+1
            if(GetRandomInt(1,loc_integer03)==1)then
                set loc_itemtype01=ITEM_TYPE_PERMANENT
                set loc_integer02=loc_integer04
            endif
        endif
        if(bj_stockAllowedCharged[loc_integer04])then
            set loc_integer03=loc_integer03+1
            if(GetRandomInt(1,loc_integer03)==1)then
                set loc_itemtype01=ITEM_TYPE_CHARGED
                set loc_integer02=loc_integer04
            endif
        endif
        if(bj_stockAllowedArtifact[loc_integer04])then
            set loc_integer03=loc_integer03+1
            if(GetRandomInt(1,loc_integer03)==1)then
                set loc_itemtype01=ITEM_TYPE_ARTIFACT
                set loc_integer02=loc_integer04
            endif
        endif
        set loc_integer04=loc_integer04+1
        exitwhen loc_integer04>10
    endloop
    if(loc_integer03==0)then
        set loc_itemtype01=null
        return
    endif
    call Func0005(loc_itemtype01,loc_integer02)
    set loc_itemtype01=null
endfunction

// 2562 ~ 2565
function Func0007 takes nothing returns nothing
    call Func0006()
    call TimerStart(bj_stockUpdateTimer,bj_STOCK_RESTOCK_INTERVAL,true,function Func0006)
endfunction
