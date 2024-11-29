rows=c("r1","r2")
cols=c("c1","c2","c3","c4")
M=matrix(c(2:9),nrow=2,byrow=TRUE,dimnames=list(rows,cols))
print("Original matrix:")
print(M)
output=as.vector(M)
print("1D array :")
print(output)

data1 <- c(1,2,3,4,5,6)
data2 <- c(60, 18, 12, 13, 14, 19)

result <- array(c(data1, data2), dim = c(4,2,3))
print(result)
