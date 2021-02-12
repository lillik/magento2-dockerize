## Magento 2.4.2 in docker

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](YOUR_EMAIL_CODE)

 * [Introduction](#introduction)
 * [Development Environment](#development-environment)
 * [Installation](#installation)
 * [How to](#how-to)
 	* [Up the project](#how-to-up-the-project)
 	* [Stop the project](#how-to-stop-the-project)
 	* [Use Composer](#how-to-use-composer)
 	* [Use Magento CLI](#how-to-use-magento-cli)
 * [What we have](#what-we-have)
 * [TODO](#todo)
 * [Contribution](#contribution)
 * [License](#license)
 * [Donation](#donation)

## Introduction
The role of this project is to provide a quick development setup for Magento 2 using Docker Compose.

## Development Environment
- Nginx 1.19.6
- PHP FPM 7.4.13
- Mysql 5.7
- Redis 6.0.9
- ElasticSearch 7.9.3
- Kibana 7.9.3
- Mailcatcher 0.7.1
- Composer 2.x
- XDebug

## Requirements
Please follow the Docker installation steps from https://docs.docker.com/engine/installation/ and docker compose installation steps from https://docs.docker.com/compose/install/.
- you need to have installed __docker__ and __docker-compose__
- you need to have your ssh key in the default location ( ~/$USER/.ssh/id_rsa ) - this will be needed in the future.
- docker is up and running (systemctl status docker)


## Installation

Please follow the next steps:
1. Download or clone this project in the directory.
2. Open a terminal and change directory to project location
```cd ~\path\to\project```
3. Run ```./setup.sh``` command to build the docker images and intals Magento CE 2.4
4. Add the ```172.33.0.5 magento2.local``` in hosts file of your OS system. For Linux the path of file si ```/etc/hosts```
5. Open the browser and type the next link: http://magento2.local/

## How to:
### How to Up the project:
1. Open a terminal and change directory to project location
```cd ~\path\to\project```
2. Run ```./start.sh``` command

### How to Stop the project:
1. Open a terminal and change directory to project location
```cd ~\path\to\project```
2. Run ```./stop.sh``` command

### How to use Composer
In order to run composer command you need run command```./connect.sh```, aftert that you can run composer command ```composer [composer CLI option]```

### How to use Magento CLI
In order to run magento cli command please run command ```./magento.sh [magento CLI option]```

## What we have
* Magento: http://magento2.local
* Magento: http://magento2.local/admin (**user:** ```admin```; **password:**```AdminMagento```)
* ElasticSearch: http://172.33.0.9:9200/
* Kibana: http://172.33.0.13:5601/app/kibana
* MailCatcher: http://172.33.0.11:1080/

## TODO
- [ ] Support for MacOs and Windows OS
- [ ] Add SSL(HTTPS)
- [ ] Add MariaDB database, and also add an option to easily choose between MariaDB or MySQL.


## Contribution
If you have any issues, please [contact me](https://twitter.com/clipro) or open a bug report in GitHub's [issue tracker](https://github.com/lillik/magento2-dockerize/issues).

## License
The code is licensed under [Apache-2.0 License](https://www.apache.org/licenses/LICENSE-2.0).

## Donation
If this project help you reduce time to develop, you can give me a cup of coffee :)[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/donate?hosted_button_id=LKAG7L4HWMVSL)

![img](./qr-donate.png)


