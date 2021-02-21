import 'package:flutter/material.dart';
import 'package:hotel_website/Widgets/roomsHome.dart';
const kPrimaryColor = Color(0xff0F2453);
const kLogoBgColor = Color(0xff0f1027);
const kSecondaryColor =  Color(0xffECEEF2);
const kGoldColor =  Color(0xffd1af94);
const kCoolBlack =  Color(0xff585858);
const kLightBlack =  Color(0xfff4f2f2);
// Strings Start
String SourStory1 = "Situated at the heart of Manali. Snow Bloom was designed specifically with the sole purpose of leaving our esteemed guest with a fulfilling stay in Manali.";
String SourStory2 = "Snow Bloom Resort boasts of features like unlimited Wi-Fi, Wood Themed Restaurant, Jacuzzi, Spa with Steam and Sauna Bath, a lift, In-house Gymnasium, Open air Dining Area, Ample Parking Area, In house Disco for those looking for swinging their arms to the beat of thumping Bass.";
String SourStory3 = "Immerse Yourself into pure Luxury in mist of Snow Covered peaks surrounded by pure nature.";
String SourStory4 ="We Aim to Provide you with an Unforgettable Vacation.";
String sManali ="The very name Manali evokes the visual of snow-covered mountains, stately deodar tree, apple orchids and the gushing sound of Beas. Away from the chaos and noise of the cities, it is a different world altogether filled with bountiful nature that offers variety of pleasures to all types of tourists having varying tastes. ";
String sWhySnow ="A luxurious resort surrounded by blooming apple orchids and snow-covered peaks, no other name would suit it better than Snow Bloom Resort. Snow Bloom Resort Is a mesmerizing site to hold, especially when it snows and the apple trees are covered by snow, it truly feels as if snow itself is blooming.";
//RoomsHome
String sRoomsHomePool1 ='Our outdoor swimming pool, with its lush landscape, stylish yet comfortable sun beds, lounge areas and pool bar, provides the perfect retreat from a busy day in the city. Lifeguard on duty during the opening hours.';
String sRestaurant ='Our wood themed restaurant makes you feel as if you are having a meal surrounded by nature. Having a lavish meal in such a surrounding will definitely please your inner adventurist. There is also an open air dining ara for those who like to dine while gazing at the clouds';
String sGym ='Keeping a healthy body has never been this easy, a fully featured Gymnasium keeps all your fitness needs in check.The Gymnasium is equiped with professional training equipment to cater all your training needs. Operating hours are 7am to 10pm ';
String sRoom ="Luxurious rooms with everything you'll ever need in your stay at Manali. All the rooms come with features like an electric kettle, lcd tv, unlimited wifi, and many others. Each room is sparkling clean keeping in mind our guests hygiene.";
String sJacuzzi ="Jacuzzi is the epitome of relaxation, the heat from the warm bath widens blood vessels and sends nutrient-rich blood throughout your body. Warm water also brings down swelling and loosens tight muscles. It Also sooths your mind giving you a calm state of mind.";
String sMRestaurant ='Our wood themed restaurant makes you feel as if you are having a meal surrounded by nature. Having a lavish meal in such a surrounding will definitely please your inner adventurist.';
String sMGym ='Keeping a healthy body has never been this easy, a fully featured Gymnasium keeps all your fitness needs in check. Operating hours are 7am to 10pm ';
String sMRoom ="Luxurious rooms with everything you'll ever need in your stay at Manali. All the rooms come with features like an electric kettle, lcd tv, unlimited wifi, and many others.";
String sMJacuzzi ="Jacuzzi is the epitome of relaxation, the heat from the warm bath widens blood vessels and sends nutrient-rich blood throughout your body. It Also sooths your mind giving you a calm state of mind.";
String sMSpa = "The healing powers of touch therapy have been expounded on since ancient times. Spas and touch therapies are thus intrinsically connected. ";
String sSpa = "The healing powers of touch therapy have been expounded on since ancient times. Spas and touch therapies are thus intrinsically connected. The nurturing touch of a skilled therapist’s hands on one’s body has benefits that go beyond the realm of the physical. ";
String sPremium = "Experience the Grandeur of Snow Bloom Resort with the premium rooms of our Hotel, these rooms are the best we have to offer. The rooms include facilities like huge balcony with a mesmerizing view, an Electric Kettle, unlimited wifi and many more.";
String sPremium1 = "The Rooms are blessed with the view of Blooming Apple trees amidst the snow covered mountains.";
String sClassic = "Experience a comforting stay in our Classic rooms which are elegantly made to provide you with a relaxing stay at our hotel. The rooms include facilities like unlimited wifi, balcony, elegant interior and many more.";
String sClassic1 ="The Balconies provide a panoramic view of the mystic Himalayan range.";
String sFamily = "Family Suite rooms come with two premium rooms that have a dining/entertainment area attached in the middle. With rooms huge enough to make you feel just at home, our family Suites can accommodate all of your needs.";
String sFamily1="Each individual room comes with its own attached bathroom. ";
//RoomsHome

//Photo link List
//
//Drive Image Link format
//  Image.network('https://drive.google.com/uc?export=view&id=10vEy_qMQudVxp7tGnU0wMPM3-KXihBfz'),
// Drive Image Link format
List<String>imglinks= [
  'https://drive.google.com/uc?export=view&id=1teLAu6UGOm66monSIEx9sOKBKplQ2qPt','https://drive.google.com/uc?export=view&id=1Vl1XX7olUGcwsSbrtOIGnyk_bobQI5te','https://drive.google.com/uc?export=view&id=1k6zAQ_b8R8uI4MXC20LLEzHOxJTv4RL0','https://drive.google.com/uc?export=view&id=1c_xz2cNO301kl-pEMvWwWFXSyJDa3ncn','https://drive.google.com/uc?export=view&id=1cPEDCVNbc0LcSjpUcEo8cOE6-E-I94yN','https://drive.google.com/uc?export=view&id=1RaYVONHPpxlLOSIdGdd1mamWRKRJ2YgE','https://drive.google.com/uc?export=view&id=1XIk8kKkchP_hkMv680mTgnQAOMsldlDO','https://drive.google.com/uc?export=view&id=1GnVesBAdzvPkahzXtd6l60ghpitdvQ9S','https://drive.google.com/uc?export=view&id=14l1wZFk-ZWoKYvfr5k5TOl1UF2St5GV9','https://drive.google.com/uc?export=view&id=1XSoq487JhfhlFNPAOG9QpsMskaOR9Q61','https://drive.google.com/uc?export=view&id=10Tm12mVq1r7YnwjDBE9naXBmuWlg118O','https://drive.google.com/uc?export=view&id=1XSoq487JhfhlFNPAOG9QpsMskaOR9Q61','https://drive.google.com/uc?export=view&id=1z1rDAJSenwTliMdGcjXRgNnrk54_5ex7','https://drive.google.com/uc?export=view&id=1nOlf7dan3h7xnxU9-lwItqngKU1tpkL7','https://drive.google.com/uc?export=view&id=116F-IFXfu_PIi4tzpq2grxlE18eVxNex',
];
List<String>newimglinks= [
  'https://drive.google.com/uc?export=view&id=1OpyovgnKL__6KxxCO6RSiEvC2hobwjdh','https://drive.google.com/uc?export=view&id=1Hwuol_0ZXIHprz9JF6Xu0DVq7EW5OgLP','https://drive.google.com/uc?export=view&id=15TrCDGLdzMqwi9C2rZmIUTQgDu1LjGcZ','https://drive.google.com/uc?export=view&id=1IZ0OBqfbbr3MUlRPThCaXhd8qKYKqVd6','https://drive.google.com/uc?export=view&id=12CPd0HAku4O2xzsq2EIbwddC8VhR0Sgg','https://drive.google.com/uc?export=view&id=1T2TzNUpJvCk2Zmmu1wEDBXswF8vOzT_M','https://drive.google.com/uc?export=view&id=1f_g1Dzuh0norvvClf3282J46P-Wicuug','https://drive.google.com/uc?export=view&id=1gkvvma9DjasCOs7APBMT6ay_K0g6WfYT','https://drive.google.com/uc?export=view&id=106JgjT2pSogHgEbY1vV3uD8b0l_OqhBm','https://drive.google.com/uc?export=view&id=14ch0SgyL10sFjPmMZhBg9EF65L6oYtsX','https://drive.google.com/uc?export=view&id=1EP_VtNTALcRuNMqhabahlsQDHH9c9Amo','https://drive.google.com/uc?export=view&id=1MrzDtwLezQHjyi2RqK3Xrdn34itdTBdV','https://drive.google.com/uc?export=view&id=1erMA-BzR2vGt99T9UN-Ob_Yp1hv2HBS4','https://drive.google.com/uc?export=view&id=1xzpLJXDnKDcwgnzrySjMwCRVCtFY_c1q','https://drive.google.com/uc?export=view&id=1ykz5xQpzb-J9kOp_U6wZ_hZAGIE_Djt5',
];List<String>cImglinks= [
  'https://drive.google.com/uc?export=view&id=1OpyovgnKL__6KxxCO6RSiEvC2hobwjdh','https://drive.google.com/uc?export=view&id=1Hwuol_0ZXIHprz9JF6Xu0DVq7EW5OgLP','https://drive.google.com/uc?export=view&id=15TrCDGLdzMqwi9C2rZmIUTQgDu1LjGcZ','https://drive.google.com/uc?export=view&id=1IZ0OBqfbbr3MUlRPThCaXhd8qKYKqVd6','https://drive.google.com/uc?export=view&id=12CPd0HAku4O2xzsq2EIbwddC8VhR0Sgg','https://drive.google.com/uc?export=view&id=1T2TzNUpJvCk2Zmmu1wEDBXswF8vOzT_M','https://drive.google.com/uc?export=view&id=1f_g1Dzuh0norvvClf3282J46P-Wicuug','https://drive.google.com/uc?export=view&id=1gkvvma9DjasCOs7APBMT6ay_K0g6WfYT',
];
// Photo link List
//Strings End