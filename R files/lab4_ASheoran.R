# Load Libraries
library(tidyverse)
# Load files
SNPs <- read.table("23andMe_complete.txt", header = TRUE, sep = "\t")
# to adjust figure size {r, fig.width = 6, fig. height = 6}
SNPs$chromosome = ordered(SNPs$chromosome, levels=c(seq(1, 22), "X", "Y", "MT"))
ggplot(data = SNPs) + geom_bar(mapping = aes(x= genotype, fill= chromosome)) + coord_polar() + ggtitle("Total SNPs for each genotype")