# Decision Log

## Check for TLF gem

My initial thought was to check if any up todate/useful gems already exist allowing me to focus on the other requirements (cheating?).

The only one I found that was written with ruby was https://github.com/LukeHackett/tfl_api_client which is 6 years since the last update so likely not fit for purpose - due to the age I didn't look into the gem code too much and figured I was best to just build my own.

## add some gems to keep things working

* rubocop - linitng
* rspec - testing

## HTTP library

Gone with the quick decision of what I have used most recently (HTTParty) it fairly easy to use and I don't have to read the docs as family with how it works. Would normally want to look and choose the best library for the job, but figure time best spent elsewhere as this is a test.

In addition I will use VCR to assit with testing the client library I write to remove external endpoint dependancies from the tests.

# Root endpoint?

So I have set the route endpoint to point to the main page so that it is easy for testers to navigate (don't need to rememeber a path)

## Arrivals model and ActiveModel

Using activemodel here as it help with teh heavy lifting of building the class and setting types on the incoming fields

