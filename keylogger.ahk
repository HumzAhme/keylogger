; modified from: 
; http://www.autohotkey.com/board/topic/30294-simple-key-stroke-recorder/

extracted code frm: https://www.autohotkey.com/board/topic/83920-keylogger-script/;
;

#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
logdir = %A_AppData%\keylogger
FileCreateDir, %logdir%

doublequote = `"

getlog(logdir) {
    FormatTime, time, , yyyy-MM-dd-HH-mm-ss
    newlog = %logdir%\%time%.txt
    return %newlog%
}
    
keyevent(key) {
    global log
    FileAppend, %key%`n, *%log%
    ;previousnewline = 0
}

mouseevent(message) {
    global log
    WinGetActiveTitle, Title
    WinGet, ProcessName, ProcessName, A
    MouseGetPos, x, y, window, controln

    ; ASCII 31 octal 037 Unit Separator
    FileAppend, %A_Tab%{%message%}%A_Tab%%x%%A_Tab%%y%%A_Tab%%ProcessName%%A_Tab%%Title%%A_Tab%%controln%`n, *%log%
}

getwin() {
    global log
    FormatTime, time, , yyyy-MM-dd-HH-mm-ss
    WinGetActiveTitle, Title
    WinGet, win_proc, ProcessName, A
    WinGet, uniq_id, ID, A
    ; ASCII 30 octal 036 Record Separator
    if %uniq_id%
        FileAppend, %A_Tab%%time%%A_Tab%%uniq_id%%A_Tab%%win_proc%%A_Tab%%Title%`n, *%log%
}

make_menu() {
    Menu, TRAY, NoStandard
    Menu, TRAY, add, YOU ARE BEING LOGGED - help, help_handler
    Menu, TRAY, add,
    Menu, TRAY, add, Start new logfile, newlog_handler
    Menu, TRAY, add, About Keylogger, about_handler
    Menu, TRAY, add, Exit, exit_handler
}

log := getlog(logdir)
make_menu()
getwin()

Loop {
    WinWaitNotActive, % "ahk_id " WinActive("A")
    getwin()
}

~a::keyevent("a")
~#a::keyevent("a")
~!a::keyevent("a")
~^a::keyevent("a")
~b::keyevent("b")
~#b::keyevent("b")
~!b::keyevent("b")
~^b::keyevent("b")
~c::keyevent("c")
~#c::keyevent("c")
~!c::keyevent("c")
~^c::keyevent("c")
~d::keyevent("d")
~#d::keyevent("d")
~!d::keyevent("d")
~^d::keyevent("d")
~e::keyevent("e")
~#e::keyevent("e")
~!e::keyevent("e")
~^e::keyevent("e")
~f::keyevent("f")
~#f::keyevent("f")
~!f::keyevent("f")
~^f::keyevent("f")
~g::keyevent("g")
~#g::keyevent("g")
~!g::keyevent("g")
~^g::keyevent("g")
~h::keyevent("h")
~#h::keyevent("h")
~!h::keyevent("h")
~^h::keyevent("h")
~i::keyevent("i")
~#i::keyevent("i")
~!i::keyevent("i")
~^i::keyevent("i")
~j::keyevent("j")
~#j::keyevent("j")
~!j::keyevent("j")
~^j::keyevent("j")
~k::keyevent("k")
~#k::keyevent("k")
~!k::keyevent("k")
~^k::keyevent("k")
~l::keyevent("l")
~#l::keyevent("l")
~!l::keyevent("l")
~^l::keyevent("l")
~m::keyevent("m")
~#m::keyevent("m")
~!m::keyevent("m")
~^m::keyevent("m")
~n::keyevent("n")
~#n::keyevent("n")
~!n::keyevent("n")
~^n::keyevent("n")
~o::keyevent("o")
~#o::keyevent("o")
~!o::keyevent("o")
~^o::keyevent("o")
~p::keyevent("p")
~#p::keyevent("p")
~!p::keyevent("p")
~^p::keyevent("p")
~q::keyevent("q")
~#q::keyevent("q")
~!q::keyevent("q")
~^q::keyevent("q")
~r::keyevent("r")
~#r::keyevent("r")
~!r::keyevent("r")
~^r::keyevent("r")
~s::keyevent("s")
~#s::keyevent("s")
~!s::keyevent("s")
~^s::keyevent("s")
~t::keyevent("t")
~#t::keyevent("t")
~!t::keyevent("t")
~^t::keyevent("t")
~u::keyevent("u")
~#u::keyevent("u")
~!u::keyevent("u")
~^u::keyevent("u")
~v::keyevent("v")
~#v::keyevent("v")
~!v::keyevent("v")
~^v::keyevent("v")
~w::keyevent("w")
~#w::keyevent("w")
~!w::keyevent("w")
~^w::keyevent("w")
~x::keyevent("x")
~#x::keyevent("x")
~!x::keyevent("x")
~^x::keyevent("x")
~y::keyevent("y")
~#y::keyevent("y")
~!y::keyevent("y")
~^y::keyevent("y")
~z::keyevent("z")
~#z::keyevent("z")
~!z::keyevent("z")
~^z::keyevent("z")
~+A::keyevent("A")
~#+A::keyevent("A")
~!+A::keyevent("A")
~^+A::keyevent("A")
~+B::keyevent("B")
~#+B::keyevent("B")
~!+B::keyevent("B")
~^+B::keyevent("B")
~+C::keyevent("C")
~#+C::keyevent("C")
~!+C::keyevent("C")
~^+C::keyevent("C")
~+D::keyevent("D")
~#+D::keyevent("D")
~!+D::keyevent("D")
~^+D::keyevent("D")
~+E::keyevent("E")
~#+E::keyevent("E")
~!+E::keyevent("E")
~^+E::keyevent("E")
~+G::keyevent("G")
~#+G::keyevent("G")
~!+G::keyevent("G")
~^+G::keyevent("G")
~+H::keyevent("H")
~#+H::keyevent("H")
~!+H::keyevent("H")
~^+H::keyevent("H")
~+I::keyevent("I")
~#+I::keyevent("I")
~!+I::keyevent("I")
~^+I::keyevent("I")
~+J::keyevent("J")
~#+J::keyevent("J")
~!+J::keyevent("J")
~^+J::keyevent("J")
~+K::keyevent("K")
~#+K::keyevent("K")
~!+K::keyevent("K")
~^+K::keyevent("K")
~+L::keyevent("L")
~#+L::keyevent("L")
~!+L::keyevent("L")
~^+L::keyevent("L")
~+M::keyevent("M")
~#+M::keyevent("M")
~!+M::keyevent("M")
~^+M::keyevent("M")
~+N::keyevent("N")
~#+N::keyevent("N")
~!+N::keyevent("N")
~^+N::keyevent("N")
~+O::keyevent("O")
~#+O::keyevent("O")
~!+O::keyevent("O")
~^+O::keyevent("O")
~+P::keyevent("P")
~#+P::keyevent("P")
~!+P::keyevent("P")
~^+P::keyevent("P")
~+Q::keyevent("Q")
~#+Q::keyevent("Q")
~!+Q::keyevent("Q")
~^+Q::keyevent("Q")
~+R::keyevent("R")
~#+R::keyevent("R")
~!+R::keyevent("R")
~^+R::keyevent("R")
~+S::keyevent("S")
~#+S::keyevent("S")
~!+S::keyevent("S")
~^+S::keyevent("S")
~+T::keyevent("T")
~#+T::keyevent("T")
~!+T::keyevent("T")
~^+T::keyevent("T")
~+U::keyevent("U")
~#+U::keyevent("U")
~!+U::keyevent("U")
~^+U::keyevent("U")
~+V::keyevent("V")
~#+V::keyevent("V")
~!+V::keyevent("V")
~^+V::keyevent("V")
~+W::keyevent("W")
~#+W::keyevent("W")
~!+W::keyevent("W")
~^+W::keyevent("W")
~+X::keyevent("X")
~#+X::keyevent("X")
~!+X::keyevent("X")
~^+X::keyevent("X")
~+Y::keyevent("Y")
~#+Y::keyevent("Y")
~!+Y::keyevent("Y")
~^+Y::keyevent("Y")
~+Z::keyevent("Z")
~#+Z::keyevent("Z")
~!+Z::keyevent("Z")
~^+Z::keyevent("Z")
~`::keyevent("``")
~#`::keyevent("``")
~!`::keyevent("``")
~^`::keyevent("``")
~!::keyevent("{!}")
~#!::keyevent("{!}")
~!!::keyevent("{!}")
~^!::keyevent("{!}")
~@::keyevent("@")
~#@::keyevent("@")
~!@::keyevent("@")
~^@::keyevent("@")
~#::keyevent("{#}")
~##::keyevent("{#}")
~!#::keyevent("{#}")
~^#::keyevent("{#}")
~$::keyevent("$")
~#$::keyevent("$")
~!$::keyevent("$")
~^$::keyevent("$")
~^::keyevent("{^}")
~#^::keyevent("{^}")
~!^::keyevent("{^}")
~^^::keyevent("{^}")
~&::keyevent("&")
~#&::keyevent("&")
~!&::keyevent("&")
~^&::keyevent("&")
~*::keyevent("*")
~#*::keyevent("*")
~!*::keyevent("*")
~^*::keyevent("*")
~(::keyevent("(")
~#(::keyevent("(")
~!(::keyevent("(")
~^(::keyevent("(")
~)::keyevent(")")
~#)::keyevent(")")
~!)::keyevent(")")
~^)::keyevent(")")
~-::keyevent("-")
~#-::keyevent("-")
~!-::keyevent("-")
~^-::keyevent("-")
~_::keyevent("_")
~#_::keyevent("_")
~!_::keyevent("_")
~^_::keyevent("_")
~=::keyevent("=")
~#=::keyevent("=")
~!=::keyevent("=")
~^=::keyevent("=")
~+::keyevent("{+}")
~#+::keyevent("{+}")
~!+::keyevent("{+}")
~^+::keyevent("{+}")
~[::keyevent("[")
~#[::keyevent("[")
~![::keyevent("[")
~^[::keyevent("[")
~{::keyevent("{{}")
~#{::keyevent("{{}")
~!{::keyevent("{{}")
~^{::keyevent("{{}")
~]::keyevent("]")
~#]::keyevent("]")
~!]::keyevent("]")
~^]::keyevent("]")
~}::keyevent("{}}")
~#}::keyevent("{}}")
~!}::keyevent("{}}")
~^}::keyevent("{}}")
~\::keyevent("\")
~#\::keyevent("\")
~!\::keyevent("\")
~^\::keyevent("\")
~|::keyevent("|")
~#|::keyevent("|")
~!|::keyevent("|")
~^|::keyevent("|")
~+;::keyevent(":")
~#+;::keyevent(":")
~!+;::keyevent(":")
~^+;::keyevent(":")
~;::keyevent("`;")
~#;::keyevent("`;")
~!;::keyevent("`;")
~^;::keyevent("`;")
~SC028::keyevent("'")
~#SC028::keyevent("'")
~!SC028::keyevent("'")
~^SC028::keyevent("'")
~+SC028::keyevent(doublequote)
~#+SC028::keyevent(doublequote)
~!+SC028::keyevent(doublequote)
~^+SC028::keyevent(doublequote)
~,::keyevent(",")
~#,::keyevent(",")
~!,::keyevent(",")
~^,::keyevent(",")
~.::keyevent(".")
~#.::keyevent(".")
~!.::keyevent(".")
~^.::keyevent(".")
~<::keyevent("<")
~#<::keyevent("<")
~!<::keyevent("<")
~^<::keyevent("<")
~>::keyevent(">")
~#>::keyevent(">")
~!>::keyevent(">")
~^>::keyevent(">")
~/::keyevent("/")
~#/::keyevent("/")
~!/::keyevent("/")
~^/::keyevent("/")
~?::keyevent("?")
~#?::keyevent("?")
~!?::keyevent("?")
~^?::keyevent("?")
~1::keyevent("1")
~#1::keyevent("1")
~!1::keyevent("1")
~^1::keyevent("1")
~2::keyevent("2")
~#2::keyevent("2")
~!2::keyevent("2")
~^2::keyevent("2")
~3::keyevent("3")
~#3::keyevent("3")
~!3::keyevent("3")
~^3::keyevent("3")
~4::keyevent("4")
~#4::keyevent("4")
~!4::keyevent("4")
~^4::keyevent("4")
~5::keyevent("5")
~#5::keyevent("5")
~!5::keyevent("5")
~^5::keyevent("5")
~6::keyevent("6")
~#6::keyevent("6")
~!6::keyevent("6")
~^6::keyevent("6")
~7::keyevent("7")
~#7::keyevent("7")
~!7::keyevent("7")
~^7::keyevent("7")
~8::keyevent("8")
~#8::keyevent("8")
~!8::keyevent("8")
~^8::keyevent("8")
~9::keyevent("9")
~#9::keyevent("9")
~!9::keyevent("9")
~^9::keyevent("9")
~0::keyevent("0")
~#0::keyevent("0")
~!0::keyevent("0")
~^0::keyevent("0")
~Space::keyevent(A_Space)
~#Space::keyevent(A_Space)
~!Space::keyevent(A_Space)
~^Space::keyevent(A_Space)
~Tab::keyevent("{Tab}")
~#Tab::keyevent("{Tab}")
~!Tab::keyevent("{Tab}")
~^Tab::keyevent("{Tab}")
~Enter::keyevent("{Enter}")
~#Enter::keyevent("{Enter}")
~!Enter::keyevent("{Enter}")
~^Enter::keyevent("{Enter}")
~Esc::keyevent("{Esc}")
~#Esc::keyevent("{Esc}")
~!Esc::keyevent("{Esc}")
~^Esc::keyevent("{Esc}")
~SC00E::keyevent("{BS}")
~#SC00E::keyevent("{BS}")
~!SC00E::keyevent("{BS}")
~^SC00E::keyevent("{BS}")
~Pause::keyevent("{Pause}")
~#Pause::keyevent("{Pause}")
~!Pause::keyevent("{Pause}")
~^Pause::keyevent("{Pause}")
~ScrollLock::keyevent("{ScrollLock}")
~#ScrollLock::keyevent("{ScrollLock}")
~!ScrollLock::keyevent("{ScrollLock}")
~^ScrollLock::keyevent("{ScrollLock}")
~Delete::keyevent("{Delete}")
~#Delete::keyevent("{Delete}")
~!Delete::keyevent("{Delete}")
~^Delete::keyevent("{Delete}")
~Insert::keyevent("{Insert}")
~#Insert::keyevent("{Insert}")
~!Insert::keyevent("{Insert}")
~^Insert::keyevent("{Insert}")
~Home::keyevent("{Home}")
~#Home::keyevent("{Home}")
~!Home::keyevent("{Home}")
~^Home::keyevent("{Home}")
~End::keyevent("{End}")
~#End::keyevent("{End}")
~!End::keyevent("{End}")
~^End::keyevent("{End}")
~PgUp::keyevent("{PgUp}")
~#PgUp::keyevent("{PgUp}")
~!PgUp::keyevent("{PgUp}")
~^PgUp::keyevent("{PgUp}")
~PgDn::keyevent("{PgDn}")
~#PgDn::keyevent("{PgDn}")
~!PgDn::keyevent("{PgDn}")
~^PgDn::keyevent("{PgDn}")
~Up::keyevent("{Up}")
~#Up::keyevent("{Up}")
~!Up::keyevent("{Up}")
~^Up::keyevent("{Up}")
~Down::keyevent("{Down}")
~#Down::keyevent("{Down}")
~!Down::keyevent("{Down}")
~^Down::keyevent("{Down}")
~Left::keyevent("{Left}")
~#Left::keyevent("{Left}")
~!Left::keyevent("{Left}")
~^Left::keyevent("{Left}")
~Right::keyevent("{Right}")
~#Right::keyevent("{Right}")
~!Right::keyevent("{Right}")
~^Right::keyevent("{Right}")
~CapsLock::keyevent("{CapsLock}")
~#CapsLock::keyevent("{CapsLock}")
~!CapsLock::keyevent("{CapsLock}")
~^CapsLock::keyevent("{CapsLock}")
~NumLock::keyevent("{NumLock}")
~#NumLock::keyevent("{NumLock}")
~!NumLock::keyevent("{NumLock}")
~^NumLock::keyevent("{NumLock}")
~Numpad0::keyevent("{Numpad0}")
~#Numpad0::keyevent("{Numpad0}")
~!Numpad0::keyevent("{Numpad0}")
~^Numpad0::keyevent("{Numpad0}")
~Numpad1::keyevent("{Numpad1}")
~#Numpad1::keyevent("{Numpad1}")
~!Numpad1::keyevent("{Numpad1}")
~^Numpad1::keyevent("{Numpad1}")
~Numpad2::keyevent("{Numpad2}")
~#Numpad2::keyevent("{Numpad2}")
~!Numpad2::keyevent("{Numpad2}")
~^Numpad2::keyevent("{Numpad2}")
~Numpad3::keyevent("{Numpad3}")
~#Numpad3::keyevent("{Numpad3}")
~!Numpad3::keyevent("{Numpad3}")
~^Numpad3::keyevent("{Numpad3}")
~Numpad4::keyevent("{Numpad4}")
~#Numpad4::keyevent("{Numpad4}")
~!Numpad4::keyevent("{Numpad4}")
~^Numpad4::keyevent("{Numpad4}")
~Numpad5::keyevent("{Numpad5}")
~#Numpad5::keyevent("{Numpad5}")
~!Numpad5::keyevent("{Numpad5}")
~^Numpad5::keyevent("{Numpad5}")
~Numpad6::keyevent("{Numpad6}")
~#Numpad6::keyevent("{Numpad6}")
~!Numpad6::keyevent("{Numpad6}")
~^Numpad6::keyevent("{Numpad6}")
~Numpad7::keyevent("{Numpad7}")
~#Numpad7::keyevent("{Numpad7}")
~!Numpad7::keyevent("{Numpad7}")
~^Numpad7::keyevent("{Numpad7}")
~Numpad8::keyevent("{Numpad8}")
~#Numpad8::keyevent("{Numpad8}")
~!Numpad8::keyevent("{Numpad8}")
~^Numpad8::keyevent("{Numpad8}")
~Numpad9::keyevent("{Numpad9}")
~#Numpad9::keyevent("{Numpad9}")
~!Numpad9::keyevent("{Numpad9}")
~^Numpad9::keyevent("{Numpad9}")
~NumpadAdd::keyevent("{NumpadAdd}")
~#NumpadAdd::keyevent("{NumpadAdd}")
~!NumpadAdd::keyevent("{NumpadAdd}")
~^NumpadAdd::keyevent("{NumpadAdd}")
~NumpadClear::keyevent("{NumpadClear}")
~#NumpadClear::keyevent("{NumpadClear}")
~!NumpadClear::keyevent("{NumpadClear}")
~^NumpadClear::keyevent("{NumpadClear}")
~NumpadDel::keyevent("{NumpadDel}")
~#NumpadDel::keyevent("{NumpadDel}")
~!NumpadDel::keyevent("{NumpadDel}")
~^NumpadDel::keyevent("{NumpadDel}")
~NumpadDiv::keyevent("{NumpadDiv}")
~#NumpadDiv::keyevent("{NumpadDiv}")
~!NumpadDiv::keyevent("{NumpadDiv}")
~^NumpadDiv::keyevent("{NumpadDiv}")
~NumpadDot::keyevent("{NumpadDot}")
~#NumpadDot::keyevent("{NumpadDot}")
~!NumpadDot::keyevent("{NumpadDot}")
~^NumpadDot::keyevent("{NumpadDot}")
~NumpadDown::keyevent("{NumpadDown}")
~#NumpadDown::keyevent("{NumpadDown}")
~!NumpadDown::keyevent("{NumpadDown}")
~^NumpadDown::keyevent("{NumpadDown}")
~NumpadEnd::keyevent("{NumpadEnd}")
~#NumpadEnd::keyevent("{NumpadEnd}")
~!NumpadEnd::keyevent("{NumpadEnd}")
~^NumpadEnd::keyevent("{NumpadEnd}")
~NumpadEnter::keyevent("{NumpadEnter}")
~#NumpadEnter::keyevent("{NumpadEnter}")
~!NumpadEnter::keyevent("{NumpadEnter}")
~^NumpadEnter::keyevent("{NumpadEnter}")
~NumpadHome::keyevent("{NumpadHome}")
~#NumpadHome::keyevent("{NumpadHome}")
~!NumpadHome::keyevent("{NumpadHome}")
~^NumpadHome::keyevent("{NumpadHome}")
~NumpadIns::keyevent("{NumpadIns}")
~#NumpadIns::keyevent("{NumpadIns}")
~!NumpadIns::keyevent("{NumpadIns}")
~^NumpadIns::keyevent("{NumpadIns}")
~NumpadLeft::keyevent("{NumpadLeft}")
~#NumpadLeft::keyevent("{NumpadLeft}")
~!NumpadLeft::keyevent("{NumpadLeft}")
~^NumpadLeft::keyevent("{NumpadLeft}")
~NumpadMult::keyevent("{NumpadMult}")
~#NumpadMult::keyevent("{NumpadMult}")
~!NumpadMult::keyevent("{NumpadMult}")
~^NumpadMult::keyevent("{NumpadMult}")
~NumpadPgDn::keyevent("{NumpadPgDn}")
~#NumpadPgDn::keyevent("{NumpadPgDn}")
~!NumpadPgDn::keyevent("{NumpadPgDn}")
~^NumpadPgDn::keyevent("{NumpadPgDn}")
~NumpadPgUp::keyevent("{NumpadPgUp}")
~#NumpadPgUp::keyevent("{NumpadPgUp}")
~!NumpadPgUp::keyevent("{NumpadPgUp}")
~^NumpadPgUp::keyevent("{NumpadPgUp}")
~NumpadRight::keyevent("{NumpadRight}")
~#NumpadRight::keyevent("{NumpadRight}")
~!NumpadRight::keyevent("{NumpadRight}")
~^NumpadRight::keyevent("{NumpadRight}")
~NumpadSub::keyevent("{NumpadSub}")
~#NumpadSub::keyevent("{NumpadSub}")
~!NumpadSub::keyevent("{NumpadSub}")
~^NumpadSub::keyevent("{NumpadSub}")
~NumpadUp::keyevent("{NumpadUp}")
~#NumpadUp::keyevent("{NumpadUp}")
~!NumpadUp::keyevent("{NumpadUp}")
~^NumpadUp::keyevent("{NumpadUp}")
~F1::keyevent("{F1}")
~#F1::keyevent("{F1}")
~!F1::keyevent("{F1}")
~^F1::keyevent("{F1}")
~F2::keyevent("{F2}")
~#F2::keyevent("{F2}")
~!F2::keyevent("{F2}")
~^F2::keyevent("{F2}")
~F3::keyevent("{F3}")
~#F3::keyevent("{F3}")
~!F3::keyevent("{F3}")
~^F3::keyevent("{F3}")
~F4::keyevent("{F4}")
~#F4::keyevent("{F4}")
~!F4::keyevent("{F4}")
~^F4::keyevent("{F4}")
~F5::keyevent("{F5}")
~#F5::keyevent("{F5}")
~!F5::keyevent("{F5}")
~^F5::keyevent("{F5}")
~F6::keyevent("{F6}")
~#F6::keyevent("{F6}")
~!F6::keyevent("{F6}")
~^F6::keyevent("{F6}")
~F7::keyevent("{F7}")
~#F7::keyevent("{F7}")
~!F7::keyevent("{F7}")
~^F7::keyevent("{F7}")
~F8::keyevent("{F8}")
~#F8::keyevent("{F8}")
~!F8::keyevent("{F8}")
~^F8::keyevent("{F8}")
~F9::keyevent("{F9}")
~#F9::keyevent("{F9}")
~!F9::keyevent("{F9}")
~^F9::keyevent("{F9}")
~F10::keyevent("{F10}")
~#F10::keyevent("{F10}")
~!F10::keyevent("{F10}")
~^F10::keyevent("{F10}")
~F11::keyevent("{F11}")
~#F11::keyevent("{F11}")
~!F11::keyevent("{F11}")
~^F11::keyevent("{F11}")
~F12::keyevent("{F12}")
~#F12::keyevent("{F12}")
~!F12::keyevent("{F12}")
~^F12::keyevent("{F12}")
~F13::keyevent("{F13}")
~#F13::keyevent("{F13}")
~!F13::keyevent("{F13}")
~^F13::keyevent("{F13}")
~F14::keyevent("{F14}")
~#F14::keyevent("{F14}")
~!F14::keyevent("{F14}")
~^F14::keyevent("{F14}")
~F15::keyevent("{F15}")
~#F15::keyevent("{F15}")
~!F15::keyevent("{F15}")
~^F15::keyevent("{F15}")
~F16::keyevent("{F16}")
~#F16::keyevent("{F16}")
~!F16::keyevent("{F16}")
~^F16::keyevent("{F16}")
~F17::keyevent("{F17}")
~#F17::keyevent("{F17}")
~!F17::keyevent("{F17}")
~^F17::keyevent("{F17}")
~F18::keyevent("{F18}")
~#F18::keyevent("{F18}")
~!F18::keyevent("{F18}")
~^F18::keyevent("{F18}")
~F19::keyevent("{F19}")
~#F19::keyevent("{F19}")
~!F19::keyevent("{F19}")
~^F19::keyevent("{F19}")
~F20::keyevent("{F20}")
~#F20::keyevent("{F20}")
~!F20::keyevent("{F20}")
~^F20::keyevent("{F20}")
~F21::keyevent("{F21}")
~#F21::keyevent("{F21}")
~!F21::keyevent("{F21}")
~^F21::keyevent("{F21}")
~F22::keyevent("{F22}")
~#F22::keyevent("{F22}")
~!F22::keyevent("{F22}")
~^F22::keyevent("{F22}")
~F23::keyevent("{F23}")
~#F23::keyevent("{F23}")
~!F23::keyevent("{F23}")
~^F23::keyevent("{F23}")
~F24::keyevent("{F24}")
~#F24::keyevent("{F24}")
~!F24::keyevent("{F24}")
~^F24::keyevent("{F24}")
~AppsKey::keyevent("{AppsKey}")
~#AppsKey::keyevent("{AppsKey}")
~!AppsKey::keyevent("{AppsKey}")
~^AppsKey::keyevent("{AppsKey}")

~PrintScreen::keyevent("{PrintScreen}")
~#PrintScreen::keyevent("{PrintScreen}")
~!PrintScreen::keyevent("{PrintScreen}")
~^PrintScreen::keyevent("{PrintScreen}")

~LWin::keyevent("{LWin}")
~RWin::keyevent("{RWin}")
~LControl::keyevent("{LControl}")
~RControl::keyevent("{RControl}")
~LShift::keyevent("{LShift}")
~RShift::keyevent("{RShift}")
~LAlt::keyevent("{LAlt}")
~RAlt::keyevent("{RAlt}")

~LButton::mouseevent("LButton")
~#LButton::mouseevent("LButton")
~!LButton::mouseevent("LButton")
~^LButton::mouseevent("LButton")
~MButton::mouseevent("MButton")
~#MButton::mouseevent("MButton")
~!MButton::mouseevent("MButton")
~^MButton::mouseevent("MButton")
~RButton::mouseevent("RButton")
~#RButton::mouseevent("RButton")
~!RButton::mouseevent("RButton")
~^RButton::mouseevent("RButton")
~WheelDown::mouseevent("WheelDown")
~#WheelDown::mouseevent("WheelDown")
~!WheelDown::mouseevent("WheelDown")
~^WheelDown::mouseevent("WheelDown")
~WheelUp::mouseevent("WheelUp")
~#WheelUp::mouseevent("WheelUp")
~!WheelUp::mouseevent("WheelUp")
~^WheelUp::mouseevent("WheelUp")
~WheelLeft::mouseevent("WheelLeft")
~#WheelLeft::mouseevent("WheelLeft")
~!WheelLeft::mouseevent("WheelLeft")
~^WheelLeft::mouseevent("WheelLeft")
~WheelRight::mouseevent("WheelRight")
~#WheelRight::mouseevent("WheelRight")
~!WheelRight::mouseevent("WheelRight")
~^WheelRight::mouseevent("WheelRight")

newlog_handler:
log := getlog(logdir)
return

about_handler:
aboutmsg = 
(
keylogger Copyright 2013 Noah Birnel (nbirnel at gmail dot com)
This program is not intended for spying.
You are licensed to use it for capturing your own keystrokes.
)
MsgBox %aboutmsg%
return

exit_handler:
ExitApp
return

help_handler:
helpmsg = 
(
All of your mouse clicks and key presses are being logged to %log%
)
MsgBox %helpmsg%
return
