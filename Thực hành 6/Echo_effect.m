clc; close all; clear all;

[input, fs] = audioread('go1.mp3');

b = 1;
a = zeros(1,4000);
a(1) = 1;
a(4000) = 0.8;

output = filter(b,a,input);
sound(output, fs)
%%


delay = 4;
amp = 0.8;

num_delay=round(fs*delay);
echo0=zeros(num_delay,1);
echo_dalay=input*amp;
echo_final=[echo0;echo_dalay]; 
org_input=[input;echo0];
output=echo_final+org_input;

if max(abs(output))>1
    output=output/max(abs(output));
end


sound(output, fs)