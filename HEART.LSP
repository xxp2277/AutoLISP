DEFUN C:HEART
;SET LAYER
(COMMAND "SETVAR" "CMDECHO" 0)
(SETQ NY (GETVAR "CLAYER"))
(SETQ LTA (GETVAR "LASTANGLE"))
;(IF (= (TYPE F1) 'FILE ) "YES"  (STOP))
;(IF (= (TYPE F2) 'FILE ) "YES" (STOP))
(setq HEASET (findfile "c:/acad/hon/SET/HEA.SET"))
(IF (= HEASET NIL)
    (PROGN
       (PROMPT "\nPLEASE SETTING LAYER:" )
       (SETQ FC (OPEN "c:/acad/hon/SET/HEA.SET" "w"))
       (setq HEACNT (GETSTRING T"\nSETTING LAYER OF CONTNIUE LINE ? <0>:"))
       (IF (= HEACNT "")
              (WRITE-LINE "0" FC)
              (WRITE-LINE HEACNT FC)
       )
       (setq HEACEN (GETSTRING T"\nSETTING  LAYER OF CENTER LINE ? <CEN>:"))
       (IF (= HEACEN "")
              (WRITE-LINE "CEN" FC)
              (WRITE-LINE HEACEN FC)
       )
       (setq HEAHID (GETSTRING T"\nSETTING LAYER OF HIDDEN LINE ? <HID>:"))
       (IF (= HEAHID "")
              (WRITE-LINE "HID" FC)
              (WRITE-LINE HEAHID FC)
       )
       (CLOSE FC)
    )
)

(IF (/= HEASET NIL)
    (PROGN
       (SETQ FC (OPEN "c:/acad/hon/SET/HEA.SET" "r"))
       (SETQ HEACNT (READ-LINE FC))
       (SETQ HEACEN (READ-LINE FC))
       (SETQ HEAHID (READ-LINE FC))
       (IF (OR (= HEACNT "") (= HEACEN "") (= HEAHID "")
               (= HEACNT NIL) (= HEACEN NIL) (= HEAHID NIL))
           (CLOSE FC)
       )
       (IF (OR (= HEACNT "") (= HEACEN "") (= HEAHID "")
               (= HEACNT NIL) (= HEACEN NIL) (= HEAHID NIL))
           (PROGN
              (PROMPT "\nPLEASE SETTING LAYER :" )
              (SETQ FC (OPEN "c:/acad/hon/SET/HEA.SET" "w"))
              (setq HEACNT (GETSTRING T"\nSETTING LAYER OF CONTNIUE LINE ? <0>:"))
              (IF (= HEACNT "")
                  (WRITE-LINE "0" FC)
                  (WRITE-LINE HEACNT FC)
              )
              (setq HEACEN (GETSTRING T"\nSETTING LAYER OF CENTER LINE ? <CEN>:"))
              (IF (= HEACEN "")
                  (WRITE-LINE "CEN" FC)
                  (WRITE-LINE HEACEN FC)
              )
              (setq HEAHID (GETSTRING T"\nSETTING LAYER OF HIDDEN LINE ? <HID>:"))
              (IF (= HEAHID "")
                  (WRITE-LINE "HID" FC)
                  (WRITE-LINE HEAHID FC)
              )
           (CLOSE FC)
           )
       )
       (SETQ FC (OPEN "c:/acad/hon/SET/HEA.SET" "r"))
       (SETQ HEACNT (READ-LINE FC))
       (SETQ HEACEN (READ-LINE FC))
       (SETQ HEAHID (READ-LINE FC))
       (CLOSE FC)
       (PROMPT "\nCONTINUE OF LAYER IS:" )(PROMPT HEACNT)(TERPRI)
       (PROMPT "\nCENTER OF LAYER IS:" ) (PROMPT HEACEN)(TERPRI)
       (PROMPT "\nHIDDEN OF LAYER IS:" ) (PROMPT HEAHID)(TERPRI)
    )
)

;THE POINT IS FIST COUNTER Y THEN X
(MENUCMD "S=HEA")
;(COMMAND "UJ" "")
(GRAPHSCR) (TERPRI)                                     ;GRAPHICS MODE
(SETQ A (GETREAL"\nSelect dim:"))
(IF  (= (SETQ ANS1 (GETSTRING "\nDOU YOU WANT TO CUT PART LINE (P2) :<Y>")) "")
     (SETQ ANS1 "Y"))
(SETQ ANS1 (STRCASE ANS1))
(IF (<= B 30)
  (PROGN
    (SETQ C  8)
    (SETQ D  6)
  )
)
(IF (AND (>= B 30) (<= B 40))
  (PROGN
    (SETQ C 10)
    (SETQ D 8)
  )
)
(IF (AND (>= B 40) (<= B 50))
  (PROGN
    (SETQ C 12)
    (SETQ D 10)
  )
)
(IF (AND (>= B 50) (<= B 65))
  (PROGN
    (SETQ C 15)
    (SETQ D 10)
  )
)
(IF (AND (>= B 65) (<= B 100))
  (PROGN
    (SETQ C 20)
    (SETQ D 12)
  )
)
(IF (AND (>= B 100) (<= B 160))
  (PROGN
    (SETQ C 25)
    (SETQ D 15)
  )
)
(SETQ P1 (GETPOINT "\nP1:"))
(SETQ P2 (GETPOINT P1 "\nP2:"))
(SETQ P3 (GETPOINT P2 "\nP3:"))
(SETQ AG1 (ANGLE P1 P2))
(SETQ AG2 (* PI 0.5))
(SETQ LST (DISTANCE P1 P2)) ;DIST FOR P1 P2
(SETQ LSE (DISTANCE P1 P3)) ;DIST FOR P1 P3
(SETQ DR1 (POLAR (POLAR P1 AG1 0) (+ AG1 AG2) (+ (/ A 2.0) D)))
(SETQ DR2 (POLAR (POLAR P1 AG1 0) (- AG1 AG2) (+ (/ A 2.0) D)))
(SETQ DR3 (POLAR (POLAR P1 AG1 C) (+ AG1 AG2) (+ (/ A 2.0) D)))
(SETQ DR4 (POLAR (POLAR P1 AG1 C) (- AG1 AG2) (+ (/ A 2.0) D)))
(SETQ DR5 (POLAR (POLAR P1 AG1 C) (+ AG1 AG2) (+ (/ A 2.0) 0.5)))
(SETQ DR6 (POLAR (POLAR P1 AG1 C) (- AG1 AG2) (+ (/ A 2.0) 0.5)))
(SETQ DR7 (POLAR (POLAR P1 AG1 (+ C 0.5)) (+ AG1 AG2) (/ A 2.0)))
(SETQ DR8 (POLAR (POLAR P1 AG1 (+ C 0.5)) (- AG1 AG2) (/ A 2.0)))
(SETQ DR9 (POLAR (POLAR P1 AG1 LST) (+ AG1 AG2) (/ A 2.0)))
(SETQ DR10 (POLAR (POLAR P1 AG1 LST) (- AG1 AG2) (/ A 2.0)))
(SETQ DR11 (POLAR (POLAR P1 AG1 LSE) (+ AG1 AG2) (/ A 2.0)))
(SETQ DR12 (POLAR (POLAR P1 AG1 LSE) (- AG1 AG2) (/ A 2.0)))

(SETQ DRINT1 (POLAR DR9 (- AG1 0.0872665) 3))
(SETQ DRINT2 (POLAR DR10 (+ AG1 0.0872665) 3))
(SETQ INT1 (INTERS DRINT1 DR9 DR11 DR12 NIL))
(SETQ INT2 (INTERS DRINT2 DR10 DR11 DR12 NIL))




;ABOVE FIRST BOX
(IF  (= ANS1 "N")
     (COMMAND "LAYER" "SET" HEAHID "")
     (COMMAND "LAYER" "SET" HEACNT "")
)
(COMMAND "LINE" DR1 DR3 "")
(COMMAND "LINE" DR2 DR4 "")
(COMMAND "LINE" DR1 DR2 "")
(COMMAND "LINE" DR3 DR5 "")
(COMMAND "LINE" DR4 DR6 "")
(COMMAND "LINE" DR7 DR9 "")
(COMMAND "LINE" DR8 DR10 "")
(COMMAND "LINE" DR9 INT1 "")
(COMMAND "LINE" DR10 INT2 "")
(COMMAND "LINE" DR11 DR12 "")
(COMMAND "SETVAR" "FILLETRAD" 3")
(COMMAND "FILLET" DRINT1 DR11)
(COMMAND "FILLET" DRINT2 DR12)

;BOX ABOVE

;(IF (= ANS1 "Y")
;    (COMMAND "BREAK" (POLAR P2 (+ AG1 AG2) 4) "F" (POLAR P2 (+ AG1 AG2) (* D 0.5))
;    (POLAR P2 (- AG1 AG2) (* D 0.5)))
;)
(COMMAND "LAYER" "SET" HEACEN "")
(COMMAND "LINE" (POLAR P1 AG1 -1) (POLAR P1 AG1 (+ 1 LSE)) "")
(COMMAND "LAYER" "SET" NY "")
