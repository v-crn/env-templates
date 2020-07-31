# install gsutil

# can paste to Dockerfile
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"\
	&& echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list\
	&& curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -\
	&& sudo apt update && sudo apt -y install google-cloud-sdk 

gcloud init
