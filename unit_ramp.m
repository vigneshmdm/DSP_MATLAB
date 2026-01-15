clc;                            				% To clear the Screen
clear all;                				% To clear all the previous  variables.
close all;                 				 % To close all the previous windows
n=input('Enter desired length of the sequence:');  % input statement is used to feed the input value 
time=-n:n;                      				% variable allocation
r=1:1:n;                       				%for ramp sequence initialization
ramp=[zeros(1,n+1)  r];          			% Unit ramp signal  generation
disp(ramp);                 				% To display the unit ramp output
stem(time,ramp);                    			% To plot the Discrete signal
xlabel('time index');                   			% labeling the x  axis
ylabel('amplitude');                			% labeling the y axis.
title('Generation of Unit ramp signal');    		%Type the title as you want.