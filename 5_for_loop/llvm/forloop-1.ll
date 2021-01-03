; ModuleID = 'forloop.c'
source_filename = "forloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !7 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !12, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !15
  call void @llvm.dbg.value(metadata i32 undef, metadata !13, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !16
  ret i32 0, !dbg !17
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "forloop.c", directory: "/home/crash/Documents/local/sysdig-repo/polyasm/5_for_loop")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13}
!12 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 2, type: !10)
!13 = !DILocalVariable(name: "i", scope: !14, file: !1, line: 3, type: !10)
!14 = distinct !DILexicalBlock(scope: !7, file: !1, line: 3, column: 4)
!15 = !DILocation(line: 0, scope: !7)
!16 = !DILocation(line: 0, scope: !14)
!17 = !DILocation(line: 6, column: 4, scope: !7)
