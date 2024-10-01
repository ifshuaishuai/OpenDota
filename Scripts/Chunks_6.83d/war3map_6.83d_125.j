
// 23563 ~ 23599
function Func0966 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local item loc_item01=GetManipulatedItem()
    local integer loc_integer01=Func0399(loc_item01)
    local integer loc_integer02
    call DisableTrigger(trigger057)
    if GetUnitTypeId(loc_unit01)!='H00J' then
        if loc_integer01==integer162 then
            set loc_integer02=Func0232(loc_unit01,loc_item01)
            set player005=GetItemPlayer(GetManipulatedItem())
            call RemoveItem(loc_item01)
            call DisableTrigger(trigger057)
            set item002=Func0410(loc_unit01,integers089[integer163],loc_integer02)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer01==integer163 then
            set loc_integer02=Func0232(loc_unit01,loc_item01)
            set player005=GetItemPlayer(GetManipulatedItem())
            call RemoveItem(loc_item01)
            call DisableTrigger(trigger057)
            set item002=Func0410(loc_unit01,integers089[integer164],loc_integer02)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer01==integer164 then
            set loc_integer02=Func0232(loc_unit01,loc_item01)
            set player005=GetItemPlayer(GetManipulatedItem())
            call RemoveItem(loc_item01)
            call DisableTrigger(trigger057)
            set item002=Func0410(loc_unit01,integers089[integer162],loc_integer02)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        endif
    endif
    call EnableTrigger(trigger057)
    set loc_unit01=null
    set loc_item01=null
endfunction

// 23601 ~ 23670
function Func0967 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local item loc_item01=GetManipulatedItem()
    local integer loc_integer01=Func0399(loc_item01)
    local integer loc_integer02
    call DisableTrigger(trigger057)
    if loc_integer01==integer159 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer160],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    elseif loc_integer01==integer160 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer159],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    if loc_integer01==integer139 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer140],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    elseif loc_integer01==integer140 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer139],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    if loc_integer01==integer215 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer216],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    elseif loc_integer01==integer216 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer215],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    if loc_integer01==integer224 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer225],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    elseif loc_integer01==integer225 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer224],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    call EnableTrigger(trigger057)
    set loc_unit01=null
    set loc_item01=null
endfunction

// 23672 ~ 23696
function Func0968 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local item loc_item01=GetManipulatedItem()
    local integer loc_integer01=Func0399(loc_item01)
    local integer loc_integer02
    call DisableTrigger(trigger057)
    if loc_integer01==integer217 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer218],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    elseif loc_integer01==integer218 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer217],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    call EnableTrigger(trigger057)
    set loc_unit01=null
    set loc_item01=null
endfunction

// 23698 ~ 23729
function Func0969 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local item loc_item01=GetManipulatedItem()
    local integer loc_integer01=Func0399(loc_item01)
    local integer loc_integer02
    call DisableTrigger(trigger057)
    if loc_integer01==integer177 and GetItemCharges(loc_item01)==0 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer179],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    elseif loc_integer01==integer178 and GetItemCharges(loc_item01)==0 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer180],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    elseif loc_integer01==integer132 and GetItemCharges(loc_item01)==0 then
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer133],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    call EnableTrigger(trigger057)
    set loc_unit01=null
    set loc_item01=null
endfunction

// 23731 ~ 23786
function Func0970 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local item loc_item01=GetManipulatedItem()
    local integer loc_integer01=Func0399(loc_item01)
    local integer loc_integer02
    call DisableTrigger(trigger057)
    if loc_integer01==integer191 then
        call SaveInteger(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(4345),(9))
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer192],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
        call Func0673(item002)
    elseif loc_integer01==integer192 then
        call SaveInteger(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(4345),(8))
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer193],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
        call Func0673(item002)
    elseif loc_integer01==integer193 then
        call SaveInteger(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(4345),(7))
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer194],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
        call Func0673(item002)
    elseif loc_integer01==integer194 then
        call SaveInteger(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(4345),(6))
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer195],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
        call Func0673(item002)
    elseif loc_integer01==integer195 then
        call SaveInteger(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(4345),(5))
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer196],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
        call Func0673(item002)
    endif
    call EnableTrigger(trigger057)
    set loc_unit01=null
    set loc_item01=null
endfunction

// 23788 ~ 23810
function Func0971 takes nothing returns boolean
    local integer loc_integer01
    local real loc_real01
    call DisableTrigger(trigger057)
    if Func0399(GetManipulatedItem())==integer238 then
        set loc_integer01=Func0232(GetTriggerUnit(),GetManipulatedItem())
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(GetManipulatedItem())
        set item002=Func0410(GetTriggerUnit(),integers089[integer237],loc_integer01)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    if Func0399(GetManipulatedItem())==integer237 then
        set loc_integer01=Func0232(GetTriggerUnit(),GetManipulatedItem())
        set player005=GetItemPlayer(GetManipulatedItem())
        call RemoveItem(GetManipulatedItem())
        set item002=Func0410(GetTriggerUnit(),integers089[integer238],loc_integer01)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    call EnableTrigger(trigger057)
    return false
endfunction

// 23812 ~ 23828
function Func0972 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local player loc_player01=GetItemPlayer(GetManipulatedItem())
    local item loc_item01
    call DisableTrigger(trigger057)
    call RemoveItem(GetManipulatedItem())
    set loc_item01=UnitAddItemById(loc_unit01,integers089[integer100])
    call SetItemPlayer(loc_item01,loc_player01,false)
    call SetItemUserData(loc_item01,1)
    set loc_item01=UnitAddItemById(loc_unit01,integers089[integer112])
    call SetItemPlayer(loc_item01,loc_player01,false)
    call SetItemUserData(loc_item01,1)
    call EnableTrigger(trigger057)
    set loc_unit01=null
    set loc_player01=null
    set loc_item01=null
endfunction

// 23830 ~ 23834
function Func0973 takes nothing returns nothing
    if GetItemTypeId(GetManipulatedItem())==integers089[integer156]then
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0G1'))
    endif
endfunction
