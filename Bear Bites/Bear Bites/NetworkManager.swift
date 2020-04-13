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
      "image": "https://images.unsplash.com/photo-1584278858764-2ddcd7f228da?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Pork Bacon",
      "calories": "2 slices(87 cal)",
      "types": "breakfast",
      "image": " https://images.unsplash.com/photo-1566987026567-5fddcbcfabbd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30z"
    },
    {
      "title": "Turkey Sausage Patty ",
      "calories": " 2 oz(86.4 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1523139348426-081681667818?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Tater Tots ",
      "calories": " 1/2 cup(202.3 cal)",
      "types": " breakfast",
      "image": "https://images.unsplash.com/photo-1564976704241-79e265ed90fc?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Scrambled Eggs ",
      "calories": " 1/2 cup(202.3 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1556910636-c508da52e01c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Broccoli Quiche ",
      "calories": "1 slice (311.3 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1546241126-da278b8ec3ac?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Oatmeal ",
      "calories": "4 oz(71.6 cal) ",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1585849540407-2ddb0ecaf8ad?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Grits ",
      "calories": " 4 oz(72.7 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1516831083365-0efd347838f9?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Biscuits ",
      "calories": " 1 ea (198.5 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1544787219-7f47ccb76574?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Country Ham ",
      "calories": " 20z meat(67.2 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1555864688-4d6d1437fa0a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Turkey Sausage Links ",
      "calories": " 1 ea(34.4 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1523139348426-081681667818?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30",
      "day": "tuesday"
    },
    {
      "title": "Potatoes OBrien ",
      "calories": "1/2 cup(101.6 cal) ",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1548869205-3b74ad80e605?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Scrambled Eggs ",
      "calories": " 1/2 cup(202.3 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1556910636-c508da52e01c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Scrambled Eggs with Cheese ",
      "calories": "1/2 cup(246.3 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1556910636-c508da52e01c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Oatmeal ",
      "calories": "4 oz(71.6 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1585849540407-2ddb0ecaf8ad?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Grits ",
      "calories": "4 oz(72.7 cal) ",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1516831083365-0efd347838f9?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Crispy Stuffed French Toast ",
      "calories": "1 ea(563 cal) ",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1572214649933-125dae38a8d8?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Corned Beef Hash",
      "calories": " 1 serving(204 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1548869206-93b036288d7e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Turkey Sausage Patty ",
      "calories": " 2 oz(86.4 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1523139348426-081681667818?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Crispy Hashbrowns ",
      "calories": "1/2 cup(202.3 cal) ",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1573147119028-847a6ad0c3e1?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Scrambled Eggs ",
      "calories": " 1/2 cup(202.3 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1556910636-c508da52e01c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Denver Scrambled Eggs ",
      "calories": " 1/2 cup(141.7 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1556910636-c508da52e01c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Oatmeal ",
      "calories": " 4 oz(71.6 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1585849540407-2ddb0ecaf8ad?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Grits ",
      "calories": "4 oz(72.7 cal) ",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1516831083365-0efd347838f9?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Banana Pancakes ",
      "calories": "2 ea(173.8 cal) ",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1575853121743-60c24f0a7502?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Pork Bacon",
      "calories": " 2 slice(87 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1566987026567-5fddcbcfabbd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Turkey Sausage Links ",
      "calories": " 2 ea(68.9 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1523139348426-081681667818?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Scrambled Eggs ",
      "calories": "1/2 cup(202.3 cal) ",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1556910636-c508da52e01c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Potatoes OBrien ",
      "calories": " 1/2 cup(101.6 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1548869205-3b74ad80e605?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Onion and Cheese Quiche ",
      "calories": "1 slice(180.7 cal) ",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1563997028612-a9e93cf386ac?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Oatmeal ",
      "calories": " 4 oz(71.6 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1585849540407-2ddb0ecaf8ad?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Grits ",
      "calories": " 4oz(72.7 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1516831083365-0efd347838f9?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Biscuits ",
      "calories": " 1 ea (198.5 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1544787219-7f47ccb76574?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Country Ham ",
      "calories": "20z meat(67.2 cal) ",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1524438418049-ab2acb7aa48f?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Turkey Sausage Patty ",
      "calories": " 2 0z(86.4 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1523139348426-081681667818?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Tator Tots ",
      "calories": " 1/2 cup(168.7 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1564976704241-79e265ed90fc?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Scrambled Eggs ",
      "calories": " 1/2 cup(202.3 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1556910636-c508da52e01c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Scrambled Eggs with Cheese ",
      "calories": "1/2 cup(246.3 cal) ",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1556910636-c508da52e01c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Oatmeal ",
      "calories": " 4 oz(71.6 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1585849540407-2ddb0ecaf8ad?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Grits ",
      "calories": " 4 oz(72.7 cal)",
      "types": "breakfast",
      "image": "https://images.unsplash.com/photo-1516831083365-0efd347838f9?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Batter Fried Cod ",
      "calories": "4 oz (295 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1562967914-01efa7e87832?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Chicken Breast Newport ",
      "calories": " 4 oz(150.9 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1580959452115-78f3022d8bcd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Herbed Rice Pilaf ",
      "calories": "4 oz(144cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1536304993881-ff6e9eefa2a6?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Parmesan Roasted Carrots ",
      "calories": "4 oz(92.7cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1491177787055-8ed271611c06?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Cabbage Rolls ",
      "calories": " 4 oz(87.2 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1498601566872-21706d8e6fdf?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Sauteed Kale ",
      "calories": " 4 oz(92.7 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1548492212-8cd969151279?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Parmesan Roasted Potatoes ",
      "calories": " 4 oz(92.7 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1529694157872-4e0c0f3b238b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Pasta Bar ",
      "calories": " 6 oz(345 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1533777324565-a040eb52facd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Hamburger on Bun 1 sandwich",
      "calories": "(426.9 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1577303935007-0d306ee638cf?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Caramelized Onions ",
      "calories": " 1 oz(36.1 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1572802419224-296b0aeee0d9?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "American Cheese Slice ",
      "calories": "1 slice(51.9 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1532264523420-881a47db012d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Sauteed Mushrooms ",
      "calories": "1 oz(20.4 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1473773621872-5ab40eaa5b39?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Coleslaw ",
      "calories": " 1/2 oz(9.7 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1580554530913-3241d593478d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Sliced Jalapeno ",
      "calories": " 1/2 oz(3.8 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1582998489505-b9b8b172073e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Hard Fried Eggs ",
      "calories": " 1 ea(83 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1579008577893-3d57258d698b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Pork Bacon ",
      "calories": " 2 slices(87 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1566987026567-5fddcbcfabbd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "French Fries",
      "calories": " 4 oz(224.3 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1484009902830-a314db11070c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Garden Burger",
      "calories": " 1 ea(151.4 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1513959387875-668420198101?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Grilled Cheese Sandwich ",
      "calories": " 1 sandwich(378 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1517254456976-ee8682099819?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "French Fries",
      "calories": "4oz(224.3 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1484009902830-a314db11070c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Garden Burger ",
      "calories": "1 ea(362.5 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1513959387875-668420198101?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Turkey Burger ",
      "calories": " 1 sandwitch(362.5 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1581574470202-7e344021b092?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Chana Masala ",
      "calories": " 4 oz(122.1 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1551540827-6c8ae1aaedbb?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Lyonnaise Zucchini & Summer Squash ",
      "calories": "4 oz(150.7 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1580294672673-4fbda48428be?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Sour Cream Chives Mashed Potatoes ",
      "calories": " 4 oz(150.7 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1584126467159-053d017224d1?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Herb Roasted Pork ",
      "calories": "4 oz meat(254 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1513135237078-98427911d825?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Au Jus ",
      "calories": " 1 oz(1.7 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1512003867696-6d5ce6835040?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Grilled Onions ",
      "calories": " 2tbsp(37.1 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1542706133547-2b957ec7ee5e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Baked Apples ",
      "calories": " 1 ea(252.1 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1424591185129-8a73a1111adf?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Dinner Roll ",
      "calories": " 1 ea(87.9 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1498579485796-98be3abc076e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Fish Sandwich ",
      "calories": " 1 ea464.3 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1510523717636-709ac1c0ae5d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Garden Burger ",
      "calories": " 1 ea(151.4 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1513959387875-668420198101?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Turkey Burger ",
      "calories": " 1 sandwich(362.5 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1581574470202-7e344021b092?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Braized Beef Tips ",
      "calories": "6oz(227.9 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1462952362105-0555a2525a94?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Baked Fish ",
      "calories": " 4 oz(264.7 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1562003904-99752df86877?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Garlic Mashed ",
      "calories": "4 oz(124.6 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1563131723-e7fbda51c55e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Fried Brussels Sprouts ",
      "calories": "4 oz(130.1 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1578678416030-d59936abe284?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Tofu Marsala ",
      "calories": "4 oz(112.8 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1541345544687-ef6c84c669cd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Broccoli Rice Casserole ",
      "calories": "4 oz(134.6 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1546241126-da278b8ec3ac?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Lemon & Parsley Roasted Cauliflower ",
      "calories": "4 oz(100.8 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1578235720590-1f0534ea13f7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Pasta Bar ",
      "calories": " 6 oz(345 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1533777324565-a040eb52facd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Cheese Quesadillas ",
      "calories": "1 ea (445.9 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1541521804416-c930f499acb0?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Fresh Fried Chipotle BBQ Chips ",
      "calories": " 4 oz(281.8 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1495749388945-9d6e4e5b67b1?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Spicy Tomato Habanero Salsa ",
      "calories": "1 floz (7.1 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1534940519139-f860fb3c6e38?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Garden Burger ",
      "calories": " 1 ea (151.4 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1513959387875-668420198101?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Turkey Burger ",
      "calories": " 1 sandwich(362.5 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1581574470202-7e344021b092?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Thai BBQ Chicken ",
      "calories": " 1 ea(215.7 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1549573308-806b7492063e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Stuffed Shells Florentine ",
      "calories": "2 ea(231.7 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1545262810-77515befe149?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Jasmine Pilaf with Mushrooms and Peas ",
      "calories": "4 oz(109.3 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1473773621872-5ab40eaa5b39?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Cheese Ravioli ",
      "calories": "1/2 cup(238.6 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1465911817134-741b5e473a1b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Sauteed Spinach ",
      "calories": " 4 oz(60cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1578283326173-fbb0f83b59b2?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Roasted Mixed Vegetables ",
      "calories": "4 oz(60cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1554959476-11cb92f3d610?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Chicken Fried Rice ",
      "calories": " 1 cup(280.1 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1537543585341-e990ee22bb00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Pulled Pork Sandwich ",
      "calories": " 1 serving(632.5 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1555196301-9acc011dfde4?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Onion Rings ",
      "calories": " 4 oz(320.7 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1521231586907-4ae95c1934c1?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Garden Burger ",
      "calories": "1 ea(151.4 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1513959387875-668420198101?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Turkey Burger ",
      "calories": " 1 ea(362.5 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1581574470202-7e344021b092?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Sesame Garlic Shrimp ",
      "calories": "4 oz(266.8 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1555196301-9acc011dfde4?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Garlic Rosemary Pork Loin ",
      "calories": " 4 oz(246.3 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1535989201553-6a8b80a4fba6?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Basmati Rice ",
      "calories": "4 oz(147.4 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1536304993881-ff6e9eefa2a6?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Chard and Spring Pea Risotto ",
      "calories": " 4 oz(71 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1577862236121-c237c73ef4ed?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Cauliflower and Snow Peas ",
      "calories": "4 oz(64.3 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1560243598-95bb814deda6?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Carrots with Ginger ",
      "calories": " 4 oz(61.5 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1567137827022-fbe18eff7275?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Ice Cream Sundae Bar ",
      "calories": "1 serving(48.1 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1541490178313-cedc90f7e08c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Red Velvet Cake ",
      "calories": " 1 slice(583.1 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1537026952880-102669376468?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Barbeque Chicken Sub ",
      "calories": " 1 ea(669.3 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1549573308-806b7492063e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "French Fries ",
      "calories": "4 oz(224.3 cal) ",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1582998487710-959e65ca50c1?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Garden Burger ",
      "calories": " 1 ea(151.4 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1513959387875-668420198101?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Turkey Burger ",
      "calories": " 1 ea(362.5 cal)",
      "types": "lunch",
      "image": "https://images.unsplash.com/photo-1581574470202-7e344021b092?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Texas Pot Roast ",
      "calories": " 4 oz(138.6 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1532136868905-8094ef8ef5f2?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Barbecued Pork Chop ",
      "calories": " 1 ea(252.2 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1571067224158-622a54542fed?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Steamed Brown Rice ",
      "calories": " 4 oz(137 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1476270874743-4db8ec55dd69?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Vegetarian Boston Baked Beans ",
      "calories": "4 oz(144.1 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1582570674250-1d2e41c89860?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Beef Gravy ",
      "calories": " 1 oz(9.2 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1432139509613-5c4255815697?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Carrots and Broccoli ",
      "calories": "4 oz(59 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1518164147695-36c13dd568f5?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Eggplant Creole ",
      "calories": " 4 oz(32.6 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1528825950832-560a4a11473a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Vegetable Fried Rice ",
      "calories": " 4 oz(158 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1584269600464-37b1b58a9fe7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Asian Vegetable Blend ",
      "calories": " 4 oz(41.8 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1548492212-8cd969151279?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Hard Shell Beef Tacos ",
      "calories": "1 ea(285.9 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1562414962-a6b4f966070d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Grilled Adobo Chicken ",
      "calories": "4 oz(254.6 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1549573308-806b7492063e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Mexican Rice ",
      "calories": " 4 oz(140.3 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1533142146849-4620b8191531?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Grilled Corn ",
      "calories": "1 ea(163.4 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1475869430886-fb14585f7443?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Chipotle Pinto Beans ",
      "calories": "4oz(109.1 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1582570674250-1d2e41c89860?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Tofu and Veggie Scampi ",
      "calories": "4 oz(164.3 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1524912252351-940a17b9e3f8?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Southern Fried Chicken ",
      "calories": " 1 serving(534.7 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1549573308-806b7492063e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Baked Chicken ",
      "calories": "1 ea(160.7 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1498408224175-dc9dc5771027?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Salisbury Steak ",
      "calories": " 1 ea(275.5 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1560781290-7dc94c0f8f4f?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Beef Gravy ",
      "calories": "1 oz(9.2 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1432139509613-5c4255815697?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "White Rice ",
      "calories": " 4oz(150.4 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1578363724362-61564a5b2854?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Signature Macaroni and Cheese ",
      "calories": " 4 oz(63.2 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1560177006-c5b5c3cfa75b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Vegetarian Collard Greens ",
      "calories": "4oz (63.2 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1525351549016-1ddd272c8315?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Steamed Broccoli ",
      "calories": "4oz(38.7 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1546241126-da278b8ec3ac?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Crispy Vegan Chicken Tenders ",
      "calories": "2 ea(180 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1549573308-806b7492063e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Vegetarian Collard Greens ",
      "calories": "4oz (63.2 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1525351549016-1ddd272c8315?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Baked Sweet Potato ",
      "calories": " 1 ea (135.9 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1576458634550-157c96efa950?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Beef Lo Mein ",
      "calories": "4 oz(242.5 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1508767338923-f2d15fc531d3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Honey Ginger Glazed Chicken ",
      "calories": "4 oz(267.6 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1549573308-806b7492063e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Brown Fried Rice ",
      "calories": " 4 oz(181.4 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Squash, Zucchini Peppers and Carrots ",
      "calories": "4 oz(51 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1464226184884-fa280b87c399?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Asparagus with Garlic ",
      "calories": " 4 oz(53.9 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1565685223391-f95fd3910d61?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Southwestern Black Bean Pot Pie ",
      "calories": "4 oz(133.6 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1436262513933-a0b06755c784?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Fried Fish ",
      "calories": " 1 ea(254.4 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1515669097368-22e68427d265?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Creole Spaghetti ",
      "calories": "4 oz(140.2 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1585509227843-d315eb54e6fc?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Classic Fried Green Tomatoes ",
      "calories": " 3 slice(314.6 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1525351549016-1ddd272c8315?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Cheese Grits ",
      "calories": "4 oz(82.9 cal) ",
      "types": "dinner",
      "image": " https://images.unsplash.com/photo-1558981806-ec527fa84c39?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Corn with Pimento ",
      "calories": "4 oz(37.6 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1577883609870-63ef4caa50e9?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Vegan Meatballs ",
      "calories": "3 ea(150 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1547058881-aa0edd92aab3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Chickpeas and Spinach ",
      "calories": "4 oz(134 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1542354254-d856f94968ea?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Spaghetti ",
      "calories": "4 oz(178 cal) ",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1585509227843-d315eb54e6fc?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    },
    {
      "title": "Marinara Sauce ",
      "calories": " 1 oz(13.8 cal)",
      "types": "dinner",
      "image": "https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjEyNDgyN30"
    }
  ]
}
"""

class NetworkManager {
    static func downloadRefacMenu(completion:((_ json: Data?) -> Void)){
        completion(Data(refacMenu.utf8))
    }
}
