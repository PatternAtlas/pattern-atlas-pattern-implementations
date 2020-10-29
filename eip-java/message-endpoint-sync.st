$if(producer)$
import javax.jms.*;
import javax.naming.*;

public class QueueProducer {

    private QueueSession session;
    private QueueSender sender;

    public static void main(String[] args) {
        QueueProducer producer = new QueueProducer();
        producer.send("Hello world!");
    }

    public QueueProducer() {
        initialize();
    }

    private void initialize() {
        try {
            Context jndi = new InitialContext();
            QueueConnectionFactory connectionFactory = (QueueConnectionFactory) jndi.lookup("ConnectionFactory");
            QueueConnection connection = connectionFactory.createQueueConnection();
            QueueSession session = connection.createQueueSession(false, Session.AUTO_ACKNOWLEDGE);
            Queue queue = (Queue) jndi.lookup("$output$");
            QueueSender sender = session.createSender(queue);

            connection.start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void send(String message) {
        try {
            TextMessage textMessage = session.createTextMessage();
            textMessage.setText(message);
            sender.send(textMessage);
        } catch (JMSException e) {
            e.printStackTrace();
        }
    }
}
$else$
import javax.jms.*;
import javax.naming.*;

public class QueueConsumer {

    public static void main(String[] args) {
        new QueueConsumer();
    }

    public QueueConsumer() {
        initialize();
    }

    private void initialize() {
        try {
            Context jndi = new InitialContext();
            QueueConnectionFactory connectionFactory = (QueueConnectionFactory) jndi.lookup("ConnectionFactory");
            QueueConnection connection = connectionFactory.createQueueConnection();
            QueueSession session = connection.createQueueSession(false, Session.AUTO_ACKNOWLEDGE);
            Queue queue = (Queue) jndi.lookup("$input$");
            QueueReceiver receiver = session.createReceiver(queue);

            connection.start();

            while (true) {
                process(receiver.receive(1000));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void process(Message message) {
        // TODO: implement message processing
    }
}
$endif$
