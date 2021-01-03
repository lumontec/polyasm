; ModuleID = 'struct.c'
source_filename = "struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Item = type { i32, float, i8* }

@.str = private unnamed_addr constant [7 x i8] c"George\00", align 1
@__const.main.item = private unnamed_addr constant %struct.Item { i32 5, float 0x40019999A0000000, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Item, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.Item* %2, metadata !11, metadata !DIExpression()), !dbg !21
  %3 = bitcast %struct.Item* %2 to i8*, !dbg !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.Item* @__const.main.item to i8*), i64 16, i1 false), !dbg !21
  ret i32 0, !dbg !22
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "struct.c", directory: "/home/crash/Documents/local/sysdig-repo/polyasm/2_struct")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !8, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "item", scope: !7, file: !1, line: 8, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Item", file: !1, line: 5, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Item", file: !1, line: 1, size: 128, elements: !14)
!14 = !{!15, !16, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !13, file: !1, line: 2, baseType: !10, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !13, file: !1, line: 3, baseType: !17, size: 32, offset: 32)
!17 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !1, line: 4, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DILocation(line: 8, column: 10, scope: !7)
!22 = !DILocation(line: 9, column: 5, scope: !7)
