# docker-php-with-firebird
- Use this image for projects that needs firebird connection. This image install PHP 7.2 and expose the docker ports.

# after pulling the image
After pulling the image, run these commands:
  - wget https://github.com/FirebirdSQL/firebird/releases/download/R2_5_8/FirebirdCS-2.5.8.27089-0.amd64.tar.gz
  - tar -zxvf FirebirdCS-2.5.8.27089-0.amd64.tar.gz
  - cd FirebirdCS-2.5.8.27089-0.amd64/
  - ./install.sh -silent
  - cd ..
  - docker-php-ext-install pdo_firebird interbase
