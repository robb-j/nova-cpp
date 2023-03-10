# cpp.novaextension

These are my development notes on this extension.
For extension information go to [./cpp.novaextension](/cpp.novaextension)

## setup

To work on the extension, you will need to have [Node.js](https://nodejs.org/en/) (version 16+)
and [Nova](https://nova.app) installed on your development machine. Then run:

```sh
# cd to/this/folder

# install NPM dependencies
npm install
```

## regular use

For development, use the `Development` task to build and run the extension locally.
**Build** will compile the TypeScript into JavaScript into the extension folder and install bundled dependencies.
Use **Extensions → Activate Project as Extension** to run the extension.
Nova will run the extension locally and restart when any file inside the `.novaextension` changes,
i.e. by running the **Build** task again.

> Make sure to disable the extension if a published version is already installed.

When in development mode, the extension outputs extra information to the Debug Pane,
which can be shown with **View** → **Show Debug Pane**.

Use the files in the [examples](/examples) folder to test out different features of the language server.

## code formatting

This repository uses [Prettier](https://prettier.io/),
[yorkie](https://www.npmjs.com/package/yorkie)
and [lint-staged](https://www.npmjs.com/package/lint-staged) to
automatically format code when staging code git commits.

You can manually run the formatter with `npm run format` if you want.

Prettier ignores files using [.prettierignore](/.prettierignore)
or specific lines after a `// prettier-ignore` comment.

## useful links

- https://github.com/tree-sitter/tree-sitter-cpp
- https://docs.nova.app/syntax-reference/tree-sitter/

## release process

- Ensure git is clean
- Ensure the `CHANGELOG.md` is up-to-date
- Generate new screenshots if needed
- Make sure `DEBUG_LOGS` is `false`
- Run the build
- Bump the version in extension.json
- Commit as `X.Y.Z`
- Tag the commit as `vX.Y.Z`
- Remove `cpp.novaextension/node_modules`
- **Extensions → Submit to the Extension Library...**

## notes
