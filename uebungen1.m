fprintf("Aufgabe 1:\n")
M = [1 2 3; 4 5 6; 7 8 9]
k = 2.75
w = [1 -1/2 1/3 -1/4;]
y = 1.0:0.5:100.5
fprintf("Aufgabe 2 a:\n")
N = [M M; M M]
fprintf("Aufgabe 2 b:\n")
N23 = N;
N23(2,:) = [];
N23 (:,3) = []
fprintf("Aufgabe 2 c:\n")
N(4,:) = [1 2 3 4 5 6]
fprintf("Aufgabe 2 d:\n")
N(4,2) = 5 + i
fprintf("Aufgabe 3:\n")
r = (1:5)+i
P = repmat(r.',1,6)
fprintf("Aufgabe 4 a:\n")
x = [1 2 1/2 -3 -1];
y = [2 0 -3 1/3 2];
sum(x.*y)
dot(x,y)
fprintf("Aufgabe 4 b:\n")
A = [ -1 2 3; 0 1 4 ];
B = [ 9 8; 7 6; 5 4 ];
A*B
fprintf("Aufgabe 5:\n")
C = randi([-9 9], 4, 4)
C(:,2)
C(2, 1:3)
C([4 1],:)
C(:,4:-1:1)
fprintf("Aufgabe 6:\n")
K = [1 2; 4 3; 1 1; 4 0; 9 1]
for i=1:size(K)(1);
    K(i,:) = [sqrt(K(i,1)^2 + K(i,2)^2),atan(K(i,2)/K(i,1))]
end
fprintf("Aufgabe 7:\n")
K1 = [1 2; 4 3; 1 1; 4 0; 9 1;];
fliplr(cart2pol(K1(:,1),K1(:,2)))
fprintf("Aufgabe 8:\n")
t = 0:0.1:10
clear e;
s = sin(2*pi*t).*cos(3*pi*t)+e.^(-0.1*t)
fprintf("Aufgabe 10:\n")
x = [ 1 2 3 ];
y = [ -1 0 1 ];
a = x + y - 2
b = x.^(-y)
c = x./y
try
	d = x * y
catch
end
e1 = x.' * y
f = x * y.'