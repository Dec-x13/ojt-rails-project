# OJT Rails Project 

Hey! This repo is basically my sandbox and progress tracker for my 10-day OJT. I'm taking a deep dive into Ruby, Ruby on Rails, and Tailwind CSS. Coming from a background in C++, Python, and React, getting used to Ruby's conversational syntax has been a really cool paradigm shift, and I'm using this space to document everything I build.

## Daily Journal
If you want to read my in-depth daily reflections, roadblocks, and lightbulb moments throughout this training, I keep a detailed log here: 
👉 **[Read my full Notion OJT Journal](https://www.notion.so/OJT-Journal-367236f85e40803b80dbf2725ebe3eac?source=copy_link)**

## Tech Stack

* **Language:** Ruby (Securely compiled with `bcrypt`)
* **Framework:** Ruby on Rails
* **Database:** PostgreSQL
* **Environment:** WSL(Ubuntu)
* **Version Control:** Git & GitHub

## The 10-Day Game Plan

**Phase 1: Getting the hang of Ruby & OOP**
- [x] **Day 1:** Environment Setup, brushing up on Git workflows, and Ruby Basics.
- [x] **Day 2:** Core Data Structures (Arrays & Hashes) and Iterative Logic.
- [x] **Day 3:** Enumerables (`map`, `select`, `reduce`) — this cleaned up my code so much.
- [x] **Day 4:** Object-Oriented Programming (Classes, State Management).
- [x] **Day 5:** Advanced Ruby & writing RSpec Tests.

**Phase 2: Full-Stack Rails**
- [x] **Day 6:** Firing up the Rails app, Routing, and PostgreSQL.
- [x] **Day 7:** Controllers, Views, and making things look good with Tailwind.
- [x] **Day 8:** Active Record, Migrations, and Model relationships.
- [x] **Day 9:** Forms, Sessions, and User Authentication.
- [ ] **Day 10:** Finalizing the Event Manager mini-project.

## Projects Inside

Phase 1: Before jumping into the heavy Rails framework, I built a few CLI scripts to really nail down the fundamentals:

* **Advanced Guessing Game:** Built this right away just to make sure my local setup wasn't broken, then upgraded it later with configuration hashes and guess tracking.
* **CTF Data Processor:** A script that processes a mock Capture The Flag dataset. I used this to figure out how `map`, `select`, and `reduce` work under the hood to filter tasks and calculate total scores.
* **OOP Tic Tac Toe:** A two-player terminal game split into clean `Player`, `Board`, and `Game` classes. I even had my girlfriend take a quick break from her nursing studies to help me playtest the win/draw conditions in the terminal!
* **Text Parsers:** Wrote a Caesar Cipher and a Substring dictionary scanner. Coming from C++, seeing how fast Ruby parses text with `.scan` is honestly wild.

Phase 2:
* **Task Manager (Rails):** A complete web application engineered to feel like a modern Single Page Application (SPA). It uses crisp, block-level dashboard cards styled around a structured "TechNavy" theme.
  * **Custom Authentication:** Developed a secure, session-based login and logout system from scratch using `bcrypt` to hash passwords and protect endpoints via controller filters (`before_action :require_login`).
  * **State Management Toggle:** Added database state tracking by implementing an interactive task completion checkbox. Clicking the toggle hits a custom member route patch action to instantly invert the database record and update styling on the fly.
  * **Hotwire & Turbo:** Implemented zero-JavaScript asynchronous Create/Edit modals via Turbo Frames, coupled with responsive HTML5 expand/collapse data blocks to display information without page reloads.
  * **Relational Data & Strong Params:** Structured a `has_many` / `belongs_to` database association allowing an interactive "System Notes" feed to look up and attach comment fragments securely to parent tasks.

## How to run this locally

If you want to pull this down and test the standalone Ruby scripts on your machine:

1. **Clone it:**
```bash
   git clone https://github.com/Dec-x13/ojt-rails-project.git
   cd ojt-rails-project
```

## Running the Rails App (Task Manager)

Note: You will need PostgreSQL installed and running in your WSL environment (sudo service postgresql start)

1. **Navigate into the Rails application:**
```bash
   cd task_manager
```
2. **Install Ruby gems and dependencies:**
```bash
   bundle install
```
3. **Initialize and migrate the database:**
```bash
   bin/rails db:create
   bin/rails db:migrate
```
4. **Boot the local server:**
```bash
   bin/dev
```
5. **View the app:**
Open your web browser and navigate to http://localhost:3000.

## Running the Standalone Ruby Scripts

1. **Check your Ruby version (v3.0+ is recommended):**
```bash
   ruby -v
```
2. **Execute a specific script:**
```bash
   ruby path/to/script_name.rb
```