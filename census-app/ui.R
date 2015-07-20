library(shiny)

# You can create reactive output with a two step process.
#   1. Add an R object to your user-interface with ui.R.
#   2. Tell Shiny how to build the object in server.R. The object will be reactive if the code that builds it calls a widget value.

# El código presente en ui.R le dice a Shiny dónde se muestra un objeto.
# El server.R le diremos a Shiny cómo contruir dicho objeto.
	
shinyUI(fluidPage(

  titlePanel("censusVis"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with 
        information from the 2010 US Census."),
      
      selectInput("var", 
        label = "Choose a variable to display",
        choices = c("Percent White", "Percent Black", "Percent Hispanic", "Percent Asian"),
        selected = "Percent White"),
      
      sliderInput("range", 
        label = "Range of interest:",
        min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel(
      textOutput("text1"), # Recibe como argumento el nombre de nuestro elemento reactivo
      textOutput("text2"),
      textOutput("text_range")
    )

    # Otras funciones de 'salida':
    # -------------------------------
    #  Output function    |  creates
    # -------------------------------
    # htmlOutput          |  raw HTML
    # imageOutput         |  image
    # plotOutput          |  plot
    # tableOutput         |  table
    # textOutput          |  text
    # uiOutput            |  raw HTML
    # verbatimTextOutput  |  text

  )
))