library(shiny)

shinyUI(fluidPage(
	# Creamos un panel de título
	titlePanel("title panel"),

	# Creamos un panel lateral (siempre recibe estos dos argumentos)
	sidebarLayout(
		# Que contiente a su vez otros dos paneles
		sidebarPanel("Sidebar izquierdo"),

		# Panel principal
		mainPanel("main panel izq.",
			h1("Header 1"),
			p("Párrafo 1"),
			code("código"),
			p("Párrafo 2 con estilo propio", style="color:green")
		)
	),

	sidebarLayout(
		position = "right",
		# Que contiente a su vez otros dos paneles
		sidebarPanel( "Sidebar derecho"),
		mainPanel("main panel der.")
	)
))