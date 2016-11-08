% Define primary winding diameters (inner smaller coil)
G_pri = 3 ; % Define the gap between two ends of primary winding.
P_pri = 12 ; % Define the length of the two pins.
D_pri = 60 ; % Define the outer dimension of the inductor.
W_pri = 6 ; % Define the width of the inductor.

% define interconnection gap needed between metal 1 and metal 2
G_m1_2_m2 = 0.5; 

% Print coordinates of pin1 for primary winding input/output (metal 1 layer)
W_pins_pri = W_pri - G_m1_2_m2*2 % print width of pins for primary winding input/output
P1_pin1 = [-G_pri/2 - G_m1_2_m2 - W_pins_pri/2, 0];
P2_pin1 = [-G_pri/2 - G_m1_2_m2 - W_pins_pri/2, P_pri + W_pri - G_m1_2_m2];
Points_pin1 = [P1_pin1; P2_pin1] % print points of pin1 for primary winding input/output (metal 1 layer) 

% Define gap needed between via and metal 2
G_via = 1;

% Print coordinates of via for pin1 and primary winding interconnection
W_via = W_pri - G_via*2 % print width of via
P1_via1 = [-G_pri/2 - G_via - W_via/2, P_pri + W_pri - G_via];
P2_via1 = [-G_pri/2 - G_via - W_via/2, P_pri + W_pri - G_via - W_via];
Points_via1 = [P1_via1; P2_via1] % Print points of via for pin1 and primary winding interconnection

% Print coordinates of primary winding (meter 2 layer)
P1_pri = [-G_pri/2, P_pri + W_pri/2];
P2_pri = [-(D_pri - W_pri)/(2 + 2*sqrt(2)),P_pri + W_pri/2];
P3_pri = [-(D_pri - W_pri)/2,P_pri + W_pri/2 + (D_pri - W_pri)/(2 + sqrt(2))];
P4_pri = [-(D_pri - W_pri)/2, P_pri + W_pri/2 + (D_pri - W_pri)*(1 + sqrt(2))/(2 + sqrt(2))];
P5_pri = [-(D_pri - W_pri)/(2 + 2*sqrt(2)),P_pri + W_pri/2 + (D_pri - W_pri)];
P6_pri = [(D_pri - W_pri)/(2 + 2*sqrt(2)), P_pri + W_pri/2 + (D_pri - W_pri)];
P7_pri = [(D_pri - W_pri)/2,P_pri + W_pri/2 + (D_pri - W_pri)*(1 + sqrt(2))/(2 + sqrt(2))];
P8_pri = [(D_pri - W_pri)/2,P_pri + W_pri/2 + (D_pri - W_pri)/(2 + sqrt(2))];
P9_pri = [(D_pri - W_pri)/(2 + 2*sqrt(2)),P_pri + W_pri/2];
P10_pri = [G_pri/2, P_pri + W_pri/2];
Points_pri = [P1_pri; P2_pri; P3_pri; P4_pri; P5_pri; P6_pri; P7_pri; P8_pri; P9_pri; P10_pri] % Print coordinates of primary winding

% Print coordinates of via for pin2 and primary winding interconnection
P1_via2 = [G_pri/2 + G_via + W_via/2, P_pri + G_via];
P2_via2 = [G_pri/2 + G_via + W_via/2, P_pri + W_pri - G_via];
Points_via2 = [P1_via2; P2_via2]

% Print coordinates of pin2 for primary winding input/output (metal 1 layer)
P1_pin2 = [G_pri/2 + G_m1_2_m2 + W_pins_pri/2, P_pri + W_pri - G_m1_2_m2];
P2_pin2 = [G_pri/2 + G_m1_2_m2 + W_pins_pri/2, 0];
Points_pin2 = [P1_pin2; P2_pin2]


% Define dimensions for secondary winding (outer larger coil)
G_pins_secd = 3 ; % Define the gap between two pins of secondary winding.
G_pri2secd = 3; % Define the gap between primary winding and secondary winding.
P_secd = 12 ; % Define the length of the two pins.
W_secd = 6 ; % Define the width of the inductor.

% Print coordinates of secondary winding (meter 2 layer)
D_secd = D_pri + 2*G_pri2secd + 2*(W_pri/2 + W_secd/2); % Calculate the outer dimention of the secondary winding
bias_pin = -(G_pri2secd + W_pri/2 + W_secd/2); % Calculate the bias of the start coordinate (compared with the start coordinate of the primary winding)because of the gap between the primary winding and secondary winding
P1_secd = [-G_pins_secd/2 - W_secd/2, bias_pin];
P2_secd = [-G_pins_secd/2 - W_secd/2, bias_pin + P_secd + W_secd/2];
P3_secd = [-(D_secd - W_secd)/(2 + 2*sqrt(2)), bias_pin + P_secd + W_secd/2];
P4_secd = [-(D_secd - W_secd)/2, P_secd + W_secd/2 + (D_secd - W_secd)/(2 + sqrt(2)) + bias_pin];
P5_secd = [-(D_secd - W_secd)/2, P_secd + W_secd/2 + (D_secd - W_secd)*(1 + sqrt(2))/(2 + sqrt(2)) + bias_pin];
P6_secd = [-(D_secd - W_secd)/(2 + 2*sqrt(2)), P_secd + W_secd/2 + (D_secd - W_secd) + bias_pin];
P7_secd = [(D_secd - W_secd)/(2 + 2*sqrt(2)), P_secd + W_secd/2 + (D_secd - W_secd) + bias_pin];
P8_secd = [(D_secd - W_secd)/2, P_secd + W_secd/2 + (D_secd - W_secd)*(1 + sqrt(2))/(2 + sqrt(2)) + bias_pin];
P9_secd = [(D_secd - W_secd)/2,P_secd + W_secd/2 + (D_secd - W_secd)/(2 + sqrt(2)) + bias_pin];
P10_secd = [(D_secd - W_secd)/(2 + 2*sqrt(2)), P_secd + W_secd/2 + bias_pin];
P11_secd = [G_pins_secd/2 + W_secd/2, P_secd + W_secd/2 + bias_pin];
P12_secd = [G_pins_secd/2 + W_secd/2, bias_pin];
Points_secd = [P1_secd;P2_secd;P3_secd;P4_secd;P5_secd;P6_secd;P7_secd;P8_secd;P9_secd;P10_secd;P11_secd;P12_secd]


P1=[-G/2-W/2,0];
P2=[-G/2-W/2,P+W/2];
P3=[-(D-W)/(2+2*sqrt(2)),P+W/2];
P4=[-(D-W)/2,P+W/2+(D-W)/(2+sqrt(2))];
P5=[-(D-W)/2,P+W/2+(D-W)*(1+sqrt(2))/(2+sqrt(2))];
P6=[-(D-W)/(2+2*sqrt(2)),P+W/2+(D-W)];
P7=[(D-W)/(2+2*sqrt(2)),P+W/2+(D-W)];
P8=[(D-W)/2,P+W/2+(D-W)*(1+sqrt(2))/(2+sqrt(2))];
P9=[(D-W)/2,P+W/2+(D-W)/(2+sqrt(2))];
P10=[(D-W)/(2+2*sqrt(2)),P+W/2];
P11=[G/2+W/2,P+W/2];
P12=[G/2+W/2,0];
Points=[P1;P2;P3;P4;P5;P6;P7;P8;P9;P10;P11;P12]
