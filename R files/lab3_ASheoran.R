##Exercise #1
setwd("~/COLLEGE BABY!!!/Senior year/S2/Bio 497G/Human Genome project")
library(ggplot2)
SNPs <- read.table("23andMe_complete.txt", header = TRUE, sep = "\t")
a <- ggplot(SNPs, aes(chromosome)) + geom_bar()
a + ggtitle("Total SNPs for each chromosome")

##Exercise #2
library(ggplot2)
SNPs$chromosome = ordered(SNPs$chromosome, levels=c(seq(1, 22), "X", "Y", "MT"))
aa <- ggplot(SNPs, aes(chromosome)) + geom_bar()
aa + ggtitle("Ordered chromosomes from factor to order factor")

##Exercise #3
library(ggplot2)
SNPs <- read.table("23andMe_complete.txt", header = TRUE, sep = "\t")
ab <- ggplot(SNPs, aes(chromosome, fill = genotype)) + geom_bar(color = "black")
ab + ggtitle("Total SNPs count") + scale_y_continuous(trans= 'log10')

##Exercise #4
library(ggplot2)
SNPs <- read.table("23andMe_complete.txt", header = TRUE, sep = "\t")
ac <- ggplot(SNPs, aes(chromosome, fill = genotype)) + geom_bar(position = "fill", color = "black")
ac + ggtitle("Sorted Total SNPs count")

##Exercise #5
ad <- ggplot(SNPs, aes(chromosome, fill = genotype)) + geom_bar(position = "dodge")
ad + ggtitle("Sorted based on genotype/ chromosome comparison")

##Exercise #6
library(ggplot2)
SNPs$chromosome = ordered(SNPs$chromosome, levels=c(seq(1, 22), "X", "Y", "MT"))
ae <- ggplot(SNPs, aes(chromosome, fill = genotype)) + geom_bar(position = "dodge") + facet_wrap(~chromosome, scales = "free")
ae + ggtitle("SNPs per chromosome sorted using facet_wrap")

##Exercise #5
ppi <- 300
png("Lab3_ex5_graph.png", width=6*ppi, height=6*ppi,res=ppi)
ad <- ggplot(data = SNPs) + geom_bar(mapping = aes(x = chromosome, fill = genotype), position = "dodge")
ad + ggtitle("Sorted based on genotype/ chromosome comparison")
dev.off()
