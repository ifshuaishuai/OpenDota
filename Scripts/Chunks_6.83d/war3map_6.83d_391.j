
// 53838 ~ 53845
function Func2362 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=unit125
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    call SetHeroInt(loc_unit01,GetHeroInt(loc_unit01,false)+2,true)
    call Func0173("+2 "+GetObjectName('n0JP'),3,loc_unit01,0.023,0,255,0,230)
    set loc_unit01=null
endfunction

// 53847 ~ 53856
function Func2363 takes unit loc_unit01,unit loc_unit02 returns nothing
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true and Func0468(GetUnitTypeId(loc_unit02))==false and IsUnitIllusion(loc_unit02)==false and(IsUnitInRange(loc_unit01,loc_unit02,900)or GetOwningPlayer(loc_unit01)==GetOwningPlayer(GetKillingUnit()))and Func0194(loc_unit01)==false and IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==false then
        if GetUnitTypeId(loc_unit01)=='N01A' then
            set integers154[GetPlayerId(GetOwningPlayer(loc_unit01))]=integers154[GetPlayerId(GetOwningPlayer(loc_unit01))]+2
            call Func0173("-2 "+GetObjectName('n0JP'),3,loc_unit02,0.023,255,0,0,230)
            call SetHeroInt(loc_unit02,GetHeroInt(loc_unit02,false)-2,true)
            call Func0196(loc_unit02,loc_unit01,'h0CP',"Func2362",450,false)
        endif
    endif
endfunction

// 53858 ~ 53860
function Func2364 takes nothing returns nothing
    call Func2363(GetEnumUnit(),GetTriggerUnit())
endfunction

// 53862 ~ 53870
function Func2365 takes nothing returns boolean
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),1000,Condition(function Func0349))
    call GroupAddUnit(loc_group01,units001[GetPlayerId(GetOwningPlayer(GetKillingUnit()))])
    call ForGroup(loc_group01,function Func2364)
    call Func0029(loc_group01)
    set loc_group01=null
    return false
endfunction
