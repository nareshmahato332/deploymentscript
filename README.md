# Deployment steps

To depoy the application, I have written deployment.sh script.

# steps:-

# 1. You must have ubuntu 16 or 18 0S with Bash shell.

# 2. prerequisite software:-
   
    git must be installed in OS.
    other software dependency handled in script, you need to just the run the deployment script.
    
# 3. deployment command:-

   git clone https://github.com/nareshmahato332/deploymentscript.git  && cd deploymentscript && bash deployment.sh
   
   application will be deployed succesfully after running the script. 
   
# 4. Verify your application.
   
   if you want to hit you application locally from instance then we can execute

   curl localhost/hello   
   
   if you want to hit your application outside from your network or from different system. then we need to execute.

   curl http://(public_ip of your instance)/hello

# 5. Deploymenyt Architecture:
      
#   USER(PUBLIC INTERNET) ----> NGINX(PROXY SERVER) --> APACHE BACKEND SERVER(DJANGO APPLICATION)
   
   I used docker-compose for the deployment because container is very easy to deploy on any environment and after test we can easily remove also.
   
   Used docker-compose because it creates a network for the container so they will be in the same network and they can communicate very easily. 
   
#   NGINX PROXY GIT URL:- https://github.com/nareshmahato332/proxyserver.git
   
   used NGINX as proxy server because it can handle more no connection concurrently with low hardware resource.
   
#   DJANGO APPLICATION GIT URL:- https://github.com/nareshmahato332/firstapp.git
   
   backed application is in DJANGO rest api, that is very small application to just print hello world.
   which is hosted in apache.
    
   I used DJANGO because i had little bit idea to just test but we can use any type of application and host as backend server and route the traffic from nginx proxy and cheers
   
   
    
    
   

   
      
    



