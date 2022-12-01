# Welcome to FoodSaver

## Purpose
In the US, a lot of food is wasted annually in homes. A LOT of food. While globally, about 1.4 billion tons of food is wasted each year, the US contributes about 40 million tons, (that's 80 billion pounds!). Of that 40 million tons, 43% of it comes from US homes. It's difficult for people to effectively utilize all the food they have in their kitchen before it goes to waste. That's why FoodSaver was created.
FoodSaver was created as a means to mitigate food waste in household kitchens. By combining the shelf life of food with popular recipes into one application, users are able to find recipes quickly based on what's expiring soon in their kitchen. This will not only help mitigate food waste, but it will also save the user money on trips to the grocery store.
This app has a lot of unique features. A user can add foods to their kitchen, add and edit recipes, and find recipes based on what they have available to them. There are still many features that will be implemented in the future so be on the lookout for future updates.

## Technologies Used

- Ruby 2.7.4
- Rails 6.1.3
- Active Model Serializers 0.10.12
- NodeJS (v16), and npm
- Postgresql 1.1
- bcrypt 3.1.7
- React 17.0.2
- React-Router-Dom 5.3.3

## Starting App

You can use the following commands to run the application:

- `rails s` will start the backend server
- `npm start --prefix client` will start the frontend server

## Setup

To setup this application first start the backend server by running `rails s` in your terminal. Then start the frontend server by running `npm start --prefix client`

## How to Use

When opening, you'll first create an account and sign in. You're then greeted with your home page which indicates all the food you currently have in your kitchen. You can populate this page with any food in the backend database and also indicate the date which you bought your groceries.

![image](https://user-images.githubusercontent.com/104173081/202877804-78a39142-7e7a-4583-8656-f6a262f0564a.png)

Each food in your fridge has an estimated expiration date as well as two buttons allowing you to find recipes that use that ingredient or remove the item from your fridge. Selecting the find recipes button will switch the user over to the recipes page, filtering out recipes that use that ingredient. Selecting the recipes page from the navigation bar will allow the user to see all the recipes in the database. Each recipe has it's listed ingredient which are either green indicating that the food is currently in your fridge, or red indicating you do not have that ingredient. There is a toggle at the top which shows you recipes that you can currently make with all the ingredients in your fridge.

Lastly, a user has the ability to make and edit a recipe.

![image](https://user-images.githubusercontent.com/104173081/202878008-68b57092-f774-44bb-a5eb-1985c13e189e.png)

A user will input the name of the recipe and list each step required in making the recipe. After submitting the recipe, the user will be redirected to the recipe page where they can list the ingredients as well as add a picture for their recipe.

![image](https://user-images.githubusercontent.com/104173081/202877938-e8c0195a-3062-4719-81c1-c977ed9d49b1.png)

Lastly, a user can edit the ingredients of any recipe that they post.

Created by Chris Witte
