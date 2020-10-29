<route>
    <description>Message Filter</description>
    <from uri="activemq:$input$" />
    <filter>
        <!-- TODO: add filter rule, e.g.
        <xpath>/sensor/value > -50</xpath>
        -->
        <to uri="activemq:$output$" />
    </filter>
</route>
