function PosJVec = PosJ(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyL, lforeL, rforeL, lhindL, rhindL, shopelP)

q1 = virJ(1,1); q2 = virJ(1,2); q3 = virJ(1,3);
q4 = bodyJ(1,1); q5 = bodyJ(1,2);
q6 = lforeJ(1,1); q7 = lforeJ(1,2); q8 = lforeJ(1,3); q9 = lforeJ(1,4); q10 = lforeJ(1,5); q11 = lforeJ(1,6); q12 = lforeJ(1,7);
q13 = rforeJ(1,1); q14 = rforeJ(1,2); q15 = rforeJ(1,3); q16 = rforeJ(1,4); q17 = rforeJ(1,5); q18 = rforeJ(1,6); q19 = rforeJ(1,7);
q20 = lhindJ(1,1); q21 = lhindJ(1,2); q22 = lhindJ(1,3); q23 = lhindJ(1,4); q24 = lhindJ(1,5); q25 = lhindJ(1,6); q26 = lhindJ(1,7);
q27 = rhindJ(1,1); q28 = rhindJ(1,2); q29 = rhindJ(1,3); q30 = rhindJ(1,4); q31 = rhindJ(1,5); q32 = rhindJ(1,6); q33 = rhindJ(1,7);

L1 = bodyL(1,1); L2 = bodyL(1,2); L3 = bodyL(1,3);
L4 = lforeL(1,1); L5 = lforeL(1,2); L6 = lforeL(1,3);
L7 = rforeL(1,1); L8 = rforeL(1,2); L9 = rforeL(1,3);
L10 = lhindL(1,1); L11 = lhindL(1,2); L12 = lhindL(1,3);
L13 = rhindL(1,1); L14 = rhindL(1,2); L15 = rhindL(1,3);

shoulderX = shopelP(1,1); shoulderY = shopelP(1,2); pelvicX = shopelP(1,3); pelvicY = shopelP(1,4);

PosJ1 = [ q1
    q2
    0];


PosJ2 = [ q1 + L1*cos(q3)
    q2 + L1*sin(q3)
    0];


PosJ3 = [ q1 + L2*cos(q3 + q4) + L1*cos(q3)
    q2 + L2*sin(q3 + q4) + L1*sin(q3)
    0];


PosJ4 = [ q1 + L2*cos(q3 + q4) + L1*cos(q3) + L3*cos(q3 + q4 + q5)
    q2 + L2*sin(q3 + q4) + L1*sin(q3) + L3*sin(q3 + q4 + q5)
    0];


PosJ5 = [ q1 + cos(q3)*(L1/2 + shoulderX) + shoulderY*sin(q3)
    q2 - shoulderY*cos(q3) + sin(q3)*(L1/2 + shoulderX)
    0];


PosJ6 = [ q1 + cos(q3)*(L1/2 + shoulderX) + shoulderY*sin(q3) + L4*sin(q3 + q6)*cos(q7)
    q2 - shoulderY*cos(q3) + sin(q3)*(L1/2 + shoulderX) - L4*cos(q3 + q6)*cos(q7)
    -L4*sin(q7)];


PosJ7 = [ q1 + (L1*cos(q3))/2 + shoulderX*cos(q3) + shoulderY*sin(q3) + L4*sin(q3 + q6)*cos(q7) + L5*sin(q3 + q6)*cos(q7)*sin(q9) - L5*cos(q3 + q6)*cos(q8)*cos(q9) + L5*sin(q3 + q6)*cos(q9)*sin(q7)*sin(q8)
    q2 + (L1*sin(q3))/2 - shoulderY*cos(q3) + shoulderX*sin(q3) - L4*cos(q3 + q6)*cos(q7) - L5*cos(q3 + q6)*cos(q7)*sin(q9) - L5*sin(q3 + q6)*cos(q8)*cos(q9) - L5*cos(q3 + q6)*cos(q9)*sin(q7)*sin(q8)
    - L5*(sin(q7)*sin(q9) - cos(q7)*cos(q9)*sin(q8)) - L4*sin(q7)];


PosJ8 = [ q1 + (L1*cos(q3))/2 + shoulderX*cos(q3) + shoulderY*sin(q3) + L4*sin(q3 + q6)*cos(q7) - L6*cos(q10)*cos(q12) + L5*sin(q3 + q6)*cos(q7)*sin(q9) + L6*sin(q10)*sin(q11)*sin(q12) - L5*cos(q3 + q6)*cos(q8)*cos(q9) + L5*sin(q3 + q6)*cos(q9)*sin(q7)*sin(q8)
    q2 - L6*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) - L5*(cos(q3 + q6)*cos(q7)*sin(q9) + sin(q3 + q6)*cos(q8)*cos(q9) + cos(q3 + q6)*cos(q9)*sin(q7)*sin(q8)) - shoulderY*cos(q3) + sin(q3)*(L1/2 + shoulderX) - L4*cos(q3 + q6)*cos(q7)
    L6*cos(q11)*sin(q12) - L4*sin(q7) - L5*(sin(q7)*sin(q9) - cos(q7)*cos(q9)*sin(q8))];


PosJ9 = [ q1 + cos(q3)*(L1/2 + shoulderX) - shoulderY*sin(q3)
    q2 + shoulderY*cos(q3) + sin(q3)*(L1/2 + shoulderX)
    0];


PosJ10 = [ q1 + cos(q3)*(L1/2 + shoulderX) - shoulderY*sin(q3) - L7*sin(q3 + q13)*cos(q14)
    q2 + shoulderY*cos(q3) + sin(q3)*(L1/2 + shoulderX) + L7*cos(q3 + q13)*cos(q14)
    L7*sin(q14)];


PosJ11 = [ q1 + (L1*cos(q3))/2 + shoulderX*cos(q3) - shoulderY*sin(q3) - L7*sin(q3 + q13)*cos(q14) + L8*sin(q3 + q13)*cos(q14)*sin(q16) - L8*cos(q3 + q13)*cos(q15)*cos(q16) + L8*sin(q3 + q13)*cos(q16)*sin(q14)*sin(q15)
    q2 + (L1*sin(q3))/2 + shoulderY*cos(q3) + shoulderX*sin(q3) + L7*cos(q3 + q13)*cos(q14) - L8*cos(q3 + q13)*cos(q14)*sin(q16) - L8*sin(q3 + q13)*cos(q15)*cos(q16) - L8*cos(q3 + q13)*cos(q16)*sin(q14)*sin(q15)
    L7*sin(q14) - L8*(sin(q14)*sin(q16) - cos(q14)*cos(q16)*sin(q15))];


PosJ12 = [ q1 + (L1*cos(q3))/2 + shoulderX*cos(q3) - shoulderY*sin(q3) - L7*sin(q3 + q13)*cos(q14) - L9*cos(q17)*cos(q19) + L8*sin(q3 + q13)*cos(q14)*sin(q16) + L9*sin(q17)*sin(q18)*sin(q19) - L8*cos(q3 + q13)*cos(q15)*cos(q16) + L8*sin(q3 + q13)*cos(q16)*sin(q14)*sin(q15)
    q2 - L9*(cos(q19)*sin(q17) + cos(q17)*sin(q18)*sin(q19)) - L8*(cos(q3 + q13)*cos(q14)*sin(q16) + sin(q3 + q13)*cos(q15)*cos(q16) + cos(q3 + q13)*cos(q16)*sin(q14)*sin(q15)) + shoulderY*cos(q3) + sin(q3)*(L1/2 + shoulderX) + L7*cos(q3 + q13)*cos(q14)
    L7*sin(q14) - L8*(sin(q14)*sin(q16) - cos(q14)*cos(q16)*sin(q15)) + L9*cos(q18)*sin(q19)];


PosJ13 = [ q1 + cos(q3 + q4)*(L2/2 + pelvicX) + L1*cos(q3) + pelvicY*sin(q3 + q4)
    q2 - pelvicY*cos(q3 + q4) + sin(q3 + q4)*(L2/2 + pelvicX) + L1*sin(q3)
    0];


PosJ14 = [ q1 + cos(q3 + q4)*(L2/2 + pelvicX) + L1*cos(q3) + pelvicY*sin(q3 + q4) + L10*sin(q3 + q4 + q20)*cos(q21)
    q2 - pelvicY*cos(q3 + q4) + sin(q3 + q4)*(L2/2 + pelvicX) + L1*sin(q3) - L10*cos(q3 + q4 + q20)*cos(q21)
    -L10*sin(q21)];


PosJ15 = [ q1 + (L2*cos(q3 + q4))/2 + pelvicX*cos(q3 + q4) + L1*cos(q3) + pelvicY*sin(q3 + q4) + L10*sin(q3 + q4 + q20)*cos(q21) + L11*cos(q3 + q4 + q20)*cos(q22)*cos(q23) - L11*sin(q3 + q4 + q20)*cos(q21)*sin(q23) - L11*sin(q3 + q4 + q20)*cos(q23)*sin(q21)*sin(q22)
    q2 + (L2*sin(q3 + q4))/2 - pelvicY*cos(q3 + q4) + pelvicX*sin(q3 + q4) + L1*sin(q3) - L10*cos(q3 + q4 + q20)*cos(q21) + L11*cos(q3 + q4 + q20)*cos(q21)*sin(q23) + L11*sin(q3 + q4 + q20)*cos(q22)*cos(q23) + L11*cos(q3 + q4 + q20)*cos(q23)*sin(q21)*sin(q22)
    L11*(sin(q21)*sin(q23) - cos(q21)*cos(q23)*sin(q22)) - L10*sin(q21)];


PosJ16 = [ q1 + (L2*cos(q3 + q4))/2 + pelvicX*cos(q3 + q4) + L1*cos(q3) + pelvicY*sin(q3 + q4) + L12*cos(q24)*cos(q26) + L10*sin(q3 + q4 + q20)*cos(q21) - L12*sin(q24)*sin(q25)*sin(q26) + L11*cos(q3 + q4 + q20)*cos(q22)*cos(q23) - L11*sin(q3 + q4 + q20)*cos(q21)*sin(q23) - L11*sin(q3 + q4 + q20)*cos(q23)*sin(q21)*sin(q22)
    q2 + (L2*sin(q3 + q4))/2 - pelvicY*cos(q3 + q4) + pelvicX*sin(q3 + q4) + L1*sin(q3) + L12*cos(q26)*sin(q24) - L10*cos(q3 + q4 + q20)*cos(q21) + L12*cos(q24)*sin(q25)*sin(q26) + L11*cos(q3 + q4 + q20)*cos(q21)*sin(q23) + L11*sin(q3 + q4 + q20)*cos(q22)*cos(q23) + L11*cos(q3 + q4 + q20)*cos(q23)*sin(q21)*sin(q22)
    L11*(sin(q21)*sin(q23) - cos(q21)*cos(q23)*sin(q22)) - L10*sin(q21) - L12*cos(q25)*sin(q26)];


PosJ17 = [ q1 + cos(q3 + q4)*(L2/2 + pelvicX) + L1*cos(q3) - pelvicY*sin(q3 + q4)
    q2 + pelvicY*cos(q3 + q4) + sin(q3 + q4)*(L2/2 + pelvicX) + L1*sin(q3)
    0];


PosJ18 = [ q1 + cos(q3 + q4)*(L2/2 + pelvicX) + L1*cos(q3) - pelvicY*sin(q3 + q4) - L13*sin(q3 + q4 + q27)*cos(q28)
    q2 + pelvicY*cos(q3 + q4) + sin(q3 + q4)*(L2/2 + pelvicX) + L1*sin(q3) + L13*cos(q3 + q4 + q27)*cos(q28)
    L13*sin(q28)];


PosJ19 = [ q1 + (L2*cos(q3 + q4))/2 + pelvicX*cos(q3 + q4) + L1*cos(q3) - pelvicY*sin(q3 + q4) - L13*sin(q3 + q4 + q27)*cos(q28) + L14*cos(q3 + q4 + q27)*cos(q29)*cos(q30) - L14*sin(q3 + q4 + q27)*cos(q28)*sin(q30) - L14*sin(q3 + q4 + q27)*cos(q30)*sin(q28)*sin(q29)
    q2 + (L2*sin(q3 + q4))/2 + pelvicY*cos(q3 + q4) + pelvicX*sin(q3 + q4) + L1*sin(q3) + L13*cos(q3 + q4 + q27)*cos(q28) + L14*cos(q3 + q4 + q27)*cos(q28)*sin(q30) + L14*sin(q3 + q4 + q27)*cos(q29)*cos(q30) + L14*cos(q3 + q4 + q27)*cos(q30)*sin(q28)*sin(q29)
    L14*(sin(q28)*sin(q30) - cos(q28)*cos(q30)*sin(q29)) + L13*sin(q28)];


PosJ20 = [ q1 + (L2*cos(q3 + q4))/2 + pelvicX*cos(q3 + q4) + L1*cos(q3) - pelvicY*sin(q3 + q4) + L15*cos(q31)*cos(q33) - L13*sin(q3 + q4 + q27)*cos(q28) - L15*sin(q31)*sin(q32)*sin(q33) + L14*cos(q3 + q4 + q27)*cos(q29)*cos(q30) - L14*sin(q3 + q4 + q27)*cos(q28)*sin(q30) - L14*sin(q3 + q4 + q27)*cos(q30)*sin(q28)*sin(q29)
    q2 + (L2*sin(q3 + q4))/2 + pelvicY*cos(q3 + q4) + pelvicX*sin(q3 + q4) + L1*sin(q3) + L15*cos(q33)*sin(q31) + L13*cos(q3 + q4 + q27)*cos(q28) + L15*cos(q31)*sin(q32)*sin(q33) + L14*cos(q3 + q4 + q27)*cos(q28)*sin(q30) + L14*sin(q3 + q4 + q27)*cos(q29)*cos(q30) + L14*cos(q3 + q4 + q27)*cos(q30)*sin(q28)*sin(q29)
    L14*(sin(q28)*sin(q30) - cos(q28)*cos(q30)*sin(q29)) + L13*sin(q28) - L15*cos(q32)*sin(q33)];


PosJVec= real([PosJ1, PosJ2, PosJ3, PosJ4, PosJ5, PosJ6, PosJ7, PosJ8, PosJ9, PosJ10, PosJ11, PosJ12, PosJ13, PosJ14, PosJ15, PosJ16, PosJ17, PosJ18, PosJ19, PosJ20]);


