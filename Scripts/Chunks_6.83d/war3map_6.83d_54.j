
// 18736 ~ 18742
function Func0719 takes unit loc_unit01 returns boolean
    local unit loc_unit02=units001[GetPlayerId(GetOwningPlayer(loc_unit01))]
    if((GetUnitX(loc_unit02)-GetUnitX(loc_unit01))*(GetUnitX(loc_unit02)-GetUnitX(loc_unit01))+(GetUnitY(loc_unit02)-GetUnitY(loc_unit01))*(GetUnitY(loc_unit02)-GetUnitY(loc_unit01))>=855625)then
        return true
    endif
    return false
endfunction

// 18744 ~ 18793
function Func0720 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    local integer loc_integer01=UnitInventorySize(loc_unit01)
    local integer loc_integer02=0
    local item loc_item01
    loop
        exitwhen loc_integer02>loc_integer01
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
        if Func0399(loc_item01)==integer113 then
            if GetRandomReal(0,1)<=0.2 and Func0284(loc_unit01)==false then
                if Func0262(loc_unit01)then
                    if Func0719(loc_unit01)==false then
                        if GetUnitAbilityLevel(GetTriggerUnit(),'A04R')==0 then
                            call Func0115(loc_unit01,GetTriggerUnit(),2,40)
                        endif
                    endif
                else
                    if GetUnitAbilityLevel(GetTriggerUnit(),'A04R')==0 then
                        call Func0115(loc_unit01,GetTriggerUnit(),2,40)
                    endif
                endif
            endif
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer02=0
    set loc_unit01=GetAttacker()
    set loc_integer01=UnitInventorySize(loc_unit01)
    loop
        exitwhen loc_integer02>loc_integer01
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
        if Func0399(loc_item01)==integer135 or Func0399(loc_item01)==integer136 then
            call Func0707(loc_unit01)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer02=0
    set loc_unit01=GetTriggerUnit()
    set loc_integer01=UnitInventorySize(loc_unit01)
    loop
        exitwhen loc_integer02>loc_integer01
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
        if Func0399(loc_item01)==integer135 or Func0399(loc_item01)==integer136 then
            call Func0707(loc_unit01)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_item01=null
    set loc_unit01=null
endfunction
