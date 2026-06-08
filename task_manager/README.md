# Task Manager

Hey! This is my first full-stack application built during my 10-day OJT. I transitioned from writing standalone Ruby scripts to a complete Ruby on Rails 8 application. Coming from a React background where the frontend and backend are completely decoupled, seeing Rails handle everything in one cohesive loop has been a huge paradigm shift.

## What I Built

Instead of building a traditional multi-page app or using heavy client-side JavaScript, I used this project to dive deep into Hotwire and Turbo Frames to make it feel like a modern Single Page Application (SPA), while building a robust relational database under the hood.

* **Relational Data & Associations:** Upgraded the flat database structure by adding a `Comment` model. I utilized Active Record `has_many` and `belongs_to` associations to link comments directly to specific tasks, creating a functional "System Notes" feature on the dashboard.
* **Server-Side Validations:** Implemented Active Record validations (e.g., `presence: true`) to ensure data integrity and prevent empty notes or bad data from ever hitting the PostgreSQL database.
* **Nested Routing:** Configured nested resourceful routing so that all comment creations and deletions are securely tied to their parent task's ID at the network level.
* **Zero-JS Modals:** I used Turbo Frames to handle the Create and Edit forms. When you click a button, it intercepts the request and pops up a modal right over the homepage without writing any custom JavaScript or managing state hooks.
* **Enterprise UI:** I completely overhauled the standard grid layout into a horizontal, highly scannable list view inspired by enterprise B2B dashboards. I used Tailwind CSS to style everything, utilizing native Rails helpers to alternate border colors and keep the UI looking professional.

## Tech Stack

* **Framework:** Ruby on Rails 8
* **Language:** Ruby
* **Database:** PostgreSQL
* **Styling:** Tailwind CSS
* **Asynchronous Engine:** Hotwire / Turbo Frames

## How to run this locally

If you want to pull this down and test it out on your machine, make sure you have PostgreSQL running in your WSL/Linux environment first (`sudo service postgresql start`).

1. **Navigate into the app:**
```bash
cd task_manager
```

2. **Install the dependencies:**
```bash
bundle install
```

3. **Set up the database:**
```bash
bin/rails db:create
bin/rails db:migrate
```

4. **Boot the server:**
```bash
bin/dev
```

5. **Navigate into the app:**

Open your browser and go to http://localhost:3000