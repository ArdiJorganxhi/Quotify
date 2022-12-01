# All quotes are within your pocket with Quotify.

Quotify. is an iOS application that generates random quotes from different categories. It shows you a quote from a category you have chosen and you can generate new ones with "Quote it" button.

Firstly, when application opens, user is presented with an onboarding view showing name of the project and a Get Started slider. 
After onboarding view, categories are listed to user for generating quotes, user will choose a category and a quote will show up randomly.

Quotes are generated from https://api.api-ninjas.com/v1/quotes?category={your-category} and it is fetched using URLSession. After fetch, using JSONDecoder, it is decoded to format of Quotes model and stored in an array of Quotes format.

After fetch, using List, quote and author are shown to user, if user wants to generate another random quote, it can press "Quote it" button and generate a new one with the same category, or go back to categories view and select a new category for different quote.

This project aimed to make a fetch request to an API using URLSession and decoding a JSON using JSONDecoder. 


# Images
<p float="left">
<img width="387" alt="image" src="https://user-images.githubusercontent.com/73110402/205076035-15cd0566-da0a-492e-b1a5-c98ac4b1510f.png">
<img width="418" alt="image" src="https://user-images.githubusercontent.com/73110402/205076466-9388e7b7-21c2-421a-afb8-3723911be512.png">
<img width="416" alt="image" src="https://user-images.githubusercontent.com/73110402/205076543-4b46f38c-3d4b-4f43-8fdd-fc58ebdeace5.png">

</p>


# For full implementation




https://user-images.githubusercontent.com/73110402/205076962-cfbfa01c-6702-4bff-a4ee-391599ab08ab.mov






This project is an updated version of QuoteATolstoy project. (For QuoteATolstoy, you can check it's repository for details: https://github.com/ArdiJorganxhi/QuoteATolstoy)





