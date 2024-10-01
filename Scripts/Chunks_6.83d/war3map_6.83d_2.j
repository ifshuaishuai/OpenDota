
// 2567 ~ 2569
function Func0008 takes nothing returns boolean
    return true
endfunction

// 2571 ~ 2573
function Func0009 takes nothing returns nothing
    call DisplayTimedTextToPlayer(GetEnumPlayer(),0,real003,real005,string026)
endfunction

// 2575 ~ 2579
function Func0010 takes force loc_force01,real loc_real01,string loc_string01 returns nothing
    set string026=loc_string01
    set real005=loc_real01
    call ForForce(loc_force01,function Func0009)
endfunction

// 2581 ~ 2583
function Func0011 takes nothing returns boolean
    return true
endfunction

// 2585 ~ 2587
function Func0012 takes nothing returns nothing
    set hashtable001=InitHashtable()
endfunction

// 2589 ~ 2591
function Func0013 takes nothing returns string
    return string025
endfunction

// 2593 ~ 2632
function Func0014 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local string loc_string01="abcdefghijklmnopqrstuvwxyz0123456789 -=,."
    local integer array loc_integers01
    local boolean array loc_booleans01
    set loc_booleans01[0]=true
    set loc_booleans01[50]=true
    set loc_booleans01[60]=true
    set loc_booleans01[70]=true
    set loc_booleans01[80]=true
    set loc_booleans01[90]=true
    set loc_booleans01[100]=true
    set loc_integer01=0
    set loc_integer02=0
    loop
        if loc_booleans01[loc_integer02]then
            set loc_integer02=loc_integer02+1
        endif
        exitwhen loc_integer02>=256
        set loc_integers01[loc_integer02]=loc_integer01
        set loc_integer01=loc_integer01+1
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer01=0
    loop
        exitwhen loc_integer01>=12
        set loc_integer03=R2I(100*GetPlayerHandicap(Player(loc_integer01)))
        if not loc_booleans01[loc_integer03]then
            set loc_integer03=loc_integers01[loc_integer03]
            set loc_integer04=loc_integer03/6
            set loc_integer03=loc_integer03-loc_integer04*6
            call SetPlayerHandicap(Player(loc_integer01),1)
            set string025=string025+SubString(loc_string01,loc_integer04,loc_integer04+1)
        endif
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 2634 ~ 2640
function Func0015 takes multiboard loc_multiboard01,integer loc_integer01,integer loc_integer02,string loc_string01 returns nothing
    local multiboarditem loc_multiboarditem01=null
    set loc_multiboarditem01=MultiboardGetItem(loc_multiboard01,loc_integer02-1,loc_integer01-1)
    call MultiboardSetItemValue(loc_multiboarditem01,loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_multiboarditem01=null
endfunction

// 2642 ~ 2648
function Func0016 takes multiboard loc_multiboard01,integer loc_integer01,integer loc_integer02,string loc_string01 returns nothing
    local multiboarditem loc_multiboarditem01=null
    set loc_multiboarditem01=MultiboardGetItem(loc_multiboard01,loc_integer02-1,loc_integer01-1)
    call MultiboardSetItemIcon(loc_multiboarditem01,loc_string01)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_multiboarditem01=null
endfunction

// 2650 ~ 2656
function Func0017 takes multiboard loc_multiboard01,integer loc_integer01,integer loc_integer02,boolean loc_boolean01,boolean loc_boolean02 returns nothing
    local multiboarditem loc_multiboarditem01=null
    set loc_multiboarditem01=MultiboardGetItem(loc_multiboard01,loc_integer02-1,loc_integer01-1)
    call MultiboardSetItemStyle(loc_multiboarditem01,loc_boolean01,loc_boolean02)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_multiboarditem01=null
endfunction

// 2658 ~ 2664
function Func0018 takes multiboard loc_multiboard01,integer loc_integer01,integer loc_integer02,real loc_real01,real loc_real02,real loc_real03,real loc_real04 returns nothing
    local multiboarditem loc_multiboarditem01=null
    set loc_multiboarditem01=MultiboardGetItem(loc_multiboard01,loc_integer02-1,loc_integer01-1)
    call MultiboardSetItemValueColor(loc_multiboarditem01,PercentTo255(loc_real01),PercentTo255(loc_real02),PercentTo255(loc_real03),PercentTo255(100.0-loc_real04))
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_multiboarditem01=null
endfunction

// 2666 ~ 2672
function Func0019 takes multiboard loc_multiboard01,integer loc_integer01,integer loc_integer02,real loc_real01 returns nothing
    local multiboarditem loc_multiboarditem01=null
    set loc_multiboarditem01=MultiboardGetItem(loc_multiboard01,loc_integer02-1,loc_integer01-1)
    call MultiboardSetItemWidth(loc_multiboarditem01,loc_real01/100)
    call MultiboardReleaseItem(loc_multiboarditem01)
    set loc_multiboarditem01=null
endfunction

// 2674 ~ 2685
function Func0020 takes nothing returns nothing
    local integer loc_integer01=0
    if boolean036==false and boolean098==false then
        loop
            call DisplayTimedTextToPlayer(Player(loc_integer01),0,0,120,"|c00ff0303An internal index has failed|r")
            call DisplayTimedTextToPlayer(Player(loc_integer01),0,0,120,"|c00ff0303This might not be a serious glitch, but it is important for me to get it|r")
            call DisplayTimedTextToPlayer(Player(loc_integer01),0,0,120,"|c00ff0303Please send me the replay for this game to IceFrog@gmail.com|r")
            set loc_integer01=loc_integer01+1
            exitwhen loc_integer01==12
        endloop
    endif
endfunction

// 2687 ~ 2695
function Func0021 takes integer loc_integer01 returns nothing
    if loc_integer01>16000 then
        set units005[loc_integer01-16000]=null
    elseif loc_integer01>8000 then
        set units004[loc_integer01-8000]=null
    else
        set units003[loc_integer01]=null
    endif
endfunction

// 2697 ~ 2705
function Func0022 takes integer loc_integer01 returns unit
    if loc_integer01>16000 then
        return units005[loc_integer01-16000]
    elseif loc_integer01>8000 then
        return units004[loc_integer01-8000]
    else
        return units003[loc_integer01]
    endif
endfunction

// 2707 ~ 2716
function Func0023 takes integer loc_integer01 returns destructable
    if loc_integer01>16000 then
        return destructables003[loc_integer01-16000]
    elseif loc_integer01>8000 then
        return destructables002[loc_integer01-8000]
    else
        return destructables001[loc_integer01]
    endif
    return destructables001[loc_integer01]
endfunction

// 2718 ~ 2728
function Func0024 takes unit loc_unit01 returns integer
    set integer014=integer014+1
    if integer014>16000 then
        set units005[integer014-16000]=loc_unit01
    elseif integer014>8000 then
        set units004[integer014-8000]=loc_unit01
    else
        set units003[integer014]=loc_unit01
    endif
    return integer014
endfunction

// 2730 ~ 2738
function Func0025 takes integer loc_integer01 returns nothing
    if loc_integer01>16000 then
        set destructables003[loc_integer01-16000]=null
    elseif loc_integer01>8000 then
        set destructables002[loc_integer01-8000]=null
    else
        set destructables001[loc_integer01]=null
    endif
endfunction

// 2740 ~ 2750
function Func0026 takes destructable loc_destructable01 returns integer
    set integer015=integer015+1
    if integer015>24000 then
        set destructables003[integer015-16000]=loc_destructable01
    elseif integer015>8000 then
        set destructables002[integer015-8000]=loc_destructable01
    else
        set destructables001[integer015]=loc_destructable01
    endif
    return integer015
endfunction

// 2752 ~ 2754
function Func0027 takes nothing returns real
    return TimerGetElapsed(timer001)
endfunction

// 2756 ~ 2758
function Func0028 takes unit loc_unit01 returns boolean
    return GetUnitAbilityLevel(loc_unit01,'B0BI')>0 or GetUnitAbilityLevel(loc_unit01,'BNss')>0 or GetUnitAbilityLevel(loc_unit01,'B0EV')>0
endfunction

// 2760 ~ 2769
function Func0029 takes group loc_group01 returns nothing
    local integer loc_integer01=GetHandleId(loc_group01)-integer016
    if loc_integer01<0 or loc_integer01>120 then
        set boolean044=true
    else
        call GroupClear(loc_group01)
        set booleans009[loc_integer01]=false
        set integer017=loc_integer01
    endif
endfunction

// 2771 ~ 2791
function Func0030 takes nothing returns group
    local integer loc_integer01=integer017
    loop
        exitwhen loc_integer01==integer017-1
        if booleans009[loc_integer01]==false then
            set integer017=loc_integer01+1
            if integer017==120 then
                set integer017=0
            endif
            set booleans009[loc_integer01]=true
            return groups001[loc_integer01]
        endif
        set loc_integer01=loc_integer01+1
        if loc_integer01==120 then
            set loc_integer01=0
        endif
    endloop
    call Func0010(force003,5.00,"|c00ff0303CRITICAL ERROR: FOUND NO AVAILABLE GROUPS|r")
    call Func0010(force003,5.00,"|c00ff0303Send this replay to IceFrog@gmail.com|r")
    return CreateGroup()
endfunction

// 2793 ~ 2807
function Func0031 takes nothing returns boolean
    local integer loc_integer01=0
    local integer loc_integer02=0
    loop
        exitwhen loc_integer02==120
        if booleans009[loc_integer02]==true then
            set loc_integer01=loc_integer01+1
        endif
        set loc_integer02=loc_integer02+1
    endloop
    if loc_integer01>100 or boolean044 then
        call Func0010(force003,5.00,"|c00ff0303Please send me this replay ("+I2S(loc_integer01)+")")
    endif
    return false
endfunction

// 2809 ~ 2822
function Func0032 takes nothing returns nothing
    local integer loc_integer01=0
    set integer017=0
    set groups001[loc_integer01]=CreateGroup()
    set booleans009[loc_integer01]=false
    set loc_integer01=loc_integer01+1
    set integer016=GetHandleId(groups001[0])
    loop
        exitwhen loc_integer01==120
        set groups001[loc_integer01]=CreateGroup()
        set booleans009[loc_integer01]=false
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 2824 ~ 2835
function Func0033 takes nothing returns nothing
    local integer loc_integer01=0
    if boolean036==false and boolean098==false then
        loop
            call DisplayTimedTextToPlayer(Player(loc_integer01),0,0,120,"|c00ff0303An internal checksum has failed|r")
            call DisplayTimedTextToPlayer(Player(loc_integer01),0,0,120,"|c00ff0303This might not be a serious glitch, but it is important for me to get it|r")
            call DisplayTimedTextToPlayer(Player(loc_integer01),0,0,120,"|c00ff0303Please send me the replay for this game to IceFrog@gmail.com|r")
            set loc_integer01=loc_integer01+1
            exitwhen loc_integer01==12
        endloop
    endif
endfunction

// 2837 ~ 2839
function Func0034 takes nothing returns real
    return TimerGetElapsed(timer001)
endfunction

// 2841 ~ 2849
function Func0035 takes trigger loc_trigger01 returns nothing
    call DisableTrigger(loc_trigger01)
    set integer018=integer018+1
    set triggers001[integer018]=loc_trigger01
    set reals002[integer018]=(TimerGetElapsed(timer001))+60
    if integer018>8000 then
        call Func0033()
    endif
endfunction

// 2851 ~ 2859
function Func0036 takes integer loc_integer01 returns nothing
    if loc_integer01!=integer018 then
        set triggers001[loc_integer01]=triggers001[integer018]
        set reals002[loc_integer01]=reals002[integer018]
    endif
    set triggers001[integer018]=null
    set reals002[integer018]=0
    set integer018=integer018-1
endfunction

// 2861 ~ 2879
function Func0037 takes nothing returns boolean
    local real loc_real01=(TimerGetElapsed(timer001))
    local integer loc_integer01
    set loc_integer01=1
    loop
        exitwhen loc_integer01>integer018
        if reals002[loc_integer01]<loc_real01 then
            if triggers001[loc_integer01]==null or IsTriggerEnabled(triggers001[loc_integer01])==true then
                call Func0033()
            else
                call DestroyTrigger(triggers001[loc_integer01])
            endif
            call Func0036(loc_integer01)
        else
            set loc_integer01=loc_integer01+1
        endif
    endloop
    return false
endfunction

// 2881 ~ 2889
function Func0038 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(GetHandleId(((LoadTriggerHandle(hashtable001,(loc_integer01),(35)))))),(((LoadInteger(hashtable001,(loc_integer01),(33))))),(2))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 2891 ~ 2899
function Func0039 takes trigger loc_trigger01,integer loc_integer01,real loc_real01 returns nothing
    local trigger loc_trigger02=CreateTrigger()
    call TriggerAddCondition(loc_trigger02,Condition(function Func0038))
    call TriggerRegisterTimerEvent(loc_trigger02,loc_real01,false)
    call SaveInteger(hashtable001,(GetHandleId((loc_trigger01))),((loc_integer01)),(1))
    call SaveTriggerHandle(hashtable001,(GetHandleId(loc_trigger02)),(35),(loc_trigger01))
    call SaveInteger(hashtable001,(GetHandleId(loc_trigger02)),(33),(loc_integer01))
    set loc_trigger02=null
endfunction

// 2901 ~ 2906
function Func0040 takes unit loc_unit01 returns string
    if loc_unit01==null then
        return GetObjectName('n09T')
    endif
    return GetObjectName(integers071[GetUnitPointValue(loc_unit01)])
endfunction

// 2908 ~ 2913
function Func0041 takes integer loc_integer01 returns string
    if loc_integer01==0 then
        return GetObjectName('n09T')
    endif
    return GetObjectName(integers071[loc_integer01])
endfunction

// 2915 ~ 2920
function Func0042 takes unit loc_unit01 returns string
    if loc_unit01==null then
        return"UI\\Widgets\\Console\\Undead\\undead-inventory-slotfiller.blp"
    endif
    return strings006[GetUnitPointValue(loc_unit01)]
endfunction

// 2922 ~ 2930
function Func0043 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(GetHandleId(((LoadUnitHandle(hashtable001,(loc_integer01),(14)))))),(((LoadInteger(hashtable001,(loc_integer01),(33))))),(2))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 2932 ~ 2940
function Func0044 takes unit loc_unit01,integer loc_integer01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerAddCondition(loc_trigger01,Condition(function Func0043))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((loc_integer01)),(1))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(loc_unit01))
    call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(33),(loc_integer01))
    set loc_trigger01=null
endfunction

// 2942 ~ 2979
function Func0045 takes unit loc_unit01 returns integer
    local integer loc_integer01
    local integer loc_integer02=GetUnitTypeId(loc_unit01)
    set loc_integer01=1
    loop
        exitwhen loc_integer01>integer043
        if loc_integer02==integers072[loc_integer01]then
            return 2
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    loop
        exitwhen loc_integer01>integer044
        if loc_integer02==integers073[loc_integer01]then
            return 3
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    loop
        exitwhen loc_integer01>integer045
        if loc_integer02==integers074[loc_integer01]then
            return 1
        endif
        set loc_integer01=loc_integer01+1
    endloop
    if loc_integer02=='Eevm' or loc_integer02=='E02V' or loc_integer02=='E02W' or loc_integer02=='E02U' or loc_integer02=='N02B' or loc_integer02=='N017' or loc_integer02=='H08D' or loc_integer02=='H08C' or loc_integer02=='H084' or loc_integer02=='H08B' or loc_integer02=='N013' or loc_integer02=='N014' or loc_integer02=='N015' or loc_integer02=='E02O' or loc_integer02=='N0MM' then
        return 2
    endif
    if loc_integer02=='N01H' or loc_integer02=='N01T' or loc_integer02=='N01J' or loc_integer02=='H00E' or loc_integer02=='H00G' or loc_integer02=='H00F' or loc_integer02=='H07I' or loc_integer02=='E015' or loc_integer02=='H0CQ' or loc_integer02=='H0E3' or loc_integer02=='H0E4' or loc_integer02=='H0E5' or loc_integer02=='U01X' or loc_integer02=='N0MW' then
        return 3
    endif
    if loc_integer02=='H06X' or loc_integer02=='H06Y' or loc_integer02=='H06W' or loc_integer02=='H0BC' or loc_integer02=='O017' or loc_integer02=='N0MB' or loc_integer02=='N0MC' or loc_integer02=='N0MO' or loc_integer02=='N0MA' then
        return 1
    endif
    return 0
endfunction

// 2981 ~ 3017
function Func0046 takes integer loc_integer01 returns integer
    local integer loc_integer02
    set loc_integer02=1
    loop
        exitwhen loc_integer02>integer043
        if loc_integer01==integers072[loc_integer02]then
            return 2
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer02=1
    loop
        exitwhen loc_integer02>integer044
        if loc_integer01==integers073[loc_integer02]then
            return 3
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer02=1
    loop
        exitwhen loc_integer02>integer045
        if loc_integer01==integers074[loc_integer02]then
            return 1
        endif
        set loc_integer02=loc_integer02+1
    endloop
    if loc_integer01=='Eevm' or loc_integer01=='E02V' or loc_integer01=='E02W' or loc_integer01=='E02U' or loc_integer01=='N02B' or loc_integer01=='N017' or loc_integer01=='H08D' or loc_integer01=='H08C' or loc_integer01=='H084' or loc_integer01=='H08B' or loc_integer01=='N013' or loc_integer01=='N014' or loc_integer01=='N015' or loc_integer01=='E02O' or loc_integer01=='N0MM' then
        return 2
    endif
    if loc_integer01=='N01H' or loc_integer01=='N01T' or loc_integer01=='N01J' or loc_integer01=='H00E' or loc_integer01=='H00G' or loc_integer01=='H00F' or loc_integer01=='H07I' or loc_integer01=='E015' or loc_integer01=='H0CQ' or loc_integer01=='H0E3' or loc_integer01=='H0E4' or loc_integer01=='H0E5' or loc_integer01=='U01X' then
        return 3
    endif
    if loc_integer01=='H06X' or loc_integer01=='H06Y' or loc_integer01=='H06W' or loc_integer01=='H0BC' or loc_integer01=='O017' or loc_integer01=='N0MB' or loc_integer01=='N0MC' or loc_integer01=='N0MO' or loc_integer01=='N0MA' then
        return 1
    endif
    return 0
endfunction

// 3019 ~ 3031
function Func0047 takes unit loc_unit01 returns integer
    local integer loc_integer01=Func0045(loc_unit01)
    if loc_integer01==1 then
        return GetHeroInt(loc_unit01,true)
    endif
    if loc_integer01==2 then
        return GetHeroAgi(loc_unit01,true)
    endif
    if loc_integer01==3 then
        return GetHeroStr(loc_unit01,true)
    endif
    return 0
endfunction

// 3033 ~ 3035
function Func0048 takes unit loc_unit01 returns boolean
    return GetUnitState(loc_unit01,UNIT_STATE_LIFE)<1 or booleans010[GetPlayerId(GetOwningPlayer(loc_unit01))]==true
endfunction

// 3037 ~ 3042
function Func0049 takes integer loc_integer01,real loc_real01,integer loc_integer02 returns nothing
    set integer019=integer019+1
    set reals003[integer019]=loc_real01
    set integers038[integer019]=loc_integer01
    set integers039[integer019]=loc_integer02
endfunction

// 3044 ~ 3055
function Func0050 takes unit loc_unit01 returns real
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    local integer loc_integer02=1
    loop
        exitwhen loc_integer02>integer019
        if integers038[loc_integer02]==loc_integer01 or integers039[loc_integer02]==loc_integer01 then
            return reals003[loc_integer02]
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return 1.0
endfunction

// 3057 ~ 3061
function Func0051 takes integer loc_integer01,string loc_string01 returns nothing
    set integer020=integer020+1
    set strings004[integer020]=loc_string01
    set integers040[integer020]=loc_integer01
endfunction

// 3063 ~ 3074
function Func0052 takes unit loc_unit01 returns string
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    local integer loc_integer02=1
    loop
        exitwhen loc_integer02>integer020
        if integers040[loc_integer02]==loc_integer01 then
            return strings004[loc_integer02]
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return"stand"
endfunction

// 3076 ~ 3082
function Func0053 takes unit loc_unit01 returns nothing
    if GetUnitTypeId(loc_unit01)=='N01I' then
        call SetUnitAnimationByIndex(loc_unit01,6)
    else
        call SetUnitAnimation(loc_unit01,Func0052(loc_unit01))
    endif
endfunction

// 3084 ~ 3101
function Func0054 takes integer loc_integer01 returns integer
    if loc_integer01==1 then
        return 25
    elseif loc_integer01==2 then
        return 41
    elseif loc_integer01==3 then
        return 62
    elseif loc_integer01==4 then
        return 88
    elseif loc_integer01==5 then
        return 119
    elseif loc_integer01==6 then
        return 155
    elseif loc_integer01<=25 then
        return R2I(2.5*loc_integer01*loc_integer01+8.5*loc_integer01+14)
    endif
    return R2I(2.5*25*25+8.5*25+14)
endfunction

// 3103 ~ 3126
function Func0055 takes player loc_player01 returns integer
    local integer loc_integer01
    set loc_integer01=1
    if loc_player01==players003[loc_integer01]or loc_player01==players004[loc_integer01]then
        return loc_integer01
    endif
    set loc_integer01=2
    if loc_player01==players003[loc_integer01]or loc_player01==players004[loc_integer01]then
        return loc_integer01
    endif
    set loc_integer01=3
    if loc_player01==players003[loc_integer01]or loc_player01==players004[loc_integer01]then
        return loc_integer01
    endif
    set loc_integer01=4
    if loc_player01==players003[loc_integer01]or loc_player01==players004[loc_integer01]then
        return loc_integer01
    endif
    set loc_integer01=5
    if loc_player01==players003[loc_integer01]or loc_player01==players004[loc_integer01]then
        return loc_integer01
    endif
    return 0
endfunction

// 3128 ~ 3148
function Func0056 takes player loc_player01 returns boolean
    if(loc_player01==players003[0])then
        return true
    endif
    if(loc_player01==players003[1])then
        return true
    endif
    if(loc_player01==players003[2])then
        return true
    endif
    if(loc_player01==players003[3])then
        return true
    endif
    if(loc_player01==players003[4])then
        return true
    endif
    if(loc_player01==players003[5])then
        return true
    endif
    return false
endfunction

// 3150 ~ 3170
function Func0057 takes player loc_player01 returns boolean
    if(loc_player01==players004[0])then
        return true
    endif
    if(loc_player01==players004[1])then
        return true
    endif
    if(loc_player01==players004[2])then
        return true
    endif
    if(loc_player01==players004[3])then
        return true
    endif
    if(loc_player01==players004[4])then
        return true
    endif
    if(loc_player01==players004[5])then
        return true
    endif
    return false
endfunction

// 3172 ~ 3174
function Func0058 takes player loc_player01 returns boolean
    return loc_player01==players003[1]or loc_player01==players003[2]or loc_player01==players003[3]or loc_player01==players003[4]or loc_player01==players003[5]or loc_player01==players004[1]or loc_player01==players004[2]or loc_player01==players004[3]or loc_player01==players004[4]or loc_player01==players004[5]
endfunction

// 3176 ~ 3183
function Func0059 takes player loc_player01 returns boolean
    if(GetPlayerSlotState(loc_player01)==PLAYER_SLOT_STATE_PLAYING)then
        if(GetPlayerController(loc_player01)==MAP_CONTROL_USER)then
            return true
        endif
    endif
    return false
endfunction

// 3185 ~ 3192
function Func0060 takes player loc_player01 returns boolean
    if(GetPlayerSlotState(loc_player01)==PLAYER_SLOT_STATE_PLAYING or GetPlayerSlotState(loc_player01)==PLAYER_SLOT_STATE_LEFT)then
        if(GetPlayerController(loc_player01)==MAP_CONTROL_USER)then
            return true
        endif
    endif
    return false
endfunction

// 3194 ~ 3201
function Func0061 takes player loc_player01 returns boolean
    if GetPlayerSlotState(loc_player01)==PLAYER_SLOT_STATE_LEFT then
        if(GetPlayerController(loc_player01)==MAP_CONTROL_USER)then
            return true
        endif
    endif
    return false
endfunction

// 3203 ~ 3207
function Func0062 takes nothing returns nothing
    if(Func0059(GetEnumPlayer())==true)then
        set bj_forceCountPlayers=bj_forceCountPlayers+1
    endif
endfunction

// 3209 ~ 3213
function Func0063 takes force loc_force01 returns integer
    set bj_forceCountPlayers=0
    call ForForce(loc_force01,function Func0062)
    return bj_forceCountPlayers
endfunction

// 3215 ~ 3219
function Func0064 takes nothing returns nothing
    if GetPlayerSlotState(GetEnumPlayer())==PLAYER_SLOT_STATE_LEFT or GetPlayerSlotState(GetEnumPlayer())==PLAYER_SLOT_STATE_PLAYING then
        set bj_forceCountPlayers=bj_forceCountPlayers+1
    endif
endfunction

// 3221 ~ 3227
function Func0065 takes nothing returns nothing
    if GetPlayerSlotState(GetEnumPlayer())==PLAYER_SLOT_STATE_PLAYING then
        if GetEnumPlayer()!=Player(13)and GetEnumPlayer()!=Player(14)then
            set bj_forceCountPlayers=bj_forceCountPlayers+1
        endif
    endif
endfunction

// 3229 ~ 3233
function Func0066 takes force loc_force01 returns integer
    set bj_forceCountPlayers=0
    call ForForce(loc_force01,function Func0065)
    return bj_forceCountPlayers
endfunction

// 3235 ~ 3240
function Func0067 takes integer loc_integer01,player loc_player01 returns nothing
    if boolean046 then
        call SetPlayerTechMaxAllowed(loc_player01,loc_integer01,0)
        set booleans001[GetUnitPointValueByType(loc_integer01)]=true
    endif
endfunction

// 3242 ~ 3253
function Func0068 takes integer loc_integer01 returns nothing
    call Func0067(loc_integer01,players003[1])
    call Func0067(loc_integer01,players003[2])
    call Func0067(loc_integer01,players003[3])
    call Func0067(loc_integer01,players003[4])
    call Func0067(loc_integer01,players003[5])
    call Func0067(loc_integer01,players004[1])
    call Func0067(loc_integer01,players004[2])
    call Func0067(loc_integer01,players004[3])
    call Func0067(loc_integer01,players004[4])
    call Func0067(loc_integer01,players004[5])
endfunction

// 3255 ~ 3268
function Func0069 takes integer loc_integer01 returns nothing
    if boolean046 then
        call SetPlayerTechMaxAllowed(players003[1],loc_integer01,0)
        call SetPlayerTechMaxAllowed(players003[2],loc_integer01,0)
        call SetPlayerTechMaxAllowed(players003[3],loc_integer01,0)
        call SetPlayerTechMaxAllowed(players003[4],loc_integer01,0)
        call SetPlayerTechMaxAllowed(players003[5],loc_integer01,0)
        call SetPlayerTechMaxAllowed(players004[1],loc_integer01,0)
        call SetPlayerTechMaxAllowed(players004[2],loc_integer01,0)
        call SetPlayerTechMaxAllowed(players004[3],loc_integer01,0)
        call SetPlayerTechMaxAllowed(players004[4],loc_integer01,0)
        call SetPlayerTechMaxAllowed(players004[5],loc_integer01,0)
    endif
endfunction

// 3270 ~ 3314
function Func0070 takes integer loc_integer01 returns nothing
    local player loc_player01
    if boolean046 then
        set loc_player01=players003[1]
        if units001[GetPlayerId(loc_player01)]==null then
            call SetPlayerTechMaxAllowed(loc_player01,loc_integer01,1)
        endif
        set loc_player01=players003[2]
        if units001[GetPlayerId(loc_player01)]==null then
            call SetPlayerTechMaxAllowed(loc_player01,loc_integer01,1)
        endif
        set loc_player01=players003[3]
        if units001[GetPlayerId(loc_player01)]==null then
            call SetPlayerTechMaxAllowed(loc_player01,loc_integer01,1)
        endif
        set loc_player01=players003[4]
        if units001[GetPlayerId(loc_player01)]==null then
            call SetPlayerTechMaxAllowed(loc_player01,loc_integer01,1)
        endif
        set loc_player01=players003[5]
        if units001[GetPlayerId(loc_player01)]==null then
            call SetPlayerTechMaxAllowed(loc_player01,loc_integer01,1)
        endif
        set loc_player01=players004[1]
        if units001[GetPlayerId(loc_player01)]==null then
            call SetPlayerTechMaxAllowed(loc_player01,loc_integer01,1)
        endif
        set loc_player01=players004[2]
        if units001[GetPlayerId(loc_player01)]==null then
            call SetPlayerTechMaxAllowed(loc_player01,loc_integer01,1)
        endif
        set loc_player01=players004[3]
        if units001[GetPlayerId(loc_player01)]==null then
            call SetPlayerTechMaxAllowed(loc_player01,loc_integer01,1)
        endif
        set loc_player01=players004[4]
        if units001[GetPlayerId(loc_player01)]==null then
            call SetPlayerTechMaxAllowed(loc_player01,loc_integer01,1)
        endif
        set loc_player01=players004[5]
        if units001[GetPlayerId(loc_player01)]==null then
            call SetPlayerTechMaxAllowed(loc_player01,loc_integer01,1)
        endif
    endif
endfunction

// 3316 ~ 3333
function Func0071 takes player loc_player01 returns nothing
    local integer loc_integer01=integer039
    local integer loc_integer02=integer040
    if boolean046 then
        loop
            exitwhen loc_integer01>loc_integer02
            call SetPlayerTechMaxAllowed(loc_player01,integers070[loc_integer01],0)
            set loc_integer01=loc_integer01+1
        endloop
        set loc_integer01=integer041
        set loc_integer02=integer042
        loop
            exitwhen loc_integer01>loc_integer02
            call SetPlayerTechMaxAllowed(loc_player01,integers070[loc_integer01],0)
            set loc_integer01=loc_integer01+1
        endloop
    endif
endfunction

// 3335 ~ 3346
function Func0072 takes nothing returns nothing
    call Func0071(players003[1])
    call Func0071(players003[2])
    call Func0071(players003[3])
    call Func0071(players003[4])
    call Func0071(players003[5])
    call Func0071(players004[1])
    call Func0071(players004[2])
    call Func0071(players004[3])
    call Func0071(players004[4])
    call Func0071(players004[5])
endfunction

// 3348 ~ 3372
function Func0073 takes nothing returns nothing
    local integer loc_integer01
    if boolean046 then
        set loc_integer01=integer041
        loop
            exitwhen loc_integer01>integer042
            call SetPlayerTechMaxAllowed(players003[1],integers070[loc_integer01],0)
            call SetPlayerTechMaxAllowed(players003[2],integers070[loc_integer01],0)
            call SetPlayerTechMaxAllowed(players003[3],integers070[loc_integer01],0)
            call SetPlayerTechMaxAllowed(players003[4],integers070[loc_integer01],0)
            call SetPlayerTechMaxAllowed(players003[5],integers070[loc_integer01],0)
            set loc_integer01=loc_integer01+1
        endloop
        set loc_integer01=integer039
        loop
            exitwhen loc_integer01>integer040
            call SetPlayerTechMaxAllowed(players004[1],integers070[loc_integer01],0)
            call SetPlayerTechMaxAllowed(players004[2],integers070[loc_integer01],0)
            call SetPlayerTechMaxAllowed(players004[3],integers070[loc_integer01],0)
            call SetPlayerTechMaxAllowed(players004[4],integers070[loc_integer01],0)
            call SetPlayerTechMaxAllowed(players004[5],integers070[loc_integer01],0)
            set loc_integer01=loc_integer01+1
        endloop
    endif
endfunction

// 3374 ~ 3376
function Func0074 takes nothing returns boolean
    return IsUnitAlly(GetFilterUnit(),GetOwningPlayer(unit002))and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>0 and(GetOwningPlayer(GetFilterUnit())==players003[0])or(GetOwningPlayer(GetFilterUnit())==players004[0])
endfunction

// 3378 ~ 3400
function Func0075 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03=0
    set integer009=integer039
    set loc_integer01=integer039
    set loc_integer02=integer040
    loop
        exitwhen loc_integer01>loc_integer02
        set loc_integer03=loc_integer03+1
        set integers036[loc_integer03]=loc_integer01
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=integer041
    set loc_integer02=integer042
    loop
        exitwhen loc_integer01>loc_integer02
        set loc_integer03=loc_integer03+1
        set integers036[loc_integer03]=loc_integer01
        set loc_integer01=loc_integer01+1
    endloop
    set integer010=loc_integer03
endfunction

// 3402 ~ 3417
function Func0076 takes nothing returns integer
    local integer loc_integer01=GetRandomInt(integer009,integer010)
    local integer loc_integer02=integers036[loc_integer01]
    set loc_integer02=integers036[loc_integer01]
    if(integer009==integer010)then
        set integers036[loc_integer01]=0
        return loc_integer02
    endif
    if(loc_integer01==integer010)then
        set integer010=integer010-1
        return loc_integer02
    endif
    set integers036[loc_integer01]=integers036[integer010]
    set integer010=integer010-1
    return loc_integer02
endfunction

// 3419 ~ 3421
function Func0077 takes unit loc_unit01 returns boolean
    return GetUnitAbilityLevel(loc_unit01,'B01T')>0 or GetUnitAbilityLevel(loc_unit01,'BNsi')>0 or GetUnitAbilityLevel(loc_unit01,'B01X')>0 or GetUnitAbilityLevel(loc_unit01,'BNdo')>0 or GetUnitAbilityLevel(loc_unit01,'B02M')>0 or GetUnitAbilityLevel(loc_unit01,'Bhea')>0 or GetUnitAbilityLevel(loc_unit01,'B07V')>0 or GetUnitAbilityLevel(loc_unit01,'B0BY')>0 or GetUnitAbilityLevel(loc_unit01,'B08O')>0 or GetUnitAbilityLevel(loc_unit01,'B07U')>0 or GetUnitAbilityLevel(loc_unit01,'B0DL')>0 or GetUnitAbilityLevel(loc_unit01,'B08V')>0 or GetUnitAbilityLevel(loc_unit01,'B031')>0 or GetUnitAbilityLevel(loc_unit01,'B0FT')>0 or GetUnitAbilityLevel(loc_unit01,'B0FG')>0
endfunction

// 3423 ~ 3439
function Func0078 takes string loc_string01 returns integer
    if loc_string01=="a"then
        return 10
    elseif loc_string01=="b"then
        return 11
    elseif loc_string01=="c"then
        return 12
    elseif loc_string01=="d"then
        return 13
    elseif loc_string01=="e"then
        return 14
    elseif loc_string01=="f"then
        return 15
    else
        return S2I(loc_string01)
    endif
endfunction

// 3441 ~ 3443
function Func0079 takes string loc_string01 returns integer
    return Func0078(SubString(loc_string01,0,1))*16+Func0078(SubString(loc_string01,1,2))
endfunction

// 3445 ~ 3455
function Func0080 takes integer loc_integer01 returns boolean
    local integer loc_integer02=1
    loop
        exitwhen loc_integer02>integer013
        if loc_integer01==integers037[loc_integer02]then
            return false
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return true
endfunction

// 3457 ~ 3475
function Func0081 takes integer loc_integer01 returns boolean
    local integer loc_integer02=1
    loop
        exitwhen loc_integer02>integer013
        if loc_integer01==integers037[loc_integer02]then
            return false
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_integer02=1
    loop
        exitwhen loc_integer02>integer049
        if loc_integer01==integers079[loc_integer02]then
            return false
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return true
endfunction

// 3477 ~ 3489
function Func0082 takes unit loc_unit01 returns integer
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    if loc_integer01=='e00R' or loc_integer01=='u00M' then
        return 1
    elseif loc_integer01=='e011' or loc_integer01=='u00D' then
        return 2
    elseif loc_integer01=='e00S' or loc_integer01=='u00N' then
        return 3
    elseif loc_integer01=='e019' or loc_integer01=='u00T' then
        return 4
    endif
    return 0
endfunction
