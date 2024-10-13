# Use the shinsenter/laravel image as the base
FROM shinsenter/laravel:latest

# Set working directory inside the container
WORKDIR /var/www

# Create a simple blank index.htm page
RUN mkdir public
RUN touch public/index.php
RUN echo "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><meta name='viewport' content='width=device-width, initial-scale=1.0'><title>Blank Page</title></head><body><h1>Blank Page</h1></body></html>" > public/index.php

# Expose the port that Laravel listens on
EXPOSE 8000

# Start the Laravel development server with php artisan
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
