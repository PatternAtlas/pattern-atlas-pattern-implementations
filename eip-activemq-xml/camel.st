<?xml version="1.0" encoding="UTF-8"?>

<!--
    Copyright 2020 University of Stuttgart

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
-->
<!--
    Apache Camel documentation of Enterprise Integration Patterns:
    https://camel.apache.org/components/latest/eips/enterprise-integration-patterns.html

    Include this file in your Apache ActiveMQ configuration to enable Apache Camel
    e.g. <import resource="camel.xml"/> in your activemq.xml right before </beans>
-->

<beans
   xmlns="http://www.springframework.org/schema/beans"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="
     http://camel.apache.org/schema/spring http://camel.apache.org/schema/spring/camel-spring.xsd
     http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd">

    <camelContext id="camel" xmlns="http://camel.apache.org/schema/spring">

        <!-- The following Spring XML configuration is proudly presented by Pattern Atlas -->
        $camelContext$
    </camelContext>

</beans>
