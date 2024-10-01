
// 22865 ~ 22915
function Func0926 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=0
    local integer loc_integer02=0
    local item loc_item01
    local integer loc_integer03
    local integer loc_integer04
    local unit loc_unit03
    if GetSpellAbilityId()=='A2WI' then
        set loc_integer03='oeye'
        set loc_integer04=60*4
        set loc_integer01='I05H'
        set loc_integer02=integer148
    elseif GetSpellAbilityId()=='A2WH' then
        set loc_integer03='o004'
        set loc_integer04=60*7
        set loc_integer01='I05G'
        set loc_integer02=integer147
    endif
    if(loc_integer01!=0)then
        if loc_unit02!=null then
            if Func0398(loc_unit02)>0 then
                call DisableTrigger(trigger057)
                set loc_item01=UnitAddItemById(loc_unit02,loc_integer01)
                call SetItemPlayer(loc_item01,GetOwningPlayer(loc_unit02),false)
                call SetItemUserData(loc_item01,1)
                call SetItemCharges(loc_item01,1)
                call EnableTrigger(trigger057)
            else
                call Func0389(integers088[loc_integer02],GetUnitX(loc_unit02),GetUnitY(loc_unit02),GetOwningPlayer(loc_unit02),true,1)
            endif
        else
            set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer03,GetSpellTargetX(),GetSpellTargetY(),0)
            call UnitApplyTimedLife(loc_unit03,'BTLD',loc_integer04)
            call Func0193(loc_unit03,'A0XB')
            call Func0183(GetOwningPlayer(loc_unit01),sound075,GetSpellTargetX(),GetSpellTargetY())
            if IsUnitInRegion(region009,loc_unit03)then
                call Func0696(loc_unit01,loc_unit03)
                call RemoveUnit(loc_unit03)
            else
                call Func0694(loc_unit03,loc_unit01)
                if GetUnitTypeId(loc_unit03)=='oeye' then
                    call Func0186(GetOwningPlayer(loc_unit03),12,GetUnitX(loc_unit03),GetUnitY(loc_unit03),150)
                endif
            endif
        endif
    endif
    set loc_unit01=null
    set loc_item01=null
endfunction
