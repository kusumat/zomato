@objc class func AS_Form_c02dbb4b6e1143c3ad48f61cfa72a051(_ form: frmHotelListController, _ context: AnyObject?) {
		form.setTitle(presentCategory);	
		let nRows = hotelListData[presentCategory]!.count;
        form.tab2.setNumberOfRows(nRows, withRowType:"hotelListTemp");
		if(context != nil){
            var ctx = context as! Dictionary<String, Int>;
            let rowIndex:Int = ctx["rowIndex"]!;
            for index in 0...nRows-1{
                let row = form.tab2.rowController(at: index);
                //print(" rowController Index: \(index)  \(row)");
                
                (row! as AnyObject).labelRestName!.setText(hotelListData[homeListData[rowIndex]["title"]!]![index]["ResName"]);
	            (row! as AnyObject).labelCusineType!.setText(hotelListData[homeListData[rowIndex]["title"]!]![index]["CuisineType"]);
	            (row! as AnyObject).labelRating!.setText(hotelListData[homeListData[rowIndex]["title"]!]![index]["Rating"]);
            }
        }

}