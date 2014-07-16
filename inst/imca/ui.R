library(shiny)

## Global variables
mca_name <- getOption("questionr_imca_mca")

## Flag to display the alert on first time launch
display_alert <- is.null(getOption("questionr_displayed_alert"))
if (display_alert) options(questionr_displayed_alert=TRUE)

shinyUI(navbarPage("imca",
    header=list(
      ## Copy to clipboard javascript
      HTML('<script type="text/javascript" src="ZeroClipboard.min.js"></script>'),
      ## Custom CSS
      HTML('<link href="main.css" rel="stylesheet" />'),
      ## Display an alert, only on first launch for the current session
      if (display_alert) {
        div(class="row-fluid",
            div(class="span12",
                div(class="alert alert-dismissable",
                    HTML('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'),
                    HTML("<strong>Warning :</strong> This interface doesn't do anything by itself. It only generates R code you'll have to copy/paste into your script and execute yourself.")
                )))} else ""),
    
      tabPanel("Graph", plotOutput("graphOut")),
      tabPanel("Code", htmlOutput("codeOut")),
    
      footer=list(    
        ## Bottom buttons
        HTML('<p class="bottom-buttons"><button id="copy-button" class="btn btn-primary" data-clipboard-target="codeout"><i class="icon-share icon-white"></i> Copy code to clipboard</button>'),
        HTML('<button id="closebutton" type="button" class="btn btn-success action-button shiny-bound-input"><i class="icon-ok icon-white"></i> Done, close this interface</button></p>'),
        ## Custom javascript
        HTML('<script type="text/javascript" src="main.js"></script>'))
))
