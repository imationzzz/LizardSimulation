function Tor = DynEquAndVirJ(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP)
q1 = virJ(1,1); q2 = virJ(1,2); q3 = virJ(1,3);
q4 = bodyJ(1,1); q5 = bodyJ(1,2);
q6 = lforeJ(1,1); q7 = lforeJ(1,2); q8 = lforeJ(1,3); q9 = lforeJ(1,4); q10 = lforeJ(1,5); q11 = lforeJ(1,6); q12 = lforeJ(1,7);
q13 = rforeJ(1,1); q14 = rforeJ(1,2); q15 = rforeJ(1,3); q16 = rforeJ(1,4); q17 = rforeJ(1,5); q18 = rforeJ(1,6); q19 = rforeJ(1,7);
q20 = lhindJ(1,1); q21 = lhindJ(1,2); q22 = lhindJ(1,3); q23 = lhindJ(1,4); q24 = lhindJ(1,5); q25 = lhindJ(1,6); q26 = lhindJ(1,7);
q27 = rhindJ(1,1); q28 = rhindJ(1,2); q29 = rhindJ(1,3); q30 = rhindJ(1,4); q31 = rhindJ(1,5); q32 = rhindJ(1,6); q33 = rhindJ(1,7);

dq1 = dvirJ(1,1); dq2 = dvirJ(1,2); dq3 = dvirJ(1,3);
dq4 = dbodyJ(1,1); dq5 = dbodyJ(1,2);
dq6 = dlforeJ(1,1); dq7 = dlforeJ(1,2); dq8 = dlforeJ(1,3); dq9 = dlforeJ(1,4); dq10 = dlforeJ(1,5); dq11 = dlforeJ(1,6); dq12 = dlforeJ(1,7);
dq13 = drforeJ(1,1); dq14 = drforeJ(1,2); dq15 = drforeJ(1,3); dq16 = drforeJ(1,4); dq17 = drforeJ(1,5); dq18 = drforeJ(1,6); dq19 = drforeJ(1,7);
dq20 = dlhindJ(1,1); dq21 = dlhindJ(1,2); dq22 = dlhindJ(1,3); dq23 = dlhindJ(1,4); dq24 = dlhindJ(1,5); dq25 = dlhindJ(1,6); dq26 = dlhindJ(1,7);
dq27 = drhindJ(1,1); dq28 = drhindJ(1,2); dq29 = drhindJ(1,3); dq30 = drhindJ(1,4); dq31 = drhindJ(1,5); dq32 = drhindJ(1,6); dq33 = drhindJ(1,7);

d2q1 = d2virJ(1,1); d2q2 = d2virJ(1,2); d2q3 = d2virJ(1,3);
d2q4 = d2bodyJ(1,1); d2q5 = d2bodyJ(1,2);
d2q6 = d2lforeJ(1,1); d2q7 = d2lforeJ(1,2); d2q8 = d2lforeJ(1,3); d2q9 = d2lforeJ(1,4); d2q10 = d2lforeJ(1,5); d2q11 = d2lforeJ(1,6); d2q12 = d2lforeJ(1,7);
d2q13 = d2rforeJ(1,1); d2q14 = d2rforeJ(1,2); d2q15 = d2rforeJ(1,3); d2q16 = d2rforeJ(1,4); d2q17 = d2rforeJ(1,5); d2q18 = d2rforeJ(1,6); d2q19 = d2rforeJ(1,7);
d2q20 = d2lhindJ(1,1); d2q21 = d2lhindJ(1,2); d2q22 = d2lhindJ(1,3); d2q23 = d2lhindJ(1,4); d2q24 = d2lhindJ(1,5); d2q25 = d2lhindJ(1,6); d2q26 = d2lhindJ(1,7);
d2q27 = d2rhindJ(1,1); d2q28 = d2rhindJ(1,2); d2q29 = d2rhindJ(1,3); d2q30 = d2rhindJ(1,4); d2q31 = d2rhindJ(1,5); d2q32 = d2rhindJ(1,6); d2q33 = d2rhindJ(1,7);

q=[q1; q2; q3; q4; q5; q6; q7; q8; q9; q10; q11; q12; q13; q14; q15; q16; q17; q18; q19; q20; q21; q22; q23; q24; q25; q26; q27; q28; q29; q30; q31; q32; q33];
dq=[dq1; dq2; dq3; dq4; dq5; dq6; dq7; dq8; dq9; dq10; dq11; dq12; dq13; dq14; dq15; dq16; dq17; dq18; dq19; dq20; dq21; dq22; dq23; dq24; dq25; dq26; dq27; dq28; dq29; dq30; dq31; dq32; dq33];
d2q=[d2q1; d2q2; d2q3; d2q4; d2q5; d2q6; d2q7; d2q8; d2q9; d2q10; d2q11; d2q12; d2q13; d2q14; d2q15; d2q16; d2q17; d2q18; d2q19; d2q20; d2q21; d2q22; d2q23; d2q24; d2q25; d2q26; d2q27; d2q28; d2q29; d2q30; d2q31; d2q32; d2q33];

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


%% A matrix
A1 = A1Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A2 = A2Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A3 = A3Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A4 = A4Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A5 = A5Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A6 = A6Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A7 = A7Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A8 = A8Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A9 = A9Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A10 = A10Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A11 = A11Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A12 = A12Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A13 = A13Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A14 = A14Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
A15 = A15Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);

A = A1 + A2 + A3 + A4 + A5 + A6 + A7 + A8 + A9 + A10 + A11 + A12 + A13 + A14 + A15;

%% B matrix
B1 = zeros(33,32);
B2 = zeros(33,31);
B3 = B3Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B4 = B4Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B5 = zeros(33,28);
B6 = B6Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B7 = B7Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B8 = B8Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B9 = B9Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B10 = B10Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B11 = B11Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B12 = zeros(33,21);
B13 = B13Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B14 = B14Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B15 = B15Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B16 = B16Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B17 = B17Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B18 = B18Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B19 = zeros(33,14);
B20 = B20Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B21 = B21Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B22 = B22Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B23 = B23Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B24 = B24Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B25 = B25Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B26 = zeros(33,7);
B27 = B27Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B28 = B28Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B29 = B29Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B30 = B30Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B31 = B31Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
B32 = B32Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);

B=[B1 B2 B3 B4 B5 B6 B7 B8 B9 B10 B11 B12 B13 B14 B15 B16 B17 B18 B19 B20 B21 B22 B23 B24 B25 B26 B27 B28 B29 B30 B31 B32];

%% C matrix
C1_5 = C1_5Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
C6_10 = C6_10Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
C11_15 = C11_15Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
C16_20 = C16_20Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
C21_25 = C21_25Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
C26_30 = C26_30Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
C31_33 = C31_33Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);

C=[C1_5 C6_10 C11_15 C16_20 C21_25 C26_30 C31_33];

%% g matrix
g = gMat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);

%% dqdq
dqdq = [   dq1*dq2;   dq1*dq3;   dq1*dq4;   dq1*dq5;   dq1*dq6;   dq1*dq7;   dq1*dq8;   dq1*dq9;  dq1*dq10;  dq1*dq11;
    dq1*dq12;  dq1*dq13;  dq1*dq14;  dq1*dq15;  dq1*dq16;  dq1*dq17;  dq1*dq18;  dq1*dq19;  dq1*dq20;  dq1*dq21;  dq1*dq22;
    dq1*dq23;  dq1*dq24;  dq1*dq25;  dq1*dq26;  dq1*dq27;  dq1*dq28;  dq1*dq29;  dq1*dq30;  dq1*dq31;  dq1*dq32;
    dq1*dq33;   dq2*dq3;   dq2*dq4;   dq2*dq5;   dq2*dq6;   dq2*dq7;   dq2*dq8;   dq2*dq9;  dq2*dq10;  dq2*dq11;  dq2*dq12;
    dq2*dq13;  dq2*dq14;  dq2*dq15;  dq2*dq16;  dq2*dq17;  dq2*dq18;  dq2*dq19;  dq2*dq20;  dq2*dq21;  dq2*dq22;  dq2*dq23;
    dq2*dq24;  dq2*dq25;  dq2*dq26;  dq2*dq27;  dq2*dq28;  dq2*dq29;  dq2*dq30;  dq2*dq31;  dq2*dq32;  dq2*dq33;   dq3*dq4;
    dq3*dq5;   dq3*dq6;   dq3*dq7;   dq3*dq8;   dq3*dq9;  dq3*dq10;  dq3*dq11;  dq3*dq12;  dq3*dq13;  dq3*dq14;  dq3*dq15;
    dq3*dq16;  dq3*dq17;  dq3*dq18;  dq3*dq19;  dq3*dq20;  dq3*dq21;  dq3*dq22;  dq3*dq23;  dq3*dq24;  dq3*dq25;  dq3*dq26;
    dq3*dq27;  dq3*dq28;  dq3*dq29;  dq3*dq30;  dq3*dq31;  dq3*dq32;  dq3*dq33;   dq4*dq5;   dq4*dq6;   dq4*dq7;   dq4*dq8;
    dq4*dq9;  dq4*dq10;  dq4*dq11;  dq4*dq12;  dq4*dq13;  dq4*dq14;  dq4*dq15;  dq4*dq16;  dq4*dq17;  dq4*dq18;  dq4*dq19;
    dq4*dq20;  dq4*dq21;  dq4*dq22;  dq4*dq23;  dq4*dq24;  dq4*dq25;  dq4*dq26;  dq4*dq27;  dq4*dq28;  dq4*dq29;  dq4*dq30;
    dq4*dq31;  dq4*dq32;  dq4*dq33;   dq5*dq6;   dq5*dq7;   dq5*dq8;   dq5*dq9;  dq5*dq10;  dq5*dq11;  dq5*dq12;  dq5*dq13;
    dq5*dq14;  dq5*dq15;  dq5*dq16;  dq5*dq17;  dq5*dq18;  dq5*dq19;  dq5*dq20;  dq5*dq21;  dq5*dq22;  dq5*dq23;  dq5*dq24;
    dq5*dq25;  dq5*dq26;  dq5*dq27;  dq5*dq28;  dq5*dq29;  dq5*dq30;  dq5*dq31;  dq5*dq32;  dq5*dq33;   dq6*dq7;   dq6*dq8;
    dq6*dq9;  dq6*dq10;  dq6*dq11;  dq6*dq12;  dq6*dq13;  dq6*dq14;  dq6*dq15;  dq6*dq16;  dq6*dq17;  dq6*dq18;  dq6*dq19;
    dq6*dq20;  dq6*dq21;  dq6*dq22;  dq6*dq23;  dq6*dq24;  dq6*dq25;  dq6*dq26;  dq6*dq27;  dq6*dq28;  dq6*dq29;  dq6*dq30;
    dq6*dq31;  dq6*dq32;  dq6*dq33;   dq7*dq8;   dq7*dq9;  dq7*dq10;  dq7*dq11;  dq7*dq12;  dq7*dq13;  dq7*dq14;  dq7*dq15;
    dq7*dq16;  dq7*dq17;  dq7*dq18;  dq7*dq19;  dq7*dq20;  dq7*dq21;  dq7*dq22;  dq7*dq23;  dq7*dq24;  dq7*dq25;  dq7*dq26;
    dq7*dq27;  dq7*dq28;  dq7*dq29;  dq7*dq30;  dq7*dq31;  dq7*dq32;  dq7*dq33;   dq8*dq9;  dq8*dq10;  dq8*dq11;  dq8*dq12;
    dq8*dq13;  dq8*dq14;  dq8*dq15;  dq8*dq16;  dq8*dq17;  dq8*dq18;  dq8*dq19;  dq8*dq20;  dq8*dq21;  dq8*dq22;  dq8*dq23;
    dq8*dq24;  dq8*dq25;  dq8*dq26;  dq8*dq27;  dq8*dq28;  dq8*dq29;  dq8*dq30;  dq8*dq31;  dq8*dq32;  dq8*dq33;  dq9*dq10;
    dq9*dq11;  dq9*dq12;  dq9*dq13;  dq9*dq14;  dq9*dq15;  dq9*dq16;  dq9*dq17;  dq9*dq18;  dq9*dq19;  dq9*dq20;  dq9*dq21;
    dq9*dq22;  dq9*dq23;  dq9*dq24;  dq9*dq25;  dq9*dq26;  dq9*dq27;  dq9*dq28;  dq9*dq29;  dq9*dq30;  dq9*dq31;  dq9*dq32;
    dq9*dq33; dq10*dq11; dq10*dq12; dq10*dq13; dq10*dq14; dq10*dq15; dq10*dq16; dq10*dq17; dq10*dq18; dq10*dq19; dq10*dq20;
    dq10*dq21; dq10*dq22; dq10*dq23; dq10*dq24; dq10*dq25; dq10*dq26; dq10*dq27; dq10*dq28; dq10*dq29; dq10*dq30; dq10*dq31;
    dq10*dq32; dq10*dq33; dq11*dq12; dq11*dq13; dq11*dq14; dq11*dq15; dq11*dq16; dq11*dq17; dq11*dq18; dq11*dq19; dq11*dq20;
    dq11*dq21; dq11*dq22; dq11*dq23; dq11*dq24; dq11*dq25; dq11*dq26; dq11*dq27; dq11*dq28; dq11*dq29; dq11*dq30; dq11*dq31;
    dq11*dq32; dq11*dq33; dq12*dq13; dq12*dq14; dq12*dq15; dq12*dq16; dq12*dq17; dq12*dq18; dq12*dq19; dq12*dq20; dq12*dq21;
    dq12*dq22; dq12*dq23; dq12*dq24; dq12*dq25; dq12*dq26; dq12*dq27; dq12*dq28; dq12*dq29; dq12*dq30; dq12*dq31; dq12*dq32;
    dq12*dq33; dq13*dq14; dq13*dq15; dq13*dq16; dq13*dq17; dq13*dq18; dq13*dq19; dq13*dq20; dq13*dq21; dq13*dq22; dq13*dq23;
    dq13*dq24; dq13*dq25; dq13*dq26; dq13*dq27; dq13*dq28; dq13*dq29; dq13*dq30; dq13*dq31; dq13*dq32; dq13*dq33; dq14*dq15;
    dq14*dq16; dq14*dq17; dq14*dq18; dq14*dq19; dq14*dq20; dq14*dq21; dq14*dq22; dq14*dq23; dq14*dq24; dq14*dq25; dq14*dq26;
    dq14*dq27; dq14*dq28; dq14*dq29; dq14*dq30; dq14*dq31; dq14*dq32; dq14*dq33; dq15*dq16; dq15*dq17; dq15*dq18; dq15*dq19;
    dq15*dq20; dq15*dq21; dq15*dq22; dq15*dq23; dq15*dq24; dq15*dq25; dq15*dq26; dq15*dq27; dq15*dq28; dq15*dq29; dq15*dq30;
    dq15*dq31; dq15*dq32; dq15*dq33; dq16*dq17; dq16*dq18; dq16*dq19; dq16*dq20; dq16*dq21; dq16*dq22; dq16*dq23; dq16*dq24;
    dq16*dq25; dq16*dq26; dq16*dq27; dq16*dq28; dq16*dq29; dq16*dq30; dq16*dq31; dq16*dq32; dq16*dq33; dq17*dq18; dq17*dq19;
    dq17*dq20; dq17*dq21; dq17*dq22; dq17*dq23; dq17*dq24; dq17*dq25; dq17*dq26; dq17*dq27; dq17*dq28; dq17*dq29; dq17*dq30;
    dq17*dq31; dq17*dq32; dq17*dq33; dq18*dq19; dq18*dq20; dq18*dq21; dq18*dq22; dq18*dq23; dq18*dq24; dq18*dq25; dq18*dq26;
    dq18*dq27; dq18*dq28; dq18*dq29; dq18*dq30; dq18*dq31; dq18*dq32; dq18*dq33; dq19*dq20; dq19*dq21; dq19*dq22; dq19*dq23;
    dq19*dq24; dq19*dq25; dq19*dq26; dq19*dq27; dq19*dq28; dq19*dq29; dq19*dq30; dq19*dq31; dq19*dq32; dq19*dq33; dq20*dq21;
    dq20*dq22; dq20*dq23; dq20*dq24; dq20*dq25; dq20*dq26; dq20*dq27; dq20*dq28; dq20*dq29; dq20*dq30; dq20*dq31; dq20*dq32;
    dq20*dq33; dq21*dq22; dq21*dq23; dq21*dq24; dq21*dq25; dq21*dq26; dq21*dq27; dq21*dq28; dq21*dq29; dq21*dq30; dq21*dq31;
    dq21*dq32; dq21*dq33; dq22*dq23; dq22*dq24; dq22*dq25; dq22*dq26; dq22*dq27; dq22*dq28; dq22*dq29; dq22*dq30; dq22*dq31;
    dq22*dq32; dq22*dq33; dq23*dq24; dq23*dq25; dq23*dq26; dq23*dq27; dq23*dq28; dq23*dq29; dq23*dq30; dq23*dq31; dq23*dq32;
    dq23*dq33; dq24*dq25; dq24*dq26; dq24*dq27; dq24*dq28; dq24*dq29; dq24*dq30; dq24*dq31; dq24*dq32; dq24*dq33; dq25*dq26;
    dq25*dq27; dq25*dq28; dq25*dq29; dq25*dq30; dq25*dq31; dq25*dq32; dq25*dq33; dq26*dq27; dq26*dq28; dq26*dq29; dq26*dq30;
    dq26*dq31; dq26*dq32; dq26*dq33; dq27*dq28; dq27*dq29; dq27*dq30; dq27*dq31; dq27*dq32; dq27*dq33; dq28*dq29; dq28*dq30;
    dq28*dq31; dq28*dq32; dq28*dq33; dq29*dq30; dq29*dq31; dq29*dq32; dq29*dq33; dq30*dq31; dq30*dq32; dq30*dq33; dq31*dq32;
    dq31*dq33; dq32*dq33];


%% dq2Vec
dq2Vec=[dq1^2; dq2^2; dq3^2; dq4^2; dq5^2; dq6^2; dq7^2; dq8^2; dq9^2; dq10^2; dq11^2; dq12^2; dq13^2; dq14^2; dq15^2; dq16^2; dq17^2; dq18^2; dq19^2; dq20^2; dq21^2; dq22^2; dq23^2; dq24^2; dq25^2; dq26^2; dq27^2; dq28^2; dq29^2; dq30^2; dq31^2; dq32^2; dq33^2];

%% b
b = B*dqdq+C*dq2Vec;

%% virtual joint acceleration
% torque1_3 = [Torque(1,1); Torque(2,1); Torque(3,1)];
torque1_3 = [0; 0; 0]; 
bg1_3 = [b(1,1) + g(1,1); b(2,1) + g(2,1); b(3,1) + g(3,1)];
Aother = [A(1,4) A(1,5) A(1,6) A(1,7) A(1,8) A(1,9) A(1,10) A(1,11) A(1,12) A(1,13) A(1,14) A(1,15) A(1,16) A(1,17) A(1,18) A(1,19) A(1,20) A(1,21) A(1,22) A(1,23) A(1,24) A(1,25) A(1,26) A(1,27) A(1,28) A(1,29) A(1,30) A(1,31) A(1,32) A(1,33);
    A(2,4) A(2,5) A(2,6) A(2,7) A(2,8) A(2,9) A(2,10) A(2,11) A(2,12) A(2,13) A(2,14) A(2,15) A(2,16) A(2,17) A(2,18) A(2,19) A(2,20) A(2,21) A(2,22) A(2,23) A(2,24) A(2,25) A(2,26) A(2,27) A(2,28) A(2,29) A(2,30) A(2,31) A(2,32) A(2,33);
    A(3,4) A(3,5) A(3,6) A(3,7) A(3,8) A(3,9) A(3,10) A(3,11) A(3,12) A(3,13) A(3,14) A(3,15) A(3,16) A(3,17) A(3,18) A(3,19) A(3,20) A(3,21) A(3,22) A(3,23) A(3,24) A(3,25) A(3,26) A(3,27) A(3,28) A(3,29) A(3,30) A(3,31) A(3,32) A(3,33)];
d2qother = [d2q(4,1); d2q(5,1); d2q(6,1); d2q(7,1); d2q(8,1); d2q(9,1); d2q(10,1); d2q(11,1); d2q(12,1); d2q(13,1); d2q(14,1); d2q(15,1); d2q(16,1); d2q(17,1); d2q(18,1); d2q(19,1); d2q(20,1); d2q(21,1); d2q(22,1); d2q(23,1); d2q(24,1); d2q(25,1); d2q(26,1); d2q(27,1); d2q(28,1); d2q(29,1); d2q(30,1); d2q(31,1); d2q(32,1); d2q(33,1)];
other1_3 = Aother*d2qother;
A1_3 = [A(1,1) A(1,2) A(1,3); A(2,1) A(2,2) A(2,3); A(3,1) A(3,2) A(3,3)];
% InvA1_3 = eye(3)\A1_3;
d2virJ = A1_3\(torque1_3 - bg1_3 - other1_3);

d2q(1,1) = d2virJ(1,1); d2q(2,1) = d2virJ(2,1); d2q(3,1) = d2virJ(3,1);


%% Torque: Non contact
Tor = A*d2q + b + g;



