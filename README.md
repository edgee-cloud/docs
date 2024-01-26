# Edgee Documentation, made with mintlify

### Prerequisites:
- nvm (Be sure to use the lts version of node running `nvm use`)
- make

### Development

Install the [Mintlify CLI](https://www.npmjs.com/package/mintlify) to preview the documentation changes locally. To install, use the following command

```
make install
# or `npm i -g mintlify`
```

Run the following command at the root of your documentation (where mint.json is)

```
make up
# or `mintlify dev`
```

### Publishing Changes

Changes will be deployed to production automatically after pushing to the `main` branch.

#### Troubleshooting

- Mintlify dev isn't running - Run `mintlify install` it'll re-install dependencies.
- Page loads as a 404 - Make sure you are running in a folder with `mint.json`
