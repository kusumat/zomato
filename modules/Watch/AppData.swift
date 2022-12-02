//Type your code here
////////////////////////////////////////////////////////////////////////////////////////

func printHello(){	
  print("Hello World");
}

////////////////////////////////////////////////////////////////////////////////////////

var presentCategory:String = "";

////////////////////////////////////////////////////////////////////////////////////////

var homeListData : [[String: String]] = [
                                        [
                                            "title": "Bookmarked",
                                            "image":"bookmark.png"
                                        ],
                                        [
                                            "title": "Dinner",
                                            "image":"breakfast.png"],
                                        [
                                            "title": "Breakfast",
                                            "image":"breakfast.png"],
                                        [
                                            "title": "Lunch",
                                            "image":"breakfas2.png"
                                        ]
];

////////////////////////////////////////////////////////////////////////////////////////

var hotelListData : [String: [[String: String]]] = [
                    "Bookmarked":[
                                    [
                                        "ResName": "Paradise",
                                        "CuisineType": "Biryani",
                                        "Rating" : "4.5"
                                    ],
                                    [
                                        "ResName": "Pizza Hut",
                                        "CuisineType": "Pizza",
                                        "Rating" : "4.0"],
                                    [
                                        "ResName": "Tabla",
                                        "CuisineType": "Biryani",
                                        "Rating" : "5.0"
                                    ],
                        [
                            "ResName": "Chepotle",
                            "CuisineType": "Mexican",
                            "Rating" : "4.5"
                        ]
                        ],
                    "Dinner":[
                        [
                            "ResName": "Annapurna",
                            "CuisineType": "South Indian",
                            "Rating" : "4.0"
                        ],
                        [
                            "ResName": "Chutneys",
                            "CuisineType": "South Indian",
                            "Rating" : "5.0"],
                        [
                            "ResName": "KFC",
                            "CuisineType": "Non Veg",
                            "Rating" : "4.0"
                        ],
                        [
                            "ResName": "Chepotle",
                            "CuisineType": "Mexican",
                            "Rating" : "4.5"
                        ]
    ],
                    "Breakfast":[
                        [
                            "ResName": "Chutneys",
                            "CuisineType": "South Indian",
                            "Rating" : "5.0"
                        ],
                        [
                            "ResName": "Sharavana Bhawan",
                            "CuisineType": "South Indian",
                            "Rating" : "4.0"],
                        [
                            "ResName": "Udipi",
                            "CuisineType": "South Indian",
                            "Rating" : "3.5"
                        ]
    ],
    "Lunch":[
        [
            "ResName": "Tabla",
            "CuisineType": "North Indian",
            "Rating" : "4.0"
        ],
        [
            "ResName": "Samskruthi",
            "CuisineType": "Andhra",
            "Rating" : "5.0"],
        [
            "ResName": "Chepotle",
            "CuisineType": "Mexican",
            "Rating" : "4.5"
        ]
    ]
];

////////////////////////////////////////////////////////////////////////////////////////

var restaurantData: [String: [String: String]] = [
    "Paradise":[
        "lblName" : "Paradise",
        "lblAddress" : "Paradise Restaurant, GachiBowli, Hyderabad",
        "imgRes" : "burgerking1.png",
        "lblRating" : "4.5",
        "imgFoodType" : "cafe.png",
        "lblFoodType" : "Biryani",
        "imgCost" : "buffet.png",
        "lblCost" : "800 for two"
        ],
    "Pizza Hut":[
        "lblName" : "Pizza Hut",
        "lblAddress" : "Pizza Hut Restaurant, Hitech, Hyderabad",
        "imgRes" : "burgerking2.png",
        "lblRating" : "4.0",
        "imgFoodType" : "cafe.png",
        "lblFoodType" : "Pizza",
        "imgCost" : "buffet.png",
        "lblCost" : "600 for two"
    ],
    "Tabla":[
        "lblName" : "Tabla",
        "lblAddress" : "Tabla Restaurant, Hitech, Hyderabad",
        "imgRes" : "burgerking3.png",
        "lblRating" : "5.0",
        "imgFoodType" : "cafe.png",
        "lblFoodType" : "Biryani",
        "imgCost" : "buffet.png",
        "lblCost" : "500 for two"
    ],
    "Annapurna":[
        "lblName" : "Annapurna",
        "lblAddress" : "Annapurna Restaurant, Madhapur, Hyderabad",
        "imgRes" : "burgerking4.png",
        "lblRating" : "4.0",
        "imgFoodType" : "cafe.png",
        "lblFoodType" : "South Indian",
        "imgCost" : "buffet.png",
        "lblCost" : "200 for two"
    ],
    "Chutneys":[
        "lblName" : "Chutneys",
        "lblAddress" : "Chutneys Restaurant, Hitech, Hyderabad",
        "imgRes" : "burgerking5.png",
        "lblRating" : "5.0",
        "imgFoodType" : "cafe.png",
        "lblFoodType" : "South Indian",
        "imgCost" : "buffet.png",
        "lblCost" : "600 for two"
    ],
    "KFC":[
        "lblName" : "KFC",
        "lblAddress" : "KFC Restaurant, Madhapur, Hyderabad",
        "imgRes" : "maaooru1.png",
        "lblRating" : "4.0",
        "imgFoodType" : "cafe.png",
        "lblFoodType" : "Non Veg",
        "imgCost" : "buffet.png",
        "lblCost" : "600 for two"
    ],
    "Sharavana Bhawan":[
        "lblName" : "Sharavana Bhawan",
        "lblAddress" : "Sharavana Bhawan Restaurant, Hitech, Hyderabad",
        "imgRes" : "maaooru2.png",
        "lblRating" : "4.0",
        "imgFoodType" : "cafe.png",
        "lblFoodType" : "South Indian",
        "imgCost" : "buffet.png",
        "lblCost" : "400 for two"
    ],
    "Udipi":[
        "lblName" : "Udipi",
        "lblAddress" : "Udipi Restaurant, GachiBowli, Hyderabad",
        "imgRes" : "maaooru3.png",
        "lblRating" : "3.5",
        "imgFoodType" : "cafe.png",
        "lblFoodType" : "South Indian",
        "imgCost" : "buffet.png",
        "lblCost" : "400 for two"
    ],
    "Samskruthi":[
        "lblName" : "Samskruthi",
        "lblAddress" : "Samskruthi Restaurant, Kukatpally, Hyderabad",
        "imgRes" : "maaooru4.png",
        "lblRating" : "5.0",
        "imgFoodType" : "cafe.png",
        "lblFoodType" : "Andhra",
        "imgCost" : "buffet.png",
        "lblCost" : "500 for two"
    ],
    "Chepotle":[
        "lblName" : "Chepotle",
        "lblAddress" : "Chepotle Restaurant, Madhapur, Hyderabad",
        "imgRes" : "maaooru5.png",
        "lblRating" : "4.0",
        "imgFoodType" : "cafe.png",
        "lblFoodType" : "Fast Food",
        "imgCost" : "buffet.png",
        "lblCost" : "400 for two"
    ]
];

////////////////////////////////////////////////////////////////////////////////////////