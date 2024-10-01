
// 21637 ~ 21640
function Func0845 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer loc_integer02=GetHandleId(loc_unit01)
    call SaveInteger(hashtable001,(loc_integer02),(750),(loc_integer01))
endfunction

// 21642 ~ 21666
function Func0846 takes nothing returns nothing
    local integer loc_integer01=0
    local integer loc_integer02=0
    local boolean loc_boolean01=false
    if GetSpellAbilityId()=='A0JY' then
        loop
            exitwhen loc_integer01>5
            if Func0399(UnitItemInSlot(GetTriggerUnit(),loc_integer01))==integer125 or Func0399(UnitItemInSlot(GetTriggerUnit(),loc_integer01))==integer245 then
                set loc_integer02=GetItemCharges(UnitItemInSlot(GetTriggerUnit(),loc_integer01))
                if loc_integer02>0 then
                    call SetItemCharges(UnitItemInSlot(GetTriggerUnit(),loc_integer01),0)
                    call Func0845(GetTriggerUnit(),0)
                    if loc_boolean01==false then
                        set loc_boolean01=true
                        call SetUnitState(GetTriggerUnit(),UNIT_STATE_MANA,GetUnitState(GetTriggerUnit(),UNIT_STATE_MANA)+15*loc_integer02)
                        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+15*loc_integer02)
                        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIre\\AIreTarget.mdl",GetTriggerUnit(),"origin"))
                    endif
                endif
                return
            endif
            set loc_integer01=loc_integer01+1
        endloop
    endif
endfunction

// 21668 ~ 21678
function Func0847 takes integer loc_integer01 returns boolean
    local integer loc_integer02=1
    loop
        exitwhen loc_integer02>integer048
        if loc_integer01==integers078[loc_integer02]then
            return false
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return true
endfunction
