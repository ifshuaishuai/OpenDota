
// 16666 ~ 16689
function Func0637 takes player loc_player01,integer loc_integer01 returns nothing
    local integer loc_integer02=GetPlayerId(loc_player01)
    if loc_integer01==integer142 then
        set integers007[loc_integer02]=integers007[loc_integer02]+1
    elseif loc_integer01==integer144 then
        set integers007[loc_integer02]=integers007[loc_integer02]+1
    elseif loc_integer01==integer145 then
        set integers007[loc_integer02]=integers007[loc_integer02]+3
    elseif loc_integer01==integer147 then
        set integers007[loc_integer02]=integers007[loc_integer02]+2
        set integers008[loc_integer02]=integers008[loc_integer02]+2
    elseif loc_integer01==integer148 then
        set integers007[loc_integer02]=integers007[loc_integer02]+2
        set integers008[loc_integer02]=integers008[loc_integer02]+2
    elseif loc_integer01==integer149 then
        set integers007[loc_integer02]=integers007[loc_integer02]+1
    elseif loc_integer01==integer153 then
        set integers007[loc_integer02]=integers007[loc_integer02]+2
    elseif loc_integer01==integer143 then
        set integers007[loc_integer02]=integers007[loc_integer02]+2
    elseif loc_integer01==integer154 then
        set integers007[loc_integer02]=integers007[loc_integer02]+2
    endif
endfunction

// 16691 ~ 16706
function Func0638 takes unit loc_unit01,unit loc_unit02 returns boolean
    local integer loc_integer01
    if GetUnitTypeId(loc_unit02)=='N0MM' then
        return true
    endif
    if(loc_unit01==unit178 or loc_unit01==unit175)and IsUnitAlly(loc_unit02,players004[0])then
        return false
    elseif(loc_unit01==unit134 or loc_unit01==unit131)and IsUnitAlly(loc_unit02,players003[0])then
        return false
    endif
    set loc_integer01=Func0402(loc_unit02)
    if loc_integer01==integer147 or loc_integer01==integer083 or loc_integer01==integer155 then
        return true
    endif
    return false
endfunction

// 16708 ~ 16719
function Func0639 takes unit loc_unit01,unit loc_unit02 returns real
    if loc_unit01==unit131 or loc_unit01==unit132 or loc_unit01==unit133 or loc_unit01==unit134 or loc_unit01==unit135 or loc_unit01==unit136 or loc_unit01==unit137 or loc_unit01==unit138 or loc_unit01==unit139 or loc_unit01==unit140 then
        return reals005[GetPlayerId(GetOwningPlayer(loc_unit02))]
    elseif loc_unit01==unit175 or loc_unit01==unit176 or loc_unit01==unit177 or loc_unit01==unit178 or loc_unit01==unit179 or loc_unit01==unit180 or loc_unit01==unit181 or loc_unit01==unit182 or loc_unit01==unit183 or loc_unit01==unit184 then
        return reals005[GetPlayerId(GetOwningPlayer(loc_unit02))]
    elseif loc_unit01==unit117 or loc_unit01==unit021 then
        return-7133.0
    elseif loc_unit01==unit118 or loc_unit01==unit119 then
        return 7207.0
    endif
    return GetUnitX(loc_unit02)
endfunction

// 16721 ~ 16732
function Func0640 takes unit loc_unit01,unit loc_unit02 returns real
    if loc_unit01==unit131 or loc_unit01==unit132 or loc_unit01==unit133 or loc_unit01==unit134 or loc_unit01==unit135 or loc_unit01==unit136 or loc_unit01==unit137 or loc_unit01==unit138 or loc_unit01==unit139 or loc_unit01==unit140 then
        return reals006[GetPlayerId(GetOwningPlayer(loc_unit02))]
    elseif loc_unit01==unit175 or loc_unit01==unit176 or loc_unit01==unit177 or loc_unit01==unit178 or loc_unit01==unit179 or loc_unit01==unit180 or loc_unit01==unit181 or loc_unit01==unit182 or loc_unit01==unit183 or loc_unit01==unit184 then
        return reals006[GetPlayerId(GetOwningPlayer(loc_unit02))]
    elseif loc_unit01==unit117 or loc_unit01==unit021 then
        return 4317.0
    elseif loc_unit01==unit118 or loc_unit01==unit119 then
        return-4243.0
    endif
    return GetUnitY(loc_unit02)
endfunction

// 16734 ~ 16741
function Func0641 takes unit loc_unit01,unit loc_unit02 returns real
    if loc_unit01==unit131 or loc_unit01==unit132 or loc_unit01==unit133 or loc_unit01==unit134 or loc_unit01==unit135 or loc_unit01==unit136 or loc_unit01==unit137 or loc_unit01==unit138 or loc_unit01==unit139 or loc_unit01==unit140 then
        return GetRectCenterX(rect011)
    elseif loc_unit01==unit175 or loc_unit01==unit176 or loc_unit01==unit177 or loc_unit01==unit178 or loc_unit01==unit179 or loc_unit01==unit180 or loc_unit01==unit181 or loc_unit01==unit182 or loc_unit01==unit183 or loc_unit01==unit184 then
        return GetRectCenterX(rect004)
    endif
    return GetUnitX(loc_unit02)
endfunction

// 16743 ~ 16750
function Func0642 takes unit loc_unit01,unit loc_unit02 returns real
    if loc_unit01==unit131 or loc_unit01==unit132 or loc_unit01==unit133 or loc_unit01==unit134 or loc_unit01==unit135 or loc_unit01==unit136 or loc_unit01==unit137 or loc_unit01==unit138 or loc_unit01==unit139 or loc_unit01==unit140 then
        return GetRectCenterY(rect011)
    elseif loc_unit01==unit175 or loc_unit01==unit176 or loc_unit01==unit177 or loc_unit01==unit178 or loc_unit01==unit179 or loc_unit01==unit180 or loc_unit01==unit181 or loc_unit01==unit182 or loc_unit01==unit183 or loc_unit01==unit184 then
        return GetRectCenterY(rect004)
    endif
    return GetUnitY(loc_unit02)
endfunction

// 16752 ~ 16771
function Func0643 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(53)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(94)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(93)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(76)))
    call Func0636(loc_player01,loc_unit01,loc_unit02,Func0377(loc_integer02),loc_real01,loc_real02,loc_integer03,0)
    call ShowUnit(loc_unit01,false)
    call UnitApplyTimedLife(loc_unit01,'BTLF',2)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_player01=null
    set loc_unit01=null
    return false
endfunction

// 16773 ~ 16808
function Func0644 takes nothing returns nothing
    local unit loc_unit01=GetSoldUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local integer loc_integer01=Func0402(loc_unit01)
    local real loc_real01
    local real loc_real02
    if Func0638(GetSellingUnit(),loc_unit01)then
        call Func0120(loc_player01,GetObjectName('n02G'))
        if IsUnitAlly(loc_unit01,players003[0])then
            set loc_player01=players004[0]
        else
            set loc_player01=players003[0]
        endif
        set loc_real01=Func0641(GetSellingUnit(),loc_unit01)
        set loc_real02=Func0642(GetSellingUnit(),loc_unit01)
        call Func0389(integers088[Func0402(loc_unit01)],loc_real01,loc_real02,loc_player01,true,Func0405(Func0402(loc_unit01)))
    else
        call Func0637(loc_player01,Func0377(loc_integer01))
        if integers089[loc_integer01]==0 then
            call Func0120(loc_player01,GetObjectName('n02H'))
        else
            set loc_real01=Func0639(GetSellingUnit(),loc_unit01)
            set loc_real02=Func0640(GetSellingUnit(),loc_unit01)
            if loc_integer01==integer153 then
                call Func0636(loc_player01,loc_unit01,GetSellingUnit(),Func0377(loc_integer01),loc_real01,loc_real02,2,0)
            else
                call Func0636(loc_player01,loc_unit01,GetSellingUnit(),Func0377(loc_integer01),loc_real01,loc_real02,0,0)
            endif
        endif
    endif
    call UnitAddAbility(loc_unit01,'Aloc')
    call ShowUnit(loc_unit01,false)
    call UnitApplyTimedLife(loc_unit01,'BTLF',2)
    set loc_unit01=null
    set loc_player01=null
endfunction

// 16810 ~ 16846
function Func0645 takes nothing returns boolean
    if boolean064==false then
        if GetUnitPointValue(GetSoldUnit())>=200 then
            call Func0644()
            if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(GetSoldUnit()))or(boolean025 and(GetLocalPlayer()==player009 or GetLocalPlayer()==player010))then
                if GetUnitTypeId(GetSoldUnit())=='h02F' then
                    call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
                    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,20,strings001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(strings005[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName('n0HU')+"|r")
                elseif GetUnitTypeId(GetSoldUnit())=='h03Q' then
                    call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
                    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,20,strings001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(strings005[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName('n0KG')+"|r")
                elseif GetUnitTypeId(GetSoldUnit())=='h076' then
                    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,strings001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(strings005[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName('n0KO')+"|r")
                elseif GetUnitTypeId(GetSoldUnit())=='h02C' then
                    call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
                    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,strings001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(strings005[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName('n0KP')+"|r")
                elseif GetUnitTypeId(GetSoldUnit())=='h02D' then
                    call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
                    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,strings001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(strings005[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName('n0KQ')+"|r")
                elseif GetUnitTypeId(GetSoldUnit())=='h0BA' then
                    call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
                    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,strings001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(strings005[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName('n0KT')+"|r")
                elseif GetUnitTypeId(GetSoldUnit())=='h01G' then
                    call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
                    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,strings001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(strings005[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName('n0LB')+"|r")
                elseif GetUnitTypeId(GetSoldUnit())=='h0D3' then
                    call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
                    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,strings001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(strings005[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName('n0LP')+"|r")
                endif
            endif
        else
            call Func0629()
        endif
    else
    endif
    return false
endfunction
