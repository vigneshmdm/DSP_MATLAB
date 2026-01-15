clc;      						% To clear the Screen
clear all; 					% To clear all the previous  variables.
close all; 					% To close all the previous windows
n=input('Enter desired length of the sequence:');  % input statement is used to feed the input value 
time=-n:n;    					% variable allocation
step=[zeros(1,n) ones(1,n+1)];     		% Unit step signal  generation
disp(step);					% To display the unit step output
stem(time,step);    				% To plot the Discrete signal
xlabel('time index');     				% labeling the x  axis
ylabel('amplitude');				% labeling the y axis.
title('Generation of Unit Step signal');	             %Type the title as you want.