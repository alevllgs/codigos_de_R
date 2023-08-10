library(openxlsx)

BD_r_v <- createWorkbook("BD_registros_validados")
addWorksheet(BD_r_v, "GES", tabColour = "springgreen") #GES es la joja
addWorksheet(BD_r_v, "No GES", tabColour = "violetred", gridLines = FALSE)
addWorksheet(BD_r_v, "Ambulatorio", tabColour = "tomato")
addWorksheet(BD_r_v, "No Programable", tabColour = "turquoise")

writeDataTable(BD_r_v, sheet = "GES", x = iris) # aca le asignamos una tabla a la hoja

saveWorkbook(BD_r_v, "addWorksheetExample.xlsx", overwrite = TRUE)

#Este codigo me sirve para crear pestañas en un archivo excel


# Aca puedo asignarle 2 tablas a una pestaña ------------------------------

wb <- createWorkbook()
addWorksheet(wb, sheetName = "Sheet 1")
writeDataTable(wb, sheet = "Sheet 1", x = iris)
writeDataTable(wb, sheet = 1, x = mtcars, tableName = "mtcars", startCol = 10)

getTables(wb, sheet = "Sheet 1")
saveWorkbook(wb, "ejemplo.xlsx", overwrite = TRUE)  #