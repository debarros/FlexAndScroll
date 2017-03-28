header = list(tags$head(tags$style(HTML("
.flex1{
display: -webkit-flex;
display: flex;
-webkit-flex-direction: column;
flex-direction: column;
height: 100vh;
max-height: 100%;
border: 5px solid red; 
}
.flex2{
display: -webkit-flex;
display: flex;
-webkit-flex-direction: row;
flex-direction: row; 
height: 100%;
max-height: 100%;
background-color: yellow; 
overflow-y:hidden;
}
.scrollpanel{
overflow-y: scroll; 
position: relative; 
margin: 0px; 
padding: 0px; 
border: 0px;
}
"))))

scrollPanel = function(...){
  div(class = "well scrollpanel", ...)}



selectizeInput2 = function (inputId, label, choices){
  x = selectizeInput(
    inputId = inputId, 
    label = label, 
    choices = choices)
  x$children[[2]]$children[[1]]$attribs$style = "z-index: 2"
  return(x)
}