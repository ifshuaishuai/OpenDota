
// 11441 ~ 12016
function Func0492 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetUnitPointValue(loc_unit01)
    local unit loc_unit02
    if(loc_integer01==34)then
        call ExecuteFunc("Func1699")
        call ExecuteFunc("Func1712")
        call ExecuteFunc("Func1707")
    elseif(loc_integer01==37)then
        call ExecuteFunc("Func1724")
        call ExecuteFunc("Func1718")
        call ExecuteFunc("Func1734")
        call ExecuteFunc("Func1728")
    elseif(loc_integer01==38)then
        call ExecuteFunc("Func2100")
        call ExecuteFunc("Func2085")
        call ExecuteFunc("Func2091")
        call ExecuteFunc("Func2075")
    elseif(loc_integer01==32)then
        call ExecuteFunc("Func1740")
        call ExecuteFunc("Func1749")
        call ExecuteFunc("Func1761")
        call ExecuteFunc("Func1755")
    elseif(loc_integer01==52)then
        call ExecuteFunc("Func1771")
        call ExecuteFunc("Func1786")
        call ExecuteFunc("Func1793")
        call ExecuteFunc("Func1778")
    elseif(loc_integer01==31)then
        call ExecuteFunc("Func1800")
        call ExecuteFunc("Func1796")
        call ExecuteFunc("Func1807")
    elseif(loc_integer01==24)then
        call ExecuteFunc("Func1825")
        call ExecuteFunc("Func1829")
        call ExecuteFunc("Func1821")
        call ExecuteFunc("Func1814")
    elseif(loc_integer01==5)then
        call ExecuteFunc("Func1882")
        call ExecuteFunc("Func1878")
        call ExecuteFunc("Func1886")
        call ExecuteFunc("Func1875")
    elseif(loc_integer01==8)then
        call ExecuteFunc("Func1959")
        call ExecuteFunc("Func1945")
        call ExecuteFunc("Func1941")
        call ExecuteFunc("Func1953")
        call ExecuteFunc("Func1949")
    elseif(loc_integer01==3)then
        call ExecuteFunc("Func1981")
        call ExecuteFunc("Func1968")
        call ExecuteFunc("Func1976")
        call ExecuteFunc("Func1962")
    elseif(loc_integer01==95)then
        call ExecuteFunc("Func2008")
        call ExecuteFunc("Func1992")
        call ExecuteFunc("Func1987")
        call ExecuteFunc("Func1998")
    elseif(loc_integer01==20)then
        call ExecuteFunc("Func2037")
        call ExecuteFunc("Func2040")
        call ExecuteFunc("Func2045")
        call ExecuteFunc("Func2049")
    elseif(loc_integer01==12)then
        call ExecuteFunc("Func2118")
        call ExecuteFunc("Func2110")
        call ExecuteFunc("Func2115")
    elseif(loc_integer01==16)then
        call ExecuteFunc("Func2130")
        call ExecuteFunc("Func2148")
        call ExecuteFunc("Func2140")
        call ExecuteFunc("Func2124")
        call ExecuteFunc("Func2155")
        call ExecuteFunc("Func2144")
        call ExecuteFunc("Func2160")
    elseif(loc_integer01==25)then
        call ExecuteFunc("Func2177")
        call ExecuteFunc("Func2172")
    elseif(loc_integer01==4)then
        call ExecuteFunc("Func2240")
        call ExecuteFunc("Func2219")
        call ExecuteFunc("Func2236")
        call ExecuteFunc("Func2243")
        call ExecuteFunc("Func2229")
        call SetUnitPathing(loc_unit01,false)
        call DisableTrigger(trigger057)
        set boolean093=true
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),GetUnitTypeId(loc_unit01),GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit02)),(85),(true))
        set units001[GetPlayerId(GetOwningPlayer(loc_unit01))]=loc_unit02
        call SetUnitPathing(loc_unit02,false)
        call SetUnitPosition(loc_unit02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        if boolean003 then
            call SetHeroXP(loc_unit02,GetHeroXP(loc_unit01),false)
            call UnitAddItem(loc_unit02,UnitItemInSlot(loc_unit01,0))
            call UnitAddItem(loc_unit02,UnitItemInSlot(loc_unit01,1))
            call UnitAddItem(loc_unit02,UnitItemInSlot(loc_unit01,2))
            call UnitAddItem(loc_unit02,UnitItemInSlot(loc_unit01,3))
            call UnitAddItem(loc_unit02,UnitItemInSlot(loc_unit01,4))
            call UnitAddItem(loc_unit02,UnitItemInSlot(loc_unit01,5))
        endif
        call Func0136(loc_unit01)
        call EnableTrigger(trigger057)
        call SetUnitPathing(loc_unit02,true)
        call ClearSelectionForPlayer(GetOwningPlayer(loc_unit02))
        call SelectUnitAddForPlayer(loc_unit02,GetOwningPlayer(loc_unit02))
    elseif(loc_integer01==7)then
        call ExecuteFunc("Func2250")
        call ExecuteFunc("Func2257")
        call ExecuteFunc("Func2264")
    elseif(loc_integer01==18)then
        call ExecuteFunc("Func2276")
        call ExecuteFunc("Func2280")
    elseif(loc_integer01==36)then
        call ExecuteFunc("Func2285")
    elseif(loc_integer01==21)then
        call ExecuteFunc("Func2300")
        call ExecuteFunc("Func2296")
        call ExecuteFunc("Func2307")
        call ExecuteFunc("Func2316")
    elseif(loc_integer01==14)then
        call ExecuteFunc("Func2321")
        call ExecuteFunc("Func2329")
        call ExecuteFunc("Func2347")
        call ExecuteFunc("Func2342")
        call ExecuteFunc("Func2354")
        call ExecuteFunc("Func2334")
    elseif(loc_integer01==13)then
        call ExecuteFunc("Func2379")
        call ExecuteFunc("Func2373")
        call ExecuteFunc("Func2383")
        call ExecuteFunc("Func2367")
    elseif(loc_integer01==26)then
        call ExecuteFunc("Func2395")
        call ExecuteFunc("Func2399")
        call ExecuteFunc("Func2405")
        call ExecuteFunc("Func2386")
    elseif(loc_integer01==9)then
        call ExecuteFunc("Func2413")
        call ExecuteFunc("Func2424")
        call ExecuteFunc("Func2408")
        call ExecuteFunc("Func2421")
    elseif(loc_integer01==10)then
        call ExecuteFunc("Func2443")
        call ExecuteFunc("Func2475")
        call ExecuteFunc("Func2462")
        call ExecuteFunc("Func2465")
        call ExecuteFunc("Func2454")
        call ExecuteFunc("Func2457")
        call ExecuteFunc("Func2481")
        call ExecuteFunc("Func2468")
    elseif(loc_integer01==23)then
        call ExecuteFunc("Func2523")
        call ExecuteFunc("Func2536")
        call ExecuteFunc("Func2546")
        call ExecuteFunc("Func2520")
        call ExecuteFunc("Func2550")
    elseif(loc_integer01==19)then
        call ExecuteFunc("Func2565")
        call ExecuteFunc("Func2557")
        call ExecuteFunc("Func2560")
        call ExecuteFunc("Func2554")
    elseif(loc_integer01==22)then
        call ExecuteFunc("Func2587")
        call ExecuteFunc("Func2596")
        call ExecuteFunc("Func2574")
        call ExecuteFunc("Func2591")
    elseif(loc_integer01==17)then
        call ExecuteFunc("Func2627")
        call ExecuteFunc("Func2632")
        call ExecuteFunc("Func2643")
    elseif(loc_integer01==1)then
        call ExecuteFunc("Func2658")
        call ExecuteFunc("Func2649")
        call ExecuteFunc("Func2655")
        call ExecuteFunc("Func2663")
    elseif(loc_integer01==2)then
        call ExecuteFunc("Func2739")
        call ExecuteFunc("Func2734")
        call ExecuteFunc("Func2743")
        call ExecuteFunc("Func2747")
    elseif(loc_integer01==27)then
        call ExecuteFunc("Func2604")
        call ExecuteFunc("Func2607")
        call ExecuteFunc("Func2610")
        call ExecuteFunc("Func2623")
        call ExecuteFunc("Func2600")
    elseif(loc_integer01==82)then
        call ExecuteFunc("Func2778")
        call ExecuteFunc("Func2790")
        call ExecuteFunc("Func2786")
        call ExecuteFunc("Func2794")
    elseif(loc_integer01==75)then
        call ExecuteFunc("Func2803")
        call ExecuteFunc("Func2807")
        call ExecuteFunc("Func2811")
    elseif(loc_integer01==83)then
        call ExecuteFunc("Func2860")
        call ExecuteFunc("Func2855")
        call ExecuteFunc("Func2865")
        call ExecuteFunc("Func2843")
    elseif(loc_integer01==112)then
        call ExecuteFunc("Func2877")
        call ExecuteFunc("Func2881")
        call ExecuteFunc("Func2885")
    elseif(loc_integer01==108)then
        call ExecuteFunc("Func2897")
        call ExecuteFunc("Func2901")
        call ExecuteFunc("Func2889")
    elseif(loc_integer01==69)then
        call ExecuteFunc("Func2994")
        call ExecuteFunc("Func3018")
        call ExecuteFunc("Func2998")
        call ExecuteFunc("Func3011")
        call ExecuteFunc("Func3028")
    elseif(loc_integer01==100)then
        call ExecuteFunc("Func3186")
        call ExecuteFunc("Func3192")
        call ExecuteFunc("Func3198")
        call ExecuteFunc("Func3203")
    elseif(loc_integer01==102)then
        call ExecuteFunc("Func3209")
        call ExecuteFunc("Func3213")
        call ExecuteFunc("Func3220")
    elseif(loc_integer01==64)then
        call ExecuteFunc("Func3244")
        call ExecuteFunc("Func3254")
        call ExecuteFunc("Func3258")
        call ExecuteFunc("Func3263")
    elseif(loc_integer01==106)then
        call ExecuteFunc("Func3267")
        call ExecuteFunc("Func3271")
        call ExecuteFunc("Func3278")
    elseif(loc_integer01==61)then
        call ExecuteFunc("Func3297")
        call ExecuteFunc("Func3284")
        call ExecuteFunc("Func3295")
    elseif(loc_integer01==76)then
        call ExecuteFunc("Func3333")
        call ExecuteFunc("Func3339")
        call ExecuteFunc("Func3343")
        call ExecuteFunc("Func3329")
    elseif(loc_integer01==80)then
        call ExecuteFunc("Func3381")
        call ExecuteFunc("Func3362")
        call ExecuteFunc("Func3368")
        call ExecuteFunc("Func3375")
        call ExecuteFunc("Func3364")
    elseif(loc_integer01==62)then
        call ExecuteFunc("Func3397")
        call ExecuteFunc("Func3384")
        call ExecuteFunc("Func3388")
        call ExecuteFunc("Func3392")
    elseif(loc_integer01==60)then
        call ExecuteFunc("Func3410")
        call ExecuteFunc("Func3401")
        call ExecuteFunc("Func3405")
    elseif(loc_integer01==77)then
        call ExecuteFunc("Func3466")
        call ExecuteFunc("Func3476")
        call ExecuteFunc("Func3483")
        call ExecuteFunc("Func3487")
    elseif(loc_integer01==73)then
        call ExecuteFunc("Func3493")
        call ExecuteFunc("Func3498")
        call ExecuteFunc("Func3502")
    elseif(loc_integer01==81)then
        call ExecuteFunc("Func3541")
        call ExecuteFunc("Func3547")
        call ExecuteFunc("Func3554")
    elseif(loc_integer01==66)then
        call ExecuteFunc("Func3558")
        call ExecuteFunc("Func3566")
    elseif(loc_integer01==78)then
        call ExecuteFunc("Func3631")
        call ExecuteFunc("Func3615")
        call ExecuteFunc("Func3621")
        call ExecuteFunc("Func3641")
    elseif(loc_integer01==99)then
        call ExecuteFunc("Func3650")
        call ExecuteFunc("Func3655")
        call ExecuteFunc("Func3644")
        call ExecuteFunc("Func3668")
        call ExecuteFunc("Func3665")
        call ExecuteFunc("Func3660")
    elseif(loc_integer01==74)then
        call ExecuteFunc("Func3675")
        call ExecuteFunc("Func3671")
        call ExecuteFunc("Func3680")
        call ExecuteFunc("Func3688")
    elseif(loc_integer01==105)then
        call ExecuteFunc("Func3725")
        call ExecuteFunc("Func3733")
        call ExecuteFunc("Func3736")
    elseif(loc_integer01==70)then
        call ExecuteFunc("Func3740")
        call ExecuteFunc("Func3746")
        call ExecuteFunc("Func3749")
    elseif(loc_integer01==107)then
        call ExecuteFunc("Func3768")
        call ExecuteFunc("Func3752")
        call ExecuteFunc("Func3782")
        call ExecuteFunc("Func3761")
    elseif(loc_integer01==79)then
        call ExecuteFunc("Func3815")
        call ExecuteFunc("Func3820")
        call ExecuteFunc("Func3824")
        call ExecuteFunc("Func3837")
    elseif(loc_integer01==68)then
        call ExecuteFunc("Func2904")
        call ExecuteFunc("Func2908")
    elseif(loc_integer01==84)then
        call ExecuteFunc("Func2751")
        call ExecuteFunc("Func2770")
        call ExecuteFunc("Func2759")
        call ExecuteFunc("Func2767")
    elseif(loc_integer01==85)then
        call ExecuteFunc("Func3582")
        call ExecuteFunc("Func3586")
        call ExecuteFunc("Func3591")
        call ExecuteFunc("Func3601")
        call ExecuteFunc("Func3608")
    elseif(loc_integer01==86)then
        call ExecuteFunc("Func3843")
        call ExecuteFunc("Func3857")
        call ExecuteFunc("Func3852")
        call ExecuteFunc("Func3862")
    elseif(loc_integer01==87)then
        call ExecuteFunc("Func2914")
        call ExecuteFunc("Func2920")
        call ExecuteFunc("Func2927")
        call ExecuteFunc("Func2932")
    elseif(loc_integer01==33)then
        call ExecuteFunc("Func1925")
        call ExecuteFunc("Func1922")
        call ExecuteFunc("Func1937")
    elseif(loc_integer01==39)then
        call ExecuteFunc("Func1685")
        call ExecuteFunc("Func1680")
        call ExecuteFunc("Func1691")
    elseif(loc_integer01==88)then
        call ExecuteFunc("Func3789")
        call ExecuteFunc("Func3798")
        call ExecuteFunc("Func3803")
        call ExecuteFunc("Func3811")
    elseif(loc_integer01==40)then
        call ExecuteFunc("Func2193")
        call ExecuteFunc("Func2186")
        call ExecuteFunc("Func2213")
        call ExecuteFunc("Func2206")
    elseif loc_integer01==89 then
        call ExecuteFunc("Func3150")
        call ExecuteFunc("Func3157")
    elseif loc_integer01==90 then
        call ExecuteFunc("Func3696")
        call ExecuteFunc("Func3702")
        call ExecuteFunc("Func3709")
        call ExecuteFunc("Func3718")
    elseif loc_integer01==71 then
        call ExecuteFunc("Func3508")
        call ExecuteFunc("Func3514")
        call ExecuteFunc("Func3524")
        call ExecuteFunc("Func3537")
    elseif loc_integer01==93 then
        call ExecuteFunc("Func2945")
        call ExecuteFunc("Func2937")
        call ExecuteFunc("Func2949")
        call ExecuteFunc("Func2960")
    elseif loc_integer01==42 then
        call ExecuteFunc("Func2058")
        call ExecuteFunc("Func2066")
        call ExecuteFunc("Func2071")
        call ExecuteFunc("Func2054")
    elseif loc_integer01==91 then
        call ExecuteFunc("Func3426")
        call ExecuteFunc("Func3432")
        call ExecuteFunc("Func3415")
        call ExecuteFunc("Func3437")
        call ExecuteFunc("Func3441")
        call ExecuteFunc("Func3452")
        call ExecuteFunc("Func3457")
        call ExecuteFunc("Func3463")
    elseif loc_integer01==92 then
        call ExecuteFunc("Func2965")
        call ExecuteFunc("Func2980")
        call ExecuteFunc("Func2972")
        call ExecuteFunc("Func2989")
    elseif loc_integer01==41 then
        call ExecuteFunc("Func1896")
        call ExecuteFunc("Func1910")
        call ExecuteFunc("Func1906")
        call ExecuteFunc("Func1916")
        call ExecuteFunc("Func4188")
    elseif loc_integer01==43 then
        call ExecuteFunc("Func2704")
        call ExecuteFunc("Func2696")
        call ExecuteFunc("Func2688")
        call ExecuteFunc("Func2679")
    elseif loc_integer01==44 then
        call ExecuteFunc("Func2032")
        call ExecuteFunc("Func2012")
        call ExecuteFunc("Func2025")
        call ExecuteFunc("Func2019")
    elseif loc_integer01==72 then
        call ExecuteFunc("Func3323")
        call ExecuteFunc("Func3315")
        call ExecuteFunc("Func3311")
        call ExecuteFunc("Func3302")
    elseif loc_integer01==94 then
        call ExecuteFunc("Func3111")
    elseif loc_integer01==6 then
        call ExecuteFunc("Func2439")
        call ExecuteFunc("Func2428")
        call ExecuteFunc("Func2433")
    elseif loc_integer01==104 then
        call ExecuteFunc("Func3223")
        call ExecuteFunc("Func3225")
    elseif loc_integer01==65 then
        call ExecuteFunc("Func3346")
        call ExecuteFunc("Func3349")
        call ExecuteFunc("Func3353")
        call ExecuteFunc("Func3357")
    elseif loc_integer01==111 then
        call ExecuteFunc("Func3232")
        call ExecuteFunc("Func3238")
        call ExecuteFunc("Func3241")
    elseif loc_integer01==63 then
        call ExecuteFunc("Func3117")
        call ExecuteFunc("Func3127")
        call ExecuteFunc("Func3122")
        call ExecuteFunc("Func3139")
    elseif loc_integer01==45 then
        call ExecuteFunc("Func1868")
        call ExecuteFunc("Func1856")
        call ExecuteFunc("Func1835")
        call ExecuteFunc("Func1863")
    elseif loc_integer01==46 then
        call ExecuteFunc("Func1649")
        call ExecuteFunc("Func1656")
        call ExecuteFunc("Func1661")
        call ExecuteFunc("Func1670")
    elseif loc_integer01==47 then
        call ExecuteFunc("Func2717")
        call ExecuteFunc("Func2708")
        call ExecuteFunc("Func2725")
        call ExecuteFunc("Func2729")
    elseif loc_integer01==11 then
        call ExecuteFunc("Func2166")
        call ExecuteFunc("Func2170")
    elseif loc_integer01==96 then
        call ExecuteFunc("Func2817")
        call ExecuteFunc("Func2823")
        call ExecuteFunc("Func2835")
        call ExecuteFunc("Func2839")
    elseif loc_integer01==15 then
        call ExecuteFunc("Func2504")
        call ExecuteFunc("Func2515")
        call ExecuteFunc("Func2497")
        call ExecuteFunc("Func2491")
    elseif loc_integer01==97 then
        call ExecuteFunc("Func3877")
        call ExecuteFunc("Func3881")
        call ExecuteFunc("Func3889")
        call ExecuteFunc("Func3870")
        call ExecuteFunc("Func3896")
    elseif loc_integer01==98 then
        call ExecuteFunc("Func3917")
        call ExecuteFunc("Func3921")
        call ExecuteFunc("Func3906")
        call ExecuteFunc("Func3902")
        call ExecuteFunc("Func3927")
    elseif loc_integer01==67 then
        call ExecuteFunc("Func3932")
        call ExecuteFunc("Func3937")
    elseif loc_integer01==28 then
        call ExecuteFunc("Func3941")
        call ExecuteFunc("Func3944")
    elseif loc_integer01==51 then
        call ExecuteFunc("Func3951")
        call ExecuteFunc("Func3999")
        call ExecuteFunc("Func3970")
        call ExecuteFunc("Func3994")
        call ExecuteFunc("Func3985")
        call ExecuteFunc("Func3978")
        call ExecuteFunc("Func3958")
        call ExecuteFunc("Func3965")
    elseif loc_integer01==100 then
    elseif loc_integer01==101 then
        call ExecuteFunc("Func4006")
        call ExecuteFunc("Func4011")
        call ExecuteFunc("Func4015")
        call ExecuteFunc("Func4023")
    elseif loc_integer01==48 then
        call ExecuteFunc("Func4027")
        call ExecuteFunc("Func4031")
        call ExecuteFunc("Func4039")
        call ExecuteFunc("Func4047")
    elseif loc_integer01==49 then
        call ExecuteFunc("Func4053")
        call ExecuteFunc("Func4070")
        call ExecuteFunc("Func4060")
        call ExecuteFunc("Func4065")
    elseif loc_integer01==29 then
        call ExecuteFunc("Func4078")
        call ExecuteFunc("Func4086")
        call ExecuteFunc("Func4094")
        call ExecuteFunc("Func4102")
    elseif loc_integer01==50 then
        call ExecuteFunc("Func4108")
        call ExecuteFunc("Func4115")
        call ExecuteFunc("Func4128")
        call ExecuteFunc("Func4132")
    elseif loc_integer01==30 then
        call ExecuteFunc("Func4138")
        call ExecuteFunc("Func4144")
    elseif loc_integer01==53 then
        call ExecuteFunc("Func4151")
        call ExecuteFunc("Func4157")
        call ExecuteFunc("Func4175")
        call ExecuteFunc("Func4181")
    elseif loc_integer01==103 then
        call ExecuteFunc("Func4185")
    elseif loc_integer01==54 then
        call ExecuteFunc("Func4215")
        call ExecuteFunc("Func4199")
        call ExecuteFunc("Func4210")
        call ExecuteFunc("Func4239")
        call ExecuteFunc("Func1890")
    elseif loc_integer01==55 then
        call ExecuteFunc("Func4305")
        call ExecuteFunc("Func4290")
        call ExecuteFunc("Func4311")
        call ExecuteFunc("Func4297")
    elseif loc_integer01==56 then
        call ExecuteFunc("Func4337")
        call ExecuteFunc("Func4316")
        call ExecuteFunc("Func4328")
        call ExecuteFunc("Func4332")
    elseif loc_integer01==57 then
        call ExecuteFunc("Func4342")
        call ExecuteFunc("Func4350")
        call ExecuteFunc("Func4356")
        call ExecuteFunc("Func4364")
        call ExecuteFunc("Func4372")
    elseif loc_integer01==109 then
        call ExecuteFunc("Func4399")
        call ExecuteFunc("Func4406")
        call ExecuteFunc("Func4395")
        call ExecuteFunc("Func4388")
        call ExecuteFunc("Func4414")
        call ExecuteFunc("Func4425")
    elseif loc_integer01==110 then
        call ExecuteFunc("Func4470")
        call ExecuteFunc("Func4476")
        call ExecuteFunc("Func4480")
        call ExecuteFunc("Func4486")
        call ExecuteFunc("Func4268")
    elseif loc_integer01==35 then
        call ExecuteFunc("Func4494")
        call ExecuteFunc("Func4502")
        call ExecuteFunc("Func4490")
    elseif loc_integer01==58 then
        call ExecuteFunc("Func4568")
        call ExecuteFunc("Func4564")
        call ExecuteFunc("Func4519")
        call ExecuteFunc("Func4539")
        call ExecuteFunc("Func4547")
        call ExecuteFunc("Func4554")
        set unit124=loc_unit01
        call ExecuteFunc("Func4534")
    elseif loc_integer01==59 then
        call ExecuteFunc("Func4455")
        call ExecuteFunc("Func4451")
        call ExecuteFunc("Func4459")
        call ExecuteFunc("Func4463")
    endif
endfunction

// 12018 ~ 12022
function Func0493 takes player loc_player01,string loc_string01 returns nothing
    if IsPlayerInForce(GetLocalPlayer(),Func0004(loc_player01))then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,real003,40,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+loc_string01)
    endif
endfunction

// 12024 ~ 12026
function Func0494 takes nothing returns boolean
    return units001[GetPlayerId(players003[1])]!=null and units001[GetPlayerId(players003[2])]!=null and units001[GetPlayerId(players003[3])]!=null and units001[GetPlayerId(players003[4])]!=null and units001[GetPlayerId(players003[5])]!=null and units001[GetPlayerId(players004[1])]!=null and units001[GetPlayerId(players004[2])]!=null and units001[GetPlayerId(players004[3])]!=null and units001[GetPlayerId(players004[4])]!=null and units001[GetPlayerId(players004[5])]!=null
endfunction

// 12028 ~ 12036
function Func0495 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    set boolean062=true
    call Func0035(loc_trigger01)
    call DestroyFogModifier(CreateFogModifierRadius(players003[0],FOG_OF_WAR_MASKED,real242,real243,700,false,false))
    call DestroyFogModifier(CreateFogModifierRadius(players004[0],FOG_OF_WAR_MASKED,real242,real243,700,false,false))
    set loc_trigger01=null
    return false
endfunction

// 12038 ~ 12040
function Func0496 takes unit loc_unit01 returns boolean
    return GetUnitTypeId(loc_unit01)!='H00M' and GetUnitTypeId(loc_unit01)!='N0MM' and GetUnitTypeId(loc_unit01)!='H07G' and GetUnitTypeId(loc_unit01)!='H00Y' and GetUnitTypeId(loc_unit01)!='H00J' and GetUnitTypeId(loc_unit01)!='H0B8' and GetUnitTypeId(loc_unit01)!='H0ES'
endfunction

// 12042 ~ 12044
function Func0497 takes nothing returns boolean
    return IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetTriggerUnit())==false and HaveSavedBoolean(hashtable001,GetHandleId(GetTriggerUnit()),85)==false and Func0496(GetTriggerUnit())
endfunction

// 12046 ~ 12048
function Func0498 takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit())=='n00C'
endfunction
