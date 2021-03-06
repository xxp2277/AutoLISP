 (defun c:sprue ()
;(IF (= (TYPE F1) 'FILE ) "YES"  (STOP))
;(IF (= (TYPE F2) 'FILE ) "YES" (STOP))

 (defun setup()
   (setq d (getreal "\n How about the sprue diameter ?  D() "))
;  (setq b (getreal "\n How about the large Diameter ?  B() "))
;  (setq h (getreal "\n How about the step Heigh?  H() "))
   (setq l (getreal "\n How about the sprue longer?  L() "))
   (setq r (getreal "\n How about the nozzle radio ?  R() "))
   (setq sh (getreal "\n How about the nozzle heigh?  SH() "))

   (setq sd (getreal "\n How about the  small side gate diameter? SD() "))
   (setq ld (getreal "\n How about the large side gate diameter? LD() "))

   (setq base (getpoint "\n Where will you put on the pin ?"))
   (setq x1 (eval (car base)))
   (setq y1 (eval (cadr base)))

   (setq b 34)
   (setq c 28)
   (setq h 10)
   (setq n (+ h 10))
   (setq b1 (/ b 2))
   (setq c1 (/ c 2))
   (setq d1 (/ d 2))

   (setq p1 (list (- x1 c1) y1))
   (setq p2 (list (- x1 c1) (- y1 h)))
   (setq p3 (list (- x1 b1) (- y1 h)))
   (setq p4 (list (- x1 b1) (- y1 n)))
   (setq p5 (list (- x1 d1) (- y1 n)))
   (setq p6 (list (- x1 d1) (- y1 l)))
   (setq p7 (list (+ x1 d1) (- y1 l)))
   (setq p8 (list (+ x1 d1) (- y1 n)))
   (setq p9 (list (+ x1 b1) (- y1 n)))
   (setq p10 (list (+ x1 b1) (- y1 h)))
   (setq p11 (list (+ x1 c1) (- y1 h)))
   (setq p12 (list (+ x1 c1) y1))
   (command "pline" p1 "w" "0" "0" p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p1 "")

   (setq rsh (- r sh))
  ;(setq srsh (- (* r r) (* rsh rsh)))
   (setq w2 (* r r))
   (setq rsh2 (* rsh rsh))
   (setq srsh (- w2 rsh2))

   (setq f (sqrt srsh))
   (setq p21 (list (- x1 f) y1))
   (setq p22 (list x1 (- y1 sh)))
   (setq p23 (list (+ x1 f) y1))

   (command "arc" p21 p22 p23 "")

   (setq sd1 (/ sd 2))
   (setq ld1 (/ ld 2))
 ; (setq gn (- (* r r) (* sd1 sd1)))
   (setq sd2 (* sd1 sd1))
   (setq gn (- w2 sd2))

   (setq zf (sqrt gn))
   (setq szf (- r zf))
   (setq sz (- sh szf))
   (setq p31 (list (- x1 sd1) (- y1 sz)))
   (setq p32 (list (- x1 ld1) (- y1 l)))
   (setq p33 (list (+ x1 sd1) (- y1 sz)))
   (setq p34 (list (+ x1 ld1) (- y1 l)))

   (command "line" p31 p32 "")
   (command "line" p33 p34 "")
   (command "linetype" "s" "hidden" "")
   (command "line" p2 p11 "")
   (command "line" p5 p8 "")
   (command "linetype" "s" "continuous" "")
   (setup)
 )
   (setup)
 )
