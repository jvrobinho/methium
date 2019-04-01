matrix_A = [ [1 2 3] ; [0 4 5] ; [0 0 6]]
matrix_A = convert(Array{Float64}, matrix_A)

b_vector = [7, 8, 9]
b_vector = convert(Array{Float64},b_vector)

x_vector = zeros(Float64, 3, 1)

k = size(matrix_A,1)
for i = k:-1:1
    x_vector[i] = (b_vector[i] .- sum(matrix_A[i,i:k] .* x_vector[i:k,]))/matrix_A[i,i]
    println("x", i, " value is: ", x_vector[i])
end
#= 
For debugging
display(matrix_A)
println()
display(b_vector)
println()
display(x_vector)
 =#