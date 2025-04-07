FROM node:18-alpine AS builder

WORKDIR /home/projects/pokemon-kingdom

COPY package*.json ./
RUN npm ci 

# COPY ./src ./src/
# COPY ./public ./public/

COPY . .
# CMD ["npm", "start"]

# copy buld folder
# COPY ./build ./build

RUN npm run build  
# for production CI&CD best practice to run buld inside.

# install serve, it serve a directory as a vertual host/server
RUN npm install -g serve 
# use -g to install globally, so it can be used in any directory

CMD ["serve", "-s", "build"]
# CMD ["serve", "-s", "build", "-l", "3000"] 
# -l <port> for custom port , , serve suitable for SPA react routing
## alternavite of serve, 
# CMD ["python" , "-m", "http.server", "9000", "-d", "build"] this require python in image.


# NGINX serving 

# FROM nginx:alpine


# # copy index file 
# COPY --from=builder /home/projects/pokemon-kingdom/build /usr/share/nginx/html
# COPY nginx.conf /etc/nginx/conf.d/pokemon-kingdom.com.conf
# COPY ./openssl/ /home/projects/pokemon-kingdom/openssl/

# # for nginx expose port 80
# EXPOSE 80 443 3000

# CMD ["nginx", "-g", "daemon off;"]

# Why Use daemon off; in Docker?
# By default, Nginx runs as a background (daemon) process, which means:
# It starts, Runs in the background, Then exits inside a Docker container.
# But Docker containers expect the main process (PID 1) to keep running in the foreground—otherwise, the container stops immediately after starting.
# So, setting daemon off; ensures that Nginx keeps running inside Docker.
# This is especially important for production environments, where you want the container to keep running even after the initial process has finished. 
