
// 63737 ~ 63739
function Func2956 takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
endfunction

// 63741 ~ 63787
function Func2957 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(255)))
    local integer loc_integer02=GetHandleId(loc_trigger02)
    local trigger loc_trigger03=(LoadTriggerHandle(hashtable001,(loc_integer02),(256)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer02),(257)))
    local group loc_group02=(LoadGroupHandle(hashtable001,(loc_integer02),(258)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer02),(259)))
    local integer loc_integer03=GetHandleId(loc_unit01)
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer03),(260)))
    local integer loc_integer05
    local integer loc_integer06
    local unit loc_unit02
    call ForGroup(loc_group02,function Func2956)
    set loc_integer06=1
    loop
        exitwhen loc_integer06>loc_integer04
        set loc_integer05=(LoadInteger(hashtable001,(loc_integer03),(2800+loc_integer06)))
        set loc_unit02=Func0022(loc_integer05)
        call FlushChildHashtable(hashtable001,(GetHandleId((LoadTriggerHandle(hashtable001,(loc_integer03),(2900+loc_integer06))))))
        call Func0035((LoadTriggerHandle(hashtable001,(loc_integer03),(2900+loc_integer06))))
        if IsUnitIllusion(loc_unit02)then
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
            call RemoveUnit(loc_unit02)
            call Func0021(loc_integer05)
        endif
        set loc_integer06=loc_integer06+1
    endloop
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call FlushChildHashtable(hashtable001,(loc_integer02))
    call FlushChildHashtable(hashtable001,(loc_integer03))
    call RemoveUnit(loc_unit01)
    call Func0029(loc_group01)
    call Func0029(loc_group02)
    call Func0035(loc_trigger02)
    call Func0035(loc_trigger03)
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_trigger02=null
    set loc_trigger03=null
    set loc_group01=null
    set loc_group02=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 63789 ~ 63854
function Func2958 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=GetUnitFacing(loc_unit01)-45
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h00O',loc_real01,loc_real02,loc_real03)
    local unit loc_unit03
    local real loc_real04
    local real loc_real05
    local integer loc_integer01
    local real loc_real06
    local trigger loc_trigger01=CreateTrigger()
    local group loc_group01=Func0030()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local group loc_group02=Func0030()
    local trigger loc_trigger02=loc_trigger01
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A0QK')
    local boolean loc_boolean01=false
    if loc_integer03==0 then
        set loc_boolean01=true
        set loc_integer03=GetUnitAbilityLevel(loc_unit01,'A21Q')
    endif
    call SetUnitAbilityLevel(loc_unit02,'A0QL',loc_integer03)
    call Func0184(sound036,loc_real01,loc_real02)
    call SaveGroupHandle(hashtable001,(loc_integer02),(257),(loc_group01))
    call SaveGroupHandle(hashtable001,(GetHandleId(loc_unit02)),(257),(loc_group01))
    call SaveGroupHandle(hashtable001,(loc_integer02),(258),(loc_group02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(259),(loc_unit02))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(260),(0))
    set loc_integer01=0
    loop
        exitwhen loc_integer01>39
        set loc_real04=loc_real01+(500-25*loc_integer01)*Cos((loc_real03-45)*bj_DEGTORAD)
        set loc_real05=loc_real02+(500-25*loc_integer01)*Sin((loc_real03-45)*bj_DEGTORAD)
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h00P',loc_real04,loc_real05,loc_real03)
        call SetUnitPathing(loc_unit03,false)
        call SetUnitX(loc_unit03,loc_real04)
        call SetUnitY(loc_unit03,loc_real05)
        call GroupAddUnit(loc_group02,loc_unit03)
        call TriggerRegisterUnitInRange(loc_trigger01,loc_unit03,17,Condition(function Func0011))
        set loc_integer01=loc_integer01+1
    endloop
    if loc_boolean01 then
        call TriggerAddCondition(loc_trigger01,Condition(function Func2952))
    else
        call TriggerAddCondition(loc_trigger01,Condition(function Func2951))
    endif
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2955))
    call SaveTriggerHandle(hashtable001,(loc_integer02),(256),(loc_trigger01))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,15*loc_integer03,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2957))
    call SaveTriggerHandle(hashtable001,(GetHandleId(loc_trigger01)),(255),(loc_trigger02))
    call RemoveLocation(loc_location01)
    set loc_unit01=null
    set loc_location01=null
    set loc_unit03=null
    set loc_trigger01=null
    set loc_trigger02=null
    set loc_group01=null
    set loc_group02=null
    set loc_unit02=null
endfunction

// 63856 ~ 63861
function Func2959 takes nothing returns boolean
    if GetSpellAbilityId()=='A0QK' or GetSpellAbilityId()=='A21Q' then
        call Func2958()
    endif
    return false
endfunction

// 63863 ~ 63868
function Func2960 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2959))
    set loc_trigger01=null
endfunction
