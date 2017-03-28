library(shiny)
library(shinyBS)
source("uielements.R")
shinyUI(fluidPage(
  tagList(header),
  div(class = "flex1",
      bsCollapse(id = "top",
                 bsCollapsePanel(title = "Top Collapse Panel", 
                                 h3(tags$ul(tags$li("This is Top Collapse Panel."),tags$li("Isn't is pretty?"))))),
      h2("Middle Stuff"),
      div(class = "flex2",
          scrollPanel(style = "width:50%;", 
                      h1(tags$ul(tags$li(1),tags$li(1),tags$li(1),tags$li(1),tags$li(1),tags$li(1),tags$li(1),tags$li(1),tags$li(1),tags$li(1)))),
          div(style = "width:50%; background-color:pink; border: 5px solid purple;",
              h3("Other Stuff"),
              selectizeInput2(
                inputId = "stuff", 
                label = "Selectize Input Dropdown Box", 
                choices = as.list(LETTERS[1:10]))
              )
      )
  )
))

