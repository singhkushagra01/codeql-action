/**
 * @name Variable in Capitals
 * @description Check if variables are in uppercase.
 * @kind problem
 * @id python/variable-in-capitals
 * @problem.severity warning
 * @precision medium
 */

import python

// Find all variable declarations
from VariableDeclaration var
where
  // Check if the variable name is all uppercase letters
  var.getName().regexpMatch("^[A-Z_]+$")
select var, "Variable name is in capitals: " + var.getName() + "."
