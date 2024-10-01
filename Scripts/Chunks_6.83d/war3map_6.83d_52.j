
// 18459 ~ 18485
function Func0704 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=0
    local item loc_item01
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(loc_unit01))
    local region loc_region01=CreateRegion()
    if Func0056(GetOwningPlayer(loc_unit01))then
        call RegionAddRect(loc_region01,rect044)
    else
        call RegionAddRect(loc_region01,rect045)
    endif
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        if Func0378(Func0380(loc_item01))==false and Func0380(loc_item01)!=integer198 and Func0384(loc_item01)==false then
            call UnitRemoveItemFromSlot(loc_unit01,loc_integer01)
            if(GetUnitTypeId(loc_unit01)=='ncop' or IsUnitInRegion(loc_region01,loc_unit01))and IsPlayerAlly(GetItemPlayer(loc_item01),GetOwningPlayer(loc_unit01))==true then
                set loc_integer02=GetPlayerId(GetItemPlayer(loc_item01))
                call SetItemPosition(loc_item01,reals005[loc_integer02],reals006[loc_integer02])
            endif
        endif
        set loc_integer01=loc_integer01+1
    endloop
    call RemoveRegion(loc_region01)
    set loc_unit01=null
    set loc_region01=null
endfunction

// 18487 ~ 18491
function Func0705 takes nothing returns nothing
    if GetSpellAbilityId()=='A138' or GetSpellAbilityId()=='A14C' then
        call Func0704()
    endif
endfunction

// 18493 ~ 18506
function Func0706 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=0
    local real loc_real01=(TimerGetElapsed(timer001))
    local real loc_real02=13
    loop
        exitwhen loc_integer02>0
        if(LoadReal(hashtable001,(loc_integer01),(730+loc_integer02)))<loc_real01-loc_real02 then
            return false
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return true
endfunction

// 18508 ~ 18517
function Func0707 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(729)))
    call SaveReal(hashtable001,(loc_integer01),(730+loc_integer02),(((TimerGetElapsed(timer001)))*1.0))
    set loc_integer02=loc_integer02+1
    if loc_integer02==1 then
        set loc_integer02=0
    endif
    call SaveInteger(hashtable001,(loc_integer01),(729),(loc_integer02))
endfunction

// 18519 ~ 18553
function Func0708 takes unit loc_unit01 returns nothing
    local integer loc_integer01=0
    local item loc_item01
    local integer loc_integer02
    local boolean loc_boolean01=false
    if Func0706(loc_unit01)then
        set loc_boolean01=true
    endif
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        set loc_integer02=Func0399(loc_item01)
        if loc_integer02==integer135 and loc_boolean01==true then
            call DisableTrigger(trigger057)
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=Func0410(loc_unit01,integers089[integer136],loc_integer01)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
            call EnableTrigger(trigger057)
        endif
        if loc_integer02==integer136 and loc_boolean01==false then
            call DisableTrigger(trigger057)
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=Func0410(loc_unit01,integers089[integer135],loc_integer01)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
            call EnableTrigger(trigger057)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
    set loc_item01=null
endfunction

// 18555 ~ 18593
function Func0709 takes unit loc_unit01 returns nothing
    local integer loc_integer01=0
    local item loc_item01
    local integer loc_integer02
    local boolean loc_boolean01=false
    local real loc_real01=4
    if IsUnitType(loc_unit01,UNIT_TYPE_MELEE_ATTACKER)==false then
        set loc_real01=6
    endif
    if(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(785)))+loc_real01>(TimerGetElapsed(timer001))then
        set loc_boolean01=true
    endif
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        set loc_integer02=Func0399(loc_item01)
        if loc_integer02==integer219 and loc_boolean01==true then
            call DisableTrigger(trigger057)
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=Func0410(loc_unit01,integers089[integer220],loc_integer01)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
            call EnableTrigger(trigger057)
        endif
        if loc_integer02==integer220 and loc_boolean01==false then
            call DisableTrigger(trigger057)
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=Func0410(loc_unit01,integers089[integer219],loc_integer01)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
            call EnableTrigger(trigger057)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
    set loc_item01=null
endfunction

// 18595 ~ 18603
function Func0710 takes nothing returns nothing
    if GetEventDamage()>2 and(Func0058(GetOwningPlayer(GetEventDamageSource()))or GetUnitTypeId(GetEventDamageSource())=='n00L')and GetUnitAbilityLevel(GetTriggerUnit(),'A0RN')==0 then
        if booleans022[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]==false then
            call SaveReal(hashtable001,(GetHandleId(GetTriggerUnit())),(785),(((TimerGetElapsed(timer001)))*1.0))
            if GetEventDamage()>20 then
            endif
        endif
    endif
endfunction

// 18605 ~ 18639
function Func0711 takes unit loc_unit01 returns nothing
    local integer loc_integer01=0
    local item loc_item01
    local integer loc_integer02
    local boolean loc_boolean01=false
    if(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(785)))+3>(TimerGetElapsed(timer001))then
        set loc_boolean01=true
    endif
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        set loc_integer02=Func0399(loc_item01)
        if loc_integer02==integer088 and loc_boolean01==true then
            call DisableTrigger(trigger057)
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=Func0410(loc_unit01,integers089[integer089],loc_integer01)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
            call EnableTrigger(trigger057)
        endif
        if loc_integer02==integer089 and loc_boolean01==false then
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

// 18641 ~ 18654
function Func0712 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local integer loc_integer01=GetPlayerId(GetOwningPlayer(loc_unit01))
    if integers103[loc_integer01]>0 and loc_unit01!=null and GetUnitTypeId(loc_unit01)>1 and IsUnitType(loc_unit01,UNIT_TYPE_DEAD)==false then
        call Func0711(loc_unit01)
    endif
    if integers111[loc_integer01]>0 and loc_unit01!=null and GetUnitTypeId(loc_unit01)>1 and IsUnitType(loc_unit01,UNIT_TYPE_DEAD)==false then
        call Func0709(loc_unit01)
    endif
    if integers112[loc_integer01]>0 and loc_unit01!=null and GetUnitTypeId(loc_unit01)>1 and IsUnitType(loc_unit01,UNIT_TYPE_DEAD)==false then
        call Func0708(loc_unit01)
    endif
    set loc_unit01=null
endfunction

// 18656 ~ 18658
function Func0713 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and GetUnitTypeId(GetFilterUnit())!='H00J' and GetUnitTypeId(GetFilterUnit())!='H0B8'
endfunction

// 18660 ~ 18684
function Func0714 takes nothing returns boolean
    local integer loc_integer01=1
    local unit loc_unit01
    local integer loc_integer02
    local group loc_group01
    if integer392>0 or integer395>0 or integer399>0 then
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,0,0,9999,Condition(function Func0713))
        loop
            exitwhen loc_integer01>5
            set loc_integer02=GetPlayerId(players003[loc_integer01])
            set loc_unit01=units001[loc_integer02]
            call GroupAddUnit(loc_group01,loc_unit01)
            set loc_integer02=GetPlayerId(players004[loc_integer01])
            set loc_unit01=units001[loc_integer02]
            call GroupAddUnit(loc_group01,loc_unit01)
            set loc_integer01=loc_integer01+1
        endloop
        call ForGroup(loc_group01,function Func0712)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_unit01=null
    return false
endfunction
