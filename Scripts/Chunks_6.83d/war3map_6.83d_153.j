
// 31375 ~ 31397
function Func1282 takes nothing returns nothing
    if(IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true)then
        if(GetUnitTypeId(GetEnumUnit())=='U006')then
            call ExecuteFunc("Func0557")
        elseif GetUnitTypeId(GetEnumUnit())=='U008' or GetUnitTypeId(GetEnumUnit())=='E015' then
            set unit127=GetEnumUnit()
            call ExecuteFunc("Func3234")
        endif
        call Func0152(Func0004(GetTriggerPlayer()),10.00,GetObjectName('n05L')+" "+Func0040(GetEnumUnit())+".")
    endif
    if(GetUnitTypeId(GetEnumUnit())=='n004')then
        call RemoveUnit(GetEnumUnit())
    endif
    if(GetUnitTypeId(GetEnumUnit())=='n018')then
        call RemoveUnit(GetEnumUnit())
    endif
    if(GetUnitTypeId(GetEnumUnit())=='n01C')then
        call RemoveUnit(GetEnumUnit())
    endif
    if(GetUnitTypeId(GetEnumUnit())=='n01G')then
        call RemoveUnit(GetEnumUnit())
    endif
endfunction

// 31399 ~ 31498
function Func1283 takes nothing returns nothing
    local player loc_player01=GetTriggerPlayer()
    local group loc_group01=Func0030()
    local integer loc_integer01
    local integer loc_integer02
    local location loc_location01
    local unit loc_unit01
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05
    local unit loc_unit02
    local location loc_location02=GetRectCenter(rect029)
    local location loc_location03=GetRectCenter(rect030)
    set bj_groupEnumOwningPlayer=loc_player01
    call GroupEnumUnitsInRect(loc_group01,GetWorldBounds(),filterGetUnitsInRectOfPlayer)
    if(Func0056(loc_player01)==true)then
        set loc_integer01=integer039
        set loc_integer02=integer040
        set loc_location01=GetRectCenter(rect017)
    else
        set loc_integer01=integer041
        set loc_integer02=integer042
        set loc_location01=GetRectCenter(rect016)
    endif
    if boolean004 then
        if(GetRandomInt(1,2)==1)then
            set loc_integer01=integer039
            set loc_integer02=integer040
        else
            set loc_integer01=integer041
            set loc_integer02=integer042
        endif
    endif
    if boolean006 or boolean034 then
        set integer003=100
    endif
    set loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggerPlayer())),(147)))
    if loc_unit02!=null and GetUnitTypeId(loc_unit02)=='e00C' then
        call RemoveUnit(loc_unit02)
    endif
    call AdjustPlayerStateBJ(-1*integer003,loc_player01,PLAYER_STATE_RESOURCE_GOLD)
    set booleans003[GetPlayerId(loc_player01)]=true
    call ForGroup(loc_group01,function Func1282)
    if booleans004[GetPlayerId(loc_player01)]==true then
        call Func0070(GetUnitTypeId(units001[GetPlayerId(loc_player01)]))
    endif
    call Func0136(units001[GetPlayerId(loc_player01)])
    set units001[GetPlayerId(GetTriggerPlayer())]=null
    if boolean006 or boolean034 then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,GetObjectName('N05Y'))
        if boolean006 then
            set loc_integer04=integer039
            set loc_integer05=integer042
        endif
        if Func0056(loc_player01)then
            if boolean034 then
                set loc_integer04=integer039
                set loc_integer05=integer040
                call CreateUnitAtLoc(loc_player01,'n00C',loc_location02,bj_UNIT_FACING)
            else
                call CreateUnitAtLoc(loc_player01,'n00C',loc_location02,bj_UNIT_FACING)
                call CreateUnitAtLoc(loc_player01,'n00C',loc_location03,bj_UNIT_FACING)
            endif
            call PanCameraToTimedLocForPlayer(loc_player01,loc_location02,0)
        else
            if boolean034 then
                set loc_integer04=integer041
                set loc_integer05=integer042
                call CreateUnitAtLoc(loc_player01,'n00C',loc_location03,bj_UNIT_FACING)
            else
                call CreateUnitAtLoc(loc_player01,'n00C',loc_location02,bj_UNIT_FACING)
                call CreateUnitAtLoc(loc_player01,'n00C',loc_location03,bj_UNIT_FACING)
            endif
            call PanCameraToTimedLocForPlayer(loc_player01,loc_location03,0)
        endif
        loop
            exitwhen loc_integer04>loc_integer05
            if booleans001[loc_integer04]==false then
                call SetPlayerTechMaxAllowed(loc_player01,integers070[loc_integer04],1)
            endif
            set loc_integer04=loc_integer04+1
        endloop
        call RemoveLocation(loc_location02)
        call RemoveLocation(loc_location03)
        return
    endif
    loop
        set loc_integer03=GetRandomInt(loc_integer01,loc_integer02)
        if(booleans001[loc_integer03]==false)then
            set booleans001[loc_integer03]=true
            set units001[GetPlayerId(loc_player01)]=CreateUnitAtLoc(loc_player01,integers070[loc_integer03],loc_location01,bj_UNIT_FACING)
            call Func0068(integers070[loc_integer03])
        endif
        exitwhen units001[GetPlayerId(GetTriggerPlayer())]!=null
    endloop
    call Func0029(loc_group01)
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    call RemoveLocation(loc_location03)
endfunction

// 31500 ~ 31504
function Func1284 takes nothing returns nothing
    if Func1281()then
        call Func1283()
    endif
endfunction
