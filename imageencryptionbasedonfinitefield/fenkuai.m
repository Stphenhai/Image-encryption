% function [I1,I2,I3,I4]=fenkuai(I);
% height =size(I,1);
% width=size(I,2);
% region_size = 256;  %�����ߴ�С  
% numRow = round(height/region_size);%ͼ���ڴ�ֱ�����ֳܷɶ��ٸ���СΪregion_size  
% numCol = round(width/region_size);%ͼ����ˮƽ�����ֳܷɶ��ٸ���СΪregion_size  
% % I=imresize(I,[numRow*region_size,numCol*region_size]);%���������µ�ͼ���Է�ֹtemp�±�Խ��
% t1 = (0:numRow-1)*region_size + 1;
% t2 = (1:numRow)*region_size;  
% t3 = (0:numCol-1)*region_size + 1; 
% t4 = (1:numCol)*region_size;
%% �Ӻ��� �ֿ麯����tΪÿ��ı߳���IΪҪ�ֿ��ͼ��numΪ���صڼ����
function fv=fenkuai(t,I,num)
[~,N]=size(I);
N=N/t;
x=floor(num/N)+1;      %�ڼ�����
y=mod(num,N);           %�ڼ�����
if y==0
    x=x-1;
    y=N;
end
fv=I(t*(x-1)+1:t*x,t*(y-1)+1:t*y);