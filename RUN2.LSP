(defun c:RUN2()
; (IF (= (TYPE F1) 'FILE ) "YES"  (STOP))
; (IF (= (TYPE F2) 'FILE ) "YES" (STOP))
 (COMMAND "SETVAR" "CMDECHO" 0)
 (SETQ NY (GETVAR "CLAYER"))
 (setq BLSET (findfile "C:/ACAD/HON/SET/RUN2.SET"))
 (IF (= BLSET NIL)
     (PROGN
        (SETQ TEST 1)
        (PROMPT "\nPLEASE SETTING LAYER:" )
        (SETQ FC (OPEN "C:/ACAD/HON/SET/RUN2.SET" "w"))
        (setq BLCNT (GETSTRING T"\nSETTING LAYER OF CONTNIUE LINE/<0>:"))
        (IF (= BLCNT "")
               (WRITE-LINE "0" FC)
               (WRITE-LINE BLCNT FC)
        )
        (setq BLCEN (GETSTRING T"\nSETTING LAYER OF CENTER LINE/<CEN>:"))
        (IF (= BLCEN "")
               (WRITE-LINE "CEN" FC)
               (WRITE-LINE BLCEN FC)
        )
        (setq BLHID (GETSTRING T"\nSETTING LAYER OF HIDDEN LINE/<HID>:"))
        (IF (= BLHID "")
               (WRITE-LINE "HID" FC)
               (WRITE-LINE BLHID FC)
        )
        (setq BLDIM (GETSTRING T"\nSETTING LAYER OF DIMESION /<DIM1>:"))
        (IF (= BLDIM "")
               (WRITE-LINE "DIM1" FC)
               (WRITE-LINE BLDIM FC)
        )
        (setq BLTXT (GETSTRING T"\nSETTING LAYER OF TEXT /<TEXT>:"))
        (IF (= BLTXT "")
               (WRITE-LINE "TEXT" FC)
               (WRITE-LINE BLTXT FC)
        )
        (CLOSE FC)
     )
 )

 (IF (/= BLSET NIL)
     (PROGN
        (SETQ FC (OPEN "C:/ACAD/HON/SET/RUN2.SET" "r"))
        (SETQ BLCNT (READ-LINE FC))
        (SETQ BLCEN (READ-LINE FC))
        (SETQ BLHID (READ-LINE FC))
        (SETQ BLDIM (READ-LINE FC))
        (SETQ BLTXT (READ-LINE FC))
        (IF (OR (= BLCNT "") (= BLCEN "") (= BLHID "") (= BLDIM "") (= BLTXT "")
                (= BLCNT NIL) (= BLCEN NIL) (= BLHID NIL) (= BLDIM NIL) (= BLTXT NIL))
            (CLOSE FC)
        )
        (IF (OR (= BLCNT "") (= BLCEN "") (= BLHID "") (= BLDIM "") (= BLTXT "")
                (= BLCNT NIL) (= BLCEN NIL) (= BLHID NIL) (= BLDIM NIL) (= BLTXT NIL))
            (PROGN
               (PROMPT "\nPLEASE SETTING LAYER:" )
               (SETQ FC (OPEN "C:/ACAD/HON/SET/RUN2.SET" "w"))
               (setq BLCNT (GETSTRING T"\nSETTING LAYER OF CONTNIUE LINE/<0>:"))
               (IF (= BLCNT "")
                   (WRITE-LINE "0" FC)
                   (WRITE-LINE BLCNT FC)
               )
               (setq BLCEN (GETSTRING T"\nSETTING LAYER OF CENTER LINE/<CEN>:"))
               (IF (= BLCEN "")
                   (WRITE-LINE "CEN" FC)
                   (WRITE-LINE BLCEN FC)
               )
               (setq BLHID (GETSTRING T"\nSETTING LAYER OF HIDDEN LINE/<HID>:"))
               (IF (= BLHID "")
                   (WRITE-LINE "HID" FC)
                   (WRITE-LINE BLHID FC)
               )
               (setq BLDIM (GETSTRING T"\nSETTING LAYER OF DIMESION/<DIM1>:"))
               (IF (= BLDIM "")
                   (WRITE-LINE "DIM1" FC)
                   (WRITE-LINE BLDIM FC)
               )
               (setq BLTXT (GETSTRING T"\nSETTING LAYER OF TEXT /<TEXT>:"))
               (IF (= BLTXT "")
                   (WRITE-LINE "TEXT" FC)
                   (WRITE-LINE BLTXT FC)
               )
            (CLOSE FC)
            )
        )
        (SETQ FC (OPEN "C:/ACAD/HON/SET/RUN2.SET" "r"))
        (SETQ BLCNT (READ-LINE FC))
        (SETQ BLCEN (READ-LINE FC))
        (SETQ BLHID (READ-LINE FC))
        (SETQ BLDIM (READ-LINE FC))
        (SETQ BLTXT (READ-LINE FC))
        (CLOSE FC)
        (PROMPT "\nCONTINUE OF LAYER IS:" )(PROMPT BLCNT)(TERPRI)
        (PROMPT "\nCENTER OF LAYER IS:" ) (PROMPT BLCEN)(TERPRI)
        (PROMPT "\nHIDDEN OF LAYER IS:" ) (PROMPT BLHID)(TERPRI)
        (PROMPT "\nDIMENSION OF LAYER IS:" ) (PROMPT BLDIM)(TERPRI)
        (PROMPT "\nTEXT   OF LAYER IS:" ) (PROMPT BLTXT)(TERPRI)
     )
 )

 (SETQ ANS (strcase (GETSTRING "\nDO YOU WANT TO CHANGE LAST SETTING <Y/N> N:")))
 (IF (= ANS "Y")
     (PROGN
        (PROMPT "\nPLEASE SETTING LAYER:" )
        (SETQ FC (OPEN "C:/ACAD/HON/SET/RUN2.SET" "w"))
        (PROMPT "\nCONTINUE OF LAYER <" )(PROMPT BLCNT)(PROMPT">:")
        (setq BLCNT (GETSTRING T))
        (IF (= BLCNT "")
               (WRITE-LINE "0" FC)
               (WRITE-LINE BLCNT FC)
        )
        (PROMPT "\nCENTER OF LAYER <" )(PROMPT BLCEN)(PROMPT">:")
        (setq BLCEN (GETSTRING T))
        (IF (= BLCEN "")
               (WRITE-LINE "CEN" FC)
               (WRITE-LINE BLCEN FC)
        )
        (PROMPT "\nHIDDEN OF LAYER <" )(PROMPT BLHID)(PROMPT">:")
        (setq BLHID (GETSTRING T))
        (IF (= BLHID "")
               (WRITE-LINE "HID" FC)
               (WRITE-LINE BLHID FC)
        )
        (PROMPT "\nDIMESION OF LAYER <" )(PROMPT BLDIM)(PROMPT">:")
        (setq BLDIM (GETSTRING T))
        (IF (= BLDIM "")
               (WRITE-LINE "DIM1" FC)
               (WRITE-LINE BLDIM FC)
        )
        (PROMPT "\nTEXT OF LAYER <" )(PROMPT BLTXT)(PROMPT">:")
        (setq BLTXT (GETSTRING T))
        (IF (= BLTXT "")
               (WRITE-LINE "TEXT" FC)
               (WRITE-LINE BLTXT FC)
        )
        (CLOSE FC)
        (SETQ FC (OPEN "C:/ACAD/HON/SET/RUN2.SET" "r"))
        (SETQ BLCNT (READ-LINE FC))
        (SETQ BLCEN (READ-LINE FC))
        (SETQ BLHID (READ-LINE FC))
        (SETQ BLDIM (READ-LINE FC))
        (SETQ BLTXT (READ-LINE FC))
        (CLOSE FC)
        (PROMPT "\nCONTINUE OF LAYER NOW IS:" )(PROMPT BLCNT)(TERPRI)
        (PROMPT "\nCENTER   OF LAYER NOW IS:" ) (PROMPT BLCEN)(TERPRI)
        (PROMPT "\nHIDDEN   OF LAYER NOW IS:" ) (PROMPT BLHID)(TERPRI)
        (PROMPT "\nDIM      OF LAYER NOW IS:" ) (PROMPT BLDIM)(TERPRI)
        (PROMPT "\nTEXT     OF LAYER NOW  IS:" ) (PROMPT BLTXT)(TERPRI)
   )
 )


  ;THE POINT IS FIST COUNTER Y THEN X
  (MENUCMD "S=X")
  (MENUCMD "S=RUN1")
; (SETQ D "3/8")
  (SETQ TP (GETVAR "VIEWCTR"))
  (SETQ VP (GETVAR "VIEWSIZE"))
  (SETQ TP (LIST (- (CAR TP) (* 0.6 VP)) (- (CADR TP) (* 0.5 VP))))
  (COMMAND "TEXT" TP (/ VP 15.0) 0 "選擇直徑")
  (SETQ D (GETSTRING"\nSelect dim:"))
  (COMMAND "ERASE" "L" "")
  (GRAPHSCR) (TERPRI)                                     ;GRAPHICS MODE
  (SETQ ANS1 "Y")
; (IF  (= (SETQ ANS1 (GETSTRING "\nDOU YOU WANT TO CUT PART LINE (P2) :<Y>")) "")
;      (SETQ ANS1 "Y"))
; (SETQ ANS1 (STRCASE ANS1))
  (IF (= D "4")
      (PROGN
         (SETQ W 4)
         (SETQ H 3)
         (SETQ L1 0.82)
         (SETQ L2 2.09)
         (SETQ L3 1.82)
         (SETQ R 1)
      )
  )
  (IF (= D "6")
      (PROGN
         (SETQ W 6)
         (SETQ H 4)
         (SETQ L1 1.73)
         (SETQ L2 3.09)
         (SETQ L3 2.73)
         (SETQ R 1)
      )
  )
  (IF (= D "7")
      (PROGN
         (SETQ W 7)
         (SETQ H 5)
         (SETQ L1 2.15)
         (SETQ L2 4.09)
         (SETQ L3 3.14)
         (SETQ R 1)
      )
  )
  (IF (= D "8")
      (PROGN
         (SETQ W 8)
         (SETQ H 5.5)
         (SETQ L1 2.60)
         (SETQ L2 4.59)
         (SETQ L3 3.60)
         (SETQ R 1)
      )
  )
  (IF (= D "9")
      (PROGN
         (SETQ W 9)
         (SETQ H 6)
         (SETQ L1 3.06)
         (SETQ L2 5.09)
         (SETQ L3 4.05)
         (SETQ R 1)
      )
  )
  (IF (= D "10")
      (PROGN
         (SETQ W 10)
         (SETQ H 7)
         (SETQ L1 3.47)
         (SETQ L2 6.09)
         (SETQ L3 4.47)
         (SETQ R 1)
      )
  )
  (IF (= D "12")
      (PROGN
         (SETQ W 12)
         (SETQ H 8)
         (SETQ L1 4.38)
         (SETQ L2 7.09)
         (SETQ L3 5.38)
         (SETQ R 1)
      )
  )
; (SETQ P1 (LIST 563.587 428.28))
; (SETQ P2 (LIST 563.587 528.28))
  (COMMAND "TEXT" TP (/ VP 15.0) 0 "放置點:")
  (SETQ P1 (GETPOINT "\nP1:"))
  (COMMAND "ERASE" "L" "")
  (COMMAND "TEXT" TP (/ VP 15.0) 0 "方向:")
  (SETQ P2 (GETPOINT P1 "\nDIRECTION:"))
  (COMMAND "ERASE" "L" "")
  (SETQ LSE (DISTANCE P1 P2))
  (SETQ AG1 (ANGLE P1 P2))
  (SETQ AG2 (* PI 0.5))
  (SETQ LSE (DISTANCE P1 P2)) ;DIST FOR P1 P2
  (SETQ DR1 (POLAR P1 (+ AG1 AG2) (/ W 2.0)))
  (SETQ DR2 (POLAR P1 (- AG1 AG2) (/ W 2.0)))
  (SETQ DR3 (POLAR (POLAR P1 AG1 H) (+ AG1 AG2) L1))
  (SETQ DR4 (POLAR (POLAR P1 AG1 H) (- AG1 AG2) L1))
  (SETQ DR5 (POLAR (POLAR P1 AG1 L2) (+ AG1 AG2) L3))
  (SETQ DR6 (POLAR (POLAR P1 AG1 L2) (- AG1 AG2) L3))
  (IF (= ANS1 "Y")
      (COMMAND "LAYER" "SET" DRAW "")
  )
  (COMMAND "LAYER" "SET" DRAW "")
  (COMMAND "LINE" DR3 DR4 "")
  (COMMAND "LINE" DR1 DR5 "")
  (COMMAND "LINE" DR2 DR6 "")
  (COMMAND "ARC" DR3 "E" DR5 "R" R)
  (COMMAND "ARC" DR6 "E" DR4 "R" R)
  (COMMAND "LAYER" "SET" CENTER "")
  (COMMAND "LINE" (POLAR P1 AG1 (- 0 1)) (POLAR P1 AG1 (+ 1 H)) "")
  (COMMAND "LAYER" "SET" NY "")
)
