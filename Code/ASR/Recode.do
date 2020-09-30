*Recoding Demographics

*Recoded GPA on Qualtrics
recode race_hilasp (1=0)(2=1)(3=2)(4=3)(5=4), generate (race_hilasp1)
recode sex (1=0)(2=1), generate (sex1)
recode race (1=0)(2=1)(3=2)(4=3)(5=4)(6=5)(7=6)(8=7)(9=8)(10=9)(11=10)(12=11)(13=12)(14=13), generate (race1)
recode p_income (1=0)(2=1)(3=2)(4=3)(5=4), generate (p_income1)
recode f_ed (1=0)(2=1)(3=2)(4=3)(5=4)(6=5)(7=6)(8=7), generate (f_ed1)
recode m_ed (1=0)(2=1)(3=2)(4=3)(5=4)(6=5)(7=6)(8=7), generate (m_ed1)
recode classification (1=0)(2=1)(3=2)(4=3)(5=4)(6=5), generate (classification1)
recode rel_status (1=0)(2=1)(3=2)(4=3)(5=4)(6=5), generate (rel_status1)
recode gpa (69=0)(70=1)(71=2)(72=3)(73=4), generate (gpa1)

*Recoding My Variables
recode believer(2=0)(3=1)(1=2), generate (believer1)
recode im_service (1=0)(2=1)(3=2)(4=3)(5=4), generate (im_service1)
recode im_text (1=0)(2=1)(3=2)(4=3)(5=4), generate (im_text1)
recode im_prayer (1=0)(2=1)(3=2)(4=3)(5=4), generate (im_prayer1)
recode im_donateco (1=0)(2=1)(3=2)(4=3)(5=4), generate (im_donateco1)
recode im_donatei (1=0)(2=1)(3=2)(4=3)(5=4), generate (im_donatei1)
recode im_donateoo (1=0)(2=1)(3=2)(4=3)(5=4), generate (im_donateoo1)
recode im_volunteer (1=0)(2=1)(3=2)(4=3)(5=4), generate (im_volunteer1)
recode att_service (1=0)(2=1)(3=2)(4=3)(5=4)(6=5), generate (att_service1)
recode readtext (1=0)(5=1)(4=2)(3=3)(2=4), generate (readtext1)
recode pray (1=0)(2=1)(3=2)(4=3), generate (pray1)
recode d_location (4=0)(1=1)(2=2)(3=3), generate (d_location1)
recode charity (4=0)(1=1)(2=2)(3=3), generate (charity1)
recode d_amtco (1=0)(2=1)(3=2)(4=3)(5=4), generate (d_amtco1)
recode d_amti (1=0)(2=1)(3=2)(4=3)(5=4), generate (d_amti1)
recode d_amtoo (1=0)(2=1)(3=2)(4=3)(5=4), generate (d_amtoo1)
recode tax (1=0)(2=1)(3=2)(4=3)(5=4)(6=5)(7=6)(8=7)(9=8)(10=9), generate (tax1)
recode lim_gov(1=0)(2=1)(3=2)(4=3)(5=4)(6=5)(7=6)(8=7)(9=8)(10=9), generate (lim_gov1)
recode military(1=0)(2=1)(3=2)(4=3)(5=4)(6=5)(7=6)(8=7)(9=8)(10=9), generate (military1)
recode religion(1=0)(2=1)(3=2)(4=3)(5=4)(6=5)(7=6)(8=7)(9=8)(10=9), generate (religion1)
recode guns(1=0)(2=1)(3=2)(4=3)(5=4)(6=5)(7=6)(8=7)(9=8)(10=9), generate (guns1)
recode tmarriage(1=0)(2=1)(3=2)(4=3)(5=4)(6=5)(7=6)(8=7)(9=8)(10=9), generate (tmarriage1)
recode imm(1=0)(2=1)(3=2)(4=3)(5=4)(6=5)(7=6)(8=7)(9=8)(10=9), generate (imm1)
recode welfareben(1=0)(2=1)(3=2)(4=3)(5=4)(6=5)(7=6)(8=7)(9=8)(10=9), generate (welfareben1)
recode abortion (1=0)(2=1)(3=2)(4=3)(5=4)(6=5)(7=6)(8=7)(9=8)(10=9), generate (abortion1)

*Creating Variables 
generate religiosity= believer1+ im_service1+ im_text1+ im_prayer1+ att_service1+ readtext1+ pray1
generate charitability= im_donateco1+ im_donatei1+ im_donateoo1+ im_volunteer1+ d_amtco1+ d_amti1+ d_amtoo1+ d_location1+ charity1
generate political_aff= tax1+ lim_gov1+ military1+ religion1+ guns1+ tmarriage1+ imm1+ welfareben1+ abortion1

*Descriptive Analysis 

*Religiosity
tab religiosity
*Range is from 0 to 25
sum religiosity
*Mean is at 9.345
sum believer1 im_service1 im_text1 im_prayer1 att_service1 readtext1 pray1

*Charitability
tab charitability
*Range is from 0 to 29
sum charitability
*Mean is at 16.224
sum im_donateco1 im_donatei1 im_donateoo1 im_volunteer1 d_location1 charity1 d_amtco1 d_amti1 d_amtoo1

*Political Affiliation
tab political_aff
*Range is from 12 to 66
sum political_aff
*Mean is at 38.006
sum tax1 lim_gov1 military1 religion1 guns1 tmarriage1 imm1 welfareben1 abortion1

*Control Variables
sum age race_hilasp1 sex1 race1 p_income1 f_ed1 m_ed1 classification1 rel_status1 gpa1

*Bivariate Analysis
 
*Correlations
pwcorr religiosity charitability political_aff , sig star(.05)
*Religiosity ant Charitabilty are significant to each other and soare religiosity and political affiliation. Charitability and political affiliation are approaching significance at 0.0513
pwcorr religiosity age race_hilasp1 sex1 race1 p_income1 f_ed1 m_ed1 classification1 rel_status1 gpa1, sig star(.05)
*Age (Direct, 0.0038), Parent Income (Indirect, -0.0159), Mother's Education (Indirect, -0.0007), Classification (Indirect, -0.0043), Relatioship Status (Indirect, -0.0057), and GPA (Direct, 0.0126)
pwcorr charitability age race_hilasp1 sex1 race1 p_income1 f_ed1 m_ed1 classification1 rel_status1 gpa1, sig star(.05)
*Sex (Direct, 0.0458), Race (Direct, 0.0380), Classification (Indirect, -0.0043), Relationship Status (Indirect, -0.0057), and GPA (Direct, 0.0126)
pwcorr political_aff age race_hilasp1 sex1 race1 p_income1 f_ed1 m_ed1 classification1 rel_status1 gpa1, sig star(.05)
*Classification (Indirect, -0.0043), Relationship Status (Indirect, -0.0057), and GPA (Direct, 0.0126)

*Regressions

*Just the three main variables.
regress charitability religiosity 
regress charitability religiosity political_aff
*Religiosity is significant but political affiliation is not. 
*R-squeared= 0.1478
regress charitability political_aff
*Political affiliation is now significant. This means that religiosity is a better predictor of charitability than political affiliation.
*R-squared= 0.0231
regress religiosity political_aff
*Political affiliaton is significant on predicitng religiosity.
*R-squared= 0.0895

*Adding Control Variables
regress religiosity age race_hilasp1 sex1 race1 p_income1 f_ed1 m_ed1 classification1 rel_status1 gpa1
*Sex (Direct, 0.019), Mother's Education (Indirect, 0.031), and Relationship Status (Indirect, 0.062).
*R-squared= 0.1483
regress charitability age race_hilasp1 sex1 race1 p_income1 f_ed1 m_ed1 classification1 rel_status1 gpa1
*Race (Direct, 0.018), Relationship Status (Indirect, 0.010), and Sex (Direct, 0.051) is approaching significance.
*R-squared= 0.1245
regress political_aff age race_hilasp1 sex1 race1 p_income1 f_ed1 m_ed1 classification1 rel_status1 gpa1
*None of the independent are significant.
*R-squared= 0.0370
regress charitability religiosity political_aff sex1 race1 classification1 rel_status1 gpa1
*Religiosity (Direct, 0.000), Race (Direct, 0.047), and Relaionship Status (Indirect, 0.034)
*R-squared= 0.2000
regress charitability religiosity sex1 race1 classification1 rel_status1 gpa1
*Religiosity (Direct, 0.000), Race (Direct, 0.048), and Relationship Status (Indirect, 0.043)
*R-squared= 0.1953
regress charitability political_aff sex1 race1 classification1 rel_status1 gpa1
*Political Affiliation (Direct, 0.027), Race (Direct, 0.017), Relatinship Staus (Indirect, 0.010), and Sex (Direct, 0.057) is approaching significance.
*R-squared= 0.1220
regress religiosity political_aff age p_income1 m_ed1 classification1 rel_status1 gpa1
*Political affiliation (Direct, .000), Mother's  Education (Indirect, -0.969), and Relaitonship Status (Indeirect, -1.593) is significant.
*R-squared= 0.1992
*Added Chariablilty to regression model
regress religiosity political_aff charitability age p_income1 m_ed1 classification1 rel_status1 gpa1
*Chariability was significant (Direct, 0.4553). This means there is a temporal ordering problem. Charitability could be the cause of religiosity instead of religiosity being the cause of charitability. Have this in the "Discussion" part of paper.
*R-squared= 0.3029; a 10% increase in variance just by adding Charitability.

*Lab 5 Assignment

*Table 2
regress religiosity political_aff
regress religiosity political_aff race1
regress religiosity political_aff race1 age sex1
regress religiosity political_aff race1 age sex1 rel_status1 p_income1 m_ed1

*Table 3
regress charitability religiosity
regress charitability religiosity race1
regress charitability religiosity race1 age sex1 
regress charitability religiosity race1 age sex1 rel_status1 p_income1

*Table 4
regress charitability political_aff
regress charitability political_aff race1 age sex1
regress charitability political_aff race1 age sex1 rel_status1 p_income1
regress charitability political_aff race1 age sex1 rel_status1 p_income1 religiosity

*Mention in Paper
*Spurious relationships in the models due to control variables. 
*Coefficients should stay the same, not decrease. Increase means it is explaining more vs explaining less if it decreases. 


