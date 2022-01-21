# DOCKLARA

### A helper docker compose environment for Laravel development/production app

</br>
### PLEASE REMOVE .git with 'rm -rf .git' after cloning

Follow the example.env file and create .env in parent directory

### SET ALL THE VALUES for .env

</br>

Create a folder/project or Git Clone with <strong>SAME NAME</strong> as APP_NAME value

Example: if .env contains 'APP_NAME=myapp', create folder/project or git clone in 'myapp' directory
</br>

Run `docker-compose --build` to build the app

Run `docker-compose up --build` to build and run the app

Run `docker-compose up -d --build` to build and run the app in detached mode
</br>

To run `composer` use `docker-compose run --rm composer <your_command>`

To run `artisan` use `docker-compose run --rm artisan <your_command>`

To run `npm`' use `docker-compose run --rm npm <your_command>`
</br>
Set your Laravel app specific .env values

Use the same values from your parent .env where applicable (e.g. DB info)
</br>

For ease of use, add `alias dc="docker-compose run --rm"` in `.bashrc` / `.zshrc` as new line

Then run commands with `dc composer/artisan/npm <your_command>`
</br>

To access your app, visit `http://localhost:<NGINX_PORT>`
