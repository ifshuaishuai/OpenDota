
// 16580 ~ 16593
function Func0634 takes nothing returns boolean
    if IsUnitAlly(GetFilterUnit(),GetOwningPlayer(unit124))==true and GetUnitAbilityLevel(GetFilterUnit(),'Aloc')==0 and UnitInventorySize(GetFilterUnit())>1 and GetUnitTypeId(GetFilterUnit())!='ncop' and IsUnitIllusion(GetFilterUnit())==false and Func0194(GetFilterUnit())==false then
        if GetOwningPlayer(unit124)==GetOwningPlayer(GetFilterUnit())then
            if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true then
                if GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 then
                    set unit125=GetFilterUnit()
                endif
            elseif IsUnitType(unit125,UNIT_TYPE_HERO)==false then
                set unit125=GetFilterUnit()
            endif
        endif
    endif
    return false
endfunction

// 16595 ~ 16612
function Func0635 takes unit loc_unit01,integer loc_integer01 returns unit
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set unit125=null
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(unit126),GetUnitY(unit126),1300+loc_integer01,Condition(function Func0634))
    if unit125==null then
        set integer022=0
        call Func0029(loc_group01)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(unit126),GetUnitY(unit126),1100+loc_integer01,Condition(function Func0633))
        if integer022>1 then
            set unit125=null
        endif
    endif
    call Func0029(loc_group01)
    set loc_group01=null
    return unit125
endfunction

// 16614 ~ 16664
function Func0636 takes player loc_player01,unit loc_unit01,unit loc_unit02,integer loc_integer01,real loc_real01,real loc_real02,integer loc_integer02,integer loc_integer03 returns nothing
    local unit loc_unit03
    local item loc_item01
    set unit126=loc_unit02
    if GetUnitPointValue(loc_unit01)==200 then
        set loc_unit03=Func0635(loc_unit01,0)
        if loc_unit03==null then
            set loc_unit03=Func0635(loc_unit01,300)
        endif
    else
        set loc_unit03=loc_unit01
    endif
    if loc_unit03==null or Func0632(loc_player01,loc_unit03,Func0377(loc_integer01))==false or boolean045==false then
        if Func0387(Func0377(loc_integer01))then
            if Func0398(loc_unit03)==0 or loc_unit03==null then
                call Func0389(integers088[loc_integer01],loc_real01,loc_real02,loc_player01,true,loc_integer02)
            else
                set loc_item01=UnitAddItemById(loc_unit03,integers089[loc_integer01])
                call SetItemCharges(loc_item01,loc_integer02)
                call SetItemPlayer(loc_item01,loc_player01,true)
                call SetItemUserData(loc_item01,loc_integer03)
            endif
        elseif Func0386(Func0377(loc_integer01))then
            if loc_unit03==null or(Func0398(loc_unit03)==0 and Func0394(loc_unit03,integers089[loc_integer01])==null)then
                call Func0389(integers088[loc_integer01],loc_real01,loc_real02,loc_player01,true,Func0405(loc_integer01))
            else
                set loc_item01=CreateItem(integers088[loc_integer01],loc_real01,loc_real02)
                call SetItemPlayer(loc_item01,loc_player01,true)
                call SetItemUserData(loc_item01,loc_integer03)
                call SetItemCharges(loc_item01,Func0405(loc_integer01))
                call UnitAddItem(loc_unit03,loc_item01)
            endif
        else
            if Func0398(loc_unit03)==0 or loc_unit03==null then
                call Func0389(integers088[loc_integer01],loc_real01,loc_real02,loc_player01,false,0)
            else
                set loc_item01=UnitAddItemById(loc_unit03,integers089[loc_integer01])
                call SetItemPlayer(loc_item01,loc_player01,true)
                call SetItemUserData(loc_item01,0)
            endif
        endif
    else
        if IsUnitType(loc_unit03,UNIT_TYPE_HERO)==true then
            if loc_integer03==0 then
                call Func0415("PUI_"+I2S(GetPlayerId(GetOwningPlayer(loc_unit03))),integers089[Func0377(loc_integer01)])
            endif
        endif
    endif
    set loc_unit03=null
    set loc_item01=null
endfunction
