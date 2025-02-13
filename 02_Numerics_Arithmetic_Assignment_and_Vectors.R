#R for Basic Math
#Arithmetic
2+3
2+2+2
3-2
3-1-1
3*3
2*1*3
14/6
14/6/1
14(6+5)
3^2
3**2
sqrt(10)
sqrt(x=3)

#Mathematical Equation
10^2+(3*60/8)-3
5^3*(6-2)/(61-3+4)
2^(2+1)-4+64^((-2)^(2.25-1/4))
((0.44*(1-0.44))/34)^(1/2)

#Logarithms and Exponentials
log(x=243,base = 3)
exp(x=3)
log(x=2)
log(x=20.089)

#E-Notation
1495467890987654567

#Exercise 2.1
#Using R, verify that
a = 2.3
((6*a)+42)/3^(4.2-3.62)

#Which of the following squares negative 4 and adds 2 to the result?
(-4)^2+2
-4^2+2
(-4)^(2+2)
-4^(2+2)

#Using R, how would you calculate the square root of half of the average of the numbers 25.2, 15, 16.44, 15.3, and 18.6?
x = c(25.2,15,16.44,15.3,18.6)
sqrt(mean(x)/2)

#Find loge 0.3.
log(0.3)

#Compute the exponential transform of your answer to (d).
d=exp(12)
d

#Identify R's representation of ???0.00000000423546322 when printing this number to the console
 ???0.0000000042354632


#Assigning Objects
x<- -5
x
x = x+1
x
my_number =45.2
y<- my_number*x
y
?is()

#Exercise 2.2
#Create an object that stores the value 32 � 41/8.
a = (3^2)*(4^(1/8))
a

#Overwrite your object in (a) by itself divided by 2.33. Print the result to the console.
b = 2.33
a = a/b
a

#Create a new object with the value ???8.2 � 10^???13
c = -8.2*10^(-13)

#Print directly to the console the result of multiplying (b) by (c).
b*c


#Vectors
#creating a Vector
myvec <- c(1,3,1,42,13,23)
myvec

foo = 3.14
myvec2 <- c(3,4,5,2,3,foo)
myvec2

myvec3 <- c(myvec,myvec2)
myvec3

#Sequences
3:27

foo<-3
bar<- foo:6-4
bar

#Sequences with seq
seq(from=3,to=27)
seq(from=3,to=27,by=4)
seq(from=3,to=27,length.out=40)

foo <- 5.3
myseq <- seq(from=foo,to=(20.3-1),by=3.1)
myseq

myseq2 <- seq (from=foo,to=(18),length.out=100)
myseq2

#Repetition
#Repetition with rep
rep(x=1,times=4)
rep(x=c(3.4,2,5),times=5)

rep(x=1,each=4)
rep(x=c(3.4,2,5),each=5)

rep(x=c(3.4,2,5),times=2,each=3)

foo <- 4
c(3,rep(x=2,times=foo,each=2),seq(from=1,to=10,by=5),seq(from=1,to=10,length.out=5))

#Sorting with sort
sort(x=c(2,3,5,61,3,1,5,8,12,8),decreasing = FALSE)
sort(x=c(2,3,5,61,3,1,5,8,12,8),decreasing = TRUE)

x<-c(2,12,4,6,8,34,7)
sort(x,decreasing =FALSE)
sort(x)

foo <- seq(from=4.3,to=5.5,length.out=8)
foo
bar <- sort(x=foo)
bar
sort(x=c(foo,bar),decreasing=FALSE)

#Finding a vector with length
length(x=c(3,2,9,1))
length(x=5:13)

foo <- 4
x1 <- c(3,8.3,rep(x=32,times=foo),seq(from=-2,to=1,length.out=foo))
length(x=x1)
bar

#Exercise 2.3
#Create and store a sequence of values from 5 to ???11 that pro-gresses in steps of 0.3.
a <- seq(from=5,to=-11,length.out=57)
a

#Overwrite the object from (a) using the same sequence with the order reversed.
b=rev(a)
b
#Repeat the vector c(-1,3,-5,7,-9) twice, with each element repeated 10 times, and store the result. Display the result sorted from largest to smallest.
c <- rep(x=c(-1,3,-5,7,-9),each=2,times=10)
c

#Create and store a vector that contains, in any configuration, the following
#A sequence of integers from 6 to 12 (inclusive)
d <-6:12
#A threefold repetition of the value 5.3
rep(x=5.3,each=3)
#The number -3
d<- -3
#A sequence of nine values starting at 102 and ending at the number that is the total length of the vector created in (c)
c = length(c)
d <- seq(from=102,to=c)
d
#Confirm that the length of the vector created in (d) is 20.
d <-length(d)
d

#Subsetting and Element Extraction
myvec <- c(2,3,4566,3,4,56,7,8,9,0)
length((myvec))
myvec[1]

x <- myvec[1]
x

#Exercise 2.4
#Create and store a vector that contains the following, in this order
#A sequence of length 5 from 3 to 6 (inclusiv)
a <- seq(from=3,to=6,by=0.7)

#A twofold repetition of the vector c(2,-5.1,-33)
a <- rep(x=c(2,-5.1,-33),each=2)

#The value (7/42) + 2
(7/42) + 2

#Extract the first and last elements of your vector from (a), storing them as a new objet
b <- c(a[1:2],a[4:5])
b

#Store as a third object the values returned by omitting the first and last values of your vector from (a)
c <-c(a[3])
c

#Use only (b) and (c) to reconstruct (a).
d<-c(b[1:2],c[1],b[3:4])
d

#Overwrite (a) with the same values sorted from smallest to largest 
e <- sort(a,decreasing = FALSE) 

#Use the colon operator as an index vector to reverse the order of (e), and confirm this is identical to using sort on (e) with decreasing=TRUE.
f <- rev(e[1:5])
f <- sort(a,decreasing = TRUE)

#Create a vector from (c) that repeats the third element of (c) three times, the sixth element four times, and the last ele-ment onc
g<-c(a[1:2],rep(a[3],each=3),rep(a[6],each=4),a[-1])
g

#Create a new vector as a copy of (e) by assigning (e) as is to a newly named object. Using this new copy of (e), overwrite the fifth to the seventh (inclusive), and the last element with the values 99 to 95 (inclusive), respectiv
h<- e
h[1] =99
h[7] =95
h

#Vector-Oriented Behavior
foo <-5.5:0.5
foo
foo-c(2,4,6,8,10,12)
bar<-c(1,-1,2)
foo*bar
baz<-c(1,-1,0.5,-0.5)
foo*baz

qux <- 3
foo+qux

foo
sum(foo)
prod(foo)

foo
foo[c(1,3,5,6)] <-c(99,-99)
foo

#Exercise 2.5
#Convert the vector c(2,0.5,1,2,0.5,1,2,0.5,1) to a vector of only 1s, using a vector of length 3.
a <-c(2,0.5,1,2,0.5,1,2,0.5,1)
cat(c(a[1:9]==1))

#The conversion from a temperature measurement in degrees Fahrenheit F to Celsius C is performed using the following equation:
c = (5/9)*(f-32)
f<-c(45, 77, 20, 19, 101, 120,212 )
c

#Use the vector c(2,4,6) and the vector c(1,2) in conjunction with  * to produce the vector c(2,4,6,4,8,12)
a <-c(2,4,6)
b <-c(1,2)
c <- c(a*b[1],a*b[2])
c

#Overwrite the middle four elements of the resulting vector from with the two recycled values -0.1 and -100, in that order.
c[c(2,3,4,5)]<-c(-0.1,-100)
c
