<route>
    <description>Recipient List</description>
    <from uri="activemq:$input$" />
    <recipientList>
        <constant>$trunc(output):{op | activemq:$op$,}$activemq:$last(output)$</constant>
    </recipientList>
</route>
