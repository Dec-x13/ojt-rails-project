# OJT Rails Project 

Hey! This repo is basically my sandbox and progress tracker for my 10-day OJT. I'm taking a deep dive into Ruby, Ruby on Rails, and Tailwind CSS. Coming from a background in C++, Python, and React, getting used to Ruby's conversational syntax has been a really cool paradigm shift, and I'm using this space to document everything I build.

## Daily Journal
If you want to read my in-depth daily reflections, roadblocks, and lightbulb moments throughout this training, I keep a detailed log here: 
👉 **[Read my full Notion OJT Journal](https://www.notion.so/OJT-Journal-367236f85e40803b80dbf2725ebe3eac?source=copy_link)**

## What I'm Using

* **Language:** Ruby
* **Framework:** Ruby on Rails (starting Day 6)
* **Frontend:** HTML, ERB, Tailwind CSS
* **Database:** PostgreSQL (Upcoming)
* **Version Control:** Git & GitHub

## The 10-Day Game Plan

**Phase 1: Getting the hang of Ruby & OOP**
- [x] **Day 1:** Environment Setup, brushing up on Git workflows, and Ruby Basics.
- [x] **Day 2:** Core Data Structures (Arrays & Hashes) and Iterative Logic.
- [x] **Day 3:** Enumerables (`map`, `select`, `reduce`) — this cleaned up my code so much.
- [x] **Day 4:** Object-Oriented Programming (Classes, State Management).
- [ ] **Day 5:** Advanced Ruby & writing RSpec Tests.

**Phase 2: Full-Stack Rails**
- [ ] **Day 6:** Firing up the Rails app, Routing, and PostgreSQL.
- [ ] **Day 7:** Controllers, Views, and making things look good with Tailwind.
- [ ] **Day 8:** Active Record, Migrations, and Model relationships.
- [ ] **Day 9:** Forms, Sessions, and User Authentication.
- [ ] **Day 10:** Finalizing the Event Manager mini-project.

## Mini-Projects Inside

Before jumping into the heavy Rails framework, I built a few CLI scripts to really nail down the fundamentals:

* **Advanced Guessing Game:** Built this right away just to make sure my local setup wasn't broken, then upgraded it later with configuration hashes and guess tracking.
* **CTF Data Processor:** A script that processes a mock Capture The Flag dataset. I used this to figure out how `map`, `select`, and `reduce` work under the hood to filter tasks and calculate total scores.
* **OOP Tic Tac Toe:** A two-player terminal game split into clean `Player`, `Board`, and `Game` classes. I even had my girlfriend take a quick break from her nursing studies to help me playtest the win/draw conditions in the terminal!
* **Text Parsers:** Wrote a Caesar Cipher and a Substring dictionary scanner. Coming from C++, seeing how fast Ruby parses text with `.scan` is honestly wild.

## How to run this locally

If you want to pull this down and test the standalone Ruby scripts on your machine:

1. **Clone it:**
```bash
   git clone https://github.com/Dec-x13/ojt-rails-project.git
   cd ojt-rails-project
```
2. **Check your Ruby version (v3.0+ is recommended):**
```bash
   ruby -v
```
3. **Run a script:**
```bash
   ruby path/to/script_name.rb
```