# Fayers Food Management System

*User requirements -> Database design -> ...*

---
## User requirements

- **User Accounts**: Support user creation and login, with each account having a name, food preferences, and defaults (time availability, complexity willing to cook, daily presence).
- **Food Properties**: Food should have ingredients (to control suggestion based on food preferences), an average rating (updated after each meal occurrence), and an optional recipe/photo.
- **Daily Meals**: Automatically suggest meals for each day of the week based on user settings and food properties.
- **Voted Meal Submission**: Allow users to suggest changes to daily meals which can then be voted on by present users. Some users may have weighted votes, i.e. whoever is cooking, or if the user hasn't been present in a while.
- **User-Friendly Interface**: Require minimum setup and minimum continuous input, and anything required must be simple and clean to use (i.e. user and food creation). Potential extensions to allow rating via Amazon Alexa.

---
## Database design

...

Look over the projects my brother sent me, starting with [sds](C:/Users/wills/Documents/Programs%20by%20my%20brother/sds/) before looking at [acm_2](C:/Users/wills/Documents/Programs%20by%20my%20brother/acm_2/).

---
## Tech stack

- **Database**:
	- **Relational Database** *MySQL* database to store user accounts and possible meals (with their associated properties).
- **Backend**:
	- **API Layer**: *FastAPI* for building the *Python* API.
	- **Database Interaction**: *SQLAlchemy* (an Object-Relational Mapping tool for Python) to interact with the database through the API Layer.
- **Frontend**:
	- **Framework**: Undecided, but should be very simple and minimalistic for maximum user accessibility (maybe *Svelte*).
- **Orchestration**:
	- **Containerisation**: *Docker*, managed with *Docker Compose*.
	- **Continuous Integration**: *GitHub Actions*, deployed on *a free cloud service* (included with GitHub student, i.e. DigitalOcean, Azure, Heroku, New Relic).