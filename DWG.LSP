(DEFUN DWG ()
(SETQ DW (GETVAR "DWGNAME"))
(SETQ L (STRLEN DW))
(SETQ LT L)
(SETQ TA "1" c (+ l 1) p 0)
(WHILE (<= P L)
(SETQ AS (SUBSTR DW C 1))
(IF (/= AS "\\")
(SETQ TA (STRCAT TA AS))
(SETQ P LT))
(setq c (- c 1) p (+ p 1))
)
(setq fi (substr ta 2 (- l (+ c 1))))
(setq fj (substr ta 2 (- l c)))
(setq l1 (strlen fj))
(setq fa "1" q 0 c1 (+ l1 1))
(while (<= q l1)
(setq c1 (- c1 1) q (+ q 1))
(setq as1 (substr fj c1 1))
(setq fa (strcat fa as1))
(setq ta1 (substr fa 2 l1))
)
)
