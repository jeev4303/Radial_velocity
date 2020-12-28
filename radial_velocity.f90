program radial_velocity
INTEGER::x,k=60,w
character(LEN=20) :: fname
PRINT*,"-------------------------Radial velocity calculation-----------------------"
PRINT*,"                                                                     "
PRINT*,"                                                                     "
PRINT*,"                                                                     "
PRINT*,"                                                         .,cloollc:,."
PRINT*,"                                                    ..,;cloollc':c;' "
PRINT*,"                                ...''...        .';looodooooodx;;;.  "
PRINT*,"                           .,cdkkO0000OOkxl,.':looo:;,'',ccodd:;'    "
PRINT*,"                        .;okO00KKKKKKKK0Okxddl:,..     ..codl:'      "
PRINT*,"                      ,lxO0KKKKKXXXK0OOxxl:;;:cl,     .,ldl:'        "
PRINT*,"                    .lxO00KKKXXKK0Okkdc:cdOKKK00kc  .'lol;.          "
PRINT*,"                   ,okO00KKKK0OOkxl:cd0XNNXXXXK0Ox;,llc,.            "
PRINT*,"                  'oxO00KK0OkkdccoOXNNNNNXXK00OOkxlc;.               "
PRINT*,"                 .cdkOOOkkkdccd0NNNNNXXK0000K00Okxl.                 "
PRINT*,"                 .cdxxxxd::d0NNNNNXXKKKKKKKKK00Okxl.                 "
PRINT*,"                 .ldxd:;lOXXXNXXK00KKXXKKKKK000Okdc                  "
PRINT*,"               .,odl;;o0KKXXKK000KKKKKKKKKKKK0Okdc.                  "
PRINT*,"             .:oo:.'cxk0KK0OOO0KKKKKKKKKKK00Okxoc.                   "
PRINT*,"          .,coo;.  'coxkkxxkO000000KKKK0OOkkxoc;.                    "
PRINT*,"        .;coo;.     .:llldxxkkkOO000OOkkxxol:,.                      "
PRINT*,"      .;cooc.         .,:clodddxxxxxddolc;,..                        "
PRINT*,"    .;:odoc;.....,:c     .',::ccccc::;'..                            "
PRINT*,"  .,:;xxoolllloollc,           ....                                  "
PRINT*," .,c,lkxdddddccc:.                                                   "
PRINT*,"                                                                     "
PRINT*,"                                                                     "
PRINT*,"         written by Rajeev - Dept. of Therotical Physics, India      "
PRINT*,"                  rajeev4303@gmail.com                               "
PRINT*,"                                                                     "
PRINT*,"                                                                     "
PRINT*,"-------------------------Radial velocity calculation-----------------------"
PRINT*,"                                                                     "
PRINT*,"                                                                     "
PRINT*, "Enter the value of e:"
Read(*,*) e
pi=4.0*atan(1.0)
k=60
a=0.05
!e=0
P=5*365
do w = 0,90,30
	write(fname,'(A, I2.2, A)') "omega",w, ".dat"
	OPEN(UNIT=w,file=fname, status='unknown', action="write")
		DO X=0,720
			Vr=((2*pi*a*SIN(k*pi/180))/(P*SQRT(1-e**2)))*(e*COS(w*pi/180)+COS((w*pi/180)+(x*pi/180)))
			WRITE(w,*) X, Vr
		END DO
	CLOSE(UNIT=w)
call system ('sh plot.sh')
end do
end program radial_velocity

