# Assembly.sh Documentation

### 👩‍💻 Development

Install the [Mintlify CLI](https://www.npmjs.com/package/mintlify) to preview the documentation changes locally. To install, use the following command

```
make install
```

Run the following command at the root of your documentation (where mint.json is)

```
make up
```

### 😎 Publishing Changes

Changes will be deployed to production automatically after pushing to the `main` branch.

#### Troubleshooting

- Mintlify dev isn't running - Run `make install` it'll re-install dependencies.
- Page loads as a 404 - Make sure you are running in a folder with `mint.json`
