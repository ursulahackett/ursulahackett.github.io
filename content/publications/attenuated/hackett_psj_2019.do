use "Hackett PSJ 2019.dta", clear

*Table 3*
eststo tab3: logit indivdecbin partybin sexbin racebin whenchallenged nap programtypbin ib3.region,cluster (courtnum)

esttab tab3, se star(* 0.1 ** 0.05 *** 0.01)
