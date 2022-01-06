#!/bin/bash
sudo apt update 

sudo touch /tmp/pubsub.sh

sudo cat << 'EOF' > /tmp/pubsub.sh
#!/bin/bash
sudo gcloud pubsub subscriptions pull suscription-demo --auto-ack --format='json' | tee -a /tmp/message-DEMO-KADS-$(date +'%d-%m-%Y-%H:%M').json
sudo gsutil cp /tmp/message-DEMO-KADS-*.json gs://kads_demo_bucket-1/PubSubMessages
rm -r message*
EOF

sudo chmod +x /tmp/pubsub.sh
sudo echo "*/6 * * * * /tmp/pubsub.sh" | /usr/bin/crontab