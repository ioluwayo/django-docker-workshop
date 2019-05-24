For this workshop you need to install the following.

1. Docker
    - Windows 10: https://runnable.com/docker/install-docker-on-windows-10
    - Mac OSX: 
        - Homebrew: https://codingbee.net/docker/install-docker-for-mac-using-homebrew
        - https://runnable.com/docker/install-docker-on-macos
    - Linux: I recommend snap. ```sudo snap install docker``` To install snap ```sudo apt install snapd```
2. Heroku CLI
    - Windows, Mac and Unix. https://devcenter.heroku.com/articles/heroku-cli
    
I have split the samples by tag so you can just check out the complete code for each sample.
    
Sample 1: ```git checkout tags/sample-1``` 

Sample 2: ```git checkout tags/sample-2```

Sample 2  ```git checkout tags/sample-3```


#### How to setup the Heroku applications
1. Create a heroku account.
2. Create a new app for the django application
    1. Get cloudampq addon
    2. Get JawsDB MySQL addon
    3. Set ENVIRONMENT to PRD in environment vars
3. Create a new application for the nginx-reverse proxy.
    1. Set DJANGO_APP to the address of your django app on heroku in environment vars.

To push an image to heroku 
1. ```git remote add heroku https://git.heroku.com/nginx-reverse-proxy.git```
2. ```heroku login -i```
3. ```heroku container:login```
4. ```heroku container:push web```
5. ```heroku container:release web ``` 

Use ```heroku logs -t ``` to see the logs as your container is started.



