
// 18686 ~ 18709
function Func0715 takes nothing returns nothing
    local unit loc_unit01=GetFilterUnit()
    local integer loc_integer01=0
    local item loc_item01
    local integer loc_integer02
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        set loc_integer02=Func0380(loc_item01)
        if(loc_integer02==integer115 or loc_integer02==integer116 or loc_integer02==integer117)and GetItemUserData(loc_item01)>0 then
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl",loc_unit01,"overhead"))
            call Func0118(GetOwningPlayer(loc_unit01),"Abilities\\Spells\\Human\\Heal\\HealTarget.wav")
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=Func0410(loc_unit01,integers089[integer118],loc_integer01)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
            call UnitRemoveAbility(loc_unit01,'B0GI')
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
    set loc_item01=null
endfunction

// 18711 ~ 18716
function Func0716 takes nothing returns boolean
    if UnitInventorySize(GetFilterUnit())>0 and Func0056(GetOwningPlayer(GetFilterUnit()))and IsUnitIllusion(GetFilterUnit())==false and Func0194(GetFilterUnit())==false then
        call Func0715()
    endif
    return false
endfunction

// 18718 ~ 18723
function Func0717 takes nothing returns boolean
    if UnitInventorySize(GetFilterUnit())>0 and Func0057(GetOwningPlayer(GetFilterUnit()))and IsUnitIllusion(GetFilterUnit())==false and Func0194(GetFilterUnit())==false then
        call Func0715()
    endif
    return false
endfunction

// 18725 ~ 18734
function Func0718 takes nothing returns boolean
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,real016,real017,750,Condition(function Func0716))
    call Func0029(loc_group01)
    set loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,real104,real105,750,Condition(function Func0717))
    call Func0029(loc_group01)
    set loc_group01=null
    return false
endfunction
