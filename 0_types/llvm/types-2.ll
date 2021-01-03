; ModuleID = 'types.c'
source_filename = "types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !7 {
  call void @llvm.dbg.value(metadata i32 32, metadata !12, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 undef, metadata !13, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i8 99, metadata !17, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata float 0x40019999A0000000, metadata !23, metadata !DIExpression()), !dbg !27
  ret i32 0, !dbg !28
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "types.c", directory: "/home/crash/Documents/local/sysdig-repo/polyasm/0_types")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13, !17, !19, !23, !25}
!12 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!13 = !DILocalVariable(name: "ia", scope: !7, file: !1, line: 5, type: !14)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 2)
!17 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 6, type: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DILocalVariable(name: "ca", scope: !7, file: !1, line: 7, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 136, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 17)
!23 = !DILocalVariable(name: "f", scope: !7, file: !1, line: 8, type: !24)
!24 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!25 = !DILocalVariable(name: "fa", scope: !7, file: !1, line: 9, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !15)
!27 = !DILocation(line: 0, scope: !7)
!28 = !DILocation(line: 11, column: 1, scope: !7)
