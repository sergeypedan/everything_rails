# Install Chef client on a new node

```sh
cd "~/Sites/Chef"
```

```sh
knife bootstrap 111.222.333.444
    --ssh-user "root"
    --ssh-port 22
    --sudo
    --node-name "NODE_NAME"

    # Can add run-list at once:
    --run-list "recipe[COOKBOOK_NAME]"

    # Password:
    --use-sudo-password
    --ssh-password "PASSWORD"

    # RSA key:
    --ssh-identity-file "~/.ssh/id_rsa"
```

`--sudo` — Execute a bootstrap operation with sudo  
`--use-sudo-password` — Perform a bootstrap operation with sudo; specify the password with the `--ssh-password` option.

## Verify installation

```sh
knife node list
```
    
```sh
knife node show "NODE_NAME"
```

Check nodes list on [Chef server](https://manage.chef.io/organizations/integral_design/nodes)
