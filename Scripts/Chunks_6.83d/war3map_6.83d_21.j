
// 6402 ~ 6441
function Func0371 takes unit loc_unit01,integer loc_integer01,integer loc_integer02 returns nothing
    local integer loc_integer03
    if integers158[1]==0 then
        return
    endif
    set loc_integer03=1
    loop
        exitwhen loc_integer03>10
        call UnitRemoveAbility(loc_unit01,integers158[loc_integer03])
        set loc_integer03=loc_integer03+1
    endloop
    set loc_integer03=1
    loop
        exitwhen loc_integer03>10
        call UnitRemoveAbility(loc_unit01,integers159[loc_integer03])
        set loc_integer03=loc_integer03+1
    endloop
    set loc_integer03=1
    loop
        exitwhen loc_integer03>10
        call UnitRemoveAbility(loc_unit01,integers160[loc_integer03])
        set loc_integer03=loc_integer03+1
    endloop
    set loc_integer03=1
    loop
        exitwhen loc_integer03>10
        call UnitRemoveAbility(loc_unit01,integers161[loc_integer03])
        set loc_integer03=loc_integer03+1
    endloop
    call UnitRemoveAbility(loc_unit01,'B0BS')
    if loc_integer01==1 then
        call UnitAddAbility(loc_unit01,integers158[loc_integer02])
    elseif loc_integer01==2 then
        call UnitAddAbility(loc_unit01,integers159[loc_integer02])
    elseif loc_integer01==3 then
        call UnitAddAbility(loc_unit01,integers160[loc_integer02])
    elseif loc_integer01==4 then
        call UnitAddAbility(loc_unit01,integers161[loc_integer02])
    endif
endfunction

// 6443 ~ 6446
function Func0372 takes integer loc_integer01 returns nothing
    set integer037=integer037+1
    set integers053[integer037]=loc_integer01
endfunction

// 6448 ~ 6455
function Func0373 takes unit loc_unit01 returns nothing
    local integer loc_integer01=1
    loop
        exitwhen loc_integer01>integer037
        call UnitRemoveAbility(loc_unit01,integers053[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 6457 ~ 6459
function Func0374 takes integer loc_integer01 returns boolean
    return loc_integer01=='AIpg' or loc_integer01=='A02V' or loc_integer01=='ACpu' or loc_integer01=='A18D' or loc_integer01=='A1OU' or loc_integer01=='AIcy' or loc_integer01=='A1SA' or loc_integer01=='A2T2'
endfunction

// 6461 ~ 6468
function Func0375 takes unit loc_unit01 returns nothing
    call UnitRemoveAbility(loc_unit01,'Aetl')
    call UnitRemoveAbility(loc_unit01,'BHtc')
    call UnitRemoveAbility(loc_unit01,'A1W3')
    call UnitRemoveAbility(loc_unit01,'B0DO')
    call UnitRemoveAbility(loc_unit01,'B02U')
    call Func0371(loc_unit01,0,0)
endfunction

// 6470 ~ 6475
function Func0376 takes nothing returns boolean
    if Func0374(GetSpellAbilityId())then
        call Func0375(GetSpellTargetUnit())
    endif
    return false
endfunction

// 6477 ~ 6483
function Func0377 takes integer loc_integer01 returns integer
    if integers094[loc_integer01]==0 then
        return loc_integer01
    else
        return integers094[loc_integer01]
    endif
endfunction

// 6485 ~ 6487
function Func0378 takes integer loc_integer01 returns boolean
    return loc_integer01==integer123 or loc_integer01==integer121 or loc_integer01==integer120 or loc_integer01==integer122 or loc_integer01==integer119 or loc_integer01==integer124
endfunction

// 6489 ~ 6504
function Func0379 takes unit loc_unit01,integer loc_integer01 returns boolean
    local integer loc_integer02
    local item loc_item01
    set loc_integer02=0
    loop
        exitwhen loc_integer02>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
        if loc_item01!=null and GetItemTypeId(loc_item01)==loc_integer01 then
            set loc_item01=null
            return true
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_item01=null
    return false
endfunction

// 6506 ~ 6521
function Func0380 takes item loc_item01 returns integer
    local integer loc_integer01
    local integer loc_integer02=1
    if loc_item01==null then
        return-2
    endif
    set loc_integer01=GetItemTypeId(loc_item01)
    loop
        exitwhen loc_integer02>integer066
        if integers088[loc_integer02]==loc_integer01 or integers089[loc_integer02]==loc_integer01 or integers091[loc_integer02]==loc_integer01 then
            return loc_integer02
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return-1
endfunction

// 6523 ~ 6538
function Func0381 takes item loc_item01 returns integer
    local integer loc_integer01
    local integer loc_integer02=1
    if loc_item01==null then
        return-2
    endif
    set loc_integer01=GetItemTypeId(loc_item01)
    loop
        exitwhen loc_integer02>integer066
        if integers088[loc_integer02]==loc_integer01 or integers089[loc_integer02]==loc_integer01 then
            return loc_integer02
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return-1
endfunction

// 6540 ~ 6680
function Func0382 takes unit loc_unit01 returns integer
    local integer loc_integer01
    if loc_unit01==null then
        return-2
    endif
    set loc_integer01=GetUnitTypeId(loc_unit01)
    if loc_integer01=='Hblm' or loc_integer01=='H06X' or loc_integer01=='H06Y' or loc_integer01=='H06W' or loc_integer01=='H0BC' then
        return integer323
    elseif loc_integer01=='H004' then
        return integer326
    elseif loc_integer01=='UC18' then
        return integer327
    elseif loc_integer01=='Hmkg' then
        return integer331
    elseif loc_integer01=='Ucrl' or loc_integer01=='U01X' then
        return integer367
    elseif loc_integer01=='H00H' then
        return integer334
    elseif loc_integer01=='UC01' then
        return integer335
    elseif loc_integer01=='Orkn' then
        return integer336
    elseif loc_integer01=='Hmbr' then
        return integer340
    elseif loc_integer01=='Hjai' then
        return integer337
    elseif loc_integer01=='Ulic' then
        return integer325
    elseif loc_integer01=='Ekee' then
        return integer324
    elseif loc_integer01=='Emns' then
        return integer322
    elseif loc_integer01=='EC57' then
        return integer338
    elseif loc_integer01=='U00E' then
        return integer330
    elseif loc_integer01=='E005' then
        return integer329
    elseif loc_integer01=='E01A' then
        return integer339
    elseif loc_integer01=='UC42' then
        return integer328
    elseif loc_integer01=='Npbm' then
        return integer352
    elseif loc_integer01=='H00T' then
        return integer342
    elseif loc_integer01=='Hvwd' then
        return integer343
    elseif loc_integer01=='Nbbc' then
        return integer344
    elseif loc_integer01=='H00A' then
        return integer346
    elseif loc_integer01=='Udre' then
        return integer347
    elseif loc_integer01=='E00P' then
        return integer348
    elseif loc_integer01=='U00K' then
        return integer349
    elseif loc_integer01=='H00Q' then
        return integer350
    elseif loc_integer01=='H00U' then
        return integer351
    elseif loc_integer01=='U00F' then
        return integer353
    elseif loc_integer01=='N0EG' then
        return integer354
    elseif loc_integer01=='EC45' then
        return integer355
    elseif loc_integer01=='O00J' then
        return integer356
    elseif loc_integer01=='Oshd' then
        return integer357
    elseif loc_integer01=='Udea' then
        return integer358
    elseif loc_integer01=='N01W' then
        return integer359
    elseif loc_integer01=='H00K' then
        return integer360
    elseif loc_integer01=='Opgh' then
        return integer361
    elseif loc_integer01=='Otch' then
        return integer362
    elseif loc_integer01=='H00R' then
        return integer333
    elseif loc_integer01=='H07I' then
        return integer333
    elseif loc_integer01=='N00B' then
        return integer363
    elseif loc_integer01=='E01C' then
        return integer364
    elseif loc_integer01=='E002' then
        return integer365
    elseif loc_integer01=='EC77' then
        return integer366
    elseif loc_integer01=='U00P' then
        return integer368
    elseif loc_integer01=='Emoo' then
        return integer369
    elseif loc_integer01=='H00N' then
        return integer370
    elseif loc_integer01=='E02N' or loc_integer01=='E02O' then
        return integer371
    elseif loc_integer01=='H00I' then
        return integer372
    elseif loc_integer01=='H00D' then
        return integer373
    elseif loc_integer01=='UC60' then
        return integer374
    elseif loc_integer01=='N01A' then
        return integer375
    elseif loc_integer01=='N0HP' then
        return integer376
    elseif loc_integer01=='Harf' then
        return integer377
    elseif loc_integer01=='H0DO' then
        return integer378
    elseif loc_integer01=='Uktl' then
        return integer379
    elseif loc_integer01=='E02J' then
        return integer381
    elseif loc_integer01=='E02X' then
        return integer380
    elseif loc_integer01=='Ntin' then
        return integer382
    elseif loc_integer01=='E02H' then
        return integer383
    elseif loc_integer01=='E032' then
        return integer332
    elseif loc_integer01=='E02F' then
        return integer384
    elseif loc_integer01=='H001' or loc_integer01=='H0CQ' then
        return integer385
    elseif loc_integer01=='O015' then
        return integer386
    elseif loc_integer01=='Hamg' then
        return integer387
    elseif loc_integer01=='N0MU' or loc_integer01=='N0MW' then
        return integer388
    endif
    return integer321
endfunction

// 6682 ~ 6818
function Func0383 takes unit loc_unit01 returns integer
    local integer loc_integer01
    if loc_unit01==null then
        return-2
    endif
    set loc_integer01=GetUnitTypeId(loc_unit01)
    if loc_integer01=='Hblm' or loc_integer01=='H06X' or loc_integer01=='H06Y' or loc_integer01=='H06W' or loc_integer01=='H0BC' then
        return 'A0TL'
    elseif loc_integer01=='H004' then
        return 'A0TP'
    elseif loc_integer01=='UC18' then
        return 'A0TR'
    elseif loc_integer01=='Hmkg' then
        return 'A2KT'
    elseif loc_integer01=='Ucrl' or loc_integer01=='U01X' then
        return 0
    elseif loc_integer01=='H00H' then
        return 'A0TV'
    elseif loc_integer01=='UC01' then
        return 'A0TX'
    elseif loc_integer01=='Orkn' then
        return 'A0TZ'
    elseif loc_integer01=='Hmbr' then
        return 'A0U1'
    elseif loc_integer01=='Hjai' then
        return 'A0U3'
    elseif loc_integer01=='Ulic' then
        return 'A0U5'
    elseif loc_integer01=='Ekee' then
        return 'A0U7'
    elseif loc_integer01=='Emns' then
        return 'A0U9'
    elseif loc_integer01=='EC57' then
        return 'A0UB'
    elseif loc_integer01=='U00E' then
        return 'A0UD'
    elseif loc_integer01=='E005' then
        return 'A0UF'
    elseif loc_integer01=='E01A' then
        return 'A0UH'
    elseif loc_integer01=='UC42' then
        return 'A0UJ'
    elseif loc_integer01=='Npbm' then
        return 'A1BE'
    elseif loc_integer01=='H00T' then
        return 'A1B9'
    elseif loc_integer01=='Hvwd' then
        return 'A1BA'
    elseif loc_integer01=='Nbbc' then
        return 'A1BB'
    elseif loc_integer01=='H00A' then
        return 'A1CU'
    elseif loc_integer01=='Udre' then
        return 'A1BG'
    elseif loc_integer01=='E00P' then
        return 'A1BJ'
    elseif loc_integer01=='U00K' then
        return 'A1BC'
    elseif loc_integer01=='H00Q' then
        return 'A1BI'
    elseif loc_integer01=='H00U' then
        return 'A1BD'
    elseif loc_integer01=='U00F' then
        return 'A1CY'
    elseif loc_integer01=='N0EG' then
        return 'A1D2'
    elseif loc_integer01=='EC45' then
        return 'A1D1'
    elseif loc_integer01=='O00J' then
        return 'A1CZ'
    elseif loc_integer01=='Oshd' then
        return 'A1D0'
    elseif loc_integer01=='Udea' then
        return 'A1D3'
    elseif loc_integer01=='N01W' then
        return 'A1D4'
    elseif loc_integer01=='H00K' then
        return 'A1G1'
    elseif loc_integer01=='Opgh' then
        return 'A1MT'
    elseif loc_integer01=='Otch' then
        return 'A1N0'
    elseif loc_integer01=='N00B' then
        return 'A1QS'
    elseif loc_integer01=='E01C' then
        return 'A1UT'
    elseif loc_integer01=='E002' then
        return 'A1UU'
    elseif loc_integer01=='EC77' then
        return 'A1V1'
    elseif loc_integer01=='U00P' then
        return 'A1VY'
    elseif loc_integer01=='Emoo' then
        return 'A1WD'
    elseif loc_integer01=='H00N' then
        return 'A21S'
    elseif loc_integer01=='E02N' or loc_integer01=='E02O' then
        return 'A237'
    elseif loc_integer01=='H00I' then
        return 'A27E'
    elseif loc_integer01=='H00D' then
        return 'A28A'
    elseif loc_integer01=='UC60' then
        return 'A2IH'
    elseif loc_integer01=='N01A' then
        return 'A2QB'
    elseif loc_integer01=='N0HP' then
        return 'A2QF'
    elseif loc_integer01=='Harf' then
        return 'A2S7'
    elseif loc_integer01=='H0DO' then
        return 'A2TW'
    elseif loc_integer01=='Uktl' then
        return 'A2TZ'
    elseif loc_integer01=='E02J' then
        return 'A2VC'
    elseif loc_integer01=='E02X' then
        return 'A2VD'
    elseif loc_integer01=='Ntin' then
        return 'A2WD'
    elseif loc_integer01=='E02H' then
        return 'A2XG'
    elseif loc_integer01=='E032' then
        return 'A2YQ'
    elseif loc_integer01=='E02F' then
        return 'A2YT'
    elseif loc_integer01=='H001' or loc_integer01=='H0CQ' then
        return 'A2Z3'
    elseif loc_integer01=='O015' then
        return 'A2ZG'
    elseif loc_integer01=='Hamg' then
        return 'A314'
    elseif loc_integer01=='N0MU' or loc_integer01=='N0MW' then
        return 'A31N'
    endif
    return 0
endfunction

// 6820 ~ 6830
function Func0384 takes item loc_item01 returns boolean
    local integer loc_integer01=1
    loop
        exitwhen loc_integer01>integer401
        if loc_item01==items007[loc_integer01]then
            return true
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return false
endfunction

// 6832 ~ 6840
function Func0385 takes item loc_item01 returns boolean
    local integer loc_integer01=Func0380(loc_item01)
    if loc_integer01==integer321 or loc_integer01==integer322 or loc_integer01==integer323 or loc_integer01==integer324 or loc_integer01==integer325 or loc_integer01==integer326 or loc_integer01==integer327 or loc_integer01==integer328 or loc_integer01==integer329 or loc_integer01==integer330 or loc_integer01==integer331 or loc_integer01==integer334 or loc_integer01==integer335 or loc_integer01==integer336 or loc_integer01==integer337 or loc_integer01==integer338 or loc_integer01==integer339 or loc_integer01==integer340 or loc_integer01==integer342 or loc_integer01==integer343 or loc_integer01==integer344 or loc_integer01==integer346 or loc_integer01==integer347 or loc_integer01==integer348 or loc_integer01==integer349 or loc_integer01==integer350 or loc_integer01==integer351 or loc_integer01==integer353 or loc_integer01==integer354 or loc_integer01==integer355 or loc_integer01==integer356 or loc_integer01==integer357 or loc_integer01==integer358 or loc_integer01==integer359 or loc_integer01==integer360 or loc_integer01==integer352 or loc_integer01==integer361 or loc_integer01==integer362 then
        return true
    elseif loc_integer01==integer363 or loc_integer01==integer364 or loc_integer01==integer365 or loc_integer01==integer366 or loc_integer01==integer367 or loc_integer01==integer368 or loc_integer01==integer369 or loc_integer01==integer370 or loc_integer01==integer371 or loc_integer01==integer372 or loc_integer01==integer373 or loc_integer01==integer374 or loc_integer01==integer376 or loc_integer01==integer375 or loc_integer01==integer377 or loc_integer01==integer379 or loc_integer01==integer378 or loc_integer01==integer381 or loc_integer01==integer380 or loc_integer01==integer382 or loc_integer01==integer332 or loc_integer01==integer384 or loc_integer01==integer385 or loc_integer01==integer386 or loc_integer01==integer387 or loc_integer01==integer388 then
        return true
    endif
    return false
endfunction

// 6842 ~ 6844
function Func0386 takes integer loc_integer01 returns boolean
    return loc_integer01==integer232 or loc_integer01==integer151 or loc_integer01==integer142 or loc_integer01==integer144 or loc_integer01==integer145 or loc_integer01==integer147 or loc_integer01==integer148 or loc_integer01==integer149 or loc_integer01==integer143 or loc_integer01==integer154 or loc_integer01==integer155 or loc_integer01==integer153
endfunction

// 6846 ~ 6848
function Func0387 takes integer loc_integer01 returns boolean
    return loc_integer01==integer251 or loc_integer01==integer132 or loc_integer01==integer177 or loc_integer01==integer178 or loc_integer01==integer235 or loc_integer01==integer198 or loc_integer01==integer125 or loc_integer01==integer245 or loc_integer01==integer134
endfunction

// 6850 ~ 6870
function Func0388 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(74)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(75)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(76)))
    local item loc_item01=CreateItem(loc_integer02,loc_real01,loc_real02)
    call SetItemPlayer(loc_item01,loc_player01,true)
    call SetItemUserData(loc_item01,0)
    if loc_boolean01 then
        call SetItemCharges(loc_item01,loc_integer03)
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_player01=null
    return false
endfunction

// 6872 ~ 6884
function Func0389 takes integer loc_integer01,real loc_real01,real loc_real02,player loc_player01,boolean loc_boolean01,integer loc_integer02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer03=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(loc_integer03),(74),(loc_integer01))
    call SaveReal(hashtable001,(loc_integer03),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer03),(7),((loc_real02)*1.0))
    call SavePlayerHandle(hashtable001,(loc_integer03),(54),(loc_player01))
    call SaveBoolean(hashtable001,(loc_integer03),(75),(loc_boolean01))
    call SaveInteger(hashtable001,(loc_integer03),(76),(loc_integer02))
    call TriggerAddCondition(loc_trigger01,Condition(function Func0388))
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    set loc_trigger01=null
endfunction

// 6886 ~ 6888
function Func0390 takes nothing returns nothing
    call DisableTrigger(trigger057)
endfunction

// 6890 ~ 6892
function Func0391 takes nothing returns nothing
    call EnableTrigger(trigger057)
endfunction

// 6894 ~ 6898
function Func0392 takes item loc_item01 returns nothing
    call DisableTrigger(trigger057)
    call RemoveItem(loc_item01)
    call EnableTrigger(trigger057)
endfunction

// 6900 ~ 6915
function Func0393 takes unit loc_unit01,integer loc_integer01,item loc_item01 returns item
    local integer loc_integer02
    local item loc_item02
    set loc_integer02=0
    loop
        exitwhen loc_integer02>5
        set loc_item02=UnitItemInSlot(loc_unit01,loc_integer02)
        if loc_item02!=null and loc_item02!=loc_item01 and GetItemTypeId(loc_item02)==loc_integer01 then
            set loc_item02=null
            return UnitItemInSlot(loc_unit01,loc_integer02)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_item02=null
    return null
endfunction

// 6917 ~ 6932
function Func0394 takes unit loc_unit01,integer loc_integer01 returns item
    local integer loc_integer02
    local item loc_item01
    set loc_integer02=0
    loop
        exitwhen loc_integer02>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
        if(loc_item01!=null)and(GetItemTypeId(loc_item01)==loc_integer01)then
            set loc_item01=null
            return UnitItemInSlot(loc_unit01,loc_integer02)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_item01=null
    return null
endfunction

// 6934 ~ 6949
function Func0395 takes player loc_player01,unit loc_unit01,integer loc_integer01,item loc_item01 returns item
    local integer loc_integer02
    local item loc_item02
    set loc_integer02=0
    loop
        exitwhen loc_integer02>5
        set loc_item02=UnitItemInSlot(loc_unit01,loc_integer02)
        if loc_item02!=null and loc_item02!=loc_item01 and Func0380(loc_item02)==loc_integer01 and(GetItemPlayer(loc_item02)==loc_player01 or loc_integer01==integer147 or loc_integer01==integer148)then
            set loc_item02=null
            return UnitItemInSlot(loc_unit01,loc_integer02)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_item02=null
    return null
endfunction

// 6951 ~ 6966
function Func0396 takes player loc_player01,unit loc_unit01,integer loc_integer01 returns item
    local integer loc_integer02
    local item loc_item01
    set loc_integer02=0
    loop
        exitwhen loc_integer02>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
        if(loc_item01!=null)and(Func0380(loc_item01)==loc_integer01)and(GetItemPlayer(loc_item01)==loc_player01 or loc_integer01==integer147 or loc_integer01==integer148)then
            set loc_item01=null
            return UnitItemInSlot(loc_unit01,loc_integer02)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_item01=null
    return null
endfunction

// 6968 ~ 6983
function Func0397 takes unit loc_unit01,integer loc_integer01 returns item
    local integer loc_integer02
    local item loc_item01
    set loc_integer02=0
    loop
        exitwhen loc_integer02>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
        if(loc_item01!=null)and(Func0380(loc_item01)==loc_integer01)then
            set loc_item01=null
            return UnitItemInSlot(loc_unit01,loc_integer02)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_item01=null
    return null
endfunction

// 6985 ~ 6997
function Func0398 takes unit loc_unit01 returns integer
    local integer loc_integer01=0
    local integer loc_integer02=0
    local integer loc_integer03=UnitInventorySize(loc_unit01)-1
    loop
        exitwhen loc_integer01>loc_integer03
        if UnitItemInSlot(loc_unit01,loc_integer01)==null then
            set loc_integer02=loc_integer02+1
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return loc_integer02
endfunction

// 6999 ~ 7014
function Func0399 takes item loc_item01 returns integer
    local integer loc_integer01
    local integer loc_integer02=1
    if loc_item01==null then
        return-2
    endif
    set loc_integer01=GetItemTypeId(loc_item01)
    loop
        exitwhen loc_integer02>integer066
        if integers088[loc_integer02]==loc_integer01 or integers089[loc_integer02]==loc_integer01 then
            return loc_integer02
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return-1
endfunction

// 7016 ~ 7031
function Func0400 takes item loc_item01 returns integer
    local integer loc_integer01
    local integer loc_integer02=1
    if loc_item01==null then
        return-2
    endif
    set loc_integer01=GetItemTypeId(loc_item01)
    loop
        exitwhen loc_integer02>integer066
        if integers091[loc_integer02]==loc_integer01 then
            return loc_integer02
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return-1
endfunction

// 7033 ~ 7048
function Func0401 takes item loc_item01 returns integer
    local integer loc_integer01
    local integer loc_integer02=1
    if loc_item01==null then
        return-2
    endif
    set loc_integer01=GetItemTypeId(loc_item01)
    loop
        exitwhen loc_integer02>integer066
        if integers091[loc_integer02]==loc_integer01 then
            return integers089[loc_integer02]
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return-1
endfunction

// 7050 ~ 7065
function Func0402 takes unit loc_unit01 returns integer
    local integer loc_integer01
    local integer loc_integer02=0
    if loc_unit01==null then
        return-2
    endif
    set loc_integer01=GetUnitTypeId(loc_unit01)
    loop
        exitwhen loc_integer02>integer066
        if integers090[loc_integer02]==loc_integer01 then
            return loc_integer02
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return-1
endfunction

// 7067 ~ 7072
function Func0403 takes item loc_item01 returns string
    if loc_item01==null then
        return"UI\\Widgets\\Console\\Undead\\undead-inventory-slotfiller.blp"
    endif
    return strings012[Func0380(loc_item01)]
endfunction

// 7074 ~ 7076
function Func0404 takes item loc_item01 returns boolean
    return Func0380(loc_item01)==integer212 or Func0380(loc_item01)==integer213 or Func0380(loc_item01)==integer083 or Func0380(loc_item01)==integer084
endfunction

// 7078 ~ 7086
function Func0405 takes integer loc_integer01 returns integer
    if integer145==loc_integer01 then
        return 4
    endif
    if integer147==loc_integer01 or integer148==loc_integer01 or integer152==loc_integer01 or integer143==loc_integer01 or integer154==loc_integer01 or integer153==loc_integer01 then
        return 2
    endif
    return 1
endfunction

// 7088 ~ 7090
function Func0406 takes item loc_item01 returns boolean
    return GetItemType(loc_item01)==ITEM_TYPE_POWERUP or GetItemType(loc_item01)==ITEM_TYPE_PURCHASABLE or GetItemType(loc_item01)==ITEM_TYPE_MISCELLANEOUS
endfunction

// 7092 ~ 7113
function Func0407 takes unit loc_unit01,integer loc_integer01 returns boolean
    local item loc_item01
    local boolean loc_boolean01=false
    local boolean loc_boolean02=true
    set loc_item01=CreateItem(loc_integer01,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    if GetUnitAbilityLevel(loc_unit01,'AInv')==0 then
        set loc_boolean01=true
        call Func0193(loc_unit01,'AInv')
    endif
    if UnitAddItem(loc_unit01,loc_item01)==false then
        call RemoveItem(loc_item01)
        set loc_boolean02=false
    elseif GetWidgetLife(loc_item01)>0 then
        call RemoveItem(loc_item01)
        set loc_boolean02=false
    endif
    if loc_boolean01 then
        call UnitRemoveAbility(loc_unit01,'AInv')
    endif
    set loc_item01=null
    return loc_boolean02
endfunction

// 7115 ~ 7123
function Func0408 takes unit loc_unit01 returns real
    local real loc_real01
    if Func0056(GetOwningPlayer(loc_unit01))then
        set loc_real01=GetRectCenterX(rect011)
    else
        set loc_real01=GetRectCenterX(rect004)
    endif
    return loc_real01
endfunction

// 7125 ~ 7133
function Func0409 takes unit loc_unit01 returns real
    local real loc_real01
    if Func0056(GetOwningPlayer(loc_unit01))then
        set loc_real01=GetRectCenterY(rect011)
    else
        set loc_real01=GetRectCenterY(rect004)
    endif
    return loc_real01
endfunction

// 7135 ~ 7174
function Func0410 takes unit loc_unit01,integer loc_integer01,integer loc_integer02 returns item
    local real loc_real01=Func0408(loc_unit01)
    local real loc_real02=Func0409(loc_unit01)
    local item loc_item01=CreateItem(loc_integer01,loc_real01,loc_real02)
    local integer loc_integer03=0
    local boolean array loc_booleans01
    local item loc_item02
    call DisableTrigger(trigger057)
    if loc_integer01>0 then
        loop
            exitwhen loc_integer03>(UnitInventorySize(loc_unit01)-1)
            if UnitItemInSlot(loc_unit01,loc_integer03)==null and loc_integer03!=loc_integer02 then
                set loc_item02=CreateItem('I02M',loc_real01,loc_real02)
                call UnitAddItem(loc_unit01,loc_item02)
                set loc_booleans01[loc_integer03]=true
            else
                set loc_booleans01[loc_integer03]=false
            endif
            if loc_integer03==loc_integer02 then
                call EnableTrigger(trigger057)
                call UnitAddItem(loc_unit01,loc_item01)
                call DisableTrigger(trigger057)
            endif
            set loc_integer03=loc_integer03+1
        endloop
        set loc_integer03=0
        loop
            exitwhen loc_integer03>5
            if loc_booleans01[loc_integer03]==true then
                call RemoveItem(UnitItemInSlot(loc_unit01,loc_integer03))
            endif
            set loc_integer03=loc_integer03+1
        endloop
    endif
    call EnableTrigger(trigger057)
    set item002=loc_item01
    set loc_item01=null
    set loc_item02=null
    return item002
endfunction

// 7176 ~ 7182
function Func0411 takes integer loc_integer01,integer loc_integer02,integer loc_integer03,integer loc_integer04 returns nothing
    set integer038=integer038+1
    set integers054[integer038]=loc_integer02
    set integers055[integer038]=loc_integer03
    set integers056[integer038]=loc_integer04
    set integers057[integer038]=loc_integer01
endfunction

// 7184 ~ 7203
function Func0412 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    local integer loc_integer02=1
    local integer loc_integer03=255
    local boolean loc_boolean01=false
    if loc_integer01=='Ewar' then
        set loc_integer03=R2I(2.55*(100-18+20*GetUnitAbilityLevel(loc_unit01,'A03P')))
    endif
    loop
        exitwhen loc_integer02>integer038 or loc_boolean01
        if integers057[loc_integer02]==loc_integer01 then
            set loc_boolean01=true
            call SetUnitVertexColor(loc_unit01,integers054[loc_integer02],integers055[loc_integer02],integers056[loc_integer02],loc_integer03)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    if loc_boolean01==false then
        call SetUnitVertexColor(loc_unit01,255,255,255,255)
    endif
endfunction

// 7205 ~ 7220
function Func0413 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    local integer loc_integer02=1
    local boolean loc_boolean01=false
    loop
        exitwhen loc_integer02>integer038 or loc_boolean01
        if integers057[loc_integer02]==loc_integer01 then
            set loc_boolean01=true
            call SetUnitVertexColor(loc_unit01,integers054[loc_integer02],integers055[loc_integer02],integers056[loc_integer02],0)
        endif
        set loc_integer02=loc_integer02+1
    endloop
    if loc_boolean01==false then
        call SetUnitVertexColor(loc_unit01,255,255,255,0)
    endif
endfunction

// 7222 ~ 7231
function Func0414 takes player loc_player01,string loc_string01,integer loc_integer01 returns nothing
    local string loc_string02=I2S(GetPlayerId(loc_player01))
    call StoreInteger(gamecache001,loc_string02,loc_string01,loc_integer01)
    if Func0059(player003)==false then
        call Func0102()
    endif
    if GetLocalPlayer()==player003 then
        call SyncStoredInteger(gamecache001,loc_string02,loc_string01)
    endif
endfunction

// 7233 ~ 7241
function Func0415 takes string loc_string01,integer loc_integer01 returns nothing
    call StoreInteger(gamecache001,"Data",loc_string01,loc_integer01)
    if Func0059(player003)==false then
        call Func0102()
    endif
    if GetLocalPlayer()==player003 then
        call SyncStoredInteger(gamecache001,"Data",loc_string01)
    endif
endfunction

// 7243 ~ 7246
function Func0416 takes nothing returns nothing
    call FlushGameCache(InitGameCache("dr.x"))
    set gamecache001=InitGameCache("dr.x")
endfunction

// 7248 ~ 7250
function Func0417 takes nothing returns nothing
    call Func0416()
endfunction

// 7252 ~ 7272
function Func0418 takes string loc_string01,string loc_string02,string loc_string03 returns string
    local string loc_string04=""
    local integer loc_integer01=0
    local integer loc_integer02=StringLength(loc_string01)
    local string loc_string05
    local integer loc_integer03=StringLength(loc_string02)
    local boolean loc_boolean01=false
    loop
        exitwhen loc_integer01+1>loc_integer02
        set loc_string05=SubString(loc_string01,loc_integer01,loc_integer01+loc_integer03)
        if loc_string05!=loc_string02 or loc_boolean01 then
            set loc_string04=loc_string04+SubString(loc_string01,loc_integer01,loc_integer01+1)
            set loc_integer01=loc_integer01+1
        else
            set loc_string04=loc_string04+loc_string03
            set loc_integer01=loc_integer01+loc_integer03
            set loc_boolean01=true
        endif
    endloop
    return loc_string04
endfunction

// 7274 ~ 7279
function Func0419 takes player loc_player01,player loc_player02 returns string
    local string loc_string01=GetObjectName('n0C8')
    set loc_string01=Func0418(loc_string01,"$dead",strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r")
    set loc_string01=Func0418(loc_string01,"$killer",strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+"|r")
    return loc_string01
endfunction

// 7281 ~ 7317
function Func0420 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer array loc_integers01
    local integer loc_integer02=loc_integer01
    local integer loc_integer03=1
    local integer loc_integer04=0
    local integer loc_integer05
    if loc_integer01<1 then
        call UnitRemoveAbility(loc_unit01,integers058[0])
        call UnitRemoveAbility(loc_unit01,integers058[1])
        call UnitRemoveAbility(loc_unit01,integers058[2])
        call UnitRemoveAbility(loc_unit01,integers058[3])
        call UnitRemoveAbility(loc_unit01,integers058[4])
        call UnitRemoveAbility(loc_unit01,integers058[5])
        call UnitRemoveAbility(loc_unit01,integers058[6])
        call UnitRemoveAbility(loc_unit01,integers058[7])
        call UnitRemoveAbility(loc_unit01,integers058[8])
        return
    endif
    loop
        exitwhen loc_integer03==0
        set loc_integer03=loc_integer02/2
        set loc_integers01[loc_integer04]=loc_integer02-loc_integer03*2
        set loc_integer02=loc_integer03
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer05=8
    set loc_integer04=0
    loop
        exitwhen loc_integer04>loc_integer05
        if loc_integers01[loc_integer04]==1 then
            call UnitAddAbility(loc_unit01,integers058[loc_integer04])
        else
            call UnitRemoveAbility(loc_unit01,integers058[loc_integer04])
        endif
        set loc_integer04=loc_integer04+1
    endloop
endfunction

// 7319 ~ 7355
function Func0421 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer array loc_integers01
    local integer loc_integer02=loc_integer01
    local integer loc_integer03=1
    local integer loc_integer04=0
    local integer loc_integer05
    if loc_integer01<1 then
        call UnitRemoveAbility(loc_unit01,integers059[0])
        call UnitRemoveAbility(loc_unit01,integers059[1])
        call UnitRemoveAbility(loc_unit01,integers059[2])
        call UnitRemoveAbility(loc_unit01,integers059[3])
        call UnitRemoveAbility(loc_unit01,integers059[4])
        call UnitRemoveAbility(loc_unit01,integers059[5])
        call UnitRemoveAbility(loc_unit01,integers059[6])
        call UnitRemoveAbility(loc_unit01,integers059[7])
        call UnitRemoveAbility(loc_unit01,integers059[8])
        return
    endif
    loop
        exitwhen loc_integer03==0
        set loc_integer03=loc_integer02/2
        set loc_integers01[loc_integer04]=loc_integer02-loc_integer03*2
        set loc_integer02=loc_integer03
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer05=8
    set loc_integer04=0
    loop
        exitwhen loc_integer04>loc_integer05
        if loc_integers01[loc_integer04]==1 then
            call UnitAddAbility(loc_unit01,integers059[loc_integer04])
        else
            call UnitRemoveAbility(loc_unit01,integers059[loc_integer04])
        endif
        set loc_integer04=loc_integer04+1
    endloop
endfunction

// 7357 ~ 7395
function Func0422 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer array loc_integers01
    local integer loc_integer02=loc_integer01
    local integer loc_integer03=1
    local integer loc_integer04=0
    local integer loc_integer05
    if loc_integer01<1 then
        call UnitRemoveAbility(loc_unit01,integers060[0])
        call UnitRemoveAbility(loc_unit01,integers060[1])
        call UnitRemoveAbility(loc_unit01,integers060[2])
        call UnitRemoveAbility(loc_unit01,integers060[3])
        call UnitRemoveAbility(loc_unit01,integers060[4])
        call UnitRemoveAbility(loc_unit01,integers060[5])
        call UnitRemoveAbility(loc_unit01,integers060[6])
        call UnitRemoveAbility(loc_unit01,integers060[7])
        call UnitRemoveAbility(loc_unit01,integers060[8])
        call UnitRemoveAbility(loc_unit01,integers060[9])
        call UnitRemoveAbility(loc_unit01,integers060[10])
        return
    endif
    loop
        exitwhen loc_integer03==0
        set loc_integer03=loc_integer02/2
        set loc_integers01[loc_integer04]=loc_integer02-loc_integer03*2
        set loc_integer02=loc_integer03
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer05=10
    set loc_integer04=0
    loop
        exitwhen loc_integer04>loc_integer05
        if loc_integers01[loc_integer04]==1 then
            call UnitAddAbility(loc_unit01,integers060[loc_integer04])
        else
            call UnitRemoveAbility(loc_unit01,integers060[loc_integer04])
        endif
        set loc_integer04=loc_integer04+1
    endloop
endfunction

// 7397 ~ 7433
function Func0423 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer array loc_integers01
    local integer loc_integer02=loc_integer01
    local integer loc_integer03=1
    local integer loc_integer04=0
    local integer loc_integer05
    if loc_integer01<1 then
        call UnitRemoveAbility(loc_unit01,integers061[0])
        call UnitRemoveAbility(loc_unit01,integers061[1])
        call UnitRemoveAbility(loc_unit01,integers061[2])
        call UnitRemoveAbility(loc_unit01,integers061[3])
        call UnitRemoveAbility(loc_unit01,integers061[4])
        call UnitRemoveAbility(loc_unit01,integers061[5])
        call UnitRemoveAbility(loc_unit01,integers061[6])
        call UnitRemoveAbility(loc_unit01,integers061[7])
        call UnitRemoveAbility(loc_unit01,integers061[8])
        return
    endif
    loop
        exitwhen loc_integer03==0
        set loc_integer03=loc_integer02/2
        set loc_integers01[loc_integer04]=loc_integer02-loc_integer03*2
        set loc_integer02=loc_integer03
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer05=8
    set loc_integer04=0
    loop
        exitwhen loc_integer04>loc_integer05
        if loc_integers01[loc_integer04]==1 then
            call UnitAddAbility(loc_unit01,integers061[loc_integer04])
        else
            call UnitRemoveAbility(loc_unit01,integers061[loc_integer04])
        endif
        set loc_integer04=loc_integer04+1
    endloop
endfunction

// 7435 ~ 7468
function Func0424 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer array loc_integers01
    local integer loc_integer02=loc_integer01
    local integer loc_integer03=1
    local integer loc_integer04=0
    local integer loc_integer05
    if loc_integer01<1 then
        call UnitRemoveAbility(loc_unit01,integers062[0])
        call UnitRemoveAbility(loc_unit01,integers062[1])
        call UnitRemoveAbility(loc_unit01,integers062[2])
        call UnitRemoveAbility(loc_unit01,integers062[3])
        call UnitRemoveAbility(loc_unit01,integers062[4])
        call UnitRemoveAbility(loc_unit01,integers062[5])
        return
    endif
    loop
        exitwhen loc_integer03==0
        set loc_integer03=loc_integer02/2
        set loc_integers01[loc_integer04]=loc_integer02-loc_integer03*2
        set loc_integer02=loc_integer03
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer05=loc_integer04
    set loc_integer04=0
    loop
        exitwhen loc_integer04>loc_integer05
        if loc_integers01[loc_integer04]==1 then
            call UnitAddAbility(loc_unit01,integers062[loc_integer04])
        else
            call UnitRemoveAbility(loc_unit01,integers062[loc_integer04])
        endif
        set loc_integer04=loc_integer04+1
    endloop
endfunction

// 7470 ~ 7500
function Func0425 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(77)))
    local string loc_string01="|c006699CC"
    if GetObjectName('n0HH')=="Language: English"and(strings007[(loc_integer02)]!="")then
        if GetTriggerEvalCount(loc_trigger01)==1 then
        elseif GetTriggerEvalCount(loc_trigger01)==2 then
            call DisplayTimedTextToPlayer(loc_player01,0,0,15,"Tip 1: "+loc_string01+strings007[loc_integer02]+"|r")
            call Func0228(sound045,loc_player01)
        elseif GetTriggerEvalCount(loc_trigger01)==3 then
            call DisplayTimedTextToPlayer(loc_player01,0,0,15,"Tip 2: "+loc_string01+strings008[loc_integer02]+"|r")
            call Func0228(sound045,loc_player01)
        elseif GetTriggerEvalCount(loc_trigger01)==4 then
            call DisplayTimedTextToPlayer(loc_player01,0,0,15,"Tip 3: "+loc_string01+strings009[loc_integer02]+"|r")
            call Func0228(sound045,loc_player01)
        elseif GetTriggerEvalCount(loc_trigger01)==5 then
            call DisplayTimedTextToPlayer(loc_player01,0,0,15,"Tip 4: "+loc_string01+strings010[loc_integer02]+"|r")
            call Func0228(sound045,loc_player01)
        elseif GetTriggerEvalCount(loc_trigger01)==6 then
            call DisplayTimedTextToPlayer(loc_player01,0,0,15,"Tip 5: "+loc_string01+strings011[loc_integer02]+"|r")
            call Func0228(sound045,loc_player01)
        endif
    endif
    if GetTriggerEvalCount(loc_trigger01)==5 then
        call Func0035(loc_trigger01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
    endif
    return false
endfunction

// 7502 ~ 7512
function Func0426 takes player loc_player01,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerRegisterTimerEvent(loc_trigger01,15,false)
    call TriggerRegisterTimerEvent(loc_trigger01,300,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0425))
    call SavePlayerHandle(hashtable001,(loc_integer02),(54),(loc_player01))
    call SaveInteger(hashtable001,(loc_integer02),(77),(loc_integer01))
    set loc_trigger01=null
endfunction

// 7514 ~ 7523
function Func0427 takes unit loc_unit01 returns integer
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    local integer loc_integer02='o01P'
    if loc_integer01=='Udre' then
        set loc_integer02='o01N'
    elseif loc_integer01=='Emoo' or loc_integer01=='H00I' or loc_integer01=='H071' or loc_integer01=='E005' then
        set loc_integer02='o01O'
    endif
    return loc_integer02
endfunction

// 7525 ~ 7542
function Func0428 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call KillUnit(loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
        call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 7544 ~ 7554
function Func0429 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),Func0427(loc_unit01),GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0428))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    set loc_trigger01=null
endfunction

// 7556 ~ 7566
function Func0430 takes integer loc_integer01 returns boolean
    local integer loc_integer02=0
    loop
        exitwhen loc_integer02>59
        if loc_integer01==integers063[loc_integer02]then
            return true
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return false
endfunction
