#PART 1

#a. 

# Creating vector
vector_a <- c(6, 9, 7, 3, 6, 7, 9, 6, 3, 6, 6, 7, 1, 9, 1)

# i. Those equal to 6
equal_to_6 <- vector_a[vector_a == 6]

# ii. Those greater than or equal to 6
greater_than_equal_to_6 <- vector_a[vector_a >= 6]

# iii. Those less than 6 + 2
less_than_6_plus_2 <- vector_a[vector_a < 6 + 2]

# iv. Those not equal to 6
not_equal_to_6 <- vector_a[vector_a != 6]


#b.

# Deleting first three elements
vector_b <- vector_a[-(1:3)]

# Creating 2 x 2 x 3 array
array_b <- array(vector_b, dim = c(2, 2, 3))

# i. Those less than or equal to 6 divided by 2, plus 4
condition_i <- array_b[array_b <= 6 / 2 + 4]

# ii. Those less than or equal to 6 divided by 2, plus 4, after increasing every element by 2
array_b <- array_b + 2
condition_ii <- array_b[array_b <= 6 / 2 + 4]


#c.

# Creating 10 x 10 identity matrix / 10
matrix_c <- diag(10) / 10

# Confirming specific locations of elements equal to 0
zero_locations <- which(matrix_c == 0, arr.ind = TRUE)


#d.

# Checking TRUE values in array_b
logical_values <- array_b <= 6 / 2 + 4
any_true_values <- any(logical_values)
all_true_values <- all(logical_values)

# Extracting diagonal elements of matrix_c
diagonal_elements <- matrix_c[cbind(1:10, 1:10)]
no_true_entries <- any(diagonal_elements)


#PART 2

#a.

# Storing vector
foo <- c(7, 1, 7, 10, 5, 9, 10, 3, 10, 8)

# Identifying elements greater than 5 OR equal to 2
elements_condition_a <- foo[foo > 5 | foo == 2]


#b.

# Storing vector
bar <- c(8, 8, 4, 4, 5, 1, 5, 6, 6, 8)

# Identifying elements less than or equal to 6 AND not equal to 4
elements_condition_b <- bar[bar <= 6 & bar != 4]


#c.

# Identifying elements satisfying conditions in foo and bar
common_elements <- intersect(elements_condition_a, elements_condition_b)


#d.

# Storing third vector
baz <- foo + bar

# i. Elements greater than or equal to 14 but not equal to 15
condition_di <- baz[baz >= 14 & baz != 15]

# ii. Elements of vector obtained via element-wise division that are greater than 4 OR less than or equal to 2
condition_dii <- (baz / foo)[(baz / foo) > 4 | (baz / foo) <= 2]


#e. Confirming using the long version in all preceding exercises performs only the first comparison (results match the first entries of previously obtained vectors).
