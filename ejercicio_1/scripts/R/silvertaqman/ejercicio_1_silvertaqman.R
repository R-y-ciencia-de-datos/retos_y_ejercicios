# Solucion Tidy: Usar una libreria
# Introducir listas de Vertices y Aristas

V = list('Q0', 'Q1', 'Q2', 'Q3', 'Q1a', 'Q1b', 'Q2a', 'Q3a', 'Q3b', 'Q3c')

E = list(
 c('Q0', 'Q1'), c('Q0', 'Q2'), c('Q0', 'Q3'),
 c('Q1', 'Q1a'), c('Q1', 'Q1b'),
 c('Q2', 'Q2a'),
 c('Q3', 'Q3a'), c('Q3', 'Q3b'), c('Q3', 'Q3c')
)

# Escoger inicios y finales

start <- sapply(E, function(x) x[1])
end <- sapply(E, function(x) x[2])

# Definir Aristas como dataframe 

df <- data.frame(
  from = start, 
  to = end)

# Manejo de Grafos

library(igraph)
g <- graph_from_data_frame(d = df, directed = FALSE)

# Matriz de Adyacencia
# Sugerencia: as_adjacency_matrix(g)
A <- as.matrix(g, matrix.type="adjacency", sparse = FALSE)
A
# Grafico
png("./ejercicio_1/scripts/R/quipu.png", width = 800, height = 600, res = 150)
plot(g)
dev.off()

# Grafico de la matriz
library(ggplot2)
library(reshape2)
adj <- melt(A)
names(adj) <- c("Inicio","Fin","Valor")

m <- ggplot(adj, aes(
  x=Inicio,
  y=Fin,
  fill=Valor))+
  geom_tile()+
  theme(legend.position = "none")

ggsave("./ejercicio_1/scripts/R/adyacencia.png")

