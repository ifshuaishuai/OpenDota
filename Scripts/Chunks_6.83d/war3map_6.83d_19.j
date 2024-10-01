
// 5350 ~ 5373
function Func0247 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(61)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(62)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=Func0022(loc_integer03)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(57)))
    local lightning loc_lightning01=(LoadLightningHandle(hashtable001,(loc_integer01),(41)))
    if I2R(GetTriggerEvalCount(loc_trigger01))*0.025>loc_real01 then
        call DestroyLightning(loc_lightning01)
        call Func0021(loc_integer02)
        call Func0021(loc_integer03)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call MoveLightning(loc_lightning01,true,GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_lightning01=null
    return false
endfunction

// 5375 ~ 5392
function Func0248 takes string loc_string01,unit loc_unit01,unit loc_unit02,real loc_real01,real loc_real02,real loc_real03,real loc_real04,real loc_real05 returns nothing
    local real loc_real06=GetUnitX(loc_unit01)
    local real loc_real07=GetUnitY(loc_unit01)
    local real loc_real08=GetUnitX(loc_unit02)
    local real loc_real09=GetUnitY(loc_unit02)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local lightning loc_lightning01=AddLightning(loc_string01,true,loc_real06,loc_real07,loc_real08,loc_real09)
    call SetLightningColor(loc_lightning01,loc_real01,loc_real02,loc_real03,loc_real04)
    call SaveLightningHandle(hashtable001,(loc_integer01),(41),(loc_lightning01))
    call SaveInteger(hashtable001,(loc_integer01),(61),(Func0024(loc_unit01)))
    call SaveInteger(hashtable001,(loc_integer01),(62),(Func0024(loc_unit02)))
    call SaveReal(hashtable001,(loc_integer01),(57),((loc_real05)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.025,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0247))
    set loc_trigger01=null
    set loc_lightning01=null
endfunction

// 5394 ~ 5400
function Func0249 takes string loc_string01 returns nothing
    local sound loc_sound01=CreateSound(loc_string01,false,false,false,10,10,"")
    call SetSoundVolume(loc_sound01,0)
    call StartSound(loc_sound01)
    call KillSoundWhenDone(loc_sound01)
    set loc_sound01=null
endfunction

// 5402 ~ 5412
function Func0250 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local ubersplat loc_ubersplat01=(LoadUbersplatHandle(hashtable001,(loc_integer01),(131)))
    call DestroyUbersplat(loc_ubersplat01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_ubersplat01=null
    return false
endfunction

// 5414 ~ 5421
function Func0251 takes ubersplat loc_ubersplat01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveUbersplatHandle(hashtable001,(loc_integer01),(131),(loc_ubersplat01))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0250))
    set loc_trigger01=null
endfunction

// 5423 ~ 5429
function Func0252 takes nothing returns nothing
    local real loc_real01=Func0149(GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),real007,real008)
    if loc_real01<real006 then
        set real006=loc_real01
        set unit123=GetEnumUnit()
    endif
endfunction

// 5431 ~ 5438
function Func0253 takes group loc_group01,real loc_real01,real loc_real02 returns unit
    set real006=999999
    set unit123=null
    set real007=loc_real01
    set real008=loc_real02
    call ForGroup(loc_group01,function Func0252)
    return unit123
endfunction

// 5440 ~ 5448
function Func0254 takes integer loc_integer01 returns nothing
    local integer loc_integer02=0
    loop
        exitwhen loc_integer02>5
        call SetPlayerAbilityAvailable(players003[loc_integer02],loc_integer01,false)
        call SetPlayerAbilityAvailable(players004[loc_integer02],loc_integer01,false)
        set loc_integer02=loc_integer02+1
    endloop
endfunction

// 5450 ~ 5457
function Func0255 takes integer loc_integer01 returns nothing
    local integer loc_integer02=0
    loop
        exitwhen loc_integer02>12
        call SetPlayerAbilityAvailable(Player(loc_integer02),loc_integer01,false)
        set loc_integer02=loc_integer02+1
    endloop
endfunction

// 5459 ~ 5461
function Func0256 takes nothing returns nothing
    call Func0044(GetTriggerUnit(),4422,0.2)
endfunction

// 5463 ~ 5468
function Func0257 takes nothing returns boolean
    if GetSpellAbilityId()=='A063' or GetSpellAbilityId()=='A03O' or GetSpellAbilityId()=='A0B8' or GetSpellAbilityId()=='A1WE' or GetSpellAbilityId()=='Aibk' or GetSpellAbilityId()=='A2FV' or GetSpellAbilityId()=='A0ME' then
        call Func0044(GetTriggerUnit(),4422,0.2)
    endif
    return false
endfunction

// 5470 ~ 5480
function Func0258 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call SetUnitPathing(loc_unit01,true)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 5482 ~ 5490
function Func0259 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0258))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SetUnitPathing(loc_unit01,false)
    set loc_trigger01=null
endfunction

// 5492 ~ 5606
function Func0260 takes nothing returns nothing
    set region003=CreateRegion()
    call RegionAddRect(region003,rect044)
    set region005=CreateRegion()
    call RegionAddRect(region005,rect045)
    set region002=CreateRegion()
    call RegionAddRect(region002,rect063)
    call RegionAddRect(region002,rect064)
    call RegionAddRect(region002,rect065)
    set region004=CreateRegion()
    call RegionAddRect(region004,rect066)
    call RegionAddRect(region004,rect067)
    call RegionAddRect(region004,rect068)
    set region006=CreateRegion()
    call RegionAddRect(region006,rect069)
    call RegionAddRect(region006,rect070)
    call RegionAddRect(region006,rect071)
    call RegionAddRect(region006,rect072)
    call RegionAddRect(region006,rect073)
    call RegionAddRect(region006,rect074)
    call RegionAddRect(region006,rect075)
    call RegionAddRect(region006,rect076)
    call RegionAddRect(region006,rect077)
    call RegionAddRect(region006,rect078)
    call RegionAddRect(region006,rect079)
    call RegionAddRect(region006,rect080)
    call RegionAddRect(region006,rect081)
    call RegionAddRect(region006,rect082)
    call RegionAddRect(region006,rect083)
    call RegionAddRect(region006,rect084)
    call RegionAddRect(region006,rect085)
    call RegionAddRect(region006,rect086)
    call RegionAddRect(region006,rect087)
    call RegionAddRect(region006,rect088)
    call RegionAddRect(region006,rect089)
    call RegionAddRect(region006,rect090)
    call RegionAddRect(region006,rect091)
    call RegionAddRect(region006,rect092)
    call RegionAddRect(region006,rect093)
    call RegionAddRect(region006,rect094)
    call RegionAddRect(region006,rect095)
    call RegionAddRect(region006,rect096)
    call RegionAddRect(region006,rect097)
    call RegionAddRect(region006,rect098)
    call RegionAddRect(region006,rect099)
    call RegionAddRect(region006,rect100)
    call RegionAddRect(region006,rect101)
    call RegionAddRect(region006,rect102)
    call RegionAddRect(region006,rect103)
    call RegionAddRect(region006,rect104)
    call RegionAddRect(region006,rect105)
    call RegionAddRect(region006,rect106)
    call RegionAddRect(region006,rect107)
    call RegionAddRect(region006,rect108)
    call RegionAddRect(region006,rect109)
    call RegionAddRect(region006,rect110)
    call RegionAddRect(region006,rect111)
    call RegionAddRect(region006,rect112)
    call RegionAddRect(region006,rect113)
    call RegionAddRect(region006,rect114)
    call RegionAddRect(region006,rect115)
    call RegionAddRect(region006,rect116)
    call RegionAddRect(region006,rect117)
    call RegionAddRect(region006,rect118)
    call RegionAddRect(region006,rect119)
    call RegionAddRect(region006,rect120)
    call RegionAddRect(region006,rect121)
    call RegionAddRect(region006,rect122)
    call RegionAddRect(region006,rect123)
    call RegionAddRect(region006,rect124)
    call RegionAddRect(region006,rect125)
    call RegionAddRect(region006,rect126)
    call RegionAddRect(region006,rect127)
    call RegionAddRect(region006,rect128)
    call RegionAddRect(region006,rect129)
    call RegionAddRect(region006,rect130)
    call RegionAddRect(region006,rect131)
    call RegionAddRect(region006,rect132)
    call RegionAddRect(region006,rect133)
    call RegionAddRect(region006,rect134)
    call RegionAddRect(region006,rect135)
    call RegionAddRect(region006,rect136)
    call RegionAddRect(region006,rect137)
    call RegionAddRect(region006,rect138)
    call RegionAddRect(region006,rect139)
    call RegionAddRect(region006,rect140)
    call RegionAddRect(region006,rect141)
    call RegionAddRect(region006,rect142)
    call RegionAddRect(region006,rect143)
    call RegionAddRect(region006,rect144)
    call RegionAddRect(region006,rect145)
    call RegionAddRect(region006,rect146)
    call RegionAddRect(region006,rect147)
    call RegionAddRect(region006,rect148)
    call RegionAddRect(region006,rect149)
    call RegionAddRect(region006,rect150)
    call RegionAddRect(region006,rect151)
    call RegionAddRect(region006,rect152)
    call RegionAddRect(region006,rect153)
    call RegionAddRect(region006,rect154)
    call RegionAddRect(region006,rect155)
    call RegionAddRect(region006,rect156)
    call RegionAddRect(region006,rect157)
    call RegionAddRect(region006,rect158)
    call RegionAddRect(region006,rect159)
    call RegionAddRect(region006,rect160)
    call RegionAddRect(region006,rect161)
    call RegionAddRect(region006,rect162)
    call RegionAddRect(region006,rect163)
    set region007=CreateRegion()
    call RegionAddRect(region007,rect214)
    call RegionAddRect(region007,rect215)
    call RegionAddRect(region007,rect216)
    call RegionAddRect(region007,rect217)
endfunction

// 5608 ~ 5610
function Func0261 takes nothing returns nothing
    call Func0260()
endfunction

// 5612 ~ 5614
function Func0262 takes unit loc_unit01 returns boolean
    return GetUnitTypeId(loc_unit01)=='n004' or GetUnitTypeId(loc_unit01)=='n018' or GetUnitTypeId(loc_unit01)=='n01C' or GetUnitTypeId(loc_unit01)=='n01G'
endfunction

// 5616 ~ 5618
function Func0263 takes integer loc_integer01 returns boolean
    return loc_integer01=='N00M' or loc_integer01=='H07G' or loc_integer01=='H00Y' or loc_integer01=='H0B8'
endfunction

// 5620 ~ 5632
function Func0264 takes player loc_player01 returns nothing
    local unit loc_unit01=units001[GetPlayerId(loc_player01)]
    local integer loc_integer01=0
    local item loc_item01
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        call SetItemDroppable(loc_item01,false)
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
    set loc_item01=null
endfunction

// 5634 ~ 5646
function Func0265 takes player loc_player01 returns nothing
    local unit loc_unit01=units001[GetPlayerId(loc_player01)]
    local integer loc_integer01=0
    local item loc_item01
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        call SetItemDroppable(loc_item01,true)
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
    set loc_item01=null
endfunction

// 5648 ~ 5650
function Func0266 takes unit loc_unit01 returns boolean
    return GetUnitAbilityLevel(loc_unit01,'Aetl')>0 or GetUnitAbilityLevel(loc_unit01,'Bcyc')>0 or GetUnitAbilityLevel(loc_unit01,'Bcy2')>0 or GetUnitAbilityLevel(loc_unit01,'B01N')>0
endfunction

// 5652 ~ 5654
function Func0267 takes unit loc_unit01 returns boolean
    return(GetUnitAbilityLevel((loc_unit01),('BEer'))>0)or(GetUnitAbilityLevel((loc_unit01),('B017'))>0)or(GetUnitAbilityLevel((loc_unit01),('B0ER'))>0)
endfunction

// 5656 ~ 5658
function Func0268 takes unit loc_unit01 returns boolean
    return(GetUnitAbilityLevel((loc_unit01),('B0C1'))>0)or(GetUnitAbilityLevel((loc_unit01),('BEer'))>0)or(GetUnitAbilityLevel((loc_unit01),('Beng'))>0)or(GetUnitAbilityLevel((loc_unit01),('Bena'))>0)or(GetUnitAbilityLevel((loc_unit01),('B017'))>0)or(GetUnitAbilityLevel((loc_unit01),('B078'))>0)or(GetUnitAbilityLevel((loc_unit01),('B08F'))>0)or(GetUnitAbilityLevel((loc_unit01),('B08E'))>0)or(GetUnitAbilityLevel((loc_unit01),('B0ER'))>0)or(GetUnitAbilityLevel((loc_unit01),('B0FN'))>0)
endfunction

// 5660 ~ 5671
function Func0269 takes unit loc_unit01 returns nothing
    call UnitRemoveAbility(loc_unit01,'B0C1')
    call UnitRemoveAbility(loc_unit01,'BEer')
    call UnitRemoveAbility(loc_unit01,'Beng')
    call UnitRemoveAbility(loc_unit01,'Bena')
    call UnitRemoveAbility(loc_unit01,'B017')
    call UnitRemoveAbility(loc_unit01,'B078')
    call UnitRemoveAbility(loc_unit01,'B08F')
    call UnitRemoveAbility(loc_unit01,'B08E')
    call UnitRemoveAbility(loc_unit01,'B0ER')
    call UnitRemoveAbility(loc_unit01,'B0FN')
endfunction

// 5673 ~ 5675
function Func0270 takes unit loc_unit01 returns boolean
    return(GetUnitAbilityLevel((loc_unit01),('B00H'))>0)or(GetUnitAbilityLevel((loc_unit01),('BOhx'))>0)or(GetUnitAbilityLevel((loc_unit01),('BPSE'))>0)or(GetUnitAbilityLevel((loc_unit01),('B099'))>0)or(GetUnitAbilityLevel((loc_unit01),('BSTN'))>0)or(GetUnitAbilityLevel((loc_unit01),('B0CF'))>0)or(GetUnitAbilityLevel((loc_unit01),('B0BM'))>0)or(GetUnitAbilityLevel((loc_unit01),('B06M'))>0)or(GetUnitAbilityLevel((loc_unit01),('B07N'))>0)or(GetUnitAbilityLevel((loc_unit01),('B08S'))>0)or(GetUnitAbilityLevel((loc_unit01),('B00Q'))>0)or(GetUnitAbilityLevel((loc_unit01),('B04V'))>0)or(GetUnitAbilityLevel((loc_unit01),('B072'))>0)or(GetUnitAbilityLevel((loc_unit01),('BUan'))>0)or(GetUnitAbilityLevel((loc_unit01),('B095'))>0)or(GetUnitAbilityLevel((loc_unit01),('B03I'))>0)or(GetUnitAbilityLevel((loc_unit01),('B0AD'))>0)or(GetUnitAbilityLevel((loc_unit01),('B0AE'))>0)or(GetUnitAbilityLevel((loc_unit01),('B0BE'))>0)or(GetUnitAbilityLevel((loc_unit01),('B0BF'))>0)or(GetUnitAbilityLevel((loc_unit01),('B008'))>0)or(GetUnitAbilityLevel((loc_unit01),('B04B'))>0)or(GetUnitAbilityLevel((loc_unit01),('B02F'))>0)or(GetUnitAbilityLevel((loc_unit01),('BUsp'))>0)or(GetUnitAbilityLevel((loc_unit01),('BUst'))>0)or(GetUnitAbilityLevel((loc_unit01),('B0DD'))>0)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4293))))==1)==true or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4303))))==1)or(GetUnitAbilityLevel((loc_unit01),('B0C2'))>0)or(GetUnitAbilityLevel((loc_unit01),('B06S'))>0)or(GetUnitAbilityLevel((loc_unit01),('B02S'))>0)or(GetUnitAbilityLevel((loc_unit01),('B07E'))>0)
endfunction

// 5677 ~ 5679
function Func0271 takes unit loc_unit01 returns boolean
    return Func0270(loc_unit01)or Func0268(loc_unit01)or IsUnitPaused(loc_unit01)or Func0108(loc_unit01)
endfunction

// 5681 ~ 5683
function Func0272 takes integer loc_integer01 returns boolean
    return loc_integer01=='A0DY' or loc_integer01=='A1WB' or loc_integer01=='A026' or loc_integer01=='A09V' or loc_integer01=='AHfa' or loc_integer01=='A0LZ' or loc_integer01=='A0QN' or loc_integer01=='A0OI' or loc_integer01=='A2UM'
endfunction

// 5685 ~ 5687
function Func0273 takes unit loc_unit01 returns boolean
    return Func0267(loc_unit01)or(GetUnitAbilityLevel((loc_unit01),('B01N'))>0)or GetUnitAbilityLevel(loc_unit01,'Aetl')>0 or GetUnitAbilityLevel(loc_unit01,'Abun')>0 or(GetUnitAbilityLevel((loc_unit01),('B033'))>0)or(GetUnitAbilityLevel((loc_unit01),('B0GD'))>0)
endfunction

// 5689 ~ 5697
function Func0274 takes integer loc_integer01,integer loc_integer02,boolean loc_boolean01 returns nothing
    local integer loc_integer03=0
    loop
        exitwhen loc_integer03>15
        call SetPlayerState(Player(loc_integer03),PLAYER_STATE_RESOURCE_LUMBER,loc_integer01)
        call SetPlayerState(Player(loc_integer03),PLAYER_STATE_RESOURCE_FOOD_USED,loc_integer02)
        set loc_integer03=loc_integer03+1
    endloop
endfunction

// 5699 ~ 5702
function Func0275 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    return loc_integer01=='n027' or loc_integer01=='u014' or loc_integer01=='u015' or loc_integer01=='u016' or loc_integer01=='u01D' or loc_integer01=='u01E' or loc_integer01=='u01F' or loc_integer01=='u017' or loc_integer01=='u019' or loc_integer01=='u018' or loc_integer01=='u01A' or loc_integer01=='u01B' or loc_integer01=='u01C'
endfunction

// 5704 ~ 5707
function Func0276 takes unit loc_unit01,boolean loc_boolean01 returns nothing
    call SetUnitInvulnerable(loc_unit01,loc_boolean01)
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(509),(loc_boolean01))
endfunction

// 5709 ~ 5711
function Func0277 takes unit loc_unit01 returns boolean
    return(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(509)))or GetUnitAbilityLevel(loc_unit01,'Avul')>0
endfunction

// 5713 ~ 5715
function Func0278 takes unit loc_unit01 returns boolean
    return((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4420))))==1)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4421))))==1)
endfunction

// 5717 ~ 5746
function Func0279 takes real loc_real01,real loc_real02 returns location
    local real loc_real03
    local real loc_real04
    local integer loc_integer01=0
    loop
        exitwhen loc_integer01>40
        set loc_real03=loc_real01+loc_integer01*20
        set loc_real04=loc_real02+loc_integer01*20
        if IsPointInRegion(region006,loc_real03,loc_real04)==false then
            return Location(loc_real03,loc_real04)
        endif
        set loc_real03=loc_real01+loc_integer01*20
        set loc_real04=loc_real02-loc_integer01*20
        if IsPointInRegion(region006,loc_real03,loc_real04)==false then
            return Location(loc_real03,loc_real04)
        endif
        set loc_real03=loc_real01-loc_integer01*20
        set loc_real04=loc_real02+loc_integer01*20
        if IsPointInRegion(region006,loc_real03,loc_real04)==false then
            return Location(loc_real03,loc_real04)
        endif
        set loc_real03=loc_real01-loc_integer01*20
        set loc_real04=loc_real02-loc_integer01*20
        if IsPointInRegion(region006,loc_real03,loc_real04)==false then
            return Location(loc_real03,loc_real04)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return Location(loc_real01,loc_real02)
endfunction

// 5748 ~ 5751
function Func0280 takes unit loc_unit01 returns nothing
    call UnitRemoveAbility(loc_unit01,'Abun')
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(790),(0))
endfunction

// 5753 ~ 5759
function Func0281 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(790)))
    call Func0193(loc_unit01,'Abun')
    set loc_integer02=loc_integer02+1
    call SaveInteger(hashtable001,(loc_integer01),(790),(loc_integer02))
endfunction

// 5761 ~ 5769
function Func0282 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(790)))
    set loc_integer02=IMaxBJ(loc_integer02-1,0)
    call SaveInteger(hashtable001,(loc_integer01),(790),(loc_integer02))
    if loc_integer02==0 then
        call Func0280(loc_unit01)
    endif
endfunction

// 5771 ~ 5875
function Func0283 takes unit loc_unit01 returns boolean
    if loc_unit01==unit186 then
        return true
    endif
    if loc_unit01==unit187 then
        return true
    endif
    if loc_unit01==unit188 then
        return true
    endif
    if loc_unit01==unit189 then
        return true
    endif
    if loc_unit01==unit190 then
        return true
    endif
    if loc_unit01==unit191 then
        return true
    endif
    if loc_unit01==unit192 then
        return true
    endif
    if loc_unit01==unit193 then
        return true
    endif
    if loc_unit01==unit194 then
        return true
    endif
    if loc_unit01==unit195 then
        return true
    endif
    if loc_unit01==unit196 then
        return true
    endif
    if loc_unit01==unit197 then
        return true
    endif
    if loc_unit01==unit198 then
        return true
    endif
    if loc_unit01==unit199 then
        return true
    endif
    if loc_unit01==unit200 then
        return true
    endif
    if loc_unit01==unit201 then
        return true
    endif
    if loc_unit01==unit202 then
        return true
    endif
    if loc_unit01==unit142 then
        return true
    endif
    if loc_unit01==unit143 then
        return true
    endif
    if loc_unit01==unit144 then
        return true
    endif
    if loc_unit01==unit145 then
        return true
    endif
    if loc_unit01==unit146 then
        return true
    endif
    if loc_unit01==unit147 then
        return true
    endif
    if loc_unit01==unit148 then
        return true
    endif
    if loc_unit01==unit149 then
        return true
    endif
    if loc_unit01==unit150 then
        return true
    endif
    if loc_unit01==unit151 then
        return true
    endif
    if loc_unit01==unit152 then
        return true
    endif
    if loc_unit01==unit153 then
        return true
    endif
    if loc_unit01==unit154 then
        return true
    endif
    if loc_unit01==unit155 then
        return true
    endif
    if loc_unit01==unit156 then
        return true
    endif
    if loc_unit01==unit157 then
        return true
    endif
    if loc_unit01==unit158 then
        return true
    endif
    return false
endfunction

// 5877 ~ 5879
function Func0284 takes unit loc_unit01 returns boolean
    return GetUnitAbilityLevel(loc_unit01,'B068')>0 or GetUnitAbilityLevel(loc_unit01,'B07T')>0 or GetUnitAbilityLevel(loc_unit01,'B076')>0 or GetUnitAbilityLevel(loc_unit01,'BOwk')>0 or GetUnitAbilityLevel(loc_unit01,'B04R')>0 or GetUnitAbilityLevel(loc_unit01,'B0A5')>0 or GetUnitAbilityLevel(loc_unit01,'B01Q')>0 or GetUnitAbilityLevel(loc_unit01,'B006')>0 or GetUnitAbilityLevel(loc_unit01,'Binv')>0 or GetUnitAbilityLevel(loc_unit01,'Apiv')>0 or GetUnitAbilityLevel(loc_unit01,'A021')>0 or GetUnitAbilityLevel(loc_unit01,'A0K4')>0 or GetUnitAbilityLevel(loc_unit01,'A0XB')>0 or GetUnitAbilityLevel(loc_unit01,'A0Z2')>0 or GetUnitAbilityLevel(loc_unit01,'A1GA')>0 or GetUnitAbilityLevel(loc_unit01,'A1HW')>0 or GetUnitAbilityLevel(loc_unit01,'A1HX')>0 or GetUnitAbilityLevel(loc_unit01,'A00J')>0 or GetUnitAbilityLevel(loc_unit01,'B08K')>0 or GetUnitAbilityLevel(loc_unit01,'B08X')>0 or GetUnitAbilityLevel(loc_unit01,'B039')>0 or GetUnitAbilityLevel(loc_unit01,'B00K')>0 or GetUnitAbilityLevel(loc_unit01,'BHfs')>0 or GetUnitAbilityLevel(loc_unit01,'A140')>0 or GetUnitAbilityLevel(loc_unit01,'B021')>0 or GetUnitAbilityLevel(loc_unit01,'A0ZD')>0 or GetUnitAbilityLevel(loc_unit01,'A0KT')>0 or GetUnitAbilityLevel(loc_unit01,'B0G8')>0 or GetUnitAbilityLevel(loc_unit01,'A2T0')>0 or GetUnitAbilityLevel(loc_unit01,'A2SZ')>0
endfunction

// 5881 ~ 5883
function Func0285 takes unit loc_unit01,player loc_player01 returns boolean
    return Func0284(loc_unit01)==false or IsUnitVisible(GetFilterUnit(),loc_player01)==true
endfunction

// 5885 ~ 5888
function Func0286 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    return loc_integer01=='n004' or loc_integer01=='n01G' or loc_integer01=='n01C' or loc_integer01=='n018' or loc_integer01=='e00K' or loc_integer01=='e00I' or loc_integer01=='e00L' or loc_integer01=='e01J'
endfunction

// 5890 ~ 5892
function Func0287 takes nothing returns boolean
    return GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false
endfunction

// 5894 ~ 5896
function Func0288 takes nothing returns boolean
    return(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 or(GetUnitTypeId(GetFilterUnit())=='umtw' or GetUnitTypeId(GetFilterUnit())=='u00R' or GetUnitTypeId(GetFilterUnit())=='ebal' or GetUnitTypeId(GetFilterUnit())=='e026'))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false
endfunction

// 5898 ~ 5900
function Func0289 takes nothing returns boolean
    return(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and GetUnitAbilityLevel(GetFilterUnit(),'A1RB')==0
endfunction

// 5902 ~ 5904
function Func0290 takes nothing returns boolean
    return(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))
endfunction

// 5906 ~ 5908
function Func0291 takes nothing returns boolean
    return GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false
endfunction

// 5910 ~ 5912
function Func0292 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==true and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false
endfunction

// 5914 ~ 5916
function Func0293 takes nothing returns boolean
    return Func0098(GetFilterUnit())==false and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 5918 ~ 5920
function Func0294 takes nothing returns boolean
    return Func0098(GetFilterUnit())==false and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 5922 ~ 5924
function Func0295 takes nothing returns boolean
    return Func0098(GetFilterUnit())==false and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false)
endfunction

// 5926 ~ 5928
function Func0296 takes nothing returns boolean
    return IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false)
endfunction

// 5930 ~ 5932
function Func0297 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitTypeId(GetFilterUnit())=='ebal' or GetUnitTypeId(GetFilterUnit())=='umtw')
endfunction

// 5934 ~ 5936
function Func0298 takes nothing returns boolean
    return IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 5938 ~ 5940
function Func0299 takes nothing returns boolean
    return(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))
endfunction

// 5942 ~ 5944
function Func0300 takes nothing returns boolean
    return(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and(IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))or Func0284(GetFilterUnit()))
endfunction

// 5946 ~ 5948
function Func0301 takes nothing returns boolean
    return IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)
endfunction

// 5950 ~ 5952
function Func0302 takes nothing returns boolean
    return IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))and((GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 or(GetUnitTypeId(GetFilterUnit())=='umtw' or GetUnitTypeId(GetFilterUnit())=='u00R' or GetUnitTypeId(GetFilterUnit())=='ebal' or GetUnitTypeId(GetFilterUnit())=='e026'))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)
endfunction

// 5954 ~ 5956
function Func0303 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))
endfunction

// 5958 ~ 5960
function Func0304 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(Func0284(GetFilterUnit())==false or IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))==true)
endfunction

// 5962 ~ 5964
function Func0305 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 5966 ~ 5968
function Func0306 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))
endfunction

// 5970 ~ 5972
function Func0307 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true
endfunction

// 5974 ~ 5976
function Func0308 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true or IsUnitIllusion(GetFilterUnit()))
endfunction

// 5978 ~ 5980
function Func0309 takes nothing returns boolean
    return((IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)and Func0284(GetFilterUnit())==false
endfunction

// 5982 ~ 5984
function Func0310 takes nothing returns boolean
    return((IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)and(Func0284(GetFilterUnit())==false or IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))==true)
endfunction

// 5986 ~ 5988
function Func0311 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false
endfunction

// 5990 ~ 5992
function Func0312 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and GetUnitAbilityLevel(GetFilterUnit(),'A1RB')==0
endfunction

// 5994 ~ 5996
function Func0313 takes nothing returns boolean
    return Func0098(GetFilterUnit())==false and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 5998 ~ 6000
function Func0314 takes nothing returns boolean
    return Func0098(GetFilterUnit())==false and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6002 ~ 6004
function Func0315 takes nothing returns boolean
    return Func0098(GetFilterUnit())==false and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)
endfunction

// 6006 ~ 6008
function Func0316 takes nothing returns boolean
    return Func0098(GetFilterUnit())==false and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)
endfunction

// 6010 ~ 6012
function Func0317 takes nothing returns boolean
    return IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)
endfunction

// 6014 ~ 6016
function Func0318 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)
endfunction

// 6018 ~ 6020
function Func0319 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and GetOwningPlayer(GetFilterUnit())!=player001
endfunction

// 6022 ~ 6024
function Func0320 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6026 ~ 6028
function Func0321 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false)
endfunction

// 6030 ~ 6032
function Func0322 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6034 ~ 6036
function Func0323 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==false and(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==true and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6038 ~ 6040
function Func0324 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false
endfunction

// 6042 ~ 6044
function Func0325 takes nothing returns boolean
    return Func0098(GetFilterUnit())==false and(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))
endfunction

// 6046 ~ 6048
function Func0326 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false)
endfunction

// 6050 ~ 6052
function Func0327 takes nothing returns boolean
    return IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6054 ~ 6056
function Func0328 takes nothing returns boolean
    return IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)
endfunction

// 6058 ~ 6060
function Func0329 takes nothing returns boolean
    return IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))==false and Func0058(GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)
endfunction

// 6062 ~ 6064
function Func0330 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==false and Func0058(GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)
endfunction

// 6066 ~ 6068
function Func0331 takes nothing returns boolean
    return IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)
endfunction

// 6070 ~ 6072
function Func0332 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6074 ~ 6076
function Func0333 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6078 ~ 6080
function Func0334 takes nothing returns boolean
    return GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(unit124)and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6082 ~ 6084
function Func0335 takes nothing returns boolean
    return GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GetTriggerUnit())and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6086 ~ 6088
function Func0336 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true or GetOwningPlayer(GetFilterUnit())==players003[0]or GetOwningPlayer(GetFilterUnit())==players004[0])and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6090 ~ 6092
function Func0337 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetFilterUnit())==false and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6094 ~ 6096
function Func0338 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6098 ~ 6100
function Func0339 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))==true and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6102 ~ 6104
function Func0340 takes nothing returns boolean
    return Func0098(GetFilterUnit())==false and(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))==true and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))
endfunction

// 6106 ~ 6108
function Func0341 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))==true and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))
endfunction

// 6110 ~ 6112
function Func0342 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==true and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6114 ~ 6116
function Func0343 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==true and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)or Func0284(GetEnumUnit())
endfunction

// 6118 ~ 6120
function Func0344 takes nothing returns boolean
    return Func0098(GetFilterUnit())==false and(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==true and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))
endfunction

// 6122 ~ 6124
function Func0345 takes nothing returns boolean
    return(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6126 ~ 6128
function Func0346 takes nothing returns boolean
    return((GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and GetUnitAbilityLevel(GetFilterUnit(),'A1RB')==0
endfunction

// 6130 ~ 6132
function Func0347 takes nothing returns boolean
    return(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and GetOwningPlayer(GetFilterUnit())!=player001
endfunction

// 6134 ~ 6136
function Func0348 takes nothing returns boolean
    return(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)
endfunction

// 6138 ~ 6140
function Func0349 takes nothing returns boolean
    return(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))and GetUnitTypeId(GetFilterUnit())!='H0ES'
endfunction

// 6142 ~ 6144
function Func0350 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and GetTriggerUnit()!=GetFilterUnit()and IsUnitIllusion(GetFilterUnit())==false
endfunction

// 6146 ~ 6148
function Func0351 takes nothing returns boolean
    return(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true or IsUnitIllusion(GetFilterUnit())==true)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6150 ~ 6152
function Func0352 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true
endfunction

// 6154 ~ 6156
function Func0353 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))
endfunction

// 6158 ~ 6160
function Func0354 takes nothing returns boolean
    return((IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124)))and GetUnitTypeId(GetFilterUnit())!='n0F5'
endfunction

// 6162 ~ 6164
function Func0355 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and(IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))or(IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))==false and Func0284(GetFilterUnit()))==false)
endfunction

// 6166 ~ 6168
function Func0356 takes nothing returns boolean
    return((IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124)))and Func0266(GetFilterUnit())==false
endfunction

// 6170 ~ 6172
function Func0357 takes nothing returns boolean
    return(((IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124)))and Func0266(GetFilterUnit())==false)and GetUnitTypeId(GetFilterUnit())!='n0F5'
endfunction

// 6174 ~ 6176
function Func0358 takes nothing returns boolean
    return(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))
endfunction

// 6178 ~ 6180
function Func0359 takes nothing returns boolean
    return((GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))
endfunction

// 6182 ~ 6184
function Func0360 takes nothing returns boolean
    return Func0098(GetFilterUnit())==false and((GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))
endfunction

// 6186 ~ 6188
function Func0361 takes nothing returns boolean
    return GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==true and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false and GetUnitTypeId(GetFilterUnit())!='n0F5'
endfunction

// 6190 ~ 6192
function Func0362 takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit())=='H00E' or GetUnitTypeId(GetFilterUnit())=='H00G' or GetUnitTypeId(GetFilterUnit())=='H00F' or GetUnitTypeId(GetFilterUnit())=='E00P' or GetUnitTypeId(GetFilterUnit())=='N00B' or GetUnitTypeId(GetFilterUnit())=='UC60' or GetUnitTypeId(GetFilterUnit())=='EC77' or GetUnitTypeId(GetFilterUnit())=='U00P' or GetUnitTypeId(GetFilterUnit())=='E02N' or GetUnitTypeId(GetFilterUnit())=='E02O' or GetUnitTypeId(GetFilterUnit())=='O016' or GetUnitTypeId(GetFilterUnit())=='O017' or GetUnitTypeId(GetFilterUnit())=='E02F' or GetUnitTypeId(GetFilterUnit())=='H0DO' or GetUnitTypeId(GetFilterUnit())=='N0M7' or GetUnitTypeId(GetFilterUnit())=='N0MB' or GetUnitTypeId(GetFilterUnit())=='N0MC' or GetUnitTypeId(GetFilterUnit())=='N0MO' or GetUnitTypeId(GetFilterUnit())=='N0MA' or GetUnitTypeId(GetFilterUnit())=='N0MW'
endfunction

// 6194 ~ 6196
function Func0363 takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit124))==true and Func0082(GetFilterUnit())>0
endfunction
