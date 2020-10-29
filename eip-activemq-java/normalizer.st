
// Normalizer
from("activemq:$input$")
    .choice()
$output:{op |
        .when(xpath("/sensor/type = 'temp-celsius'")) // TODO: adapt filter rule
            .process(new Processor() { // TODO: adapt the processor
                         public void process(Exchange exchange) {
                             System.err.println("TODO: Implement processor. Exchange: " + exchange);
                         }
                     })
                .to("activemq:$op$")
}$
        .otherwise()
            .to("activemq:deadletterchannel");
