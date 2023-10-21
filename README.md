# Mario's Pizza Villa

Welcome to Mario's Pizza Villa - your favorite online pizzeria!

## Overview

Mario's Pizza Villa is a Ruby on Rails web application that serves as the online presence for our fictional pizzeria, "Mario's Pizza Villa." This platform allows users to explore our menu, place orders, and conveniently track the status of their orders. Additionally, it offers an admin dashboard with analytics and menu management capabilities.

## Stack

- Ruby on Rails
- Tailwind CSS
- JavaScript
- jQuery
- PostgreSQL

## Features

### User-Facing Features

1. **User Authentication**: Secure user authentication is implemented using the Devise gem. Users can sign up, log in, and manage their profiles.

2. **Authorization**: Authorization for user actions is managed using the Pundit gem to ensure that only authorized users can access certain features.

3. **Static Web Pages**: The application includes static web pages that provide information about Mario's Pizza Villa, creating an immersive online experience.

4. **Menu Page**: Users can explore our menu and place orders. The app includes a checkout feature for a seamless ordering process.

5. **Order Tracking**: Users can track the status of their orders, from "processed" to "en route" and "delivered."

### Admin Dashboard

1. **Analytics**: Admins have access to daily, weekly, monthly, and quarterly analytics, including the number of orders and the total amount sold. This provides valuable insights into the business.

2. **Order Management**: Admins can efficiently manage new orders and update their statuses, ensuring a smooth order fulfillment process.

3. **Menu Management**: Admins can easily add or remove menu items, which are seamlessly integrated into the menu page for regular users.

## Getting Started

Follow these steps to get a local development environment up and running:

1. Clone this repository.
2. Install the necessary dependencies using `bundle install`.
3. Set up the PostgreSQL database and run migrations with `rails db:setup`.
4. Start the Rails server: `rails server`.

## Contributing

We welcome contributions to enhance Mario's Pizza Villa. Feel free to submit issues, create pull requests, and improve the project. For major changes, please open an issue to discuss the proposed changes.

## License



## Contact

If you have any questions or need further assistance, please contact our development team at [your-email@example.com].

Thank you for choosing Mario's Pizza Villa!

Happy coding and pizza-making!
