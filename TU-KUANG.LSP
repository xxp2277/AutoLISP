(DEFUN C:TU-KUANG ()
   (SETVAR "CMDECHO" 0)
   (SETQ VC (GETVAR "VIEWCTR"))
   (SETQ YR (GETVAR "VIEWSIZE"))
   (SETQ XR (* YR 1.3864))
   (SETQ YD (/ YR 6))
   (SETQ XD (/ XR 5))
   (SETQ XB (- (CAR VC) (/ XR 2)))
   (SETQ YB (- (CADR VC) (/ YR 2)))
   (COMMAND "VSLIDE" "C:/ACAD/SLIDE/TU-KUANG")
;----
   (SETQ PT (GETPOINT "\nPLEASE DIGIT THE CHAR. TABLE : "))
             (SETQ XP (CAR PT))
             (SETQ YP (CADR PT))
             (SETQ XAA (- XP XB))
             (SETQ YAA (- YP YB))
             (SETQ XA (ABS XAA))
             (SETQ YA (ABS YAA))
             (SETQ X (FIX ( / XA XD)))
             (SETQ Y (FIX ( / YA YD)))
;
      (IF (AND (= X 0) (= Y 0))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-17" PAUSE 1 1 0))
      (IF (AND (= X 1) (= Y 0))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-18" PAUSE 1 1 0))
      (IF (AND (= X 2) (= Y 0))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-20" PAUSE 1 1 0))
      (IF (AND (= X 3) (= Y 0))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-21" PAUSE 1 1 0))
      (IF (AND (= X 4) (= Y 0))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-22" PAUSE 1 1 0))
      (IF (AND (= X 0) (= Y 1))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/LONGZHOU" PAUSE 1 1 0))
      (IF (AND (= X 1) (= Y 1))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/TEXT" PAUSE 1 1 0))
      (IF (AND (= X 2) (= Y 1))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/2-BIAO" PAUSE 1 1 0))
      (IF (AND (= X 3) (= Y 1))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/3-BIAO" PAUSE 1 1 0))
      (IF (AND (= X 4) (= Y 1))                    
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-19" PAUSE 1 1 0))
      (IF (AND (= X 0) (= Y 2))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-12" PAUSE 1 1 0))
      (IF (AND (= X 1) (= Y 2))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-13" PAUSE 1 1 0))
      (IF (AND (= X 2) (= Y 2))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-14" PAUSE 1 1 0))
      (IF (AND (= X 3) (= Y 2))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-15" PAUSE 1 1 0))
      (IF (AND (= X 4) (= Y 2))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-16" PAUSE 1 1 0))
      (IF (AND (= X 0) (= Y 3))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-07" PAUSE 1 1 0))
      (IF (AND (= X 1) (= Y 3))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-08" PAUSE 1 1 0))
      (IF (AND (= X 2) (= Y 3))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-09" PAUSE 1 1 0))
      (IF (AND (= X 3) (= Y 3))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-10" PAUSE 1 1 0))
      (IF (AND (= X 4) (= Y 3))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-11" PAUSE 1 1 0))
      (IF (AND (= X 0) (= Y 4))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-02" PAUSE 1 1 0))
      (IF (AND (= X 1) (= Y 4))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-03" PAUSE 1 1 0))
      (IF (AND (= X 2) (= Y 4))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-04" PAUSE 1 1 0))
      (IF (AND (= X 3) (= Y 4))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/HONG" PAUSE 1 1 0))
      (IF (AND (= X 4) (= Y 4))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-06" PAUSE 1 1 0))
      (IF (AND (= X 0) (= Y 5))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/A0" PAUSE 1 1 0))
      (IF (AND (= X 1) (= Y 5))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/A1" PAUSE 1 1 0))
      (IF (AND (= X 2) (= Y 5))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/A2" PAUSE 1 1 0))
      (IF (AND (= X 3) (= Y 5))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/A3" PAUSE 1 1 0))
      (IF (AND (= X 4) (= Y 5))
      (COMMAND "REDRAW" "INSERT" "C:/ACAD/BLOCK/K-01" PAUSE 1 1 0))
      )
