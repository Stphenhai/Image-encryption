clc;close all;
clear all;


I1=load('F:\���\����\�½��ļ���\���\����\RFRDCTDSD\lena256.mat');
%lena256 airplane barbara boat256 camera peper256 boboon


In1=I1.X;

Eout=uint8(I1.Eout1);

%%%%%%%%%%%%%%%%%%%%%ԭͼ��
H1 = corr(In1,'H')
xlabel('Pixel gray value on location (x,y)');
ylabel('Pixel gray value on location(x+1,y)')
axis([0 257 0 257])
V1 = corr(In1,'V')
xlabel('Pixel gray value on location (x,y)');
ylabel('Pixel gray value on location(x,y+1)')
axis([0 257 0 257])
D1 = corr(In1,'D')
xlabel('Pixel gray value on location (x,y)');
ylabel('Pixel gray value on location(x+1,y+1)')
axis([0 257 0 257])
%%%%%%%%%%%%%%%%%%%%%%%55

%%%%%%%%%%%%%%%%%%%%%%����ͼ��

H3 = corr(Eout,'H')
xlabel('Pixel gray value on location (x,y)');
ylabel('Pixel gray value on location(x+1,y)')
 axis([0 257 0 257])
V3 = corr(Eout,'V')
xlabel('Pixel gray value on location (x,y)');
ylabel('Pixel gray value on location(x,y+1)')
 axis([0 257 0 257])
D3 = corr(Eout,'D')
xlabel('Pixel gray value on location (x,y)');
ylabel('Pixel gray value on location(x+1,y+1)')
axis([0 257 0 257])
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ԭrfrdct
% H31 = corr(E1,'H')
%xlabel('Pixel gray value on location (x,y)');
%ylabel('Pixel gray value on location(x,y+1)')
% axis([0 257 0 257])
%V31 = corr(E1,'V')
%xlabel('Pixel gray value on location (x,y)');
%ylabel('Pixel gray value on location(x+1,y)')
 %axis([0 257 0 257])
%D31 = corr(E1,'D')
%xlabel('Pixel gray value on location (x,y)');
%ylabel('Pixel gray value on location(x+1,y+1)')
 %axis([0 257 0 257])
%  close all;