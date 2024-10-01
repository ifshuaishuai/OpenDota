
// 16848 ~ 16851
function Func0646 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    return loc_integer01=='Eevi' or loc_integer01=='Eevm' or loc_integer01=='E02V' or loc_integer01=='E02W' or loc_integer01=='E02U'
endfunction

// 16853 ~ 16969
function Func0647 takes unit loc_unit01,item loc_item01 returns nothing
    local unit loc_unit02=loc_unit01
    local integer loc_integer01=GetUnitTypeId(loc_unit02)
    local integer loc_integer02=Func0381(loc_item01)
    if IsUnitType(loc_unit02,UNIT_TYPE_MELEE_ATTACKER)==true or IsUnitType(loc_unit02,UNIT_TYPE_HERO)==false then
        if loc_integer02==integer223 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer222])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer127 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer126])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer109 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer108])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer249 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer248])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer229 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer228])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer068 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer067])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer200 then
            if Func0646(loc_unit02)==false then
                set player005=GetItemPlayer(loc_item01)
                call Func0392(loc_item01)
                set item002=UnitAddItemById(loc_unit02,integers089[integer199])
                call SetItemPlayer(item002,player005,false)
                call SetItemUserData(item002,1)
            endif
        elseif loc_integer02==integer199 then
            if Func0646(loc_unit02)==true then
                set player005=GetItemPlayer(loc_item01)
                call Func0392(loc_item01)
                set item002=UnitAddItemById(loc_unit02,integers089[integer200])
                call SetItemPlayer(item002,player005,false)
                call SetItemUserData(item002,1)
            endif
        elseif loc_integer02==integer131 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer130])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        endif
    else
        if loc_integer02==integer222 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer223])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer126 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer127])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer108 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer109])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer248 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer249])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer228 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer229])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer067 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer068])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer199 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer200])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer130 then
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer131])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        endif
    endif
    set loc_unit02=null
endfunction

// 16971 ~ 17079
function Func0648 takes unit loc_unit01,item loc_item01 returns nothing
    local unit loc_unit02=loc_unit01
    local integer loc_integer01=GetUnitTypeId(loc_unit02)
    local integer loc_integer02=Func0381(loc_item01)
    if IsUnitType(loc_unit02,UNIT_TYPE_MELEE_ATTACKER)==false or IsUnitType(loc_unit02,UNIT_TYPE_HERO)==false then
        if loc_integer02==integer223 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer222])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer127 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer126])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer109 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer108])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer249 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer248])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer229 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer228])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer068 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer067])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer200 then
            if Func0646(loc_unit02)==false then
                set player005=GetItemPlayer(loc_item01)
                call RemoveItem(loc_item01)
                set item002=UnitAddItemById(loc_unit02,integers089[integer199])
                call SetItemPlayer(item002,player005,false)
                call SetItemUserData(item002,1)
            endif
        elseif loc_integer02==integer131 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer130])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        endif
    else
        if loc_integer02==integer222 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer223])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer126 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer127])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer108 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer109])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer248 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer249])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer228 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer229])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer067 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer068])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer199 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer200])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        elseif loc_integer02==integer130 then
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=UnitAddItemById(loc_unit02,integers089[integer131])
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        endif
    endif
    set loc_unit02=null
endfunction

// 17081 ~ 17095
function Func0649 takes unit loc_unit01 returns nothing
    local integer loc_integer01=0
    local item loc_item01
    call DisableTrigger(trigger057)
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        if loc_item01!=null then
            call Func0648(loc_unit01,loc_item01)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    call EnableTrigger(trigger057)
    set loc_item01=null
endfunction

// 17097 ~ 17244
function Func0650 takes unit loc_unit01,item loc_item01 returns boolean
    local unit loc_unit02=loc_unit01
    local integer loc_integer01=GetUnitTypeId(loc_unit02)
    local integer loc_integer02=Func0380(loc_item01)
    local real loc_real01
    local real loc_real02
    local boolean loc_boolean01=true
    local integer loc_integer03=(LoadInteger(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit02))),(4345)))
    local integer loc_integer04=0
    local integer loc_integer05
    if loc_integer03==0 then
        set loc_integer03=10
    endif
    set loc_real01=GetUnitX(loc_unit02)
    set loc_real02=GetUnitY(loc_unit02)
    if(loc_integer02==integer191 and loc_integer03<10)or(loc_integer02==integer192 and loc_integer03<9)or(loc_integer02==integer193 and loc_integer03<8)or(loc_integer02==integer194 and loc_integer03<7)or(loc_integer02==integer195 and loc_integer03<6)or(loc_integer02==integer196 and loc_integer03<5)or(loc_integer02==integer197 and loc_integer03<4)then
        if loc_integer03==10 then
            set loc_integer04=integer191
        elseif loc_integer03==9 then
            set loc_integer04=integer192
        elseif loc_integer03==8 then
            set loc_integer04=integer193
        elseif loc_integer03==7 then
            set loc_integer04=integer194
        elseif loc_integer03==6 then
            set loc_integer04=integer195
        elseif loc_integer03==5 then
            set loc_integer04=integer196
        elseif loc_integer03==4 then
            set loc_integer04=integer197
        endif
        if loc_integer04>0 then
            set loc_integer05=Func0232(loc_unit02,loc_item01)
            set player005=GetItemPlayer(loc_item01)
            call RemoveItem(loc_item01)
            set item002=Func0410(loc_unit02,integers089[loc_integer04],loc_integer05)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
        endif
    endif
    if loc_integer02==integer114 then
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl",loc_unit02,"overhead"))
        call Func0118(GetOwningPlayer(loc_unit02),"Abilities\\Spells\\Human\\Heal\\HealTarget.wav")
        set player005=GetItemPlayer(loc_item01)
        call Func0392(loc_item01)
        set item002=UnitAddItemById(loc_unit02,integers089[integer118])
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    if loc_integer02==integer177 and GetItemCharges(loc_item01)==0 then
        set player005=GetItemPlayer(loc_item01)
        call Func0392(loc_item01)
        set item002=UnitAddItemById(loc_unit02,integers089[integer179])
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    if loc_integer02==integer132 and GetItemCharges(loc_item01)==0 then
        set player005=GetItemPlayer(loc_item01)
        call Func0392(loc_item01)
        set item002=UnitAddItemById(loc_unit02,integers089[integer133])
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    call DisableTrigger(trigger057)
    if(loc_integer02==integer163 or loc_integer02==integer162 or loc_integer02==integer164)and(Func0393(loc_unit02,integers089[integer163],loc_item01)!=null or Func0393(loc_unit02,integers089[integer162],loc_item01)!=null or Func0393(loc_unit02,integers089[integer164],loc_item01)!=null)then
        call Func0120(GetOwningPlayer(loc_unit02),GetObjectName('n02L'))
        set player005=GetItemPlayer(loc_item01)
        call RemoveItem(loc_item01)
        set item002=CreateItem(integers088[loc_integer02],loc_real01,loc_real02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    if(loc_integer02==integer126)and(Func0393(loc_unit02,integers089[integer126],loc_item01)!=null or Func0393(loc_unit02,integers089[integer127],loc_item01)!=null)then
        call Func0120(GetOwningPlayer(loc_unit02),GetObjectName('n0HL'))
        set player005=GetItemPlayer(loc_item01)
        call RemoveItem(loc_item01)
        set item002=CreateItem(integers088[loc_integer02],loc_real01,loc_real02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
        set loc_boolean01=false
    endif
    if loc_boolean01 and(loc_integer02==integer127)and(Func0393(loc_unit02,integers089[integer126],loc_item01)!=null or Func0393(loc_unit02,integers089[integer127],loc_item01)!=null)then
        call Func0120(GetOwningPlayer(loc_unit02),GetObjectName('n0HL'))
        set player005=GetItemPlayer(loc_item01)
        call RemoveItem(loc_item01)
        set item002=CreateItem(integers088[loc_integer02],loc_real01,loc_real02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
        set loc_boolean01=false
    endif
    if(loc_integer02==integer238 or loc_integer02==integer237 or loc_integer02==integer240 or loc_integer02==integer239)and(Func0393(loc_unit02,integers089[integer238],loc_item01)!=null or Func0393(loc_unit02,integers089[integer237],loc_item01)!=null or Func0393(loc_unit02,integers089[integer240],loc_item01)!=null or Func0393(loc_unit02,integers089[integer239],loc_item01)!=null)then
        call Func0120(GetOwningPlayer(loc_unit02),GetObjectName('n02C'))
        set player005=GetItemPlayer(loc_item01)
        call RemoveItem(loc_item01)
        set item002=CreateItem(integers088[loc_integer02],loc_real01,loc_real02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    if(loc_integer02==integer212 and IsPlayerEnemy(GetItemPlayer(loc_item01),GetOwningPlayer(loc_unit02)))then
        set player005=GetItemPlayer(loc_item01)
        call Func0392(loc_item01)
        set item002=UnitAddItemById(loc_unit02,integers089[integer213])
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    if(loc_integer02==integer198)and(Func0095(loc_unit02)or Func0262(loc_unit02))then
        if Func0095(loc_unit02)then
            call Func0120(GetOwningPlayer(loc_unit02),GetObjectName('n02K'))
        endif
        set player005=GetItemPlayer(loc_item01)
        set integer022=GetItemCharges(loc_item01)
        call RemoveItem(loc_item01)
        if loc_integer02==integer198 then
            set item002=CreateItem(integers088[loc_integer02],GetRectCenterX(rect033),GetRectCenterY(rect033))
        endif
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
        if loc_integer02==integer198 then
            call SetItemCharges(item002,integer022)
        endif
    endif
    if Func0262(loc_unit02)and loc_integer02==integer135 then
        set player005=GetItemPlayer(loc_item01)
        call RemoveItem(loc_item01)
        set item002=UnitAddItemById(loc_unit02,integers089[integer136])
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    endif
    if loc_boolean01 and(loc_integer02==integer126 or loc_integer02==integer127)and(loc_integer01=='H06S')then
        call Func0120(GetOwningPlayer(loc_unit02),GetObjectName('n02J'))
        set player005=GetItemPlayer(loc_item01)
        call RemoveItem(loc_item01)
        set item002=CreateItem(integers088[loc_integer02],loc_real01,loc_real02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
        set loc_boolean01=false
    endif
    if(loc_integer02==integer191 or loc_integer02==integer192 or loc_integer02==integer193 or loc_integer02==integer194 or loc_integer02==integer195 or loc_integer02==integer196)and loc_integer01=='U00C' then
        call DisplayTimedTextToPlayer(GetOwningPlayer(loc_unit02),0,real003,10,"|c00ff0303"+GetObjectName('n02P')+"|r")
    endif
    call EnableTrigger(trigger057)
    if loc_boolean01 then
        call Func0647(loc_unit01,loc_item01)
    endif
    set loc_unit02=null
    set loc_item01=null
    return false
endfunction
