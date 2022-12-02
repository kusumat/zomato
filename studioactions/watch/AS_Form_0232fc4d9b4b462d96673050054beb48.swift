@objc class func AS_Form_0232fc4d9b4b462d96673050054beb48(_ form: frmHomeController, _ context: AnyObject?) {
        let nRows = homeListData.count;
        form.tab1.setNumberOfRows(nRows, withRowType:"homeSegTemp");
        
        var row:AnyObject?;
        let redColor = UIColor.redColor();
        
        for index in 0...nRows-1{
            row = form.tab1.rowControllerAtIndex(index);
            //print(" rowController at \(index): \(row)");
            row!.labelTemp!.setText(homeListData[index]["title"]);
            row!.imageTemp!.setImageNamed(homeListData[index]["image"]);
            row!.groupTemp!.setBackgroundColor(redColor);
        }

}