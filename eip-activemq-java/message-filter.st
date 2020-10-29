
// Message Filter
from("activemq:$input$")
    .filter(xpath("/sensor/value > -50")) // TODO: adapt filter rule
        .to("activemq:$output$");
