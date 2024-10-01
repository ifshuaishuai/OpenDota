
// 48548 ~ 48554
function Func2041 takes unit loc_unit01,real loc_real01,real loc_real02 returns nothing
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'efon',loc_real01,loc_real02,0)
    call UnitApplyTimedLife(loc_unit02,'BEfn',60)
    call SetUnitVertexColor(loc_unit02,175,255,175,175)
    call SetUnitFlyHeight(loc_unit02,0,0)
    set loc_unit02=null
endfunction

// 48556 ~ 48562
function Func2042 takes nothing returns nothing
    if(Func0097(GetEnumDestructable())or GetDestructableTypeId(GetEnumDestructable())=='B005')and integer472<=integer473 and GetDestructableLife(GetEnumDestructable())>0 then
        set integer472=integer472+1
        call Func2041(GetTriggerUnit(),GetDestructableX(GetEnumDestructable()),GetDestructableY(GetEnumDestructable()))
        call KillDestructable(GetEnumDestructable())
    endif
endfunction

// 48564 ~ 48578
function Func2043 takes nothing returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(GetTriggerUnit(),'AEfn')
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=75+75*loc_integer01+50
    local rect loc_rect01=Rect(loc_real01-loc_real03,loc_real02-loc_real03,loc_real01+loc_real03,loc_real02+loc_real03)
    set integer472=0
    set integer473=loc_integer01
    call EnumDestructablesInRect(loc_rect01,Condition(function Func0011),function Func2042)
    call RemoveRect(loc_rect01)
    call RemoveLocation(loc_location01)
    set loc_location01=null
    set loc_rect01=null
endfunction

// 48580 ~ 48585
function Func2044 takes nothing returns boolean
    if GetSpellAbilityId()=='AEfn' then
        call Func2043()
    endif
    return false
endfunction
