
// 19396 ~ 19427
function Func0749 takes unit loc_unit01,item loc_item01,integer loc_integer01 returns item
    local real loc_real01=Func0408(loc_unit01)
    local real loc_real02=Func0409(loc_unit01)
    local integer loc_integer02=0
    local boolean array loc_booleans01
    local item loc_item02
    loop
        exitwhen loc_integer02>(UnitInventorySize(loc_unit01)-1)
        if UnitItemInSlot(loc_unit01,loc_integer02)==null and loc_integer02!=loc_integer01 then
            set loc_item02=CreateItem('I02M',loc_real01,loc_real02)
            call UnitAddItem(loc_unit01,loc_item02)
            set loc_booleans01[loc_integer02]=true
        else
            set loc_booleans01[loc_integer02]=false
        endif
        if loc_integer02==loc_integer01 then
            call UnitAddItem(loc_unit01,loc_item01)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer02=0
    loop
        exitwhen loc_integer02>5
        if loc_booleans01[loc_integer02]==true then
            call RemoveItem(UnitItemInSlot(loc_unit01,loc_integer02))
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set item002=loc_item01
    set loc_item02=null
    return item002
endfunction

// 19429 ~ 19465
function Func0750 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer loc_integer02=0
    local item loc_item01
    local integer loc_integer03
    local unit loc_unit02
    local item loc_item02
    if Func0194(loc_unit01)then
        return
    endif
    call DisableTrigger(trigger057)
    if integers106[GetPlayerId(GetOwningPlayer(loc_unit01))]>0 and loc_integer01==integer210 then
        call Func0407(loc_unit01,'I0HM')
    endif
    loop
        exitwhen loc_integer02>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
        set loc_integer03=Func0399(loc_item01)
        if loc_integer03==integer211 or loc_integer03==integer210 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
            call UnitAddAbility(loc_unit02,'AInv')
            set loc_item02=UnitAddItemById(loc_unit02,integers089[loc_integer01])
            call UnitResetCooldown(loc_unit02)
            call UnitUseItem(loc_unit02,loc_item02)
            set item002=Func0749(loc_unit01,loc_item02,loc_integer02)
            call SetItemPlayer(loc_item02,player005,false)
            call SetItemUserData(loc_item02,1)
            call UnitRemoveAbility(loc_unit02,'AInv')
            set loc_unit02=null
            set loc_item02=null
        endif
        set loc_item01=null
        set loc_integer02=loc_integer02+1
    endloop
    call EnableTrigger(trigger057)
endfunction

// 19467 ~ 19491
function Func0751 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=0
    local item loc_item01
    local integer loc_integer03
    local unit loc_unit02
    local item loc_item02
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(102),(false))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif Func0748(loc_unit01)==false then
        call TriggerRegisterTimerEvent(loc_trigger01,5.5,false)
    else
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(102),(false))
        call Func0750(loc_unit01,integer210)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 19493 ~ 19509
function Func0752 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=0
    local item loc_item01
    local integer loc_integer03
    local unit loc_unit02
    local item loc_item02
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(102),(true))
    call TriggerRegisterTimerEvent(loc_trigger01,real200,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0751))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\DispelMagic\\DispelMagicTarget.mdl",loc_unit01,"origin"))
    call Func0750(loc_unit01,integer211)
    set loc_trigger01=null
endfunction

// 19511 ~ 19536
function Func0753 takes nothing returns boolean
    local integer loc_integer01=1
    local unit loc_unit01
    local integer loc_integer02
    if boolean036 then
        return false
    endif
    if integer390>0 then
        loop
            exitwhen loc_integer01>5
            set loc_integer02=GetPlayerId(players003[loc_integer01])
            set loc_unit01=units001[loc_integer02]
            if integers106[loc_integer02]>0 and loc_unit01!=null and GetUnitTypeId(loc_unit01)>1 and IsUnitType(loc_unit01,UNIT_TYPE_DEAD)==false and(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(102)))==false and Func0028(loc_unit01)==false and(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(129)))==false then
                call Func0752(loc_unit01)
            endif
            set loc_integer02=GetPlayerId(players004[loc_integer01])
            set loc_unit01=units001[loc_integer02]
            if integers106[loc_integer02]>0 and loc_unit01!=null and GetUnitTypeId(loc_unit01)>1 and IsUnitType(loc_unit01,UNIT_TYPE_DEAD)==false and(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(102)))==false and Func0028(loc_unit01)==false and(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(129)))==false then
                call Func0752(loc_unit01)
            endif
            set loc_integer01=loc_integer01+1
        endloop
    endif
    set loc_unit01=null
    return false
endfunction

// 19538 ~ 19563
function Func0754 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or GetUnitAbilityLevel(loc_unit02,'B0BI')==0 then
        call Func0752(loc_unit01)
        if GetTriggerEventId()!=EVENT_WIDGET_DEATH then
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\DispelMagic\\DispelMagicTarget.mdl",loc_unit02,"origin"))
        endif
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEvalCount(loc_trigger01)>=R2I(real200/0.1)then
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(102),(false))
        call Func0750(loc_unit01,integer210)
        call UnitRemoveAbility(loc_unit02,'B0BI')
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 19565 ~ 19583
function Func0755 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    call Func0407(loc_unit02,'I0HM')
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0754))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("effects\\Linkens_Main.mdx",loc_unit02,"chest")))
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(102),(true))
    call UnitRemoveAbility(loc_unit01,'B0BI')
    call Func0750(loc_unit01,integer211)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 19585 ~ 19590
function Func0756 takes nothing returns boolean
    if GetSpellAbilityId()=='A2VE' and IsUnitIllusion(GetSpellTargetUnit())==false then
        call Func0755()
    endif
    return false
endfunction
