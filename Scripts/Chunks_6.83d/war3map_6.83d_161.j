
// 32232 ~ 32235
function Func1310 takes unit loc_unit01 returns unit
    local integer loc_integer01=GetHandleId(GetOwningPlayer(loc_unit01))
    return(LoadUnitHandle(hashtable001,(loc_integer01),(333)))
endfunction

// 32237 ~ 32251
function Func1311 takes nothing returns nothing
    local unit loc_unit01
    local integer loc_integer01=0
    if(units001[GetPlayerId(GetTriggerPlayer())]==null)then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetObjectName('n08A'))
    else
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetUnitName(units001[GetPlayerId(GetTriggerPlayer())])+" "+GetObjectName('n08N')+" "+I2S(R2I(0.5+Func0443(units001[GetPlayerId(GetTriggerPlayer())]))))
        if Func1309(units001[GetPlayerId(GetTriggerPlayer())])then
            set loc_unit01=Func1310(units001[GetPlayerId(GetTriggerPlayer())])
            if loc_unit01!=null then
                call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetUnitName(loc_unit01)+" "+GetObjectName('n08N')+" "+I2S(R2I(0.5+GetUnitMoveSpeed(loc_unit01))))
            endif
        endif
    endif
endfunction

// 32253 ~ 32275
function Func1312 takes nothing returns nothing
    local unit loc_unit01
    local integer loc_integer01=0
    if(units001[GetPlayerId(GetTriggerPlayer())]==null)then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetObjectName('n08A'))
    else
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetUnitName(units001[GetPlayerId(GetTriggerPlayer())])+" "+GetObjectName('n08N')+" "+I2S(R2I(0.5+Func0443(units001[GetPlayerId(GetTriggerPlayer())]))))
        if Func1309(units001[GetPlayerId(GetTriggerPlayer())])then
            set loc_unit01=Func1310(units001[GetPlayerId(GetTriggerPlayer())])
            if loc_unit01!=null then
                call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetUnitName(loc_unit01)+" "+GetObjectName('n08N')+" "+I2S(R2I(0.5+GetUnitMoveSpeed(loc_unit01))))
            endif
        endif
        loop
            exitwhen loc_integer01>16
            set loc_unit01=units001[loc_integer01]
            if loc_unit01!=null and loc_unit01!=units001[GetPlayerId(GetTriggerPlayer())]and IsUnitAlly(loc_unit01,GetTriggerPlayer())==true then
                call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetUnitName(loc_unit01)+" "+GetObjectName('n08N')+" "+I2S(R2I(0.5+GetUnitMoveSpeed(loc_unit01))))
            endif
            set loc_integer01=loc_integer01+1
        endloop
    endif
endfunction
