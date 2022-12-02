@objc class func AS_WatchDynamicNotificationForm_71e66e367a464b0b96abad9dcd1231cd(_ form: notiZomatoController, _ dict: [NSObject: AnyObject], _ completionHandler: ((WKUserNotificationInterfaceType) -> Void)) {
		print("This is remote notification");
        var remoteNotification = dict as? [NSString: AnyObject];
        if(remoteNotification != nil){
            var aps = remoteNotification!["aps"] as? [String: AnyObject];
            if(aps != nil){
                form.lblDyn1.setText(aps!["lblDyn1"] as? String);
                form.lblDyn2.setText(aps!["lblDyn2"] as? String);
                form.lblDyn3.setText(aps!["lblDyn3"] as? String);
            }
        }
		completionHandler(.Custom);

}