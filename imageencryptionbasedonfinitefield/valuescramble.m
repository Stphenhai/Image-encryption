function value=valuescramble(C,e,p1,q1)
%�û�����ʽ ���任��һ����ֵ���ҡ�
value=(((C+e).^59+(C+e).^209+(C+e).^254).^(q1)).^(-p1+255);
% value=((C+e).^59+(C+e).^209+(C+e).^254).^(q1/p1);