
// 29783 ~ 29785
function Func1203 takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit())=='ncop' and IsPlayerAlly(GetOwningPlayer(GetFilterUnit()),player005)==true
endfunction

// 29787 ~ 29807
function Func1204 takes player loc_player01 returns nothing
    local group loc_group01=Func0030()
    local unit loc_unit01
    set player005=loc_player01
    call GroupEnumUnitsInRange(loc_group01,0,0,99999,Condition(function Func1203))
    loop
        set loc_unit01=FirstOfGroup(loc_group01)
        exitwhen FirstOfGroup(loc_group01)==null
        if GetUnitAbilityLevel(loc_unit01,'A141')>0 then
            call UnitRemoveAbility(loc_unit01,'A141')
            call UnitAddAbility(loc_unit01,'A141')
        else
            call UnitRemoveAbility(loc_unit01,'A1WI')
            call UnitAddAbility(loc_unit01,'A1WI')
        endif
        call GroupRemoveUnit(loc_group01,loc_unit01)
    endloop
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit01=null
endfunction

// 29809 ~ 29925
function Func1205 takes nothing returns nothing
    if IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit()))then
        set integers016[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers016[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
    endif
    if(GetDyingUnit()==unit142)then
        call Func0415("Tower"+I2S(0)+I2S(1)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0276(unit145,false)
        call Func0084(GetKillingUnit(),1)
        call Func1204(GetOwningPlayer(GetTriggerUnit()))
    endif
    if(GetDyingUnit()==unit143)then
        call Func0415("Tower"+I2S(0)+I2S(1)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0276(unit146,false)
        call Func0084(GetKillingUnit(),1)
        call Func1204(GetOwningPlayer(GetTriggerUnit()))
    endif
    if(GetDyingUnit()==unit144)then
        call Func0415("Tower"+I2S(0)+I2S(1)+I2S(2),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0276(unit147,false)
        call Func0084(GetKillingUnit(),1)
        call Func1204(GetOwningPlayer(GetTriggerUnit()))
    endif
    if(GetDyingUnit()==unit145)then
        call Func0415("Tower"+I2S(0)+I2S(2)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0276(unit148,false)
        call Func0084(GetKillingUnit(),2)
    endif
    if(GetDyingUnit()==unit146)then
        call Func0415("Tower"+I2S(0)+I2S(2)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0276(unit149,false)
        call Func0084(GetKillingUnit(),2)
    endif
    if(GetDyingUnit()==unit147)then
        call Func0415("Tower"+I2S(0)+I2S(2)+I2S(2),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0276(unit150,false)
        call Func0084(GetKillingUnit(),2)
    endif
    if(GetDyingUnit()==unit148)then
        call Func0415("Tower"+I2S(0)+I2S(3)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0084(GetKillingUnit(),3)
        call Func0276(unit153,false)
        call Func0276(unit156,false)
        call Func0276(unit151,false)
        call Func0276(unit152,false)
        call Func0276(unit170,false)
        call Func0276(unit171,false)
        call Func0276(unit172,false)
        call Func0276(unit173,false)
        call Func0276(unit159,false)
        call Func0276(unit160,false)
        call Func0276(unit161,false)
        call Func0276(unit162,false)
        call Func0276(unit163,false)
        call Func0276(unit164,false)
        call Func0276(unit165,false)
        call Func0276(unit166,false)
        call Func0276(unit167,false)
        call Func0276(unit168,false)
        call Func0276(unit169,false)
    endif
    if(GetDyingUnit()==unit149)then
        call Func0415("Tower"+I2S(0)+I2S(3)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0084(GetKillingUnit(),3)
        call Func0276(unit154,false)
        call Func0276(unit157,false)
        call Func0276(unit151,false)
        call Func0276(unit152,false)
        call Func0276(unit170,false)
        call Func0276(unit171,false)
        call Func0276(unit172,false)
        call Func0276(unit173,false)
        call Func0276(unit159,false)
        call Func0276(unit160,false)
        call Func0276(unit161,false)
        call Func0276(unit162,false)
        call Func0276(unit163,false)
        call Func0276(unit164,false)
        call Func0276(unit165,false)
        call Func0276(unit166,false)
        call Func0276(unit167,false)
        call Func0276(unit168,false)
        call Func0276(unit169,false)
    endif
    if(GetDyingUnit()==unit150)then
        call Func0415("Tower"+I2S(0)+I2S(3)+I2S(2),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0084(GetKillingUnit(),3)
        call Func0276(unit155,false)
        call Func0276(unit158,false)
        call Func0276(unit151,false)
        call Func0276(unit152,false)
        call Func0276(unit170,false)
        call Func0276(unit171,false)
        call Func0276(unit172,false)
        call Func0276(unit173,false)
        call Func0276(unit159,false)
        call Func0276(unit160,false)
        call Func0276(unit161,false)
        call Func0276(unit162,false)
        call Func0276(unit163,false)
        call Func0276(unit164,false)
        call Func0276(unit165,false)
        call Func0276(unit166,false)
        call Func0276(unit167,false)
        call Func0276(unit168,false)
        call Func0276(unit169,false)
    endif
    if GetDyingUnit()==unit151 or GetDyingUnit()==unit152 then
        call Func0415("Tower"+I2S(0)+I2S(4)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0084(GetKillingUnit(),4)
    endif
    if(Func1201())then
        call Func0276(unit141,false)
    endif
    if(Func1202())then
        call Func0276(unit141,false)
    endif
endfunction
