namespace interface;

type priority : String enum {
  HIGH;
  MEDIUM;
  NEUTRAL;
  LOW
};
type notificationType {
    notificationType            : String;
    notificationBody            : {
      notificationTitle         : String;
      notificationTemplateGroup : String;
      notificationDescription   : String
    };
    recipients                  : array of String;
    priority                    : priority
  }