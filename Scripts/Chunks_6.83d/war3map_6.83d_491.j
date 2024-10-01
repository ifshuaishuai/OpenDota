
// 60750 ~ 60753
function Func2787 takes nothing returns nothing
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",GetEnumUnit(),"origin"))
    call Func0115(GetTriggerUnit(),GetEnumUnit(),2,GetUnitAbilityLevel(GetTriggerUnit(),'A0C6')*35+65)
endfunction

// 60755 ~ 60773
function Func2788 takes nothing returns nothing
    local group loc_group01
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(823)))
    if GetRandomReal(0,100)<(loc_integer01+1)*5.570 then
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),300,Condition(function Func0302))
        call ForGroup(loc_group01,function Func2787)
        call SetUnitAnimation(loc_unit01,"spin")
        call Func0217(loc_unit01,0.6)
        call Func0044(loc_unit01,4267,0.5-0.05*GetUnitAbilityLevel(GetTriggerUnit(),'A0C6'))
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(823),(0))
        call Func0029(loc_group01)
    else
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(823),(loc_integer01+1))
    endif
    set loc_group01=null
    set loc_unit01=null
endfunction

// 60775 ~ 60780
function Func2789 takes nothing returns boolean
    if GetUnitAbilityLevel(GetTriggerUnit(),'B03P')>0 and IsUnitType(GetAttacker(),UNIT_TYPE_STRUCTURE)==false and IsUnitType(GetAttacker(),UNIT_TYPE_MECHANICAL)==false and GetUnitAbilityLevel(GetAttacker(),'A04R')==0 and IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false and((LoadInteger(hashtable001,(GetHandleId((GetTriggerUnit()))),((4267))))==1)==false then
        call Func2788()
    endif
    return false
endfunction

// 60782 ~ 60787
function Func2790 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2789))
    set loc_trigger01=null
endfunction
