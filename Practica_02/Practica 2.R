library(datasets)
data(esoph)

# summarize the dataset
summary(esoph)

#class(esoph)

y <- esoph$agegp
frecuencias <- cbind(freq=table(y), percentage=prop.table(table(y))*100)
barplot(frecuencias[,2], width = 1, xlab = "Grupo de edades", ylab = "Porcentaje (%)", ylim=c(0,30), col="orange")
barplot(frecuencias[,1], width = 1, xlab = "Grupo de edades", ylab = "Total de personas", ylim=c(0,30), col="orange")

y <- esoph$alcgp
frecuencias <- cbind(freq=table(y), percentage=prop.table(table(y))*100)
barplot(frecuencias[,2], width = 1, xlab = "Niveles de alcohol", ylab = "Porcentaje (%)", ylim=c(0,30), col="orange")
barplot(frecuencias[,1], width = 1, xlab = "Niveles de alcohol", ylab = "Total de personas que lo consumen", ylim=c(0,30), col="orange")

y <- esoph$tobgp
frecuencias <- cbind(freq=table(y), percentage=prop.table(table(y))*100)
barplot(frecuencias[,2], width = 1, xlab = "Niveles de tabaco", ylab = "Porcentaje (%)", ylim=c(0,30), col="orange")
barplot(frecuencias[,1], width = 1, xlab = "Niveles de tabaco", ylab = "Total de personas que lo consume", ylim=c(0,30), col="orange")

plot(density(esoph$ncases), xlab=names(esoph$ncases), ylab="Densidad", main= "")
plot(density(esoph$ncontrols), xlab=names(esoph$ncontrols), ylab="Densidad", main= "")

hist(esoph$ncases, xlab="Number of cases", main = "", col="purple")

#Casos y controles de cada uno de los grupos 
par(mfrow=c(3,2))
boxplot(esoph$ncases ~ esoph$agegp, xlab="agegp", ylab="",border="gray", lwd=1,col=rainbow(5))
boxplot(esoph$ncontrols ~ esoph$agegp,xlab="agegp", ylab="", border="gray", lwd=1,col=rainbow(5))
boxplot(esoph$ncases ~ esoph$alcgp,border="gray",xlab="alcgp", ylab="", lwd=1,col=rainbow(4))
boxplot(esoph$ncontrols ~ esoph$alcgp,border="gray", xlab="alcgp", ylab="", lwd=1,col=rainbow(4))
boxplot(esoph$ncases ~ esoph$tobgp,border="gray",xlab="tobgp", ylab="", lwd=1,col=rainbow(4))
boxplot(esoph$ncontrols ~ esoph$tobgp,border="gray", xlab="tobgp", ylab="", lwd=1,col=rainbow(4))

title("Boxplots of Cases (left) and Controls (right)",outer=TRUE, line=-2, cex.main=2)

# Scatter plot
plot(esoph$ncases, esoph$ncontrols, xlab="Cases", ylab="Controls")
plot(esoph$ncases, esoph$ncontrols, xlab="Cases", ylab="Controls", main="Cases vs Controls", pch=15, col="blue")
