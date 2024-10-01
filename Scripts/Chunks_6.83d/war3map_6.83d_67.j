
// 19909 ~ 20013
function Func0773 takes nothing returns boolean
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

// 20015 ~ 20191
function Func0774 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitTypeId(loc_unit01)
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
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05
    local integer loc_integer06
    local integer loc_integer07
    local integer loc_integer08
    local integer loc_integer09=-1
    local integer loc_integer10=-1
    local integer loc_integer11=-1
    local integer loc_integer12=-1
    local integer loc_integer13=-1
    local integer loc_integer14=-1
    local integer loc_integer15
    local item loc_item07
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if loc_unit01==null or Func0194(loc_unit01)then
        return false
    endif
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    set loc_item01=UnitItemInSlot(loc_unit01,0)
    set loc_item02=UnitItemInSlot(loc_unit01,1)
    set loc_item03=UnitItemInSlot(loc_unit01,2)
    set loc_item04=UnitItemInSlot(loc_unit01,3)
    set loc_item05=UnitItemInSlot(loc_unit01,4)
    set loc_item06=UnitItemInSlot(loc_unit01,5)
    set loc_integer03=GetItemTypeId(loc_item01)
    set loc_integer04=GetItemTypeId(loc_item02)
    set loc_integer05=GetItemTypeId(loc_item03)
    set loc_integer06=GetItemTypeId(loc_item04)
    set loc_integer07=GetItemTypeId(loc_item05)
    set loc_integer08=GetItemTypeId(loc_item06)
    set loc_player01=GetItemPlayer(loc_item01)
    set loc_player02=GetItemPlayer(loc_item02)
    set loc_player03=GetItemPlayer(loc_item03)
    set loc_player04=GetItemPlayer(loc_item04)
    set loc_player05=GetItemPlayer(loc_item05)
    set loc_player06=GetItemPlayer(loc_item06)
    set loc_item07=loc_item01
    if GetItemType(loc_item07)==ITEM_TYPE_ARTIFACT or Func0387(Func0380(loc_item07))or Func0386(Func0380(loc_item07))then
        set loc_integer09=GetItemCharges(loc_item07)
    endif
    set loc_item07=loc_item02
    if GetItemType(loc_item07)==ITEM_TYPE_ARTIFACT or Func0387(Func0380(loc_item07))or Func0386(Func0380(loc_item07))then
        set loc_integer10=GetItemCharges(loc_item07)
    endif
    set loc_item07=loc_item03
    if GetItemType(loc_item07)==ITEM_TYPE_ARTIFACT or Func0387(Func0380(loc_item07))or Func0386(Func0380(loc_item07))then
        set loc_integer11=GetItemCharges(loc_item07)
    endif
    set loc_item07=loc_item04
    if GetItemType(loc_item07)==ITEM_TYPE_ARTIFACT or Func0387(Func0380(loc_item07))or Func0386(Func0380(loc_item07))then
        set loc_integer12=GetItemCharges(loc_item07)
    endif
    set loc_item07=loc_item05
    if GetItemType(loc_item07)==ITEM_TYPE_ARTIFACT or Func0387(Func0380(loc_item07))or Func0386(Func0380(loc_item07))then
        set loc_integer13=GetItemCharges(loc_item07)
    endif
    set loc_item07=loc_item06
    if GetItemType(loc_item07)==ITEM_TYPE_ARTIFACT or Func0387(Func0380(loc_item07))or Func0386(Func0380(loc_item07))then
        set loc_integer14=GetItemCharges(loc_item07)
    endif
    call Func0392(loc_item01)
    call Func0392(loc_item02)
    call Func0392(loc_item03)
    call Func0392(loc_item04)
    call Func0392(loc_item05)
    call Func0392(loc_item06)
    if loc_integer02=='n00I' then
        set loc_integer15='S009'
    elseif loc_integer02=='n022' then
        set loc_integer15='S00V'
    elseif loc_integer02=='n021' then
        set loc_integer15='S00C'
    elseif loc_integer02=='n023' then
        set loc_integer15='S00E'
    elseif loc_integer02=='n024' then
        set loc_integer15='S00B'
    elseif loc_integer02=='n025' then
        set loc_integer15='S00F'
    elseif loc_integer02=='n0KY' then
        set loc_integer15='S00W'
    elseif loc_integer02=='n0KZ' then
        set loc_integer15='S00Y'
    elseif loc_integer02=='n0L0' then
        set loc_integer15='S00X'
    elseif loc_integer02=='n0L1' then
        set loc_integer15='S00D'
    elseif loc_integer02=='n0LE' then
        set loc_integer15='S01F'
    elseif loc_integer02=='n0M4' then
        set loc_integer15='S015'
    endif
    if GetRandomInt(1,10)==1 then
        set loc_integer15='S00G'
    endif
    if GetRandomInt(1,10)<3 then
        set loc_integer15='S016'
    endif
    if loc_integer02=='n00M' then
        set loc_integer15='S00L'
    elseif loc_integer02=='n0LS' then
        set loc_integer15='S00L'
    elseif loc_integer02=='n0HV' then
        set loc_integer15='S00F'
    endif
    if loc_integer02=='e01H' then
        set loc_integer15='S012'
    elseif loc_integer02=='e01Z' then
        set loc_integer15='S010'
    elseif loc_integer02=='e02R' then
        set loc_integer15='S014'
    elseif loc_integer02=='e02T' then
        set loc_integer15='S011'
    elseif loc_integer02=='e02S' then
        set loc_integer15='S017'
    elseif loc_integer02=='e030' then
        set loc_integer15='S013'
    endif
    call SavePlayerHandle(hashtable001,(loc_integer01),(118),(loc_player01))
    call SavePlayerHandle(hashtable001,(loc_integer01),(119),(loc_player02))
    call SavePlayerHandle(hashtable001,(loc_integer01),(120),(loc_player03))
    call SavePlayerHandle(hashtable001,(loc_integer01),(121),(loc_player04))
    call SavePlayerHandle(hashtable001,(loc_integer01),(122),(loc_player05))
    call SavePlayerHandle(hashtable001,(loc_integer01),(123),(loc_player06))
    call SaveInteger(hashtable001,(loc_integer01),(106),(loc_integer03))
    call SaveInteger(hashtable001,(loc_integer01),(107),(loc_integer04))
    call SaveInteger(hashtable001,(loc_integer01),(108),(loc_integer05))
    call SaveInteger(hashtable001,(loc_integer01),(109),(loc_integer06))
    call SaveInteger(hashtable001,(loc_integer01),(110),(loc_integer07))
    call SaveInteger(hashtable001,(loc_integer01),(111),(loc_integer08))
    call SaveInteger(hashtable001,(loc_integer01),(112),(loc_integer09))
    call SaveInteger(hashtable001,(loc_integer01),(113),(loc_integer10))
    call SaveInteger(hashtable001,(loc_integer01),(114),(loc_integer11))
    call SaveInteger(hashtable001,(loc_integer01),(115),(loc_integer12))
    call SaveInteger(hashtable001,(loc_integer01),(116),(loc_integer13))
    call SaveInteger(hashtable001,(loc_integer01),(117),(loc_integer14))
    call SaveUnitHandle(hashtable001,(loc_integer01),(124),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(125),(loc_integer15))
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0773))
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
    return false
endfunction

// 20193 ~ 20200
function Func0775 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0774))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 20202 ~ 20207
function Func0776 takes nothing returns boolean
    if GetSpellAbilityId()=='A0OT' then
        call Func0775()
    endif
    return false
endfunction
