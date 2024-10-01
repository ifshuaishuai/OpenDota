
// 34850 ~ 34855
function Func1417 takes nothing returns integer
    if player016==players003[1]then
        return 1
    endif
    return 2
endfunction

// 34857 ~ 34863
function Func1418 takes string loc_string01,real loc_real01,real loc_real02,real loc_real03,real loc_real04,real loc_real05,boolean loc_boolean01,integer loc_integer01,integer loc_integer02,integer loc_integer03 returns image
    set image001=CreateImage(loc_string01,loc_real01,loc_real02,0,loc_real03-(loc_real01/2),loc_real04-(loc_real02/2),loc_real05,0,0,0,2)
    call SetImageRenderAlways(image001,true)
    call ShowImage(image001,loc_boolean01)
    call SetImageColor(image001,loc_integer01,loc_integer02,loc_integer03,255)
    return image001
endfunction

// 34865 ~ 34868
function Func1419 takes image loc_image01 returns nothing
    call ShowImage(loc_image01,false)
    call DestroyImage(loc_image01)
endfunction

// 34870 ~ 34950
function Func1420 takes integer loc_integer01 returns nothing
    local real loc_real01=real244+40
    local real loc_real02=real245-50
    local integer loc_integer02=255
    local integer loc_integer03=0
    local integer loc_integer04=0
    local integer loc_integer05=0
    local integer loc_integer06=0
    local integer loc_integer07=255
    local integer loc_integer08
    local integer loc_integer09
    local integer loc_integer10
    if loc_integer01==1 then
        set loc_integer08=loc_integer02
        set loc_integer09=loc_integer03
        set loc_integer10=loc_integer04
        set image002=Func1418("Fonts\\B.blp",90,90,loc_real01-40,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image003=Func1418("Fonts\\A.blp",90,90,loc_real01,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image004=Func1418("Fonts\\N.blp",90,90,loc_real01+50,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
    elseif loc_integer01==2 then
        set loc_integer08=loc_integer05
        set loc_integer09=loc_integer06
        set loc_integer10=loc_integer07
        call Func1419(image002)
        call Func1419(image003)
        call Func1419(image004)
        set image002=Func1418("Fonts\\P.blp",90,90,loc_real01-60,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image003=Func1418("Fonts\\I.blp",90,90,loc_real01-20,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image004=Func1418("Fonts\\C.blp",90,90,loc_real01,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image005=Func1418("Fonts\\K.blp",90,90,loc_real01+45,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
    elseif loc_integer01==3 then
        set loc_integer08=loc_integer02
        set loc_integer09=loc_integer03
        set loc_integer10=loc_integer04
        call Func1419(image002)
        call Func1419(image003)
        call Func1419(image004)
        call Func1419(image005)
        set image002=Func1418("Fonts\\B.blp",90,90,loc_real01-40,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image003=Func1418("Fonts\\A.blp",90,90,loc_real01,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image004=Func1418("Fonts\\N.blp",90,90,loc_real01+50,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
    elseif loc_integer01==4 then
        set loc_integer08=loc_integer05
        set loc_integer09=loc_integer06
        set loc_integer10=loc_integer07
        call Func1419(image002)
        call Func1419(image003)
        call Func1419(image004)
        set image002=Func1418("Fonts\\P.blp",90,90,loc_real01-60,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image003=Func1418("Fonts\\I.blp",90,90,loc_real01-20,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image004=Func1418("Fonts\\C.blp",90,90,loc_real01,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image005=Func1418("Fonts\\K.blp",90,90,loc_real01+45,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
    elseif loc_integer01==5 then
        set loc_integer08=loc_integer02
        set loc_integer09=loc_integer03
        set loc_integer10=loc_integer04
        call Func1419(image002)
        call Func1419(image003)
        call Func1419(image004)
        call Func1419(image005)
        set image002=Func1418("Fonts\\B.blp",90,90,loc_real01-40,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image003=Func1418("Fonts\\A.blp",90,90,loc_real01,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image004=Func1418("Fonts\\N.blp",90,90,loc_real01+50,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
    elseif loc_integer01==6 then
        set loc_integer08=loc_integer05
        set loc_integer09=loc_integer06
        set loc_integer10=loc_integer07
        call Func1419(image002)
        call Func1419(image003)
        call Func1419(image004)
        set image002=Func1418("Fonts\\P.blp",90,90,loc_real01-60,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image003=Func1418("Fonts\\I.blp",90,90,loc_real01-20,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image004=Func1418("Fonts\\C.blp",90,90,loc_real01,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
        set image005=Func1418("Fonts\\K.blp",90,90,loc_real01+45,loc_real02,0,true,loc_integer08,loc_integer09,loc_integer10)
    elseif loc_integer01==7 then
        call Func1419(image002)
        call Func1419(image003)
        call Func1419(image004)
        call Func1419(image005)
    endif
endfunction
