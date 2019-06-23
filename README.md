# zuchan
A community forum/board with user registration, thread topics and image submissions. Written in PHP with [CuteIgniter](https://github.com/tomual/cuteigniter).

![zuchan screenshot](https://github.com/tomual/zuchan/blob/master/img/screenshot_home.png?raw=true)

## Features

* User authentication
* Avatar uploads with rules
* Forum topics with threads
* Home page listing sorted by recently touched
* Image submission process for display on home page
* Quote display when hovering over quoted post number

## Installation

1. Create MySQL database and run `sql/tables.sql` (optional: `sql/dummy.sql` for demo data)
2. Edit database information in `application/config/database.php`
3. Make `base_url` the blog URL in `application/config/config.php`
3. Update absolute image paths at the bottom of `application/config/config.php`

## Screenshots

![Thread page](https://github.com/tomual/zuchan/blob/master/img/screenshot_thread.png?raw=true)

![Registration page](https://github.com/tomual/zuchan/blob/master/img/screenshot_signup.png?raw=true)
