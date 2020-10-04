function y = gen_wave(tone ,rythm)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
Fs = 8192;
% 音阶(两个八度)
freqs = [261.6, 293.7, 329.6, 349.2, 392.0, 440.0, 493.9...
         523.3  587.3  659.3  698.5  784.0  880.0  987.8  0 ...
         1046.6 1174.6  1318.6  1397 1568   1760   1975.6 
%          16    17      18      
         ];
%  0 为 15                                                       

bpm = 150;
beat = 60 / bpm;
% 4/4 拍
% 全音符
x = linspace(0, 2*pi* rythm* beat, floor(Fs * rythm*beat));


y = sin(freqs(tone) * x ).*(1- x/(rythm*pi*2*beat));
end

