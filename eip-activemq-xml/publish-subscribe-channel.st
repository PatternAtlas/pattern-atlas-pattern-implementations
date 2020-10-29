<route>
    <description>Publish-Subscribe-Channel</description>
    <from uri="activemq:$input$" />
    <multicast>
$output:{op |
        <to uri="activemq:$op$" />
}$
    </multicast>
</route>
