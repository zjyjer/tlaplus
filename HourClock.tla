----------------------------- MODULE HourClock -----------------------------
EXTENDS Naturals
VARIABLE hr
HCini == hr \in (1 .. 12)
HCnxt == hr' = IF hr # 12 THEN hr + 1 ELSE 1
HC == HCini /\ [][HCnxt]_hr
----------------------------------------------------------------------------
THEOREM HC => []HCini

----------------------------------------------------------------------------

HCnxt2 == hr' = (hr % 12) + 1
HC2 == HCini /\ [][HCnxt]_hr
-----------------------
THEOREM HC2 <=> HC
=============================================================================
\* Modification History
\* Last modified Sat May 26 21:26:50 CST 2018 by jer
\* Created Sat May 26 21:15:56 CST 2018 by jer