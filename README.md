Nakama Project Template
===

> An example project template on how to set up and write custom logic in Nakama server.

The codebase shows a few simple gameplay features written in all three of the runtime framework languages supported by the server: TypeScript. The code shows how to read/write storage objects, send in-app notifications, parse JSON, update player wallets, and handle errors.

For more documentation have a look at:

* https://heroiclabs.com/docs/runtime-code-basics/
* https://heroiclabs.com/docs/storage-collections/
* https://heroiclabs.com/docs/user-accounts/#virtual-wallet
* https://heroiclabs.com/docs/social-in-app-notifications/
* https://heroiclabs.com/docs/gameplay-multiplayer-server-multiplayer/
* https://heroiclabs.com/docs/runtime-code-function-reference/

For a detailed guide on setting up TypeScript check out the [Setup page](https://heroiclabs.com/docs/runtime-code-typescript-setup/#initialize-the-project).

### Prerequisites

The codebase requires these development tools:

* Docker Engine: 19.0.0 or greater.
* Node v14 (active LTS) or greater.
* Basic UNIX tools or knowledge on the Windows equivalents.

### TypeScript Dependencies

The project uses NPM to manage dependencies which can be installed as normal:

```shell
npm install
```

Before you start the server you can transpile the TypeScript code to JavaScript code with the TypeScript compiler:

```shell
npx tsc
```

The bundled JavaScript code output can be found in "build/index.js".

### Start

The recommended workflow is to use Docker and the compose file to build and run the game server and database resources.

```shell
docker compose up --build nakama
```

### Recompile / Run

When the containers have been started as shown above you can replace just the game server custom code and recompile it with the `-d` option.

```shell
docker compose up -d --build nakama
```
and then, you can visit `localhost:7351` to see more information for admin and password for `password`.
### Stop

To stop all running containers you can use the Docker compose sub-command.

```shell
docker compose down
```

You can wipe the database and workspace with `docker-compose down -v` to remove the disk volumes.