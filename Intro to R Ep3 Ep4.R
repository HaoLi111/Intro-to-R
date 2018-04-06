# numeric variable
a=1
class(a)
a=as.integer(a)
a
class(a)
mode(a)
str(a)
structure(a)
# vector
b=c(1,2,2,42,2,31,1,3,13e2,3,1,3,NA,31,3)
b
class(b)
mode(b)
#NULL and  NA
C=NULL
length(C)
C
C=NA
length(C)
#characters/ string
d=c('This','is ','a ','string','vector')
d
e=c('1213','121')
class(e)
e
b[1]
b[0]
f = numeric(10)
f
#Boolean variable
g = TRUE
g
class(g)
mode(g)
g = 1<2
g
g = 1>2
g <- 1==1
g

#index of vecto
length(d)
d[1]
d[2]
d[3]
d
d[length(d)]
d[-1]#exclude
d[-3]
d[c(2,5)]

#Boolean vectors

a= c(F,T,F,F,T)
a
d[a]
my_string = d[4]
my_string
my_string[2]
class(my_string)
as.factor(d)
as.factor(my_string)

d[6] = 'This'
as.factor(d)

#Define sequences
a = rep(30, 10)
a
b=rep(10,30)
C  = rep(each = 30, x = 10)
C
b
print(b)
b==C
identity(b)==identity(C)
C[length(C)] = 11
C
b == C
any(b!=C)
?rep()
d = 1:100
d = c(1:29,77:100)
diff(d)
e = seq(from = .1, to = 101, by = .1)
length(e)
seq_along(e)
1:length(e)

#Fibonacci Sequence

Fib = numeric(100)
Fib[c(1,2)] <-1
Fib[-c(1,2)]<-NA
Fib
for(i in seq_along(Fib)){
  if (is.na(Fib[i])){
    Fib[i]<-Fib[i-1]+Fib[i-2]
  }
}
Fib
Fib<-as.integer(Fib)
Fib

x=seq(from =-5,to=5,by=.1
      )
y=x^2
y
plot(x,y,type = 'l ')
#matrix
m = matrix(1:9,3)
m1 = matrix(1:25,5)
m1
m2 = matrix(1:12,ncol = 12)
m2
m3 = matrix(1:12,nrow = 3)
m3
m4 = matrix(1:12,ncol =4 ,byrow = T)
m4
m4[,2]
m4[,1]
m4[,c(2,4)]
m4[1:2,3:4]
v = as.vector(m)
v
v4 = as.vector(m4)
v4
t(m4)
v4 = as.vector(t(m4))
v4

#Array
a =  1:8
class(a)
dim(a) = c(2,2,2)
a

#Index

a[1,2,1]
a[,,1]
a[1,,]
vec =  c(a = 1,b  = 2)
vec
vec["a"]
a = 2
a
vec["a"]
vec[2]
vec["b"]

#list
mylist<-list(a = 1,
             b = 2,
             c = 'if you get a lot of contents',
             d = 'you would better put it like this')
mylist
mylist[1]
mylist$a

mylistoflist<-list(firstlist =mylist, list(1,2))
mylistoflist 
str(mylistoflist)
mylistoflist[[1]]
mylistoflist$firstlist
mylistoflist$firstlist[1]
mylistoflist[[1]]$a
a = 2
a
mylistoflist[[1]]$a

#data frame
data()

volcano
iris
str(iris)
summary(iris)
a = c(1,32,2,1,3,13,1,21,21,211,31323132,11,2,11,2,1,3,1,1)
b = seq_along(a)+32+runif(length(a),1)
mydata= data.frame(a = a,b = b)
mydata
a
b
remove(a)
remove(b)
a
b
attach(mydata)
a
detach(mydata)
a
plot(iris)
plot(mydata)

plot(mydata[,1],mydata[,2])
plot(mydata[,2],mydata[,1])

plot(iris$Sepal.Width,iris$Sepal.Length)
plot(iris[,1:4])
plot(iris[,-ncol(iris)])
iris[,-ncol(iris)]

iris[iris$Species=='setosa',1:4]
subset(iris,Species == 'setosa',)
