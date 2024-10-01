
// 16570 ~ 16578
function Func0633 takes nothing returns boolean
    if IsUnitAlly(GetFilterUnit(),GetOwningPlayer(unit124))==true and GetUnitAbilityLevel(GetFilterUnit(),'Aloc')==0 and UnitInventorySize(GetFilterUnit())>1 and GetUnitTypeId(GetFilterUnit())!='ncop' and GetPlayerAlliance(GetOwningPlayer(GetFilterUnit()),GetOwningPlayer(unit124),ALLIANCE_SHARED_CONTROL)and GetOwningPlayer(unit124)!=GetOwningPlayer(GetFilterUnit())and IsUnitIllusion(GetFilterUnit())==false and Func0194(GetFilterUnit())==false then
        if Func0096(GetFilterUnit())==true then
            set integer022=integer022+1
            set unit125=GetFilterUnit()
        endif
    endif
    return false
endfunction
