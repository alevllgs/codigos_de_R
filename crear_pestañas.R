library(openxlsx)

wb <- createWorkbook("Fred")
addWorksheet(wb, "Sheet 1")
addWorksheet(wb, "Sheet 2", gridLines = FALSE)
addWorksheet(wb, "Sheet 3", tabColour = "red")

saveWorkbook(wb, "addWorksheetExample.xlsx", overwrite = TRUE)

#Este codigo me sirve para crear pestañas en un archivo excel