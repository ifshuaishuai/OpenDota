
// 30160 ~ 30165
function Func1219 takes nothing returns boolean
    if GetUnitTypeId(GetFilterUnit())=='o004' or GetUnitTypeId(GetFilterUnit())=='oeye' then
        call KillUnit(GetFilterUnit())
    endif
    return false
endfunction

// 30167 ~ 30173
function Func1220 takes nothing returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,0,0,9999,Condition(function Func1219))
    call Func0029(loc_group01)
    set loc_group01=null
    set boolean043=true
endfunction

// 30175 ~ 30179
function Func1221 takes nothing returns nothing
    call Func1218()
    call Func1217()
    set boolean043=true
endfunction

// 30181 ~ 30186
function Func1222 takes nothing returns boolean
    if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true then
        call SetHeroLevel(GetFilterUnit(),GetHeroLevel(GetFilterUnit())+Func0139(integer022,1),true)
    endif
    return false
endfunction

// 30188 ~ 30200
function Func1223 takes nothing returns nothing
    local string loc_string01=SubString(GetEventPlayerChatString(),6,StringLength(GetEventPlayerChatString()))
    local integer loc_integer01=S2I(loc_string01)
    local group loc_group01=Func0030()
    if loc_integer01<1 then
        set loc_integer01=1
    endif
    set integer022=loc_integer01
    call GroupEnumUnitsOfPlayer(loc_group01,GetTriggerPlayer(),Condition(function Func1222))
    call Func0029(loc_group01)
    set loc_group01=null
    set boolean043=true
endfunction

// 30202 ~ 30205
function Func1224 takes nothing returns nothing
    call TriggerExecute(trigger007)
    set boolean043=true
endfunction

// 30207 ~ 30215
function Func1225 takes nothing returns boolean
    if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true then
        call UnitResetCooldown(GetFilterUnit())
        call TimerStart(timers003[GetPlayerId((GetOwningPlayer(GetFilterUnit())))],0,false,null)
        call SetUnitState(GetFilterUnit(),UNIT_STATE_LIFE,GetUnitState(GetFilterUnit(),UNIT_STATE_MAX_LIFE))
        call SetUnitState(GetFilterUnit(),UNIT_STATE_MANA,GetUnitState(GetFilterUnit(),UNIT_STATE_MAX_MANA))
    endif
    return false
endfunction

// 30217 ~ 30223
function Func1226 takes nothing returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,GetTriggerPlayer(),Condition(function Func1225))
    call Func0029(loc_group01)
    set loc_group01=null
    set boolean043=true
endfunction

// 30225 ~ 30228
function Func1227 takes nothing returns nothing
    call KillUnit(units001[GetPlayerId(GetTriggerPlayer())])
    set boolean043=true
endfunction

// 30230 ~ 30238
function Func1228 takes nothing returns nothing
    local string loc_string01=SubString(GetEventPlayerChatString(),5,StringLength(GetEventPlayerChatString()))
    local integer loc_integer01=S2I(loc_string01)
    if loc_integer01<0 or loc_integer01>24 then
        set loc_integer01=0
    endif
    call SetFloatGameState(GAME_STATE_TIME_OF_DAY,loc_integer01)
    set boolean043=true
endfunction

// 30240 ~ 30245
function Func1229 takes nothing returns nothing
    local string loc_string01=SubString(GetEventPlayerChatString(),5,StringLength(GetEventPlayerChatString()))
    local integer loc_integer01=S2I(loc_string01)
    call SetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    set boolean043=true
endfunction

// 30247 ~ 30268
function Func1230 takes nothing returns nothing
    local unit loc_unit01=units001[GetPlayerId(GetTriggerPlayer())]
    local player loc_player01=GetTriggerPlayer()
    local location loc_location01
    if Func0057(loc_player01)then
        set loc_location01=GetRectCenter(rect004)
    else
        set loc_location01=GetRectCenter(rect011)
    endif
    if boolean036==false and Func0194(loc_unit01)then
        call Func0485(loc_unit01,loc_player01,GetLocationX(loc_location01),GetLocationY(loc_location01),true)
        if Func0529(loc_unit01)==false or GetUnitAbilityLevel(loc_unit01,'A0MW')==0 then
            call ReviveHeroLoc(loc_unit01,loc_location01,true)
        else
            call Func0532(loc_unit01,loc_location01)
        endif
    endif
    call RemoveLocation(loc_location01)
    set loc_unit01=null
    set loc_player01=null
    set loc_location01=null
endfunction

// 30270 ~ 30286
function Func1231 takes nothing returns nothing
    local unit loc_unit01=units001[GetPlayerId(GetTriggerPlayer())]
    local player loc_player01
    local unit loc_unit02
    local real loc_real01=GetRectCenterX(rect050)
    local real loc_real02=GetRectCenterX(rect050)
    if Func0057(GetOwningPlayer(loc_unit01))then
        set loc_player01=players003[1]
    else
        set loc_player01=players004[1]
    endif
    set loc_unit02=CreateUnit(loc_player01,'H000',loc_real01,loc_real02,0)
    call SetHeroLevel(loc_unit02,10,false)
    set loc_unit01=null
    set loc_unit02=null
    set loc_player01=null
endfunction

// 30288 ~ 30290
function Func1232 takes nothing returns nothing
    call TriggerEvaluate(trigger056)
endfunction

// 30292 ~ 30294
function Func1233 takes nothing returns nothing
    call TriggerEvaluate(trigger024)
endfunction

// 30296 ~ 30298
function Func1234 takes nothing returns nothing
    call EnumDestructablesInRectAll(bj_mapInitialPlayableArea,function Func1195)
endfunction

// 30300 ~ 30305
function Func1235 takes nothing returns boolean
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60,"**** "+GetObjectName('n06F')+" ****")
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60,GetObjectName('n076')+" -lvlup xx, -refresh, -spawncreeps, -powerup, -neutrals, -kill, -gold xxxx, -time xx, -killsent, -killscourge, -killall, -noherolimit, -trees, -killwards, -spawnoff, -spawnon, -roshan, -respawn, -dummy")
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60,"**** "+GetObjectName('n06F')+" ****")
    return false
endfunction

// 30307 ~ 30543
function Func1236 takes nothing returns nothing
    local player loc_player01=player003
    local trigger loc_trigger01
    set boolean096=true
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60,GetObjectName('n076')+" -lvlup xx, -refresh, -spawncreeps, -powerup, -neutrals, -kill, -gold xxxx, -time xx, -killsent, -killscourge, -killall, -noherolimit, -trees, -killwards, -spawnoff, -spawnon, -roshan, -respawn, -dummy")
    set loc_trigger01=CreateTrigger()
    call TriggerAddCondition(loc_trigger01,Condition(function Func1235))
    call TriggerRegisterTimerEvent(loc_trigger01,GetRandomReal(60,100),false)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-lvlup",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-lvlup",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-lvlup",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-lvlup",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-lvlup",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-lvlup",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-lvlup",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-lvlup",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-lvlup",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-lvlup",false)
    call TriggerAddAction(loc_trigger01,function Func1223)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-spawncreeps",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-spawncreeps",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-spawncreeps",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-spawncreeps",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-spawncreeps",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-spawncreeps",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-spawncreeps",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-spawncreeps",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-spawncreeps",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-spawncreeps",true)
    call TriggerAddAction(loc_trigger01,function Func1224)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-refresh",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-refresh",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-refresh",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-refresh",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-refresh",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-refresh",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-refresh",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-refresh",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-refresh",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-refresh",true)
    call TriggerAddAction(loc_trigger01,function Func1226)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-kill",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-kill",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-kill",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-kill",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-kill",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-kill",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-kill",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-kill",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-kill",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-kill",true)
    call TriggerAddAction(loc_trigger01,function Func1227)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-gold",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-gold",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-gold",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-gold",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-gold",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-gold",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-gold",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-gold",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-gold",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-gold",false)
    call TriggerAddAction(loc_trigger01,function Func1229)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-time",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-time",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-time",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-time",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-time",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-time",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-time",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-time",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-time",false)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-time",false)
    call TriggerAddAction(loc_trigger01,function Func1228)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-powerup",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-powerup",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-powerup",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-powerup",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-powerup",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-powerup",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-powerup",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-powerup",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-powerup",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-powerup",true)
    call TriggerAddAction(loc_trigger01,function Func1232)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-killall",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-killall",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-killall",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-killall",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-killall",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-killall",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-killall",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-killall",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-killall",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-killall",true)
    call TriggerAddAction(loc_trigger01,function Func1221)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-killsent",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-killsent",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-killsent",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-killsent",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-killsent",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-killsent",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-killsent",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-killsent",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-killsent",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-killsent",true)
    call TriggerAddAction(loc_trigger01,function Func1218)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-killscourge",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-killscourge",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-killscourge",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-killscourge",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-killscourge",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-killscourge",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-killscourge",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-killscourge",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-killscourge",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-killscourge",true)
    call TriggerAddAction(loc_trigger01,function Func1217)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-neutrals",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-neutrals",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-neutrals",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-neutrals",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-neutrals",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-neutrals",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-neutrals",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-neutrals",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-neutrals",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-neutrals",true)
    call TriggerAddAction(loc_trigger01,function Func1233)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-noherolimit",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-noherolimit",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-noherolimit",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-noherolimit",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-noherolimit",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-noherolimit",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-noherolimit",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-noherolimit",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-noherolimit",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-noherolimit",true)
    call TriggerAddAction(loc_trigger01,function Func1215)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-trees",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-trees",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-trees",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-trees",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-trees",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-trees",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-trees",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-trees",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-trees",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-trees",true)
    call TriggerAddAction(loc_trigger01,function Func1234)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-killwards",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-killwards",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-killwards",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-killwards",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-killwards",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-killwards",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-killwards",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-killwards",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-killwards",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-killwards",true)
    call TriggerAddAction(loc_trigger01,function Func1220)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-spawnoff",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-spawnoff",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-spawnoff",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-spawnoff",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-spawnoff",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-spawnoff",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-spawnoff",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-spawnoff",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-spawnoff",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-spawnoff",true)
    call TriggerAddAction(loc_trigger01,function Func1214)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-spawnon",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-spawnon",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-spawnon",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-spawnon",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-spawnon",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-spawnon",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-spawnon",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-spawnon",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-spawnon",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-spawnon",true)
    call TriggerAddAction(loc_trigger01,function Func1212)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-roshan",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-roshan",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-roshan",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-roshan",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-roshan",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-roshan",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-roshan",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-roshan",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-roshan",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-roshan",true)
    call TriggerAddAction(loc_trigger01,function Func1213)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-respawn",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-respawn",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-respawn",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-respawn",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-respawn",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-respawn",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-respawn",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-respawn",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-respawn",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-respawn",true)
    call TriggerAddAction(loc_trigger01,function Func1230)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-dummy",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-dummy",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-dummy",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-dummy",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-dummy",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-dummy",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-dummy",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-dummy",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-dummy",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-dummy",true)
    call TriggerAddAction(loc_trigger01,function Func1231)
endfunction

// 30545 ~ 30547
function Func1237 takes nothing returns boolean
    return not boolean002
endfunction
