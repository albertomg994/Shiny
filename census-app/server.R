library(shiny)

# Importante: notar que recibe dos objetos, uno con todas las salidas y otro con todas las entradas
shinyServer(function(input, output) {

		# ================================
		# 1. ACCESO A LOS OUTPUTS
		# ================================
	    output$text1 <- renderText({ # El nombre deberá coincidir con el elemento rectivo de ui.R (output$text1 = textOutput("text1"))
	          "You have selected this"
	    })
	    # Nota: render*() reciben como argumento un objeto entre {...}

	    # Sobre los objetos de tipo output llamamos a las funciones de renderizado según convenga:
	    # ----------------------------------------------------------------------
		# render function	|	creates
		# ----------------------------------------------------------------------
		# renderImage		|	images (saved as a link to a source file)
		# renderPlot		|	plots
		# renderPrint		|	any printed output
		# renderTable		|	data frame, matrix, other table like structures
		# renderText		|	character strings
		# renderUI			|	a Shiny tag object or HTML


		# ================================
		# 2. ACCESO A LOS INPUTS
		# ================================

		# Lo conseguiremos mediante el identificador que dimos a cada elemento del HTML en ui.R
		output$text2 <- renderText({ 
      		paste("You have selected", input$var)
    	})

    	output$text_range <- renderText({ 
      		paste("You have selected a range that goes from", input$range[1], " to", input$range[2])
    	})

  }
)