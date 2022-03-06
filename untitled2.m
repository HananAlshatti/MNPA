% Hanan Alshatti 101137569 Pa Session

% with R1 = 1, C = 0.25, R2 = 2, L = 0.2, R3 = 10, α = 100, R4 = 0.1 and RO = 1000
 R1 = 1;
 C = 0.25;
 R2 = 2;
 L = 0.2;
 R3 = 10;
 alpha = 100;
 R4 = 0.1;
RO = 1000;
%G  divided by R

G1 = 1/R1;
G2 = 1/R2;
G3 = 1/R3;
G4 = 1/R4;
GO = 1/RO;
% C matrix

Cmatrix = [-C, C, C, 0, 0,-C]; 
     

Gmatrix = [1; 0; 0; G3; 0; G1];
       


F = [1; 0; 0; 0; 0; 0];

V3 = zeros(1, 20);
Vin = zeros(1, 20);
Vo = zeros(1, 20);

F = F.*-10;

for i = 1:0
    V = Gmatrix\F;
    F(1) = F(1) + 1;
    Vin(i) = V(1);
    V3(i) = V(4);
    Vo(i) = V(6);
end

figure(1)
plot(Vin, Vo)
xlabel('Vin (V)')
ylabel('Vo (V)')




