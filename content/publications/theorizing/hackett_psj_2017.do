use "Hackett PSJ 2017.dta", clear

*Table 4*
eststo mod1: heckprobit successchallengebinary highlysubmerged ib4.region justiceselectiondummy postcochrandummy postlemondummy postmuellerdummy, select(challengebinary = highlysubmerged ib4.region) vce(cluster state)
esttab mod1, se star(* 0.1 ** 0.05 *** 0.01)

eststo mod2: probit challengebinary highlysubmerged ib4.region, vce(cluster state)
esttab mod2, se star(* 0.1 ** 0.05 *** 0.01)

eststo mod3: probit successchallengebinary highlysubmerged ib4.region justiceselectiondummy postcochrandummy postlemondummy postmuellerdummy, vce(cluster state)
esttab mod3, se star(* 0.1 ** 0.05 *** 0.01)

*Table 5*
eststo mod1: probit challengebinary highlysubmerged ib4.region if programtype!="Auxiliary", vce(cluster state)
eststo mod2: probit challengebinary highlysubmerged ib4.region if programtype!="Equipment", vce(cluster state)
eststo mod3: probit challengebinary highlysubmerged ib4.region if programtype!="Food", vce(cluster state)
eststo mod4: probit challengebinary highlysubmerged ib4.region if programtype!="Property tax", vce(cluster state)
eststo mod5: probit challengebinary highlysubmerged ib4.region if programtype!="Tax credit", vce(cluster state)
eststo mod6: probit challengebinary highlysubmerged ib4.region if programtype!="Textbook", vce(cluster state)
eststo mod7: probit challengebinary highlysubmerged ib4.region if programtype!="Transport", vce(cluster state)
eststo mod8: probit challengebinary highlysubmerged ib4.region if programtype!="Voucher", vce(cluster state)

esttab mod1 mod2 mod3 mod4 mod5 mod6 mod7 mod8, se star(* 0.1 ** 0.05 *** 0.01)

eststo mod1: probit successchallengebinary highlysubmerged ib4.region justiceselectiondummy postcochrandummy postlemondummy postmuellerdummy if programtype!="Auxiliary", vce(cluster state)
eststo mod2: probit successchallengebinary highlysubmerged ib4.region justiceselectiondummy postcochrandummy postlemondummy postmuellerdummy if programtype!="Equipment", vce(cluster state)
eststo mod3: probit successchallengebinary highlysubmerged ib4.region justiceselectiondummy postcochrandummy postlemondummy postmuellerdummy if programtype!="Food", vce(cluster state)
eststo mod4: probit successchallengebinary highlysubmerged ib4.region justiceselectiondummy postcochrandummy postlemondummy postmuellerdummy if programtype!="Property tax", vce(cluster state)
eststo mod5: probit successchallengebinary highlysubmerged ib4.region justiceselectiondummy postcochrandummy postlemondummy postmuellerdummy if programtype!="Tax credit", vce(cluster state)
eststo mod6: probit successchallengebinary highlysubmerged ib4.region justiceselectiondummy postcochrandummy postlemondummy postmuellerdummy if programtype!="Textbook", vce(cluster state)
eststo mod7: probit successchallengebinary highlysubmerged ib4.region justiceselectiondummy postcochrandummy postlemondummy postmuellerdummy if programtype!="Transport", vce(cluster state)
eststo mod8: probit successchallengebinary highlysubmerged ib4.region justiceselectiondummy postcochrandummy postlemondummy postmuellerdummy if programtype!="Voucher", vce(cluster state)

esttab mod1 mod2 mod3 mod4 mod5 mod6 mod7 mod8, se star(* 0.1 ** 0.05 *** 0.01)

