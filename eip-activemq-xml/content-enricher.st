<bean id="contentEnricher$random$" class="TODO: insert bean class pa.ck.age.Class" />

<route>
    <description>Content Enricher</description>
    <from uri="activemq:$input$" />
    <bean ref="contentEnricher$random$" method="TODO: insert bean method name" />
    <to uri="activemq:$output$" />
</route>
