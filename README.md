# Enabling plugins in Inso (Isomnia CLI)

This hack is meant to address two issues we face in context of Continous Delivery as of `insomnia-inso@2.3.0`:

- [Support plugins by inso](https://github.com/Kong/insomnia/discussions/3653)
- [Strategy for avoding plain text passwords in environment?](https://github.com/Kong/insomnia/discussions/3871)

Because UX, we use Docker.

## Build
The following command builds an image adding [insomnia-plugin-dotenv](https://www.npmjs.com/package/insomnia-plugin-dotenv). However, I'd expect other plugins to work as well.

```shell
REPO=deas/insomnia-inso-dotenv
docker build -t ${REPO} .
```
## Usage
Assuming there is a `.insomnia` data directory including tests present in current working directory: 
```shell
REPO=deas/insomnia-inso-dotenv
docker run -it -v`pwd`:/work --rm ${REPO} run test
```
