class NotificationService extends cds.Service {
    async raiseNotification(type, recipients, priority, data) {
      try {
        const alert = await cds.connect.to("notifications");
        // let notifyStatus = await alert.notify(type, {
        //   recipients: recipients,
        //   priority: priority,
        //   data: data,
        // });
  
        //--- For Default notification type
        let notifyStatus = await alert.notify({
          recipients: [{ RecipientId: 'sanreena1983@gmail.com' }],
          priority: 'HIGH',
          // data: {
            title: 'New Questionnaire Published',
            description: 'Questionnaire Published'
        // },
        });
        return notifyStatus;
      } catch (error) {
        return error;
      }
    }
  }
  
  module.exports = NotificationService;
  