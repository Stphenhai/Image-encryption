function outImg=rowcolpositionscramble(I)
%%�û�����ʽ������    ���а��ơ�
%����(���任);
[m,n]=size(I);
y=gf(0:511,9);
m0=zeros(1,512);
for i=0:511
    m0(i+1)=i;
end  
w0=y(3).^double(m0);
 w0(512)=0;
w1=((w0)+(w0).^3+(w0).^33);
w11=w1.x;
w2=((w0)+(w0).^171+(w0).^341);
w22=w2.x;
f=I;
outImg1=I;
%���ܣ�����i�а��Ƶ���w11(i)+1��
for i=1:m
       outImg1(w11(i)+1,:)=f(i,:);
end    
% ff1=gf(f,8);
ff1=outImg1;
outImg=outImg1;
%���û�(���û�)
%�л���
%���ܣ�����j�а��Ƶ���w22(j)+1��
for j=1:n
        outImg(:,w22(j)+1)=ff1(:,j);
end 