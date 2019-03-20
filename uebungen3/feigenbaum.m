function feigenbaum()
	figure;
	xvalues = 2.5:0.001:4;
	function o = feigenbaum_values(alpha)
		x = zeros(300,1);
		x(1) = 0.5;
		for k = 2:300
			x(k) = alpha * x(k-1) * (1 - x(k-1));
		end
		o = x(201:300);
	end
	i = 0;
	for a = xvalues
		i += 1;
		plot(a,feigenbaum_values(a),'k');
		hold on;
		xlim([2.5 4]);
		ylim([0 1]);
		if (exist('OCTAVE_VERSION', 'builtin') ~= 0)
			drawnow();
		else
			drawnow limitrate;
		end
	end
end