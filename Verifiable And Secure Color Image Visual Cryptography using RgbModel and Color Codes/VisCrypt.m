
function [share1, share2, share3, vshare, share123] = VisCrypt(inImg,logo)
disp('Original image size');
s = size(inImg);
share1 = zeros((s(1)), (s(2)));
share2 = zeros((s(1)), (s(2)));
share3 = zeros((s(1)), (s(2)));
vshare = zeros((s(1)), (s(2))); 

%%White Pixel Processing
%White Pixel share combinations
disp('White Pixel Processing...');
s1a=[0 1 0 1];
s1b=[0 1 0 1];
s1c=[0 1 0 1];
[x y] = find(logo == 1);
len = length(x);

for i=1:len
    a=x(i);b=y(i);
    pixShare=generateShare(s1a,s1b,s1c);
    A0=pixShare(1,1:4);
    A1=reshape(A0,2,2);
    share1((2*a-1):(2*a),(2*b-1):(2*b))=A1;
    
    A0=pixShare(1,1:4);
    A1=reshape(A0,2,2);
    share2((2*a-1):(2*a),(2*b-1):(2*b))=A1;
    
    A0=pixShare(1,1:4);
    A1=reshape(A0,2,2);
    share3((2*a-1):(2*a),(2*b-1):(2*b))=A1;
    
    A0=pixShare(2,1:4);
    A1=reshape(A0,2,2);
    vshare((2*a-1):(2*a),(2*b-1):(2*b))=A1;
    
end


%%White Pixel Processing
%White Pixel share combinations
disp('White Pixel Processing...');
s1a=[0 1 0 1];
s1b=[0 1 0 1];
s1c=[0 1 0 1];
[x y] = find(inImg == 1);
len = length(x);

for i=1:len
    a=x(i);b=y(i);
    pixShare=generateShare(s1a,s1b,s1c);
    A0=pixShare(1,1:4);
    A1=reshape(A0,2,2);
    share1((2*a-1):(2*a),(2*b-1):(2*b))=A1;
    A0=pixShare(2,1:4);
    A1=reshape(A0,2,2);
    share2((2*a-1):(2*a),(2*b-1):(2*b))=A1;
    A0=pixShare(3,1:4);
    A1=reshape(A0,2,2);
    share3((2*a-1):(2*a),(2*b-1):(2*b))=A1;
end

%Black Pixel Processing
%Black Pixel share combinations
disp('Black Pixel Processing...');
s0a=[1 0 1 0];
s0b=[0 1 0 1];
s0c=[1 0 1 0];
[x y] = find(logo == 0);
len = length(x);

for i=1:len
    a=x(i);b=y(i);
    pixShare=generateShare(s0a,s0b,s0c);
    A0=pixShare(1,1:4);
    A1=reshape(A0,2,2);
    share1((2*a-1):(2*a),(2*b-1):(2*b))=A1;
    
    A0=pixShare(1,1:4);
    A1=reshape(A0,2,2);
    share2((2*a-1):(2*a),(2*b-1):(2*b))=A1;
    
    A0=pixShare(1,1:4);
    A1=reshape(A0,2,2);
    share3((2*a-1):(2*a),(2*b-1):(2*b))=A1;
    
    A0=pixShare(2,1:4);
    A1=reshape(A0,2,2);
    vshare((2*a-1):(2*a),(2*b-1):(2*b))=A1;
end

%Black Pixel Processing
%Black Pixel share combinations
disp('Black Pixel Processing...');
s0a=[1 0 1 0];
s0b=[0 1 0 1];
s0c=[1 0 1 0];
[x y] = find(inImg == 0);
len = length(x);

for i=1:len
    a=x(i);b=y(i);
    pixShare=generateShare(s0a,s0b,s0c);
    A0=pixShare(1,1:4);
    A1=reshape(A0,2,2);
    share1((2*a-1):(2*a),(2*b-1):(2*b))=A1;
    A0=pixShare(2,1:4);
    A1=reshape(A0,2,2);
    share2((2*a-1):(2*a),(2*b-1):(2*b))=A1;
    A0=pixShare(3,1:4);
    A1=reshape(A0,2,2);
    share3((2*a-1):(2*a),(2*b-1):(2*b))=A1;
end

share1231=bitor(share1,share2);
share123=bitor(share1231,share3);
share123 = ~share123;
share1=~share1;
share2=~share2;
share3=~share3;
vshare=~vshare;
disp('Share Generation Completed.');