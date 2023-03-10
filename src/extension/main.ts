//
// Extension entry point
//

// import { restartCommand } from "./commands/restart-command";
import { createDebug } from './utils'

const debug = createDebug('main')

export function activate() {
  debug('#activate')
}
export function deactivate() {
  debug('#deactivate')
}

// function errorHandler(error: Error) {
//   logError('A command failed', error)
// }

// nova.commands.register("robb-j.cpp.restart", (workspace: Workspace) =>
//   restartCommand(workspace, langServer).catch(errorHandler)
// );
