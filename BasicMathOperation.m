clc

clear all

gcd_of_2_numbers = gcd(10,20); %this will compute gcd between two number;

a = [10 20; 50 90];
b = [10 30;100 180];

gcd_of_2_matrix = gcd(a,b); %this will calculate element wise gcd of  the matrix

gcd_of_a_number_and_a_matrix = gcd(a,10); %this will compute element wise gcd of a and 10
%for example: gcd(10,10) = 10;  gcd(20,10) = 10; gcd(50,10) = 10;gcd(90,10_
%)=10;

lcm_of_2_numbers = lcm(100,10);

lcm_between_matrix_and_a_number = lcm(10,a); %same concept as gcd

primes_of_a_specific_number = primes(25);

check_whether_a_number_is_prime_or_not = isprime(25); %this will return logical output;

%check whether elements of matrix are prime or not

A = [1 2 3 4 5 6 7 8 9];
check_prime = isprime(A); %this will return the logical output corresponding element of the matrix;

product  = prod(A); %this will compute product of colomn wise element of a matrix;
%if we want to find the product row wise, we can use prod(a,2)

%computing permutation

permutation = perms([1 2 3]);

% perms([1 2 3 4])

permution_of_matrix = perms([5 6 ;8 9 ]);



%...........TRIGONMETRIC OPERATION.............%

sin(1); %sin(theta)
 asin(0.8415); %inverse sin
 
 asind(0); %inverse sin in degree.
 a = [1 2 3; 9 8 7];
 sin(a); %this will compute element wise sin(theta)
 
 %conversion from degree to radian and vice versa
 
 rad2deg(3.141);
 deg2rad(180);
 
 
 
 %............SET OPERATIONS.................%
 
 x = [5 9 8; 4 5 6;8 7 9];
  y = [5 9 8 10 11];
  
  intersection_of_2_matrix = intersect(x,y); %colomn wise intersection
  
  [C,ia] = intersect(x,y);
  %here C denotes the value and ia denotes the colomn wise position value
  
%   %row_wise_intersection
%   [c,d] = intersect(x,y,'rows');
  
  
  z = [5 9 8];
   [a,b] = intersect(x,z);% a= value, b = position
   
   union(x,y); %colomn wise union
   
   union(x,z, 'rows'); %row wise union;
   
   set_difference = setdiff(x,z,'rows'); %set difference between rows
   
   %.......COMPUTING STATISTICS FROM THE MATRICES............%
   
   a = [5 8 9;8 7 9;1 2 3]
   
   minimum_row_of_a_matrix = min(a);
   
   min(a'); %min of transpose of a;

   
   colomn_wise_minimum = min(a, [], 2); %per coloumn wise minimum
  [M, I] = min(a, [], 2); %M = value and I = index of colomn
  
  
  maximum_row_wise_value = max(a);
  
  maximum_colomn_wise_value = max(a,[],2);
  
   colomnwise_mean = mean(a);
   row_wise_mean = mean(a,2);
   
   colomn_Wise_variance = var(a);
   
   colomn_wise_standard_deviation = std(a);
   
   colomn_wise_sum = sum(a);
  
   colomn_Wise_median = median(a);
   
   prctile(a,25); %colomn wise calculation of percentile;
   prctile(a, [25 42], 2); %row wise calculation of percentile;
   
   mode(a); %colomn wise mode of a;
   
   min(min(a));
   
   
   

 

 