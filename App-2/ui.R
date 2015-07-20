library(shiny)

# Función que identifica al elemento (el albel puede ser vacío):
# Estos dos argumentos son comunes a todos los widgets. El resto dependen del widget concreto.
#actionButton("identificador", label = "Action")

	
shinyUI(fluidPage(

titlePanel("Basic widgets"),
  
  # Fila 1
  fluidRow(
    
    # Col-1/1
    column(3,
      h3("Buttons"),
      actionButton("action", label = "Action"),
      br(),
      br(), 
      submitButton("Submit")
    ),
    
    # Col-1/2
    column(3,
      h3("Single checkbox"),
      checkboxInput("checkbox", label = "Choice A", value = TRUE)
    ),
    
    # Col-1/3
    column(3, 
      checkboxGroupInput("checkGroup", 
        label = h3("Checkbox group"), 
        choices = list("Choice 1" = 1, 
           "Choice 2" = 2, "Choice 3" = 3),
        selected = 1)
    ),
    
    # Col-1/4
    column(3, 
      dateInput("date", 
        label = h3("Date input"), 
        value = "2014-01-01"))   
  	),
  
  # Fila 2
  fluidRow(
    
    # Col-2/1
    column(3,
      dateRangeInput("dates", label = h3("Date range"))
    ),
    
    # Col-2/2
    column(3,
      fileInput("file", label = h3("File input"))
    ),
    
    # Col-2/3
    column(3, 
      h3("Help text"),
      helpText("Note: help text isn't a true widget,", 
        "but it provides an easy way to add text to",
        "accompany other widgets.")
    ),
    
    # Col-2/4
    column(3, 
      numericInput("num", 
        label = h3("Numeric input"), 
        value = 1))   
  ),
    
  # Fila 3
  fluidRow(
    
    # Col-3/1
    column(3,
      radioButtons("radio", label = h3("Radio buttons"),
        choices = list("Choice 1" = 1, "Choice 2" = 2,
                       "Choice 3" = 3),selected = 1)),
    
    # Col-3/2
    column(3,
      selectInput("select", label = h3("Select box"), 
        choices = list("Choice 1" = 1, "Choice 2" = 2,
                       "Choice 3" = 3), selected = 1)),
    
    # Col-3/3
    column(3, 
      sliderInput("slider1", label = h3("Sliders"),
        min = 0, max = 100, value = 50),
      sliderInput("slider2", "",
        min = 0, max = 100, value = c(25,75))
      ),
    
    # Col-3/4
    column(3, 
      textInput("text", label = h3("Text input"), 
        value = "Enter text..."))   
  )

))