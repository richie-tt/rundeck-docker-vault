# rundeck-docker-vault
Adding support for vault-storage

This simply Dockerfile allows implementing vault-storage as the backend for the secret.
Before build your docker image, you need to copy the file vault-storage.jar to plugins directory from existing Rundeck or compile plugin from [source](https://github.com/rundeck-plugins/vault-storage)
