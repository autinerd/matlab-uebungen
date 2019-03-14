function output = fib4(n, start)
    if nargin < 2
        start = [1; 1];
    end
    if size(start) == [1 2]
        start = start.';
    end
    if size(start) ~= [2 1]
        error("This is a wrong start vector");
        return
    end
    if n < 2
        output = 1;
    end
    output = ([0 1; 1 1]^(n-2)*start)(2,1);
end