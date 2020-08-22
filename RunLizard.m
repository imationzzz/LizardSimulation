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

% Joint angle parameters minimizing the square of the joint torques
x = [0.30188;1.37730371856547;-0.698124196136074;3.26143965402836;0.377165908378455;-0.146235510910942;0.139626340159546;-0.541222889200813;-0.314159265358979];

%% Design Variable
% virtual Z
% a1 = x(1);
% b1 = x(2);
% waist Z
a2 = x(1);
b2 = x(2);
% tail Z
a3 = x(3);
b3 = x(4);

%%%%% left hind leg variable
a14 = x(5); % lhindshZ
b14 = 0; %                            fixed
c14 = x(6);
a15 = x(7); % lhindshX
b15 = 0;
c15 = a15;
a16 = x(8); % lhindshY
b16 = -180*rad;
c16 = -90*rad;
a17 = x(9); % lhindknZ
b17 = 180*rad;
c17 = a15+c15-x(9);
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
aPel = 20*rad;

%% Simulation setting
PeriodTime = 0.03;
PeriodNum = 1000;
dt = PeriodTime/PeriodNum;
RunNum = PeriodNum*4;

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
            if ImpLH == 1 
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


%% Animation

for k=1

for j=1:100
    for i=1:30:RunNum
        % Link
        % link1
        link1x = [PointJ1(1,i), PointJ2(1,i)];
        link1y = [PointJ1(2,i), PointJ2(2,i)];
        link1z = [PointJ1(3,i), PointJ2(3,i)];

        % link2
        link2x = [PointJ2(1,i), PointJ3(1,i)];
        link2y = [PointJ2(2,i), PointJ3(2,i)];
        link2z = [PointJ2(3,i), PointJ3(3,i)];

        % link3
        link3x = [PointJ3(1,i), PointJ4(1,i)];
        link3y = [PointJ3(2,i), PointJ4(2,i)];
        link3z = [PointJ3(3,i), PointJ4(3,i)];

        % link4
        link4x = [PointJ5(1,i), PointJ6(1,i)];
        link4y = [PointJ5(2,i), PointJ6(2,i)];
        link4z = [PointJ5(3,i), PointJ6(3,i)];

        % link5
        link5x = [PointJ6(1,i), PointJ7(1,i)];
        link5y = [PointJ6(2,i), PointJ7(2,i)];
        link5z = [PointJ6(3,i), PointJ7(3,i)];

        % link6
        link6x = [PointJ7(1,i), PointJ8(1,i)];
        link6y = [PointJ7(2,i), PointJ8(2,i)];
        link6z = [PointJ7(3,i), PointJ8(3,i)];

        % link7
        link7x = [PointJ9(1,i), PointJ10(1,i)];
        link7y = [PointJ9(2,i), PointJ10(2,i)];
        link7z = [PointJ9(3,i), PointJ10(3,i)];

        % link8
        link8x = [PointJ10(1,i), PointJ11(1,i)];
        link8y = [PointJ10(2,i), PointJ11(2,i)];
        link8z = [PointJ10(3,i), PointJ11(3,i)];

        % link9
        link9x = [PointJ11(1,i), PointJ12(1,i)];
        link9y = [PointJ11(2,i), PointJ12(2,i)];
        link9z = [PointJ11(3,i), PointJ12(3,i)];

        % link10
        link10x = [PointJ13(1,i), PointJ14(1,i)];
        link10y = [PointJ13(2,i), PointJ14(2,i)];
        link10z = [PointJ13(3,i), PointJ14(3,i)];

        % link11
        link11x = [PointJ14(1,i), PointJ15(1,i)];
        link11y = [PointJ14(2,i), PointJ15(2,i)];
        link11z = [PointJ14(3,i), PointJ15(3,i)];

        % link12
        link12x = [PointJ15(1,i), PointJ16(1,i)];
        link12y = [PointJ15(2,i), PointJ16(2,i)];
        link12z = [PointJ15(3,i), PointJ16(3,i)];

        % link13
        link13x = [PointJ17(1,i), PointJ18(1,i)];
        link13y = [PointJ17(2,i), PointJ18(2,i)];
        link13z = [PointJ17(3,i), PointJ18(3,i)];

        % link14
        link14x = [PointJ18(1,i), PointJ19(1,i)];
        link14y = [PointJ18(2,i), PointJ19(2,i)];
        link14z = [PointJ18(3,i), PointJ19(3,i)];

        % link15
        link15x = [PointJ19(1,i), PointJ20(1,i)];
        link15y = [PointJ19(2,i), PointJ20(2,i)];
        link15z = [PointJ19(3,i), PointJ20(3,i)];

        % link16
        link16x = [PointJ5(1,i), PointJ9(1,i)];
        link16y = [PointJ5(2,i), PointJ9(2,i)];
        link16z = [PointJ5(3,i), PointJ9(3,i)];

        % link17
        link17x = [PointJ13(1,i), PointJ17(1,i)];
        link17y = [PointJ13(2,i), PointJ17(2,i)];
        link17z = [PointJ13(3,i), PointJ17(3,i)];

%         subplot(221)
%         plot3(link1x, link1y, link1z, 'b',...
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
%         axis equal;
%         set(gcf,'position',[40 125 1400 800])
%         axis([-350, 150, -80, 80, -50, 30]*0.001)
%         %         view(-90, 0); % front view
%         %         view(0, 0); % side view
%         %         view(0, 90); % top view
%         view(-45, 45)
%         %         view(0,20)
%
%         subplot(222)
%         plot3(link1x, link1y, link1z, 'b',...
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
%         axis equal;
%         set(gcf,'position',[40 125 1400 800])
%         axis([-350, 150, -80, 80, -50, 30]*0.001)
%         %         view(-90, 0); % front view
%         %         view(0, 0); % side view
%                 view(0, 90); % top view
% %         view(-45, 45)
%         %         view(0,20)
%
%         subplot(223)
%         plot3(link1x, link1y, link1z, 'b',...
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
%         axis equal;
%         set(gcf,'position',[40 125 1400 800])
%         axis([-350, 150, -80, 80, -50, 30]*0.001)
%                 view(-90, 0); % front view
%         %         view(0, 0); % side view
%         %         view(0, 90); % top view
% %         view(-45, 45)
%         %         view(0,20)
%
%         subplot(224)
%         plot3(link1x, link1y, link1z, 'b',...
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
%         axis equal;
%         set(gcf,'position',[40 125 1400 800])
%         axis([-350, 150, -80, 80, -50, 30]*0.001)
%         %         view(-90, 0); % front view
%                 view(0, 0); % side view
%         %         view(0, 90); % top view
% %         view(-45, 45)
%         %         view(0,20)

        plot3(link1x, link1y, link1z, 'b',...
            link2x, link2y, link2z, 'g',...
            link3x, link3y, link3z, 'b',...
            link4x, link4y, link4z, 'm',...
            link5x, link5y, link5z, 'm',...
            link6x, link6y, link6z, 'm',...
            link7x, link7y, link7z, 'm',...
            link8x, link8y, link8z, 'm',...
            link9x, link9y, link9z, 'm',...
            link10x, link10y, link10z, 'r',...
            link11x, link11y, link11z, 'r',...
            link12x, link12y, link12z, 'r',...
            link13x, link13y, link13z, 'r',...
            link14x, link14y, link14z, 'r',...
            link15x, link15y, link15z, 'r',...
            link16x, link16y, link16z, 'm',...
            link17x, link17y, link17z, 'r', 'LineWidth', 2)

%         hold on
%         plot3(PointJ15(1,i)+T(1,i)*Vel, PointJ15(2,i), PointJ15(3,i), 'ko')
        axis equal;
        set(gcf,'position',[40 100 1000 600])
        axis([-350, 200, -100, 150, -50, 30]*0.001)
        %         view(-90, 0); % front view
%         view(0, 0); % side view
%         view(0, 90); % top view
        view(-45, 45)
        %         view(0,20)

        M(i) = getframe;

    end
end
% movie(M,100);

end




