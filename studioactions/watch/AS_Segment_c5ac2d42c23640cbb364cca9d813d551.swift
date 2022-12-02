@objc class func AS_Segment_c5ac2d42c23640cbb364cca9d813d551(_ form: frmHomeController, _ table: WKInterfaceTable, _ rowIndex: Int) {
presentCategory = homeListData[rowIndex]["title"]!;
let context: [String: Int] = ["rowIndex": rowIndex];
form.pushControllerWithName("frmHotelList", context: context);

}