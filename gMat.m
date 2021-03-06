function g = gMat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP)

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


g1 = [ 0
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
    0
    0
    0
    0
    0
    0];


g2 = [                                                                                                                                                                                       0
    0
    0
    0
    0
    0
    - (981*m6*(L5*(cos(q7)*sin(q9) + cos(q9)*sin(q7)*sin(q8)) + L4*cos(q7)))/100 - (981*m5*((L5*(cos(q7)*sin(q9) + cos(q9)*sin(q7)*sin(q8)))/2 + L4*cos(q7)))/100 - (981*L4*m4*cos(q7))/200
    (981*L5*m5*cos(q7)*cos(q8)*cos(q9))/200 + (981*L5*m6*cos(q7)*cos(q8)*cos(q9))/100
    - (981*L5*m5*(cos(q9)*sin(q7) + cos(q7)*sin(q8)*sin(q9)))/200 - (981*L5*m6*(cos(q9)*sin(q7) + cos(q7)*sin(q8)*sin(q9)))/100
    0
    -(981*L6*m6*sin(q11)*sin(q12))/200
    (981*L6*m6*cos(q11)*cos(q12))/200
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
    0
    0
    0
    0
    0
    0
    0
    0];


g3 = [                                                                                                                                                                                                  0
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
    (981*L7*m7*cos(q14))/200 - (981*m8*((L8*(cos(q14)*sin(q16) + cos(q16)*sin(q14)*sin(q15)))/2 - L7*cos(q14)))/100 - (981*m9*(L8*(cos(q14)*sin(q16) + cos(q16)*sin(q14)*sin(q15)) - L7*cos(q14)))/100
    (981*L8*m8*cos(q14)*cos(q15)*cos(q16))/200 + (981*L8*m9*cos(q14)*cos(q15)*cos(q16))/100
    - (981*L8*m8*(cos(q16)*sin(q14) + cos(q14)*sin(q15)*sin(q16)))/200 - (981*L8*m9*(cos(q16)*sin(q14) + cos(q14)*sin(q15)*sin(q16)))/100
    0
    -(981*L9*m9*sin(q18)*sin(q19))/200
    (981*L9*m9*cos(q18)*cos(q19))/200
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


g4 = [                                                                                                                                                                                                          0
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
    0
    0
    0
    0
    0
    0
    (981*m12*(L11*(cos(q21)*sin(q23) + cos(q23)*sin(q21)*sin(q22)) - L10*cos(q21)))/100 + (981*m11*((L11*(cos(q21)*sin(q23) + cos(q23)*sin(q21)*sin(q22)))/2 - L10*cos(q21)))/100 - (981*L10*m10*cos(q21))/200
    - (981*L11*m11*cos(q21)*cos(q22)*cos(q23))/200 - (981*L11*m12*cos(q21)*cos(q22)*cos(q23))/100
    (981*L11*m11*(cos(q23)*sin(q21) + cos(q21)*sin(q22)*sin(q23)))/200 + (981*L11*m12*(cos(q23)*sin(q21) + cos(q21)*sin(q22)*sin(q23)))/100
    0
    (981*L12*m12*sin(q25)*sin(q26))/200
    -(981*L12*m12*cos(q25)*cos(q26))/200
    0
    0
    0
    0
    0
    0
    0];


g5 = [                                                                                                                                                                                                          0
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
    (981*m15*(L14*(cos(q28)*sin(q30) + cos(q30)*sin(q28)*sin(q29)) + L13*cos(q28)))/100 + (981*m14*((L14*(cos(q28)*sin(q30) + cos(q30)*sin(q28)*sin(q29)))/2 + L13*cos(q28)))/100 + (981*L13*m13*cos(q28))/200
    - (981*L14*m14*cos(q28)*cos(q29)*cos(q30))/200 - (981*L14*m15*cos(q28)*cos(q29)*cos(q30))/100
    (981*L14*m14*(cos(q30)*sin(q28) + cos(q28)*sin(q29)*sin(q30)))/200 + (981*L14*m15*(cos(q30)*sin(q28) + cos(q28)*sin(q29)*sin(q30)))/100
    0
    (981*L15*m15*sin(q32)*sin(q33))/200
    -(981*L15*m15*cos(q32)*cos(q33))/200];

g = g1+g2+g3+g4+g5;