%.................Handeling Random Number..........%
clc
rand(5,1); %this will generate 5x1 random matrix

randn(5); %this will generate 5x5 random matrix

randperm(9); %this will generate a random permutation of 9x9 matrix

randperm(9,3); %this will generate a random permutation of 9x3 matrix;

2 + randperm(5,3); %this will generate a random permutation of 5x3
%but this time all the elements are >=3.

randi(5); %this will generate a random integer between 1 to 5;

randi(5,3); %this will generate 3x3 random integer with max value of any index is 5;

randi(5,3,9); %this will generate 3x9 random integer with max value of any index is 5;

x = randi(5,3,2); %3x2 matrix with max value 5 and store it in x variable.

x = 1+randi(4,3,2);



%...........CROSS AND DOT PRODUCT...............%

c = [4 5 6];
d = [5 5 5];

dot(c,d); %dot product between c and d;

w = c.*d; %element wise multiplication;
sum(w); %now this will compute sum of w. morever it's same as dot product.

 A = [1 2 3; 4 5 6 ;7 8 9];
 B = [9 8 7;6 5 4;3 2 1];
 
 dot(A,B) ; %colomn wise dot product;
 dot(A,B,2); %row wise dot product
 
  cross(A,B); %colomn wise cross product
  
cross(A,B,2); %row wise cross product

% A = rand(4);
% B = rand(4);
% 
% cross(A,B);
% 
% % A = rand(4,4);
% % B = rand(4,4);
% % cross(A,B) 


%..........BASIC LOGICAL OPERATION (AND, OR, NOT)..........%

A = [1 5 8 7 0];
B = [1 1 0 2 2 ];

and(A,B);  %performing and operation
A & B; %same as previous.

and(A,0); %and operation between a and 0;

and(A,1);

or(A,B); %or operation

A(3) = 0; %setting 3rd element of as 0
or(A,B); %performing or operation

 A | B; %A or B
 
 not(A); %performing not operation
 
 ~A; %same as previous;


 
 %.............SIGN AND ABSOLUTE FUNCTION.......%
 
 sign(+6); %This will return 1 for plus sign
 sign(0); %return 0;
 
 sign(-2);  %it will return -1 for minus sign.
 
 sign(3+6i); %this will return absolute value as a+bi
 abs(-0); %it will return 0;
 
 abs(3+6i);
 
 sign([10 0 +10 -10 ]); %it will return element wise sign of the element.
 
 
 
 %..................CONVERTING NUMBERS BETWEEN BASE.......%
 
 dec2base(300,2); %decimal to binary
 A = [5 8 9 7];
 
 dec2base(A,2); %element wise decemal to binary
 
 base2dec('10000',2); %binary to decimal;
 
 base2dec('ff',16); %hexa to dec.
 
 x = base2dec('1111',2); %binary to dec and store it in x;
 
 dec2base(x,16) %dec to hexa 
 
 
 
 
 



