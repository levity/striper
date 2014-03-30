striper
=======

A server-side complement to Stripe Checkout

[levity/donate](https://github.com/levity/donate) is a simple, mobile-friendly web page for helping nonprofits accept donations. It accepts credit cards with [Stripe Checkout](https://stripe.com/docs/checkout), but Stripe only provides the in-browser experience; some server-side component has to take the credit card token and make the charge. This is that component.


### get started, using Heroku

After signing up for [Heroku](http://www.heroku.com) and installing [Heroku Toolbelt](https://toolbelt.heroku.com/), run the commands below to set up the server, replacing `[your secret key]` below with your Stripe secret key.

```
git clone git@github.com:levity/striper
cd striper
heroku apps:create
heroku config:set STRIPE_SECRET_KEY=[your secret key]
git push heroku master
```

The output of the commands above will include something like:

```
Creating salty-stream-8518... done, stack is cedar
http://salty-stream-8518.herokuapp.com/ | git@heroku.com:salty-stream-8518.git
```

Take the address shown (e.g. `http://salty-stream-8518.herokuapp.com/`) and set it as the value of `stripeServerUrl` at the beginning of `main.js` in your [levity/donate](https://github.com/levity/donate) code.
