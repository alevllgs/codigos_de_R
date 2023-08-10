library(DBI)
library(RSQLite)


Base_Datos <- dbConnect(SQLite(), dbname = "Colegio.db")
dbListTables(Base_Datos)


gatito <- dbGetQuery(Base_Datos, "SELECT * FROM Alumno")


#Para cerrar la conexión con la base de datos
dbDisconnect(Base_Datos)


# Crear una tabla en SQLite -----------------------------------------------


BBDD_Cars_Iris <- dbConnect(SQLite(), dbname = "Cars_Iris.db")
dbListTables(BBDD_Cars_Iris)
dbWriteTable(BBDD_Cars_Iris, "Datos_Iris", iris, overwrite = TRUE, row.names = TRUE)
dbWriteTable(BBDD_Cars_Iris, "Datos_Cars", mtcars, overwrite = TRUE, row.names = TRUE)

gato <- dbGetQuery(BBDD_Cars_Iris, "SELECT * FROM Datos_Iris WHERE Species = 'setosa'")

dbSendQuery(BBDD_Cars_Iris, "UPDATE Datos_Cars SET carb  = 4 WHERE gear = 4;")
dbSendQuery(mydb, "UPDATE prueba.mtcars SET Species = setosa WHERE row_names = 'Mazda Rx4';")
dbSendQuery(mydb, "UPDATE prueba.mtcars SET mpg = 99 WHERE row_names = 'Mazda Rx4';")