DEBUG?
[IF]
ICONS: ico\nncron32x32-16-2.ico ico\nncron16x16-16-deb.ico
[ELSE]
ICONS: ico\nncron32x32-16-2.ico ico\nncron16x16-16-3.ico
[THEN]
\ S" e:\home\nick\images\nncron32x32-16.ico" R/O OPEN-FILE THROW 
\ DUP I32 22   ROT READ-FILE THROW DROP
\ DUP I32 744  ROT READ-FILE THROW DROP CLOSE-FILE DROP

\ S" e:\home\nick\images\nncron16x16-16.ico" R/O OPEN-FILE THROW 
\ DUP I16 22  ROT READ-FILE THROW DROP
\ DUP I16 296 ROT READ-FILE THROW DROP CLOSE-FILE DROP
