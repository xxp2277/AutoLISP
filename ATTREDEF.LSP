; *******************************************************************
;                          ATTREDEF.LSP
;
; This program allows you to redefine a Block and update the
; Attributes associated with any previous insertions of that Block.
; All new Attributes are added to the old Blocks and given their
; default values. All old Attributes with equal tag values to the new
; Attributes are redefined but retain their old value. And all old
; Attributes not included in the new Block are deleted.
;
; Note that if handles are enabled, new handles will be assigned to
; each redefined block.
;
; Written by Karry Layden - May 1988
; *******************************************************************


; Oldatts sets "old" to the list of old Attributes for each Block.
; The list does not include constant Attributes.

(defun oldatts (/ an e)
   (setq an (entnext b1))
   (setq e (entget an))
   (while (and (= (cdr (assoc 0 e)) "ATTRIB")
               (member (cdr (assoc 70 e)) '(0 1 4 5 8 9 12 13)))
      (if old
         (setq old (cons e old))
         (setq old (list e))
      )
      (setq an (entnext an))
      (if an
         (setq e (entget an))
      )
      (setq count (1+ count))         ; count the number of old atts
   )
)

; Newatts sets "new" to the list of new Attributes in the new Block.
; The list does not include constant Attributes.

(defun newatts (ssetn l / i an e)
   (setq i 0)
   (while (<= i l)
      (setq an (ssname ssetn i))
      (setq e (entget an))
      (if (and (= (cdr (assoc 0 e)) "ATTDEF")
               (member (cdr (assoc 70 e)) '(0 1 4 5 8 9 12 13)))
            (progn
               (if new
                  (setq new (cons e new))
                  (setq new (list e))
               )
               (setq n (1+ n))        ; count the number of new atts
            )
      )
      (setq i (1+ i))
   )
)

; Compare the list of "old" to the list of "new" Attributes and make
; the two lists "same" and "preset". "Same" contains th LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+!  LECT   DWG           6q��5+! 