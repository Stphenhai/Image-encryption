clear;clc;

% I=imread('lake.tiff');     %512*512 ͼ��
% I=imread('barb256.bmp');      %256*256ͼ��
% I=imread('pepper256.bmp');      %256*256ͼ��
% I=imread('barb256.bmp');      %256*256ͼ��
% I=imread('goldhill256.bmp');      %256*256ͼ��
% I=imread('baboon256.tiff');      %256*256ͼ��
I=imread('camera256.tiff');      %256*256ͼ��     ��Ϣ�أ�ԭͼ(7.0097)    ���ܺ��ͼ(7.9971)


% [m,n]=size(I);
x = gf(0:255,8); % ����1*256һά������
% I=imread('lena.bmp');
[m,n]=size(I);
C=x(3).^double(I);
q1 = 127;
p1 = 181;
e = x(3)^127;
%�� �� �� �� �� �� �� ʵ �� �� �� �� ,������������ɢ�����ҡ�
D=diffusionmatrixfinield(C);
F=valuescramble(D,e,p1,q1);

%������èӳ������
P=positionscramble(F);
% % % �ü�����
% for i=1:16
%     for j=1:16
%            P(i,j)=0;
%     end   
% end    

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%��˹����
% yy=randn(256);
% % kk=0.1;
% kk=0.001;
% E=F.x;
% EE=double(E);
% EE=EE.*(1+kk*yy);
% EE(EE>255)=255;
% EE(EE<0)=0;
% Eout=uint8(EE);
% Eout=gf(Eout,8);
% InverseF=idiffusionmatrixfinield(Eout);
InverseP=ipositionscramble(P);
InverseF=ivaluescramble(InverseP,e,p1,q1);
InverseD=idiffusionmatrixfinield(InverseF);
% return;
% %���а��� 512*512
% P=rowcolpositionscramble(D);    
% InverseP=irowcolpositionscramble(P);
 
%��Կ����   q1+4;

% IverseD=ivaluescramble(InverseP,e,p1+10,q1+4);
InverseO=iorignal(InverseD);
cc=C.x;
dd=D.x;
ff=F.x;
pp=P.x;
ipp=InverseP.x;
iff=InverseF.x;
idd=InverseD.x;
oo=InverseO.x;
figure;
subplot(2,4,1),imshow(I);
subplot(2,4,2),imshow(uint8(cc));
subplot(2,4,3),imshow(uint8(dd));
subplot(2,4,4),imshow(uint8(ff));
subplot(2,4,5),imshow(uint8(pp));
subplot(2,4,6),imshow(uint8(ipp));
subplot(2,4,7),imshow(uint8(iff));
subplot(2,4,8),imshow(uint8(idd));
figure,imshow(uint8(oo))
% imwrite(uint8(ff),'encryptedbarb256.bmp');


%��512*512��ͼ����зֿ鴦��
% k=[1 2 4 8 16 32 64 128];
% time=256/k(1);
% for i=1:m
%     for j=1:n
%     end    
% end    
