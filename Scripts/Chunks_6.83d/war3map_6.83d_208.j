
// 41719 ~ 41727
function Func1623 takes nothing returns boolean
    local item loc_item01=Func0394(GetFilterUnit(),integers089[integer215])
    if loc_item01!=null then
        call RemoveItem(loc_item01)
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",GetFilterUnit(),"chest"))
    endif
    set loc_item01=null
    return false
endfunction

// 41729 ~ 41735
function Func1624 takes nothing returns boolean
    if IsUnitIllusion(GetFilterUnit())==true and GetOwningPlayer(GetFilterUnit())!=GetOwningPlayer(unit262)then
        call SetUnitOwner(GetFilterUnit(),GetOwningPlayer(unit262),true)
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl",GetFilterUnit(),"origin"))
    endif
    return false
endfunction

// 41737 ~ 41751
function Func1625 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local integer loc_integer01=0
    local item loc_item01
    if IsUnitIllusion(loc_unit01)==true then
        return
    endif
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        call UnitRemoveItem(loc_unit01,loc_item01)
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
endfunction
