package karol.appdemo.service;

public interface EmailSender {

    void sendEmail(String to, String subject, String content);
}
