clear;clc;

% I=imread('lake.tiff');     %512*512 ͼ��
% I=imread('boat256.tiff');      %256*256ͼ��
% I=imread('peper256.bmp');      %256*256ͼ��
I=imread('barb256.bmp');      %256*256ͼ��
% I=imread('goldhill256.bmp');      %256*256ͼ��
% I=imread('baboon256.bmp');      %256*256ͼ��
% I=imread('camera256.tiff');      %256*256ͼ��     ��Ϣ�أ�ԭͼ(7.0097)    ���ܺ��ͼ(7.9971)
% I(64,64)=128;            %����ֹ���  һ�����ز�ͬ
% [m,n]=size(I);
x = gf(0:255,8); % ����1*256һά������
% I=imread('lena.bmp');
[m,n]=size(I);
C=x(3).^double(I);
q1 = 127;
p1 = 181;
e = x(3)^127;
D=valuescramble(C,e,p1,q1);
%������èӳ������
P=positionscramble(D);
% % �ü�����
% for i=1:128
%     for j=1:128
%            P(i,j)=0;
%     end   
% end    

%�� �� �� �� �� �� �� ʵ �� �� �� �� ,������������ɢ�����ҡ�
%  ������ɢ��Կ  
q2=1021; p2=1019;  
q3=42787;
p3=332851;
F=diffusionmatrixfinield(P,p2,q2,p3,q3);
q22=40771;p22=332837;        %��Կp,q����һ���任 q22=40801;p22=332873; 
% InverseF=idiffusionmatrixfinield(F,p2,q2,p3,q22);
InverseF=idiffusionmatrixfinield(F, p2,q2,p3,q3);
InverseP=ipositionscramble(InverseF);
%��Կ����   q1+4;
% IverseD=ivaluescramble(InverseP,e,p1,q1);
e1=x(3)^17;
p11=590321;
IverseD=ivaluescramble(InverseP,e,p1,q1);
IverseO=iorignal(IverseD);
cc=C.x;
dd=D.x;
pp=P.x;
ff=F.x;
iff=InverseF.x;
ipp=InverseP.x;
idd=IverseD.x;
oo=IverseO.x;
figure;
subplot(2,4,1),imshow(I); title('ԭͼ');
subplot(2,4,2),imshow(uint8(cc));   title('��������ͼ��')
subplot(2,4,3),imshow(uint8(dd));  title('��ֵ���Һ��ͼ��');
subplot(2,4,4),imshow(uint8(pp));  title('λ�����Һ��ͼ��');
subplot(2,4,5),imshow(uint8(ff));   title('������ɢ���ͼ��'); 
subplot(2,4,6),imshow(uint8(iff));     title('��������ɢ���ͼ��');
subplot(2,4,7),imshow(uint8(ipp)); title('��λ�����Һ��ͼ��');
subplot(2,4,8),imshow(uint8(idd));   title('����ֵ���Һ��ͼ��');
figure,imshow(uint8(oo)) ;             title('���ܺ��ͼ��');
% imwrite(uint8(ff),'encryptedbarb256.bmp');
x=psnr(I,uint8(oo));
