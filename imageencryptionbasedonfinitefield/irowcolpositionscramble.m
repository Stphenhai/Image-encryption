function outImg=irowcolpositionscramble(I)

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
%����
%�л���
%���ܣ�����w22(j)+1�а�ص���j��
f=I;
outImg1=I;
for j=1:n
      outImg1(:,j)=f(:,w22(j)+1);
end   
ff1=outImg1;
outImg=outImg1;
%�л���
%���ܣ�����w22(i)+1�а�ص���i��
for i=1:m
    outImg(i,:)=ff1(w11(i)+1,:);
end   