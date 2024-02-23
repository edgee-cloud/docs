# Edgee Documentation, made with mintlify

Edgee Documentation is a [Mintlify](https://mintlify.com/) project. The documentation is the main entry point for Edgee users.

## Dev Install
### Prerequisites:
- nvm (Be sure to use the lts version of node running `nvm use`)
- **Have installed and run https://github.com/edgee-cloud/traefik**
- **Have installed and run https://github.com/edgee-cloud/api**

Add the following line to your `/etc/hosts` file

```bash
127.0.0.1 docs.edgee.dev
```

#### QuickStart Linux/OSx Dev:

```bash
## Go wherever you want
git clone git@github.com:edgee-cloud/docs.git
cd docs
make install
```
VOILA !!!

Then you can go to https://docs.edgee.dev/

### Publishing Changes

Changes will be deployed to production automatically after pushing to the `main` branch.

#### Troubleshooting

- Mintlify dev isn't running - Run `mintlify install` it'll re-install dependencies.
- Page loads as a 404 - Make sure you are running in a folder with `mint.json`
