package com.antonshypitsa.spring.store.mystore.mail;

import com.antonshypitsa.spring.store.mystore.entity.Cart;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.List;
import java.util.Properties;

public class MailSender {
    public static void sendTo(String customerEmail, String customerName, String orderPrice, List<Cart> cartList) throws AddressException {

        String from = "sipa6574@gmail.com";
        String host = "smtp.gmail.com";//адрес SMTP-сервера Google, который будет использоваться для отправки почты.
        String smtpPort = "465";
        Properties properties = new Properties();//используется для настройки параметров соединения
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", smtpPort);
        properties.put("mail.smtp.ssl.enable", "true");//использование защищенного ssl соединения
        properties.put("mail.smtp.auth", "true");
        Session session = Session.getInstance(
                properties,
                new Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(from, "rthxcawhrdeottjq");//пароль приложения почты отправителя
                    }
                }
        );

        session.setDebug(false);

        try{
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from, "PCStore"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(customerEmail));
            message.setSubject("Подтверждение заказа на сайте PCStore");

            StringBuilder messageBody = new StringBuilder();
            messageBody.append("Здравствуйте, ").append(customerName).append("\n\n")
                    .append("Благодарим вас за оформление заказа на сайте PCStore. Ваш заказ был успешно получен и находится в обработке.\n")
                    .append("Cодержание заказа:\n");
            for (Cart cartItem : cartList) {
                messageBody.append("- ").append(cartItem.getBrand()).append(" ").append(cartItem.getModel()).append(" ").append(cartItem.getPrice()).append("$").append("\n");
            }
            messageBody.append("\nИтоговая сумма заказа: ").append(orderPrice).append("$.\n\n")
                    .append("Если у вас возникнут вопросы или потребуется дополнительная информация, не стесняйтесь связаться с нашей службой поддержки.\n\n")
                    .append("С уважением,\n")
                    .append("Команда PCStore");

            message.setText(messageBody.toString());

            Transport.send(message);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
