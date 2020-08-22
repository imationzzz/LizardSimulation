function B18 = B18Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP)

q1 = virJ(1,1); q2 = virJ(1,2); q3 = virJ(1,3);
q4 = bodyJ(1,1); q5 = bodyJ(1,2);
q6 = lforeJ(1,1); q7 = lforeJ(1,2); q8 = lforeJ(1,3); q9 = lforeJ(1,4); q10 = lforeJ(1,5); q11 = lforeJ(1,6); q12 = lforeJ(1,7);
q13 = rforeJ(1,1); q14 = rforeJ(1,2); q15 = rforeJ(1,3); q16 = rforeJ(1,4); q17 = rforeJ(1,5); q18 = rforeJ(1,6); q19 = rforeJ(1,7);
q20 = lhindJ(1,1); q21 = lhindJ(1,2); q22 = lhindJ(1,3); q23 = lhindJ(1,4); q24 = lhindJ(1,5); q25 = lhindJ(1,6); q26 = lhindJ(1,7);
q27 = rhindJ(1,1); q28 = rhindJ(1,2); q29 = rhindJ(1,3); q30 = rhindJ(1,4); q31 = rhindJ(1,5); q32 = rhindJ(1,6); q33 = rhindJ(1,7);

m1 = bodyM(1,1); m2 = bodyM(1,2); m3 = bodyM(1,3);
m4 = lforeM(1,1); m5 = lforeM(1,2); m6 = lforeM(1,3);
m7 = rforeM(1,1); m8 = rforeM(1,2); m9 = rforeM(1,3);
m10 = lhindM(1,1); m11 = lhindM(1,2); m12 = lhindM(1,3);
m13 = rhindM(1,1); m14 = rhindM(1,2); m15 = rhindM(1,3);

L1 = bodyL(1,1); L2 = bodyL(1,2); L3 = bodyL(1,3);
L4 = lforeL(1,1); L5 = lforeL(1,2); L6 = lforeL(1,3);
L7 = rforeL(1,1); L8 = rforeL(1,2); L9 = rforeL(1,3);
L10 = lhindL(1,1); L11 = lhindL(1,2); L12 = lhindL(1,3);
L13 = rhindL(1,1); L14 = rhindL(1,2); L15 = rhindL(1,3);

W1 = bodyW(1,1); W2 = bodyW(1,2); W3 = bodyW(1,3);
W4 = lforeW(1,1); W5 = lforeW(1,2); W6 = lforeW(1,3);
W7 = rforeW(1,1); W8 = rforeW(1,2); W9 = rforeW(1,3);
W10 = lhindW(1,1); W11 = lhindW(1,2); W12 = lhindW(1,3);
W13 = rhindW(1,1); W14 = rhindW(1,2); W15 = rhindW(1,3);

H1 = bodyH(1,1); H2 = bodyH(1,2); H3 = bodyH(1,3);
H4 = lforeH(1,1); H5 = lforeH(1,2); H6 = lforeH(1,3);
H7 = rforeH(1,1); H8 = rforeH(1,2); H9 = rforeH(1,3);
H10 = lhindH(1,1); H11 = lhindH(1,2); H12 = lhindH(1,3);
H13 = rhindH(1,1); H14 = rhindH(1,2); H15 = rhindH(1,3);

shoulderX = shopelP(1,1); shoulderY = shopelP(1,2); pelvicX = shopelP(1,3); pelvicY = shopelP(1,4);

BB18_1 = [                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   L9*m9*cos(q18)*cos(q19)*sin(q17)
    -L9*m9*cos(q17)*cos(q18)*cos(q19)
    (m9*(cos(q14)*(cos(q15)*cos(q18) - sin(q15)*(cos(q16)*sin(q17)*sin(q18) + cos(q17)*sin(q16)*sin(q18))) + sin(q14)*(sin(q16)*sin(q17)*sin(q18) - cos(q16)*cos(q17)*sin(q18)))*(H9^2 + L9^2))/12 - (m9*cos(q19)*(H9^2 + W9^2)*(sin(q14)*(cos(q16)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18)) + sin(q16)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18))) - cos(q14)*(sin(q15)*(cos(q16)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18)) - sin(q16)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18))) - cos(q15)*cos(q18)*cos(q19))))/12 + (m9*cos(q19)*(L9^2 + W9^2)*(sin(q14)*(cos(q16)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18)) + sin(q16)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18))) - cos(q14)*(sin(q15)*(cos(q16)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18)) - sin(q16)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18))) - cos(q15)*cos(q18)*cos(q19))))/12 - (m9*sin(q19)*(H9^2 + W9^2)*(sin(q14)*(cos(q16)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19)) + sin(q16)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19))) - cos(q14)*(sin(q15)*(cos(q16)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19)) - sin(q16)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19))) + cos(q15)*cos(q18)*sin(q19))))/12 + (m9*sin(q19)*(L9^2 + W9^2)*(sin(q14)*(cos(q16)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19)) + sin(q16)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19))) - cos(q14)*(sin(q15)*(cos(q16)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19)) - sin(q16)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19))) + cos(q15)*cos(q18)*sin(q19))))/12 - L9*m9*cos(q18)*cos(q19)*sin(q17)*(shoulderY*cos(q3) - L8*(cos(q3 + q13)*cos(q14)*sin(q16) + sin(q3 + q13)*cos(q15)*cos(q16) + cos(q3 + q13)*cos(q16)*sin(q14)*sin(q15)) + sin(q3)*(L1/2 + shoulderX) + L7*cos(q3 + q13)*cos(q14)) - L9*m9*cos(q17)*cos(q18)*cos(q19)*(L8*(sin(q3 + q13)*cos(q14)*sin(q16) - cos(q3 + q13)*cos(q15)*cos(q16) + sin(q3 + q13)*cos(q16)*sin(q14)*sin(q15)) + cos(q3)*(L1/2 + shoulderX) - shoulderY*sin(q3) - L7*sin(q3 + q13)*cos(q14))
    0
    0
    0
    0
    0
    0
    0
    0
    0
    (m9*(cos(q14)*(cos(q15)*cos(q18) - sin(q15)*(cos(q16)*sin(q17)*sin(q18) + cos(q17)*sin(q16)*sin(q18))) + sin(q14)*(sin(q16)*sin(q17)*sin(q18) - cos(q16)*cos(q17)*sin(q18)))*(H9^2 + L9^2))/12 - (m9*cos(q19)*(H9^2 + W9^2)*(sin(q14)*(cos(q16)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18)) + sin(q16)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18))) - cos(q14)*(sin(q15)*(cos(q16)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18)) - sin(q16)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18))) - cos(q15)*cos(q18)*cos(q19))))/12 + (m9*cos(q19)*(L9^2 + W9^2)*(sin(q14)*(cos(q16)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18)) + sin(q16)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18))) - cos(q14)*(sin(q15)*(cos(q16)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18)) - sin(q16)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18))) - cos(q15)*cos(q18)*cos(q19))))/12 - (m9*sin(q19)*(H9^2 + W9^2)*(sin(q14)*(cos(q16)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19)) + sin(q16)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19))) - cos(q14)*(sin(q15)*(cos(q16)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19)) - sin(q16)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19))) + cos(q15)*cos(q18)*sin(q19))))/12 + (m9*sin(q19)*(L9^2 + W9^2)*(sin(q14)*(cos(q16)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19)) + sin(q16)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19))) - cos(q14)*(sin(q15)*(cos(q16)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19)) - sin(q16)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19))) + cos(q15)*cos(q18)*sin(q19))))/12 + L9*m9*cos(q18)*cos(q19)*sin(q17)*(L8*(cos(q3 + q13)*cos(q14)*sin(q16) + sin(q3 + q13)*cos(q15)*cos(q16) + cos(q3 + q13)*cos(q16)*sin(q14)*sin(q15)) - L7*cos(q3 + q13)*cos(q14)) - L9*m9*cos(q17)*cos(q18)*cos(q19)*(L8*(sin(q3 + q13)*cos(q14)*sin(q16) - cos(q3 + q13)*cos(q15)*cos(q16) + sin(q3 + q13)*cos(q16)*sin(q14)*sin(q15)) - L7*sin(q3 + q13)*cos(q14))
    (m9*(cos(q18)*sin(q15) + cos(q15)*(cos(q16)*sin(q17)*sin(q18) + cos(q17)*sin(q16)*sin(q18)))*(H9^2 + L9^2))/12 - (m9*cos(q19)*(cos(q15)*(cos(q16)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18)) - sin(q16)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18))) + cos(q18)*cos(q19)*sin(q15))*(H9^2 + W9^2))/12 + (m9*cos(q19)*(cos(q15)*(cos(q16)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18)) - sin(q16)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18))) + cos(q18)*cos(q19)*sin(q15))*(L9^2 + W9^2))/12 - (m9*sin(q19)*(cos(q15)*(cos(q16)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19)) - sin(q16)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19))) - cos(q18)*sin(q15)*sin(q19))*(H9^2 + W9^2))/12 + (m9*sin(q19)*(cos(q15)*(cos(q16)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19)) - sin(q16)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19))) - cos(q18)*sin(q15)*sin(q19))*(L9^2 + W9^2))/12 + L9*m9*cos(q19)*sin(q18)*(L8*(cos(q14)*sin(q16) + cos(q16)*sin(q14)*sin(q15)) - L7*cos(q14)) - L9*m9*cos(q17)*cos(q18)*cos(q19)*(L8*(cos(q3 + q13)*sin(q14)*sin(q16) - cos(q3 + q13)*cos(q14)*cos(q16)*sin(q15)) - L7*cos(q3 + q13)*sin(q14)) - L9*m9*cos(q18)*cos(q19)*sin(q17)*(L8*(sin(q3 + q13)*sin(q14)*sin(q16) - sin(q3 + q13)*cos(q14)*cos(q16)*sin(q15)) - L7*sin(q3 + q13)*sin(q14))
    (m9*(sin(q16)*sin(q17)*sin(q18) - cos(q16)*cos(q17)*sin(q18))*(H9^2 + L9^2))/12 - (m9*cos(q19)*(H9^2 + W9^2)*(cos(q16)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18)) + sin(q16)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18))))/12 + (m9*cos(q19)*(cos(q16)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18)) + sin(q16)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18)))*(L9^2 + W9^2))/12 - (m9*sin(q19)*(H9^2 + W9^2)*(cos(q16)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19)) + sin(q16)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19))))/12 + (m9*sin(q19)*(cos(q16)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19)) + sin(q16)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19)))*(L9^2 + W9^2))/12 - L8*L9*m9*cos(q17)*cos(q18)*cos(q19)*(sin(q3 + q13)*cos(q16)*sin(q15) - cos(q3 + q13)*cos(q15)*cos(q16)*sin(q14)) + L8*L9*m9*cos(q18)*cos(q19)*sin(q17)*(cos(q3 + q13)*cos(q16)*sin(q15) + sin(q3 + q13)*cos(q15)*cos(q16)*sin(q14)) - L8*L9*m9*cos(q14)*cos(q15)*cos(q16)*cos(q19)*sin(q18)
    (m9*cos(q18)*(H9^2 + L9^2))/12 - (m9*cos(q18)*cos(q19)^2*(H9^2 + W9^2))/12 + (m9*cos(q18)*cos(q19)^2*(L9^2 + W9^2))/12 + (m9*cos(q18)*sin(q19)^2*(H9^2 + W9^2))/12 - (m9*cos(q18)*sin(q19)^2*(L9^2 + W9^2))/12 + L8*L9*m9*cos(q19)*sin(q18)*(cos(q16)*sin(q14) + cos(q14)*sin(q15)*sin(q16)) - L8*L9*m9*cos(q17)*cos(q18)*cos(q19)*(sin(q3 + q13)*cos(q15)*sin(q16) - cos(q3 + q13)*cos(q14)*cos(q16) + cos(q3 + q13)*sin(q14)*sin(q15)*sin(q16)) + L8*L9*m9*cos(q18)*cos(q19)*sin(q17)*(sin(q3 + q13)*cos(q14)*cos(q16) + cos(q3 + q13)*cos(q15)*sin(q16) - sin(q3 + q13)*sin(q14)*sin(q15)*sin(q16))
    (m9*cos(q18)*(H9^2 + L9^2))/12 - (m9*cos(q18)*cos(q19)^2*(H9^2 + W9^2))/12 + (m9*cos(q18)*cos(q19)^2*(L9^2 + W9^2))/12 + (m9*cos(q18)*sin(q19)^2*(H9^2 + W9^2))/12 - (m9*cos(q18)*sin(q19)^2*(L9^2 + W9^2))/12 + (L9^2*m9*cos(q17)*cos(q18)*cos(q19)*(cos(q17)*cos(q19) - sin(q17)*sin(q18)*sin(q19)))/2 + (L9^2*m9*cos(q18)*cos(q19)*sin(q17)*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19)))/2
    (m9*cos(q19)*sin(q19)*(L9^2 + W9^2))/6 - (m9*cos(q19)*sin(q19)*(H9^2 + W9^2))/6 + (L9^2*m9*cos(q19)*sin(q18)^2*sin(q19))/2 + (L9^2*m9*cos(q17)^2*cos(q18)^2*cos(q19)*sin(q19))/2 + (L9^2*m9*cos(q18)^2*cos(q19)*sin(q17)^2*sin(q19))/2
    (L9^2*m9*cos(q18)*cos(q19)*sin(q17)*(cos(q17)*sin(q19) + cos(q19)*sin(q17)*sin(q18)))/2 - (L9^2*m9*cos(q17)*cos(q18)*cos(q19)*(sin(q17)*sin(q19) - cos(q17)*cos(q19)*sin(q18)))/2 - (L9^2*m9*cos(q18)*cos(q19)^2*sin(q18))/2
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0];



BB18_2 = zeros(33,1);
BB18_3 = zeros(33,1);
BB18_4 = zeros(33,1);
BB18_5 = zeros(33,1);
BB18_6 = zeros(33,1);
BB18_7 = zeros(33,1);
BB18_8 = zeros(33,1);
BB18_9 = zeros(33,1);
BB18_10 = zeros(33,1);
BB18_11 = zeros(33,1);
BB18_12 = zeros(33,1);
BB18_13 = zeros(33,1);
BB18_14 = zeros(33,1);
BB18_15 = zeros(33,1);

B18 = [BB18_1 BB18_2 BB18_3 BB18_4 BB18_5 BB18_6 BB18_7 BB18_8 BB18_9 BB18_10 BB18_11 BB18_12 BB18_13 BB18_14 BB18_15];
