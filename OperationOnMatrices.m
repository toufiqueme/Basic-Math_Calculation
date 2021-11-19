 
clc

%.....DETERMINING UNIQUE ELEMENTS.....%


x = [5 9 8; 4 5 6; 7 8 9];
y = unique(x); %how many unique elements in x;

y = unique(x(1:2,:)); %how many unique element in first and second rows

y = unique(x(:,1:2)); %how many unique elements in first and second colomn

[c, ia] = unique(x); %unique elements in rows and colomns. 
%here c = unique values and ia=colomn wise position;

[c ia ib] = unique(x); %now lets talk about ib;

% 5 = c(2); ib = 2;
% 4 = c(1); ib = 1;
% 7 = c(4); ib = 4;
% 9 = x(6); ib = 6;

%and so on...


%.....DETERMINING MEMBERSHIP OF ELEMENTS OF MATRIX.....%

x = [x; 5 9 8]; %this will give 4x4 matrix;
unique(x,'rows'); %how many unique rows present in x;

x = [5 9 8; 4 5 6; 8 7 9];
ismember(5,x); %does 5 is a member of x? ans is yes

ismember(x,5); %which position of x are equal to 5. set the 1 if the value= 5 otherwise 0.

a = [4 5 6];
ismember(a,x); %4 5 6 are members of x; so return logical 1 1 1

[C ia] = ismember(a,x); %c = value and ia = position of the value (colomn wise)

[C ia] = ismember([5 9 8],x,'rows'); %does [5 9 8] is the rows of matrix x? if yes return 1

[C ia] = ismember([5 9 8],x(1:2,:),'rows'); %does [5 9 8] is the rows of matrix x between colomn 1 and 2? if yes, return 1

y = [5 9 8];
isequal(x,y); %does x and y matrix equal? if yes return 1 otherwise 0;

isequal(x(1,:),y); %does first row of x = y? 
isequal(x(1,:),y,x(1,:)); %first row of x,y and x are equal? 

%......SHIFTING MATRIX ELEMENTS.....%

A = [1:10; 11:20; 21:30; 31:40; 41:50; 51:60 ];
circshift(A, [0, 2]); %last 2 colomns will be shifted front;

circshift(A, [0, -2]); %first 2 will be shifted in last.

circshift(A, [2, 0]); %3rd and 4th row will shifted in front.
circshift(A, [-2, 0]);


%......DETEREMINANT, INVERSE AND DIAGONAL ELEMENTS.....%

a = [4 5 6; 8 9 7; 8 7 9];
inv(a); %inverse of a;

a^-1; %same as inv() function

det(a); %detereminat of a
diag(a); %diagonal of a

v = [1 2 8 7 9];
 diag(v);
 
 diag(v,1); %first colomn will be set as 0 
 diag(v,2) ;%first 2 colomn will be set as 0;
 
 %.....RELATIONAL OPERATIONS......%
%  
%   B = [5 8 7]
%   B = [5 8 7;B]
% A<=B
 
 A = [5 6 9];
 ge(A,6); %greater than or equal to 6; this will return 0 1 1;
 
 A >= 6;% same as ge() function

 
X = A(ge(A,6)); %value of which elements are greater than or equals to 6. output: 6,9

B = [5 8 7];

ge(A,B); %element wise greater than or equals.

B = [5 8 7;B] ;
ge(A,B);

A >= B;
gt(A,B); %greater than or equal to

le(A,B); %less than or equal to

lt(A,B); %less than

ne(A,B); %negation

C = 'c'; %C is a string

A = 'abc';
ne(A,C) %negation of A and C;

%.....COMMONLY USED MATRICES.....%

zeros(5); %zero matrix of type 5x5

zeros(5,2); %zero matrix of type 5x2

ones(5) ; %ones of matrix type 1x1

magic(5); %5x5 matrix of magic number

magic(3); %3x3 matrix of magic number


%......SORTING MATRIX VALUES........%

a = [1 5 8 7 4 5 2 1 4 9 6 45];
sort(a);

sort(a,'descend');

[b, b1] = sort(a,'descend') ;%b = value and b1 = position;

 a = [8 7 9 5; 4 5 8 7; 1 2 4 5];
 sort(a); %colomn wise sorting
 
 sort(a,2); %row wise sorting
 
%  sort(a,2,'descent');
 
%  [b b1] = sort(a,2,'descent') ;
 
 a = [string('hello') string('world') string('Nouman') string('Azam')];
 
 sort(a);

 %.....SIZE AND LENGTH FUNCTION.....%
 
 
 A = [1 2 3; 4 5 6; 7 8 9];
 
 size(A); %3x3 matrix
 
 [row col] = size(A); %size of row and col
 
 A = [1 2 3 4; 4 5 6 6 ; 7 8 9 7];
 
 [row col] = size(A);
 
 length(A);
 
 a = 'how are you man';
 length(a);
 
%  whos;
 
 a = string('how are you man');
 length(a);
 
 strlength(a);
 
%  whos;
 
 %.......CONCATENITING MATRICES......%
 
  A = rand(3);
   B = rand(1,3);
   
   C = [A;B]; %concateniting A and B
   
   B = rand(3);
   
   C = [A B] ;
   
   
   %....FINDING NON ZERO ELEMENTS.....%
   
   X = [0 0 1 2; 5 4 0 6; 8 7 9 0];
   
   find(X); %find indices of non zero elements colomn wise
   
   find(X,3); %returns the first 3 indices corresponding to the nonzero elements in X
find(X,3, 'Last'); %position of last 3 non zero indices

[row, col] = find(X);

 [row, col] = find(X,3);
 
 
 
 %.....FREQUENCIES OF VALUES WITHIN VECTOR.....%
 
 X = [4 4 4 5 5 5 8 9 8 7 8 8 7];
 
 tabulate(X) ; %count of each elements and their percentage as well.
 
 X = [4 5 5; 8 8 7; 9 6 6];
tabulate(X(1,:));

tabulate(X(:,1));
tabulate([4 4 4 5 5 5 6 6 6 3 3 2 1 4 5]);

   
   

 
 























