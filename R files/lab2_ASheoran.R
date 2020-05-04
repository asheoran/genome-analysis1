##Examples
##Vectors
SNPs<- c("AA","AA","GG","AG","AG","AA","AG","AA","AA","AA","AG")
SNPs

##Factors
SNPs_cat <- factor(SNPs)
SNPs_cat
table(SNPs_cat)
plot(SNPs_cat)
as.numeric(SNPs_cat)

##Matrices
Day1 <- c(2,4,6,8)
Day2 <- c(3,6,9,12)
Day3 <- c(1,4,9,16)
A <- cbind(Day1,Day2,Day3)
A
B <- rbind(Day1,Day2,Day3)
B
Day4 <- c(5,10,11,20)
C <- rbind(B,Day4)
C
A*10
A[1]
A[12]
A[ ,c(1,3)]
A[c(2,4), ]
t(A)

##DataFrames
Gene1 <- c(2,4,6,8)
Gene2 <- c(3,6,9,12)
Gene3 <- c(1,4,9,16)
Gene <- c("Day1","Day2","Day3","Day4")
RNAseq <- data.frame(Gene1, Gene2, Gene3, row.names= Gene)
RNAseq
RNAseq$Gene3
plot(RNAseq$Gene1,RNAseq$Gene3)
plot(RNAseq$Day,RNAseq$Gene3)
RNAseq$Gene <- c(5, 10, 15, 20)
RNAseq
RNAseq[,"Gene5"] <- c(1,2,3,3)
RNAseq
RNAseq["Day 4",] <- rbind(10,14,20,22,3)

##Checking on object types
x = 1
str(x)
a = "ATGCCCTGA"
str(a)
str(SNPs)
str(SNPs_cat)
str(B)
RNAseq <- data.frame(Gene1, Gene2, Gene3, row.names= Gene)
str(RNAseq)

##Loading a truncuated 23andMe file
SNP_table <- read.table("23andMe_example_cat25.txt", header = TRUE, sep = "\t")
SNP_table

##Getting information on a dataset
names(SNP_table)
str(SNP_table)
levels(SNP_table$genotype)
dim(SNP_table)
class(SNP_table)
SNP_table
head(SNP_table,n=10)
tail(SNP_table, n=5)
help(read.table)
SNP_table$chromosome <- as.factor(SNP_table$chromosome)
str(SNP_table)
SNP_table$chromosome <- as.integer(SNP_table$chromosome)
str(SNP_table)
SNP_table_AG <- subset(SNP_table, genotype == 'AG')
SNP_table_AG
table(SNP_table_AG$chromosome)
subset(SNP_table, position > 700000 & position < 800000)

##Exercises
##Exercise #1
x <- c(1,3,6,9,12)
y <- c(1,0,1,0,1)
x-y
x*y
x/y

##Exercise #2
x <- c(0,1,2,3)
y <- c("aa","bb","cc","dd")
z <- c("aa",1,"bb",2)
str(x)
str(y)
str(z)

##Exercise #3
Genotype1 <- c("AA","AA","AG","GG","GG")
Genotype2 <- c("AA","AA","GG","GG","GG")
G <- cbind(Genotype1,Genotype2)
G
table(G)

##Exercise #4
time <- c(0,2,4,6,8)
treatment1 <- c(0,1,2,3,4)
treatment2 <- c(0,2,4,6,8)
treatment3 <- c(0,3,6,9,12)
Sample <- data.frame(time,treatment1, treatment2,treatment3)
Sample
plot(treatment3,time)

##Exercise #5
SNP_table1 <- read.table("23andMe_complete.txt", header = TRUE, sep ="\t")
SNP_table1
str(SNP_table1)
##This file is different than the truncated file because it reaches a max
##capacity of rows.

##Exercise #6
table(SNP_table1)

##Exercise #7
SNP_table_A <- subset(SNP_table, genotype == 'A')
SNP_table_A
