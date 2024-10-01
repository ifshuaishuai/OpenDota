
// 21680 ~ 21684
function Func0848 takes unit loc_unit01,unit loc_unit02 returns nothing
    if IsUnitVisible(loc_unit01,GetOwningPlayer(loc_unit02))==false and GetRandomInt(1,100)<10 then
        call PlaySoundOnUnitBJ(sound054,100,loc_unit02)
    endif
endfunction

// 21686 ~ 21713
function Func0849 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local integer loc_integer01=0
    loop
        exitwhen loc_integer01>5
        if IsUnitVisible(GetTriggerUnit(),GetOwningPlayer(GetEnumUnit()))==true then
            if Func0399(UnitItemInSlot(loc_unit01,loc_integer01))==integer125 or Func0399(UnitItemInSlot(loc_unit01,loc_integer01))==integer245 then
                if Func0399(UnitItemInSlot(loc_unit01,loc_integer01))==integer245 then
                    if GetItemCharges(UnitItemInSlot(loc_unit01,loc_integer01))==17 then
                        call Func0848(GetTriggerUnit(),loc_unit01)
                    endif
                    call Func0845(loc_unit01,Func0138(GetItemCharges(UnitItemInSlot(loc_unit01,loc_integer01))+1,17))
                    call SetItemCharges(UnitItemInSlot(loc_unit01,loc_integer01),Func0138(GetItemCharges(UnitItemInSlot(loc_unit01,loc_integer01))+1,17))
                else
                    if GetItemCharges(UnitItemInSlot(loc_unit01,loc_integer01))==10 then
                        call Func0848(GetTriggerUnit(),loc_unit01)
                    endif
                    call Func0845(loc_unit01,Func0138(GetItemCharges(UnitItemInSlot(loc_unit01,loc_integer01))+1,10))
                    call SetItemCharges(UnitItemInSlot(loc_unit01,loc_integer01),Func0138(GetItemCharges(UnitItemInSlot(loc_unit01,loc_integer01))+1,10))
                endif
                call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl",loc_unit01,"chest"))
                set loc_integer01=5
            endif
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
endfunction

// 21715 ~ 21725
function Func0850 takes nothing returns nothing
    local group loc_group01=Func0030()
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,1225,Condition(function Func0339))
    call ForGroup(loc_group01,function Func0849)
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit01=null
endfunction

// 21727 ~ 21731
function Func0851 takes nothing returns nothing
    if Func0847(GetSpellAbilityId())==true and Func0080(GetSpellAbilityId())==true and GetUnitAbilityLevel(GetTriggerUnit(),'A04R')==0 and Func0471(GetSpellAbilityId())==false then
        call Func0850()
    endif
endfunction
