# rundeck-docker-vault
Adding support for vault-storage

This simply Dockerfile allows implementing vault-storage as the backend for the secret.
Before build your docker image, you need to copy the file vault-storage.jar to plugins directory from existing Rundeck or compile plugin from [source](https://github.com/rundeck-plugins/vault-storage)


Example of ENV for Rundeck POD
```
          - name: RUNDECK_STORAGE_PROVIDER_1_TYPE
            value: "vault-storage"
          - name: RUNDECK_STORAGE_PROVIDER_1_PATH
            value: "keys"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_PREFIX
            value: "rundeck"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_SECRETBACKEND
            value: "secret"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_ADDRESS
            value: "http://vault-api.vault.svc.cluster.local"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_AUTHBACKEND
            value: "token"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_TOKEN
            value: "mytoken here"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_ENGINEVERSION
            value: "1"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_STORAGEBEHAVIOUR
            value: "vault"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_VALIDATESSL
            value: "false"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_MAXRETRIES
            value: "3"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_RETRYINTERVALMILLISECONDS
            value: "100"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_OPENTIMEOUT
            value: "3"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_READTIMEOUT
            value: "5"
          - name: RUNDECK_STORAGE_PROVIDER_1_CONFIG_REMOVEPATHPREFIX
            value: "true"
```
