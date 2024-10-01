
// 29927 ~ 29941
function Func1206 takes nothing returns boolean
    if(GetUnitTypeId(GetDyingUnit())=='u00M')then
        return true
    endif
    if(GetUnitTypeId(GetDyingUnit())=='u00D')then
        return true
    endif
    if(GetUnitTypeId(GetDyingUnit())=='u00N')then
        return true
    endif
    if(GetUnitTypeId(GetDyingUnit())=='u00T')then
        return true
    endif
    return false
endfunction

// 29943 ~ 29951
function Func1207 takes nothing returns boolean
    if(not(GetDyingUnit()==unit195))then
        return false
    endif
    if(not(Func0194(unit196)==true))then
        return false
    endif
    return true
endfunction

// 29953 ~ 29961
function Func1208 takes nothing returns boolean
    if(not(GetDyingUnit()==unit196))then
        return false
    endif
    if(not(Func0194(unit195)==true))then
        return false
    endif
    return true
endfunction

// 29963 ~ 30079
function Func1209 takes nothing returns nothing
    if IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit()))then
        set integers016[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers016[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
    endif
    if(GetDyingUnit()==unit186)then
        call Func0415("Tower"+I2S(1)+I2S(1)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0276(unit189,false)
        call Func0084(GetKillingUnit(),1)
        call Func1204(GetOwningPlayer(GetTriggerUnit()))
    endif
    if(GetDyingUnit()==unit187)then
        call Func0415("Tower"+I2S(1)+I2S(1)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0276(unit190,false)
        call Func0084(GetKillingUnit(),1)
        call Func1204(GetOwningPlayer(GetTriggerUnit()))
    endif
    if(GetDyingUnit()==unit188)then
        call Func0415("Tower"+I2S(1)+I2S(1)+I2S(2),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0276(unit191,false)
        call Func0084(GetKillingUnit(),1)
        call Func1204(GetOwningPlayer(GetTriggerUnit()))
    endif
    if(GetDyingUnit()==unit189)then
        call Func0415("Tower"+I2S(1)+I2S(2)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0276(unit192,false)
        call Func0084(GetKillingUnit(),2)
    endif
    if(GetDyingUnit()==unit190)then
        call Func0415("Tower"+I2S(1)+I2S(2)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0276(unit193,false)
        call Func0084(GetKillingUnit(),2)
    endif
    if(GetDyingUnit()==unit191)then
        call Func0415("Tower"+I2S(1)+I2S(2)+I2S(2),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0276(unit194,false)
        call Func0084(GetKillingUnit(),2)
    endif
    if(GetDyingUnit()==unit192)then
        call Func0415("Tower"+I2S(1)+I2S(3)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0084(GetKillingUnit(),3)
        call Func0276(unit197,false)
        call Func0276(unit200,false)
        call Func0276(unit195,false)
        call Func0276(unit196,false)
        call Func0276(unit214,false)
        call Func0276(unit215,false)
        call Func0276(unit216,false)
        call Func0276(unit217,false)
        call Func0276(unit203,false)
        call Func0276(unit204,false)
        call Func0276(unit205,false)
        call Func0276(unit206,false)
        call Func0276(unit207,false)
        call Func0276(unit208,false)
        call Func0276(unit209,false)
        call Func0276(unit210,false)
        call Func0276(unit211,false)
        call Func0276(unit212,false)
        call Func0276(unit213,false)
    endif
    if(GetDyingUnit()==unit193)then
        call Func0415("Tower"+I2S(1)+I2S(3)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0084(GetKillingUnit(),3)
        call Func0276(unit198,false)
        call Func0276(unit201,false)
        call Func0276(unit195,false)
        call Func0276(unit196,false)
        call Func0276(unit214,false)
        call Func0276(unit215,false)
        call Func0276(unit216,false)
        call Func0276(unit217,false)
        call Func0276(unit203,false)
        call Func0276(unit204,false)
        call Func0276(unit205,false)
        call Func0276(unit206,false)
        call Func0276(unit207,false)
        call Func0276(unit208,false)
        call Func0276(unit209,false)
        call Func0276(unit210,false)
        call Func0276(unit211,false)
        call Func0276(unit212,false)
        call Func0276(unit213,false)
    endif
    if(GetDyingUnit()==unit194)then
        call Func0415("Tower"+I2S(1)+I2S(3)+I2S(2),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0084(GetKillingUnit(),3)
        call Func0276(unit199,false)
        call Func0276(unit202,false)
        call Func0276(unit195,false)
        call Func0276(unit196,false)
        call Func0276(unit214,false)
        call Func0276(unit215,false)
        call Func0276(unit216,false)
        call Func0276(unit217,false)
        call Func0276(unit203,false)
        call Func0276(unit204,false)
        call Func0276(unit205,false)
        call Func0276(unit206,false)
        call Func0276(unit207,false)
        call Func0276(unit208,false)
        call Func0276(unit209,false)
        call Func0276(unit210,false)
        call Func0276(unit211,false)
        call Func0276(unit212,false)
        call Func0276(unit213,false)
    endif
    if GetDyingUnit()==unit195 or GetDyingUnit()==unit196 then
        call Func0415("Tower"+I2S(1)+I2S(4)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
        call Func0084(GetKillingUnit(),4)
    endif
    if(Func1207())then
        call Func0276(unit185,false)
    endif
    if(Func1208())then
        call Func0276(unit185,false)
    endif
endfunction

// 30081 ~ 30114
function Func1210 takes nothing returns boolean
    local integer loc_integer01=0
    if GetPlayerSlotState(players003[1])==PLAYER_SLOT_STATE_EMPTY then
        set loc_integer01=loc_integer01+1
    endif
    if GetPlayerSlotState(players003[2])==PLAYER_SLOT_STATE_EMPTY then
        set loc_integer01=loc_integer01+1
    endif
    if GetPlayerSlotState(players003[3])==PLAYER_SLOT_STATE_EMPTY then
        set loc_integer01=loc_integer01+1
    endif
    if GetPlayerSlotState(players003[4])==PLAYER_SLOT_STATE_EMPTY then
        set loc_integer01=loc_integer01+1
    endif
    if GetPlayerSlotState(players003[5])==PLAYER_SLOT_STATE_EMPTY then
        set loc_integer01=loc_integer01+1
    endif
    if GetPlayerSlotState(players004[1])==PLAYER_SLOT_STATE_EMPTY then
        set loc_integer01=loc_integer01+1
    endif
    if GetPlayerSlotState(players004[2])==PLAYER_SLOT_STATE_EMPTY then
        set loc_integer01=loc_integer01+1
    endif
    if GetPlayerSlotState(players004[3])==PLAYER_SLOT_STATE_EMPTY then
        set loc_integer01=loc_integer01+1
    endif
    if GetPlayerSlotState(players004[4])==PLAYER_SLOT_STATE_EMPTY then
        set loc_integer01=loc_integer01+1
    endif
    if GetPlayerSlotState(players004[5])==PLAYER_SLOT_STATE_EMPTY then
        set loc_integer01=loc_integer01+1
    endif
    return loc_integer01==9
endfunction

// 30116 ~ 30118
function Func1211 takes nothing returns boolean
    return bj_isSinglePlayer and Func1210()
endfunction

// 30120 ~ 30122
function Func1212 takes nothing returns nothing
    set boolean095=false
endfunction

// 30124 ~ 30126
function Func1213 takes nothing returns nothing
    set boolean097=true
endfunction

// 30128 ~ 30130
function Func1214 takes nothing returns nothing
    set boolean095=true
endfunction

// 30132 ~ 30135
function Func1215 takes nothing returns nothing
    set boolean046=false
    set boolean136=true
endfunction
