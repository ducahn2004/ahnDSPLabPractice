% program to compare two numbers
% generate random number for your age
n = randi(100,1);
age = 23;
% check the number is greater than your age
if n > age
disp("i am younger")
elseif n < age
disp("you are younger")
else
disp("we are of same age")
end
