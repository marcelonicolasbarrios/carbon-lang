// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// RUN: %{not} %{carbon-run-semantics}
// CHECK:STDOUT: cross_reference_irs_size: 1
// CHECK:STDOUT: calls: [
// CHECK:STDOUT: ]
// CHECK:STDOUT: callables: [
// CHECK:STDOUT:   {param_ir: block0, param_refs: block0},
// CHECK:STDOUT: ]
// CHECK:STDOUT: integer_literals: [
// CHECK:STDOUT:   1,
// CHECK:STDOUT:   1,
// CHECK:STDOUT: ]
// CHECK:STDOUT: real_literals: [
// CHECK:STDOUT: ]
// CHECK:STDOUT: strings: [
// CHECK:STDOUT:   Main,
// CHECK:STDOUT:   x,
// CHECK:STDOUT: ]
// CHECK:STDOUT: nodes: [
// CHECK:STDOUT:   {kind: FunctionDeclaration, arg0: str0, arg1: callable0},
// CHECK:STDOUT:   {kind: IntegerLiteral, arg0: int0, type: nodeIntegerType},
// CHECK:STDOUT:   {kind: VarStorage, type: nodeInvalidType},
// CHECK:STDOUT:   {kind: BindName, arg0: str1, arg1: node+2, type: nodeInvalidType},
// CHECK:STDOUT:   {kind: IntegerLiteral, arg0: int1, type: nodeIntegerType},
// CHECK:STDOUT:   {kind: Assign, arg0: node+2, arg1: nodeInvalidType, type: nodeInvalidType},
// CHECK:STDOUT:   {kind: FunctionDefinition, arg0: node+0, arg1: block2},
// CHECK:STDOUT: ]
// CHECK:STDOUT: node_blocks: [
// CHECK:STDOUT:   [
// CHECK:STDOUT:   ],
// CHECK:STDOUT:   [
// CHECK:STDOUT:     node+0,
// CHECK:STDOUT:     node+6,
// CHECK:STDOUT:   ],
// CHECK:STDOUT:   [
// CHECK:STDOUT:     node+1,
// CHECK:STDOUT:     node+2,
// CHECK:STDOUT:     node+3,
// CHECK:STDOUT:     node+4,
// CHECK:STDOUT:     node+5,
// CHECK:STDOUT:   ],
// CHECK:STDOUT: ]

fn Main() {
  // CHECK:STDERR: {{.*}}/toolchain/semantics/testdata/var/fail_storage_is_literal.carbon:[[@LINE+1]]:10: Cannot implicitly convert from `i32` to `Type`.
  var x: 1 = 1;
}
