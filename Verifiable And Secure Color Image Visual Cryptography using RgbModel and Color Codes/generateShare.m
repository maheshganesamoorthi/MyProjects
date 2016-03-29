
function out = generateShare(a,b,c)


a1 = a(1);
a2 = a(2);
a3 = a(3);
a4 = a(4);
b1 = b(1);
b2 = b(2);
b3 = b(3);
b4 = b(4);
c1 = c(1);
c2 = c(2);
c3 = c(3);
c4 = c(4);


in = [a
      b 
      c];
out = zeros(size(in));
randNumber = floor(1.9*rand(1));
if (randNumber == 0)
    out = in;
elseif (randNumber == 1)
   
    a(1) = a4;
    a(2) = a1;
    a(3) = a2;
    a(4) = a3;
    
    b(1) = b4;
    b(2) = b3;
    b(3) = b2;
    b(4) = b1;
    
    c(1) = c4;
    c(2) = c1;
    c(3) = c2;
    c(4) = c3;
          
    out = [a
           b
           c];   
end