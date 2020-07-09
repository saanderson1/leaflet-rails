# About
  Leaflet-Rails is a basic rails application using jQuery on the Front End to facilitate data flow to the map. Ultimately, the goal is to provide a drop down where selected states can be viewed closer. Once in a 'state view' visitors can use the provided text box to enter integer numbers and press enter on their keyboards. Markers will pop up on the map of the cities whose current temperature is within 10 degrees of the input integer number. Users can freely use the drop down menu to hit any of the states.
  

# Installation
  - Clone this repo to your local machine by using the green clone link.
  - Once cloned, run `bundle install`.
    - Note: You may need to install `Ruby 2.6.6` and `Rails 6.0.2`. Follow the installation instructions for Ruby [HERE](https://www.ruby-lang.org/en/documentation/installation/) and Rails [HERE](https://guides.rubyonrails.org/v5.0/getting_started.html).
  - You'll need an Open Weather Map API key from [HERE](https://openweathermap.org/guide).
  - Follow instructions [HERE](https://guides.rubyonrails.org/security.html#environmental-security) to secure the OWM API key using Rails' built in environment variable store.

# Launching the application
  - Once the application is pulled and all application specific items are installed locally, you'll need to set up Docker following [THESE](https://docs.docker.com/get-started/) instructions.
  - Once Docker is installed locally, head to the terminal and enter:
    `docker-compose up --build` which will build the application then launch it from the image at `localhost:3000` that can be accessed from a browser.
  
