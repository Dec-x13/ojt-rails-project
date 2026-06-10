# Task Manager

Hey! This is my first full-stack application built during my 10-day OJT. I transitioned from writing standalone Ruby scripts to a complete Ruby on Rails 8 application. Coming from a React background where the frontend and backend are completely decoupled, seeing Rails handle everything in one cohesive loop has been a huge paradigm shift.

## What I Built

Instead of building a traditional multi-page app or using heavy client-side JavaScript, I engineered this project to feel like a modern Single Page Application (SPA), backed by a robust relational database and protected by a custom authentication bouncer.

* **Custom Authentication from Scratch:** Built a full session-based login/logout system utilizing the `bcrypt` gem and Rails' built-in `has_secure_password`. It handles secure password hashing, user verification, and cross-request `flash` notifications natively.
* **Protected Routing & Controller Filters:** Implemented a global application bouncer (`before_action :require_login`) that forces unauthenticated traffic back to the login page, keeping all user tasks and system notes locked down.
* **Interactive Completion Toggle:** Designed an instant, inline task completion mechanism using a custom member route and controller patch action. Clicking the custom checkbox seamlessly toggles the task's state in PostgreSQL, visually striking through the title and changing the card's theme dynamically without reloading the page.
* **Relational Data & Nested Routing:** Upgraded the flat database structure by introducing a `Comment` model. Used Active Record `has_many` and `belongs_to` associations to link comments directly to tasks, establishing a nested network layer (`/tasks/:id/comments`) to power an interactive "System Notes" feed.
* **Zero-JS Accordions & Modals:** Utilized Turbo Frames to handle asynchronous task creations and modifications in lightless modal overlays. Leveraged native HTML5 `<details>` components with Tailwind grouping to create sleek click-to-expand data cards that rotate custom SVG chevrons on interaction—all with zero custom JavaScript.
* **TechNavy Dashboard UI:** Styled a responsive, structured grid interface using Tailwind CSS utility classes. The design relies on clean card containers, geometric borders, and strict navy blue `#041E42` primary accents for a professional, enterprise-grade look.

## Tech Stack

* **Framework:** Ruby on Rails 8
* **Language:** Ruby
* **Database:** PostgreSQL
* **Security & Hashing:** Bcrypt
* **Styling & Grid Layouts:** Tailwind CSS
* **Asynchronous Engine:** Hotwire / Turbo Drive

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

6. *Pro-Tip: To create your first login account, run bin/rails console in a separate terminal window and execute:*
User.create!(email: "admin@technavy.com", password: "password123", password_confirmation: "password123")