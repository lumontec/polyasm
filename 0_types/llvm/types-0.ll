; ModuleID = 'types.c'
source_filename = "types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.ia = private unnamed_addr constant [2 x i32] [i32 1, i32 2], align 4
@__const.main.ca = private unnamed_addr constant [17 x i8] c"this is a string\00", align 16
@__const.main.fa = private unnamed_addr constant [2 x float] [float 0x3FF19999A0000000, float 0x40019999A0000000], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca i8, align 1
  %5 = alloca [17 x i8], align 16
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 32, i32* %2, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata [2 x i32]* %3, metadata !13, metadata !DIExpression()), !dbg !17
  %8 = bitcast [2 x i32]* %3 to i8*, !dbg !17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([2 x i32]* @__const.main.ia to i8*), i64 8, i1 false), !dbg !17
  call void @llvm.dbg.declare(metadata i8* %4, metadata !18, metadata !DIExpression()), !dbg !20
  store i8 99, i8* %4, align 1, !dbg !20
  call void @llvm.dbg.declare(metadata [17 x i8]* %5, metadata !21, metadata !DIExpression()), !dbg !25
  %9 = bitcast [17 x i8]* %5 to i8*, !dbg !25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.main.ca, i32 0, i32 0), i64 17, i1 false), !dbg !25
  call void @llvm.dbg.declare(metadata float* %6, metadata !26, metadata !DIExpression()), !dbg !28
  store float 0x40019999A0000000, float* %6, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata [2 x float]* %7, metadata !29, metadata !DIExpression()), !dbg !31
  %10 = bitcast [2 x float]* %7 to i8*, !dbg !31
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([2 x float]* @__const.main.fa to i8*), i64 8, i1 false), !dbg !31
  ret i32 0, !dbg !32
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
!1 = !DIFile(filename: "types.c", directory: "/home/crash/Documents/local/sysdig-repo/polyasm/0_types")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 8, scope: !7)
!13 = !DILocalVariable(name: "ia", scope: !7, file: !1, line: 5, type: !14)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 2)
!17 = !DILocation(line: 5, column: 8, scope: !7)
!18 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 6, type: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DILocation(line: 6, column: 9, scope: !7)
!21 = !DILocalVariable(name: "ca", scope: !7, file: !1, line: 7, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 136, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 17)
!25 = !DILocation(line: 7, column: 9, scope: !7)
!26 = !DILocalVariable(name: "f", scope: !7, file: !1, line: 8, type: !27)
!27 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!28 = !DILocation(line: 8, column: 10, scope: !7)
!29 = !DILocalVariable(name: "fa", scope: !7, file: !1, line: 9, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !15)
!31 = !DILocation(line: 9, column: 10, scope: !7)
!32 = !DILocation(line: 10, column: 4, scope: !7)
