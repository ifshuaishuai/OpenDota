
// 57022 ~ 57044
function Func2552 takes nothing returns nothing
    local integer loc_integer01=0
    local unit loc_unit01=GetTriggerUnit()
    local item loc_item01
    local integer loc_integer02
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        set loc_integer02=Func0399(loc_item01)
        if loc_integer02==integer089 then
            call DisableTrigger(trigger057)
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=Func0410(loc_unit01,integers089[integer088],loc_integer01)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
            call EnableTrigger(trigger057)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
    set loc_item01=null
endfunction

// 57046 ~ 57087
function Func2553 takes nothing returns nothing
    local integer loc_integer01=0
    local integer loc_integer02=5
    local integer array loc_integers01
    local player array loc_players01
    local integer loc_integer03
    local item loc_item01
    call SaveReal(hashtable001,(GetHandleId(GetTriggerUnit())),(785),((0)*1.0))
    call Func2552()
    set loc_integers01[0]=0
    set loc_integers01[1]=0
    set loc_integers01[2]=0
    set loc_integers01[3]=0
    set loc_integers01[4]=0
    set loc_integers01[5]=0
    call DisableTrigger(trigger057)
    loop
        exitwhen loc_integer01>loc_integer02
        set loc_integer03=Func0399(UnitItemInSlot(GetTriggerUnit(),loc_integer01))
        if loc_integer03==integer191 or loc_integer03==integer192 or loc_integer03==integer193 or loc_integer03==integer194 or loc_integer03==integer195 or loc_integer03==integer196 or loc_integer03==integer181 or loc_integer03==integer207 or loc_integer03==integer208 or loc_integer03==integer209 or loc_integer03==integer165 or loc_integer03==integer226 or loc_integer03==integer230 or loc_integer03==integer254 then
            set loc_integers01[loc_integer01]=GetItemTypeId(UnitItemInSlot(GetTriggerUnit(),loc_integer01))
            set loc_players01[loc_integer01]=GetItemPlayer(UnitItemInSlot(GetTriggerUnit(),loc_integer01))
            call RemoveItem(UnitItemInSlot(GetTriggerUnit(),loc_integer01))
        endif
        set loc_integer01=loc_integer01+1
    endloop
    call UnitResetCooldown(GetTriggerUnit())
    set loc_integer01=0
    set loc_integer02=5
    loop
        exitwhen loc_integer01>loc_integer02
        if loc_integers01[loc_integer01]>0 then
            set loc_item01=CreateItem(loc_integers01[loc_integer01],0,0)
            call SetItemPlayer(loc_item01,loc_players01[loc_integer01],false)
            call SetItemUserData(loc_item01,1)
            call UnitAddItem(GetTriggerUnit(),loc_item01)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    call EnableTrigger(trigger057)
    set loc_item01=null
endfunction

// 57089 ~ 57094
function Func2554 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_FINISH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2551))
    call TriggerAddAction(loc_trigger01,function Func2553)
endfunction
