
// 16245 ~ 16249
function Func0627 takes unit loc_unit01 returns string
    local string loc_string01=GetObjectName('n0FO')
    set loc_string01=Func0418(loc_string01,"$hero",strings001[GetPlayerId(GetOwningPlayer(loc_unit01))]+GetUnitName(loc_unit01)+"|r")
    return loc_string01
endfunction

// 16251 ~ 16256
function Func0628 takes unit loc_unit01 returns boolean
    if GetOwningPlayer(loc_unit01)!=GetLocalPlayer()then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,15,Func0627(units001[GetPlayerId(GetOwningPlayer(loc_unit01))]))
    endif
    return false
endfunction

// 16258 ~ 16293
function Func0629 takes nothing returns nothing
    if GetUnitTypeId(GetSoldUnit())=='h085' then
        if units001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]!=null and Func0194(units001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))])==false then
            call Func0623(units001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))],true)
        endif
        call KillUnit(GetSoldUnit())
    elseif GetUnitTypeId(GetSoldUnit())=='h0BV' then
        if units001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]!=null then
            call Func0626(units001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))])
        endif
        call KillUnit(GetSoldUnit())
    elseif GetUnitTypeId(GetSoldUnit())=='h0DE' then
        if units001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]!=null then
            call Func0623((LoadUnitHandle(hashtable001,(GetHandleId(GetSellingUnit())),(8002+(LoadInteger(hashtable001,(GetHandleId(GetSellingUnit())),(8000)))-1))),false)
        endif
        call KillUnit(GetSoldUnit())
    elseif Func0430(GetUnitTypeId(GetSoldUnit()))then
        if units001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]!=null then
            if Func0194(units001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))])==true and GetOwningPlayer(GetSoldUnit())==GetOwningPlayer(GetSellingUnit())and((LoadInteger(hashtable001,(GetHandleId((units001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]))),((4304))))==1)==false and(booleans017[GetPlayerId((GetOwningPlayer(GetSoldUnit())))]==false)then
                call Func0628(units001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))])
                set boolean067=true
                call ReviveHero(units001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))],GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),true)
                set boolean067=false
                call SetUnitState(units001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))],UNIT_STATE_MANA,10000)
                set integers081[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]=IMaxBJ(0,integers081[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]-integers065[Func0431(GetHeroLevel(units001[GetPlayerId(GetOwningPlayer(GetSellingUnit()))]))])
                call Func0436(GetOwningPlayer(GetSoldUnit()))
            else
                call SetPlayerState(GetOwningPlayer(GetSoldUnit()),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(GetOwningPlayer(GetSoldUnit()),PLAYER_STATE_RESOURCE_GOLD)+integers065[Func0431(GetHeroLevel(units001[GetPlayerId(GetOwningPlayer(GetSellingUnit()))]))])
                if(booleans017[GetPlayerId((GetOwningPlayer(GetSoldUnit())))]==false)==false then
                    call Func0120(GetOwningPlayer(GetSoldUnit()),GetObjectName('n0N4'))
                endif
            endif
        endif
        call KillUnit(GetSoldUnit())
    endif
endfunction
