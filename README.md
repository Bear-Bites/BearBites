# Bear Bites

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
This will give students a better idea of what is being served on a daily basis on campus facilities. Students will be able to see what foods are being served and have the ability to post pictures/comments and rate the food.

### App Evaluation
- **Category:** Lifestyle
- **Mobile:** Our app can automatically update with food reviews that students can check before they walk in dining halls. Most students are on the move throughout the day so it makes more sense for this to be a mobile application easily accesible on their phone.
- **Story:** Our app helps students answer the question of "what are the top picks in the halls today?" So students can check before they even make the decision to walk in, because once you're in you're forced to make a decision. Personally it helps me as since I don't regualry visit dining halls, I'm not familiar with its scheduele. The app will help me get accustom to what entrees are served certain days to help me decide on what to eat.
- **Market:** Morgan State Students/visitors who want to eat at dining facility will use this app. This provides value to morgan state students deciding which facility to go to.
- **Habit:** An average user will check this app anytime they want to see what is being served at a dining hall on campus. The average user consumes mostly but can interact by posting, liking or disliking reviews.
- **Scope:** This app will be hard to build because it depends on gettig data from morgan state's dining facilities. The stripped down version of this app is still easy to build.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* As a user, I should be able to see the menu for the day, so I can make an informed decison on where I should eat.
* As a user, I should be able to see ratings for menu items, so I can make an informed decison on what I should eat.
* As a user, I should be able to see comments for menu items, so I can make an informed decison on what I should eat.
* As a user, I should be able to post comments and ratings for menu items, so I can help other users make an informed decsion on what they should eat.
* As a user, I should be able to login with google, so I can use the application.
* As a user, I should be able to see overall ratings for each dining facility, so I can make an informed decison on where I should eat.

**Optional Nice-to-have Stories**

* As a user, I should be able to see the top rated foods for the day, so I can quickly see the best options.
* As a user, I should be able to see the nutrition facts for a menu item, so I can determine wheter or not it fits into my diet.
* As a user, I should be able to like/dislike comments for menu items, so I can cosign on previous comments and dont have to write my own.
* As a user, I should be able to see top comments for menu items, so I can get a summary of what the comment section is like.
* As a user, I should be able to see top comments for menu items, so I can get a summary of what the comment section is like.
* As a user I should be able to filter food by dietary restrictions, so I can easily see what foods apply to me
* As a user I can filter comments by likes, dislikes or time posted so I can see a variety of comments

### 2. Screen Archetypes

* Login Screen
   - [x ] As a user, I should be able to login with parse, so I can use the application.
* Main Screen
   - [x ] As a user, I should be able to see the menu for the day, so I can make an informed decison on where I should eat.
   - [ x] As a user, I should be able to see ratings for menu items, so I can make an informed decison on what I should eat.
   - [ ] As a user, I should be able to see the top rated foods for the day, so I can quickly see the best options.
   - [ ] As a user I should be able to filter food by dietary restrictions, so I can easily see what foods apply to me
* Food Detailed View
    - [ ] As a user, I should be able to see ratings for menu items, so I can make an informed decison on what I should eat.
    - [ ] As a user, I should be able to see comments for menu items, so I can make an informed decison on what I should eat.
    - [ ] As a user, I should be able to post comments and ratings for menu items, so I can help other users make an informed decsion on what they should eat.
    - [ ] As a user, I should be able to see the nutrition facts for a menu item, so I can determine wheter or not it fits into my diet.
    - [ ] As a user, I should be able to see top comments for menu items, so I can get a summary of what the comment section is like.
    - [ ] As a user, I should be able to see a description for a menu item, so I get an idea of what is being served.
* Comments View
    - [ ] As a user, I should be able to see comments for menu items, so I can make an informed decison on what I should eat.
    - [ ] As a user, I should be able to like/dislike comments for menu items, so I can cosign on previous comments and dont have to write my own.
    - [ ] As a user I can filter comments by likes, dislikes or time posted so I can see a variety of comments
    - [ ] As a user, I should be able to post comments and ratings for menu items, so I can help other users make an informed decsion on what they should eat.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Refac food options
* Canteen Food options

**Flow Navigation** (Screen to Screen)

* Login Screen
   * Main Screen
* Main Screen
   * Refac Food Options
   * Canteen Food Options
   * Food Detailed View
* Food Detailed View
    * Comments View

## Wireframes
<img src="https://i.ibb.co/zZkQB4h/IMG-2981.jpg" width=600>

### [BONUS] Digital Wireframes & Mockups
<img src="https://i.ibb.co/0Y2242y/i-Phone-8-Plus-1.jpg" width=600>
<img src="https://i.ibb.co/5srNbVd/i-Phone-8-Plus-2.jpg" width=600>
<img src="https://i.ibb.co/gZ9B3QV/i-Phone-8-Plus-3.jpg" width=600>

### [BONUS] Interactive Prototype

## Schema 

### Models
**Review Post**
| Property |      Type       |                                                  Description |
|:-------- |:---------------:| ------------------------------------------------------------:|
| Comment  |     String      |                           Text where user can insert comment |
| Rating   |     Integer     |                              Number out of 5 for food rating |
| Category |     String      |                     Text to describe the type of food served |
| Like     |     Integer     |     Number that shows how many students approve of this food |
| Dislike  |     Integer     | Number that shows how many students dissapprove of this food |
| Author   | Pointer to User |          Image that user chooses to identify themselves with |
| Image    |      File       |                                          Image user may post |
| Date     |     String      |                                 Date that comment was posted |
| Menu Item|Pointer to Menu Item |                             Date that comment was posted |

**Menu Item**
| Property        |  Type   |                                                    Description |
|:--------------- |:-------:| --------------------------------------------------------------:|
| Title           | String  |                                              Name of Food Item |
| Rating          | Integer |                                Number out of 5 for food rating |
| Nutrition facts | String  |     Text to describe the Calories and other makeup of the food |
| Reviews         | Integer | Number that shows how many students approve stringof this food |
| Type            | String  |                                     Breakfast, Lunch or Dinner |
| Location        | String  |                         Text to describe where food is located |
| Image           |  File   |                                            Image of food       |

### Networking
**List of Network Requests by screen**
* Main Screen
   * (Read/GET)Get all the menu items for that day
* Food Detailed View
    * (Create/POST) Create a new review post
    * (Create/Post) Create a new like/dislike on a post
    * (Read/GET) Get details of menu item
* Comments View
    * (Read/GET) Reviews of a menu item
