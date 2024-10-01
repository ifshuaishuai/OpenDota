
// 69154 ~ 69163
function Func3250 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A10R')
    local integer loc_integer02=GetUnitLevel(loc_unit02)
    if(GetOwningPlayer(loc_unit02)!=players003[0]and GetOwningPlayer(loc_unit02)!=players004[0])and((loc_integer01==1 and loc_integer02>2)or(loc_integer01==2 and loc_integer02>4)or(loc_integer01==3 and loc_integer02>5)or(loc_integer01==4 and loc_integer02>6))then
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction
