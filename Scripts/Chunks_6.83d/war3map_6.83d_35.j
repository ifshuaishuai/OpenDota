
// 13635 ~ 13637
function Func0564 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true or Func0286(GetFilterUnit()))and IsUnitIllusion(GetFilterUnit())==false
endfunction

// 13639 ~ 13663
function Func0565 takes player loc_player01 returns integer
    local integer loc_integer01=0
    local group loc_group01=Func0030()
    local unit loc_unit01
    local integer loc_integer02
    local item loc_item01
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0564))
    loop
        exitwhen FirstOfGroup(loc_group01)==null
        set loc_unit01=FirstOfGroup(loc_group01)
        set loc_integer02=0
        loop
            exitwhen loc_integer02==6
            set loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
            if loc_item01!=null and GetItemPlayer(loc_item01)==loc_player01 then
                set loc_integer01=loc_integer01+(integers092[Func0380((loc_item01))])
            endif
            set loc_integer02=loc_integer02+1
        endloop
        call GroupRemoveUnit(loc_group01,loc_unit01)
    endloop
    call Func0029(loc_group01)
    set loc_integer01=loc_integer01+GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)
    return loc_integer01
endfunction

// 13665 ~ 13682
function Func0566 takes player loc_player01 returns integer
    local integer loc_integer01=0
    local integer loc_integer02=1
    local player loc_player02
    loop
        exitwhen loc_integer02==6
        set loc_player02=players003[loc_integer02]
        if IsPlayerAlly(loc_player01,loc_player02)then
            set loc_integer01=loc_integer01+Func0565(loc_player02)
        endif
        set loc_player02=players004[loc_integer02]
        if IsPlayerAlly(loc_player01,loc_player02)then
            set loc_integer01=loc_integer01+Func0565(loc_player02)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return loc_integer01
endfunction

// 13684 ~ 13762
function Func0567 takes nothing returns boolean
    local integer loc_integer01
    local real loc_real01=0
    local real loc_real02=0
    local group loc_group01
    local player loc_player01
    local player loc_player02
    local integer loc_integer02
    local integer loc_integer03
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local real loc_real07
    local real loc_real08
    local real loc_real09
    local real loc_real10
    local real loc_real11
    local unit loc_unit01=unit242
    if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true and IsUnitIllusion(loc_unit01)==false and(GetUnitTypeId((loc_unit01))=='H00J')==false and Func0468(GetUnitTypeId(loc_unit01))==false then
        set loc_integer01=GetHeroLevel(loc_unit01)
        set integer057=0
        set integer056=0
        set loc_group01=Func0030()
        set integer058=0
        set integer059=0
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1300+25,Condition(function Func0339))
        call ForGroup(loc_group01,function Func0561)
        if IsPlayerAlly(GetOwningPlayer(loc_unit01),players003[0])then
            set loc_player01=players003[0]
            set loc_player02=players004[0]
        else
            set loc_player01=players004[0]
            set loc_player02=players003[0]
        endif
        set loc_integer02=loc_integer01
        set loc_integer03=GetHeroXP(loc_unit01)
        set loc_real03=Func0563(loc_player01)
        set loc_real04=Func0563(loc_player02)+1
        set loc_real05=RMaxBJ((loc_real03-loc_real04)/(loc_real03+loc_real04),0)
        set loc_real06=loc_real05*loc_integer03
        set loc_real07=Func0565(GetOwningPlayer(loc_unit01))
        set loc_real08=Func0566(loc_player01)
        set loc_real09=Func0566(loc_player02)+1
        set loc_real10=RMaxBJ(RMinBJ(loc_real08/loc_real09-1,1),0)
        set loc_real11=loc_real10*loc_real07
        if integer058==1 then
            set loc_real01=20*loc_integer02+loc_real06*0.23
        elseif integer058==2 then
            set loc_real01=15*loc_integer02+loc_real06*0.23
        elseif integer058==3 then
            set loc_real01=10*loc_integer02+loc_real06*0.2
        elseif integer058==4 then
            set loc_real01=7*loc_integer02+loc_real06*0.15
        elseif integer058==5 then
            set loc_real01=5*loc_integer02+loc_real06*0.12
        endif
        if integer059==1 then
            set loc_real02=40+7*loc_integer01+0.05*loc_real11
        elseif integer059==2 then
            set loc_real02=30+6*loc_integer01+0.05*loc_real11
        elseif integer059==3 then
            set loc_real02=20+5*loc_integer01+0.05*loc_real11
        elseif integer059==4 then
            set loc_real02=10+4*loc_integer01+0.04*loc_real11
        elseif integer059==5 then
            set loc_real02=10+4*loc_integer01+0.03*loc_real11
        endif
        if boolean008 then
        endif
        set integer057=R2I(loc_real01)
        set integer056=R2I(loc_real02)
        call ForGroup(loc_group01,function Func0562)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    return false
endfunction

// 13764 ~ 14146
function Func0568 takes nothing returns nothing
    local boolean loc_boolean01=false
    local unit loc_unit01=GetDyingUnit()
    local unit loc_unit02=GetKillingUnit()
    local player loc_player01=GetOwningPlayer(loc_unit02)
    local player loc_player02=GetOwningPlayer(loc_unit01)
    local location loc_location01
    local integer loc_integer01=0
    local integer loc_integer02=0
    local boolean loc_boolean02=false
    local string loc_string01=""
    local string loc_string02=""
    local string loc_string03=""
    local string loc_string04
    local integer loc_integer03
    local string loc_string05
    local string loc_string06
    local string loc_string07
    local string loc_string08
    local boolean loc_boolean03=false
    local real loc_real01=1
    local real loc_real02=1
    local real loc_real03=1
    local real loc_real04=1
    local real loc_real05=0
    local real loc_real06=1
    local trigger loc_trigger01
    local integer loc_integer04
    local integer loc_integer05
    local integer loc_integer06
    local integer loc_integer07=GetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD)
    local integer loc_integer08=loc_integer07-integers081[GetPlayerId(loc_player02)]
    local unit loc_unit03
    local unit loc_unit04
    local boolean loc_boolean04=((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4418))))==1)
    if IsPlayerAlly(loc_player01,loc_player02)==false and Func0558(loc_player01)==false then
        set unit242=GetTriggerUnit()
        call ExecuteFunc("Func0567")
    endif
    if loc_boolean04 then
        set booleans017[GetPlayerId((loc_player02))]=true
    endif
    if loc_unit02==null and GetUnitTypeId(loc_unit01)=='Npbm' then
        set loc_unit02=unit400
        set loc_player01=GetOwningPlayer(loc_unit02)
    endif
    if IsPlayerAlly(loc_player01,loc_player02)==true and((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4328))))==1)==true and unit416!=null then
        set loc_unit02=unit416
        set loc_player01=GetOwningPlayer(loc_unit02)
    endif
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4333))))==1)then
        set loc_unit02=unit351
        set loc_player01=GetOwningPlayer(loc_unit02)
    endif
    set loc_integer05=Func0523(loc_unit01,loc_unit02)
    if loc_unit02!=null then
        set loc_integer06=GetUnitTypeId(loc_unit02)
        call Func0538(units001[GetPlayerId(GetOwningPlayer(loc_unit02))],loc_unit01)
    endif
    if Func0560(loc_player02,loc_player01,loc_unit02)==false and loc_integer05==1 and Func0058(loc_player01)==false and loc_player01!=player001 then
        call Func0524(loc_unit01,loc_unit02)
        set loc_player01=players005[1]
        set loc_unit02=units001[GetPlayerId(loc_player01)]
    endif
    if Func0056(GetOwningPlayer(loc_unit01))then
        if GetOwningPlayer(loc_unit01)!=players003[1]then
        endif
        if GetOwningPlayer(loc_unit01)!=players003[2]then
        endif
        if GetOwningPlayer(loc_unit01)!=players003[3]then
        endif
        if GetOwningPlayer(loc_unit01)!=players003[4]then
        endif
        if GetOwningPlayer(loc_unit01)!=players003[5]then
        endif
    else
        if GetOwningPlayer(loc_unit01)!=players004[1]then
        endif
        if GetOwningPlayer(loc_unit01)!=players004[2]then
        endif
        if GetOwningPlayer(loc_unit01)!=players004[3]then
        endif
        if GetOwningPlayer(loc_unit01)!=players004[4]then
        endif
        if GetOwningPlayer(loc_unit01)!=players004[5]then
        endif
    endif
    set booleans010[GetPlayerId(GetOwningPlayer((loc_unit01)))]=true
    if GetUnitAbilityLevel(loc_unit01,'A0OV')!=0 or(Func0529(loc_unit01)and Func0530(loc_unit01))then
        set loc_boolean03=true
        call UnitRemoveAbility(loc_unit01,'A0OV')
        set unit002=loc_unit01
        set unit003=loc_unit02
        if IsUnitType(loc_unit02,UNIT_TYPE_STRUCTURE)==false then
        endif
    endif
    if loc_player01==null then
        set loc_player01=loc_player02
    endif
    if boolean007 and GetUnitTypeId(loc_unit01)!='H00J' then
        set item001=UnitRemoveItemFromSlot(loc_unit01,GetRandomInt(0,5))
        if GetItemTypeId(item001)=='I00K' then
            call CreateItem('I00G',GetItemX(item001),GetItemY(item001))
            call RemoveItem(item001)
        endif
    endif
    if Func0056(loc_player02)then
        if Func0056(loc_player01)then
            set loc_boolean01=true
            if(loc_player01==loc_player02)then
                call Func0152(force003,10.00,(strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+"|r "+GetObjectName('n03R')))
            else
                call Func0152(force003,10.00,Func0419(loc_player02,loc_player01))
            endif
        elseif Func0057(loc_player01)then
            set loc_boolean02=true
            set integers002[GetPlayerId(players003[0])]=integers002[GetPlayerId(players003[0])]+1
            set integers001[GetPlayerId(players004[0])]=integers001[GetPlayerId(players004[0])]+1
            set integers021[2]=integers021[2]+1
            set integers021[1]=0
            if loc_player01!=players004[0]then
                set integers001[GetPlayerId(loc_player01)]=integers001[GetPlayerId(loc_player01)]+1
                set integers019[GetPlayerId(loc_player01)]=integers019[GetPlayerId(loc_player01)]+1
            endif
        endif
    endif
    if Func0057(loc_player02)then
        if Func0057(loc_player01)then
            set loc_boolean01=true
            if(loc_player01==loc_player02)then
                call Func0152(force003,10.00,(strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+"|r "+GetObjectName('n03R')))
            else
                call Func0152(force003,10.00,Func0419(loc_player02,loc_player01))
            endif
        elseif Func0056(loc_player01)then
            set loc_boolean02=true
            set integers002[GetPlayerId(players004[0])]=integers002[GetPlayerId(players004[0])]+1
            set integers001[GetPlayerId(players003[0])]=integers001[GetPlayerId(players003[0])]+1
            set integers021[1]=integers021[1]+1
            set integers021[2]=0
            if loc_player01!=players003[0]then
                set integers001[GetPlayerId(loc_player01)]=integers001[GetPlayerId(loc_player01)]+1
                set integers019[GetPlayerId(loc_player01)]=integers019[GetPlayerId(loc_player01)]+1
            endif
        endif
    endif
    if loc_player01==player001 then
        set loc_boolean02=false
        if GetUnitTypeId(loc_unit02)=='n00L' then
            call Func0152(force003,10.00,(strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+"|r "+GetObjectName('n03T')))
        else
            call Func0152(force003,10.00,(strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+"|r "+GetObjectName('n03U')))
        endif
        set loc_boolean01=true
    endif
    if boolean063 then
        call Func0184(sound010,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    endif
    call Func0415("Hero"+I2S(GetPlayerId(loc_player02)),GetPlayerId(loc_player01))
    set loc_integer03=integers019[GetPlayerId(loc_player02)]
    if loc_integer03>2 and loc_boolean01==false then
        if loc_integer03==3 then
            set loc_integer01=60
            set loc_string01="|c0000ff40"+GetObjectName('n04L')+"|r"
        elseif loc_integer03==4 then
            set loc_integer01=120
            set loc_string01="|c00400080"+GetObjectName('n04N')+"|r"
        elseif loc_integer03==5 then
            set loc_integer01=180
            set loc_string01="|c00ff0080"+GetObjectName('n04M')+"|r"
        elseif loc_integer03==6 then
            set loc_integer01=240
            set loc_string01="|c00ff8000"+GetObjectName('n04J')+"|r"
        elseif loc_integer03==7 then
            set loc_integer01=300
            set loc_string01="|c00808000"+GetObjectName('n04I')+"|r"
        elseif loc_integer03==8 then
            set loc_integer01=360
            set loc_string01="|c00ff80ff"+GetObjectName('n03V')+"|r"
        elseif loc_integer03==9 then
            set loc_integer01=420
            set loc_string01="|c00ff0000"+GetObjectName('n03W')+"|r"
        else
            set loc_integer01=480
            set loc_string01="|c00ff8000"+GetObjectName('n03X')+"|r"
        endif
    endif
    set loc_integer03=integers019[GetPlayerId(loc_player01)]
    if loc_integer03>integers010[GetPlayerId(loc_player01)]then
        set integers010[GetPlayerId(loc_player01)]=loc_integer03
    endif
    set loc_unit03=loc_unit02
    if IsUnitType(loc_unit03,UNIT_TYPE_HERO)==false then
        set loc_unit03=units001[GetPlayerId(GetOwningPlayer(loc_unit03))]
    endif
    if loc_integer03>2 and GetUnitTypeId(loc_unit03)!='U00F' and integers121[GetPlayerId(GetOwningPlayer(loc_unit03))]==0 then
    endif
    set loc_unit04=loc_unit01
    if IsUnitType(loc_unit04,UNIT_TYPE_HERO)==false then
        set loc_unit04=units001[GetPlayerId(GetOwningPlayer(loc_unit04))]
    endif
    if loc_boolean01==false and loc_boolean02==true then
    endif
    if loc_integer03>2 and loc_boolean01==false then
        if loc_integer03==3 then
            call Func0227(sound016)
            set loc_string02=" "+GetObjectName('n04K')+" |c0000ff40"+GetObjectName('n04L')+"|r"+GetObjectName('n049')
        elseif loc_integer03==4 then
            call Func0227(sound006)
            set loc_string02=" "+GetObjectName('n04H')+" |c00400080"+GetObjectName('n04N')+"|r"+GetObjectName('n049')
        elseif loc_integer03==5 then
            call Func0227(sound018)
            set loc_string02=" "+GetObjectName('n04G')+" |c00ff0080"+GetObjectName('n04M')+"|r"+GetObjectName('n049')
        elseif loc_integer03==6 then
            call Func0227(sound034)
            set loc_string02=" "+GetObjectName('n04H')+" |c00ff8000"+GetObjectName('n04J')+"|r"+GetObjectName('n04A')
        elseif loc_integer03==7 then
            call Func0227(sound037)
            set loc_string02=" "+GetObjectName('n04H')+" |c00808000"+GetObjectName('n04I')+"|r"+GetObjectName('n04A')
        elseif loc_integer03==8 then
            call Func0227(sound020)
            set loc_string02=" "+GetObjectName('n04G')+" |c00ff80ff"+GetObjectName('n03V')+"|r"+GetObjectName('n04A')
        elseif loc_integer03==9 then
            call Func0227(sound011)
            set loc_string02=" "+GetObjectName('n04H')+" |c00ff0000"+GetObjectName('n03W')+"|r"+GetObjectName('n04B')
        else
            call Func0227(sound013)
            set loc_string02=" "+GetObjectName('n04H')+" |c00ff8000"+GetObjectName('n03X')+"|r. "+GetObjectName('n04F')+GetObjectName('n04B')
        endif
    endif
    if loc_boolean01==false then
        set loc_integer01=loc_integer01+100+GetHeroLevel(loc_unit01)*9+100
        set loc_string05=strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+"|r"
        set loc_string06=strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"
        set loc_string08="|c00FFDC00"+I2S(loc_integer01)+"|r"
        if loc_player01==players003[0]or loc_player01==players004[0]then
            if loc_integer05==0 then
                if loc_player01==players003[0]then
                    set loc_string07=loc_string06+" "+GetObjectName('n042')+" "+loc_string05+GetObjectName('n043')+GetObjectName('n049')+" "+loc_string08+" "+GetObjectName('n044')+"."
                    call Func0554(loc_player01,loc_integer01)
                elseif loc_player01==players004[0]then
                    set loc_string07=loc_string06+" "+GetObjectName('n042')+" "+loc_string05+GetObjectName('n043')+GetObjectName('n049')+" "+loc_string08+" "+GetObjectName('n044')+"."
                    call Func0554(loc_player01,loc_integer01)
                endif
            elseif loc_integer05>1 then
                set loc_string07=loc_string06+" "+GetObjectName('n042')+" "+loc_string05+GetObjectName('n043')+GetObjectName('n049')+" "+loc_string08+" "+GetObjectName('n044')+"."
                call Func0525(loc_unit01,loc_unit02,loc_integer01)
            endif
        elseif loc_string01==""and loc_string02==""then
            set loc_string07=loc_string06+" "+GetObjectName('n042')+" "+loc_string05+GetObjectName('n043')+" "+GetObjectName('n04C')+" "+loc_string08+" "+GetObjectName('n045')+GetObjectName('n049')
        elseif loc_string01==""and loc_string02!=""then
            set loc_string07=loc_string06+" "+GetObjectName('n042')+" "+loc_string05+GetObjectName('n043')+" "+GetObjectName('n04C')+" "+loc_string08+" "+GetObjectName('n045')+GetObjectName('n049')
        elseif loc_string01!=""and loc_string02==""then
            set loc_string07=loc_string06+" "+GetObjectName('n048')+" "+loc_string05+GetObjectName('n047')+" "+loc_string01+" "+GetObjectName('n046')+" "+loc_string08+" "+GetObjectName('n045')+GetObjectName('n049')
        elseif loc_string01!=""and loc_string02!=""then
            set loc_string07=loc_string06+" "+GetObjectName('n048')+" "+loc_string05+GetObjectName('n047')+" "+loc_string01+" "+GetObjectName('n046')+" "+loc_string08+" "+GetObjectName('n045')+GetObjectName('n049')
        endif
        if loc_boolean02 then
            set loc_string03=Func0521(loc_unit01,loc_unit02)
        endif
        call Func0152(force003,10,loc_string07+loc_string03)
        if loc_string02!=""then
            call Func0152(force003,10,loc_string06+loc_string02)
        endif
        set integers081[GetPlayerId(loc_player01)]=integers081[GetPlayerId(loc_player01)]+loc_integer01
        set integers080[GetPlayerId(loc_player01)]=integers080[GetPlayerId(loc_player01)]+loc_integer01
        call Func0240(loc_player01,loc_integer01,loc_unit01)
        set integers015[GetPlayerId(loc_player01)]=integers015[GetPlayerId(loc_player01)]+loc_integer01
        if integers021[1]>4 then
            call Func0551(0)
        endif
        if integers021[2]>4 then
            call Func0551(1)
        endif
    endif
    set loc_integer02=GetHeroLevel(loc_unit01)*30
    if Func0394(loc_unit01,integers089[integer235])!=null then
        if GetItemCharges(Func0394(loc_unit01,integers089[integer235]))>0 then
            set loc_real05=-1*(4*GetItemCharges(Func0394(loc_unit01,integers089[integer235])))
            set loc_integer02=IMaxBJ(R2I(loc_integer02-25*GetItemCharges(Func0394(loc_unit01,integers089[integer235]))),0)
        endif
    endif
    if loc_integer02>loc_integer08 then
        set loc_integer02=loc_integer08
    endif
    call Func0543(loc_unit01,loc_unit03)
    call Func0549(loc_unit01)
    call Func0548(loc_unit01)
    if loc_boolean03==false then
        set integers009[GetPlayerId(loc_player02)]=integers009[GetPlayerId(loc_player02)]+loc_integer02
        call Func0555(loc_unit01,loc_integer02)
        call Func0537(loc_unit01,loc_integer02)
    endif
    call SaveInteger(hashtable001,(400+GetPlayerId(loc_player01)),(450+GetPlayerId(loc_player02)),((LoadInteger(hashtable001,(400+GetPlayerId(loc_player01)),(450+GetPlayerId(loc_player02))))+1))
    call SaveInteger(hashtable001,(400+GetPlayerId(loc_player02)),(500+GetPlayerId(loc_player01)),((LoadInteger(hashtable001,(400+GetPlayerId(loc_player02)),(500+GetPlayerId(loc_player01))))+1))
    call StartTimerBJ(timers001[GetPlayerId(loc_player01)],false,18)
    if loc_boolean01==false and loc_player01!=players003[0]and loc_player01!=players004[0]and loc_player01!=player001 then
        set integers020[GetPlayerId(loc_player01)]=integers020[GetPlayerId(loc_player01)]+1
        if integers020[GetPlayerId(loc_player01)]==2 then
            set integers011[GetPlayerId(loc_player01)]=integers011[GetPlayerId(loc_player01)]+1
            call Func0553(strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n04D')+" |c000000ff"+GetObjectName('n04S')+"|r"+GetObjectName('n049'),1)
        endif
        if integers020[GetPlayerId(loc_player01)]==3 then
            set integers012[GetPlayerId(loc_player01)]=integers012[GetPlayerId(loc_player01)]+1
            call Func0553(strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n04D')+" |c0000ff40"+GetObjectName('n04E')+"|r"+GetObjectName('n04B'),2)
        endif
        if integers020[GetPlayerId(loc_player01)]==4 then
            set integers012[GetPlayerId(loc_player01)]=integers012[GetPlayerId(loc_player01)]+1
            call Func0553(strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n04D')+" |c0000FFFF"+GetObjectName('n0HJ')+"|r"+GetObjectName('n04B'),3)
        endif
        if integers020[GetPlayerId(loc_player01)]>4 then
            set integers012[GetPlayerId(loc_player01)]=integers012[GetPlayerId(loc_player01)]+1
            call Func0553(strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r "+GetObjectName('n04K')+" |c0000AAFF"+GetObjectName('n0HK')+"|r"+GetObjectName('n04B'),4)
        endif
    endif
    if(loc_boolean01==false)then
        set integers019[GetPlayerId(loc_player02)]=0
    endif
    set integers019[0]=0
    set integers019[6]=0
    set integers002[GetPlayerId(loc_player02)]=integers002[GetPlayerId(loc_player02)]+1
    if loc_boolean03 then
        set loc_real01=0.4
    endif
    if loc_boolean01==true and GetUnitTypeId(loc_unit01)=='H00K' then
        set loc_real04=0.5
    endif
    set loc_integer04=R2I((GetHeroLevel(loc_unit01)*3.8+5)*loc_real01*loc_real02*loc_real03*loc_real04)+R2I(loc_real05)
    if boolean131==true then
        set loc_integer04=R2I(loc_integer04*0.5)
    endif
    set loc_integer04=loc_integer04+integers066[GetPlayerId(loc_player02)]
    if(((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4333))))==1)==true)then
        set loc_integer04=R2I(loc_integer04+30)
    endif
    if GetUnitAbilityLevel(loc_unit01,'A0MW')==1 or GetUnitAbilityLevel(loc_unit01,'A27C')==1 then
        set loc_real06=0.8
    endif
    if GetUnitAbilityLevel(loc_unit01,'A0MW')==2 or GetUnitAbilityLevel(loc_unit01,'A27C')==2 then
        set loc_real06=0.8
    endif
    if GetUnitAbilityLevel(loc_unit01,'A0MW')==3 or GetUnitAbilityLevel(loc_unit01,'A27C')==3 then
        set loc_real06=0.8
    endif
    set loc_integer04=R2I(loc_integer04*loc_real06)
    if boolean056 then
        set integers013[GetPlayerId(loc_player02)]=0
        call TimerStart(timers002[GetPlayerId(loc_player02)],1.00,false,null)
    else
        set integers013[GetPlayerId(loc_player02)]=integers013[GetPlayerId(loc_player02)]+loc_integer04
        call TimerStart(timers002[GetPlayerId(loc_player02)],loc_integer04,false,null)
    endif
    call TriggerExecute(trigger026)
    if boolean003==false then
        call Func0534(loc_unit01,loc_integer04,loc_boolean03)
    else
        if(Func0056(loc_player02))then
            set integers024[0]=integers024[0]+1
        endif
        if Func0057(loc_player02)then
            set integers024[1]=integers024[1]+1
        endif
        set units002[GetPlayerId(loc_player02)]=loc_unit01
        if GetUnitTypeId(loc_unit01)=='H00J' then
            set units002[GetPlayerId(loc_player02)]=(LoadUnitHandle(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit01))),(699)))
        endif
        if integers024[0]==integer028 then
            call TriggerExecute(trigger048)
        endif
        if integers024[1]==integer028 then
            call TriggerExecute(trigger047)
        endif
        if(GetUnitTypeId(loc_unit01)=='U006')then
            call ExecuteFunc("Func0557")
        elseif GetUnitTypeId(loc_unit01)=='U008' or GetUnitTypeId(loc_unit01)=='E015' then
            set unit127=loc_unit01
            call ExecuteFunc("Func3234")
        elseif GetUnitTypeId(loc_unit01)=='Ucrl' then
            set unit127=loc_unit01
            call ExecuteFunc("Func2582")
        endif
    endif
endfunction
