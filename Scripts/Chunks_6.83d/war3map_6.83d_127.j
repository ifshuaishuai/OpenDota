
// 23884 ~ 23886
function Func0977 takes nothing returns boolean
    return GetOwningPlayer(GetTriggerUnit())==player001
endfunction

// 23888 ~ 23890
function Func0978 takes nothing returns nothing
    call SaveInteger(hashtable001,(400+GetPlayerId(GetOwningPlayer(GetKillingUnit()))),(79),((LoadInteger(hashtable001,(400+GetPlayerId(GetOwningPlayer(GetKillingUnit()))),(79)))+1))
endfunction

// 23892 ~ 23936
function Func0979 takes nothing returns nothing
    local location loc_location01=GetRectCenter(rect033)
    set unit001=CreateUnitAtLoc(Player(12),'n00L',loc_location01,bj_UNIT_FACING)
    call SetUnitAcquireRange(unit001,150)
    call Func0581(unit001)
    call RemoveLocation(loc_location01)
    call UnitAddItem(unit001,CreateItem(integers089[integer198],0,0))
    call UnitAddAbility(unit001,'A142')
    set loc_location01=GetRectCenter(rect019)
    call RemoveUnit(CreateUnitAtLoc(player001,'u001',loc_location01,0))
    call RemoveLocation(loc_location01)
    set loc_location01=GetRectCenter(rect020)
    call RemoveUnit(CreateUnitAtLoc(player001,'u001',loc_location01,0))
    call RemoveLocation(loc_location01)
    set loc_location01=GetRectCenter(rect021)
    call RemoveUnit(CreateUnitAtLoc(player001,'u001',loc_location01,0))
    call RemoveLocation(loc_location01)
    set loc_location01=GetRectCenter(rect022)
    call RemoveUnit(CreateUnitAtLoc(player001,'u001',loc_location01,0))
    call RemoveLocation(loc_location01)
    set loc_location01=GetRectCenter(rect023)
    call RemoveUnit(CreateUnitAtLoc(player001,'u001',loc_location01,0))
    call RemoveLocation(loc_location01)
    set loc_location01=GetRectCenter(rect024)
    call RemoveUnit(CreateUnitAtLoc(player001,'u001',loc_location01,0))
    call RemoveLocation(loc_location01)
    set loc_location01=GetRectCenter(rect025)
    call RemoveUnit(CreateUnitAtLoc(player001,'u001',loc_location01,0))
    call RemoveLocation(loc_location01)
    set loc_location01=GetRectCenter(rect026)
    call RemoveUnit(CreateUnitAtLoc(player001,'u001',loc_location01,0))
    call RemoveLocation(loc_location01)
    set loc_location01=GetRectCenter(rect027)
    call RemoveUnit(CreateUnitAtLoc(player001,'u001',loc_location01,0))
    call RemoveLocation(loc_location01)
    set loc_location01=GetRectCenter(rect028)
    call RemoveUnit(CreateUnitAtLoc(player001,'u001',loc_location01,0))
    call RemoveLocation(loc_location01)
    set loc_location01=GetRectCenter(rect047)
    call RemoveUnit(CreateUnitAtLoc(player001,'u001',loc_location01,0))
    call RemoveLocation(loc_location01)
    set loc_location01=GetRectCenter(rect049)
    call RemoveUnit(CreateUnitAtLoc(player001,'u001',loc_location01,0))
    call RemoveLocation(loc_location01)
endfunction

// 23938 ~ 23940
function Func0980 takes nothing returns nothing
    call Func0979()
endfunction

// 23942 ~ 23949
function Func0981 takes nothing returns boolean
    if GetOwningPlayer(GetTriggerUnit())==players003[0]then
        call IssuePointOrderLoc(GetTriggerUnit(),"attack",location001)
    elseif GetOwningPlayer(GetTriggerUnit())==players004[0]then
        call IssuePointOrderLoc(GetTriggerUnit(),"attack",location002)
    endif
    return false
endfunction

// 23951 ~ 23953
function Func0982 takes nothing returns nothing
    set integer005=integer005+1
endfunction

// 23955 ~ 23957
function Func0983 takes nothing returns nothing
    set integer004=integer004+1
endfunction

// 23959 ~ 23964
function Func0984 takes nothing returns boolean
    if GetOwningPlayer(GetTriggerUnit())==players003[0]then
        call IssuePointOrderLoc(GetTriggerUnit(),"attack",location003)
    endif
    return false
endfunction

// 23966 ~ 23971
function Func0985 takes nothing returns boolean
    if GetOwningPlayer(GetTriggerUnit())==players004[0]then
        call IssuePointOrderLoc(GetTriggerUnit(),"attack",location003)
    endif
    return false
endfunction

// 23973 ~ 23978
function Func0986 takes nothing returns boolean
    if GetOwningPlayer(GetTriggerUnit())==players003[0]then
        call IssuePointOrderLoc(GetTriggerUnit(),"attack",location004)
    endif
    return false
endfunction

// 23980 ~ 23985
function Func0987 takes nothing returns boolean
    if GetOwningPlayer(GetTriggerUnit())==players004[0]then
        call IssuePointOrderLoc(GetTriggerUnit(),"attack",location004)
    endif
    return false
endfunction

// 23987 ~ 23992
function Func0988 takes nothing returns boolean
    if GetOwningPlayer(GetTriggerUnit())==players003[0]then
        call IssuePointOrderLoc(GetTriggerUnit(),"attack",location005)
    endif
    return false
endfunction

// 23994 ~ 23999
function Func0989 takes nothing returns boolean
    if GetOwningPlayer(GetTriggerUnit())==players004[0]then
        call IssuePointOrderLoc(GetTriggerUnit(),"attack",location005)
    endif
    return false
endfunction

// 24001 ~ 24003
function Func0990 takes nothing returns nothing
    call Func0246(GetEnumUnit(),'A2V1',1,15,'B0H2')
endfunction

// 24005 ~ 24007
function Func0991 takes nothing returns nothing
    call Func0246(GetEnumUnit(),'A2V0',1,15,'B0H1')
endfunction

// 24009 ~ 24013
function Func0992 takes group loc_group01 returns nothing
    if(TimerGetElapsed(timer001))<7*60 then
        call ForGroup(loc_group01,function Func0990)
    endif
endfunction

// 24015 ~ 24017
function Func0993 takes nothing returns nothing
    call Func0246(GetEnumUnit(),'A2V1',1,10,'B0H2')
endfunction

// 24019 ~ 24021
function Func0994 takes nothing returns nothing
    call Func0246(GetEnumUnit(),'A2V0',1,20,'B0H1')
endfunction

// 24023 ~ 24027
function Func0995 takes group loc_group01 returns nothing
    if(TimerGetElapsed(timer001))<7*60 then
        call ForGroup(loc_group01,function Func0991)
    endif
endfunction

// 24029 ~ 24044
function Func0996 takes nothing returns nothing
    local integer loc_integer01=1
    local integer loc_integer02
    loop
        exitwhen loc_integer01>5
        set loc_integer02=GetPlayerId(players003[loc_integer01])
        call Func0415("CSK"+I2S(loc_integer02),integers003[loc_integer02])
        call Func0415("CSD"+I2S(loc_integer02),integers004[loc_integer02])
        call Func0415("NK"+I2S(loc_integer02),(LoadInteger(hashtable001,(400+loc_integer02),(79))))
        set loc_integer02=GetPlayerId(players004[loc_integer01])
        call Func0415("CSK"+I2S(loc_integer02),integers003[loc_integer02])
        call Func0415("CSD"+I2S(loc_integer02),integers004[loc_integer02])
        call Func0415("NK"+I2S(loc_integer02),(LoadInteger(hashtable001,(400+loc_integer02),(79))))
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 24046 ~ 24148
function Func0997 takes boolean loc_boolean01 returns nothing
    local unit loc_unit01
    local string loc_string01="stand work alternate"
    local string loc_string02="stand work"
    local string loc_string03="stand alternate"
    local string loc_string04="stand"
    set loc_unit01=unit153
    if Func0194(loc_unit01)==false then
        if loc_boolean01 then
            call SetUnitAnimation(loc_unit01,loc_string01)
        else
            call SetUnitAnimation(loc_unit01,loc_string03)
        endif
    endif
    set loc_unit01=unit154
    if Func0194(loc_unit01)==false then
        if loc_boolean01 then
            call SetUnitAnimation(loc_unit01,loc_string01)
        else
            call SetUnitAnimation(loc_unit01,loc_string03)
        endif
    endif
    set loc_unit01=unit155
    if Func0194(loc_unit01)==false then
        if loc_boolean01 then
            call SetUnitAnimation(loc_unit01,loc_string01)
        else
            call SetUnitAnimation(loc_unit01,loc_string03)
        endif
    endif
    set loc_unit01=unit156
    if Func0194(loc_unit01)==false then
        if loc_boolean01 then
            call SetUnitAnimation(loc_unit01,loc_string01)
        else
            call SetUnitAnimation(loc_unit01,loc_string03)
        endif
    endif
    set loc_unit01=unit157
    if Func0194(loc_unit01)==false then
        if loc_boolean01 then
            call SetUnitAnimation(loc_unit01,loc_string01)
        else
            call SetUnitAnimation(loc_unit01,loc_string03)
        endif
    endif
    set loc_unit01=unit158
    if Func0194(loc_unit01)==false then
        if loc_boolean01 then
            call SetUnitAnimation(loc_unit01,loc_string01)
        else
            call SetUnitAnimation(loc_unit01,loc_string03)
        endif
    endif
    set loc_unit01=unit197
    if Func0194(loc_unit01)==false then
        if loc_boolean01 then
            call SetUnitAnimation(loc_unit01,loc_string02)
        else
            call SetUnitAnimation(loc_unit01,loc_string04)
        endif
    endif
    set loc_unit01=unit198
    if Func0194(loc_unit01)==false then
        if loc_boolean01 then
            call SetUnitAnimation(loc_unit01,loc_string02)
        else
            call SetUnitAnimation(loc_unit01,loc_string04)
        endif
    endif
    set loc_unit01=unit199
    if Func0194(loc_unit01)==false then
        if loc_boolean01 then
            call SetUnitAnimation(loc_unit01,loc_string02)
        else
            call SetUnitAnimation(loc_unit01,loc_string04)
        endif
    endif
    set loc_unit01=unit200
    if Func0194(loc_unit01)==false then
        if loc_boolean01 then
            call SetUnitAnimation(loc_unit01,loc_string02)
        else
            call SetUnitAnimation(loc_unit01,loc_string04)
        endif
    endif
    set loc_unit01=unit201
    if Func0194(loc_unit01)==false then
        if loc_boolean01 then
            call SetUnitAnimation(loc_unit01,loc_string02)
        else
            call SetUnitAnimation(loc_unit01,loc_string04)
        endif
    endif
    set loc_unit01=unit202
    if Func0194(loc_unit01)==false then
        if loc_boolean01 then
            call SetUnitAnimation(loc_unit01,loc_string02)
        else
            call SetUnitAnimation(loc_unit01,loc_string04)
        endif
    endif
endfunction

// 24150 ~ 24153
function Func0998 takes nothing returns boolean
    call Func0997(true)
    return false
endfunction

// 24155 ~ 24182
function Func0999 takes nothing returns boolean
    return true
    if(boolean115)then
        return boolean116
    endif
    if(boolean117)then
        return boolean118
    endif
    if(boolean027)then
        return boolean026
    endif
    if boolean109 then
        return boolean110
    endif
    if(boolean035)then
        return boolean037
    endif
    if(boolean006)then
        return boolean105
    endif
    if(boolean113)then
        return boolean114
    endif
    if(boolean061)then
        return boolean108
    endif
    return boolean001
endfunction

// 24184 ~ 24192
function Func1000 takes group loc_group01,integer loc_integer01 returns nothing
    local unit loc_unit01
    loop
        set loc_unit01=FirstOfGroup(loc_group01)
        exitwhen(loc_unit01==null)
        call GroupRemoveUnit(loc_group01,loc_unit01)
        call SetUnitAbilityLevel(loc_unit01,integer012,loc_integer01)
    endloop
endfunction

// 24194 ~ 24383
function Func1001 takes nothing returns nothing
    local boolean loc_boolean01=ModuloInteger(GetTriggerExecCount(trigger007),7)==0
    if boolean095 then
        return
    endif
    call Func0997(false)
    if loc_boolean01 then
        call Func0996()
    endif
    if GetTriggerExecCount(trigger007)==1 and boolean122==false then
        call UnitResetCooldown(units006[1])
        call UnitResetCooldown(units006[2])
        call UnitResetCooldown(units006[3])
        call UnitResetCooldown(units006[4])
        call UnitResetCooldown(units006[5])
        call UnitResetCooldown(units006[7])
        call UnitResetCooldown(units006[8])
        call UnitResetCooldown(units006[9])
        call UnitResetCooldown(units006[10])
        call UnitResetCooldown(units006[11])
        call Func0276(unit142,false)
        call Func0276(unit143,false)
        call Func0276(unit144,false)
        call Func0276(unit186,false)
        call Func0276(unit187,false)
        call Func0276(unit188,false)
    elseif GetTriggerExecCount(trigger007)==1 and boolean122==true then
        call Func0276(unit143,false)
        call Func0276(unit187,false)
    endif
    if GetTriggerExecCount(trigger007)==1 then
        call EnableTrigger(trigger053)
    endif
    if boolean122==false and boolean127==false then
        if(boolean014)then
            call CreateNUnitsAtLoc(integer004,'ugho',players004[0],location007,bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(integer004,'u001',players004[0],location007,bj_UNIT_FACING)
        endif
        call Func0992(bj_lastCreatedGroup)
        call Func1000(bj_lastCreatedGroup,2)
    endif
    if boolean126==false then
        if(boolean015)then
            call CreateNUnitsAtLoc(integer004,'ugho',players004[0],location006,bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(integer004,'u001',players004[0],location006,bj_UNIT_FACING)
        endif
        call Func1000(bj_lastCreatedGroup,3)
    endif
    if boolean122==false and boolean124==false then
        if(boolean016)then
            call CreateNUnitsAtLoc(integer004,'ugho',players004[0],location008,bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(integer004,'u001',players004[0],location008,bj_UNIT_FACING)
        endif
        call Func0995(bj_lastCreatedGroup)
        call Func1000(bj_lastCreatedGroup,4)
    endif
    if boolean122==false and boolean127==false then
        if(boolean011)then
            call CreateNUnitsAtLoc(integer005,'unec',players004[0],location011,bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(integer005,'u002',players004[0],location011,bj_UNIT_FACING)
        endif
        call Func0992(bj_lastCreatedGroup)
        call Func1000(bj_lastCreatedGroup,2)
    endif
    if boolean126==false then
        if(boolean012)then
            call CreateNUnitsAtLoc(integer005,'unec',players004[0],location009,bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(integer005,'u002',players004[0],location009,bj_UNIT_FACING)
        endif
        call Func1000(bj_lastCreatedGroup,3)
    endif
    if boolean122==false and boolean124==false then
        if(boolean013)then
            call CreateNUnitsAtLoc(integer005,'unec',players004[0],location010,bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(integer005,'u002',players004[0],location010,bj_UNIT_FACING)
        endif
        call Func0995(bj_lastCreatedGroup)
        call Func1000(bj_lastCreatedGroup,4)
    endif
    if loc_boolean01==true then
        if boolean122==false and boolean127==false then
            if(boolean011)then
                call CreateNUnitsAtLoc(integer005,'umtw',players004[0],location011,bj_UNIT_FACING)
            else
                call CreateNUnitsAtLoc(integer005,'u00R',players004[0],location011,bj_UNIT_FACING)
            endif
            call Func1000(bj_lastCreatedGroup,2)
        endif
        if boolean126==false then
            if(boolean012)then
                call CreateNUnitsAtLoc(integer005,'umtw',players004[0],location009,bj_UNIT_FACING)
            else
                call CreateNUnitsAtLoc(integer005,'u00R',players004[0],location009,bj_UNIT_FACING)
            endif
            call Func1000(bj_lastCreatedGroup,3)
        endif
        if boolean122==false and boolean124==false then
            if(boolean013)then
                call CreateNUnitsAtLoc(integer005,'umtw',players004[0],location010,bj_UNIT_FACING)
            else
                call CreateNUnitsAtLoc(integer005,'u00R',players004[0],location010,bj_UNIT_FACING)
            endif
            call Func1000(bj_lastCreatedGroup,4)
        endif
    endif
    if boolean122==false and boolean127==false then
        if(boolean020)then
            call CreateNUnitsAtLoc(integer004,'esen',players003[0],location014,bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(integer004,'e00V',players003[0],location014,bj_UNIT_FACING)
        endif
        call Func0995(bj_lastCreatedGroup)
        call Func1000(bj_lastCreatedGroup,2)
    endif
    if boolean126==false then
        if(boolean021)then
            call CreateNUnitsAtLoc(integer004,'esen',players003[0],location012,bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(integer004,'e00V',players003[0],location012,bj_UNIT_FACING)
        endif
        call Func1000(bj_lastCreatedGroup,3)
    endif
    if boolean122==false and boolean124==false then
        if(boolean022)then
            call CreateNUnitsAtLoc(integer004,'esen',players003[0],location013,bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(integer004,'e00V',players003[0],location013,bj_UNIT_FACING)
        endif
        call Func0992(bj_lastCreatedGroup)
        call Func1000(bj_lastCreatedGroup,4)
    endif
    if boolean122==false and boolean127==false then
        if(boolean017)then
            call CreateNUnitsAtLoc(integer005,'edry',players003[0],location017,bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(integer005,'e00W',players003[0],location017,bj_UNIT_FACING)
        endif
        call Func0995(bj_lastCreatedGroup)
        call Func1000(bj_lastCreatedGroup,2)
    endif
    if boolean126==false then
        if(boolean018)then
            call CreateNUnitsAtLoc(integer005,'edry',players003[0],location015,bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(integer005,'e00W',players003[0],location015,bj_UNIT_FACING)
        endif
        call Func1000(bj_lastCreatedGroup,3)
    endif
    if boolean122==false and boolean124==false then
        if(boolean019)then
            call CreateNUnitsAtLoc(integer005,'edry',players003[0],location016,bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(integer005,'e00W',players003[0],location016,bj_UNIT_FACING)
        endif
        call Func0992(bj_lastCreatedGroup)
        call Func1000(bj_lastCreatedGroup,4)
    endif
    if loc_boolean01==true then
        if boolean122==false and boolean127==false then
            if(boolean017)then
                call CreateNUnitsAtLoc(integer005,'ebal',players003[0],location017,bj_UNIT_FACING)
            else
                call CreateNUnitsAtLoc(integer005,'e026',players003[0],location017,bj_UNIT_FACING)
            endif
            call Func1000(bj_lastCreatedGroup,2)
        endif
        if boolean126==false then
            if(boolean018)then
                call CreateNUnitsAtLoc(integer005,'ebal',players003[0],location015,bj_UNIT_FACING)
            else
                call CreateNUnitsAtLoc(integer005,'e026',players003[0],location015,bj_UNIT_FACING)
            endif
            call Func1000(bj_lastCreatedGroup,3)
        endif
        if boolean122==false and boolean124==false then
            if(boolean019)then
                call CreateNUnitsAtLoc(integer005,'ebal',players003[0],location016,bj_UNIT_FACING)
            else
                call CreateNUnitsAtLoc(integer005,'e026',players003[0],location016,bj_UNIT_FACING)
            endif
            call Func1000(bj_lastCreatedGroup,4)
        endif
    endif
endfunction

// 24385 ~ 24390
function Func1002 takes nothing returns nothing
    set boolean011=false
    call DisableTrigger(trigger008)
    call Func0415("Rax"+I2S(0)+I2S(0)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0085(GetKillingUnit(),1)
endfunction

// 24392 ~ 24397
function Func1003 takes nothing returns nothing
    set boolean012=false
    call DisableTrigger(trigger009)
    call Func0415("Rax"+I2S(0)+I2S(1)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0085(GetKillingUnit(),1)
endfunction

// 24399 ~ 24404
function Func1004 takes nothing returns nothing
    set boolean013=false
    call DisableTrigger(trigger010)
    call Func0415("Rax"+I2S(0)+I2S(2)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0085(GetKillingUnit(),1)
endfunction

// 24406 ~ 24411
function Func1005 takes nothing returns nothing
    set boolean014=false
    call DisableTrigger(trigger011)
    call Func0415("Rax"+I2S(0)+I2S(0)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0085(GetKillingUnit(),2)
endfunction

// 24413 ~ 24418
function Func1006 takes nothing returns nothing
    set boolean015=false
    call DisableTrigger(trigger012)
    call Func0415("Rax"+I2S(0)+I2S(1)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0085(GetKillingUnit(),2)
endfunction

// 24420 ~ 24425
function Func1007 takes nothing returns nothing
    set boolean016=false
    call DisableTrigger(trigger013)
    call Func0415("Rax"+I2S(0)+I2S(2)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0085(GetKillingUnit(),2)
endfunction

// 24427 ~ 24432
function Func1008 takes nothing returns nothing
    set boolean017=false
    call DisableTrigger(trigger014)
    call Func0415("Rax"+I2S(1)+I2S(0)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0085(GetKillingUnit(),1)
endfunction

// 24434 ~ 24439
function Func1009 takes nothing returns nothing
    set boolean018=false
    call DisableTrigger(trigger015)
    call Func0415("Rax"+I2S(1)+I2S(1)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0085(GetKillingUnit(),1)
endfunction

// 24441 ~ 24446
function Func1010 takes nothing returns nothing
    set boolean019=false
    call DisableTrigger(trigger016)
    call Func0415("Rax"+I2S(1)+I2S(2)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0085(GetKillingUnit(),1)
endfunction

// 24448 ~ 24453
function Func1011 takes nothing returns nothing
    set boolean020=false
    call DisableTrigger(trigger017)
    call Func0415("Rax"+I2S(1)+I2S(0)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0085(GetKillingUnit(),2)
endfunction

// 24455 ~ 24460
function Func1012 takes nothing returns nothing
    set boolean021=false
    call DisableTrigger(trigger018)
    call Func0415("Rax"+I2S(1)+I2S(1)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0085(GetKillingUnit(),2)
endfunction

// 24462 ~ 24467
function Func1013 takes nothing returns nothing
    set boolean022=false
    call DisableTrigger(trigger019)
    call Func0415("Rax"+I2S(1)+I2S(2)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
    call Func0085(GetKillingUnit(),2)
endfunction

// 24469 ~ 24488
function Func1014 takes nothing returns boolean
    local real loc_real01=GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)/GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)
    if loc_real01<0.75 and boolean082==false then
        set boolean082=true
        call Func0415("Tree",75)
    endif
    if loc_real01<0.50 and boolean081==false then
        set boolean081=true
        call Func0415("Tree",50)
    endif
    if loc_real01<0.25 and boolean080==false then
        set boolean080=true
        call Func0415("Tree",25)
    endif
    if loc_real01<0.10 and boolean079==false then
        set boolean079=true
        call Func0415("Tree",10)
    endif
    return false
endfunction

// 24490 ~ 24509
function Func1015 takes nothing returns boolean
    local real loc_real01=GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)/GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)
    if loc_real01<0.75 and boolean078==false then
        set boolean078=true
        call Func0415("Throne",75)
    endif
    if loc_real01<0.50 and boolean077==false then
        set boolean077=true
        call Func0415("Throne",50)
    endif
    if loc_real01<0.25 and boolean076==false then
        set boolean076=true
        call Func0415("Throne",25)
    endif
    if loc_real01<0.10 and boolean075==false then
        set boolean075=true
        call Func0415("Throne",10)
    endif
    return false
endfunction

// 24511 ~ 24516
function Func1016 takes nothing returns boolean
    if(boolean020 or boolean021 or boolean022 or boolean017 or boolean018 or boolean019)then
        return false
    endif
    return true
endfunction

// 24518 ~ 24523
function Func1017 takes nothing returns nothing
    call Func0152(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName('n04O')+" "+GetObjectName('n0C7'))
    call SetPlayerTechResearchedSwap('R00D',(GetPlayerTechCountSimple('R00D',players003[0])+30),players003[0])
    call SetPlayerTechResearchedSwap('R00C',(GetPlayerTechCountSimple('R00C',players003[0])+30),players003[0])
    call DisableTrigger(trigger020)
endfunction

// 24525 ~ 24530
function Func1018 takes nothing returns boolean
    if(boolean014 or boolean015 or boolean016 or boolean011 or boolean012 or boolean013)then
        return false
    endif
    return true
endfunction

// 24532 ~ 24537
function Func1019 takes nothing returns nothing
    call Func0152(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName('n04X')+" "+GetObjectName('n0C9'))
    call SetPlayerTechResearchedSwap('R009',(GetPlayerTechCountSimple('R009',players004[0])+30),players004[0])
    call SetPlayerTechResearchedSwap('R00B',(GetPlayerTechCountSimple('R00B',players004[0])+30),players004[0])
    call DisableTrigger(trigger021)
endfunction

// 24539 ~ 24548
function Func1020 takes nothing returns nothing
    call SetPlayerTechResearchedSwap('R007',(GetPlayerTechCountSimple('R007',players003[0])+1),players003[0])
    call SetPlayerTechResearchedSwap('R00C',(GetPlayerTechCountSimple('R00C',players003[0])+1),players003[0])
    call SetPlayerTechResearchedSwap('R008',(GetPlayerTechCountSimple('R008',players003[0])+1),players003[0])
    call SetPlayerTechResearchedSwap('R00D',(GetPlayerTechCountSimple('R00D',players003[0])+1),players003[0])
    call SetPlayerTechResearchedSwap('R009',(GetPlayerTechCountSimple('R009',players004[0])+1),players004[0])
    call SetPlayerTechResearchedSwap('R003',(GetPlayerTechCountSimple('R003',players004[0])+1),players004[0])
    call SetPlayerTechResearchedSwap('R00A',(GetPlayerTechCountSimple('R00A',players004[0])+1),players004[0])
    call SetPlayerTechResearchedSwap('R00B',(GetPlayerTechCountSimple('R00B',players004[0])+1),players004[0])
endfunction

// 24550 ~ 24587
function Func1021 takes nothing returns nothing
    local location loc_location01=GetRectCenter(rect050)
    call RemoveUnit(CreateUnitAtLoc(player001,'nbdo',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nbds',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'ngst',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'n026',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nggr',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nbdk',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nbwm',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nogm',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nomg',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nfpc',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nfpu',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nsth',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nstl',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nsat',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nwlg',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nkol',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nkob',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nkot',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'ncnk',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'ncen',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'ngns',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nftb',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nfsh',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'ngh1',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'npfl',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nowe',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nowb',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nmrm',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nmrr',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'nmrl',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'ndtr',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'ndtw',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'n0LC',loc_location01,bj_UNIT_FACING))
    call RemoveUnit(CreateUnitAtLoc(player001,'n0LD',loc_location01,bj_UNIT_FACING))
    call RemoveLocation(loc_location01)
endfunction

// 24589 ~ 24598
function Func1022 takes integer loc_integer01,integer loc_integer02,integer loc_integer03 returns integer
    local integer loc_integer04=integers114[loc_integer01]
    local integer loc_integer05=GetRandomInt(loc_integer02,loc_integer03)
    loop
        exitwhen loc_integer04!=loc_integer05
        set loc_integer05=GetRandomInt(loc_integer02,loc_integer03)
    endloop
    set integers114[loc_integer01]=loc_integer05
    return loc_integer05
endfunction

// 24600 ~ 24604
function Func1023 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'n0HW',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'n0HX',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'n0HW',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24606 ~ 24610
function Func1024 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'njg1',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'njg1',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'njga',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24612 ~ 24616
function Func1025 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'nbdo',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nbdo',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nbds',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24618 ~ 24622
function Func1026 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'nbdk',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nbdk',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nbwm',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24624 ~ 24628
function Func1027 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'ngst',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'ngst',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nggr',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24630 ~ 24634
function Func1028 takes nothing returns boolean
    call Func0035(GetTriggeringTrigger())
    call IssueTargetOrder(GetTriggerUnit(),"unholyfrenzy",GetTriggerUnit())
    return false
endfunction

// 24636 ~ 24643
function Func1029 takes real loc_real01,real loc_real02 returns nothing
    local unit loc_unit01
    set loc_unit01=CreateUnit(player001,'n0LC',loc_real01,loc_real02,0)
    call SetUnitPosition(loc_unit01,loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'n0LD',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'n0LD',loc_real01,loc_real02,0),loc_real01,loc_real02)
    set loc_unit01=null
endfunction

// 24645 ~ 24649
function Func1030 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'nogm',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nogm',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nomg',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24651 ~ 24654
function Func1031 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'nfpc',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nfpu',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24656 ~ 24660
function Func1032 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'nsth',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nstl',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nsat',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24662 ~ 24667
function Func1033 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'nstl',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nstl',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nsat',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nsat',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24669 ~ 24673
function Func1034 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'nwlg',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nwlg',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'n00S',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24675 ~ 24678
function Func1035 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'n026',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'n026',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24680 ~ 24686
function Func1036 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'nkol',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nkob',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nkob',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nkob',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nkot',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24688 ~ 24692
function Func1037 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'nftb',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nftb',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nfsh',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24694 ~ 24697
function Func1038 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'ncen',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'ncnk',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24699 ~ 24703
function Func1039 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'ngns',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'ngns',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'ngns',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24705 ~ 24709
function Func1040 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'nftb',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nftb',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nkol',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24711 ~ 24715
function Func1041 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'ngh1',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'npfl',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'npfl',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24717 ~ 24721
function Func1042 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'nowe',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nowb',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'nowb',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction
