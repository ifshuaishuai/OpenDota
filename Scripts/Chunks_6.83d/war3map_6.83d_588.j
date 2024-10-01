
// 67243 ~ 67245
function Func3158 takes unit loc_unit01 returns boolean
    return GetUnitTypeId(loc_unit01)=='H00I' or GetUnitTypeId(loc_unit01)=='H00J'
endfunction

// 67307 ~ 67309
function Func3159 takes unit loc_unit01 returns boolean
    return GetUnitTypeId(loc_unit01)==('H00I')or GetUnitTypeId(loc_unit01)==('H00J')
endfunction

// 67311 ~ 67313
function Func3160 takes nothing returns boolean
    return GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(unit002)and GetFilterUnit()!=unit002 and(GetUnitTypeId(GetFilterUnit())==('H00I')or GetUnitTypeId(GetFilterUnit())==('H00J'))
endfunction

// 67315 ~ 67317
function Func3161 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(unit002))==true and Func3159(GetFilterUnit())==false
endfunction

// 67319 ~ 67321
function Func3162 takes nothing returns nothing
    call AddHeroXP(GetEnumUnit(),integer011,true)
endfunction

// 67323 ~ 67371
function Func3163 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(370)))
    local integer loc_integer02=GetHandleId(loc_player01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer02),(699)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer02),(700)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer02),(701)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer02),(702)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer02),(703)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'Aamk')*2
    local integer loc_integer04=GetHeroAgi(loc_unit01,false)
    local integer loc_integer05=GetHeroAgi(loc_unit01,true)-loc_integer04-loc_integer03
    local integer loc_integer06=GetHeroStr(loc_unit01,false)
    local integer loc_integer07=GetHeroStr(loc_unit01,true)-loc_integer06-loc_integer03
    local integer loc_integer08=GetHeroInt(loc_unit01,false)
    local integer loc_integer09=GetHeroInt(loc_unit01,true)-loc_integer08-loc_integer03
    local real loc_real01=0
    local integer loc_integer10
    local integer loc_integer11
    local integer loc_integer12
    if boolean149 then
        set loc_real01=1.0
    endif
    set loc_integer10=R2I(loc_integer04+loc_integer05*loc_real01)
    set loc_integer11=R2I(loc_integer06+loc_integer07*loc_real01)
    set loc_integer12=R2I(loc_integer08+loc_integer09*loc_real01)
    if GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        if loc_unit02!=null then
            call SetHeroAgi(loc_unit02,loc_integer10,false)
            call SetHeroStr(loc_unit02,loc_integer11,false)
            call SetHeroInt(loc_unit02,loc_integer12,false)
        endif
        if loc_unit03!=null then
            call SetHeroAgi(loc_unit03,loc_integer10,false)
            call SetHeroStr(loc_unit03,loc_integer11,false)
            call SetHeroInt(loc_unit03,loc_integer12,false)
        endif
        if loc_unit04!=null then
            call SetHeroAgi(loc_unit04,loc_integer10,false)
            call SetHeroStr(loc_unit04,loc_integer11,false)
            call SetHeroInt(loc_unit04,loc_integer12,false)
        endif
        if loc_unit05!=null then
            call SetHeroAgi(loc_unit05,loc_integer10,false)
            call SetHeroStr(loc_unit05,loc_integer11,false)
            call SetHeroInt(loc_unit05,loc_integer12,false)
        endif
    endif
endfunction

// 67373 ~ 67514
function Func3164 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(370)))
    local integer loc_integer02=GetHandleId(loc_player01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer02),(699)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer02),(700)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer02),(701)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer02),(702)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer02),(703)))
    local integer loc_integer03=GetHandleId(loc_unit01)
    local integer loc_integer04=GetHandleId(loc_unit02)
    local integer loc_integer05=GetHandleId(loc_unit03)
    local integer loc_integer06=GetHandleId(loc_unit04)
    local integer loc_integer07=GetHandleId(loc_unit05)
    local integer loc_integer08=(LoadInteger(hashtable001,(loc_integer03),(367)))
    local integer loc_integer09=(LoadInteger(hashtable001,(loc_integer03),(368)))
    local integer loc_integer10=(LoadInteger(hashtable001,(loc_integer04),(367)))
    local integer loc_integer11=(LoadInteger(hashtable001,(loc_integer04),(368)))
    local integer loc_integer12=(LoadInteger(hashtable001,(loc_integer05),(367)))
    local integer loc_integer13=(LoadInteger(hashtable001,(loc_integer05),(368)))
    local integer loc_integer14=(LoadInteger(hashtable001,(loc_integer06),(367)))
    local integer loc_integer15=(LoadInteger(hashtable001,(loc_integer06),(368)))
    local integer loc_integer16=(LoadInteger(hashtable001,(loc_integer07),(367)))
    local integer loc_integer17=(LoadInteger(hashtable001,(loc_integer07),(368)))
    local integer loc_integer18=GetHeroXP(loc_unit01)
    local integer loc_integer19=GetHeroXP(loc_unit02)
    local integer loc_integer20=GetHeroXP(loc_unit03)
    local integer loc_integer21=GetHeroXP(loc_unit04)
    local integer loc_integer22=GetHeroXP(loc_unit05)
    local integer loc_integer23=loc_integer18-loc_integer08-loc_integer09
    local integer loc_integer24=loc_integer19-loc_integer10-loc_integer11
    local integer loc_integer25=loc_integer20-loc_integer12-loc_integer13
    local integer loc_integer26=loc_integer21-loc_integer14-loc_integer15
    local integer loc_integer27=loc_integer22-loc_integer16-loc_integer17
    if GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        set loc_integer08=loc_integer08+loc_integer23
        set loc_integer10=loc_integer10+loc_integer24
        set loc_integer12=loc_integer12+loc_integer25
        set loc_integer14=loc_integer14+loc_integer26
        set loc_integer16=loc_integer16+loc_integer27
        if loc_unit01!=null then
            call AddHeroXP(loc_unit02,loc_integer23,false)
            if GetHeroXP(loc_unit02)!=loc_integer19 then
                set loc_integer11=loc_integer11+loc_integer23
            endif
            call AddHeroXP(loc_unit03,loc_integer23,false)
            if GetHeroXP(loc_unit03)!=loc_integer20 then
                set loc_integer13=loc_integer13+loc_integer23
            endif
            call AddHeroXP(loc_unit04,loc_integer23,false)
            if GetHeroXP(loc_unit04)!=loc_integer21 then
                set loc_integer15=loc_integer15+loc_integer23
            endif
            call AddHeroXP(loc_unit05,loc_integer23,false)
            if GetHeroXP(loc_unit05)!=loc_integer22 then
                set loc_integer17=loc_integer17+loc_integer23
            endif
        endif
        if loc_unit02!=null then
            call AddHeroXP(loc_unit01,loc_integer24,false)
            if GetHeroXP(loc_unit01)!=loc_integer18 then
                set loc_integer09=loc_integer09+loc_integer24
            endif
            call AddHeroXP(loc_unit03,loc_integer24,false)
            if GetHeroXP(loc_unit03)!=loc_integer20 then
                set loc_integer13=loc_integer13+loc_integer24
            endif
            call AddHeroXP(loc_unit04,loc_integer24,false)
            if GetHeroXP(loc_unit04)!=loc_integer21 then
                set loc_integer15=loc_integer15+loc_integer24
            endif
            call AddHeroXP(loc_unit05,loc_integer24,false)
            if GetHeroXP(loc_unit05)!=loc_integer22 then
                set loc_integer17=loc_integer17+loc_integer24
            endif
        endif
        if loc_unit03!=null then
            call AddHeroXP(loc_unit02,loc_integer25,false)
            if GetHeroXP(loc_unit02)!=loc_integer19 then
                set loc_integer11=loc_integer11+loc_integer25
            endif
            call AddHeroXP(loc_unit01,loc_integer25,false)
            if GetHeroXP(loc_unit01)!=loc_integer18 then
                set loc_integer09=loc_integer09+loc_integer25
            endif
            call AddHeroXP(loc_unit04,loc_integer25,false)
            if GetHeroXP(loc_unit04)!=loc_integer21 then
                set loc_integer15=loc_integer15+loc_integer25
            endif
            call AddHeroXP(loc_unit05,loc_integer25,false)
            if GetHeroXP(loc_unit05)!=loc_integer22 then
                set loc_integer17=loc_integer17+loc_integer25
            endif
        endif
        if loc_unit04!=null then
            call AddHeroXP(loc_unit02,loc_integer26,false)
            if GetHeroXP(loc_unit02)!=loc_integer19 then
                set loc_integer11=loc_integer11+loc_integer26
            endif
            call AddHeroXP(loc_unit03,loc_integer26,false)
            if GetHeroXP(loc_unit03)!=loc_integer20 then
                set loc_integer13=loc_integer13+loc_integer26
            endif
            call AddHeroXP(loc_unit01,loc_integer26,false)
            if GetHeroXP(loc_unit01)!=loc_integer18 then
                set loc_integer09=loc_integer09+loc_integer26
            endif
            call AddHeroXP(loc_unit05,loc_integer26,false)
            if GetHeroXP(loc_unit05)!=loc_integer22 then
                set loc_integer17=loc_integer17+loc_integer26
            endif
        endif
        if loc_unit05!=null then
            call AddHeroXP(loc_unit02,loc_integer27,false)
            if GetHeroXP(loc_unit02)!=loc_integer19 then
                set loc_integer11=loc_integer11+loc_integer27
            endif
            call AddHeroXP(loc_unit03,loc_integer27,false)
            if GetHeroXP(loc_unit03)!=loc_integer20 then
                set loc_integer13=loc_integer13+loc_integer27
            endif
            call AddHeroXP(loc_unit01,loc_integer27,false)
            if GetHeroXP(loc_unit01)!=loc_integer18 then
                set loc_integer09=loc_integer09+loc_integer27
            endif
            call AddHeroXP(loc_unit04,loc_integer27,false)
            if GetHeroXP(loc_unit04)!=loc_integer21 then
                set loc_integer15=loc_integer15+loc_integer27
            endif
        endif
        call SaveInteger(hashtable001,(loc_integer03),(367),(loc_integer08))
        call SaveInteger(hashtable001,(loc_integer03),(368),(loc_integer09))
        call SaveInteger(hashtable001,(loc_integer04),(367),(loc_integer10))
        call SaveInteger(hashtable001,(loc_integer04),(368),(loc_integer11))
        call SaveInteger(hashtable001,(loc_integer05),(367),(loc_integer12))
        call SaveInteger(hashtable001,(loc_integer05),(368),(loc_integer13))
        call SaveInteger(hashtable001,(loc_integer06),(367),(loc_integer14))
        call SaveInteger(hashtable001,(loc_integer06),(368),(loc_integer15))
        call SaveInteger(hashtable001,(loc_integer07),(367),(loc_integer16))
        call SaveInteger(hashtable001,(loc_integer07),(368),(loc_integer17))
    endif
endfunction

// 67516 ~ 67518
function Func3165 takes nothing returns boolean
    return Func3159(GetTriggerUnit())and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 67520 ~ 67546
function Func3166 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(GetOwningPlayer(loc_unit01))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(699)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(700)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(701)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(702)))
    local unit loc_unit06=(LoadUnitHandle(hashtable001,(loc_integer01),(703)))
    local boolean loc_boolean01=false
    call DisableTrigger(trigger003)
    if loc_unit02!=null and loc_unit02!=loc_unit01 then
        call KillUnit(loc_unit02)
    endif
    if loc_unit03!=null and loc_unit03!=loc_unit01 then
        call KillUnit(loc_unit03)
    endif
    if loc_unit04!=null and loc_unit04!=loc_unit01 then
        call KillUnit(loc_unit04)
    endif
    if loc_unit05!=null and loc_unit05!=loc_unit01 then
        call KillUnit(loc_unit05)
    endif
    if loc_unit06!=null and loc_unit06!=loc_unit01 then
        call KillUnit(loc_unit06)
    endif
    call EnableTrigger(trigger003)
endfunction

// 67548 ~ 67550
function Func3167 takes nothing returns boolean
    return Func3159(GetTriggerUnit())and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 67552 ~ 67618
function Func3168 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01=(LoadTriggerHandle(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit02))),(369)))
    local integer loc_integer01=0
    local boolean loc_boolean01=false
    local boolean loc_boolean02=false
    local boolean loc_boolean03=false
    local boolean loc_boolean04=false
    local boolean loc_boolean05=false
    local boolean loc_boolean06=false
    local boolean loc_boolean07=false
    local boolean loc_boolean08=false
    local boolean loc_boolean09=false
    call DisableTrigger(loc_trigger01)
    call DisableTrigger(trigger057)
    loop
        exitwhen loc_integer01>5
        if GetItemTypeId(UnitItemInSlot(loc_unit02,loc_integer01))==(integers089[integer069])then
            set loc_boolean01=true
        endif
        if GetItemTypeId(UnitItemInSlot(loc_unit02,loc_integer01))==(integers089[integer161])then
            set loc_boolean02=true
        endif
        if GetItemTypeId(UnitItemInSlot(loc_unit02,loc_integer01))==(integers089[integer164])then
            set loc_boolean03=true
        endif
        if GetItemTypeId(UnitItemInSlot(loc_unit02,loc_integer01))==(integers089[integer163])then
            set loc_boolean04=true
        endif
        if GetItemTypeId(UnitItemInSlot(loc_unit02,loc_integer01))==(integers089[integer162])then
            set loc_boolean05=true
        endif
        if GetItemTypeId(UnitItemInSlot(loc_unit02,loc_integer01))==(integers089[integer244])then
            set loc_boolean06=true
        endif
        if GetItemTypeId(UnitItemInSlot(loc_unit02,loc_integer01))==(integers089[integer254])then
            set loc_boolean07=true
        endif
        if GetItemTypeId(UnitItemInSlot(loc_unit02,loc_integer01))==(integers089[integer135])then
            set loc_boolean08=true
        endif
        if GetItemTypeId(UnitItemInSlot(loc_unit02,loc_integer01))==(integers089[integer136])then
            set loc_boolean09=true
        endif
        set loc_integer01=loc_integer01+1
    endloop
    if loc_boolean09 then
        call UnitAddItem(loc_unit01,CreateItem((integers089[integer136]),0,0))
    elseif loc_boolean08 then
        call UnitAddItem(loc_unit01,CreateItem((integers089[integer135]),0,0))
    elseif loc_boolean07 then
        call UnitAddItem(loc_unit01,CreateItem((integers089[integer254]),0,0))
    elseif loc_boolean06 then
        call UnitAddItem(loc_unit01,CreateItem((integers089[integer244]),0,0))
    elseif loc_boolean05 then
        call UnitAddItem(loc_unit01,CreateItem((integers089[integer162]),0,0))
    elseif loc_boolean04 then
        call UnitAddItem(loc_unit01,CreateItem((integers089[integer163]),0,0))
    elseif loc_boolean03 then
        call UnitAddItem(loc_unit01,CreateItem((integers089[integer164]),0,0))
    elseif loc_boolean02 then
        call UnitAddItem(loc_unit01,CreateItem((integers089[integer161]),0,0))
    elseif loc_boolean01 then
        call UnitAddItem(loc_unit01,CreateItem((integers089[integer069]),0,0))
    endif
    call EnableTrigger(loc_trigger01)
    call EnableTrigger(trigger057)
endfunction

// 67620 ~ 67834
function Func3169 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=0
    local boolean loc_boolean01=false
    local boolean loc_boolean02=false
    local boolean loc_boolean03=false
    local boolean loc_boolean04=false
    local boolean loc_boolean05=false
    local boolean loc_boolean06=false
    local boolean loc_boolean07=false
    local boolean loc_boolean08=false
    local boolean loc_boolean09=false
    local integer loc_integer02=GetHandleId(GetOwningPlayer(loc_unit01))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer02),(699)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer02),(700)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer02),(701)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer02),(702)))
    local unit loc_unit06=(LoadUnitHandle(hashtable001,(loc_integer02),(703)))
    local integer loc_integer03
    local boolean loc_boolean10=false
    local integer loc_integer04=0
    local integer loc_integer05=0
    local integer loc_integer06=0
    local integer loc_integer07=0
    local integer loc_integer08=0
    local integer loc_integer09=0
    local integer loc_integer10=0
    local integer loc_integer11=0
    local integer loc_integer12=0
    call DisableTrigger(GetTriggeringTrigger())
    if GetUnitTypeId(loc_unit01)==('H00J')then
        call UnitRemoveItemFromSlot(loc_unit01,0)
        call EnableTrigger(GetTriggeringTrigger())
        return
    endif
    if not(GetItemTypeId(GetManipulatedItem())==(integers089[integer069])or GetItemTypeId(GetManipulatedItem())==(integers089[integer161])or GetItemTypeId(GetManipulatedItem())==(integers089[integer164])or GetItemTypeId(GetManipulatedItem())==(integers089[integer163])or GetItemTypeId(GetManipulatedItem())==(integers089[integer162])or GetItemTypeId(GetManipulatedItem())==(integers089[integer244])or GetItemTypeId(GetManipulatedItem())==(integers089[integer254])or GetItemTypeId(GetManipulatedItem())==(integers089[integer135])or GetItemTypeId(GetManipulatedItem())==(integers089[integer136]))then
        call EnableTrigger(GetTriggeringTrigger())
        return
    endif
    call DisableTrigger(trigger057)
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_DROP_ITEM then
        set loc_boolean10=true
    endif
    loop
        exitwhen loc_integer01>5
        set loc_integer03=GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer01))
        if loc_integer03==(integers089[integer069])then
            set loc_integer04=loc_integer04+1
            if(not(loc_boolean10 and loc_integer03==GetItemTypeId(GetManipulatedItem())))or(loc_integer04>1 and loc_integer03==GetItemTypeId(GetManipulatedItem()))then
                set loc_boolean01=true
            endif
        endif
        if loc_integer03==(integers089[integer161])then
            set loc_integer05=loc_integer05+1
            if(not(loc_boolean10 and loc_integer03==GetItemTypeId(GetManipulatedItem())))or(loc_integer05>1 and loc_integer03==GetItemTypeId(GetManipulatedItem()))then
                set loc_boolean02=true
            endif
        endif
        if loc_integer03==(integers089[integer164])then
            set loc_integer06=loc_integer06+1
            if(not(loc_boolean10 and loc_integer03==GetItemTypeId(GetManipulatedItem())))or(loc_integer06>1 and loc_integer03==GetItemTypeId(GetManipulatedItem()))then
                set loc_boolean03=true
            endif
        endif
        if loc_integer03==(integers089[integer163])then
            set loc_integer07=loc_integer07+1
            if(not(loc_boolean10 and loc_integer03==GetItemTypeId(GetManipulatedItem())))or(loc_integer07>1 and loc_integer03==GetItemTypeId(GetManipulatedItem()))then
                set loc_boolean04=true
            endif
        endif
        if loc_integer03==(integers089[integer162])then
            set loc_integer08=loc_integer08+1
            if(not(loc_boolean10 and loc_integer03==GetItemTypeId(GetManipulatedItem())))or(loc_integer08>1 and loc_integer03==GetItemTypeId(GetManipulatedItem()))then
                set loc_boolean05=true
            endif
        endif
        if loc_integer03==(integers089[integer244])then
            set loc_integer09=loc_integer09+1
            if(not(loc_boolean10 and loc_integer03==GetItemTypeId(GetManipulatedItem())))or(loc_integer09>1 and loc_integer03==GetItemTypeId(GetManipulatedItem()))then
                set loc_boolean06=true
            endif
        endif
        if loc_integer03==(integers089[integer254])then
            set loc_integer10=loc_integer10+1
            if(not(loc_boolean10 and loc_integer03==GetItemTypeId(GetManipulatedItem())))or(loc_integer10>1 and loc_integer03==GetItemTypeId(GetManipulatedItem()))then
                set loc_boolean07=true
            endif
        endif
        if loc_integer03==(integers089[integer135])then
            set loc_integer11=loc_integer11+1
            if(not(loc_boolean10 and loc_integer03==GetItemTypeId(GetManipulatedItem())))or(loc_integer11>1 and loc_integer03==GetItemTypeId(GetManipulatedItem()))then
                set loc_boolean08=true
            endif
        endif
        if loc_integer03==(integers089[integer136])then
            set loc_integer12=loc_integer12+1
            if(not(loc_boolean10 and loc_integer03==GetItemTypeId(GetManipulatedItem())))or(loc_integer11>1 and loc_integer03==GetItemTypeId(GetManipulatedItem()))then
                set loc_boolean09=true
            endif
        endif
        set loc_integer01=loc_integer01+1
    endloop
    call RemoveItem(UnitRemoveItemFromSlot(loc_unit03,0))
    if loc_unit04!=null then
        call RemoveItem(UnitRemoveItemFromSlot(loc_unit04,0))
    endif
    if loc_unit05!=null then
        call RemoveItem(UnitRemoveItemFromSlot(loc_unit05,0))
    endif
    if loc_unit06!=null then
        call RemoveItem(UnitRemoveItemFromSlot(loc_unit06,0))
    endif
    if loc_boolean09 then
        call UnitAddItem(loc_unit03,CreateItem((integers089[integer136]),0,0))
        if loc_unit04!=null then
            call UnitAddItem(loc_unit04,CreateItem((integers089[integer136]),0,0))
        endif
        if loc_unit05!=null then
            call UnitAddItem(loc_unit05,CreateItem((integers089[integer136]),0,0))
        endif
        if loc_unit06!=null then
            call UnitAddItem(loc_unit06,CreateItem((integers089[integer136]),0,0))
        endif
    elseif loc_boolean08 then
        call UnitAddItem(loc_unit03,CreateItem((integers089[integer135]),0,0))
        if loc_unit04!=null then
            call UnitAddItem(loc_unit04,CreateItem((integers089[integer135]),0,0))
        endif
        if loc_unit05!=null then
            call UnitAddItem(loc_unit05,CreateItem((integers089[integer135]),0,0))
        endif
        if loc_unit06!=null then
            call UnitAddItem(loc_unit06,CreateItem((integers089[integer135]),0,0))
        endif
    elseif loc_boolean07 then
        call UnitAddItem(loc_unit03,CreateItem((integers089[integer254]),0,0))
        if loc_unit04!=null then
            call UnitAddItem(loc_unit04,CreateItem((integers089[integer254]),0,0))
        endif
        if loc_unit05!=null then
            call UnitAddItem(loc_unit05,CreateItem((integers089[integer254]),0,0))
        endif
        if loc_unit06!=null then
            call UnitAddItem(loc_unit06,CreateItem((integers089[integer254]),0,0))
        endif
    elseif loc_boolean06 then
        call UnitAddItem(loc_unit03,CreateItem((integers089[integer244]),0,0))
        if loc_unit04!=null then
            call UnitAddItem(loc_unit04,CreateItem((integers089[integer244]),0,0))
        endif
        if loc_unit05!=null then
            call UnitAddItem(loc_unit05,CreateItem((integers089[integer244]),0,0))
        endif
        if loc_unit06!=null then
            call UnitAddItem(loc_unit06,CreateItem((integers089[integer244]),0,0))
        endif
    elseif loc_boolean05 then
        call UnitAddItem(loc_unit03,CreateItem((integers089[integer162]),0,0))
        if loc_unit04!=null then
            call UnitAddItem(loc_unit04,CreateItem((integers089[integer162]),0,0))
        endif
        if loc_unit05!=null then
            call UnitAddItem(loc_unit05,CreateItem((integers089[integer162]),0,0))
        endif
        if loc_unit06!=null then
            call UnitAddItem(loc_unit06,CreateItem((integers089[integer162]),0,0))
        endif
    elseif loc_boolean04 then
        call UnitAddItem(loc_unit03,CreateItem((integers089[integer163]),0,0))
        if loc_unit04!=null then
            call UnitAddItem(loc_unit04,CreateItem((integers089[integer163]),0,0))
        endif
        if loc_unit05!=null then
            call UnitAddItem(loc_unit05,CreateItem((integers089[integer163]),0,0))
        endif
        if loc_unit06!=null then
            call UnitAddItem(loc_unit06,CreateItem((integers089[integer163]),0,0))
        endif
    elseif loc_boolean03 then
        call UnitAddItem(loc_unit03,CreateItem((integers089[integer164]),0,0))
        if loc_unit04!=null then
            call UnitAddItem(loc_unit04,CreateItem((integers089[integer164]),0,0))
        endif
        if loc_unit05!=null then
            call UnitAddItem(loc_unit05,CreateItem((integers089[integer164]),0,0))
        endif
        if loc_unit06!=null then
            call UnitAddItem(loc_unit06,CreateItem((integers089[integer164]),0,0))
        endif
    elseif loc_boolean02 then
        call UnitAddItem(loc_unit03,CreateItem((integers089[integer161]),0,0))
        if loc_unit04!=null then
            call UnitAddItem(loc_unit04,CreateItem((integers089[integer161]),0,0))
        endif
        if loc_unit05!=null then
            call UnitAddItem(loc_unit05,CreateItem((integers089[integer161]),0,0))
        endif
        if loc_unit06!=null then
            call UnitAddItem(loc_unit06,CreateItem((integers089[integer161]),0,0))
        endif
    elseif loc_boolean01 then
        call UnitAddItem(loc_unit03,CreateItem((integers089[integer069]),0,0))
        if loc_unit04!=null then
            call UnitAddItem(loc_unit04,CreateItem((integers089[integer069]),0,0))
        endif
        if loc_unit05!=null then
            call UnitAddItem(loc_unit05,CreateItem((integers089[integer069]),0,0))
        endif
        if loc_unit06!=null then
            call UnitAddItem(loc_unit06,CreateItem((integers089[integer069]),0,0))
        endif
    endif
    call EnableTrigger(GetTriggeringTrigger())
    call EnableTrigger(trigger057)
endfunction

// 67836 ~ 67858
function Func3170 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer loc_integer02=GetHandleId(GetOwningPlayer(loc_unit01))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer02),(699)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer02),(700)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer02),(701)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer02),(702)))
    local unit loc_unit06=(LoadUnitHandle(hashtable001,(loc_integer02),(703)))
    if loc_unit02!=null and loc_unit02!=loc_unit01 then
        call SelectHeroSkill(loc_unit02,loc_integer01)
    endif
    if loc_unit03!=null and loc_unit03!=loc_unit01 then
        call SelectHeroSkill(loc_unit03,loc_integer01)
    endif
    if loc_unit04!=null and loc_unit04!=loc_unit01 then
        call SelectHeroSkill(loc_unit04,loc_integer01)
    endif
    if loc_unit05!=null and loc_unit05!=loc_unit01 then
        call SelectHeroSkill(loc_unit05,loc_integer01)
    endif
    if loc_unit06!=null and loc_unit06!=loc_unit01 then
        call SelectHeroSkill(loc_unit06,loc_integer01)
    endif
endfunction

// 67860 ~ 67868
function Func3171 takes integer loc_integer01,unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer02=1
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,loc_integer01)
    loop
        exitwhen loc_integer02>loc_integer03
        call SelectHeroSkill(loc_unit02,loc_integer01)
        set loc_integer02=loc_integer02+1
    endloop
endfunction

// 67870 ~ 67880
function Func3172 takes unit loc_unit01,unit loc_unit02 returns nothing
    call AddHeroXP(loc_unit01,GetHeroXP(loc_unit02),false)
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(368),(GetHeroXP(loc_unit02)))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(367),(0))
    call Func3171(('A0N8'),loc_unit02,loc_unit01)
    call Func3171(('A0NB'),loc_unit02,loc_unit01)
    call Func3171(('A0N7'),loc_unit02,loc_unit01)
    call Func3171('Aamk',loc_unit02,loc_unit01)
    call Func3171(('A0MW'),loc_unit02,loc_unit01)
    call Func3171('A27C',loc_unit02,loc_unit01)
endfunction

// 67882 ~ 67888
function Func3173 takes unit loc_unit01,unit loc_unit02,integer loc_integer01,integer loc_integer02,integer loc_integer03 returns nothing
    if loc_integer02>loc_integer03 then
        call SelectHeroSkill(loc_unit02,loc_integer01)
    elseif loc_integer03>loc_integer02 then
        call SelectHeroSkill(loc_unit01,loc_integer01)
    endif
endfunction
