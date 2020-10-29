<bean id="normalizer$random$" class="TODO: insert bean class pa.ck.age.Class" />

<route>
    <description>Normalizer</description>
    <from uri="activemq:$input$" />
    <choice>
$output:{op |
        <when>
            <!-- TODO: add filter rule, e.g.
            <xpath>/sensor/type = 'temp-celsius'</xpath>
            -->
            <bean ref="normalizer$random$" method="TODO: insert bean method name or remove element, if no processing is required" />
            <to uri="activemq:$op$" />
        </when>
}$
        <otherwise>
            <!-- TODO: may adapt dead letter channel -->
            <to uri="activemq:deadletterchannel"/>
        </otherwise>
    </choice>
</route>
