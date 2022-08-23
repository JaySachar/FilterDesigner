function [output] = FFTPlease(input)

LengthofInput = length(input);
N = 2^nextpow2(LengthofInput); %set N to be a factor of 2

while length(input) < N %make the input signal a factor of 2 by padding the end with 0's
    input(end+1) = 0;
end

if (LengthofInput == 1) %return the input when the size of the input is 1 
    output = input;
return;

else 
    
    WN = exp(2*pi*1i/N); %Twiddle factor 
    W = 1; %initial twiddle factor

    A_even = input(1:2:end); %Select 0, 2, 4, 6 etc... except matlab its 1, 3, 5, 7
    A_odd = input(2:2:end); %select 1, 3, 5, 7, except in matlab its 2,4, 6, 8, 10

    Y_even = FFTPlease(A_even); %Divide and conquer
    Y_odd = FFTPlease(A_odd);

    for j = 1:(N/2)
        Y(j) = Y_even(j) + W * Y_odd(j);
        Y(j+(N)/2) = Y_even(j) - W*Y_odd(j);
        W = W*WN;
        output = Y;
    end
end
end
