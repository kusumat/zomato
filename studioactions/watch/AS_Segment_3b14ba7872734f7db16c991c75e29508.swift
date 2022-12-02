@objc class func AS_Segment_3b14ba7872734f7db16c991c75e29508(_ form: frmHotelListController, _ table: WKInterfaceTable, _ rowIndex: Int) {

let context: [String: String] = ["ResName": hotelListData[presentCategory]![rowIndex]["ResName"]!];
form.pushControllerWithName("frmRestaurant", context: context);

}