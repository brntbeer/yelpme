#Yelpme so I don't have to.

##WHOOPS
So this gem is a work in progress, clearly. That being said, the maintainer of the yelp2 gem has not
released to rubygems.org and so my require statement is basically going to fail for you.

So if you're really anxious and dont want to wait for him, clone the yelp2 repo and run `rake install` and
You'll be good to go.

##What
Yelpme uses the [yelp2](https://github.com/rdeshpande/yelp2) Ruby wrapper by [rdeshpande](https://github.com/rdeshpande)
to be used on the command line.

##Why
I'm lazy and often can't decide what to eat for lunch, dinner, breakfast,
bars, etc. Or I don't know what kind of pizza I want, but I know where.

Yes, I know I know.. I could go to Yelp's site and type this in, but
fuck that. As I said I'm lazy.

##How
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
