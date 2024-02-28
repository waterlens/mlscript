cls         = "L"
goto x y    = ('E':('[':((string_of_int y ++(';':(string_of_int x ++ ("H")))))))
at (x,y) s  = (goto x y) ++ s
highlight s = "ESC[7m"++(s++("ESC[0m"))
end cs                    = ""
readChar eof use []       = eof []
readChar eof use (c:cs)   = use c cs
peekChar eof use []       = eof []
peekChar eof use (c:cs) = use c (c:cs)
pressAnyKey prog          = readChar prog (\c -> prog)
unreadChar c prog cs      = prog (c:cs)
writeChar c prog cs       = c : (prog cs)
writeString s prog cs     = s ++ prog cs
writes  ss                = writeString (concat ss)
ringBell prog cs          = writeChar 'B' prog cs
clearScreen        = writeString cls
writeAt (x,y) s    = writeString (goto x y ++ s)
moveTo  (x,y)      = writeString (goto x y)
return s use       = use (reverse s)
delete n s l use = if (n>0) then writeString ("BS_BS") (loop (n-1) (tail s) l use) else ringBell (loop 0 "" l use)
loop n s l use  = readChar (return s use) (\c ->
                    case c of 'B'  -> delete n s l use
                              'D' -> delete n s l use
                              '`'   -> return s use
                              c      -> if (n < l) then writeChar c (loop (n+1) (c:s) l use) else ringBell (loop n s l use))
readAt (x,y) l use = writeAt (x,y) (copy l '_') (moveTo (x,y) (loop 0 "" l use))
promptReadAt (x,y) l prompt use
                   = writeAt (x,y) prompt (readAt (x+length prompt,y) l use)
program input = writes [ cls,
                   at (17,5)  (highlight ("Demonstration program")),
                   at (48,5)  ("Version 1.0"),
                   at (17,7)  ("This program illustrates a simple approach"),
                   at (17,8)  ("to screen-based interactive programs using"),
                   at (17,9)  ("the Hugs functional programming system."),
                   at (17,11) ("Please press any key to continue ...")
                 ]
          (pressAnyKey
          (promptReadAt (17,15) 18 ("Please enter your name: ") (\name ->
          (let reply = ("Hello ") ++ ((name) ++ ("!")) in
           writeAt (40 - ((length (reply)) `div` 2), 18) reply
          (moveTo (1,23)
          (writeString ("Im waiting...`")
          (pressAnyKey
          end))))))) input
copy n x = if n > 0 then x:(copy (n - 1) x) else []
testAnsi_nofib n = (foldr (\f g -> f . g) (\x -> x) ((copy n (program)))) ("testtesttest")
testAnsi_nofib $ primId 8
