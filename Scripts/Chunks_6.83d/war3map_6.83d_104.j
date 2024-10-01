
// 22515 ~ 22520
function Func0902 takes nothing returns nothing
    if Func0275(GetEnumUnit())==false then
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A28F',false)
        call Func0246(GetEnumUnit(),'A28F',1,real207,'B0EQ')
    endif
endfunction

// 22522 ~ 22533
function Func0903 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,600+25,Condition(function Func0298))
    call ForGroup(loc_group01,function Func0902)
    call Func0029(loc_group01)
    call DestroyEffect(AddSpecialEffect("war3mapImported\\DarkLightningNova.mdx",loc_real01,loc_real02))
    set loc_unit01=null
    set loc_group01=null
endfunction

// 22535 ~ 22539
function Func0904 takes nothing returns nothing
    if GetSpellAbilityId()=='A28D' then
        call Func0903()
    endif
endfunction
