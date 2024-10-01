
// 18052 ~ 18213
function Func0679 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local item loc_item01
    local integer loc_integer01=0
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local integer loc_integer02
    local item loc_item02
    call DisableTrigger(trigger057)
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        set loc_integer02=Func0380(loc_item01)
        if loc_integer02==integer156 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer100],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer112],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer159 or loc_integer02==integer160 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer101],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer106],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer241 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer097],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer094],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer301],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer242 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer097],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer094],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer301],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer231 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer086],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer176],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer306],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer254 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer069],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer081],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer181 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer085],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer091],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer182 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer085],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer091],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer199 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer171],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer110],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer284],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer200 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer171],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer110],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer284],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer129 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer080],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer250],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer187 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer172],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer171],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer139 or loc_integer02==integer140 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer169],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer159],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        elseif loc_integer02==integer258 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_item02=CreateItem(integers088[integer104],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            set loc_item02=CreateItem(integers088[integer173],loc_real01,loc_real02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    call EnableTrigger(trigger057)
    set loc_unit01=null
    set loc_item01=null
    set loc_item02=null
endfunction

// 18215 ~ 18220
function Func0680 takes nothing returns boolean
    if GetSpellAbilityId()=='A0K5' or GetSpellAbilityId()=='A1RF' then
        call Func0679()
    endif
    return false
endfunction

// 18222 ~ 18224
function Func0681 takes integer loc_integer01 returns boolean
    return loc_integer01!=integer212 and loc_integer01!=integer235 and loc_integer01!=integer083 and loc_integer01!=integer198
endfunction

// 18226 ~ 18232
function Func0682 takes nothing returns nothing
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
        call SetItemPawnable(GetManipulatedItem(),false)
    else
        call SetItemPawnable(GetManipulatedItem(),true)
    endif
endfunction

// 18234 ~ 18239
function Func0683 takes nothing returns boolean
    if GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and Func0681(Func0399(GetManipulatedItem()))and Func0096(GetTriggerUnit())then
        call Func0682()
    endif
    return false
endfunction

// 18241 ~ 18251
function Func0684 takes nothing returns nothing
    local integer loc_integer01=1
    local player loc_player01
    loop
        exitwhen loc_integer01>16
        if Func0394(units001[loc_integer01],integers089[integer235])!=null then
            call RemoveUnit(units009[GetPlayerId(GetOwningPlayer(units001[loc_integer01]))])
        endif
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 18253 ~ 18255
function Func0685 takes nothing returns boolean
    return GetItemTypeId(GetManipulatedItem())==integers089[integer235]and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true
endfunction

// 18257 ~ 18259
function Func0686 takes nothing returns boolean
    return IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and Func0468(GetUnitTypeId(GetFilterUnit()))==false and Func0394(GetTriggerUnit(),integers089[integer235])!=null
endfunction

// 18261 ~ 18263
function Func0687 takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),'A04R')!=1 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1
endfunction

// 18265 ~ 18268
function Func0688 takes nothing returns nothing
    call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)+real002)
    call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\BloodstoneHealTarget.mdx",GetEnumUnit(),"origin"))
endfunction

// 18270 ~ 18272
function Func0689 takes nothing returns nothing
    call Func0044(GetEnumUnit(),4254,40)
endfunction

// 18274 ~ 18281
function Func0690 takes nothing returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),1700,Condition(function Func0687))
    set real002=500+30*GetItemCharges(Func0394(GetTriggerUnit(),integers089[integer235]))
    call ForGroup(loc_group01,function Func0688)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 18283 ~ 18288
function Func0691 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'H00M',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
    set units009[GetPlayerId(GetOwningPlayer(loc_unit01))]=loc_unit02
    call Func0690()
endfunction

// 18290 ~ 18295
function Func0692 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetItemCharges(Func0394(loc_unit01,integers089[integer235]))
    if loc_integer01>0 then
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+loc_integer01)
    endif
endfunction

// 18297 ~ 18319
function Func0693 takes nothing returns boolean
    local integer loc_integer01=1
    local unit loc_unit01
    local integer loc_integer02
    if integer393>0 then
        loop
            exitwhen loc_integer01>5
            set loc_integer02=GetPlayerId(players003[loc_integer01])
            set loc_unit01=units001[loc_integer02]
            if integers104[loc_integer02]>0 and loc_unit01!=null and GetUnitTypeId(loc_unit01)>1 and IsUnitType(loc_unit01,UNIT_TYPE_DEAD)==false then
                call Func0692(loc_unit01)
            endif
            set loc_integer02=GetPlayerId(players004[loc_integer01])
            set loc_unit01=units001[loc_integer02]
            if integers104[loc_integer02]>0 and loc_unit01!=null and GetUnitTypeId(loc_unit01)>1 and IsUnitType(loc_unit01,UNIT_TYPE_DEAD)==false then
                call Func0692(loc_unit01)
            endif
            set loc_integer01=loc_integer01+1
        endloop
    endif
    set loc_unit01=null
    return false
endfunction

// 18321 ~ 18327
function Func0694 takes unit loc_unit01,unit loc_unit02 returns nothing
    local string loc_string01=""
    if IsPlayerEnemy(GetLocalPlayer(),GetOwningPlayer(loc_unit02))and Func0107(GetLocalPlayer())==false then
        set loc_string01="war3mapImported\\WardMark_T2.mdx"
    endif
    call AddSpecialEffectTarget(loc_string01,loc_unit01,"origin")
endfunction

// 18329 ~ 18331
function Func0695 takes nothing returns boolean
    return true
endfunction

// 18333 ~ 18353
function Func0696 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01
    local item loc_item01
    if GetUnitTypeId(loc_unit02)=='o004' then
        set loc_integer01=integers089[integer147]
    else
        set loc_integer01=integers089[integer148]
    endif
    call DisableTrigger(trigger057)
    set loc_item01=Func0394(loc_unit01,loc_integer01)
    if loc_item01==null then
        set player005=GetOwningPlayer(loc_unit01)
        set item002=CreateItem(loc_integer01,0,0)
        call UnitAddItem(loc_unit01,item002)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    else
        call SetItemCharges(loc_item01,GetItemCharges(loc_item01)+1)
    endif
    call EnableTrigger(trigger057)
endfunction

// 18355 ~ 18379
function Func0697 takes nothing returns nothing
    local unit loc_unit01=GetSummonedUnit()
    local unit loc_unit02=GetSummoningUnit()
    if GetUnitTypeId(GetSummonedUnit())=='o004' then
    endif
    if GetUnitTypeId(GetSummonedUnit())=='o004' or GetUnitTypeId(GetSummonedUnit())=='oeye' then
        if IsUnitInRegion(region009,loc_unit01)then
            call Func0696(loc_unit02,loc_unit01)
            call RemoveUnit(loc_unit01)
        elseif Func0096(loc_unit02)then
            call Func0696(loc_unit02,loc_unit01)
            call Func0120(GetOwningPlayer(loc_unit01),"Couriers cannot place wards")
            call RemoveUnit(loc_unit01)
        else
            call Func0694(GetSummonedUnit(),GetSummoningUnit())
            if GetUnitTypeId(GetSummonedUnit())=='oeye' then
                call Func0186(GetOwningPlayer(GetSummonedUnit()),12,GetUnitX(GetSummonedUnit()),GetUnitY(GetSummonedUnit()),150)
            endif
        endif
    elseif GetUnitTypeId(loc_unit01)=='osp4' or GetUnitTypeId(loc_unit01)=='o008' or GetUnitTypeId(loc_unit01)=='o009' or GetUnitTypeId(loc_unit01)=='o01C' or GetUnitTypeId(loc_unit01)=='o01D' or GetUnitTypeId(loc_unit01)=='o01E' then
        call SelectUnitAddForPlayer(loc_unit01,GetOwningPlayer(loc_unit01))
    elseif GetUnitTypeId(loc_unit01)=='o000' or GetUnitTypeId(loc_unit01)=='o001' or GetUnitTypeId(loc_unit01)=='o00A' or GetUnitTypeId(loc_unit01)=='o00X' then
        call SelectUnitAddForPlayer(loc_unit01,GetOwningPlayer(loc_unit01))
    endif
endfunction

// 18381 ~ 18398
function Func0698 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local integer loc_integer01=0
    local player loc_player01=GetOwningPlayer(GetTriggerUnit())
    local item loc_item01
    local integer loc_integer02=GetPlayerId(loc_player01)
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        if loc_item01!=null and GetItemPlayer(loc_item01)==loc_player01 then
            call UnitRemoveItem(loc_unit01,loc_item01)
            call SetItemPosition(loc_item01,reals005[loc_integer02],reals006[loc_integer02])
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
    set loc_item01=null
endfunction

// 18400 ~ 18412
function Func0699 takes nothing returns nothing
    local item loc_item01=GetEnumItem()
    local unit loc_unit01=unit247
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local integer loc_integer01=GetPlayerId(loc_player01)
    if GetWidgetLife(loc_item01)>0 and GetItemPlayer(loc_item01)==loc_player01 and IsItemVisible(loc_item01)==true then
        call SetItemPosition(loc_item01,reals005[loc_integer01],reals006[loc_integer01])
        call UnitAddItem(units006[loc_integer01],loc_item01)
    endif
    set loc_item01=null
    set loc_unit01=null
    set loc_player01=null
endfunction

// 18414 ~ 18431
function Func0700 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(53)))
    set unit247=loc_unit01
    if Func0056(GetOwningPlayer(unit247))then
        call EnumItemsInRect(rect044,Condition(function Func0011),function Func0699)
    else
        call EnumItemsInRect(rect045,Condition(function Func0011),function Func0699)
    endif
    if GetTriggerEvalCount(loc_trigger01)==2 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
