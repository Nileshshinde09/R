# 1 create the following matrix() function with data as (1,3,5,2,4,6) name it A.
# Answer 👇👇👇👇
A <- matrix(c(1,3,5,2,4,6),nrow = 2,ncol = 3,byrow = TRUE)
print(A)

#[,1] [,2] [,3]
#[1,]    1    3    5
#[2,]    2    4    6


# 2 Using rbind() create the following matrix. Name it B.
# 1   2   3
# 4   5   6
# Answer 👇👇👇👇
B <- rbind(1:3,4:6)
print(B)

#[,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6

# 3 create above matrix using cbind function 
# Answer 👇👇👇👇
C <- cbind(c(1,4),c(2,5),c(3,6))
print(C)

#[,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6

# 4 Find the number of rows and columns of the following matrix , after creating the matrix D.

D <- matrix(c(1,3,4,5,4,3,100,20,90,11,12,13),nrow = 4,ncol = 3,byrow = TRUE)
print(D)
# Answer 👇👇👇👇
print(dim(D))

# [,1] [,2] [,3]
# [1,]    1    3    4
# [2,]    5    4    3
# [3,]  100   20   90
# [4,]   11   12   13

# Dimension  👇👇
#         [1] 4 3

# Find the number of rows of mtrix A.
print(nrow(A))
#[1] 2

# Find the number of cols of mtrix B.
print(ncol(B))
#[1] 3

# ➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖


# 0.3   91.0    -4.2
# 4.5   0.1     8.2
# 55.3  105.5   27.9

#create 3 matrices X1,X2 and X3 from the above matrix

# Store Above matrix in temp
temp <- matrix(c(0.3,91.0,-4.2,4.5,0.1,8.2,55.3,105.5,27.9),nrow = 3,ncol = 3,byrow = TRUE)
print(temp)


# i) X1 should contain rows 1 and 2
# Answer 👇👇👇👇
X1 <- temp[c(1,2),]
print(X1)
#[,1] [,2] [,3]
#[1,]  0.3 91.0 -4.2
#[2,]  4.5  0.1  8.2


# ii) X2 should contain columns 2 and 3
# Answer 👇👇👇👇
X2 <- temp[,c(2,3)]
print(X2)

#[,1] [,2]
#[1,]  91.0 -4.2
#[2,]   0.1  8.2
#[3,] 105.5 27.9


# iii) X3 should be a 3X3 matrix which contains only the diagonal elements of the above matrix.The rest of the elements should be 1
# Answer 👇👇👇👇
X3 <- matrix(c(diag(temp)[1],1,1,1,diag(temp)[2],1,1,1,diag(temp)[3]),nrow = 3,ncol = 3)
print(X3)
print(dim(X3))
# [,1] [,2] [,3]
# [1,]  0.3  1.0  1.0
# [2,]  1.0  0.1  1.0
# [3,]  1.0  1.0 27.9

# Dimensions of X3
# [1] 3 3


# ➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖



# a. Construct and store a 4x2 matrix that's filled row-wise with the values
# 4.3,3.1,8.2,8.2,3.2,0.9,1.6 and 6.5 in that order.
# Answer 👇👇👇👇

MAT1 <- matrix(c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5),nrow = 4,ncol=2, byrow = TRUE)
print(MAT1)

#[,1] [,2]
#[1,]  4.3  3.1
#[2,]  8.2  8.2
#[3,]  3.2  0.9
#[4,]  1.6  6.5

# b. Confirm the dimensions of the matrix from (a) are 3X2 if you remove any one row
# Answer 👇👇👇👇
  dim_mat = dim(MAT1[-1,])
#Removed First row 👆
print(dim_mat)
#[1] 3 2


# c. Overwrite the second column of the matrix from (a) with that same column sorted from smallest to largest.
# Answer 👇👇👇👇

MAT1[,2]=sort(MAT1[,2])
print(MAT1)
#     New Matrix   🙅 🙅    Old Matrix
# [,1] [,2]        🙅 🙅    [,1] [,2]
# [1,]  4.3  0.9   🙅 🙅    [1,]  4.3  3.1
# [2,]  8.2  3.1   🙅 🙅    [2,]  8.2  8.2
# [3,]  3.2  6.5   🙅 🙅    [3,]  3.2  0.9
# [4,]  1.6  8.2   🙅 🙅    [4,]  1.6  6.5


#d. What does R return if you delete the fourth row and the first column
#   from (c)? Use matrix to ensure the result is a single-column matrix 
#   rather than a vector.

print(matrix(MAT1[-4,-1],ncol = 1))
# Answer 👇👇👇👇
# [,1]
# [1,]  0.9
# [2,]  3.1
# [3,]  6.5


# e. Store the bottom four elements of (c) as a new 2X2 matrix.
# Answer 👇👇👇👇
NEW_MAT =MAT1[c(3,4),]
print(NEW_MAT)

# [,1] [,2]
# [1,]  3.2  6.5
# [2,]  1.6  8.2

print(dim(NEW_MAT))
# [1] 2 2

# f. Overwrite, in this order, the elements of (c) at positions (4,2) ,
# (1,2),(4,1), and (1,1) with -1/2 of the two values on the diagonal of (e).
# Answer 👇👇👇👇

MAT1[c(1,4),c(1,2)]=diag(NEW_MAT)-1/2
print(MAT1)

# [,1] [,2]
# [1,]  2.7  2.7
# [2,]  8.2  3.1
# [3,]  3.2  6.5
# [4,]  7.7  7.7

#  i) Calculate the following:
  #  🙄🙄🙄

# Answer 👇👇👇👇
first_MAT<- matrix(c(1,2,2,4,7,6),nrow = 3,ncol = 2,byrow = TRUE)
second_MAT<- matrix(c(1:6)*10,nrow = 3,ncol = 2,byrow = TRUE)
result_MAT <- 2/7*(first_MAT-second_MAT)
print(result_MAT)

# [,1]       [,2]
# [1,]  -2.571429  -5.142857
# [2,]  -8.000000 -10.285714
# [3,] -12.285714 -15.428571

# ii) Store these two matrices
#  🙄🙄🙄

# Answer 👇👇👇👇

A=matrix(c(1,2,7),ncol = 1)
B=matrix(c(3,4,8),ncol = 1)
  
#  Which of the following multiplication are possible ? For those
#  For that are,compute the result.
# Answer 👇👇👇👇
# i)
  print(A*B)
  # [,1]
  # [1,]    3
  # [2,]    8
  # [3,]   56
# ii)
  print(t(A)*B)
  #Error in t(A) * B : non-conformable arrays
  
   print(t(A)%*%B)
   # [,1]
   # [1,]   67
  
# iii)
  print(t(B)*(A*t(A)))
  #Error in A * t(A) : non-conformable arrays
   
  print(t(B)%*%(A%*%t(A)))
  #[,1] [,2] [,3]
  #[1,]   67  134  469
  
# iv)
  print((A*t(A))*t(B))
  #Error in A * t(A) : non-conformable arrays
   
  print((A%*%t(A))%*%t(B))
  #Error in (A %*% t(A)) %*% t(B) : non-conformable arguments
# v)
  print(((B*t(B))+(A*t(A))-100/3)^-1)
  #Error in B * t(B) : non-conformable arrays
  #Error in A * t(A) : non-conformable arraysError in A * t(A) : non-conformable arrays
  
  print(solve((B%*%t(B))+(A%*%t(A))-100/3))
  #[,1]   [,2]   [,3]
  #[1,]  36.68 -45.32   8.28
  #[2,] -45.32  55.93 -10.22
  #[3,]   8.28 -10.22   1.88


  
# iii) For
  #Confirm that A^-1.A-I4 provides 4X4 matrix of zeros.
  # Answer 👇👇👇👇
  A=matrix(0,ncol = 4,nrow = 4,byrow = TRUE)
  A[c(1,6,11,16)]=c(2,3,5,-1)
  print(A)
  # [,1] [,2] [,3] [,4]
  # [1,]    2    0    0    0
  # [2,]    0    3    0    0
  # [3,]    0    0    5    0
  # [4,]    0    0    0   -1
 
  print(solve(A)%*%A-matrix(c(1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1),nrow = 4,ncol = 4,byrow = TRUE ))
  
  #[,1] [,2] [,3] [,4]
  #[1,]    0    0    0    0
  #[2,]    0    0    0    0
  #[3,]    0    0    0    0
  #[4,]    0    0    0    0
