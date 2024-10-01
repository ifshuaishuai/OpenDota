
// 40716 ~ 40719
function Func1552 takes nothing returns nothing
    call DisableTrigger((LoadTriggerHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(174))))
    call DisableTrigger(GetTriggeringTrigger())
endfunction

// 40721 ~ 40731
function Func1553 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local trigger loc_trigger02=CreateTrigger()
    call Func0152(bj_FORCE_ALL_PLAYERS,10.00," ")
    call Func0152(bj_FORCE_ALL_PLAYERS,10.00,"Extra commands: -noneutrals can be entered in the following 15 seconds. ")
    call TriggerRegisterTimerEvent(loc_trigger01,15,false)
    call TriggerAddAction(loc_trigger01,function Func1552)
    call SaveTriggerHandle(hashtable001,(GetHandleId(loc_trigger01)),(174),(loc_trigger02))
    call TriggerRegisterPlayerChatEvent(loc_trigger02,player003,"-noneutrals",true)
    call TriggerAddAction(loc_trigger02,function Func1551)
endfunction

// 40733 ~ 40736
function Func1554 takes nothing returns nothing
    set boolean122=true
    call ExecuteFunc("Func1553")
endfunction
