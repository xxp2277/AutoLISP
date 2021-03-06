(defun c:RECT()
   (setq P1 (getpoint "Corner:"))
   (setq P2 (getcorner P1 "Corner:"))
   (setq Pl (car P1))
   (setq Pd (cadr P1))
   (if (> Pl (car P2)) (setq Pl (car P2) Pr (car P1)) (setq Pr (car P2)))
   (if (> Pd (cadr P2)) (setq Pd (cadr P2) Pu (cadr P1)) (setq Pu (cadr P2)))
   (command "line" (list (/ (+ Pl Pr) 2.) Pd) (list Pr Pd) (list Pr Pu)
                    (list Pl Pu) (list Pl Pd) "c")
)
(defun Lp (E1 Pa M / Pm X Y B)
  (if (null M)
      (setq X (car E1)
            Y (cadr Pa)
      )
      (setq B (- (cadr E1) (* M (car E1)))
            X (/ (- (+ (* M (cadr Pa)) (car Pa)) (* M B)) (+ 1. (* M M)))
            Y (+ (* M X) B)
      )
   )
   (setq Pm (list X Y))
)
(defun c:pcr()
   (prompt "\nEntity/Point (E or P):")
   (while (/= 2 (car (setq Pick (grread)))))
   (setq Kb (cadr Pick))
   (cond
      ((or (= Kb (ascii "e")) (= Kb (ascii "E")))
         (setq S1 (entsel "\nSelect an Arc, Circle or Line:")
               l1 (entget (car S1))
               Ent (cdr (assoc 0 l1))
         )
         (if (and (/= Ent "LINE") (/= Ent "CIRCLE") (/= Ent "ARC"))
            (*error* "\nBad item type!!!"))
         (if (= Ent "LINE")
            (progn
               (setq P1 (cadr S1)
                     E1 (cdr (assoc 10 l1))
                     E11 (cdr (assoc 11 l1))
                     Pa (getpoint "\nPoint:")
                     R (getreal "\nRadius :")
               )
               (if (= 0 (- (car E11) (car E1)))
                   (setq M nil)
                   (setq M (/ (- (cadr E11) (cadr E1)) (- (car E11) (car E1))))
               )
               (setq Pb (Lp E1 Pa M)
                     L (distance Pa Pb)
                     A0 (angle Pa Pb)
                     Q (atan (- R L) (sqrt (- (* 2 R L) (* L L))))
                     A1 (- A0 Q (/ pi 2.))
               )
               (if (> 0 A1) (setq A1 (+ A1 (* 2. pi))))
               (setq Pr (polar Pa A1 R))
               (command "line" Pr (polar Pr (angle Pa Pb) R) ""
                        "select" "p" "l" ""
                        "arc" (polar Pr (angle Pa Pb) R) "c" Pr Pa)
            )
            (progn
               (setq P1 (cadr S1)
                     Pb (getpoint "\nPoint:")
                     R (getreal "\nRadius :")
                     Pa (cdr (assoc 10 l1))
                     R1 (cdr (assoc 40 l1))
                     L (distance Pa Pb)
               )
               (if (< R (- L R1)) (*error* "\nRadius is too small !"))
               (setq A0 (angle Pa Pb)
                     A1 (- (angle Pa P1) A0)
               )
               (if (> 0 A1) (setq A1 (+ A1 (* 2. pi))))
               (if (and (> pi A1) (> L R1))
                 (setq COS0 (/ (+ (* L L) (* R1 R1) (* 2. R1 R)) 2. L (+ R1 R))
                       RR (+ R1 R))
                 (setq COS0 (/ (- (+ (* L L) (* R1 R1)) (* 2. R1 R))
                             2. L (abs (- R R1))) RR (abs (- R R1)))
               )
               (setq Q (atan (sqrt (- 1 (* COS0 COS0))) COS0))
               (if (> L R1)
                  (setq Ang (+ A0 Q))
                  (setq Ang (- A0 Q))
               )
               (setq Pr (polar Pa Ang RR))
               (if (> L R1)
                  (command "line" Pa (polar Pr (angle Pr Pa) R) ""
                           "select" "p" "l" ""
                           "arc" (polar Pr (angle Pr Pa) R) "c" Pr
                           Pb
                  )
                  (command "line" Pr (polar Pr (angle Pa Pr) R) ""
                           "select" "p" "l" ""
                           "arc" (polar Pr (angle Pa Pr) R) "c" Pr
                           Pb
                  )
               )
            )
         )
      )
      ((or (= Kb (ascii "p")) (= Kb (ascii "P")))
         (setq Pa (getpoint "\nPoint:")
               S1 (entsel "\nSelect Arc, Circle or Line:")
               l1 (entget (car S1))
               P1 (cadr S1)
               R (getreal "\nRadius :")
               Ent (cdr (assoc 0 l1))
         )
         (if (and (/= Ent "LINE") (/= Ent "CIRCLE") (/= Ent "ARC"))
            (*error* "\nBad item type!!!"))
         (if (= Ent "LINE")
            (progn
               (setq E1 (cdr (assoc 10 l1))
                     E11 (cdr (assoc 11 l1))
               )
               (if (= 0 (- (car E11) (car E1)))
                   (setq M nil)
                   (setq M (/ (- (cadr E11) (cadr E1)) (- (car E11) (car E1))))
               )
               (setq Pb (Lp E1 Pa M)
                     L (distance Pa Pb)
                     A0 (angle Pa Pb)
                     Q (atan (- R L) (sqrt (- (* 2 R L) (* L L))))
                     A1 (+ A0 Q (/ pi 2.))
               )
               (if (> A1 (* 2 pi)) (setq A1 (- A1 (* 2. pi))))
               (setq Pr (polar Pa A1 R))
               (command "line" Pr (polar Pr (angle Pa Pb) R) ""
                        "select" "p" "l" ""
                        "arc" Pa "c" Pr (polar Pr (angle Pa Pb) R))
            )
            (progn
               (setq R1 (cdr (assoc 40 l1))
                     Pb (cdr (assoc 10 l1))
                     L (distance Pa Pb)
               )
               (if (< R (- L R1)) (*error* "\nRadius is too small !"))
               (setq A0 (angle Pa Pb)
                     A1 (- (angle Pa P1) A0)
               )
               (if (> 0 A1) (setq A1 (+ A1 (* 2. pi))))
               (if (and (> pi A1) (> L R1))
                  (setq COS0 (/ (- (* L L) (* R1 R1) (* 2. R1 R)) 2. R L)
                        RR R)
                  (setq COS0 (/ (+ (- (* L L) (* R1 R1)) (* 2. R1 R))
                             2. R L) RR R)
               )
               (setq Q (atan (sqrt (- 1 (* COS0 COS0))) COS0))
               (if (> L R1)
                  (setq Ang (+ A0 Q))
                  (setq Ang (- A0 Q))
               )
               (setq Pr (polar Pa Ang RR))
               (if (> L R1)
                  (command "line" Pb (polar Pr (angle Pr Pb) R) ""
                           "select" "p" "l" ""
                           "arc" (polar Pr (angle Pr Pa) R) "c" Pr
                                 (polar Pr (angle Pr Pb) R)
                  )
                  (command "line" Pr (polar Pr (angle Pb Pr) R) ""
                           "select" "p" "l" ""
                           "arc" Pa "c" Pr (polar Pr (angle Pb Pr) R)
                  )
               )
            )
         )
      )
      (t (*error* "\nSelect error, Keyin "E" or "P" Please !!!"))
   )
)
(defun c:alclr()
   (setq S1 (entsel "\nEnd-point of Arc or Line:")
         S2 (entsel "\nTangent to Arc, Circle or Line:")
         P1 (cadr S1)
         P2 (cadr S2)
         Pt (osnap P1 "end")
         l1 (entget (car S1))
         l2 (entget (car S2))
         Ent1 (cdr (assoc 0 l1))
         pi2 (* 2 pi)
   )
   (if (= Ent1 "LINE")
       (progn
          (setq E1 (cdr (assoc 10 l1)))
          (if (equal Pt E1)
              (setq E11 (cdr (assoc 11 l1)))
              (setq E11 E1 E1 (cdr (assoc 11 l1)))
          )
          (setq A0 (angle Pt E11))
          (if (= 0 (- (car E11) (car E1)))
              (setq M nil)
              (setq M (/ (- (cadr E11) (cadr E1)) (- (car E11) (car E1))))
          )
       )
       (progn
          (setq C1 (cdr (assoc 10 l1))
                A11 (cdr (assoc 50 l1))
                A0 (angle Pt C1)
          )
          (if (= A11 (angle C1 Pt))
              (setq A0 (- A0 (/ pi 2.)))
              (setq A0 (+ A0 (/ pi 2.)))
          )
          (if (> 0 A0) (setq A0 (+ A0 pi2)))
          (if (> A0 pi2) (setq A0 (- A0 pi2)))
          (if (= 0 (cos A0))
              (setq M nil)
              (setq M (/ (sin A0) (cos A0)))
          )
       )
   )
   (setq Ent2 (cdr (assoc 0 l2)))
   (if (= Ent2 "LINE")
       (progn
          (setq Pu (osnap P2 "end")
                E2 (cdr (assoc 10 l2))
          )
          (if (equal Pu E2)
              (setq E22 (cdr (assoc 11 l2)))
              (setq E22 E2 E2 (cdr (assoc 11 l2)))
          )
          (if (= 0 (- (car E22) (car E2)))
             (setq N nil)
             (setq N (/ (- (cadr E22) (cadr E2)) (- (car E22) (car E2))))
          )
          (setq EE2 E2
                E2 (Lp Pu Pt N)
          )
       )
       (setq E2 (cdr (assoc 10 l2))
             R2 (cdr (assoc 40 l2))
             Pm (Lp Pt E2 M)
       )
   )
   (setq A2 (- (setq Ang2 (angle Pt P2)) A0))
   (if (> 0 A2) (setq A2 (+ A2 pi2)))
   (if (> pi A2) (setq At (+ A0 (/ pi 2.)))
                 (setq At (- A0 (/ pi 2.))))
   (if (> 0 At) (setq At (+ At pi2)))
   (if (> At pi2) (setq At (- At pi2)))
   (setq Ang (angle Pt E2)
         Ang2 (- Ang2 Ang)
         Ang11 (- A0 Ang)
   )
   (if (> 0 Ang2) (setq Ang2 (+ Ang2 pi2)))
   (if (> 0 Ang11) (setq Ang11 (+ Ang11 pi2)))
   (setq Q (abs (- Ang At))
         L (distance E2 Pt)
   )
   (if (= Ent2 "LINE")
       (progn
          (setq R (/ L (+ 1. (cos Q)))
                Pc (polar Pt At R)
                Pp (polar Pc Ang R)
          )
          (if (> pi A2)
              (command "arc" Pp "c" Pc Pt
                       "line"  EE2 Pp ""
                       "select" "p" "l" ""
              )
              (command "arc" Pt "c" Pc Pp
                       "line"  EE2 Pp ""
                       "select" "p" "l" ""
              )
          )
       )
       (progn
          (setq K (- (* L L) (* R2 R2)))
          (if (> R2 (distance E2 Pm))
             (if (> R2 L)
                (setq R (/ K 2. (- (* L (cos Q)) R2)))
                (setq R (/ K 2. (+ (* L (cos Q)) R2)))
             )
(if (or (and (> pi Ang11) (> pi Ang2)) (and (<= pi Ang11) (<= pi Ang2)))
                (setq R (/ K 2. (+ (* L (cos Q)) R2)))
                (setq R (/ K 2. (- (* L (cos Q)) R2)))
             )
          )
          (setq Pc (polar Pt At (abs R)))
          (if (> L R2)
             (setq Ang1 (angle Pc E2))
             (setq Ang1 (angle E2 Pc))
          )
          (setq Pp (polar Pc Ang1 R))
          (if (> 0.0000001 (abs (- R2 (distance E2 Pm))))
             (command "line" Pt "tang" P2
                             E2 Pp ""
                      "select" "p" "l" ""
            )
             (if (> pi A2)
                (command "arc" Pp "e" Pt Pc
                         "line" E2 Pp ""
                         "select" "p" "l" ""
                )
                (command "arc" Pt "e" Pp Pc
                         "line" E2 Pp ""
                         "select" "p" "l" ""
                )
             )
          )
       )
   )
)
(defun C:CCR()
   (setq S1 (entsel "\nCircle 1:")
         S2 (entsel "\nCircle 2:")
         l1 (entget (car S1))
         l2 (entget (car S2))
         R (getreal "\nRadius :")
         P1 (cadr S1)
         P2 (cadr S2)
         C1 (cdr (assoc 10 l1))
         C2 (cdr (assoc 10 l2))
         R1 (cdr (assoc 40 l1))
         R2 (cdr (assoc 40 l2))
         L (distance C1 C2)
         Ang (angle C1 C2)
         Ang1 (- (angle C1 P1) Ang)
   )
   (if (> 0 Ang1) (setq Ang1 (+ Ang1 (* 2 pi))))
   (setq Ang2 (- (angle C1 P2) Ang))
   (if (> 0 Ang2) (setq Ang2 (+ Ang2 (* 2 pi))))
   (if (<= R 0)
      (progn
         (cond ((and (> pi Ang1) (> pi Ang2))
                   (setq R11 (- R1 R2)
                         A1 (atan R11 (sqrt (- (* L L) (* R11 R11))))
                         Pc1 (polar C1 (- (+ Ang (/ pi 2.)) A1) R1)
                         Pc2 (polar C2 (- (+ Ang (/ pi 2.)) A1) R2)
                   )
               )
               ((and (< pi Ang1) (< pi Ang2))
                   (setq R11 (- R1 R2)
                         A1 (atan R11 (sqrt (- (* L L) (* R11 R11))))
                         Pc1 (polar C1 (+ (- Ang (/ pi 2.)) A1) R1)
                         Pc2 (polar C2 (+ (- Ang (/ pi 2.)) A1) R2)
                  )
               )
               ((and (> pi Ang1) (< pi Ang2))
                   (setq R11 (+ R1 R2)
                         A1 (atan R11 (sqrt (- (* L L) (* R11 R11))))
                         Pc1 (polar C1 (- (+ Ang (/ pi 2.)) A1) R1)
                         Pc2 (polar C2 (- (+ Ang (/ pi 2.) pi) A1) R2)
                   )
               )
               (t (setq R11 (+ R1 R2)
                        A1 (atan R11 (sqrt (- (* L L) (* R11 R11))))
                        Pc1 (polar C1 (+ (- Ang (/ pi 2.)) A1) R1)
                        Pc2 (polar C2 (+ (- Ang (/ pi 2.)) A1 pi) R2)
                  )
              )
         )
         (command "line" Pc2 Pc1 C1 ""
                  "select" "p" "l" ""
                  "line" C2 Pc2 ""
                  "select" "p" "l" ""
        )
      )
      (progn
         (if (> pi Ang1) (setq R11 (+ R R1)) (setq R11 (- R R1)))
         (if (> pi Ang2) (setq R22 (+ R R2)) (setq R22 (- R R2)))
         (setq D (/ (- (+ (* L L) (* R11 R11)) (* R22 R22)) 2.0 L R11)
               A1 (atan (sqrt (- 1.0 (* D D))) D)
               Pc (polar C1 (+ A1 Ang) R11)
               Pc1 (polar Pc (angle Pc C1) R)
               Pc2 (polar Pc (angle Pc C2) R)
         )
         (command "arc" Pc1 "e" Pc2 "r" R
                  "line" C1 Pc1 ""
                  "select" "p" "l" ""
                  "line" C2 Pc2 ""
                  "select" "p" "l" ""
         )
     )
  )
)
