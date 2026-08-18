# Arabic Knowledge Race — Windows Setup

This package contains the Arabic Knowledge Race educational 3D browser game. The project runs locally on Windows through Node.js, pnpm, Vite, React, and Babylon.js.

## Requirements

Install Node.js 20 LTS or newer from https://nodejs.org/. During installation, keep the option that adds Node.js to PATH enabled. Then install pnpm from PowerShell:

```powershell
npm install --global pnpm
```

Close and reopen PowerShell after installing pnpm. Verify the tools:

```powershell
node --version
pnpm --version
```

An internet connection is required during the first installation because the project downloads npm packages and the 3D GLB assets are served from the project's Manus Storage URLs.

## Install the project

Extract the ZIP file to a folder such as `C:\Games\arabic-race-academy`, open PowerShell in that folder, and run:

```powershell
cd C:\Games\arabic-race-academy
pnpm install
```

Do not copy `node_modules` from another computer. Let pnpm install fresh dependencies for Windows.

## Run the development version

```powershell
pnpm dev
```

Open the local address printed in the terminal, normally `http://localhost:3000`. Keep the terminal open while testing. Stop the server with `Ctrl+C`.

The project uses `cross-env`, so the same `pnpm dev` command works in PowerShell, Command Prompt, and Windows Terminal.

## Useful test URLs

Open the regular lesson map at:

```text
http://localhost:3000/
```

Open an automatic demonstration round at:

```text
http://localhost:3000/?demo
```

Open the desert map and kart variant at:

```text
http://localhost:3000/?demo&desert&kart
```

## Verify the project

Run the type checker and unit tests:

```powershell
pnpm check
pnpm test
```

Create a production build:

```powershell
pnpm build
```

The build output is written to the `dist` folder. To run the production server after building:

```powershell
pnpm start
```

## Common Windows issues

If PowerShell blocks a command because of execution policy, run the commands from Command Prompt, or open PowerShell as a user and execute:

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

If port 3000 is already in use, close the program using it or stop the previous development server. If the browser initially shows the loading screen, wait for the 3D vehicle model and map assets to finish downloading; the app displays a loading message while the GLB model is prepared.

If `pnpm` is not recognized, close and reopen the terminal so the updated PATH is loaded. If `node` is not recognized, reinstall Node.js and enable the PATH option.

## Project structure

`client/` contains the React and Babylon.js game, `server/` contains the development server and authentication scaffolding, `shared/` contains shared types, `drizzle/` contains database schema files, and `GAME_DESCRIPTION.md` describes the game in English. The supplied sports car is referenced as a deployed GLB asset, so the browser needs internet access to load it.

## Important note about secrets

Do not commit `.env` files, access tokens, or private credentials. This archive is intended for local testing and source-code review. Authentication and database features may require the corresponding Manus environment variables if you enable those features locally.
