# AutoComplete + List Management
The following coding exercise will have you implement an auto-suggest utility on a search bar that updates the results as you type, and then allow you to add one or many of the search results to a list. Some initial components/layout have been created for you, and will render on the right side of this preview. Only edit the JS / CSS sections for this assignment, do not edit this HTML section directly. You can add props, state, additional methods and components as you see fit.

You're welcome to pull the code out into a separate editor if you prefer (part 4 may even require it to some extent), but the final output should be relatively easily demo-able by us in some fashion.

Note: You can't save changes on this pen alone, so you'll want to select "Use this Template" or copy this skeleton into a new pen in order to have your changes saved and working on codepen.

If you have any questions regarding this exercise, don't hesitate to reach out. That said, feel free to make assumptions or choices about implementation details that you think are reasonable and aren't explicitly mentioned in the exercise.

# Part 4 (Backend):
Pinning items is great, but as you may have noticed, the pinned items reset everytime the user refreshes the page. We'd like to add some persistence.

Create a separately running service (it's okay if it runs on localhost), in the language and frameworks of your choosing, that gets called whenever the user hits the "+" icon that adds something to the "Selected Countries" list. This service should in some way keep track of the countries added to that list. When you hit "x" on a selected country, it should indicate to this service that the country was removed.

When you are initially seeding the list of countries (e.g. on page load), you should make a request to your service to return the set of previously saved countries, and have that populate the initial list of selected countries.

Something to consider: If your backend resets the data everytime it's restarted, consider having it work in a way that keeps that data persistent through restarts.

Note: You may run into CORS issues when trying to make requests to localhost from codepen.io. You may want to add {mode: 'no-cors'} to your requests or use a proxy if you run into this issue and can't disable the CORS constraint.

## README for local setup

* Ruby 2.6.1

* Rails 5.2.4

* PostgresQL 1.2.3

### Clone to local machine

In app's main directory:
```bundle install```

Create the database:
```rails db:create```

Migrate the database:
```rails db:migrate```

Start the app's server on local machine:
```rails s```