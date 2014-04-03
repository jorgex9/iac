library(e1071)
Matriz1<-matrix(rnorm(2500),50,50)
Matriz1<-cbind(Matriz1,c(rep(1,25),rep(0,25)))
datos_entrenamiento<-list()
datos_test<-list()
indice_entrenamiento<-list()
for(i in 1:5){
	indice_entrenamiento[[i]]<-sample(c(1:50),40) 
	datos_entrenamiento[[i]]<-Matriz1[indice_entrenamiento[[i]],]
	datos_test[[i]]<-Matriz1[-indice_entrenamiento[[i]],] 
}
modelo<-list()
for (i in 1:5){
	modelo[[i]]<-svm(datos_entrenamiento[[i]][,-51],datos_entrenamiento[[i]] [,51],type="C-classification")
}
predicciones<-list()
for (i in 1:5){
	predicciones[[i]]<-predict(modelo[[i]],datos_test[[i]][,-51])
}
ErrorDeClasificacion<-array()
for (i  in 1:5){
	ErrorDeClasificacion[i]<-sum(predicciones[[i]] != datos_test[[i]][,51]) / length(datos_test[[i]][,51])
}
ErrorDeClasificacion<-mean(ErrorDeClasificacion)