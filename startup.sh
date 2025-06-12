#!/bin/bash
apt update
apt install -y docker.io
gcloud auth configure-docker
docker pull us-central1-docker.pkg.dev/genuine-flight-462611-t5/my-repo/flask-app:latest
docker run -d -p 80:8080 us-central1-docker.pkg.dev/genuine-flight-462611-t5/flask-app:latest
