
// 20209 ~ 20314
function Func0777 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(124)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(125)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(106)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(107)))
    local integer loc_integer05=(LoadInteger(hashtable001,(loc_integer01),(108)))
    local integer loc_integer06=(LoadInteger(hashtable001,(loc_integer01),(109)))
    local integer loc_integer07=(LoadInteger(hashtable001,(loc_integer01),(110)))
    local integer loc_integer08=(LoadInteger(hashtable001,(loc_integer01),(111)))
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(118)))
    local player loc_player02=(LoadPlayerHandle(hashtable001,(loc_integer01),(119)))
    local player loc_player03=(LoadPlayerHandle(hashtable001,(loc_integer01),(120)))
    local player loc_player04=(LoadPlayerHandle(hashtable001,(loc_integer01),(121)))
    local player loc_player05=(LoadPlayerHandle(hashtable001,(loc_integer01),(122)))
    local player loc_player06=(LoadPlayerHandle(hashtable001,(loc_integer01),(123)))
    local integer loc_integer09=(LoadInteger(hashtable001,(loc_integer01),(112)))
    local integer loc_integer10=(LoadInteger(hashtable001,(loc_integer01),(113)))
    local integer loc_integer11=(LoadInteger(hashtable001,(loc_integer01),(114)))
    local integer loc_integer12=(LoadInteger(hashtable001,(loc_integer01),(115)))
    local integer loc_integer13=(LoadInteger(hashtable001,(loc_integer01),(116)))
    local integer loc_integer14=(LoadInteger(hashtable001,(loc_integer01),(117)))
    call DisableTrigger(trigger057)
    if GetTriggerEvalCount(loc_trigger01)==1 then
        call UnitAddAbility(loc_unit01,loc_integer02)
        if booleans015[GetPlayerId(GetOwningPlayer(loc_unit01))]==false then
            call UnitRemoveType(loc_unit01,UNIT_TYPE_PEON)
        else
            call UnitAddType(loc_unit01,UNIT_TYPE_PEON)
        endif
    else
        if loc_integer03>0 then
            set item002=CreateItem(loc_integer03,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
            call UnitAddItem(loc_unit01,item002)
            call SetItemPlayer(item002,loc_player01,false)
            call SetItemUserData(item002,1)
        endif
        if loc_integer09>0 then
            call SetItemCharges(item002,loc_integer09)
        endif
        if loc_integer04>0 then
            set item002=CreateItem(loc_integer04,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
            call UnitAddItem(loc_unit01,item002)
            call SetItemPlayer(item002,loc_player02,false)
            call SetItemUserData(item002,1)
        endif
        if loc_integer10>0 then
            call SetItemCharges(item002,loc_integer10)
        endif
        if loc_integer05>0 then
            set item002=CreateItem(loc_integer05,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
            call UnitAddItem(loc_unit01,item002)
            call SetItemPlayer(item002,loc_player03,false)
            call SetItemUserData(item002,1)
        endif
        if loc_integer11>0 then
            call SetItemCharges(item002,loc_integer11)
        endif
        if loc_integer06>0 then
            set item002=CreateItem(loc_integer06,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
            call UnitAddItem(loc_unit01,item002)
            call SetItemPlayer(item002,loc_player04,false)
            call SetItemUserData(item002,1)
        endif
        if loc_integer12>0 then
            call SetItemCharges(item002,loc_integer12)
        endif
        if loc_integer07>0 then
            set item002=CreateItem(loc_integer07,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
            call UnitAddItem(loc_unit01,item002)
            call SetItemPlayer(item002,loc_player05,false)
            call SetItemUserData(item002,1)
        endif
        if loc_integer13>0 then
            call SetItemCharges(item002,loc_integer13)
        endif
        if loc_integer08>0 then
            set item002=CreateItem(loc_integer08,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
            call UnitAddItem(loc_unit01,item002)
            call SetItemPlayer(item002,loc_player06,false)
            call SetItemUserData(item002,1)
        endif
        if loc_integer14>0 then
            call SetItemCharges(item002,loc_integer14)
        endif
        if booleans015[GetPlayerId(GetOwningPlayer(loc_unit01))]==false then
            call UnitRemoveType(loc_unit01,UNIT_TYPE_PEON)
        else
            call UnitAddType(loc_unit01,UNIT_TYPE_PEON)
        endif
        call SetUnitFlyHeight(loc_unit01,240,0)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    call EnableTrigger(trigger057)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_player01=null
    set loc_player02=null
    set loc_player03=null
    set loc_player04=null
    set loc_player05=null
    set loc_player06=null
    return false
endfunction

// 20316 ~ 20451
function Func0778 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local item loc_item01
    local item loc_item02
    local item loc_item03
    local item loc_item04
    local item loc_item05
    local item loc_item06
    local player loc_player01
    local player loc_player02
    local player loc_player03
    local player loc_player04
    local player loc_player05
    local player loc_player06
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05
    local integer loc_integer06
    local integer loc_integer07
    local integer loc_integer08=-1
    local integer loc_integer09=-1
    local integer loc_integer10=-1
    local integer loc_integer11=-1
    local integer loc_integer12=-1
    local integer loc_integer13=-1
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer14=GetHandleId(loc_trigger01)
    local integer loc_integer15
    local item loc_item07
    local integer loc_integer16
    local item loc_item08
    set loc_integer16=0
    loop
        exitwhen loc_integer16>5
        set loc_item08=UnitItemInSlot(loc_unit01,loc_integer16)
        if Func0380(loc_item08)==integer083 then
            call UnitRemoveItem(loc_unit01,loc_item08)
        endif
        set loc_integer16=loc_integer16+1
    endloop
    set loc_item01=UnitItemInSlot(loc_unit01,0)
    set loc_item02=UnitItemInSlot(loc_unit01,1)
    set loc_item03=UnitItemInSlot(loc_unit01,2)
    set loc_item04=UnitItemInSlot(loc_unit01,3)
    set loc_item05=UnitItemInSlot(loc_unit01,4)
    set loc_item06=UnitItemInSlot(loc_unit01,5)
    set loc_integer02=GetItemTypeId(loc_item01)
    set loc_integer03=GetItemTypeId(loc_item02)
    set loc_integer04=GetItemTypeId(loc_item03)
    set loc_integer05=GetItemTypeId(loc_item04)
    set loc_integer06=GetItemTypeId(loc_item05)
    set loc_integer07=GetItemTypeId(loc_item06)
    set loc_player01=GetItemPlayer(loc_item01)
    set loc_player02=GetItemPlayer(loc_item02)
    set loc_player03=GetItemPlayer(loc_item03)
    set loc_player04=GetItemPlayer(loc_item04)
    set loc_player05=GetItemPlayer(loc_item05)
    set loc_player06=GetItemPlayer(loc_item06)
    set loc_item07=loc_item01
    if GetItemType(loc_item07)==ITEM_TYPE_ARTIFACT or Func0387(Func0380(loc_item07))or Func0386(Func0380(loc_item07))then
        set loc_integer08=GetItemCharges(loc_item07)
    endif
    set loc_item07=loc_item02
    if GetItemType(loc_item07)==ITEM_TYPE_ARTIFACT or Func0387(Func0380(loc_item07))or Func0386(Func0380(loc_item07))then
        set loc_integer09=GetItemCharges(loc_item07)
    endif
    set loc_item07=loc_item03
    if GetItemType(loc_item07)==ITEM_TYPE_ARTIFACT or Func0387(Func0380(loc_item07))or Func0386(Func0380(loc_item07))then
        set loc_integer10=GetItemCharges(loc_item07)
    endif
    set loc_item07=loc_item04
    if GetItemType(loc_item07)==ITEM_TYPE_ARTIFACT or Func0387(Func0380(loc_item07))or Func0386(Func0380(loc_item07))then
        set loc_integer11=GetItemCharges(loc_item07)
    endif
    set loc_item07=loc_item05
    if GetItemType(loc_item07)==ITEM_TYPE_ARTIFACT or Func0387(Func0380(loc_item07))or Func0386(Func0380(loc_item07))then
        set loc_integer12=GetItemCharges(loc_item07)
    endif
    set loc_item07=loc_item06
    if GetItemType(loc_item07)==ITEM_TYPE_ARTIFACT or Func0387(Func0380(loc_item07))or Func0386(Func0380(loc_item07))then
        set loc_integer13=GetItemCharges(loc_item07)
    endif
    call Func0392(loc_item01)
    call Func0392(loc_item02)
    call Func0392(loc_item03)
    call Func0392(loc_item04)
    call Func0392(loc_item05)
    call Func0392(loc_item06)
    if Func0056(GetOwningPlayer(loc_unit01))then
        set loc_integer15='S00I'
    else
        set loc_integer15='S00J'
    endif
    if GetRandomInt(1,3)==1 then
        set loc_integer15='S00Z'
    endif
    call SavePlayerHandle(hashtable001,(loc_integer14),(118),(loc_player01))
    call SavePlayerHandle(hashtable001,(loc_integer14),(119),(loc_player02))
    call SavePlayerHandle(hashtable001,(loc_integer14),(120),(loc_player03))
    call SavePlayerHandle(hashtable001,(loc_integer14),(121),(loc_player04))
    call SavePlayerHandle(hashtable001,(loc_integer14),(122),(loc_player05))
    call SavePlayerHandle(hashtable001,(loc_integer14),(123),(loc_player06))
    call SaveInteger(hashtable001,(loc_integer14),(106),(loc_integer02))
    call SaveInteger(hashtable001,(loc_integer14),(107),(loc_integer03))
    call SaveInteger(hashtable001,(loc_integer14),(108),(loc_integer04))
    call SaveInteger(hashtable001,(loc_integer14),(109),(loc_integer05))
    call SaveInteger(hashtable001,(loc_integer14),(110),(loc_integer06))
    call SaveInteger(hashtable001,(loc_integer14),(111),(loc_integer07))
    call SaveInteger(hashtable001,(loc_integer14),(112),(loc_integer08))
    call SaveInteger(hashtable001,(loc_integer14),(113),(loc_integer09))
    call SaveInteger(hashtable001,(loc_integer14),(114),(loc_integer10))
    call SaveInteger(hashtable001,(loc_integer14),(115),(loc_integer11))
    call SaveInteger(hashtable001,(loc_integer14),(116),(loc_integer12))
    call SaveInteger(hashtable001,(loc_integer14),(117),(loc_integer13))
    call SaveUnitHandle(hashtable001,(loc_integer14),(124),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer14),(125),(loc_integer15))
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0777))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_item01=null
    set loc_item02=null
    set loc_item03=null
    set loc_item04=null
    set loc_item05=null
    set loc_item06=null
    set loc_player01=null
    set loc_player02=null
    set loc_player03=null
    set loc_player04=null
    set loc_player05=null
    set loc_player06=null
endfunction

// 20453 ~ 20472
function Func0779 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local item loc_item01=Func0165(loc_unit01,integers089[integer297])
    if loc_item01==null then
        set loc_item01=Func0165(loc_unit01,integers091[integer297])
    endif
    if loc_item01!=null then
        call RemoveItem(loc_item01)
        call Func0778(loc_unit01)
    else
        call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n02Q'))
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 20474 ~ 20482
function Func0780 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0767(loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0779))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
endfunction

// 20484 ~ 20489
function Func0781 takes nothing returns boolean
    if GetSpellAbilityId()=='A0GD' then
        call Func0780(GetTriggerUnit())
    endif
    return false
endfunction

// 20491 ~ 20542
function Func0782 takes nothing returns boolean
    local unit loc_unit01=GetTriggerUnit()
    local item loc_item01=GetManipulatedItem()
    local integer loc_integer01=GetItemTypeId(loc_item01)
    local integer loc_integer02
    if(loc_integer01==integers089[integer149]or loc_integer01==integers089[integer161])and IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true then
        set reals011[GetPlayerId(GetOwningPlayer(loc_unit01))]=GetItemX(loc_item01)
        set reals012[GetPlayerId(GetOwningPlayer(loc_unit01))]=GetItemY(loc_item01)
    endif
    call Func0668(loc_unit01,loc_item01)
    call Func0669(loc_unit01,loc_item01)
    if(GetItemTypeId(loc_item01)==integers089[integer237]or GetItemTypeId(loc_item01)==integers089[integer238])and Func0096(loc_unit01)then
        call UnitRemoveItem(loc_unit01,loc_item01)
    elseif GetItemTypeId(loc_item01)==integers089[integer245]and IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true then
        set loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(750)))
        if loc_integer02>0 then
            if(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(751)))==false then
                call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(751),(true))
                call SetItemCharges(loc_item01,loc_integer02)
            endif
        endif
    elseif GetItemTypeId(loc_item01)==integers089[integer198]and GetUnitTypeId(loc_unit01)!='n00L' and boolean065==false then
        set unit243=loc_unit01
        set boolean065=true
        call Func0415("AegisOn",GetPlayerId(GetOwningPlayer(loc_unit01)))
        call Func0152(bj_FORCE_ALL_PLAYERS,10.00,strings001[GetPlayerId(GetOwningPlayer(loc_unit01))]+GetUnitName(loc_unit01)+"|r "+GetObjectName('n0EQ'))
    elseif GetItemTypeId(loc_item01)==integers089[integer297]and Func0094(loc_unit01)then
        call Func0780(loc_unit01)
    elseif GetItemTypeId(loc_item01)==integers089[integer369]and GetUnitTypeId(loc_unit01)=='Emoo' then
        call SetPlayerTechResearched(GetOwningPlayer(loc_unit01),'R00J',1)
    elseif GetItemTypeId(loc_item01)==integers089[integer372]and GetUnitTypeId(loc_unit01)=='H00I' then
        set unit124=loc_unit01
        call ExecuteFunc("Func3181")
    elseif GetItemTypeId(loc_item01)==integers089[integer332]and GetUnitTypeId(loc_unit01)=='E032' then
        set unit124=loc_unit01
        call ExecuteFunc("Func4374")
    elseif GetItemTypeId(loc_item01)==integers089[integer387]and GetUnitTypeId(loc_unit01)=='Hamg' then
        set unit124=loc_unit01
        call ExecuteFunc("Func2335")
    elseif GetItemTypeId(loc_item01)==integers089[integer388]and GetUnitTypeId(loc_unit01)=='N0MU' then
        set unit124=loc_unit01
        call ExecuteFunc("Func4555")
    elseif GetItemTypeId(loc_item01)==integers089[integer367]and GetUnitTypeId(loc_unit01)=='Ucrl' then
        call UnitAddAbility(loc_unit01,'A2KB')
        call UnitRemoveAbility(loc_unit01,'A2KB')
        call AddUnitAnimationProperties(loc_unit01,"upgrade",true)
        call SetPlayerTechResearched(GetOwningPlayer(loc_unit01),'R00K',1)
    endif
    set loc_unit01=null
    set loc_item01=null
    return false
endfunction
