#Yelpme so I don't have to.

##What
Yelpme uses the [yelp2](https://github.com/rdeshpande/yelp2) Ruby wrapper by [rdeshpande](https://github.com/rdeshpande)
to be used on the command line.

##Why
I'm lazy and often can't decide what to eat for lunch, dinner, breakfast,
bars, etc. Or I don't know what kind of pizza I want, but I know where.

Yes, I know I know.. I could go to Yelp's site and type this in, but
fuck that. As I said I'm lazy.

##How
__IMPORTANT__ You should probably sign in/up for yelp.com and go to [the api](http://www.yelp.com/developers/getting_started/api_access)
and request some api-hotness. After doing so, mosey your way over to your .bash_profile/rc/whichever and enter the
following:
    
    export YELP_CONSUMER_KEY='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
    export YELP_CONSUMER_SECRET='xxxxxxxxxxxxxxxxxxxxxxxxxx'
    export YELP_TOKEN='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
    export YELP_TOKEN_SECRET='xxxxxxxxxxxxxxxxxxxxxxxxx'

Obviously put in your read consumer key, consumer secret, token, and token secret in place of those Xs.

Cool. Good job, I'm proud of you for doing that. Now we can run:

    $ yelpme breakfast "san francisco"
    #=> etc etc
    $ yelpme plow "potrero hill"
    #=> all info for Plow

Works just like you would expect from the web interface!

**NOTE**: if your location has more than one word in it (ie, San Francisco, Palo Alto, Potrero Hill),
make sure to surround it with quotes.


##Who
You, and me baby.

I'd love pull requests, issues filed for new feature request, moar tests,
etc!


##Me <3
I'm [brntbeer](https://github.com/brntbeer) and I approve this message
