#!/bin/bash
echo "Pulling nextjs..."
cd /root/edx/edx-fe && git pull
echo "Pull nextjs completed at $(date)"
echo "---------------------------------------------------------"
echo "Re-deploying nextjs..."
cd /root/edx && docker compose restart nextjs
echo "nextjs is building in backgroud, please verify after 3 minutes"
echo "---------------------------------------------------------"
echo "========================================================="
echo "All done at $(date)"
