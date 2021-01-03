; ModuleID = 'function.c'
source_filename = "function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sum(i32 %0, i32 %1) #0 !dbg !7 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %5, metadata !15, metadata !DIExpression()), !dbg !16
  %6 = load i32, i32* %3, align 4, !dbg !17
  %7 = load i32, i32* %4, align 4, !dbg !18
  %8 = add nsw i32 %6, %7, !dbg !19
  store i32 %8, i32* %5, align 4, !dbg !16
  %9 = load i32, i32* %5, align 4, !dbg !20
  ret i32 %9, !dbg !21
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !22 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 1, i32* %1, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %2, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 2, i32* %2, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %3, metadata !29, metadata !DIExpression()), !dbg !30
  %4 = load i32, i32* %1, align 4, !dbg !31
  %5 = load i32, i32* %2, align 4, !dbg !32
  %6 = call i32 @sum(i32 %4, i32 %5), !dbg !33
  store i32 %6, i32* %3, align 4, !dbg !30
  ret i32 0, !dbg !34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "function.c", directory: "/home/crash/Documents/local/sysdig-repo/polyasm/4_function")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "sum", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 1, type: !10)
!12 = !DILocation(line: 1, column: 15, scope: !7)
!13 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 1, type: !10)
!14 = !DILocation(line: 1, column: 22, scope: !7)
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 2, type: !10)
!16 = !DILocation(line: 2, column: 8, scope: !7)
!17 = !DILocation(line: 2, column: 12, scope: !7)
!18 = !DILocation(line: 2, column: 16, scope: !7)
!19 = !DILocation(line: 2, column: 14, scope: !7)
!20 = !DILocation(line: 3, column: 11, scope: !7)
!21 = !DILocation(line: 3, column: 4, scope: !7)
!22 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !23, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{!10}
!25 = !DILocalVariable(name: "p1", scope: !22, file: !1, line: 8, type: !10)
!26 = !DILocation(line: 8, column: 8, scope: !22)
!27 = !DILocalVariable(name: "p2", scope: !22, file: !1, line: 9, type: !10)
!28 = !DILocation(line: 9, column: 8, scope: !22)
!29 = !DILocalVariable(name: "p3", scope: !22, file: !1, line: 10, type: !10)
!30 = !DILocation(line: 10, column: 8, scope: !22)
!31 = !DILocation(line: 10, column: 17, scope: !22)
!32 = !DILocation(line: 10, column: 21, scope: !22)
!33 = !DILocation(line: 10, column: 13, scope: !22)
!34 = !DILocation(line: 11, column: 1, scope: !22)
