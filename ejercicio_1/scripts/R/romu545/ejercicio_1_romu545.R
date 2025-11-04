#install.packages("igraph")

library(igraph)

# vertices
V = c("Q0", "Q1", "Q2", "Q3", "Q1a", "Q1b", "Q2a", "Q3a", "Q3b", "Q3c")

# Aristas

E = list(
  c("Q0", "Q1"),
  c("Q0", "Q2"),
  c("Q0", "Q3"),
  c("Q1", "Q1a"),
  c("Q1", "Q1b"),
  c("Q2", "Q2a"),
  c("Q3", "Q3a"),
  c("Q3", "Q3b"),
  c("Q3", "Q3c")
)

# Matriz de adyacencia
adj_matrix <- matrix(
  0,
  nrow = length(V),
  ncol = length(V),
  dimnames = list(V, V)
)

for (nodo in E) {
  adj_matrix[nodo[1], nodo[2]] <- 1
  adj_matrix[nodo[2], nodo[1]] <- 1
}


# gráfico
edges <- unlist(E)
g <- graph(edges, directed = FALSE)

plot(
  g,
  vertex.color = "lightblue",
  vertex.size = 30,
  vertex.label.cex = 0.9,
  edge.color = "gray40",
  layout = layout_as_tree(g, root = "Q0")
)
