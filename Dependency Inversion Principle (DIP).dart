// THIS IS NOT A GOOD APPROACH

class EmailService {
    void sendEmail(String message) {
        print("Sending email: $message");
    }
}

class NotificationService {
    private EmailService emailService;

    NotificationService() {
        emailService = new EmailService();
    }

    void notify(String message) {
        emailService.sendEmail(message);
    }
}


// THIS IS A GOOD APPROACH

abstract class Notification {
    void send(String message);
}

class EmailService implements Notification {
    @override
    void send(String message) {
        print("Sending email: $message");
    }
}

class SMSService implements Notification {
    @override
    void send(String message) {
        print("Sending SMS: $message");
    }
}
// Now you can add more services if you like :)

class NotificationService {
    private Notification notification;

    NotificationService(Notification notification) {
        this.notification = notification;
    }

    void notify(String message) {
        notification.send(message);
    }
}

