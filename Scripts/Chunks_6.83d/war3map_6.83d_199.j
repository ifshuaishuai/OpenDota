
// 40816 ~ 40818
function Func1569 takes nothing returns nothing
    set boolean131=true
endfunction

// 40820 ~ 40822
function Func1570 takes nothing returns nothing
    set boolean053=true
endfunction

// 40824 ~ 40835
function Func1571 takes nothing returns boolean
    if GetLocalPlayer()==player009 or GetLocalPlayer()==player010 then
        if GetTriggerEvalCount(GetTriggeringTrigger())==1 then
            call CameraSetupSetDestPosition(camerasetup001,0,0,0.0)
        else
            call CameraSetupSetDestPosition(camerasetup001,GetCameraTargetPositionX(),GetCameraTargetPositionY(),0.0)
        endif
        call CameraSetupApplyForPlayer(true,camerasetup001,GetLocalPlayer(),0)
        call SetTerrainFogEx(0,0.0,100000.0,0.500,0.353,0.314,0.235)
    endif
    return false
endfunction

// 40837 ~ 40853
function Func1572 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    set boolean132=true
    set camerasetup001=CreateCameraSetup()
    call CameraSetupSetField(camerasetup001,CAMERA_FIELD_ZOFFSET,0.0,0.0)
    call CameraSetupSetField(camerasetup001,CAMERA_FIELD_ROTATION,90.0,0.0)
    call CameraSetupSetField(camerasetup001,CAMERA_FIELD_ANGLE_OF_ATTACK,304.0,0.0)
    call CameraSetupSetField(camerasetup001,CAMERA_FIELD_TARGET_DISTANCE,2500.0,0.0)
    call CameraSetupSetField(camerasetup001,CAMERA_FIELD_ROLL,0.0,0.0)
    call CameraSetupSetField(camerasetup001,CAMERA_FIELD_FIELD_OF_VIEW,70.0,0.0)
    call CameraSetupSetField(camerasetup001,CAMERA_FIELD_FARZ,16000.0,0.0)
    call CameraSetupSetDestPosition(camerasetup001,0.0,0.0,0.0)
    call TriggerRegisterTimerEvent(loc_trigger01,180,true)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1571))
    set loc_trigger01=null
endfunction

// 40855 ~ 40857
function Func1573 takes nothing returns boolean
    return Func0056(GetOwningPlayer(GetFilterUnit()))and Func0103(GetFilterUnit())==true and GetUnitTypeId(GetFilterUnit())!='H00J'
endfunction

// 40859 ~ 40861
function Func1574 takes nothing returns boolean
    return Func0057(GetOwningPlayer(GetFilterUnit()))and Func0103(GetFilterUnit())==true and GetUnitTypeId(GetFilterUnit())!='H00J'
endfunction

// 40863 ~ 40870
function Func1575 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+200)
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+200)
    call SetPlayerState(GetOwningPlayer(loc_unit01),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(GetOwningPlayer(loc_unit01),PLAYER_STATE_RESOURCE_GOLD)+150)
    call AddHeroXP(loc_unit01,248,true)
    set loc_unit01=null
endfunction
