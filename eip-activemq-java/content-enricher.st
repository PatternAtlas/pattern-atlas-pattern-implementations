
// Content Enricher
from("activemq:$input$")
    .process(new Processor() { // TODO: adapt the processor
                 public void process(Exchange exchange) {
                     System.err.println("TODO: Implement processor. Exchange: " + exchange);
                 }
             })
        .to("activemq:$output$");
