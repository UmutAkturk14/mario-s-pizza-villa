# Rails Boilerplate for Online Apps

This Rails boilerplate provides a solid foundation for building online applications with essential features such as user authentication, authorization, and a clean front-end design using Tailwind CSS.

## Features

- **User Authentication**: Devise is integrated to handle user registration, sign-in, sign-out, and password reset functionalities.

- **Authorization**: Pundit is implemented for managing user permissions and access control.

- **Front-end Styling**: Tailwind CSS is set up as the default styling framework to create modern and responsive user interfaces.

- **Database**: PostgreSQL is used as the default database, but you can easily switch to another database of your choice.

- **Rails 7**: This boilerplate is built on Rails 7, harnessing the latest features and improvements.

- **Ready to go Set up**: With simple, minimalistic sign in / sign up pages and a navbar with some generic buttons and a working dropdown, you don't need to lose time to create a working place in the front-end side. You can start working as soon as you clone this repo and worry about the front-end design later.

## Getting Started

Follow these steps to get started with this boilerplate:

1. Clone the repository to your local machine:
```bash
gh repo clone UmutAkturk14/rails-template-pundit-tailwind <your-project-name>
cd <your-project-name>
```
2. Install the required gems: 
```bash
bundle install
```
3. Run database migrations:
```bash
rails db:migrate
```
4. Start the server:
```bash
dev
```
5. Access the application in your web browser at http://localhost:3000.

## Usage
- Customize the application by adding your own controllers, models, and views.

- Update the policies to define and enforce authorization rules as needed for your application.

- Extend the application's functionality according to your project requirements.
