; ModuleID = 'forloop.c'
source_filename = "forloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %2, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !15
  store i32 0, i32* %3, align 4, !dbg !15
  br label %4, !dbg !16

4:                                                ; preds = %10, %0
  %5 = load i32, i32* %3, align 4, !dbg !17
  %6 = icmp slt i32 %5, 10, !dbg !19
  br i1 %6, label %7, label %13, !dbg !20

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4, !dbg !21
  %9 = add nsw i32 %8, 1, !dbg !21
  store i32 %9, i32* %2, align 4, !dbg !21
  br label %10, !dbg !23

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4, !dbg !24
  %12 = add nsw i32 %11, 1, !dbg !24
  store i32 %12, i32* %3, align 4, !dbg !24
  br label %4, !dbg !25, !llvm.loop !26

13:                                               ; preds = %4
  ret i32 0, !dbg !28
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "forloop.c", directory: "/home/crash/Documents/local/sysdig-repo/polyasm/5_for_loop")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 2, type: !10)
!12 = !DILocation(line: 2, column: 8, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !14, file: !1, line: 3, type: !10)
!14 = distinct !DILexicalBlock(scope: !7, file: !1, line: 3, column: 4)
!15 = !DILocation(line: 3, column: 12, scope: !14)
!16 = !DILocation(line: 3, column: 8, scope: !14)
!17 = !DILocation(line: 3, column: 17, scope: !18)
!18 = distinct !DILexicalBlock(scope: !14, file: !1, line: 3, column: 4)
!19 = !DILocation(line: 3, column: 18, scope: !18)
!20 = !DILocation(line: 3, column: 4, scope: !14)
!21 = !DILocation(line: 4, column: 7, scope: !22)
!22 = distinct !DILexicalBlock(scope: !18, file: !1, line: 3, column: 28)
!23 = !DILocation(line: 5, column: 4, scope: !22)
!24 = !DILocation(line: 3, column: 24, scope: !18)
!25 = !DILocation(line: 3, column: 4, scope: !18)
!26 = distinct !{!26, !20, !27}
!27 = !DILocation(line: 5, column: 4, scope: !14)
!28 = !DILocation(line: 6, column: 4, scope: !7)
