df <- data.frame(
  roll_no = c(7,9,4,6),
  name = c("Sanika","Aditi","Ashu","Rushi"),
  Marks = c(90,97,87,92)
)
print(df)

#Accessing Elements
df$Name
df$roll_no

df[1,2]
df[,1]

df[["name"]]

colnames(df)         
colnames(df)[2]

df[, c("name", "Marks")]

df <- df[order(df$Marks), ]
print(df)

#Operations

df[df$Marks == 92, ]

df$Marks <- df$Marks * 1.1
df

df[df$Marks > 90 & df$roll_no >7, ] 