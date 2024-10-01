
// 3578 ~ 3588
function Func0086 takes integer loc_integer01 returns boolean
    local integer loc_integer02=1
    loop
        exitwhen loc_integer02>integer045
        if integers074[loc_integer02]==loc_integer01 then
            return true
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return false
endfunction

// 3590 ~ 3600
function Func0087 takes integer loc_integer01 returns boolean
    local integer loc_integer02=1
    loop
        exitwhen loc_integer02>integer043
        if integers072[loc_integer02]==loc_integer01 then
            return true
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return false
endfunction

// 3602 ~ 3612
function Func0088 takes integer loc_integer01 returns boolean
    local integer loc_integer02=1
    loop
        exitwhen loc_integer02>integer044
        if integers073[loc_integer02]==loc_integer01 then
            return true
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return false
endfunction

// 3614 ~ 3649
function Func0089 takes player loc_player01 returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local location loc_location01
    local integer loc_integer03
    local boolean loc_boolean01=false
    set booleans004[GetPlayerId(loc_player01)]=true
    if Func0056(loc_player01)==true then
        set loc_integer01=integer039
        set loc_integer02=integer040
        set loc_location01=GetRectCenter(rect011)
    else
        set loc_integer01=integer041
        set loc_integer02=integer042
        set loc_location01=GetRectCenter(rect004)
    endif
    if boolean006 then
        if(GetRandomInt(1,2)==1)then
            set loc_integer01=integer039
            set loc_integer02=integer040
        else
            set loc_integer01=integer041
            set loc_integer02=integer042
        endif
    endif
    loop
        set loc_integer03=GetRandomInt(loc_integer01,loc_integer02)
        exitwhen booleans001[loc_integer03]==false and Func0086(integers070[loc_integer03])and integers070[loc_integer03]!='H00K'
    endloop
    if boolean028==false then
        call Func0069(integers070[loc_integer03])
        set booleans001[loc_integer03]=true
    endif
    call CreateUnitAtLoc(loc_player01,integers070[loc_integer03],loc_location01,0)
    call RemoveLocation(loc_location01)
endfunction

// 3651 ~ 3686
function Func0090 takes player loc_player01 returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local location loc_location01
    local integer loc_integer03
    local boolean loc_boolean01=false
    set booleans004[GetPlayerId(loc_player01)]=true
    if Func0056(loc_player01)==true then
        set loc_integer01=integer039
        set loc_integer02=integer040
        set loc_location01=GetRectCenter(rect011)
    else
        set loc_integer01=integer041
        set loc_integer02=integer042
        set loc_location01=GetRectCenter(rect004)
    endif
    if boolean006 then
        if(GetRandomInt(1,2)==1)then
            set loc_integer01=integer039
            set loc_integer02=integer040
        else
            set loc_integer01=integer041
            set loc_integer02=integer042
        endif
    endif
    loop
        set loc_integer03=GetRandomInt(loc_integer01,loc_integer02)
        exitwhen booleans001[loc_integer03]==false and Func0088(integers070[loc_integer03])
    endloop
    if boolean028==false then
        call Func0069(integers070[loc_integer03])
        set booleans001[loc_integer03]=true
    endif
    call CreateUnitAtLoc(loc_player01,integers070[loc_integer03],loc_location01,0)
    call RemoveLocation(loc_location01)
endfunction

// 3688 ~ 3723
function Func0091 takes player loc_player01 returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local location loc_location01
    local integer loc_integer03
    local boolean loc_boolean01=false
    set booleans004[GetPlayerId(loc_player01)]=true
    if Func0056(loc_player01)==true then
        set loc_integer01=integer039
        set loc_integer02=integer040
        set loc_location01=GetRectCenter(rect011)
    else
        set loc_integer01=integer041
        set loc_integer02=integer042
        set loc_location01=GetRectCenter(rect004)
    endif
    if boolean006 then
        if(GetRandomInt(1,2)==1)then
            set loc_integer01=integer039
            set loc_integer02=integer040
        else
            set loc_integer01=integer041
            set loc_integer02=integer042
        endif
    endif
    loop
        set loc_integer03=GetRandomInt(loc_integer01,loc_integer02)
        exitwhen booleans001[loc_integer03]==false and Func0087(integers070[loc_integer03])
    endloop
    if boolean028==false then
        call Func0069(integers070[loc_integer03])
        set booleans001[loc_integer03]=true
    endif
    call CreateUnitAtLoc(loc_player01,integers070[loc_integer03],loc_location01,0)
    call RemoveLocation(loc_location01)
endfunction

// 3725 ~ 3760
function Func0092 takes player loc_player01 returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local location loc_location01
    local integer loc_integer03
    local boolean loc_boolean01=false
    set booleans004[GetPlayerId(loc_player01)]=true
    if Func0056(loc_player01)==true then
        set loc_integer01=integer039
        set loc_integer02=integer040
        set loc_location01=GetRectCenter(rect011)
    else
        set loc_integer01=integer041
        set loc_integer02=integer042
        set loc_location01=GetRectCenter(rect004)
    endif
    if boolean006 then
        if(GetRandomInt(1,2)==1)then
            set loc_integer01=integer039
            set loc_integer02=integer040
        else
            set loc_integer01=integer041
            set loc_integer02=integer042
        endif
    endif
    loop
        set loc_integer03=GetRandomInt(loc_integer01,loc_integer02)
        exitwhen booleans001[loc_integer03]==false
    endloop
    if boolean028==false then
        call Func0069(integers070[loc_integer03])
        set booleans001[loc_integer03]=true
    endif
    call CreateUnitAtLoc(loc_player01,integers070[loc_integer03],loc_location01,0)
    call RemoveLocation(loc_location01)
endfunction

// 3762 ~ 3781
function Func0093 takes boolean loc_boolean01,boolean loc_boolean02 returns integer
    local integer loc_integer01
    local integer loc_integer02
    if loc_boolean01 and loc_boolean02 then
        if(GetRandomInt(1,2)==1)then
            set loc_integer01=integer039
            set loc_integer02=integer040
        else
            set loc_integer01=integer041
            set loc_integer02=integer042
        endif
    elseif loc_boolean01 then
        set loc_integer01=integer039
        set loc_integer02=integer040
    else
        set loc_integer01=integer041
        set loc_integer02=integer042
    endif
    return GetRandomInt(loc_integer01,loc_integer02)
endfunction

// 3783 ~ 3785
function Func0094 takes unit loc_unit01 returns boolean
    return GetUnitTypeId(loc_unit01)=='n00I' or GetUnitTypeId(loc_unit01)=='n022' or GetUnitTypeId(loc_unit01)=='n021' or GetUnitTypeId(loc_unit01)=='n0KY' or GetUnitTypeId(loc_unit01)=='n0KZ' or GetUnitTypeId(loc_unit01)=='n0LE' or GetUnitTypeId(loc_unit01)=='n023' or GetUnitTypeId(loc_unit01)=='n024' or GetUnitTypeId(loc_unit01)=='n025' or GetUnitTypeId(loc_unit01)=='n0L0' or GetUnitTypeId(loc_unit01)=='n0L1' or GetUnitTypeId(loc_unit01)=='n0M4' or GetUnitTypeId(loc_unit01)=='n00M' or GetUnitTypeId(loc_unit01)=='n0HV' or GetUnitTypeId(loc_unit01)=='n0LS'
endfunction

// 3787 ~ 3789
function Func0095 takes unit loc_unit01 returns boolean
    return GetUnitTypeId(loc_unit01)=='e01H' or GetUnitTypeId(loc_unit01)=='e01Z' or GetUnitTypeId(loc_unit01)=='e02R' or GetUnitTypeId(loc_unit01)=='e02T' or GetUnitTypeId(loc_unit01)=='e02S' or GetUnitTypeId(loc_unit01)=='e030'
endfunction

// 3791 ~ 3793
function Func0096 takes unit loc_unit01 returns boolean
    return Func0094(loc_unit01)or Func0095(loc_unit01)
endfunction

// 3795 ~ 3797
function Func0097 takes destructable loc_destructable01 returns boolean
    return GetDestructableTypeId(loc_destructable01)=='NTtc' or GetDestructableTypeId(loc_destructable01)=='NTtw' or GetDestructableTypeId(loc_destructable01)=='ATtr' or GetDestructableTypeId(loc_destructable01)=='B002' or GetDestructableTypeId(loc_destructable01)=='B003' or GetDestructableTypeId(loc_destructable01)=='B005'
endfunction

// 3799 ~ 3801
function Func0098 takes unit loc_unit01 returns boolean
    return GetUnitAbilityLevel(loc_unit01,'A0S6')>0 or GetUnitAbilityLevel(loc_unit01,'A179')>0 or GetUnitAbilityLevel(loc_unit01,'ACmi')>0 or GetUnitAbilityLevel(loc_unit01,'A0SU')>0 or GetUnitAbilityLevel(loc_unit01,'B014')>0 or GetUnitAbilityLevel(loc_unit01,'A0H3')>0 or((LoadInteger(hashtable001,(GetHandleId(((loc_unit01)))),((4252))))==1)
endfunction

// 3803 ~ 3805
function Func0099 takes unit loc_unit01 returns boolean
    return GetUnitAbilityLevel(loc_unit01,'A04R')>0 and Func0058(GetOwningPlayer(loc_unit01))
endfunction

// 3807 ~ 3809
function Func0100 takes unit loc_unit01 returns boolean
    return GetUnitTypeId(loc_unit01)=='H00F' or GetUnitTypeId(loc_unit01)=='H00E' or GetUnitTypeId(loc_unit01)=='H00G' or GetUnitTypeId(loc_unit01)=='O017'
endfunction

// 3811 ~ 3813
function Func0101 takes real loc_real01 returns boolean
    return 2<loc_real01 and loc_real01<3000
endfunction

// 3815 ~ 3832
function Func0102 takes nothing returns nothing
    local integer loc_integer01=1
    set player003=players003[1]
    loop
        exitwhen Func0059(player003)or loc_integer01>5
        set loc_integer01=loc_integer01+1
        set player003=players003[loc_integer01]
    endloop
    if Func0059(player003)==false then
        set player003=players004[1]
        set loc_integer01=1
        loop
            exitwhen Func0059(player003)or loc_integer01>5
            set loc_integer01=loc_integer01+1
            set player003=players004[loc_integer01]
        endloop
    endif
endfunction

// 3834 ~ 3836
function Func0103 takes unit loc_unit01 returns boolean
    return IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true and IsUnitIllusion(loc_unit01)==false and GetUnitTypeId(loc_unit01)!='H00M' and GetUnitTypeId(loc_unit01)!='N0MM' and GetUnitTypeId(loc_unit01)!='H00Y' and GetUnitTypeId(loc_unit01)!='H07G' and GetUnitTypeId(loc_unit01)!='H0B8'
endfunction

// 3838 ~ 3848
function Func0104 takes integer loc_integer01 returns integer
    local integer loc_integer02=0
    loop
        exitwhen loc_integer02>integer042
        if integers077[loc_integer02]==loc_integer01 then
            return integers070[loc_integer02]
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return-1
endfunction

// 3850 ~ 3860
function Func0105 takes integer loc_integer01 returns integer
    local integer loc_integer02=1
    loop
        exitwhen loc_integer02>integer042
        if loc_integer01==integers070[loc_integer02]then
            return loc_integer02
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return 0
endfunction

// 3862 ~ 3876
function Func0106 takes unit loc_unit01 returns integer
    local integer loc_integer01=GetHeroLevel(loc_unit01)
    if loc_integer01==1 then
        return 100
    elseif loc_integer01==2 then
        return 120
    elseif loc_integer01==3 then
        return 160
    elseif loc_integer01==4 then
        return 220
    else
        return-200+100*loc_integer01
    endif
    return 0
endfunction

// 3878 ~ 3880
function Func0107 takes player loc_player01 returns boolean
    return boolean025 and(player009==loc_player01 or player010==loc_player01)
endfunction

// 3882 ~ 3884
function Func0108 takes unit loc_unit01 returns boolean
    return GetUnitAbilityLevel(loc_unit01,'Bcyc')>0 or GetUnitAbilityLevel(loc_unit01,'Bcy2')>0
endfunction

// 3886 ~ 3888
function Func0109 takes unit loc_unit01 returns boolean
    return((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4400))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4401))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4402))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4403))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4404))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4405))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4406))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4407))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4408))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4409))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4410))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4411))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4412))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4413))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4414))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4415))))==1)
endfunction

// 3890 ~ 3892
function Func0110 takes integer loc_integer01 returns boolean
    return loc_integer01=='u014' or loc_integer01=='u015' or loc_integer01=='u016' or loc_integer01=='u01D' or loc_integer01=='u01E' or loc_integer01=='u01F'
endfunction

// 3894 ~ 3896
function Func0111 takes unit loc_unit01 returns boolean
    return GetUnitAbilityLevel(loc_unit01,'BOhx')>0 or GetUnitAbilityLevel(loc_unit01,'B00H')>0
endfunction

// 3898 ~ 3909
function Func0112 takes integer loc_integer01 returns boolean
    if loc_integer01=='npn3' or loc_integer01=='npn6' or loc_integer01=='n010' or loc_integer01=='n0GZ' then
        return true
    endif
    if loc_integer01=='npn2' or loc_integer01=='npn5' or loc_integer01=='n012' or loc_integer01=='n0H1' then
        return true
    endif
    if loc_integer01=='npn1' or loc_integer01=='npn4' or loc_integer01=='n011' or loc_integer01=='n0H0' then
        return true
    endif
    return false
endfunction

// 3911 ~ 3917
function Func0113 takes unit loc_unit01 returns real
    if Func0056(GetOwningPlayer(loc_unit01))then
        return GetRectCenterX(rect011)
    else
        return GetRectCenterX(rect004)
    endif
endfunction

// 3919 ~ 3925
function Func0114 takes unit loc_unit01 returns real
    if Func0056(GetOwningPlayer(loc_unit01))then
        return GetRectCenterY(rect011)
    else
        return GetRectCenterY(rect004)
    endif
endfunction
