# docker-php-with-firebird
- Use this image for projects that needs firebird connection.

# after pulling the image
After pulling the image, run these commands:
  - cd FirebirdCS-2.5.8.27089-0.amd64/
  - ./install.sh -silent
  - cd ..
  - docker-php-ext-install pdo_firebird interbase
