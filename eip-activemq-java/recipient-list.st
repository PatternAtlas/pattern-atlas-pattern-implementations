
// Recipient List
from("activemq:$input$")
    .recipientList("$trunc(output):{op | activemq:$op$,}$activemq:$last(output)$");
