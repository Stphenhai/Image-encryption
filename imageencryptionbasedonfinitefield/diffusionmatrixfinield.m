function cipherout=diffusionmatrixfinield(I,p2,q2,p3,q3)
% �������C 1 = [? k ] 256?256 , ?��F 2 8 �ı�ԭԪ�أ���i + j �� 255 ʱ��k =
% i + j��i + j > 255 ʱ��k = 512 ? i ? j, i,j = 0,1,������,255. �õ�����C
% clear,clc;
% I=imread('lena.bmp');
x = gf(0:255,8);
 I1=gf(I,8);
u=x(3);
% [m,n]=size(I);
m=256;
n=256;
C=x*x';
for i=1:m
 for j=1:n
         if(i+j-2<=255)
               k=i+j-2;
              C(i,j)=u.^k;
         else
              k=510-(i+j-2);
              C(i,j)=u.^k;
         end    
 end
end 
% ���ǿ��Եõ�����C�ǶԳ��ҿ���ģ�Ϊ������������Ѷȣ�����ѡȡ
% һ���û�����ʽg(x) = x 59 + x 149 + x 254 , �õ��µľ���C 1 = [g �� (?)], �� =
% q 2/p 2 ,
% ����(255,p 2 ) = 1,(255,q 2 ) = 1,(p 2 ,q 2 ) = 1,1 < p 2 < 2 10 ,�� �� (0,255),
% q2=1913;
% p2=19133;   
 D=((C.^59+C.^149+C.^254).^(q2)).^(-p2+255);
 D1=((C.^59+C.^149+C.^254).^(q3)).^(-p3+255);
%  I=gf(I,8);
cipherout=D*I1*D1';

% %��һ�������任��DSD
%  cipherouttemp=D*I1*D';
%  %�ڶ��������任   DSD
%  cipherout=D*cipherouttemp*D';
 
%   F=(D)^(-1);
%  plainout=cipherout*F;
%  subplot(2,2,1),imshow(I);
%  cc=C.x;
%  subplot(2,2,2),imshow(uint8(cc));
%  dd=D.x;
%  subplot(2,2,3),imshow(uint8(dd));
%  ci=cipherout.x;
%  subplot(2,2,4),imshow(uint8(ci));
%  pl=plainout.x;
%  figure,imshow((uint8(pl)));
 
 
%  F=(D)^(-1);
%  g=inv(D);  %��ʵ�Գƾ������
