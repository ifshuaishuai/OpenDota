
// 49422 ~ 49427
function Func2092 takes real loc_real01,real loc_real02,real loc_real03,real loc_real04,real loc_real05,real loc_real06,real loc_real07,real loc_real08 returns boolean
    local real loc_real09=(loc_real08-loc_real02)*(loc_real03-loc_real01)-(loc_real07-loc_real01)*(loc_real04-loc_real02)
    local real loc_real10=(loc_real08-loc_real06)*(loc_real01-loc_real05)-(loc_real07-loc_real05)*(loc_real02-loc_real06)
    local real loc_real11=(loc_real08-loc_real04)*(loc_real05-loc_real03)-(loc_real07-loc_real03)*(loc_real06-loc_real04)
    return(loc_real09*loc_real10>0)and(loc_real11*loc_real10>0)
endfunction

// 49429 ~ 49437
function Func2093 takes nothing returns boolean
    local real loc_real01=real009
    local real loc_real02=real010
    local real loc_real03=real011
    local real loc_real04=real012
    local real loc_real05=real013
    local real loc_real06=real014
    return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and Func2092(loc_real01,loc_real02,loc_real03,loc_real04,loc_real05,loc_real06,GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()))
endfunction

// 49439 ~ 49458
function Func2094 takes real loc_real01,real loc_real02,real loc_real03 returns nothing
    local real loc_real04=600
    local real loc_real05=200
    local real loc_real06=250
    local real loc_real07=Asin((loc_real06-loc_real05)/loc_real04)
    local real loc_real08=loc_real05/Sin(loc_real07)
    local real loc_real09=(loc_real04+loc_real06+loc_real08)*Tan(loc_real07)
    local real loc_real10=loc_real02+loc_real08*Cos((loc_real01-180)*bj_DEGTORAD)
    local real loc_real11=loc_real03+loc_real08*Sin((loc_real01-180)*bj_DEGTORAD)
    local real loc_real12=(loc_real02+(loc_real04+loc_real06)*Cos(loc_real01*bj_DEGTORAD))+loc_real09*Cos((loc_real01-90)*bj_DEGTORAD)
    local real loc_real13=(loc_real03+(loc_real04+loc_real06)*Sin(loc_real01*bj_DEGTORAD))+loc_real09*Sin((loc_real01-90)*bj_DEGTORAD)
    local real loc_real14=(loc_real02+(loc_real04+loc_real06)*Cos(loc_real01*bj_DEGTORAD))+loc_real09*Cos((loc_real01+90)*bj_DEGTORAD)
    local real loc_real15=(loc_real03+(loc_real04+loc_real06)*Sin(loc_real01*bj_DEGTORAD))+loc_real09*Sin((loc_real01+90)*bj_DEGTORAD)
    set real009=loc_real10
    set real010=loc_real11
    set real011=loc_real12
    set real012=loc_real13
    set real013=loc_real14
    set real014=loc_real15
endfunction

// 49460 ~ 49466
function Func2095 takes nothing returns nothing
    local unit loc_unit01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),'e00E',GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
    call Func0193(loc_unit01,'A2ZE')
    call SetUnitAbilityLevel(loc_unit01,'A2ZE',GetUnitAbilityLevel(GetTriggerUnit(),'A0O7'))
    call IssueTargetOrder(loc_unit01,"slow",GetEnumUnit())
    set loc_unit01=null
endfunction
