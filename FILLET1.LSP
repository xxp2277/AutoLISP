(defun c:fil1()
 (setvar "cmdecho" 0)
  (setq r1 (getvar "filletrad"))
             (menucmd "s=fil")
  (prompt "\nFillet Radious <") (prompt (rtos r1 2 2)) (prompt ">: ")
(if (= (setq r (getreal)) nil) (setq r r1))
    (setq a 2)
  (while (/= a 1)
    (setq p1 (entsel "\nSelect 1st line <Filleted>: "))

    (if (/= p1 nil) (progn
     (setq p1p (entget (car p1)))
     (setq se1 (osnap (cadr p1) "near"))
     (setq p1s (cdr (assoc 10 p1p)))
     (setq p1e (cdr (assoc 11 p1p)))

    (setq p2 (entsel "\nSelect 2nd line <Keeped>: "))
     (setq p2p (entget (car p2)))
     (setq se2 (osnap (cadr p2) "near"))
     (setq p2s (cdr (assoc 10 p2p)))
     (setq p2e (cdr (assoc 11 p2p)))
    (setq inp (inters p1s p1e p2s p2e nil))
    (command "break" se2 "f" inp inp)
  (setq ang1 (angle inp se1))
  (setq ang2 (angle inp se2))

  (command "fillet" "r" r "fillet" se1 se2)
     (command "line" inp  (polar inp ang2 r) "")
                     )
                (setq a 1)
     );end if
  )
   (menucmd "s= ")
)
