# edx-config

## **Pre-Setup**
Before running the project, install the following dependencies on your server:

1. **Docker & Docker Compose**  
   - Install from [Docker's official site](https://docs.docker.com/get-docker/)

2. **Nginx (for web server)**  
   ```sh
   sudo apt-get install nginx -y
   ```

3. **Certbot (for SSL certificates with Let's Encrypt)**  
   - Install from [Certbot's official site](https://certbot.eff.org/instructions)

4. **PHP-FPM (for deploy script page)**  
   ```sh
   sudo apt-get install php-fpm -y
   ```

---

## **Step 1: Configure & Start Docker Services**
1. **Update the `.env` file**  
   - Copy `.env.example` to `.env`  
   - Modify environment variables as needed  

2. **Start the Docker containers**  
   ```sh
   docker-compose up -d
   ```  
   - This will start **Next.js**, **Strapi**, **MySQL**.

---

## **Step 2: Configure Nginx & SSL**
1. **Set up Nginx configuration**  

2. **Run Certbot to apply SSL**  

3. **Add crontab for certbot to auto rewrite and restart nginx** 

---

## **Step 3: Configure Deployment Script**
1. **Configure Nginx for the deployment PHP script**

2. **Modify `sudo` permissions for deployment**  
   - Run:
     ```sh
     sudo visudo
     ```
   - Add this line at the end:
     ```
     www-data ALL=(ALL) NOPASSWD: /bin/bash /root/edx/deploy_all.sh
     ...
     ```

3. **Change file ownership for deployment scripts**  
   ```sh
   sudo chown www-data:www-data /root/edx/deploy_all.sh
   sudo chmod +x /root/edx/deploy_all.sh
   ...
   ```

---

## **Testing the Setup**
1. **Verify services are running**  
   ```sh
   docker ps
   ```
2. **Check logs if something fails**  
   ```sh
   docker-compose logs -f
   ```
3. **Manually trigger the deployment script (for testing)**  
   ```sh
   curl http://your-domain.com/deploy
   ```

---

## **Troubleshooting**
- **If Nginx fails to start:**  
  ```sh
  sudo systemctl restart nginx && sudo systemctl status nginx
  ```
- **If Docker containers fail to start:**  
  ```sh
  docker-compose logs
  ```

Now your setup is complete! 🚀