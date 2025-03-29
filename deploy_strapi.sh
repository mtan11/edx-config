#!/bin/bash
echo "Pulling strapi..."
cd /root/edx/edx-fe && git pull
echo "Pull strapi completed at $(date)"
echo "---------------------------------------------------------"
echo "Re-deploying strapi..."
cd /root/edx && docker compose restart strapi
echo "strapi is building in backgroud, please verify after 3 minutes"
echo "---------------------------------------------------------"
echo "========================================================="
echo "All done at $(date)"
