XPDUT1 ; VEN/SMH - Unit Tests for KIDS;2014-01-10  5:55 PM
 ;;8.0;KERNEL;**10001***
 ;
 D EN^XTMUNIT($T(+0),1)
 QUIT
 ;
INTRAN96 ; @TEST Input transform on 9.6 takes up to 10 chars on patch number
 N RES
 D VAL^DIE(9.6,"?+1,",.01,"","XU*8.0*1",.RES)
 D CHKTF^XTMUNIT(RES'="^")
 ;
 N RES
 D VAL^DIE(9.6,"?+1,",.01,"","XU*8.0*10001",.RES)
 D CHKTF^XTMUNIT(RES'="^")
 ;
 N RES
 D VAL^DIE(9.6,"?+1,",.01,"","XU*8.0*100000000000000000000000000001",.RES)
 D CHKTF^XTMUNIT(RES="^")
 ;
 N RES
 D VAL^DIE(9.6,"?+1,",.01,"","XU*8.0*1000000001",.RES)
 D CHKTF^XTMUNIT(RES'="^")
 QUIT

