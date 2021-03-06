(DEFUN C:skt-1()
(COMMAND "SETVAR" "HIGHLIGHT" "1")
(SETQ D (GETREAL"\nInput skt dia:"))
(SETQ P1 (GETPOINT "\nInput insert Point:"))
(IF (= D 3)
    (PROGN
       (SETQ P 0.5)
    )
)
(IF (= D 4)
    (PROGN
       (SETQ P 0.6)
    )
)
(IF (= D 5)
    (PROGN
       (SETQ P 0.8)
    )
)
(IF (= D 6)
    (PROGN
       (SETQ P 0.1)
    )
)
(IF (= D 8)
    (PROGN
       (SETQ P 1.25)
    )
)
(IF (= D 10)
    (PROGN
       (SETQ P 0.75)
    )
)
(IF (= D 12)
    (PROGN
       (SETQ P 1.75)
    )
)
(IF (= D 14)
    (PROGN
       (SETQ P 2.0)
    )
)
(IF (= D 16)
    (PROGN
       (SETQ P 2.0)
    )
)
(IF (= D 20)
    (PROGN
       (SETQ P 2.5)
    )
)
(IF (= D 22)
    (PROGN
       (SETQ P 2.5)
    )
)
(IF (= D 24)
    (PROGN
       (SETQ P 3)
    )
)
(IF (= D 30)
    (PROGN
       (SETQ P 3.5)
    )
)
(IF (= D 36)
    (PROGN
       (SETQ P 4)
    )
)
(SETQ D1 D)
(SETQ D2 (+ (* P 0.6495) D))
(COMMAND "LAYER" "SET" "BLT1" "")
(COMMAND "CIRCLE" P1 D1)
(COMMAND "LAYER" "SET" "BLT3" "")
(COMMAND "CIRCLE" P1 D2)
(SETQ CP1 (LIST (CAR P1) (+ (CADR P1) D2 1)))
(SETQ CP2 (LIST (CAR P1) (- (CADR P1) D2 1)))
(SETQ CP3 (LIST (- (CAR P1) D2 1) (CADR P1)))
(SETQ CP4 (LIST (+ (CAR P1) D2 1) (CADR P1)))
(COMMAND "LAYER" "SET" "BLT2" "")
(COMMAND "LINE" CP1 CP2 "")
(COMMAND "LINE" CP3 CP4 "")
(COMMAND "SETVAR" "HIGHLIGHT" "1")
(COMMAND "LAYER" "SET" "0" "")
)


(DEFUN C:skt-2()
(COMMAND "SETVAR" "HIGHLIGHT" "1")
(SETQ D (GETREAL"\nInput skt dia:"))
(SETQ P1 (GETPOINT "\nInput insert Point:"))
(IF (= D 3)
    (PROGN
       (SETQ P 0.5)
    )
)
(IF (= D 4)
    (PROGN
       (SETQ P 0.6)
    )
)
(IF (= D 5)
    (PROGN
       (SETQ P 0.8)
    )
)
(IF (= D 6)
    (PROGN
       (SETQ P 0.1)
    )
)
(IF (= D 8)
    (PROGN
       (SETQ P 1.25)
    )
)
(IF (= D 10)
    (PROGN
       (SETQ P 0.75)
    )
)
(IF (= D 12)
    (PROGN
       (SETQ P 1.75)
    )
)
(IF (= D 14)
    (PROGN
       (SETQ P 2.0)
    )
)
(IF (= D 16)
    (PROGN
       (SETQ P 2.0)
    )
)
(IF (= D 20)
    (PROGN
       (SETQ P 2.5)
    )
)
(IF (= D 22)
    (PROGN
       (SETQ P 2.5)
    )
)
(IF (= D 24)
    (PROGN
       (SETQ P 3)
    )
)
(IF (= D 30)
    (PROGN
       (SETQ P 3.5)
    )
)
(IF (= D 36)
    (PROGN
       (SETQ P 4)
    )
)
(SETQ D1 D)
(SETQ D2 (+ (* P 0.6495) D))
(COMMAND "LAYER" "SET" "BLT3" "")
(COMMAND "CIRCLE" P1 D1)
(COMMAND "LAYER" "SET" "BLT1" "")
(COMMAND "CIRCLE" P1 D2)
(SETQ CP1 (LIST (CAR P1) (+ (CADR P1) D2 1)))
(SETQ CP2 (LIST (CAR P1) (- (CADR P1) D2 1)))
(SETQ CP3 (LIST (- (CAR P1) D2 1) (CADR P1)))
(SETQ CP4 (LIST (+ (CAR P1) D2 1) (CADR P1)))
(COMMAND "LAYER" "SET" "BLT2" "")
(COMMAND "LINE" CP1 CP2 "")
(COMMAND "LINE" CP3 CP4 "")
(COMMAND "SETVAR" "HIGHLIGHT" "1")
(COMMAND "LAYER" "SET" "0" "")
)

