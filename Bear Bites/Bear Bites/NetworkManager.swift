//
//  NetworkManager.swift
//  Bear Bites
//
//  Created by George Martin on 4/12/20.
//  Copyright © 2020 Bear-Bites. All rights reserved.
//

import Foundation
import UIKit

let refacMenu = """


{
   "menu": [
      {
        "title": "Blueberry Pancakes",
        "calories": "2 e.a (113 cal)",
        "types": "breakfast",
        "image": "https://images.unsplash.com/photo-1584278858764-2ddcd7f228da?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days": ["Monday"]
        
      },
      {
        "title": "Pork Bacon",
        "calories": "2 slices(87 cal)",
        "types": "breakfast",
        "image": "https://www.fifteenspatulas.com/wp-content/uploads/2018/06/Cooking-Bacon-In-The-oven-Fifteen-Spatulas-1-640x959.jpg",
        "days":["Monday", "Thursday"]
      },
      {
        "title": "Turkey Sausage Patty ",
        "calories": " 2 oz(86.4 cal)",
        "types": "breakfast",
        "image": "https://images.eatthismuch.com/site_media/img/101476_LoveMoonshadow_7cd36035-6efb-4776-a2dc-f2ad16ed4a1f.jpg",
        "days":["Monday", "Wednesday", "Friday"]
      },
      {
        "title": "Scrambled Eggs ",
        "calories": " 1/2 cup(202.3 cal)",
        "types": "breakfast",
        "image": "https://toriavey.com/images/2014/06/scrambled_eggs_001.jpg",
        "days":["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
      },
      {
        "title": "Broccoli Quiche ",
        "calories": "1 slice (311.3 cal)",
        "types": "breakfast",
        "image": "https://images-gmi-pmc.edge-generalmills.com/489d945e-affa-42ee-b3ec-4a8fc19537b1.jpg",
        "days":["Monday"]
      },
      {
        "title": "Oatmeal ",
        "calories": "4 oz(71.6 cal) ",
        "types": "breakfast",
        "image": "https://images.unsplash.com/photo-1585849540407-2ddb0ecaf8ad?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
      },
      {
        "title": "Grits ",
        "calories": " 4 oz(72.7 cal)",
        "types": "breakfast",
        "image": "https://addapinch.com/wp-content/uploads/2019/06/instant-pot-grits-recipe-926-2.jpg",
        "days":["Monday", "Wednesday", "Thursday", "Friday"]
      },
      {
        "title": "Biscuits ",
        "calories": " 1 ea (198.5 cal)",
        "types": "breakfast",
        "image": "https://www.momontimeout.com/wp-content/uploads/2012/05/biscuit-recipe-easy-1.jpg",
        "days":["Tuesday", "Friday"]
      },
      {
        "title": "Country Ham ",
        "calories": " 20z meat(67.2 cal)",
        "types": "breakfast",
        "image": "https://images.unsplash.com/photo-1524438418049-ab2acb7aa48f?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Tuesday", "Friday"]
      },
      {
        "title": "Turkey Sausage Links ",
        "calories": " 1 ea(34.4 cal)",
        "types": "breakfast",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-oqyZwWaNRUmLp9UmphdW3Uqv4UajBVrUdqfQ1ZLTN0ukCO05&usqp=CAU",
        "days": ["Tuesday", "Thursday"]
      },
      {
        "title": "Potatoes OBrien ",
        "calories": "1/2 cup(101.6 cal) ",
        "types": "breakfast",
        "image": "https://www.afamilyfeast.com/wp-content/uploads/2017/01/Potatoes-OBrien2.jpg",
        "days":["Tuesday", "Thursday"]
      },
 
      {
        "title": "Scrambled Eggs with Cheese ",
        "calories": "1/2 cup(246.3 cal)",
        "types": "breakfast",
        "image": "https://images.eatthismuch.com/site_media/img/265600_defiledxhalo_7c107130-01fa-465b-bf82-becba482bd87.png",
        "days":["Tuesday", "Friday"]
      },
   
      {
        "title": "Crispy Stuffed French Toast ",
        "calories": "1 ea(563 cal) ",
        "types": "breakfast",
        "image": "https://spicysouthernkitchen.com/wp-content/uploads/Crunchy-French-Toast-5.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Corned Beef Hash",
        "calories": " 1 serving(204 cal)",
        "types": "breakfast",
        "image": "https://www.simplyrecipes.com/wp-content/uploads/2009/03/corned-beef-hash-horiz-a-1200.jpg",
        "days":["Wednesday"]
      },

      {
        "title": "Crispy Hashbrowns ",
        "calories": "1/2 cup(202.3 cal) ",
        "types": "breakfast",
        "image": "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2018/1/22/0/KC1602_Crispy-Hashbrowns_s4x3.jpg.rend.hgtvcom.826.620.suffix/1516656859953.jpeg",
        "days":["Wednesday"]
      },
      {
        "title": "Denver Scrambled Eggs ",
        "calories": " 1/2 cup(141.7 cal)",
        "types": "breakfast",
        "image": "https://goodcheapeats.com/wp-content/uploads/2019/04/Denver-Scramble.jpg",
        "days":["Wednesday"]
      },

      {
        "title": "Banana Pancakes ",
        "calories": "2 ea(173.8 cal) ",
        "types": "breakfast",
        "image": "https://images.unsplash.com/photo-1575853121743-60c24f0a7502?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Thursday"]
      },

      {
        "title": "Onion and Cheese Quiche ",
        "calories": "1 slice(180.7 cal) ",
        "types": "breakfast",
        "image": "https://images-gmi-pmc.edge-generalmills.com/489d945e-affa-42ee-b3ec-4a8fc19537b1.jpg",
        "days":["Thursday"]
      },
      {
        "title": "Tator Tots ",
        "calories": " 1/2 cup(168.7 cal)",
        "types": "breakfast",
        "image": "https://images.unsplash.com/photo-1564976704241-79e265ed90fc?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Monday","Friday"]
      },
      {
        "title": "Batter Fried Cod ",
        "calories": "4 oz (295 cal) ",
        "types": "lunch",
        "image": "https://images.unsplash.com/photo-1562967914-01efa7e87832?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Monday"]
      },
      {
        "title": "Chicken Breast Newport ",
        "calories": " 4 oz(150.9 cal)",
        "types": "lunch",
        "image": "https://barnabyscafe.com/mobile/images/barnaby-s%20grilled%20chicken%20breast.jpg?crc=235139527",
        "days":["Monday"]
      },
      {
        "title": "Herbed Rice Pilaf ",
        "calories": "4 oz(144cal) ",
        "types": "lunch",
        "image": "https://images.unsplash.com/photo-1536304993881-ff6e9eefa2a6?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Monday"]
      },
      {
        "title": "Parmesan Roasted Carrots ",
        "calories": "4 oz(92.7cal)",
        "types": "lunch",
        "image": "https://www.yourhomebasedmom.com/wp-content/uploads/2016/05/Parmesan-Roasted-Carrots_FB.jpg",
        "days":["Monday"]
      },
      {
        "title": "Cabbage Rolls ",
        "calories": " 4 oz(87.2 cal)",
        "types": "lunch",
        "image": "https://www.dinneratthezoo.com/wp-content/uploads/2018/11/stuffed-cabbage-rolls-1.jpg",
        "days":["Monday"]
      },
      {
        "title": "Sauteed Kale ",
        "calories": " 4 oz(92.7 cal)",
        "types": "lunch",
        "image": "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/8/13/1/BF_Sauteed-Kale-1_s4x3.jpg.rend.hgtvcom.826.620.suffix/1382541816255.jpeg",
        "days":["Monday"]
      },
      {
        "title": "Parmesan Roasted Potatoes ",
        "calories": " 4 oz(92.7 cal)",
        "types": "lunch",
        "image": "https://iwashyoudry.com/wp-content/uploads/2018/11/Parmesan-Roasted-Potatoes-3-675x859.jpg",
        "days":["Monday"]
      },
      {
        "title": "Pasta Bar ",
        "calories": " 6 oz(345 cal)",
        "types": "lunch",
        "image": "https://images.unsplash.com/photo-1533777324565-a040eb52facd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Wednesday", "Monday"]
      },
      {
        "title": "Hamburger on Bun",
        "calories": "1 sandwich (426.9 cal) ",
        "types": "lunch",
        "image": "https://i.ytimg.com/vi/ace-TXcX6GY/hqdefault.jpg",
        "days":["Monday"]
      },
      {
        "title": "Caramelized Onions ",
        "calories": " 1 oz(36.1 cal)",
        "types": "lunch",
        "image": "https://www.foodiecrush.com/wp-content/uploads/2017/10/Caramelized-Onions-foodiecrush.com-012.jpg",
        "days":["Monday"]
      },
      {
        "title": "American Cheese Slice ",
        "calories": "1 slice(51.9 cal) ",
        "types": "lunch",
        "image": "https://cdn.vox-cdn.com/thumbor/kfZfsC01EPpPtFNNC94Uc68XMFk=/0x0:473x362/1200x800/filters:focal(200x144:274x218)/cdn.vox-cdn.com/uploads/chorus_image/image/61737207/89120822_170667a.0.jpg",
        "days":["Monday"]
      },
      {
        "title": "Sauteed Mushrooms ",
        "calories": "1 oz(20.4 cal) ",
        "types": "lunch",
        "image": "https://www.bowlofdelicious.com/wp-content/uploads/2019/10/Sauteed-Mushrooms-2.jpg",
        "days":["Monday"]
      },
      {
        "title": "Coleslaw ",
        "calories": " 1/2 oz(9.7 cal)",
        "types": "lunch",
        "image": "https://www.thespruceeats.com/thmb/zrP2Lzmpmor9rgYlkmJv7jZNqkY=/4494x2528/smart/filters:no_upscale()/quick-and-easy-creamy-coleslaw-3053933-hero-01-5c29166bc9e77c0001d08c7f.jpg",
        "days":["Monday"]
      },
      {
        "title": "Sliced Jalapeno ",
        "calories": " 1/2 oz(3.8 cal)",
        "types": "lunch",
        "image": "https://images.unsplash.com/photo-1582998489505-b9b8b172073e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Monday"]
      },
      {
        "title": "Hard Fried Eggs ",
        "calories": " 1 ea(83 cal)",
        "types": "lunch",
        "image": "https://images.unsplash.com/photo-1585941479819-ce92ab8167fc?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Monday"]
      },
      {
        "title": "French Fries",
        "calories": " 4 oz(224.3 cal)",
        "types": "lunch",
        "image": "https://images.unsplash.com/photo-1484009902830-a314db11070c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Monday", "Tuesday", "Friday"]
      },
      {
        "title": "Grilled Cheese Sandwich ",
        "calories": " 1 sandwich(378 cal)",
        "types": "lunch",
        "image": "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/grilled-cheese-horizontal-jpg-1522266016.jpg",
        "days":["Monday"]
      },

      {
        "title": "Chana Masala ",
        "calories": " 4 oz(122.1 cal)",
        "types": "lunch",
        "image": "https://images.immediate.co.uk/production/volatile/sites/2/2019/04/OLI-EasterIssue2019-Everyday_ChannaMasala_31526-bc1e5ad.jpg?webp=true&quality=45&resize=1880%2C799",
        "days":["Tuesday"]
      },
      {
        "title": "Lyonnaise Zucchini & Summer Squash ",
        "calories": "4 oz(150.7 cal) ",
        "types": "lunch",
        "image": "https://www.thespruceeats.com/thmb/-JW2B10fZjiXCsXsYl87oSXcZLU=/3136x2352/smart/filters:no_upscale()/skilletzucchinionionsbacon32016-56e187ed3df78c5ba056920c.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Sour Cream Chives Mashed Potatoes ",
        "calories": " 4 oz(150.7 cal)",
        "types": "lunch",
        "image": "https://images.media-allrecipes.com/userphotos/560x315/6723028.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Herb Roasted Pork ",
        "calories": "4 oz meat(254 cal)",
        "types": "lunch",
        "image": "https://www.budgetbytes.com/wp-content/uploads/2012/02/HerbRubbedPorkLoinclose.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Au Jus ",
        "calories": " 1 oz(1.7 cal)",
        "types": "lunch",
        "image": "https://www.mamalovesfood.com/wp-content/uploads/2015/12/HowtoMakeAuJusWithoutPanDrippingsRecipe.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Grilled Onions ",
        "calories": " 2tbsp(37.1 cal)",
        "types": "lunch",
        "image": "https://www.foodiecrush.com/wp-content/uploads/2017/10/Caramelized-Onions-foodiecrush.com-012.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Baked Apples ",
        "calories": " 1 ea(252.1 cal)",
        "types": "lunch",
        "image": "https://i.pinimg.com/474x/ce/e8/7b/cee87b8c5210ceb49193f60ebde51974--cooked-apples-baked-cinnamon-apple-slices.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Dinner Roll ",
        "calories": " 1 ea(87.9 cal)",
        "types": "lunch",
        "image": "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2019/03/dinner-rolls-in-pan.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Fish Sandwich ",
        "calories": " 1 ea464.3 cal)",
        "types": "lunch",
        "image": "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2013/3/6/0/ZB0309H_Fried-Fish-Sandwich_s4x3.jpg.rend.hgtvcom.826.620.suffix/1393211242636.jpeg",
        "days":["Tuesday"]
      },
      {
        "title": "Braized Beef Tips ",
        "calories": "6oz(227.9 cal)",
        "types": "lunch",
        "image": "https://img.sndimg.com/food/image/upload/c_thumb,q_80,w_573,h_322/v1/img/recipes/20/40/92/picAs4mYX.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Baked Fish ",
        "calories": " 4 oz(264.7 cal)",
        "types": "lunch",
        "image": "https://www.diabetesfoodhub.org/system/thumbs/system/images/recipes/64-baked-fish-fillets-diabetic_523150835_011419_2_3547183137.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Garlic Mashed Potatoes",
        "calories": "4 oz(124.6 cal) ",
        "types": "lunch",
        "image": "https://www.spendwithpennies.com/wp-content/uploads/2019/10/Roasted-Garlic-Mashed-Potatoes-SpendWithPennies-5.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Fried Brussels Sprouts ",
        "calories": "4 oz(130.1 cal) ",
        "types": "lunch",
        "image": "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2018/11/2/0/KC1903_Fried-Brussels-Sprouts-with-Apple-Reduction-and-Candied-Pumpkin-Seeds_s4x3.jpg.rend.hgtvcom.826.620.suffix/1541173344922.jpeg",
        "days":["Wednesday"]
      },
      {
        "title": "Tofu Masala ",
        "calories": "4 oz(112.8 cal) ",
        "types": "lunch",
        "image": "https://yupitsvegan.com/wp-content/uploads/2017/11/tofu-tikka-masala-vegan-slow-cooker-square.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Broccoli Rice Casserole ",
        "calories": "4 oz(134.6 cal) ",
        "types": "lunch",
        "image": "https://www.thespruceeats.com/thmb/eAQgLyu3lKkjGI2j7JEulZBSzx0=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/broccoli-rice-casserole-3060928-hero-01-5c50df0a4cedfd0001f911c9.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Lemon & Parsley Roasted Cauliflower ",
        "calories": "4 oz(100.8 cal) ",
        "types": "lunch",
        "image": "https://assets.bonappetit.com/photos/57addd45f1c801a1038bcc76/master/w_940,h_600,c_limit/roasted-cauliflower-with-lemon-parsley-dressing.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Cheese Quesadillas ",
        "calories": "1 ea (445.9 cal)",
        "types": "lunch",
        "image": "https://www.tasteofhome.com/wp-content/uploads/2018/01/Three-Cheese-Quesadillas_exps42465_SD1785600D43B_RMS.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Fresh Fried Chipotle BBQ Chips ",
        "calories": " 4 oz(281.8 cal)",
        "types": "lunch",
        "image": "https://masonfit.com/wp-content/uploads/2018/08/cheddar-sour-cream-air-fried-potato-chips-1024x1024.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Spicy Tomato Habanero Salsa ",
        "calories": "1 floz (7.1 cal) ",
        "types": "lunch",
        "image": "https://www.closetcooking.com/wp-content/uploads/2011/08/HabaneroSalsa5006933.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Garden Burger ",
        "calories": " 1 ea (151.4 cal)",
        "types": "lunch",
        "image": "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/5/4/2/FNM_060112-Garden-Burger-Recipe_s4x3.jpg.rend.hgtvcom.826.620.suffix/1371606263641.jpeg",
        "days":["Monday", "Tuesday", "Wednesday"]
      },
      {
        "title": "Turkey Burger ",
        "calories": " 1 sandwich(362.5 cal)",
        "types": "lunch",
        "image": "https://www.honeysucklewhite.com/wp-content/uploads/2019/03/HSW_Recipe_Square_0006_CaliforniaTurkeyBurger.jpg",
        "days":["Wednesday", "Thursday", "Friday"]
      },
      {
        "title": "Thai BBQ Chicken ",
        "calories": " 1 ea(215.7 cal)",
        "types": "lunch",
        "image": "https://www.seriouseats.com/recipes/images/2014/06/20130513-gai-yang-food-lab-recipe-30.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Stuffed Shells Florentine ",
        "calories": "2 ea(231.7 cal) ",
        "types": "lunch",
        "image": "https://d1bjorv296jxfn.cloudfront.net/s3fs-public/111-Florentine_Stuffed_Shells_1.jpg",
        "days":["Friday"]
      },
      {
        "title": "Jasmine Pilaf with Mushrooms and Peas ",
        "calories": "4 oz(109.3 cal) ",
        "types": "lunch",
        "image": "https://www.recipetineats.com/wp-content/uploads/2017/08/Mushroom-Rice-Pilaf-4-1.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Cheese Ravioli ",
        "calories": "1/2 cup(238.6 cal) ",
        "types": "lunch",
        "image": "https://selfproclaimedfoodie.com/wp-content/uploads/four-cheese-ravioli-self-proclaimed-foodie-6.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Sauteed Spinach ",
        "calories": " 4 oz(60cal)",
        "types": "lunch",
        "image": "https://images.unsplash.com/photo-1578283326173-fbb0f83b59b2?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Thursday"]
      },
      {
        "title": "Roasted Mixed Vegetables ",
        "calories": "4 oz(60cal) ",
        "types": "lunch",
        "image": "https://www.tablefortwoblog.com/wp-content/uploads/2013/09/roasted-veggies-tablefortwoblog-3.jpg",
        "days":["Thursday"]
      },
      {
        "title": "Chicken Fried Rice ",
        "calories": " 1 cup(280.1 cal)",
        "types": "lunch",
        "image": "https://valentinascorner.com/wp-content/uploads/2018/04/Easy-Chicken-Fried-Rice-10-of-11.jpg",
        "days":["Thursday"]
      },
      {
        "title": "Pulled Pork Sandwich ",
        "calories": " 1 serving(632.5 cal)",
        "types": "lunch",
        "image": "https://www.sixsistersstuff.com/wp-content/uploads/2012/03/smoked-pulled-pork-683x1024.jpg",
        "days":["Friday"]
      },
      {
        "title": "Onion Rings ",
        "calories": " 4 oz(320.7 cal)",
        "types": "lunch",
        "image": "https://images.unsplash.com/photo-1521231586907-4ae95c1934c1?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Tuesday"]
      },
      {
        "title": "Sesame Garlic Shrimp ",
        "calories": "4 oz(266.8 cal) ",
        "types": "lunch",
        "image": "https://www.simplyrecipes.com/wp-content/uploads/2015/09/ginger-sesame-garlic-shrimp-vertical-a-12001.jpg",
        "days":["Friday"]
      },
      {
        "title": "Garlic Rosemary Pork Loin ",
        "calories": " 4 oz(246.3 cal)",
        "types": "lunch",
        "image": "https://livelytable.com/wp-content/uploads/2015/11/rosemary-garlic-pork-loin-4.jpg",
        "days":["Thursday"]
      },
      {
        "title": "Basmati Rice ",
        "calories": "4 oz(147.4 cal) ",
        "types": "lunch",
        "image": "https://images.unsplash.com/photo-1536304993881-ff6e9eefa2a6?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Friday"]
      },
      {
        "title": "Chard and Spring Pea Risotto ",
        "calories": " 4 oz(71 cal)",
        "types": "lunch",
        "image": "https://discoverhealth.org/files/imgs/recipes/__thumbs/chard-spring-pea-farro-risotto_1200x600.jpg/chard-spring-pea-farro-risotto_1200x600__600x300.jpg",
        "days":["Thurdsay"]
      },
      {
        "title": "Cauliflower and Snow Peas ",
        "calories": "4 oz(64.3 cal)",
        "types": "lunch",
        "image": "https://salu-salo.com/wp-content/uploads/2018/07/Sauteed-Cauliflower-and-Snow-Peas-3.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Carrots with Ginger ",
        "calories": " 4 oz(61.5 cal)",
        "types": "lunch",
        "image": "https://images.unsplash.com/photo-1567137827022-fbe18eff7275?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Tuesday"]
      },
      {
        "title": "Ice Cream Sundae Bar ",
        "calories": "1 serving(48.1 cal) ",
        "types": "lunch",
        "image": "https://www.thekiwicountrygirl.com/wp-content/uploads/2016/03/Ice-Cream-Sundae-Bar-1-1024x683.jpg",
        "days": ["Tuesday"]
      },
      {
        "title": "Red Velvet Cake ",
        "calories": " 1 slice(583.1 cal)",
        "types": "lunch",
        "image": "https://www.livewellbakeoften.com/wp-content/uploads/2019/01/Red-Velvet-Cake-8.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Barbeque Chicken Sub ",
        "calories": " 1 ea(669.3 cal)",
        "types": "lunch",
        "image": "https://www.tasteofhome.com/wp-content/uploads/2017/10/exps18430_FM153592C03_10_5b.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Texas Pot Roast ",
        "calories": " 4 oz(138.6 cal)",
        "types": "dinner",
        "image": "https://i.pinimg.com/originals/4a/be/dd/4abedd4b959aa0ffb702f9097c2fb22e.png",
        "days":["Monday"]
      },
      {
        "title": "Barbecued Pork Chop ",
        "calories": " 1 ea(252.2 cal)",
        "types": "dinner",
        "image": "https://assets.myfoodandfamily.com/adaptivemedia/rendition/65866_3000x2000.jpg?id=0a82387424551f7d919e2dc55c759b9a1176f11a&ht=650&wd=1004&clid=pim",
        "days":["Monday"]
      },
      {
        "title": "Steamed Brown Rice ",
        "calories": " 4 oz(137 cal)",
        "types": "dinner",
        "image": "https://cdn.shortpixel.ai/client/to_webp,q_lossy,ret_img,w_973/https://healthiersteps.com/wp-content/uploads/2019/02/how-to-cook-jasmine-brown-rice-1.jpg",
        "days":["Monday"]
      },
      {
        "title": "Vegetarian Boston Baked Beans ",
        "calories": "4 oz(144.1 cal) ",
        "types": "dinner",
        "image": "https://www.thespruceeats.com/thmb/9QXthCsyxrHaxB24mwATcogCiYo=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/pot-of-baked-beans-on-a-blue-gingham-155127673-5a9c515c642dca0037579aaf.jpg",
        "days":["Monday"]
      },
      {
        "title": "Beef Gravy ",
        "calories": " 1 oz(9.2 cal)",
        "types": "dinner",
        "image": "https://www.lecremedelacrumb.com/wp-content/uploads/2016/11/brown-gravy-102-500x500.jpg",
        "days":["Monday", "Wednesday"]
      },
      {
        "title": "Carrots and Broccoli ",
        "calories": "4 oz(59 cal) ",
        "types": "dinner",
        "image": "https://images.unsplash.com/photo-1518164147695-36c13dd568f5?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Monday"]
      },
      {
        "title": "Eggplant Creole ",
        "calories": " 4 oz(32.6 cal)",
        "types": "dinner",
        "image": "https://blog.fatfreevegan.com/wp-content/uploads/2006/07/eggplant-creole.jpg",
        "days":["Monday"]
      },
      {
        "title": "Vegetable Fried Rice ",
        "calories": " 4 oz(158 cal)",
        "types": "dinner",
        "image": "https://images.unsplash.com/photo-1584269600464-37b1b58a9fe7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Monday"]
      },
      {
        "title": "Asian Vegetable Blend ",
        "calories": " 4 oz(41.8 cal)",
        "types": "dinner",
        "image": "https://i.pinimg.com/originals/5e/b7/e0/5eb7e0fd7c66cdbdd6312805c2b517ce.jpg",
        "days":["Monday"]
      },
      {
        "title": "Hard Shell Beef Tacos ",
        "calories": "1 ea(285.9 cal) ",
        "types": "dinner",
        "image": "https://www.dinneratthezoo.com/wp-content/uploads/2018/05/ground-beef-tacos-2.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Grilled Adobo Chicken ",
        "calories": "4 oz(254.6 cal) ",
        "types": "dinner",
        "image": "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fcdn-image.foodandwine.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2Fgrilled-chicken-adobo.jpg%3Fitok%3Dz9_QlJun",
        "days":["Tuesday"]
      },
      {
        "title": "Mexican Rice ",
        "calories": " 4 oz(140.3 cal)",
        "types": "dinner",
        "image": "https://www.yellowblissroad.com/wp-content/uploads/2016/03/Mexican-Rice-6-of-8.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Grilled Corn ",
        "calories": "1 ea(163.4 cal) ",
        "types": "dinner",
        "image": "https://www.seriouseats.com/recipes/images/2016/08/20160802-grilled-corn-harissa-mint-1500x1125.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Chipotle Pinto Beans ",
        "calories": "4oz(109.1 cal) ",
        "types": "dinner",
        "image": "https://img.sndimg.com/food/image/upload/c_thumb,q_80,w_412,h_232/v1/img/recipes/14/65/49/picE3Q9yy.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Tofu and Veggie Scampi ",
        "calories": "4 oz(164.3 cal) ",
        "types": "dinner",
        "image": "https://www.connoisseurusveg.com/wp-content/uploads/2016/05/vegan-tofu-artichoke-scampi-1200-1-of-1.jpg",
        "days":["Tuesday"]
      },
      {
        "title": "Southern Fried Chicken ",
        "calories": " 1 serving(534.7 cal)",
        "types": "dinner",
        "image": "https://www.thespruceeats.com/thmb/5EJU2Kz4m7N3i2tTZe1G_wyzoVc=/1500x844/smart/filters:no_upscale()/classic-southern-fried-chicken-3056867-11_preview-5b106156119fa80036c19a9e.jpeg",
        "days":["Wednesday"]
      },
      {
        "title": "Baked Chicken ",
        "calories": "1 ea(160.7 cal) ",
        "types": "dinner",
        "image": "https://www.gimmesomeoven.com/wp-content/uploads/2015/05/Oven-Baked-Chicken-Breast-Recipe-4-1.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Salisbury Steak ",
        "calories": " 1 ea(275.5 cal)",
        "types": "dinner",
        "image": "https://www.cscassets.com/recipes/large_cknew/large_25529.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "White Rice ",
        "calories": " 4oz(150.4 cal)",
        "types": "dinner",
        "image": "https://www.thespruceeats.com/thmb/eyNdncFPRMd_imxHvkbMopfEe-s=/3797x2848/smart/filters:no_upscale()/how-to-make-basic-white-rice-2355883-10-5b0da96eba6177003622896e.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Signature Macaroni and Cheese ",
        "calories": " 4 oz(63.2 cal)",
        "types": "dinner",
        "image": "https://i.ytimg.com/vi/Cm2SVpdw3_4/maxresdefault.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Vegetarian Collard Greens ",
        "calories": "4oz (63.2 cal) ",
        "types": "dinner",
        "image": "https://www.seriouseats.com/recipes/images/2017/02/20170217-vegan-collard-greens-vicky-wasik-6-1500x1125.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Steamed Broccoli ",
        "calories": "4oz(38.7 cal) ",
        "types": "dinner",
        "image": "https://healthyrecipesblogs.com/wp-content/uploads/2012/09/steamed-broccoli-square.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Crispy Vegan Chicken Tenders ",
        "calories": "2 ea(180 cal) ",
        "types": "dinner",
        "image": "https://dmi4pvc5gbhhd.cloudfront.net/CACHE/images/nuggets/306cb93dfe00a4de6c571edcdb755d0e.jpg",
        "days":["Wednesday"]
      },
      {
        "title": "Baked Sweet Potato ",
        "calories": " 1 ea (135.9 cal)",
        "types": "dinner",
        "image": "https://images.unsplash.com/photo-1576458634550-157c96efa950?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Wednesday"]
      },
      {
        "title": "Beef Lo Mein ",
        "calories": "4 oz(242.5 cal) ",
        "types": "dinner",
        "image": "https://therecipecritic.com/wp-content/uploads/2017/08/0C4A9579.jpg",
        "days":["Thurdsay"]
      },
      {
        "title": "Honey Ginger Glazed Chicken ",
        "calories": "4 oz(267.6 cal) ",
        "types": "dinner",
        "image": "https://img.sndimg.com/food/image/upload/c_thumb,q_80,w_412,h_232/v1/img/recipes/75/62/8/pic3fCmn0.jpg",
        "days":["Thursday"]
      },
      {
        "title": "Brown Fried Rice ",
        "calories": " 4 oz(181.4 cal)",
        "types": "dinner",
        "image": "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/8c13419678474dfa97b562df829674d2/BFV36769_InstantPotDinners-FB1080x1080.jpg",
        "days":["Thursday"]
      },
      {
        "title": "Squash, Zucchini Peppers and Carrots ",
        "calories": "4 oz(51 cal) ",
        "types": "dinner",
        "image": "https://natashaskitchen.com/wp-content/uploads/2015/10/Roasted-Vegetables-Recipe-10-600x900.jpg",
        "days":["Thurdsay"]
      },
      {
        "title": "Asparagus with Garlic ",
        "calories": " 4 oz(53.9 cal)",
        "types": "dinner",
        "image": "https://www.myfooddiary.com/blog/asset/2017/roasted_asparagus_recipe.jpg",
        "days":["Thurdsay"]
      },
      {
        "title": "Southwestern Black Bean Pot Pie ",
        "calories": "4 oz(133.6 cal) ",
        "types": "dinner",
        "image": "https://www.cottercrunch.com/wp-content/uploads/2016/12/updated-HERO-shot-southwestern-polenta-casserole.jpg",
        "days":["Thursday"]
      },
      {
        "title": "Fried Fish ",
        "calories": " 1 ea(254.4 cal)",
        "types": "dinner",
        "image": "https://images.unsplash.com/photo-1515669097368-22e68427d265?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Thurdsay"]
      },
      {
        "title": "Creole Spaghetti ",
        "calories": "4 oz(140.2 cal) ",
        "types": "dinner",
        "image": "https://images.unsplash.com/photo-1585509227843-d315eb54e6fc?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Friday"]
      },
      {
        "title": "Classic Fried Green Tomatoes ",
        "calories": " 3 slice(314.6 cal)",
        "types": "dinner",
        "image": "https://i2.wp.com/theanchoredkitchen.com/wp-content/uploads/2018/07/DSC_5254.jpg?resize=900%2C602",
        "days":["Friday"]
      },
      {
        "title": "Cheese Grits ",
        "calories": "4 oz(82.9 cal) ",
        "types": "dinner",
        "image": "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cheese-grits-horinzontal-2-1550618467.png?crop=0.668xw:1.00xh;0.265xw,0&resize=480:*",
        "days":["Friday"]
      },
      {
        "title": "Corn with Pimento ",
        "calories": "4 oz(37.6 cal) ",
        "types": "dinner",
        "image": "https://vegonline.org/wp-content/uploads/2013/03/chilled-corn-pimento-salad-610x300.jpg",
        "days":["Friday"]
      },
      {
        "title": "Vegan Meatballs ",
        "calories": "3 ea(150 cal) ",
        "types": "dinner",
        "image": "https://minimalistbaker.com/wp-content/uploads/2018/05/PERFECT-Vegan-Meatballs-10-ingredients-easy-to-make-BIG-flavor-SO-delicious-vegan-glutenfree-dinner-meatball-recipe-minimalistbaker-6.jpg",
        "days":["Friday"]
      },
      {
        "title": "Chickpeas and Spinach ",
        "calories": "4 oz(134 cal) ",
        "types": "dinner",
        "image": "https://static01.nyt.com/images/2019/01/15/dining/mrs-chickpeas-with-baby-spinach/merlin_148333146_7dc41b22-3671-43a5-a168-9f78701be99e-articleLarge.jpg",
        "days":["Friday"]
      },
      {
        "title": "Spaghetti ",
        "calories": "4 oz(178 cal) ",
        "types": "dinner",
        "image": "https://images.unsplash.com/photo-1585509227843-d315eb54e6fc?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
        "days":["Friday"]
      },
      {
        "title": "Marinara Sauce ",
        "calories": " 1 oz(13.8 cal)",
        "types": "dinner",
        "image": "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2014/11/Marinara-Sauce.jpg",
        "days":["Friday"]
      }
    ]
}
"""

class NetworkManager {
    static func downloadRefacMenu(completion:((_ json: Data?) -> Void)){
        completion(Data(refacMenu.utf8))
    }
}
