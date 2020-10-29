
// Content-Based Router
from("activemq:$input$")
    .choice()
$output:{op |
        .when(xpath("/sensor/type = 'temp-celsius'")) // TODO: adapt filter rule
            .to("activemq:$op$")
}$
        .otherwise()
            .to("activemq:deadletterchannel");
