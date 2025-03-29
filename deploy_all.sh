#!/bin/bash
echo "deploying strapi..."
cd /root/edx && ./deploy_strapi.sh
echo "deploying strapi completed at $(date)"
echo "---------------------------------------------------------"
echo "deploying nextjs..."
cd /root/edx && ./deploy_nextjs.sh
echo "deploying nextjs completed at $(date)"
echo "---------------------------------------------------------"
echo "========================================================="
echo "All done at $(date)"
