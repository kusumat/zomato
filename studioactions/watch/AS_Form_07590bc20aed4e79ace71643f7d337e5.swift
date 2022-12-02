@objc class func AS_Form_07590bc20aed4e79ace71643f7d337e5(_ form: frmRestaurantController, _ context: AnyObject?) {
        
        form.tab3.setNumberOfRows(1, withRowType:"restaurantTemp");
        let nRows = form.tab3.numberOfRows;
        
        if(context != nil){
            var ctx = context as! Dictionary<String, String>;
            let rowId:String = ctx["ResName"]!;
            for index in 0...nRows-1{
                let row = form.tab3.rowController(at: index);
	                //print(" rowController Index: \(index)  \(row)");
	                    (row! as AnyObject).labelNameTemp.setText(restaurantData[rowId]!["lblName"]);
	                    (row! as AnyObject).labelAddressTemp!.setText(restaurantData[rowId]!["lblAddress"]);
	                    (row! as AnyObject).imageRestaurantTemp!.setImageNamed(restaurantData[rowId]!["imgRes"]);
	                    (row! as AnyObject).labelRatingTemp!.setText(restaurantData[rowId]!["lblRating"]);
	                    (row! as AnyObject).imageFoodTypeTemp!.setImageNamed(restaurantData[rowId]!["imgFoodType"]);
	                    (row! as AnyObject).labelFoodTypeTemp!.setText(restaurantData[rowId]!["lblFoodType"]);
	                    (row! as AnyObject).imageCostTemp!.setImageNamed(restaurantData[rowId]!["imgCost"]);
	                    (row! as AnyObject).labelCostTemp!.setText(restaurantData[rowId]!["lblCost"]);
                printHello();
            }
        }

}