function [flag,gcd]  = is_coprime(x,y)
% �ж����������Ƿ���
%���:
%flag : �Ƿ���
% gcd : x��y�����Լ��

%����:
%x,y:����������
 %x,y,����������
 if x<y
       tmp =x ;
       x=y;
       y=tmp;
 end   
 
 %�����̷��ж�
 while(true)
      z =mod(x,y);
      if(z==0)
          break;
      else
           x=y;
           y=z;
     end   
 end   
 if (y==1)
       flag =true;
       gcd=1;
 else
       flag =false;
       gcd=y;
 end   