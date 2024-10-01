
// 37350 ~ 37354
function Func1478 takes string loc_string01,real loc_real01,real loc_real02,real loc_real03,real loc_real04,real loc_real05,boolean loc_boolean01 returns nothing
    set image001=CreateImage(loc_string01,loc_real01,loc_real02,0,loc_real03-(loc_real01/2),loc_real04-(loc_real02/2),loc_real05,0,0,0,2)
    call SetImageRenderAlways(image001,true)
    call ShowImage(image001,loc_boolean01)
endfunction

// 37356 ~ 37360
function Func1479 takes string loc_string01,integer loc_integer01,integer loc_integer02,integer loc_integer03,integer loc_integer04,real loc_real01,real loc_real02 returns image
    call Func1478("Fonts\\"+loc_string01+".blp",60,60,loc_real01-20,loc_real02,0,true)
    call SetImageColor(image001,loc_integer01,loc_integer02,loc_integer03,loc_integer04)
    return image001
endfunction

// 37362 ~ 37458
function Func1480 takes boolean loc_boolean01,boolean loc_boolean02 returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05
    local integer loc_integer06
    local integer loc_integer07
    local integer loc_integer08
    local integer loc_integer09
    local integer loc_integer10
    local integer loc_integer11=0
    set loc_integer01=integers130[1]
    set loc_integer02=loc_integer01/60
    set loc_integer03=(loc_integer01-loc_integer02*60)/10
    set loc_integer04=loc_integer01-loc_integer02*60-loc_integer03*10
    set loc_integer05=integers130[2]
    set loc_integer06=loc_integer05/60
    set loc_integer07=(loc_integer05-loc_integer06*60)/10
    set loc_integer08=loc_integer05-loc_integer06*60-loc_integer07*10
    if loc_boolean01==false then
        call ShowImage(image006,false)
        call DestroyImage(image006)
        call ShowImage(image007,false)
        call DestroyImage(image007)
        call ShowImage(image008,false)
        call DestroyImage(image008)
        call ShowImage(image009,false)
        call DestroyImage(image009)
        call ShowImage(image010,false)
        call DestroyImage(image010)
        call ShowImage(image011,false)
        call DestroyImage(image011)
        call ShowImage(image012,false)
        call DestroyImage(image012)
        call ShowImage(image013,false)
        call DestroyImage(image013)
        call ShowImage(image014,false)
        call DestroyImage(image014)
        call ShowImage(image015,false)
        call DestroyImage(image015)
        call ShowImage(image016,false)
        call DestroyImage(image016)
        call ShowImage(image017,false)
        call DestroyImage(image017)
        call ShowImage(image018,false)
        call DestroyImage(image018)
        call ShowImage(image019,false)
        call DestroyImage(image019)
        call ShowImage(image020,false)
        call DestroyImage(image020)
        call ShowImage(image021,false)
        call DestroyImage(image021)
    endif
    if loc_boolean02==false then
        set loc_integer09=255
        set loc_integer10=255
        if integer451==1 then
            if IsPlayerAlly(players003[1],GetLocalPlayer())then
                set loc_integer11=255
                set loc_integer09=0
            endif
        else
            if IsPlayerAlly(players004[1],GetLocalPlayer())then
                set loc_integer11=255
                set loc_integer10=0
            endif
        endif
        set image006=Func1479(I2S(loc_integer02),255,loc_integer09,loc_integer09,255,real242-40,real243+300)
        set image007=Func1479("58",255,loc_integer09,loc_integer09,255,real242-0,real243+300)
        set image008=Func1479(I2S(loc_integer03),255,loc_integer09,loc_integer09,255,real242+20,real243+300)
        set image009=Func1479(I2S(loc_integer04),255,loc_integer09,loc_integer09,255,real242+60,real243+300)
        set image010=Func1479(I2S(loc_integer06),255,loc_integer10,loc_integer10,255,real242-40,real243-300)
        set image011=Func1479("58",255,loc_integer10,loc_integer10,255,real242-0,real243-300)
        set image012=Func1479(I2S(loc_integer07),255,loc_integer10,loc_integer10,255,real242+20,real243-300)
        set image013=Func1479(I2S(loc_integer08),255,loc_integer10,loc_integer10,255,real242+60,real243-300)
        if integer452==1 or integer452==2 or integer452==3 or integer452==4 then
            set image014=Func1479("Y",255,0,0,loc_integer11,real242-130,real243)
            set image015=Func1479("O",255,0,0,loc_integer11,real242-90,real243)
            set image016=Func1479("U",255,0,0,loc_integer11,real242-50,real243)
            set image017=Func1479("R",255,0,0,loc_integer11,real242-10,real243)
            set image018=Func1479("B",255,0,0,loc_integer11,real242+70,real243)
            set image019=Func1479("A",255,0,0,loc_integer11,real242+110,real243)
            set image020=Func1479("N",255,0,0,loc_integer11,real242+150,real243)
            set image021=Func1479("K",255,0,0,0,real242+170,real243)
        else
            set image014=Func1479("Y",255,0,0,loc_integer11,real242-150,real243)
            set image015=Func1479("O",255,0,0,loc_integer11,real242-110,real243)
            set image016=Func1479("U",255,0,0,loc_integer11,real242-70,real243)
            set image017=Func1479("R",255,0,0,loc_integer11,real242-30,real243)
            set image018=Func1479("P",255,0,0,loc_integer11,real242+50,real243)
            set image019=Func1479("I",255,0,0,loc_integer11,real242+90,real243)
            set image020=Func1479("C",255,0,0,loc_integer11,real242+130,real243)
            set image021=Func1479("K",255,0,0,loc_integer11,real242+170,real243)
        endif
    endif
endfunction
