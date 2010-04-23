// Test this without pch.
// RUN: %clang_cc1 -include %S/objc_stmts.h -emit-llvm -o - %s
// RUN: %clang_cc1 -include %S/objc_stmts.h -ast-dump -o - %s 2>&1 | FileCheck %s

// Test with pch.
// RUN: %clang_cc1 -x objective-c -emit-pch -o %t %S/objc_stmts.h
// RUN: %clang_cc1 -include-pch %t -emit-llvm -o - %s 
// RUN: %clang_cc1 -include-pch %t -ast-dump -o - %s 2>&1 | FileCheck %s

// CHECK: catch parm = "A *a"
// CHECK: catch parm = "B *b"
// CHECK: catch all
