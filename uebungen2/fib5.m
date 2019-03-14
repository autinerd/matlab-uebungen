function x = fib5(n)
	if n <= 2
		x = 1;
	else
		x = fib(n-1) + fib(n-2);
	end
end