% q1: vitual prismetic x joint
% q2: vitual prismetic y joint
% q3: vitual revolute z joint
% q4: waist revolute joint
% q5: tail revolute joint
% q6: left fore femur revolute z joint
% q7: left fore femur revolute x joint
% q8: left fore femur revolute y joint
% q9: left fore tibia revolute z joint
% q10: left fore foot revolute z joint
% q11: left fore foot revolute x joint
% q12: left fore foot revolute y joint
% q13: right fore femur revolute z joint
% q14: right fore femur revolute x joint
% q15: right fore femur revolute y joint
% q16: right fore tibia revolute z joint
% q17: right fore foot revolute z joint
% q18: right fore foot revolute x joint
% q19: right fore foot revolute y joint
% q20: left hind femur revolute z joint
% q21: left hind femur revolute x joint
% q22: left hind femur revolute y joint
% q23: left hind tibia revolute z joint
% q24: left hind foot revolute z joint
% q25: left hind foot revolute x joint
% q26: left hind foot revolute y joint
% q27: right hind femur revolute z joint
% q28: right hind femur revolute x joint
% q29: right hind femur revolute y joint
% q30: right hind tibia revolute z joint
% q31: right hind foot revolute z joint
% q32: right hind foot revolute x joint
% q33: right hind foot revolute y joint

% L1, W1, H1: body1 length, width, height
% L2, W2, H2: body2 length, width, height
% L3, W3, H3: tail length, width, height
% L4, W4, H4: left fore femur length, width, height
% L5, W5, H5: left fore tibia length, width, height
% L6, W6, H6: left fore foot length, width, height
% L7, W7, H7: right fore femur length, width, height
% L8, W8, H8: right fore tibia length, width, height
% L9, W9, H9: right fore foot length, width, height
% L10, W10, H10: left fore femur length, width, height
% L11, W11, H11: left fore tibia length, width, height
% L12, W12, H12: left fore foot length, width, height
% L13, W13, H13: right fore femur length, width, height
% L14, W14, H14: right fore tibia length, width, height
% L15, W15, H15: right fore foot length, width, height

rad = pi/180;
deg = 180/pi;
mm = 0.001;

aPel = 20*rad;
waistAng1 = 2*aPel;
waistAng2 = 0*rad;
tailAng1 = -2*aPel;
tailAng2 = 0*rad;

x = [0.174532925199433;-0.201037853012899;0.124174674693897;-0.872664625997165;-0.174532925199433;0.0339955519955899];

%% Design Variable
% virtual Z
% a1 = x(1);
% b1 = x(2);
% waist Z
a2 = waistAng1;
b2 = waistAng2;
% tail Z
a3 = tailAng1;
b3 = tailAng2;

%%%%% left hind leg variable
a14 = x(1); % lhindshZ
b14 = 0; %                            fixed
c14 = x(2);
a15 = x(3); % lhindshX
b15 = 0;
c15 = a15;
a16 = x(4); % lhindshY
b16 = -180*rad;
c16 = -90*rad;
a17 = x(5); % lhindknZ
b17 = 180*rad;
c17 = a15+c15-x(5);
c18 = 135*rad;

%%%%% left fore leg variable
a4 = 0; % rforeshZ
b4 = 0;
a5 = 0; % lforeshX
b5 = 0;
c5 = 0;
c6 = 0; % lforeshY
a7 = 0; % lforeknZ
c7 = 0;
c8 = 0; % lforeanY

%%%% Body 

%% Simulation setting
PeriodTime = x(6);
PeriodNum = 1000;
dt = PeriodTime/PeriodNum;
RunNum = PeriodNum*2;

%% Initial setting
ImpLH = 1;
ImpRH = 1;

% bodyM = [4.47 2.9 0.98]*0.001;
bodyM = [4.4 2.76 2]*0.001;
lforeM = [0.11 0.06 0.03]*0.001;
rforeM = [0.11 0.06 0.03]*0.001;
lhindM = [0.36 0.18 0.08]*0.001;
rhindM = [0.36 0.18 0.08]*0.001;

bodyL = [55 44 80]*0.001;
lforeL = [16 12 15]*0.001;
rforeL = [16 12 15]*0.001;
lhindL = [19 21 13]*0.001;
rhindL = [19 21 13]*0.001;

bodyW = [16.5 13 4.5]*0.001;
lforeW = [4 3 3]*0.001;
rforeW = [4 3 3]*0.001;
lhindW = [7.5 4.5 3.5]*0.001;
rhindW = [7.5 4.5 3.5]*0.001;

bodyH = [16.5 13 4.5]*0.001;
lforeH = [4 3 3]*0.001;
rforeH = [4 3 3]*0.001;
lhindH = [7.5 4.5 3.5]*0.001;
rhindH = [7.5 4.5 3.5]*0.001;

shopelP = [0 7 -6 6]*0.001;

virX = 0;
virY = 0;
virZ = 0;

dvirX = 0;
dvirY = 0;
dvirZ = 0;

d2virX = 0;
d2virY = 0;
d2virZ = 0;


%% Initial Matrix
PointJ1 = zeros(3,RunNum);
PointJ2 = zeros(3,RunNum);
PointJ3 = zeros(3,RunNum);
PointJ4 = zeros(3,RunNum);
PointJ5 = zeros(3,RunNum);
PointJ6 = zeros(3,RunNum);
PointJ7 = zeros(3,RunNum);
PointJ8 = zeros(3,RunNum);
PointJ9 = zeros(3,RunNum);
PointJ10 = zeros(3,RunNum);
PointJ11 = zeros(3,RunNum);
PointJ12 = zeros(3,RunNum);
PointJ13 = zeros(3,RunNum);
PointJ14 = zeros(3,RunNum);
PointJ15 = zeros(3,RunNum);
PointJ16 = zeros(3,RunNum);
PointJ17 = zeros(3,RunNum);
PointJ18 = zeros(3,RunNum);
PointJ19 = zeros(3,RunNum);
PointJ20 = zeros(3,RunNum);

Cont = zeros(1,RunNum);
leftCont = zeros(1,RunNum);
rightCont = zeros(1,RunNum);
leftContforStride = zeros(1,RunNum);
rightContforStride = zeros(1,RunNum);

Q = zeros(33,RunNum);
T = zeros(1,RunNum);
Tor = zeros(33,RunNum);

q = zeros(33,RunNum);
dq = zeros(33,RunNum);
d2q = zeros(33,RunNum);

TorFor = zeros(45,RunNum);
For = zeros(12,RunNum);
ComIn = zeros(3,RunNum);
Com = zeros(3,RunNum);

%% Failure Check Kinematics
for i=1:PeriodNum
    t = i*PeriodTime/PeriodNum;
    T(1,i) = t;
    
    virZ = aPel*sin(t/PeriodTime*2*pi) - a2*sin(t/PeriodTime*2*pi + b2);
    
    virJ = [virX virY virZ];
    
    % waist and tail movement
    waistZ = a2*sin(t/PeriodTime*2*pi + b2);
    tailZ = a3*sin(t/PeriodTime*2*pi + b3);
    
    % left fore leg movement
    lforeshZ = a4*sin(t/PeriodTime*2*pi + b4);
    lforeshX = a5*cos(t/PeriodTime*2*pi + b5) + c5;
    lforeshY = c6;
    
    lforeknZ = a7*cos(t/PeriodTime*2*pi + b4 - pi) + c7;
    
    lforeanZ = 0;
    lforeanX = 0;
    lforeanY = c8;
    
    % right fore leg movement
    rforeshZ = a4*sin(t/PeriodTime*2*pi + b4);
    rforeshX = a5*cos(t/PeriodTime*2*pi + b5) - c5;
    rforeshY = c6;
    
    rforeknZ = a7*cos(t/PeriodTime*2*pi + b4 - pi) - c7;
    
    rforeanZ = 0;
    rforeanX = 0;
    rforeanY = c8;
    
    % left hind leg movement
    lhindshZ = a14*sin(t/PeriodTime*2*pi + b14) + c14;
    lhindshX = a15*cos(t/PeriodTime*2*pi + b15) + c15;
    lhindshY = a16*sin(t/PeriodTime*2*pi + b16 + pi) - c16;
    
    lhindknZ = a17*cos(t/PeriodTime*2*pi + b17) - c17;
    
    lhindanZ = 0;
    lhindanX = 0;
    lhindanY = c18;
    
    % right hind leg movement
    rhindshZ = a14*sin(t/PeriodTime*2*pi + b14) - c14;
    rhindshX = a15*cos(t/PeriodTime*2*pi + b15) - c15;
    rhindshY = a16*sin(t/PeriodTime*2*pi + b16) - c16;
    
    rhindknZ = a17*cos(t/PeriodTime*2*pi + b17) + c17;
    
    rhindanZ = 0;
    rhindanX = 0;
    rhindanY = c18;
    
    % vector of movement
    bodyJ = [waistZ tailZ];
    lforeJ = [lforeshZ lforeshX lforeshY lforeknZ lforeanZ lforeanX lforeanY];
    rforeJ = [rforeshZ rforeshX rforeshY rforeknZ rforeanZ rforeanX rforeanY];
    lhindJ = [lhindshZ lhindshX lhindshY lhindknZ lhindanZ lhindanX lhindanY];
    rhindJ = [rhindshZ rhindshX rhindshY rhindknZ rhindanZ rhindanX rhindanY];
    
    
    PosJVec = PosJ(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyL, lforeL, rforeL, lhindL, rhindL, shopelP);
    
    PointJ1(:,i) = PosJVec(:,1);% head
    PointJ2(:,i) = PosJVec(:,2);% waist
    PointJ3(:,i) = PosJVec(:,3);% tail
    PointJ4(:,i) = PosJVec(:,4);% tail end
    PointJ5(:,i) = PosJVec(:,5);% left fore shoulder
    PointJ6(:,i) = PosJVec(:,6);% left fore knee
    PointJ7(:,i) = PosJVec(:,7);% left fore ankle
    PointJ8(:,i) = PosJVec(:,8);% left fore tip toe
    PointJ9(:,i) = PosJVec(:,9);% right fore shoulder
    PointJ10(:,i) = PosJVec(:,10);% right fore knee
    PointJ11(:,i) = PosJVec(:,11);% right fore ankle
    PointJ12(:,i) = PosJVec(:,12);% right fore tip toe
    PointJ13(:,i) = PosJVec(:,13);% left hind shoulder
    PointJ14(:,i) = PosJVec(:,14);% left hind knee
    PointJ15(:,i) = PosJVec(:,15);% left hind ankle
    PointJ16(:,i) = PosJVec(:,16);% left hind tip toe
    PointJ17(:,i) = PosJVec(:,17);% right hind shoulder
    PointJ18(:,i) = PosJVec(:,18);% right hind knee
    PointJ19(:,i) = PosJVec(:,19);% right hind ankle
    PointJ20(:,i) = PosJVec(:,20);% right hind tip toe
end

LizHeight = min(PointJ16(3,:))+0.5*lhindL(1,3)*sin(c18);

%% Forward-Backward Dynamics Simulation: q1, q2, q3
for i=1:RunNum
    foreCon = 1;
    t = i*PeriodTime/PeriodNum;
    T(1,i) = t;
    
    virJ = [virX virY virZ];
    dvirJ = [dvirX dvirY dvirZ];
    d2virJ = [d2virX d2virY d2virZ];
    
    % virZ
    virZ = aPel*sin(t/PeriodTime*2*pi) - a2*sin(t/PeriodTime*2*pi + b2);
    
    % waist and tail movement
    waistZ = a2*sin(t/PeriodTime*2*pi + b2); dwaistZ = a2*2*pi/PeriodTime*cos(t/PeriodTime*2*pi + b2); d2waistZ = -a2*(2*pi/PeriodTime)^2*sin(t/PeriodTime*2*pi + b2);
    tailZ = a3*sin(t/PeriodTime*2*pi + b3); dtailZ = a3*2*pi/PeriodTime*cos(t/PeriodTime*2*pi + b3); d2tailZ = -a3*(2*pi/PeriodTime)^2*sin(t/PeriodTime*2*pi + b3);
    
    % left fore leg movement
    lforeshZ = a4*sin(t/PeriodTime*2*pi + b4); dlforeshZ = a4*2*pi/PeriodTime*cos(t/PeriodTime*2*pi + b4); d2lforeshZ = -a4*(2*pi/PeriodTime)^2*sin(t/PeriodTime*2*pi + b4);
    lforeshX = a5*cos(t/PeriodTime*2*pi + b5) + c5; dlforeshX = -a5*2*pi/PeriodTime*sin(t/PeriodTime*2*pi + b5); d2lforeshX = -a5*(2*pi/PeriodTime)^2*cos(t/PeriodTime*2*pi + b5);
    lforeshY = c6; dlforeshY = 0; d2lforeshY = 0;
    
    lforeknZ = a7*cos(t/PeriodTime*2*pi + b4 - pi) + c7; dlforeknZ = -a7*2*pi/PeriodTime*sin(t/PeriodTime*2*pi + b4 - pi); d2lforeknZ = -a7*(2*pi/PeriodTime)^2*sin(t/PeriodTime*2*pi + b4 - pi);
    
    lforeanZ = 0; dlforeanZ = 0; d2lforeanZ = 0;
    lforeanX = 0; dlforeanX = 0; d2lforeanX = 0;
    lforeanY = c8; dlforeanY = 0; d2lforeanY = 0;
    
    % right fore leg movement
    rforeshZ = a4*sin(t/PeriodTime*2*pi + b4); drforeshZ = a4*2*pi/PeriodTime*cos(t/PeriodTime*2*pi + b4); d2rforeshZ = -a4*(2*pi/PeriodTime)^2*sin(t/PeriodTime*2*pi + b4);
    rforeshX = a5*cos(t/PeriodTime*2*pi + b5) - c5; drforeshX = -a5*2*pi/PeriodTime*sin(t/PeriodTime*2*pi + b5); d2rforeshX = -a5*(2*pi/PeriodTime)^2*cos(t/PeriodTime*2*pi + b5);
    rforeshY = c6; drforeshY = 0; d2rforeshY = 0;
    
    rforeknZ = a7*cos(t/PeriodTime*2*pi + b4 - pi) - c7; drforeknZ = -a7*2*pi/PeriodTime*sin(t/PeriodTime*2*pi + b4 - pi); d2rforeknZ = -a7*(2*pi/PeriodTime)^2*sin(t/PeriodTime*2*pi + b4 - pi);
    
    rforeanZ = 0; drforeanZ = 0; d2rforeanZ = 0;
    rforeanX = 0; drforeanX = 0; d2rforeanX = 0;
    rforeanY = c8; drforeanY = 0; d2rforeanY = 0;
    
    % left hind leg movement
    lhindshZ = a14*sin(t/PeriodTime*2*pi + b14) + c14; dlhindshZ = a14*2*pi/PeriodTime*cos(t/PeriodTime*2*pi + b14); d2lhindshZ = -a14*(2*pi/PeriodTime)^2*sin(t/PeriodTime*2*pi + b14);
    lhindshX = a15*cos(t/PeriodTime*2*pi + b15)  + c15; dlhindshX = -a15*2*pi/PeriodTime*sin(t/PeriodTime*2*pi + b15); d2lhindshX = -a15*(2*pi/PeriodTime)^2*cos(t/PeriodTime*2*pi + b15);
    lhindshY = a16*sin(t/PeriodTime*2*pi + b16 + pi) - c16; dlhindshY = a16*2*pi/PeriodTime*cos(t/PeriodTime*2*pi + b16 + pi); d2lhindshY = -a16*(2*pi/PeriodTime)^2*sin(t/PeriodTime*2*pi + b16 + pi);
    
    lhindknZ = a17*cos(t/PeriodTime*2*pi + b17) - c17; dlhindknZ = -a17*2*pi/PeriodTime*sin(t/PeriodTime*2*pi + b17); d2lhindknZ = -a17*(2*pi/PeriodTime)^2*cos(t/PeriodTime*2*pi + b17);
    
    lhindanZ = 0; dlhindanZ = 0; d2lhindanZ = 0;
    lhindanX = 0; dlhindanX = 0; d2lhindanX = 0;
    lhindanY = c18; dlhindanY = 0; d2lhindanY = 0;
    
    % right hind leg movement
    rhindshZ = a14*sin(t/PeriodTime*2*pi + b14) - c14; drhindshZ = a14*2*pi/PeriodTime*cos(t/PeriodTime*2*pi + b14); d2rhindshZ = -a14*(2*pi/PeriodTime)^2*sin(t/PeriodTime*2*pi + b14);
    rhindshX = a15*cos(t/PeriodTime*2*pi + b15) - c15; drhindshX = -a15*2*pi/PeriodTime*sin(t/PeriodTime*2*pi + b15); d2rhindshX = -a15*(2*pi/PeriodTime)^2*cos(t/PeriodTime*2*pi + b15);
    rhindshY = a16*sin(t/PeriodTime*2*pi + b16) - c16; drhindshY = a16*2*pi/PeriodTime*cos(t/PeriodTime*2*pi + b16); d2rhindshY = -a16*(2*pi/PeriodTime)^2*sin(t/PeriodTime*2*pi + b16);
    
    rhindknZ = a17*cos(t/PeriodTime*2*pi + b17) + c17; drhindknZ = -a17*2*pi/PeriodTime*sin(t/PeriodTime*2*pi + b17); d2rhindknZ = -a17*(2*pi/PeriodTime)^2*cos(t/PeriodTime*2*pi + b17);
    
    rhindanZ = 0; drhindanZ = 0; d2rhindanZ = 0;
    rhindanX = 0; drhindanX = 0; d2rhindanX = 0;
    rhindanY = c18; drhindanY = 0; d2rhindanY = 0;
    
    % vector of movement
    bodyJ = [waistZ tailZ];
    lforeJ = [lforeshZ lforeshX lforeshY lforeknZ lforeanZ lforeanX lforeanY];
    rforeJ = [rforeshZ rforeshX rforeshY rforeknZ rforeanZ rforeanX rforeanY];
    lhindJ = [lhindshZ lhindshX lhindshY lhindknZ lhindanZ lhindanX lhindanY];
    rhindJ = [rhindshZ rhindshX rhindshY rhindknZ rhindanZ rhindanX rhindanY];
    
    dbodyJ = [dwaistZ dtailZ];
    dlforeJ = [dlforeshZ dlforeshX dlforeshY dlforeknZ dlforeanZ dlforeanX dlforeanY];
    drforeJ = [drforeshZ drforeshX drforeshY drforeknZ drforeanZ drforeanX drforeanY];
    dlhindJ = [dlhindshZ dlhindshX dlhindshY dlhindknZ dlhindanZ dlhindanX dlhindanY];
    drhindJ = [drhindshZ drhindshX drhindshY drhindknZ drhindanZ drhindanX drhindanY];
    
    d2bodyJ = [d2waistZ d2tailZ];
    d2lforeJ = [d2lforeshZ d2lforeshX d2lforeshY d2lforeknZ d2lforeanZ d2lforeanX d2lforeanY];
    d2rforeJ = [d2rforeshZ d2rforeshX d2rforeshY d2rforeknZ d2rforeanZ d2rforeanX d2rforeanY];
    d2lhindJ = [d2lhindshZ d2lhindshX d2lhindshY d2lhindknZ d2lhindanZ d2lhindanX d2lhindanY];
    d2rhindJ = [d2rhindshZ d2rhindshX d2rhindshY d2rhindknZ d2rhindanZ d2rhindanX d2rhindanY];
    
    PosJVec = PosJ(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyL, lforeL, rforeL, lhindL, rhindL, shopelP);
    
    PointJ1(:,i) = PosJVec(:,1);% head
    PointJ2(:,i) = PosJVec(:,2);% waist
    PointJ3(:,i) = PosJVec(:,3);% tail
    PointJ4(:,i) = PosJVec(:,4);% tail end
    PointJ5(:,i) = PosJVec(:,5);% left fore shoulder
    PointJ6(:,i) = PosJVec(:,6);% left fore knee
    PointJ7(:,i) = PosJVec(:,7);% left fore ankle
    PointJ8(:,i) = PosJVec(:,8);% left fore tip toe
    PointJ9(:,i) = PosJVec(:,9);% right fore shoulder
    PointJ10(:,i) = PosJVec(:,10);% right fore knee
    PointJ11(:,i) = PosJVec(:,11);% right fore ankle
    PointJ12(:,i) = PosJVec(:,12);% right fore tip toe
    PointJ13(:,i) = PosJVec(:,13);% left hind shoulder
    PointJ14(:,i) = PosJVec(:,14);% left hind knee
    PointJ15(:,i) = PosJVec(:,15);% left hind ankle
    PointJ16(:,i) = PosJVec(:,16);% left hind tip toe
    PointJ17(:,i) = PosJVec(:,17);% right hind shoulder
    PointJ18(:,i) = PosJVec(:,18);% right hind knee
    PointJ19(:,i) = PosJVec(:,19);% right hind ankle
    PointJ20(:,i) = PosJVec(:,20);% right hind tip toe
    
    if i < 3
        q(:,i) = [virX; virY; virZ; waistZ; tailZ;
            lforeshZ; lforeshX; lforeshY; lforeknZ; lforeanZ; lforeanX; lforeanY
            rforeshZ; rforeshX; rforeshY; rforeknZ; rforeanZ; rforeanX; rforeanY
            lhindshZ; lhindshX; lhindshY; lhindknZ; lhindanZ; lhindanX; lhindanY
            rhindshZ; rhindshX; rhindshY; rhindknZ; rhindanZ; rhindanX; rhindanY];
        
        dq(:,i) = [dvirX; dvirY; dvirZ; dwaistZ; dtailZ;
            dlforeshZ; dlforeshX; dlforeshY; dlforeknZ; dlforeanZ; dlforeanX; dlforeanY
            drforeshZ; drforeshX; drforeshY; drforeknZ; drforeanZ; drforeanX; drforeanY
            dlhindshZ; dlhindshX; dlhindshY; dlhindknZ; dlhindanZ; dlhindanX; dlhindanY
            drhindshZ; drhindshX; drhindshY; drhindknZ; drhindanZ; drhindanX; drhindanY];
        
        d2q(:,i) = [d2virX; d2virY; d2virZ; d2waistZ; d2tailZ;
            d2lforeshZ; d2lforeshX; d2lforeshY; d2lforeknZ; d2lforeanZ; d2lforeanX; d2lforeanY
            d2rforeshZ; d2rforeshX; d2rforeshY; d2rforeknZ; d2rforeanZ; d2rforeanX; d2rforeanY
            d2lhindshZ; d2lhindshX; d2lhindshY; d2lhindknZ; d2lhindanZ; d2lhindanX; d2lhindanY
            d2rhindshZ; d2rhindshX; d2rhindshY; d2rhindknZ; d2rhindanZ; d2rhindanX; d2rhindanY];
        
        Tor(:,i) = DynEquAndVirJ(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
        
        PosJVec = PosJ(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyL, lforeL, rforeL, lhindL, rhindL, shopelP);
        
        PointJ1(:,i) = PosJVec(:,1);% head
        PointJ2(:,i) = PosJVec(:,2);% waist
        PointJ3(:,i) = PosJVec(:,3);% tail
        PointJ4(:,i) = PosJVec(:,4);% tail end
        PointJ5(:,i) = PosJVec(:,5);% left fore shoulder
        PointJ6(:,i) = PosJVec(:,6);% left fore knee
        PointJ7(:,i) = PosJVec(:,7);% left fore ankle
        PointJ8(:,i) = PosJVec(:,8);% left fore tip toe
        PointJ9(:,i) = PosJVec(:,9);% right fore shoulder
        PointJ10(:,i) = PosJVec(:,10);% right fore knee
        PointJ11(:,i) = PosJVec(:,11);% right fore ankle
        PointJ12(:,i) = PosJVec(:,12);% right fore tip toe
        PointJ13(:,i) = PosJVec(:,13);% left hind shoulder
        PointJ14(:,i) = PosJVec(:,14);% left hind knee
        PointJ15(:,i) = PosJVec(:,15);% left hind ankle
        PointJ16(:,i) = PosJVec(:,16);% left hind tip toe
        PointJ17(:,i) = PosJVec(:,17);% right hind shoulder
        PointJ18(:,i) = PosJVec(:,18);% right hind knee
        PointJ19(:,i) = PosJVec(:,19);% right hind ankle
        PointJ20(:,i) = PosJVec(:,20);% right hind tip toe
        
        ComIn(:,i)=COMIn(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
        Com(:,i) = COM(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);

    else
        if PointJ16(3,i) <= LizHeight %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% left hind leg contact
            if ImpLH == 1 % contact 시와 미묘하게 안맞음
                ConLHx = PointJ16(1,i);
                ConLHy = PointJ16(2,i);
                ImpLH = 0;
            end
            
            ConYangL = asin((PointJ15(3,i) - LizHeight)/lhindL(1,3));
            
            lhindanZ = 0;
            lhindanX = 0;
            lhindanY = pi-ConYangL;

            virX2 = ConLHx- PointJ16(1,i);
            virY2 = ConLHy- PointJ16(2,i);
            
            virX = virX +virX2;
            virY = virY +virY2;
            
            q(:,i) = [virX; virY; virZ; waistZ; tailZ;
                lforeshZ; lforeshX; lforeshY; lforeknZ; lforeanZ; lforeanX; lforeanY
                rforeshZ; rforeshX; rforeshY; rforeknZ; rforeanZ; rforeanX; rforeanY
                lhindshZ; lhindshX; lhindshY; lhindknZ; lhindanZ; lhindanX; lhindanY
                rhindshZ; rhindshX; rhindshY; rhindknZ; rhindanZ; rhindanX; rhindanY];
            
            for j=1:33
                dq(j,i) = (q(j,i) - q(j,i-1))/dt;
            end
            
            for j=1:33
                d2q(j,i) = (dq(j,i) - dq(j,i-1))/dt;
            end
            
            dvirX = dq(1,i); dvirY = dq(2,i); dvirZ = dq(3,i);
            dwaistZ = dq(4,i); dtailZ = dq(5,i);
            dlforeshZ = dq(6,i); dlforeshX = dq(7,i); dlforeshY = dq(8,i); dlforeknZ = dq(9,i); dlforeanZ = dq(10,i); dlforeanX = dq(11,i); dlforeanY = dq(12,i);
            drforeshZ = dq(13,i); drforeshX = dq(14,i); drforeshY = dq(15,i); drforeknZ = dq(16,i); drforeanZ = dq(17,i); drforeanX = dq(18,i); drforeanY = dq(19,i);
            dlhindshZ = dq(20,i); dlhindshX = dq(21,i); dlhindshY = dq(22,i); dlhindknZ = dq(23,i); dlhindanZ = dq(24,i); dlhindanX = dq(25,i); dlhindanY = dq(26,i);
            drhindshZ = dq(27,i); drhindshX = dq(28,i); drhindshY = dq(29,i); drhindknZ = dq(30,i); drhindanZ = dq(31,i); drhindanX = dq(32,i); drhindanY = dq(33,i);
            
            d2virX = d2q(1,i); d2virY = d2q(2,i); d2virZ = d2q(3,i);
            d2waistZ = d2q(4,i); d2tailZ = d2q(5,i);
            d2lforeshZ = d2q(6,i); d2lforeshX = d2q(7,i); d2lforeshY = d2q(8,i); d2lforeknZ = d2q(9,i); d2lforeanZ = d2q(10,i); d2lforeanX = d2q(11,i); d2lforeanY = d2q(12,i);
            d2rforeshZ = d2q(13,i); d2rforeshX = d2q(14,i); d2rforeshY = d2q(15,i); d2rforeknZ = d2q(16,i); d2rforeanZ = d2q(17,i); d2rforeanX = d2q(18,i); d2rforeanY = d2q(19,i);
            d2lhindshZ = d2q(20,i); d2lhindshX = d2q(21,i); d2lhindshY = d2q(22,i); d2lhindknZ = d2q(23,i); d2lhindanZ = d2q(24,i); d2lhindanX = d2q(25,i); d2lhindanY = d2q(26,i);
            d2rhindshZ = d2q(27,i); d2rhindshX = d2q(28,i); d2rhindshY = d2q(29,i); d2rhindknZ = d2q(30,i); d2rhindanZ = d2q(31,i); d2rhindanX = d2q(32,i); d2rhindanY = d2q(33,i);
            
            virJ = [virX virY virZ];
            bodyJ = [waistZ tailZ];
            lforeJ = [lforeshZ lforeshX lforeshY lforeknZ lforeanZ lforeanX lforeanY];
            rforeJ = [rforeshZ rforeshX rforeshY rforeknZ rforeanZ rforeanX rforeanY];
            lhindJ = [lhindshZ lhindshX lhindshY lhindknZ lhindanZ lhindanX lhindanY];
            rhindJ = [rhindshZ rhindshX rhindshY rhindknZ rhindanZ rhindanX rhindanY];
            
            dvirJ = [dvirX dvirY dvirZ];
            dbodyJ = [dwaistZ dtailZ];
            dlforeJ = [dlforeshZ dlforeshX dlforeshY dlforeknZ dlforeanZ dlforeanX dlforeanY];
            drforeJ = [drforeshZ drforeshX drforeshY drforeknZ drforeanZ drforeanX drforeanY];
            dlhindJ = [dlhindshZ dlhindshX dlhindshY dlhindknZ dlhindanZ dlhindanX dlhindanY];
            drhindJ = [drhindshZ drhindshX drhindshY drhindknZ drhindanZ drhindanX drhindanY];
            
            d2virJ = [d2virX d2virY d2virZ];
            d2bodyJ = [d2waistZ d2tailZ];
            d2lforeJ = [d2lforeshZ d2lforeshX d2lforeshY d2lforeknZ d2lforeanZ d2lforeanX d2lforeanY];
            d2rforeJ = [d2rforeshZ d2rforeshX d2rforeshY d2rforeknZ d2rforeanZ d2rforeanX d2rforeanY];
            d2lhindJ = [d2lhindshZ d2lhindshX d2lhindshY d2lhindknZ d2lhindanZ d2lhindanX d2lhindanY];
            d2rhindJ = [d2rhindshZ d2rhindshX d2rhindshY d2rhindknZ d2rhindanZ d2rhindanX d2rhindanY];
            
            % 이전 virtual joint의 각도와 각속도, 각가속도를 통해 torque추출
            Contact = 1;
            
            TorFor(:,i) = ConDynEquAndVirJForHind(Contact, virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
            
            for j=1:33
                Tor(j,i) = TorFor(j,i);
            end
            
            for j=1:12
                For(j,i) = TorFor(j+33,i);
            end
            
            PosJVec = PosJ(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyL, lforeL, rforeL, lhindL, rhindL, shopelP);
            
            PointJ1(:,i) = PosJVec(:,1);% head
            PointJ2(:,i) = PosJVec(:,2);% waist
            PointJ3(:,i) = PosJVec(:,3);% tail
            PointJ4(:,i) = PosJVec(:,4);% tail end
            PointJ5(:,i) = PosJVec(:,5);% left fore shoulder
            PointJ6(:,i) = PosJVec(:,6);% left fore knee
            PointJ7(:,i) = PosJVec(:,7);% left fore ankle
            PointJ8(:,i) = PosJVec(:,8);% left fore tip toe
            PointJ9(:,i) = PosJVec(:,9);% right fore shoulder
            PointJ10(:,i) = PosJVec(:,10);% right fore knee
            PointJ11(:,i) = PosJVec(:,11);% right fore ankle
            PointJ12(:,i) = PosJVec(:,12);% right fore tip toe
            PointJ13(:,i) = PosJVec(:,13);% left hind shoulder
            PointJ14(:,i) = PosJVec(:,14);% left hind knee
            PointJ15(:,i) = PosJVec(:,15);% left hind ankle
            PointJ16(:,i) = PosJVec(:,16);% left hind tip toe
            PointJ17(:,i) = PosJVec(:,17);% right hind shoulder
            PointJ18(:,i) = PosJVec(:,18);% right hind knee
            PointJ19(:,i) = PosJVec(:,19);% right hind ankle
            PointJ20(:,i) = PosJVec(:,20);% right hind tip toe
            
            Cont(1,i) = 1;
            leftCont(1,i) = 1;
            rightCont(1,i) = -1000;
            leftContforStride(1,i) = 1;
            rightContforStride(1,i) = 0;

            
            ComIn(:,i)=COMIn(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
            Com(:,i) = COM(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
            
            
        elseif PointJ20(3,i) <= LizHeight %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% right hind leg contact
            if ImpRH == 1
                ConRHx = PointJ20(1,i);
                ConRHy = PointJ20(2,i);
                ImpRH = 0;
            end
            ConYangR = asin((PointJ19(3,i) - LizHeight)/rhindL(1,3));
            
            % Right Hind Leg
            rhindanZ = 0;
            rhindanX = 0;
            rhindanY = pi-ConYangR;
            
            virX2 = ConRHx - PointJ20(1,i);
            virY2 = ConRHy - PointJ20(2,i);
            
            virX = virX +virX2;
            virY = virY +virY2;
            
            q(:,i) = [virX; virY; virZ; waistZ; tailZ;
                lforeshZ; lforeshX; lforeshY; lforeknZ; lforeanZ; lforeanX; lforeanY
                rforeshZ; rforeshX; rforeshY; rforeknZ; rforeanZ; rforeanX; rforeanY
                lhindshZ; lhindshX; lhindshY; lhindknZ; lhindanZ; lhindanX; lhindanY
                rhindshZ; rhindshX; rhindshY; rhindknZ; rhindanZ; rhindanX; rhindanY];
            
            for j=1:33
                dq(j,i) = (q(j,i) - q(j,i-1))/dt;
            end
            
            for j=1:33
                d2q(j,i) = (dq(j,i) - dq(j,i-1))/dt;
            end
            
            dvirX = dq(1,i); dvirY = dq(2,i); dvirZ = dq(3,i);
            dwaistZ = dq(4,i); dtailZ = dq(5,i);
            dlforeshZ = dq(6,i); dlforeshX = dq(7,i); dlforeshY = dq(8,i); dlforeknZ = dq(9,i); dlforeanZ = dq(10,i); dlforeanX = dq(11,i); dlforeanY = dq(12,i);
            drforeshZ = dq(13,i); drforeshX = dq(14,i); drforeshY = dq(15,i); drforeknZ = dq(16,i); drforeanZ = dq(17,i); drforeanX = dq(18,i); drforeanY = dq(19,i);
            dlhindshZ = dq(20,i); dlhindshX = dq(21,i); dlhindshY = dq(22,i); dlhindknZ = dq(23,i); dlhindanZ = dq(24,i); dlhindanX = dq(25,i); dlhindanY = dq(26,i);
            drhindshZ = dq(27,i); drhindshX = dq(28,i); drhindshY = dq(29,i); drhindknZ = dq(30,i); drhindanZ = dq(31,i); drhindanX = dq(32,i); drhindanY = dq(33,i);
            
            d2virX = d2q(1,i); d2virY = d2q(2,i); d2virZ = d2q(3,i);
            d2waistZ = d2q(4,i); d2tailZ = d2q(5,i);
            d2lforeshZ = d2q(6,i); d2lforeshX = d2q(7,i); d2lforeshY = d2q(8,i); d2lforeknZ = d2q(9,i); d2lforeanZ = d2q(10,i); d2lforeanX = d2q(11,i); d2lforeanY = d2q(12,i);
            d2rforeshZ = d2q(13,i); d2rforeshX = d2q(14,i); d2rforeshY = d2q(15,i); d2rforeknZ = d2q(16,i); d2rforeanZ = d2q(17,i); d2rforeanX = d2q(18,i); d2rforeanY = d2q(19,i);
            d2lhindshZ = d2q(20,i); d2lhindshX = d2q(21,i); d2lhindshY = d2q(22,i); d2lhindknZ = d2q(23,i); d2lhindanZ = d2q(24,i); d2lhindanX = d2q(25,i); d2lhindanY = d2q(26,i);
            d2rhindshZ = d2q(27,i); d2rhindshX = d2q(28,i); d2rhindshY = d2q(29,i); d2rhindknZ = d2q(30,i); d2rhindanZ = d2q(31,i); d2rhindanX = d2q(32,i); d2rhindanY = d2q(33,i);
            
            virJ = [virX virY virZ];
            bodyJ = [waistZ tailZ];
            lforeJ = [lforeshZ lforeshX lforeshY lforeknZ lforeanZ lforeanX lforeanY];
            rforeJ = [rforeshZ rforeshX rforeshY rforeknZ rforeanZ rforeanX rforeanY];
            lhindJ = [lhindshZ lhindshX lhindshY lhindknZ lhindanZ lhindanX lhindanY];
            rhindJ = [rhindshZ rhindshX rhindshY rhindknZ rhindanZ rhindanX rhindanY];
            
            dvirJ = [dvirX dvirY dvirZ];
            dbodyJ = [dwaistZ dtailZ];
            dlforeJ = [dlforeshZ dlforeshX dlforeshY dlforeknZ dlforeanZ dlforeanX dlforeanY];
            drforeJ = [drforeshZ drforeshX drforeshY drforeknZ drforeanZ drforeanX drforeanY];
            dlhindJ = [dlhindshZ dlhindshX dlhindshY dlhindknZ dlhindanZ dlhindanX dlhindanY];
            drhindJ = [drhindshZ drhindshX drhindshY drhindknZ drhindanZ drhindanX drhindanY];
            
            d2virJ = [d2virX d2virY d2virZ];
            d2bodyJ = [d2waistZ d2tailZ];
            d2lforeJ = [d2lforeshZ d2lforeshX d2lforeshY d2lforeknZ d2lforeanZ d2lforeanX d2lforeanY];
            d2rforeJ = [d2rforeshZ d2rforeshX d2rforeshY d2rforeknZ d2rforeanZ d2rforeanX d2rforeanY];
            d2lhindJ = [d2lhindshZ d2lhindshX d2lhindshY d2lhindknZ d2lhindanZ d2lhindanX d2lhindanY];
            d2rhindJ = [d2rhindshZ d2rhindshX d2rhindshY d2rhindknZ d2rhindanZ d2rhindanX d2rhindanY];
            
            % 이전 virtual joint의 각도와 각속도, 각가속도를 통해 torque추출
            Contact = -1;
            
            TorFor(:,i) = ConDynEquAndVirJForHind(Contact, virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
            
            for j=1:33
                Tor(j,i) = TorFor(j,i);
            end
            
            for j=1:12
                For(j,i) = TorFor(j+33,i);
            end
            
            PosJVec = PosJ(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyL, lforeL, rforeL, lhindL, rhindL, shopelP);
            
            PointJ1(:,i) = PosJVec(:,1);% head
            PointJ2(:,i) = PosJVec(:,2);% waist
            PointJ3(:,i) = PosJVec(:,3);% tail
            PointJ4(:,i) = PosJVec(:,4);% tail end
            PointJ5(:,i) = PosJVec(:,5);% left fore shoulder
            PointJ6(:,i) = PosJVec(:,6);% left fore knee
            PointJ7(:,i) = PosJVec(:,7);% left fore ankle
            PointJ8(:,i) = PosJVec(:,8);% left fore tip toe
            PointJ9(:,i) = PosJVec(:,9);% right fore shoulder
            PointJ10(:,i) = PosJVec(:,10);% right fore knee
            PointJ11(:,i) = PosJVec(:,11);% right fore ankle
            PointJ12(:,i) = PosJVec(:,12);% right fore tip toe
            PointJ13(:,i) = PosJVec(:,13);% left hind shoulder
            PointJ14(:,i) = PosJVec(:,14);% left hind knee
            PointJ15(:,i) = PosJVec(:,15);% left hind ankle
            PointJ16(:,i) = PosJVec(:,16);% left hind tip toe
            PointJ17(:,i) = PosJVec(:,17);% right hind shoulder
            PointJ18(:,i) = PosJVec(:,18);% right hind knee
            PointJ19(:,i) = PosJVec(:,19);% right hind ankle
            PointJ20(:,i) = PosJVec(:,20);% right hind tip toe
            
            Cont(1,i) = -1;
            leftCont(1,i) = -1000;
            rightCont(1,i) = 1;
            
            leftContforStride(1,i) = 0;
            rightContforStride(1,i) = 1;
            
            ComIn(:,i)=COMIn(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
            Com(:,i) = COM(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
            
            
        else %------------------------------------------------- non-contact
            ImpRH = 1;
            ImpLH = 1;

            % virtual Z
            virZ = aPel*sin(t/PeriodTime*2*pi) - a2*sin(t/PeriodTime*2*pi + b2);
            
            % waist and tail movement
            waistZ = a2*sin(t/PeriodTime*2*pi + b2);
            tailZ = a3*sin(t/PeriodTime*2*pi + b3);
            
            
            % left fore leg movement
            lforeshZ = a4*sin(t/PeriodTime*2*pi + b4);
            lforeshX = a5*cos(t/PeriodTime*2*pi + b5) + c5;
            lforeshY = c6;
            
            lforeknZ = a7*cos(t/PeriodTime*2*pi + b4 - pi) + c7;
            
            lforeanZ = 0;
            lforeanX = 0;
            lforeanY = c8;
            
            % right fore leg movement
            rforeshZ = a4*sin(t/PeriodTime*2*pi + b4);
            rforeshX = a5*cos(t/PeriodTime*2*pi + b5) - c5;
            rforeshY = c6;
            
            rforeknZ = a7*cos(t/PeriodTime*2*pi + b4 - pi) - c7;
            
            rforeanZ = 0;
            rforeanX = 0;
            rforeanY = c8;
            
            % left hind leg movement
            lhindshZ = a14*sin(t/PeriodTime*2*pi + b14) + c14;
            lhindshX = a15*cos(t/PeriodTime*2*pi + b15) + c15;
            lhindshY = a16*sin(t/PeriodTime*2*pi + b16 + pi) - c16;
            
            lhindknZ = a17*cos(t/PeriodTime*2*pi + b17) - c17;
            
            lhindanZ = 0;
            lhindanX = 0;
            lhindanY = c18;
            
            % right hind leg movement
            rhindshZ = a14*sin(t/PeriodTime*2*pi + b14) - c14;
            rhindshX = a15*cos(t/PeriodTime*2*pi + b15) - c15;
            rhindshY = a16*sin(t/PeriodTime*2*pi + b16) - c16;
            
            rhindknZ = a17*cos(t/PeriodTime*2*pi + b17) + c17;
            
            rhindanZ = 0;
            rhindanX = 0;
            rhindanY = c18;

            virJ = [virX virY virZ];
            bodyJ = [waistZ tailZ];
            lforeJ = [lforeshZ lforeshX lforeshY lforeknZ lforeanZ lforeanX lforeanY];
            rforeJ = [rforeshZ rforeshX rforeshY rforeknZ rforeanZ rforeanX rforeanY];
            lhindJ = [lhindshZ lhindshX lhindshY lhindknZ lhindanZ lhindanX lhindanY];
            rhindJ = [rhindshZ rhindshX rhindshY rhindknZ rhindanZ rhindanX rhindanY];
            
            ComIn(:,i)=COMIn(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
            %             diffComInX = ComIn(1,i) - ComIn(1,i-1);
            %             diffComInY = ComIn(2,i) - ComIn(2,i-1);
            
            ObComX = Com(1,i-1) + (Com(1,i-1) - Com(1,i-2));
            ObComY = Com(2,i-1) + (Com(2,i-1) - Com(2,i-2));
            
            virXY = COMNq(ObComX, ObComY, virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
            
            virX = virXY(1,1);
            virY = virXY(2,1);
            
            q(:,i) = [virX; virY; virZ; waistZ; tailZ;
                lforeshZ; lforeshX; lforeshY; lforeknZ; lforeanZ; lforeanX; lforeanY
                rforeshZ; rforeshX; rforeshY; rforeknZ; rforeanZ; rforeanX; rforeanY
                lhindshZ; lhindshX; lhindshY; lhindknZ; lhindanZ; lhindanX; lhindanY
                rhindshZ; rhindshX; rhindshY; rhindknZ; rhindanZ; rhindanX; rhindanY];
            
            for j=1:33
                dq(j,i) = (q(j,i) - q(j,i-1))/dt;
            end
            
            for j=1:33
                d2q(j,i) = (dq(j,i) - dq(j,i-1))/dt;
            end
            
            dvirX = dq(1,i); dvirY = dq(2,i); dvirZ = dq(3,i);
            dwaistZ = dq(4,i); dtailZ = dq(5,i);
            dlforeshZ = dq(6,i); dlforeshX = dq(7,i); dlforeshY = dq(8,i); dlforeknZ = dq(9,i); dlforeanZ = dq(10,i); dlforeanX = dq(11,i); dlforeanY = dq(12,i);
            drforeshZ = dq(13,i); drforeshX = dq(14,i); drforeshY = dq(15,i); drforeknZ = dq(16,i); drforeanZ = dq(17,i); drforeanX = dq(18,i); drforeanY = dq(19,i);
            dlhindshZ = dq(20,i); dlhindshX = dq(21,i); dlhindshY = dq(22,i); dlhindknZ = dq(23,i); dlhindanZ = dq(24,i); dlhindanX = dq(25,i); dlhindanY = dq(26,i);
            drhindshZ = dq(27,i); drhindshX = dq(28,i); drhindshY = dq(29,i); drhindknZ = dq(30,i); drhindanZ = dq(31,i); drhindanX = dq(32,i); drhindanY = dq(33,i);
            
            d2virX = d2q(1,i); d2virY = d2q(2,i); d2virZ = d2q(3,i);
            d2waistZ = d2q(4,i); d2tailZ = d2q(5,i);
            d2lforeshZ = d2q(6,i); d2lforeshX = d2q(7,i); d2lforeshY = d2q(8,i); d2lforeknZ = d2q(9,i); d2lforeanZ = d2q(10,i); d2lforeanX = d2q(11,i); d2lforeanY = d2q(12,i);
            d2rforeshZ = d2q(13,i); d2rforeshX = d2q(14,i); d2rforeshY = d2q(15,i); d2rforeknZ = d2q(16,i); d2rforeanZ = d2q(17,i); d2rforeanX = d2q(18,i); d2rforeanY = d2q(19,i);
            d2lhindshZ = d2q(20,i); d2lhindshX = d2q(21,i); d2lhindshY = d2q(22,i); d2lhindknZ = d2q(23,i); d2lhindanZ = d2q(24,i); d2lhindanX = d2q(25,i); d2lhindanY = d2q(26,i);
            d2rhindshZ = d2q(27,i); d2rhindshX = d2q(28,i); d2rhindshY = d2q(29,i); d2rhindknZ = d2q(30,i); d2rhindanZ = d2q(31,i); d2rhindanX = d2q(32,i); d2rhindanY = d2q(33,i);
            
            virJ = [virX virY virZ];
            bodyJ = [waistZ tailZ];
            lforeJ = [lforeshZ lforeshX lforeshY lforeknZ lforeanZ lforeanX lforeanY];
            rforeJ = [rforeshZ rforeshX rforeshY rforeknZ rforeanZ rforeanX rforeanY];
            lhindJ = [lhindshZ lhindshX lhindshY lhindknZ lhindanZ lhindanX lhindanY];
            rhindJ = [rhindshZ rhindshX rhindshY rhindknZ rhindanZ rhindanX rhindanY];
            
            dvirJ = [dvirX dvirY dvirZ];
            dbodyJ = [dwaistZ dtailZ];
            dlforeJ = [dlforeshZ dlforeshX dlforeshY dlforeknZ dlforeanZ dlforeanX dlforeanY];
            drforeJ = [drforeshZ drforeshX drforeshY drforeknZ drforeanZ drforeanX drforeanY];
            dlhindJ = [dlhindshZ dlhindshX dlhindshY dlhindknZ dlhindanZ dlhindanX dlhindanY];
            drhindJ = [drhindshZ drhindshX drhindshY drhindknZ drhindanZ drhindanX drhindanY];
            
            d2virJ = [d2virX d2virY d2virZ];
            d2bodyJ = [d2waistZ d2tailZ];
            d2lforeJ = [d2lforeshZ d2lforeshX d2lforeshY d2lforeknZ d2lforeanZ d2lforeanX d2lforeanY];
            d2rforeJ = [d2rforeshZ d2rforeshX d2rforeshY d2rforeknZ d2rforeanZ d2rforeanX d2rforeanY];
            d2lhindJ = [d2lhindshZ d2lhindshX d2lhindshY d2lhindknZ d2lhindanZ d2lhindanX d2lhindanY];
            d2rhindJ = [d2rhindshZ d2rhindshX d2rhindshY d2rhindknZ d2rhindanZ d2rhindanX d2rhindanY];
            
            % 이전 virtual joint의 각도와 각속도, 각가속도를 통해 torque추출
            Tor(:,i) = DynEquAndVirJ(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);
            
            PosJVec = PosJ(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, bodyL, lforeL, rforeL, lhindL, rhindL, shopelP);
            
            PointJ1(:,i) = PosJVec(:,1);% head
            PointJ2(:,i) = PosJVec(:,2);% waist
            PointJ3(:,i) = PosJVec(:,3);% tail
            PointJ4(:,i) = PosJVec(:,4);% tail end
            PointJ5(:,i) = PosJVec(:,5);% left fore shoulder
            PointJ6(:,i) = PosJVec(:,6);% left fore knee
            PointJ7(:,i) = PosJVec(:,7);% left fore ankle
            PointJ8(:,i) = PosJVec(:,8);% left fore tip toe
            PointJ9(:,i) = PosJVec(:,9);% right fore shoulder
            PointJ10(:,i) = PosJVec(:,10);% right fore knee
            PointJ11(:,i) = PosJVec(:,11);% right fore ankle
            PointJ12(:,i) = PosJVec(:,12);% right fore tip toe
            PointJ13(:,i) = PosJVec(:,13);% left hind shoulder
            PointJ14(:,i) = PosJVec(:,14);% left hind knee
            PointJ15(:,i) = PosJVec(:,15);% left hind ankle
            PointJ16(:,i) = PosJVec(:,16);% left hind tip toe
            PointJ17(:,i) = PosJVec(:,17);% right hind shoulder
            PointJ18(:,i) = PosJVec(:,18);% right hind knee
            PointJ19(:,i) = PosJVec(:,19);% right hind ankle
            PointJ20(:,i) = PosJVec(:,20);% right hind tip toe
            
            Cont(1,i) = 0;
            leftCont(1,i) = -1000;
            rightCont(1,i) = -1000;
            
            leftContforStride(1,i) = 0;
            rightContforStride(1,i) = 0;
            
            Com(:,i) = COM(virJ, bodyJ, lforeJ, rforeJ, lhindJ, rhindJ, dvirJ, dbodyJ, dlforeJ, drforeJ, dlhindJ, drhindJ, d2virJ, d2bodyJ, d2lforeJ, d2rforeJ, d2lhindJ, d2rhindJ, bodyM, lforeM, rforeM, lhindM, rhindM, bodyL, lforeL, rforeL, lhindL, rhindL, bodyW, lforeW, rforeW, lhindW, rhindW, bodyH, lforeH, rforeH, lhindH, rhindH, shopelP);

        end
    end
    Q(1,i) = virX;
    Q(2,i) = virY;
    Q(3,i) = virZ;
    Q(4,i) = waistZ;
    Q(5,i) = tailZ;
    Q(6,i) = lforeshZ;
    Q(7,i) = lforeshX;
    Q(8,i) = lforeshY;
    Q(9,i) = lforeknZ;
    Q(10,i) = lforeanZ;
    Q(11,i) = lforeanX;
    Q(12,i) = lforeanY;
    Q(13,i) = rforeshZ;
    Q(14,i) = rforeshX;
    Q(15,i) = rforeshY;
    Q(16,i) = rforeknZ;
    Q(17,i) = rforeanZ;
    Q(18,i) = rforeanX;
    Q(19,i) = rforeanY;
    Q(20,i) = lhindshZ;
    Q(21,i) = lhindshX;
    Q(22,i) = lhindshY;
    Q(23,i) = lhindknZ;
    Q(24,i) = lhindanZ;
    Q(25,i) = lhindanX;
    Q(26,i) = lhindanY;
    Q(27,i) = rhindshZ;
    Q(28,i) = rhindshX;
    Q(29,i) = rhindshY;
    Q(30,i) = rhindknZ;
    Q(31,i) = rhindanZ;
    Q(32,i) = rhindanX;
    Q(33,i) = rhindanY;
end
EndTime = datestr(now)

%% Graph

for i=1
% subplot(611)
% plot(check1(1,:));axis([0 200 0 2])
% subplot(612)
% plot(check1(2,:));axis([0 200 0 2])
% subplot(613)
% plot(check1(3,:));axis([0 200 0 2])
% subplot(614)
% plot(check2(1,:));axis([0 200 0 2])
% subplot(615)
% plot(check2(2,:));axis([0 200 0 2])
% subplot(616)
% plot(check2(3,:));axis([0 200 0 2])

% subplot(411)
% plot(q1y1Vec(1,:))
% subplot(412)
% plot(q1y1Vec(2,:))
% subplot(413)
% plot(q1y1Vec(3,:))
% subplot(414)
% plot(q1y1Vec(4,:))

% subplot(411)
% plot(q1y2Vec(1,:))
% subplot(412)
% plot(q1y2Vec(2,:))
% subplot(413)
% plot(q1y2Vec(3,:))
% subplot(414)
% plot(q1y2Vec(4,:))

% subplot(311)
% plot(PointJ12(1,:))
% subplot(312)
% plot(PointJ12(2,:))
% subplot(313)
% plot(PointJ12(3,:))


%% Dynamics Simulation
%% calculation of joint angular velocity and acceleration
%
% for i=1:RunNum-1
%     DQ(:,i) = (Q(:,i+1) - Q(:,i))/dt;
%     DT(1,i) = T(1,i);
% end
%
% for i=1:RunNum-2
%     D2Q(:,i) = (DQ(:,i+1) - DQ(:,i))/dt;
%     D2T(1,i) = T(1,i);
% end
%
% modification of q26
for i=2:RunNum-1 % Acceleration
    changeContact = Cont(1,i) - Cont(1,i-1);
    if changeContact ~= 0 && i > 2
        Tor(:,i+1) = Tor(:, i-2);
        Tor(:,i) = Tor(:, i-2);
        Tor(:,i-1) = Tor(:, i-2);
        
%         For(:,i+1) = For(:, i-2);
%         For(:,i) = For(:, i-2);
%         For(:,i-1) = For(:, i-2);
    end
end

SumTorSqu = zeros(1,RunNum);

for i=1:RunNum
    SumTor2 = 0;
    for j=4:33
        SumTor2 = SumTor2 + Tor(j,i)^2;
    end
    SumTorSqu(1,i) = SumTor2;
end

val = sum(SumTorSqu)/RunNum


% % modification of q33
% for i=1:RunNum-2 % Acceleration
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         D2Q(33,i) = D2Q(33, i-2);
%         D2Q(33,i-1) = D2Q(33, i-2);
%     end
% end
%
% % modification of q12
% for i=1:RunNum-1 % Velocity
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         DQ(12,i) = DQ(12, i-1);
%     end
% end
%
% for i=1:RunNum-2 % Acceleration
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         D2Q(12,i) = D2Q(12, i-2);
%         D2Q(12,i-1) = D2Q(12, i-2);
%     end
% end
%
% % modification of q19
% for i=1:RunNum-1 % Velocity
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         DQ(19,i) = DQ(19, i-1);
%     end
% end
%
% for i=1:RunNum-2 % Acceleration
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         D2Q(19,i) = D2Q(19, i-2);
%         D2Q(19,i-1) = D2Q(19, i-2);
%     end
% end
%
% % modification of q8
% for i=1:RunNum-1 % Velocity
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         DQ(8,i) = DQ(8, i-1);
%     end
% end
%
% for i=1:RunNum-2 % Acceleration
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         D2Q(8,i) = D2Q(8, i-2);
%         D2Q(8,i-1) = D2Q(8, i-2);
%     end
% end
%
% % modification of q15
% for i=1:RunNum-1 % Velocity
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         DQ(15,i) = DQ(15, i-1);
%     end
% end
%
% for i=1:RunNum-2 % Acceleration
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         D2Q(15,i) = D2Q(15, i-2);
%         D2Q(15,i-1) = D2Q(15, i-2);
%     end
% end
%
% % modification of q9
% for i=1:RunNum-1 % Velocity
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         DQ(9,i) = DQ(9, i-1);
%     end
% end
%
% for i=1:RunNum-2 % Acceleration
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         D2Q(9,i) = D2Q(9, i-2);
%         D2Q(9,i-1) = D2Q(9, i-2);
%     end
% end
%
% % modification of q16
% for i=1:RunNum-1 % Velocity
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         DQ(16,i) = DQ(16, i-1);
%     end
% end
%
% for i=1:RunNum-2 % Acceleration
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         D2Q(16,i) = D2Q(16, i-2);
%         D2Q(16,i-1) = D2Q(16, i-2);
%     end
% end
%
% % modification of q1
% for i=1:RunNum-1 % Velocity
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         DQ(1,i) = DQ(1, i-1);
%     end
% end
%
% for i=1:RunNum-2 % Acceleration
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         D2Q(1,i) = D2Q(1, i-2);
%         D2Q(1,i-1) = D2Q(1, i-2);
%     end
% end
%
% % modification of q2
% for i=1:RunNum-1 % Velocity
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         DQ(2,i) = DQ(2, i-1);
%     end
% end
%
% for i=1:RunNum-2 % Acceleration
%     changeContact = Contact(1,i+1) - Contact(1,i);
%     if changeContact ~= 0
%         D2Q(2,i) = D2Q(2, i-2);
%         D2Q(2,i-1) = D2Q(2, i-2);
%     end
% end

% subplot(411)
% plot(T, Contact)
% subplot(412)
% plot(T, Q(2,:))
% subplot(413)
% plot(DT, DQ(2,:))
% subplot(414)
% plot(D2T, D2Q(2,:))

% subplot(321)
% plot(T, Tor(1,:),'r', T, Tor(2,:),'g', T, Tor(3,:),'b');
% axis([0, 2, -0.002, 0.002]);
% subplot(322)
% plot(T, Tor(4,:),'r', T, Tor(5,:),'b');
% axis([0, 2, -0.002, 0.002]);
% subplot(323)
% plot(T, Tor(6,:),'r', T, Tor(7,:),'g', T, Tor(8,:),'b',T, Tor(9,:),'c', T, Tor(10,:),'m', T, Tor(11,:),'y', T, Tor(12,:),'k');
% axis([0, 2, -0.002, 0.002]);
% subplot(324)
% plot(T, Tor(13,:),'r', T, Tor(14,:),'g', T, Tor(15,:),'b',T, Tor(16,:),'c', T, Tor(17,:),'m', T, Tor(18,:),'y', T, Tor(19,:),'k');
% axis([0, 2, -0.002, 0.002]);
% subplot(325)
% plot(T, Tor(20,:),'r', T, Tor(21,:),'g', T, Tor(22,:),'b',T, Tor(23,:),'c', T, Tor(24,:),'m', T, Tor(25,:),'y', T, Tor(26,:),'k');
% axis([0, 2, -0.002, 0.002]);
% subplot(326)
% plot(T, Tor(27,:),'r', T, Tor(28,:),'g', T, Tor(29,:),'b',T, Tor(30,:),'c', T, Tor(31,:),'m', T, Tor(32,:),'y', T, Tor(33,:),'k');
% axis([0, 2, -0.002, 0.002]);


% ------------------------------------------------ 그래프 3개씩
% subplot(311)
% plot(T, Tor(1,:),'r', T, Tor(2,:),'g', T, Tor(3,:),'b');
% axis([0, 0.2, -0.2, 0.2]);
% title('Virtual Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% legend('q1','q2','q3')
% 
% subplot(312)
% plot(T, Tor(4,:),'b');
% axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% title('Waist Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% 
% subplot(313)
% plot(T, Tor(5,:),'b');
% axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% title('tail Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% set(gcf,'position',[40 10 500 900])

% subplot(311)
% plot(T, Tor(6,:),'r', T, Tor(7,:),'g', T, Tor(8,:),'b');
% axis([0, 0.2, -0.2, 0.2]);
% title('Fore left shoulder Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% legend('z axis','x axis','y axis')
% 
% subplot(312)
% plot(T, Tor(9,:),'b');
% axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% title('Fore left knee Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% 
% subplot(313)
% plot(T, Tor(10,:),'r', T, Tor(11,:),'g', T, Tor(12,:),'b');
% axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% title('Fore left ankle Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% legend('z axis','x axis','y axis')
% set(gcf,'position',[40 10 500 900])

% subplot(311)
% plot(T, Tor(13,:),'r', T, Tor(14,:),'g', T, Tor(15,:),'b');
% axis([0, 0.2, -0.2, 0.2]);
% title('Fore right shoulder Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% legend('z axis','x axis','y axis')
% 
% subplot(312)
% plot(T, Tor(16,:),'b');
% axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% title('Fore right knee Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% 
% subplot(313)
% plot(T, Tor(17,:),'r', T, Tor(18,:),'g', T, Tor(19,:),'b');
% axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% title('Fore right ankle Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% legend('z axis','x axis','y axis')
% set(gcf,'position',[40 10 500 900])


% subplot(311)
% plot(T, Tor(20,:),'r', T, Tor(21,:),'g', T, Tor(22,:),'b');
% axis([0, 0.2, -0.2, 0.2]);
% title('Hind left shoulder Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% legend('z axis','x axis','y axis')
% 
% subplot(312)
% plot(T, Tor(23,:),'b');
% axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% title('Hind left knee Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% 
% subplot(313)
% plot(T, Tor(24,:),'r', T, Tor(25,:),'g', T, Tor(26,:),'b');
% axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% title('Hind left ankle Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% legend('z axis','x axis','y axis')
% set(gcf,'position',[40 10 500 900])


% subplot(311)
% plot(T, Tor(27,:),'r', T, Tor(28,:),'g', T, Tor(29,:),'b');
% axis([0, 0.2, -0.2, 0.2]);
% title('Hind left shoulder Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% legend('z axis','x axis','y axis')
% 
% subplot(312)
% plot(T, Tor(30,:),'b');
% axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% title('Hind left knee Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% 
% subplot(313)
% plot(T, Tor(31,:),'r', T, Tor(32,:),'g', T, Tor(33,:),'b');
% axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% title('Hind left ankle Joint')
% xlabel('Time(s)')
% ylabel('Torque(Nm)')
% legend('z axis','x axis','y axis')
% set(gcf,'position',[40 10 500 900])



% ----------------------------------------------한번에 전체 다
% subplot(3,5,11)
% plot(T, Tor(1,:),'r', T, Tor(2,:),'g', T, Tor(3,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,1)
% plot(T, Tor(4,:),'r', T, Tor(5,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,2)
% plot(T, Tor(6,:),'r', T, Tor(7,:),'g', T, Tor(8,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,7)
% plot(T, Tor(9,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,12)
% plot(T, Tor(10,:),'r', T, Tor(11,:),'g', T, Tor(12,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,3)
% plot(T, Tor(13,:),'r', T, Tor(14,:),'g', T, Tor(15,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,8)
% plot(T, Tor(16,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,13)
% plot(T, Tor(17,:),'r', T, Tor(18,:),'g', T, Tor(19,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,4)
% plot(T, Tor(20,:),'r', T, Tor(21,:),'g', T, Tor(22,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,9)
% plot(T, Tor(23,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,14)
% plot(T, Tor(24,:),'r', T, Tor(25,:),'g', T, Tor(26,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,5)
% plot(T, Tor(27,:),'r', T, Tor(28,:),'g', T, Tor(29,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,10)
% plot(T, Tor(30,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);
% subplot(3,5,15)
% plot(T, Tor(31,:),'r', T, Tor(32,:),'g', T, Tor(33,:),'b');
% % axis([0, 2, -0.002, 0.002]);
% axis([0, 0.2, -0.2, 0.2]);

% --------------------------------------------------Ground Reaction Force
% subplot(3,2,1)
% plot(T, For(7,:),'b');
% axis([0, 0.2, -2, 2]);
% title('Ground Reaction Force x axis: fore foot')
% xlabel('Time(s)')
% ylabel('Force(N)')
% 
% subplot(3,2,3)
% plot(T, For(8,:),'b');
% axis([0, 0.2, -2, 2]);
% title('Ground Reaction Force y axis: fore foot')
% xlabel('Time(s)')
% ylabel('Force(N)')
% 
% subplot(3,2,5)
% plot(T, For(9,:),'b');
% axis([0, 0.2, -2, 2]);
% title('Ground Reaction Force z axis: fore foot')
% xlabel('Time(s)')
% ylabel('Force(N)')
% 
% % set(gcf,'position',[40 10 500 900])
% 
% subplot(3,2,2)
% plot(T, For(1,:),'b');
% axis([0, 0.2, -2, 2]);
% title('Ground Reaction Force x axis: hind foot')
% xlabel('Time(s)')
% ylabel('Force(N)')
% 
% subplot(3,2,4)
% plot(T, For(2,:),'b');
% axis([0, 0.2, -2, 2]);
% title('Ground Reaction Force y axis: hind foot')
% xlabel('Time(s)')
% ylabel('Force(N)')
% 
% subplot(3,2,6)
% plot(T, For(3,:),'b');
% axis([0, 0.2, -2, 2]);
% title('Ground Reaction Force z axis: hind foot')
% xlabel('Time(s)')
% ylabel('Force(N)')
% 
% set(gcf,'position',[40 10 600 900])


% ------------------------------------------------------- joint angle
% subplot(211)
% plot(T, Q(4,:)*deg,'b');
% % axis([0 0.1 -20 20]);
% title('Waist joint')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(212)
% plot(T, Q(5,:)*deg,'b');
% % axis([0 0.1 -50 50]);
% title('Tail joint')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% set(gcf,'position',[40 10 600 800])
% 
% subplot(5,2,1)
% plot(T, Q(6,:)*deg,'b');
% title('Fore left shoulder joint z axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,3)
% plot(T, Q(7,:)*deg,'b');
% title('Fore left shoulder joint x axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,5)
% plot(T, Q(8,:)*deg,'b');
% title('Fore left shoulder joint y axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,7)
% plot(T, Q(9,:)*deg,'b');
% title('Fore left knee joint z axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,9)
% plot(T, Q(12,:)*deg,'b');
% title('Fore left ankle joint y axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% % set(gcf,'position',[40 10 500 900])
% 
% subplot(5,2,2)
% plot(T, Q(13,:)*deg,'b');
% title('Fore right shoulder joint z axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,4)
% plot(T, Q(14,:)*deg,'b');
% title('Fore right shoulder joint x axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,6)
% plot(T, Q(15,:)*deg,'b');
% title('Fore right shoulder joint y axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,8)
% plot(T, Q(16,:)*deg,'b');
% title('Fore right knee joint z axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,10)
% plot(T, Q(19,:)*deg,'b');
% title('Fore right ankle joint y axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% set(gcf,'position',[40 10 500 900])
% 
% subplot(5,2,1)
% plot(T, Q(20,:)*deg,'b');
% title('Hind left shoulder joint z axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,3)
% plot(T, Q(21,:)*deg,'b');
% title('Hind left shoulder joint x axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,5)
% plot(T, Q(22,:)*deg,'b');
% title('Hind left shoulder joint y axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,7)
% plot(T, Q(23,:)*deg,'b');
% title('Hind left knee joint z axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,9)
% plot(T, Q(26,:)*deg,'b');
% title('Hind left ankle joint y axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% % set(gcf,'position',[40 10 500 900])
% 
% 
% subplot(5,2,2)
% plot(T, Q(27,:)*deg,'b');
% title('Hind right shoulder joint z axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,4)
% plot(T, Q(28,:)*deg,'b');
% title('Hind right shoulder joint x axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,6)
% plot(T, Q(29,:)*deg,'b');
% title('Hind right shoulder joint y axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,8)
% plot(T, Q(30,:)*deg,'b');
% title('Hind right knee joint z axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% subplot(5,2,10)
% plot(T, Q(33,:)*deg,'b');
% title('Hind right ankle joint y axis')
% xlabel('Time(s)')
% ylabel('Angle(deg)')
% 
% set(gcf,'position',[40 10 500 900])

end
%% Leg Angle Calculation
VecArm = zeros(3,RunNum);
VecFoot = zeros(3,RunNum);
ThetaAnkle = zeros(1,RunNum);

for i=1:RunNum
    VecArm(:,i) = PointJ19(:,i)-PointJ18(:,i);
    VecFoot(:,i) = PointJ19(:,i)-PointJ20(:,i);
    InnerCross = dot(VecArm(:,i), VecFoot(:,i));
    ThetaAnkle(1,i) = acos(InnerCross/(norm(VecArm(:,i))*norm(VecFoot(:,i))));
end

Knee = xlsread('Knee.xlsx');
Ankle = xlsread('Ankle.xlsx');


%% Leg Angle plot
hold on

P = 0:0.1:100;

plot(P, Q(30,371:1371)*deg+90,'LineWidth', 2);
plot(P, ThetaAnkle(1,371:1371)*deg,'LineWidth', 2);
plot(Knee(:,1),Knee(:,3),'o-')
plot(Ankle(:,1),Ankle(:,3),'^-')
xlabel('Percentage of stride cycle')
ylabel('Angle(degrees)')
axis([0 100 -100 200]);
legend('Knee Simulation', 'Ankle Simulation', 'Knee Actual', 'Ankle Actual')
set(gcf,'position',[100 100 400 400])
grid on

%% Additional Calculation

Vel = (Com(1,1)-Com(1,RunNum))/(PeriodTime*2)

% Calculation of Stride length
j=1; k=1;
for i=1:length(leftContforStride)
   if leftContforStride(1,i) == 1
       contLeftPosX(1,j) = PointJ16(1,i);
       contLeftPosY(1,j) = PointJ16(2,i);
       j=j+1;
   end
   
   if rightContforStride(1,i) == 1
       contRightPosX(1,k) = PointJ20(1,i);
       contRightPosY(1,k) = PointJ20(2,i);
       k=k+1;
   end
   
end

j=1; k=1;
ContRightX(1,k) = contRightPosX(1,1);
ContRightY(1,k) = contRightPosY(1,1);

for i=2:length(contLeftPosX)
    if contLeftPosX(1,i) - contLeftPosX(1,i-1) < -0.05
    ContLeftX(1,j) = contLeftPosX(1,i);
    ContLeftY(1,j) = contLeftPosY(1,i);
    j=j+1;
    end
    
    if contRightPosX(1,i) - contRightPosX(1,i-1) < -0.05
    k=k+1;
    ContRightX(1,k) = contRightPosX(1,i);
    ContRightY(1,k) = contRightPosY(1,i);
    
    end
    
end

StrideLeft = ContLeftX(1,1) - ContLeftX(1,2);
StrideRight = ContRightX(1,1) - ContRightX(1,2);

StrideLength = (StrideLeft+StrideRight)/2
StrideWidth = ContRightY(1,2) - ContLeftY(1,2)
StrideDuration = x(6)*1000

j=0;
for i=1:length(rightContforStride)
    if rightContforStride(1,i) == 1
        j=j+1;
    end
end
DutyFactor = j/length(rightContforStride)*100

xTrajectory = (PointJ20(1,:)+T(1,:)*Vel).*rightContforStride(1,:);
StanceLength = max(xTrajectory) - min(xTrajectory)
HipHeight = -min(PointJ20(3,:))

xPosAnkle = PointJ15(1,:)+T(1,:)*Vel;
xStridAnkle = max(xPosAnkle) - min(xPosAnkle);

Val = [StrideLength; StrideWidth; StrideDuration; DutyFactor; StanceLength; HipHeight];

%% Additional Graph
% hold on
% plot(PointJ14(1,:)+T(1,:)*Vel, PointJ14(3,:), 'b') % Knee
subplot(211)
plot(PointJ20(1,:)+T(1,:)*Vel, PointJ20(2,:), 'r') % tip-toe
axis equal;
axis([0.02 0.09 0 0.03])
subplot(212)
plot(PointJ20(1,:)+T(1,:)*Vel, PointJ20(3,:), 'r') % tip-toe
axis([0.02 0.09 -0.04 -0.02])
axis equal;
% plot(PointJ16(1,:)+T(1,:)*Vel, PointJ16(3,:), 'k') % Tiptoe
% plot(PointJ16(1,:).*leftContforStride(1,:), PointJ16(2,:).*leftContforStride(1,:), 'ko') % Tiptoe
% plot(PointJ20(1,:).*rightContforStride(1,:), PointJ20(2,:).*rightContforStride(1,:), 'bo') % Tiptoe
% 
% 
% set(gcf,'position',[40 100 1000 600])
% % axis([0, 150, -50, 30]*0.001)

%% Animation

for k=1
% 
% for j=1:100
%     for i=1:20:RunNum
%         % Link
%         % link1
%         link1x = [PointJ1(1,i), PointJ2(1,i)];
%         link1y = [PointJ1(2,i), PointJ2(2,i)];
%         link1z = [PointJ1(3,i), PointJ2(3,i)];
% 
%         % link2
%         link2x = [PointJ2(1,i), PointJ3(1,i)];
%         link2y = [PointJ2(2,i), PointJ3(2,i)];
%         link2z = [PointJ2(3,i), PointJ3(3,i)];
% 
%         % link3
%         link3x = [PointJ3(1,i), PointJ4(1,i)];
%         link3y = [PointJ3(2,i), PointJ4(2,i)];
%         link3z = [PointJ3(3,i), PointJ4(3,i)];
% 
%         % link4
%         link4x = [PointJ5(1,i), PointJ6(1,i)];
%         link4y = [PointJ5(2,i), PointJ6(2,i)];
%         link4z = [PointJ5(3,i), PointJ6(3,i)];
% 
%         % link5
%         link5x = [PointJ6(1,i), PointJ7(1,i)];
%         link5y = [PointJ6(2,i), PointJ7(2,i)];
%         link5z = [PointJ6(3,i), PointJ7(3,i)];
% 
%         % link6
%         link6x = [PointJ7(1,i), PointJ8(1,i)];
%         link6y = [PointJ7(2,i), PointJ8(2,i)];
%         link6z = [PointJ7(3,i), PointJ8(3,i)];
% 
%         % link7
%         link7x = [PointJ9(1,i), PointJ10(1,i)];
%         link7y = [PointJ9(2,i), PointJ10(2,i)];
%         link7z = [PointJ9(3,i), PointJ10(3,i)];
% 
%         % link8
%         link8x = [PointJ10(1,i), PointJ11(1,i)];
%         link8y = [PointJ10(2,i), PointJ11(2,i)];
%         link8z = [PointJ10(3,i), PointJ11(3,i)];
% 
%         % link9
%         link9x = [PointJ11(1,i), PointJ12(1,i)];
%         link9y = [PointJ11(2,i), PointJ12(2,i)];
%         link9z = [PointJ11(3,i), PointJ12(3,i)];
% 
%         % link10
%         link10x = [PointJ13(1,i), PointJ14(1,i)];
%         link10y = [PointJ13(2,i), PointJ14(2,i)];
%         link10z = [PointJ13(3,i), PointJ14(3,i)];
% 
%         % link11
%         link11x = [PointJ14(1,i), PointJ15(1,i)];
%         link11y = [PointJ14(2,i), PointJ15(2,i)];
%         link11z = [PointJ14(3,i), PointJ15(3,i)];
% 
%         % link12
%         link12x = [PointJ15(1,i), PointJ16(1,i)];
%         link12y = [PointJ15(2,i), PointJ16(2,i)];
%         link12z = [PointJ15(3,i), PointJ16(3,i)];
% 
%         % link13
%         link13x = [PointJ17(1,i), PointJ18(1,i)];
%         link13y = [PointJ17(2,i), PointJ18(2,i)];
%         link13z = [PointJ17(3,i), PointJ18(3,i)];
% 
%         % link14
%         link14x = [PointJ18(1,i), PointJ19(1,i)];
%         link14y = [PointJ18(2,i), PointJ19(2,i)];
%         link14z = [PointJ18(3,i), PointJ19(3,i)];
% 
%         % link15
%         link15x = [PointJ19(1,i), PointJ20(1,i)];
%         link15y = [PointJ19(2,i), PointJ20(2,i)];
%         link15z = [PointJ19(3,i), PointJ20(3,i)];
% 
%         % link16
%         link16x = [PointJ5(1,i), PointJ9(1,i)];
%         link16y = [PointJ5(2,i), PointJ9(2,i)];
%         link16z = [PointJ5(3,i), PointJ9(3,i)];
% 
%         % link17
%         link17x = [PointJ13(1,i), PointJ17(1,i)];
%         link17y = [PointJ13(2,i), PointJ17(2,i)];
%         link17z = [PointJ13(3,i), PointJ17(3,i)];
% 
% %         subplot(221)
% %         plot3(link1x, link1y, link1z, 'b',...
% %             link2x, link2y, link2z, 'g',...
% %             link3x, link3y, link3z, 'b',...
% %             link4x, link4y, link4z, 'm',...
% %             link5x, link5y, link5z, 'm',...
% %             link6x, link6y, link6z, 'm',...
% %             link7x, link7y, link7z, 'm',...
% %             link8x, link8y, link8z, 'm',...
% %             link9x, link9y, link9z, 'm',...
% %             link10x, link10y, link10z, 'r',...
% %             link11x, link11y, link11z, 'r',...
% %             link12x, link12y, link12z, 'r',...
% %             link13x, link13y, link13z, 'r',...
% %             link14x, link14y, link14z, 'r',...
% %             link15x, link15y, link15z, 'r',...
% %             link16x, link16y, link16z, 'm',...
% %             link17x, link17y, link17z, 'r', 'LineWidth', 2)
% %
% %         axis equal;
% %         set(gcf,'position',[40 125 1400 800])
% %         axis([-350, 150, -80, 80, -50, 30]*0.001)
% %         %         view(-90, 0); % front view
% %         %         view(0, 0); % side view
% %         %         view(0, 90); % top view
% %         view(-45, 45)
% %         %         view(0,20)
% %
% %         subplot(222)
% %         plot3(link1x, link1y, link1z, 'b',...
% %             link2x, link2y, link2z, 'g',...
% %             link3x, link3y, link3z, 'b',...
% %             link4x, link4y, link4z, 'm',...
% %             link5x, link5y, link5z, 'm',...
% %             link6x, link6y, link6z, 'm',...
% %             link7x, link7y, link7z, 'm',...
% %             link8x, link8y, link8z, 'm',...
% %             link9x, link9y, link9z, 'm',...
% %             link10x, link10y, link10z, 'r',...
% %             link11x, link11y, link11z, 'r',...
% %             link12x, link12y, link12z, 'r',...
% %             link13x, link13y, link13z, 'r',...
% %             link14x, link14y, link14z, 'r',...
% %             link15x, link15y, link15z, 'r',...
% %             link16x, link16y, link16z, 'm',...
% %             link17x, link17y, link17z, 'r', 'LineWidth', 2)
% %
% %         axis equal;
% %         set(gcf,'position',[40 125 1400 800])
% %         axis([-350, 150, -80, 80, -50, 30]*0.001)
% %         %         view(-90, 0); % front view
% %         %         view(0, 0); % side view
% %                 view(0, 90); % top view
% % %         view(-45, 45)
% %         %         view(0,20)
% %
% %         subplot(223)
% %         plot3(link1x, link1y, link1z, 'b',...
% %             link2x, link2y, link2z, 'g',...
% %             link3x, link3y, link3z, 'b',...
% %             link4x, link4y, link4z, 'm',...
% %             link5x, link5y, link5z, 'm',...
% %             link6x, link6y, link6z, 'm',...
% %             link7x, link7y, link7z, 'm',...
% %             link8x, link8y, link8z, 'm',...
% %             link9x, link9y, link9z, 'm',...
% %             link10x, link10y, link10z, 'r',...
% %             link11x, link11y, link11z, 'r',...
% %             link12x, link12y, link12z, 'r',...
% %             link13x, link13y, link13z, 'r',...
% %             link14x, link14y, link14z, 'r',...
% %             link15x, link15y, link15z, 'r',...
% %             link16x, link16y, link16z, 'm',...
% %             link17x, link17y, link17z, 'r', 'LineWidth', 2)
% %
% %         axis equal;
% %         set(gcf,'position',[40 125 1400 800])
% %         axis([-350, 150, -80, 80, -50, 30]*0.001)
% %                 view(-90, 0); % front view
% %         %         view(0, 0); % side view
% %         %         view(0, 90); % top view
% % %         view(-45, 45)
% %         %         view(0,20)
% %
% %         subplot(224)
% %         plot3(link1x, link1y, link1z, 'b',...
% %             link2x, link2y, link2z, 'g',...
% %             link3x, link3y, link3z, 'b',...
% %             link4x, link4y, link4z, 'm',...
% %             link5x, link5y, link5z, 'm',...
% %             link6x, link6y, link6z, 'm',...
% %             link7x, link7y, link7z, 'm',...
% %             link8x, link8y, link8z, 'm',...
% %             link9x, link9y, link9z, 'm',...
% %             link10x, link10y, link10z, 'r',...
% %             link11x, link11y, link11z, 'r',...
% %             link12x, link12y, link12z, 'r',...
% %             link13x, link13y, link13z, 'r',...
% %             link14x, link14y, link14z, 'r',...
% %             link15x, link15y, link15z, 'r',...
% %             link16x, link16y, link16z, 'm',...
% %             link17x, link17y, link17z, 'r', 'LineWidth', 2)
% %
% %         axis equal;
% %         set(gcf,'position',[40 125 1400 800])
% %         axis([-350, 150, -80, 80, -50, 30]*0.001)
% %         %         view(-90, 0); % front view
% %                 view(0, 0); % side view
% %         %         view(0, 90); % top view
% % %         view(-45, 45)
% %         %         view(0,20)
% 
%         plot3(PointJ16(1,i)*leftCont(1,i), PointJ16(2,i)*leftCont(1,i), PointJ16(3,i)*leftCont(1,i), 'ko',...
%             PointJ20(1,i)*rightCont(1,i), PointJ20(2,i)*rightCont(1,i), PointJ20(3,i)*rightCont(1,i), 'ko',...
%         link1x, link1y, link1z, 'b',...
%             link2x, link2y, link2z, 'g',...
%             link3x, link3y, link3z, 'b',...
%             link4x, link4y, link4z, 'm',...
%             link5x, link5y, link5z, 'm',...
%             link6x, link6y, link6z, 'm',...
%             link7x, link7y, link7z, 'm',...
%             link8x, link8y, link8z, 'm',...
%             link9x, link9y, link9z, 'm',...
%             link10x, link10y, link10z, 'r',...
%             link11x, link11y, link11z, 'r',...
%             link12x, link12y, link12z, 'r',...
%             link13x, link13y, link13z, 'r',...
%             link14x, link14y, link14z, 'r',...
%             link15x, link15y, link15z, 'r',...
%             link16x, link16y, link16z, 'm',...
%             link17x, link17y, link17z, 'r', 'LineWidth', 2)
% 
% %         hold on
% %         plot3(PointJ15(1,i)+T(1,i)*Vel, PointJ15(2,i), PointJ15(3,i), 'ko')
%         axis equal;
%         set(gcf,'position',[40 100 1000 600])
%         axis([-350, 150, -80, 80, -50, 30]*0.001)
%         %         view(-90, 0); % front view
% %         view(0, 0); % side view
% %         view(0, 90); % top view
%         view(-45, 45)
%         %         view(0,20)
% 
%         M(i) = getframe;
% 
%     end
% end
% % movie(M,100);

end

