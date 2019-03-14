function output = sinus(x, epsilon, debug)
	if nargin < 3
		debug = 0;
	end
	if nargin < 2
		epsilon = 1e-6;
	end
	% Aufgabe 14
	while x > 2*pi
		x -= 2*pi;
	end
	% Aufgabe 14 end
	output(1:3) = 0;
	xn = Inf;
	k = 0;
	while abs(xn) > epsilon
		xn = (-1)^k * (x^(2*k+1))/((factorial(2*k+1)));
		output(1) += xn;
		k += 1;
	end
	if debug ~= 0
		output(2) = output(1) - sin(x);
		output(3) = k; % Aufgabe 14 Ausgabe der Glieder
	else
		output = output(1);
	end
end
