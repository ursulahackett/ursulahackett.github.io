*JUDICIAL DATASET*
use "Hackett King SAPD 2019 - judicial data.dta", clear

eststo mod1: logit indivdecbin partybin, cluster (courtnum)
eststo mod2: logit indivdecbin partybin sexbin ,cluster (courtnum)
eststo mod3: logit indivdecbin partybin sexbin racebin,cluster (courtnum)
eststo mod4: logit indivdecbin partybin sexbin racebin whenchallenged,cluster (courtnum)
eststo mod5: logit indivdecbin partybin sexbin racebin whenchallenged nap,cluster (courtnum)
eststo mod6: logit indivdecbin partybin sexbin racebin whenchallenged nap ib3.region,cluster (courtnum)

*Table 5*
esttab mod1 mod2 mod3 mod4 mod5 mod6, se star(* 0.1 ** 0.05 *** 0.01)

*STATE LEGISLATOR DATASET*
use "Hackett King SAPD 2019 - legislator data.dta", clear

eststo mainMod: melogit votebin i.partybin mrp_mean pcgovwork blackracebin sexbin blackpc privschenrolmentpc stateedexppc prevlegalchallenge pcunionstatelev  || statefipscode: || geoid:

eststo intMod: melogit votebin mrp_mean i.partybin##c.mrp_mean pcgovwork blackracebin sexbin blackpc partybin##c.blackpc privschenrolmentpc stateedexppc prevlegalchallenge pcunionstatelev  || statefipscode: || geoid:

*Table 6*
esttab mainMod intMod, se star(* 0.1 ** 0.05 *** 0.01)

*Figure 5*
sum mrp_mean if partybin ==0
sum mrp_mean if partybin ==1

margins, at (mrp_mean=(-1.073578(.18902262).8166482) partybin=0)

matrix temp = r(table)
matrix tempAt = -1.073578 \ -.88455538 \  -.69553276 \ -.50651014 \ -.31748752 \ -.1284649 \ .06055772 \ .24958034 \ .43860296 \ .62762558 \  .8166482
matrix colnames tempAt = xAt
matrix tempParty = 0 \ 0 \ 0 \ 0 \ 0 \ 0 \ 0 \ 0 \ 0 \ 0 \ 0
matrix colnames tempParty = Party
matrix temp = temp \ tempAt' \ tempParty'
matrix margins = temp

margins, at (mrp_mean=(-.7811941(.16210958).8399017) partybin=1)

matrix temp = r(table)
matrix tempAt = -.7811941 \ -.61908452 \   -.45697494 \ -.29486536 \  -.13275578 \ .0293538 \  .19146338 \ .35357296 \ .51568254 \ .67779212 \  .8399017
matrix colnames tempAt = xAt
matrix tempParty = 1 \ 1 \ 1 \ 1 \ 1 \ 1 \ 1 \ 1 \ 1 \ 1 \ 1
matrix colnames tempParty = Party
matrix temp = temp \ tempAt' \ tempParty'
matrix margins = margins, temp

matrix marginsFlip = margins'

clear

svmat marginsFlip, names(col)

label define party 0 "Democrat" 1 "Republican", replace
label values Party party

twoway ///
(rline ll ul xAt if Party==0,  lcolor(gs9) lpattern(shortdash)) ///
(rline ll ul xAt if Party==1,  lcolor(gs9) lpattern(shortdash)) ///
(line b xAt if Party==0, lcolor(black)) ///
(line b xAt if Party==1, lcolor(black) lpattern(longdash)) ///
, ytitle(Predicted probability of voting for voucher bill) ylabel(0 .2 .4 .6 .8 1, labsize(small) angle(horizontal) nogrid) ///
xtitle(District ideology) xlabel(-1 -.75 -.5 -.25 0 .25 .5 .75 1, labsize(small)) ///
legend(order(3 "Democrat" 4 "Republican") rows(1) region(lcolor(none))) ///
xsize(20) ysize(16)



*Figure 6*
use "Hackett King SAPD 2019 - legislator data.dta", clear

melogit votebin mrp_mean i.partybin##c.mrp_mean pcgovwork blackracebin sexbin blackpc partybin##c.blackpc privschenrolmentpc stateedexppc prevlegalchallenge pcunionstatelev  || statefipscode: || geoid:

sum blackpc if partybin ==0
sum blackpc if partybin ==1

margins, at (blackpc=(0(9.355226)93.55226) partybin=0)

matrix temp = r(table)
matrix tempAt = 0 \ 9.355226 \  18.71045 \ 28.06568 \ 37.4209 \ 46.77613 \ 56.13136 \ 65.48658 \ 74.84181 \ 84.19703 \  93.55226
matrix colnames tempAt = xAt
matrix tempParty = 0 \ 0 \ 0 \ 0 \ 0 \ 0 \ 0 \ 0 \ 0 \ 0 \ 0
matrix colnames tempParty = Party
matrix temp = temp \ tempAt' \ tempParty'
matrix margins = temp

margins, at (blackpc=(0(6.812603)68.12603) partybin=1)

matrix temp = r(table)
matrix tempAt = 0 \ 6.812603 \   13.62521 \ 20.43781 \  27.25041 \ 34.06302 \  40.87562 \ 47.68822 \ 54.50082 \ 61.31343 \  68.12603
matrix colnames tempAt = xAt
matrix tempParty = 1 \ 1 \ 1 \ 1 \ 1 \ 1 \ 1 \ 1 \ 1 \ 1 \ 1
matrix colnames tempParty = Party
matrix temp = temp \ tempAt' \ tempParty'
matrix margins = margins, temp

matrix marginsFlip = margins'

clear

svmat marginsFlip, names(col)

label define party 0 "Democrat" 1 "Republican", replace
label values Party party

twoway ///
(rline ll ul xAt if Party==0,  lcolor(gs9) lpattern(shortdash)) ///
(rline ll ul xAt if Party==1,  lcolor(gs9) lpattern(shortdash)) ///
(line b xAt if Party==0, lcolor(black)) ///
(line b xAt if Party==1, lcolor(black) lpattern(longdash)) ///
, ytitle(Predicted probability of voting for voucher bill) ylabel(0 .2 .4 .6 .8 1, labsize(small) angle(horizontal) nogrid) ///
xtitle(% African American population in district) xlabel(0 20 40 60 80 100, labsize(small)) ///
legend(order(3 "Democrat" 4 "Republican") rows(1) region(lcolor(none))) ///
xsize(20) ysize(16)
