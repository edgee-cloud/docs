# Edgee Documentation, made with mintlify

Edgee Documentation is a [Mintlify](https://mintlify.com/) project. The documentation is the main entry point for Edgee users.

## Prerequisites:
- **Have installed Nix**: `curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install`


#### QuickStart Linux/OSx Dev:

```bash
## Go wherever you want
git clone git@github.com:edgee-cloud/docs.git
cd docs
nix develop ## After this command all the dependencies will be installed and you will be in a Nix shell
make dev.up ## This command will start the docs
```
VOILA !!!

Then you can go to https://localhost:3001

### Publishing Changes

Changes will be deployed to production automatically after pushing to the `main` branch.

#### Troubleshooting

- Mintlify dev isn't running - Run `mintlify install` it'll re-install dependencies.
- Page loads as a 404 - Make sure you are running in a folder with `mint.json`
