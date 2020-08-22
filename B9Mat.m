function B9 = B9Mat(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP)

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


BB9_1 = [                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           0
 (m6*cos(q11)*cos(q12)*(sin(q7)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) + cos(q7)*sin(q8)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11))))*(L6^2 + W6^2))/6 - (m6*sin(q11)*(sin(q7)*(cos(q9)*cos(q11)*sin(q10) + cos(q10)*cos(q11)*sin(q9)) - cos(q7)*sin(q8)*(cos(q9)*cos(q10)*cos(q11) - cos(q11)*sin(q9)*sin(q10)))*(H6^2 + L6^2))/6 - (m6*cos(q11)*sin(q12)*(sin(q7)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) + cos(q7)*sin(q8)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))))*(H6^2 + W6^2))/6
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           0
 (m6*cos(q11)*cos(q12)*(sin(q7)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) + cos(q7)*sin(q8)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11))))*(L6^2 + W6^2))/6 - (m6*sin(q11)*(sin(q7)*(cos(q9)*cos(q11)*sin(q10) + cos(q10)*cos(q11)*sin(q9)) - cos(q7)*sin(q8)*(cos(q9)*cos(q10)*cos(q11) - cos(q11)*sin(q9)*sin(q10)))*(H6^2 + L6^2))/6 - (m6*cos(q11)*sin(q12)*(sin(q7)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) + cos(q7)*sin(q8)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))))*(H6^2 + W6^2))/6
                                                                                                                                                                                                                                                                                                                                                                 (m6*cos(q8)*cos(q11)*sin(q12)*(H6^2 + W6^2)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))))/6 - (m6*cos(q8)*cos(q11)*cos(q12)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)))*(L6^2 + W6^2))/6 - (m6*cos(q8)*sin(q11)*(cos(q9)*cos(q10)*cos(q11) - cos(q11)*sin(q9)*sin(q10))*(H6^2 + L6^2))/6
                                                                                                                                                                                                                                                                                                                                                                                         (m6*cos(q11)*cos(q12)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)))*(L6^2 + W6^2))/6 - (m6*cos(q11)*sin(q12)*(H6^2 + W6^2)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))))/6 - (m6*sin(q11)*(cos(q9)*cos(q11)*sin(q10) + cos(q10)*cos(q11)*sin(q9))*(H6^2 + L6^2))/6
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              (m6*cos(q11)*cos(q12)^2*sin(q11)*(L6^2 + W6^2))/6 - (m6*cos(q11)*sin(q11)*(H6^2 + L6^2))/6 + (m6*cos(q11)*sin(q11)*sin(q12)^2*(H6^2 + W6^2))/6
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       (m6*cos(q11)^2*cos(q12)*sin(q12)*(L6^2 + W6^2))/6 - (m6*cos(q11)^2*cos(q12)*sin(q12)*(H6^2 + W6^2))/6
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
 



 
BB9_2 = [                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   0
 (m6*cos(q11)*(cos(q7)*(cos(q8)*sin(q11) + sin(q8)*(cos(q9)*cos(q11)*sin(q10) + cos(q10)*cos(q11)*sin(q9))) + sin(q7)*(cos(q9)*cos(q10)*cos(q11) - cos(q11)*sin(q9)*sin(q10)))*(H6^2 + L6^2))/12 + (m6*sin(q11)*(cos(q7)*(cos(q8)*cos(q11) - sin(q8)*(cos(q9)*sin(q10)*sin(q11) + cos(q10)*sin(q9)*sin(q11))) + sin(q7)*(sin(q9)*sin(q10)*sin(q11) - cos(q9)*cos(q10)*sin(q11)))*(H6^2 + L6^2))/12 + (m6*cos(q12)*(sin(q7)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) + cos(q7)*sin(q8)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))))*(H6^2 + W6^2))/12 + (m6*sin(q12)*(sin(q7)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) + cos(q7)*sin(q8)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11))))*(L6^2 + W6^2))/12 - (m6*cos(q12)*sin(q11)*(L6^2 + W6^2)*(sin(q7)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11))) - cos(q7)*(sin(q8)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) - cos(q8)*cos(q11)*cos(q12))))/12 + (m6*sin(q11)*sin(q12)*(H6^2 + W6^2)*(sin(q7)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))) - cos(q7)*(sin(q8)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) + cos(q8)*cos(q11)*sin(q12))))/12 - (m6*cos(q11)*cos(q12)*(sin(q7)*(cos(q9)*cos(q10)*cos(q11)*cos(q12) - cos(q11)*cos(q12)*sin(q9)*sin(q10)) + cos(q7)*(sin(q8)*(cos(q9)*cos(q11)*cos(q12)*sin(q10) + cos(q10)*cos(q11)*cos(q12)*sin(q9)) + cos(q8)*cos(q12)*sin(q11)))*(L6^2 + W6^2))/12 - (m6*cos(q11)*sin(q12)*(sin(q7)*(cos(q9)*cos(q10)*cos(q11)*sin(q12) - cos(q11)*sin(q9)*sin(q10)*sin(q12)) + cos(q7)*(sin(q8)*(cos(q9)*cos(q11)*sin(q10)*sin(q12) + cos(q10)*cos(q11)*sin(q9)*sin(q12)) + cos(q8)*sin(q11)*sin(q12)))*(H6^2 + W6^2))/12
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   0
 (m6*cos(q11)*(cos(q7)*(cos(q8)*sin(q11) + sin(q8)*(cos(q9)*cos(q11)*sin(q10) + cos(q10)*cos(q11)*sin(q9))) + sin(q7)*(cos(q9)*cos(q10)*cos(q11) - cos(q11)*sin(q9)*sin(q10)))*(H6^2 + L6^2))/12 + (m6*sin(q11)*(cos(q7)*(cos(q8)*cos(q11) - sin(q8)*(cos(q9)*sin(q10)*sin(q11) + cos(q10)*sin(q9)*sin(q11))) + sin(q7)*(sin(q9)*sin(q10)*sin(q11) - cos(q9)*cos(q10)*sin(q11)))*(H6^2 + L6^2))/12 + (m6*cos(q12)*(sin(q7)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) + cos(q7)*sin(q8)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))))*(H6^2 + W6^2))/12 + (m6*sin(q12)*(sin(q7)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) + cos(q7)*sin(q8)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11))))*(L6^2 + W6^2))/12 - (m6*cos(q12)*sin(q11)*(L6^2 + W6^2)*(sin(q7)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11))) - cos(q7)*(sin(q8)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) - cos(q8)*cos(q11)*cos(q12))))/12 + (m6*sin(q11)*sin(q12)*(H6^2 + W6^2)*(sin(q7)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))) - cos(q7)*(sin(q8)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) + cos(q8)*cos(q11)*sin(q12))))/12 - (m6*cos(q11)*cos(q12)*(sin(q7)*(cos(q9)*cos(q10)*cos(q11)*cos(q12) - cos(q11)*cos(q12)*sin(q9)*sin(q10)) + cos(q7)*(sin(q8)*(cos(q9)*cos(q11)*cos(q12)*sin(q10) + cos(q10)*cos(q11)*cos(q12)*sin(q9)) + cos(q8)*cos(q12)*sin(q11)))*(L6^2 + W6^2))/12 - (m6*cos(q11)*sin(q12)*(sin(q7)*(cos(q9)*cos(q10)*cos(q11)*sin(q12) - cos(q11)*sin(q9)*sin(q10)*sin(q12)) + cos(q7)*(sin(q8)*(cos(q9)*cos(q11)*sin(q10)*sin(q12) + cos(q10)*cos(q11)*sin(q9)*sin(q12)) + cos(q8)*sin(q11)*sin(q12)))*(H6^2 + W6^2))/12
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             (m6*cos(q11)*(H6^2 + L6^2)*(sin(q8)*sin(q11) - cos(q8)*(cos(q9)*cos(q11)*sin(q10) + cos(q10)*cos(q11)*sin(q9))))/12 + (m6*sin(q11)*(cos(q11)*sin(q8) + cos(q8)*(cos(q9)*sin(q10)*sin(q11) + cos(q10)*sin(q9)*sin(q11)))*(H6^2 + L6^2))/12 - (m6*cos(q8)*sin(q12)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)))*(L6^2 + W6^2))/12 - (m6*cos(q12)*sin(q11)*(cos(q8)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) + cos(q11)*cos(q12)*sin(q8))*(L6^2 + W6^2))/12 + (m6*sin(q11)*sin(q12)*(cos(q8)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) - cos(q11)*sin(q8)*sin(q12))*(H6^2 + W6^2))/12 + (m6*cos(q11)*cos(q12)*(cos(q8)*(cos(q9)*cos(q11)*cos(q12)*sin(q10) + cos(q10)*cos(q11)*cos(q12)*sin(q9)) - cos(q12)*sin(q8)*sin(q11))*(L6^2 + W6^2))/12 + (m6*cos(q11)*sin(q12)*(cos(q8)*(cos(q9)*cos(q11)*sin(q10)*sin(q12) + cos(q10)*cos(q11)*sin(q9)*sin(q12)) - sin(q8)*sin(q11)*sin(q12))*(H6^2 + W6^2))/12 - (m6*cos(q8)*cos(q12)*(H6^2 + W6^2)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))))/12
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               (m6*cos(q12)*(H6^2 + W6^2)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))))/12 + (m6*sin(q12)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)))*(L6^2 + W6^2))/12 + (m6*cos(q11)*(cos(q9)*cos(q10)*cos(q11) - cos(q11)*sin(q9)*sin(q10))*(H6^2 + L6^2))/12 + (m6*sin(q11)*(sin(q9)*sin(q10)*sin(q11) - cos(q9)*cos(q10)*sin(q11))*(H6^2 + L6^2))/12 - (m6*cos(q12)*sin(q11)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)))*(L6^2 + W6^2))/12 + (m6*sin(q11)*sin(q12)*(H6^2 + W6^2)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))))/12 - (m6*cos(q11)*cos(q12)*(L6^2 + W6^2)*(cos(q9)*cos(q10)*cos(q11)*cos(q12) - cos(q11)*cos(q12)*sin(q9)*sin(q10)))/12 - (m6*cos(q11)*sin(q12)*(cos(q9)*cos(q10)*cos(q11)*sin(q12) - cos(q11)*sin(q9)*sin(q10)*sin(q12))*(H6^2 + W6^2))/12
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      (m6*cos(q11)*sin(q11)*(H6^2 + L6^2))/6 - (m6*cos(q11)*cos(q12)^2*sin(q11)*(L6^2 + W6^2))/6 - (m6*cos(q11)*sin(q11)*sin(q12)^2*(H6^2 + W6^2))/6
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      (m6*cos(q11)*sin(q11)*(H6^2 + L6^2))/6 - (m6*cos(q11)*cos(q12)^2*sin(q11)*(L6^2 + W6^2))/6 - (m6*cos(q11)*sin(q11)*sin(q12)^2*(H6^2 + W6^2))/6
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      (m6*cos(q11)*(H6^2 + L6^2))/12 + (m6*cos(q11)*cos(q12)^2*(H6^2 + W6^2))/12 - (m6*cos(q11)*cos(q12)^2*(L6^2 + W6^2))/12 - (m6*cos(q11)*sin(q12)^2*(H6^2 + W6^2))/12 + (m6*cos(q11)*sin(q12)^2*(L6^2 + W6^2))/12
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
 



 
BB9_3 = [                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 0
 (m6*cos(q11)*sin(q12)*(H6^2 + W6^2)*(sin(q7)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11))) - cos(q7)*(sin(q8)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) - cos(q8)*cos(q11)*cos(q12))))/12 - (m6*cos(q11)*cos(q12)*(H6^2 + W6^2)*(sin(q7)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))) - cos(q7)*(sin(q8)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) + cos(q8)*cos(q11)*sin(q12))))/12 - (m6*(sin(q7)*(cos(q9)*cos(q11)*sin(q10) + cos(q10)*cos(q11)*sin(q9)) - cos(q7)*sin(q8)*(cos(q9)*cos(q10)*cos(q11) - cos(q11)*sin(q9)*sin(q10)))*(H6^2 + L6^2))/12 + (m6*cos(q11)*cos(q12)*(L6^2 + W6^2)*(sin(q7)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))) - cos(q7)*(sin(q8)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) + cos(q8)*cos(q11)*sin(q12))))/12 - (m6*cos(q11)*sin(q12)*(L6^2 + W6^2)*(sin(q7)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11))) - cos(q7)*(sin(q8)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) - cos(q8)*cos(q11)*cos(q12))))/12
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 0
 (m6*cos(q11)*sin(q12)*(H6^2 + W6^2)*(sin(q7)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11))) - cos(q7)*(sin(q8)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) - cos(q8)*cos(q11)*cos(q12))))/12 - (m6*cos(q11)*cos(q12)*(H6^2 + W6^2)*(sin(q7)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))) - cos(q7)*(sin(q8)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) + cos(q8)*cos(q11)*sin(q12))))/12 - (m6*(sin(q7)*(cos(q9)*cos(q11)*sin(q10) + cos(q10)*cos(q11)*sin(q9)) - cos(q7)*sin(q8)*(cos(q9)*cos(q10)*cos(q11) - cos(q11)*sin(q9)*sin(q10)))*(H6^2 + L6^2))/12 + (m6*cos(q11)*cos(q12)*(L6^2 + W6^2)*(sin(q7)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))) - cos(q7)*(sin(q8)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) + cos(q8)*cos(q11)*sin(q12))))/12 - (m6*cos(q11)*sin(q12)*(L6^2 + W6^2)*(sin(q7)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11))) - cos(q7)*(sin(q8)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) - cos(q8)*cos(q11)*cos(q12))))/12
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     (m6*cos(q11)*sin(q12)*(cos(q8)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) + cos(q11)*cos(q12)*sin(q8))*(H6^2 + W6^2))/12 - (m6*cos(q8)*(cos(q9)*cos(q10)*cos(q11) - cos(q11)*sin(q9)*sin(q10))*(H6^2 + L6^2))/12 - (m6*cos(q11)*cos(q12)*(cos(q8)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) - cos(q11)*sin(q8)*sin(q12))*(H6^2 + W6^2))/12 - (m6*cos(q11)*sin(q12)*(cos(q8)*(cos(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)) - sin(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11))) + cos(q11)*cos(q12)*sin(q8))*(L6^2 + W6^2))/12 + (m6*cos(q11)*cos(q12)*(cos(q8)*(cos(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)) - sin(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12))) - cos(q11)*sin(q8)*sin(q12))*(L6^2 + W6^2))/12
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     (m6*cos(q11)*sin(q12)*(H6^2 + W6^2)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11))))/12 - (m6*(cos(q9)*cos(q11)*sin(q10) + cos(q10)*cos(q11)*sin(q9))*(H6^2 + L6^2))/12 - (m6*cos(q11)*sin(q12)*(cos(q9)*(sin(q10)*sin(q12) - cos(q10)*cos(q12)*sin(q11)) + sin(q9)*(cos(q10)*sin(q12) + cos(q12)*sin(q10)*sin(q11)))*(L6^2 + W6^2))/12 - (m6*cos(q11)*cos(q12)*(H6^2 + W6^2)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12))))/12 + (m6*cos(q11)*cos(q12)*(cos(q9)*(cos(q12)*sin(q10) + cos(q10)*sin(q11)*sin(q12)) + sin(q9)*(cos(q10)*cos(q12) - sin(q10)*sin(q11)*sin(q12)))*(L6^2 + W6^2))/12
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             (m6*cos(q11)^2*cos(q12)*sin(q12)*(H6^2 + W6^2))/6 - (m6*cos(q11)^2*cos(q12)*sin(q12)*(L6^2 + W6^2))/6
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             (m6*cos(q11)^2*cos(q12)*sin(q12)*(H6^2 + W6^2))/6 - (m6*cos(q11)^2*cos(q12)*sin(q12)*(L6^2 + W6^2))/6
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (m6*cos(q11)*cos(q12)^2*(L6^2 + W6^2))/12 - (m6*cos(q11)*cos(q12)^2*(H6^2 + W6^2))/12 - (m6*cos(q11)*(H6^2 + L6^2))/12 + (m6*cos(q11)*sin(q12)^2*(H6^2 + W6^2))/12 - (m6*cos(q11)*sin(q12)^2*(L6^2 + W6^2))/12
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
 


 
BB9_4 = [ 0
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
 

 
BB9_5 = [ 0
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
 

 
BB9_6 = [ 0
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
 


BB9_7 = [ 0
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
 


 
BB9_8 = [ 0
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
 

 
BB9_9 = [ 0
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
 

 
BB9_10 = [ 0
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
 

 
BB9_11 = [ 0
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
 

 
BB9_12 = [ 0
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
 



 
BB9_13 = [ 0
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
 

 
BB9_14 = [ 0
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
 

 
BB9_15 = [ 0
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
 


 
BB9_16 = [ 0
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
 


 
BB9_17 = [ 0
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
 



 
BB9_18 = [ 0
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
 



 
BB9_19 = [ 0
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
 


 
BB9_20 = [ 0
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
 


 
BB9_21 = [ 0
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
 

 
BB9_22 = [ 0
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
 

BB9_23 = [ 0
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
 

BB9_24 = [ 0
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
 
B9 = [BB9_1 BB9_2 BB9_3 BB9_4 BB9_5 BB9_6 BB9_7 BB9_8 BB9_9 BB9_10 BB9_11 BB9_12 BB9_13 BB9_14 BB9_15 BB9_16 BB9_17 BB9_18 BB9_19 BB9_20 BB9_21 BB9_22 BB9_23 BB9_24];