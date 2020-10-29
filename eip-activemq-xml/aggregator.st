<bean id="aggregator$random$" class="TODO: insert bean class pa.ck.age.Class" />

<route>
    <description>Aggregator</description>
    <from uri="activemq:$input$"/>
    <aggregate strategyRef="aggregator$random$"
               strategyMethodName="TODO: insert bean method name"
               completionSize="3">
        <correlationExpression>
            <constant>true</constant>
        </correlationExpression>
        <to uri="activemq:$output$"/>
    </aggregate>
</route>
