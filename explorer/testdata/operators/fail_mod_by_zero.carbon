// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// RUN: %{not} %{explorer-run}
// RUN: %{not} %{explorer-run-trace}

package ExplorerTest api;

fn Main() -> i32 {
  // CHECK:STDERR: RUNTIME ERROR: {{.*}}/explorer/testdata/operators/fail_mod_by_zero.carbon:[[@LINE+1]]: division by zero
  var a: auto = 5 % 0;
  return 0;
}
