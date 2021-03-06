DEFUN C:SET16
;SET LAYER
(COMMAND "SETVAR" "CMDECHO" 0)
;(IF (= (TYPE F1) 'FILE ) "YES"  (STOP))
;(IF (= (TYPE F2) 'FILE ) "YES" (STOP))
(setq SET16 (findfile "/ACAD/HON/SET/SET16.SET"))
(IF (= SET16 NIL)
    (PROGN
       (PROMPT "\nPLEASE SETTING LAYER:" )
       (SETQ FC (OPEN "/ACAD/HON/SET/SET16.SET" "w"))
       (setq SETL16 (GETSTRING T"\nSETTING LAYER ? <16>:"))
       (IF (OR (= SETL16 "") (= SETL16 NIL))
              (WRITE-LINE "16" FC)
              (WRITE-LINE SETL16 FC)
       )
       (CLOSE FC)
    )
)

(IF (/= SET16 NIL)
    (PROGN
       (SETQ FC (OPEN "/ACAD/HON/SET/SET16.SET" "r"))
       (SETQ SETL16 (READ-LINE FC))
       (IF (OR (= SETL16 "") (= SETL16 NIL))
           (CLOSE FC)
       )
       (IF (OR (= SETL16 "") (= SETL16 NIL))
           (PROGN
              (PROMPT "\nPLEASE SETTING LAYER:" )
              (SETQ FC (OPEN "/ACAD/HON/SET/SET16.SET" "w"))
              (setq SETL16 (GETSTRING T"\nSETTING LAYER ? <16>:"))
              (IF (= SETL16 "")
                  (WRITE-LINE "16" FC)
                  (WRITE-LINE SETL16 FC)
              )
           (CLOSE FC)
           )
       )
       (SETQ FC (OPEN "/ACAD/HON/SET/SET16.SET" "r"))
       (SETQ SETL16 (READ-LINE FC))
       (CLOSE FC)
       (PROMPT "\nLAYER NAME IS:" )(PROMPT SETL16)(TERPRI)
    )
)

(SETQ ANS (strcase (GETSTRING "\nDO YOU WANT TO CHANGE LAST SETTING <Y/N> N:")))
(IF (= ANS "Y")
    (PROGN
       (PROMPT "\nPLEASE SETTING LAYER:" )
       (SETQ FC (OPEN "/ACAD/HON/SET/SET16.SET" "w"))
       (PROMPT "\nLAYER IS " )(PROMPT "<")(PROMPT SETL16) (PROMPT ">:")
       (SETQ SETW16 SETL16)
       (setq SETL16 (GETSTRING T))
       (IF (OR (= SETL16 "") (= SETL16 NIL))
               (WRITE-LINE SETW16 FC)
               (WRITE-LINE SETL16 FC)
       )
       (CLOSE FC)
       (SETQ FC (OPEN "/ACAD/HON/SET/SET16.SET" "r"))
       (SETQ SETL16 (READ-LINE FC))
       (CLOSE FC)
       (PROMPT "\nLAYER NOW IS:" )(PROMPT SETL16)(TERPRI)
  )
)
