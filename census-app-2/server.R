# =============================================================================================
# Esta es la zona adecuada para cargar librerías, archivos y conjuntos de datos 
# R ejecuta una única vez lo que esté presente dentro de esta zona
# =============================================================================================
library(shiny)
library(maps)
library(mapproj)
#install.packages(c("maps", "mapproj"))

# Cargamos el archivo externo (y lo ejecuta) - Nos hará disponible la función percent_map(...)
source("helpers.R")

# Leemos nuestro archivo de datos
counties <- readRDS("data/counties.rds")
# =============================================================================================


# Importante: notar que recibe dos objetos, uno con todas las salidas y otro con todas las entradas
shinyServer(function(input, output) {

		# ==============================================================================
		# Shiny vuelve a ejecutar todo el código dentro de un render* cada vez que el 
		# usuario cambia el widget asociado, por eso es mejor tener dentro SÓLO EL CÓDIGO
		# REALMENTE NECESARIO.
		# ==============================================================================
		output$map <- renderPlot({
			args <- switch(input$var,
		        "Percent White" = list(counties$white, "darkgreen", "% White"),
		        "Percent Black" = list(counties$black, "black", "% Black"),
		        "Percent Hispanic" = list(counties$hispanic, "darkorange", "% Hispanic"),
		        "Percent Asian" = list(counties$asian, "darkviolet", "% Asian"))

			args$min <- input$range[1]
			args$max <- input$range[2]

			do.call(percent_map, args)
		})
  }
)