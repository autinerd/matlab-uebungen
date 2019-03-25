function o = sunspot()
	if exist('spot_num.txt', 'file') ~= 2
		urlwrite('https://solarscience.msfc.nasa.gov/greenwch/spot_num.txt', './spot_num.txt');
	end
	[year,month,ssn,dev] = textread('./spot_num.txt','%u %u %f %f','headerlines',1);
	clear dev;
	times = (year - 1749) + (month / 12);
	Samples = size(ssn)(1);
	Fs = 12;
	T = 1/12;
	ssn_fft = fft(ssn);
	Spectrum = 2 * abs(ssn_fft) / Samples;
	Spectrum(1,1) /= 2;
	f = linspace(0, Fs, Samples);
	single_sided = 1:floor(Samples/2);
	subplot(3,1,1);
	plot(times,ssn,'g-');
	xlabel('Monate seit Jan 1979');
	xlim([0 times(end)]);
	subplot(3,1,2);
	plot(f(single_sided),Spectrum(single_sided),'r-');
	xlabel('Frequenz in 1/Jahr');
	subplot(3,1,3);
	plot(f(single_sided).^-1,Spectrum(single_sided),'k-');
	xlim([0 50]);
	xlabel('Periodendauer in Jahren');
	[~,m] = max(Spectrum(10:floor(Samples/2)));
	o = 1/f(m + 9);
end
