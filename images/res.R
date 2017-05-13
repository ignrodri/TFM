proc <- function(v, z, m) {
	res <- v
	res <- subset(res, res$Zone == z)
	res <- subset(res, res$Meas == m)
	res1 <- subset(res, res$Time == 'X1')
	res2 <- subset(res, res$Time == 'X2')
	g <- ggplot() + geom_point(data = res1, aes(x = Animal, y = Val), colour = "red")
	g <- g + geom_point(data = res2, aes(x = Animal, y = Val), colour = "blue")
	g <- g + ggtitle(sprintf("%s %s matter Red = Control Blue = Lesion", m, z)) + xlab("Animal") + ylab(m)
	g <- g + theme_bw()
	print(g)
}

xproc <- function(v, m) {
	res <- v
	res <- subset(res, res$Meas == m)
	res1 <- subset(res, res$Time == 'X1')
	res2 <- subset(res, res$Time == 'X2')
	g <- ggplot() + geom_point(data = res1, aes(x = Animal, y = Val), colour = "red")
	g <- g + geom_point(data = res2, aes(x = Animal, y = Val), colour = "blue")
	g <- g + ggtitle(sprintf("%s Red = Control Blue = Lesion", m)) + xlab("Animal") + ylab(m)
	g <- g + theme_bw()
	print(g)
}

library(xlsx)
library(ggplot2)
setwd("C:\\Documentos\\github\\TFM\\images")
pdf("res.pdf")
vals <- data.frame()
vals <- rbind(vals, read.xlsx("res.xlsx", 0, sheetName = "Val"))
vals <- rbind(vals, read.xlsx("res.xlsx", 0, sheetName = "Val2"))
proc(vals, 'gray', 'FA')
proc(vals, 'gray', 'MD')
proc(vals, 'white', 'FA')
proc(vals, 'white', 'MD')
proc(vals, 'left', 'FA')
proc(vals, 'left', 'MD')
proc(vals, 'right', 'FA')
proc(vals, 'right', 'MD')
xproc(vals, 'FA')
xproc(vals, 'MD')
dev.off()




