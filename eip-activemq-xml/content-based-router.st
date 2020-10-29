<route>
    <description>Content-Based Router</description>
    <from uri="activemq:$input$"/>
    <choice>
$output:{op |
        <when>
            <!-- TODO: add filter rule, e.g.
            <xpath>/sensor/type = 'temp-celsius'</xpath>
            -->
            <to uri="activemq:$op$"/>
        </when>
}$
        <otherwise>
            <!-- TODO: may adapt dead letter channel -->
            <to uri="activemq:deadletterchannel"/>
        </otherwise>
    </choice>
</route>
