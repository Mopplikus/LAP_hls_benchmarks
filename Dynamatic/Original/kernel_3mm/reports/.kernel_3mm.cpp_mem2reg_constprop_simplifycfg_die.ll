; ModuleID = '.kernel_3mm.cpp_mem2reg_constprop_simplifycfg.ll'
source_filename = "src/kernel_3mm.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @_Z10kernel_3mmPA10_iS0_S0_S0_S0_S0_S0_([10 x i32]* %A, [10 x i32]* %B, [10 x i32]* %C, [10 x i32]* %D, [10 x i32]* %E, [10 x i32]* %F, [10 x i32]* %G) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc24, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ]
  br label %for.body3

for.body3:                                        ; preds = %for.inc21, %for.body
  %j.08 = phi i32 [ 0, %for.body ], [ %inc22, %for.inc21 ]
  %0 = zext i32 %i.09 to i64
  %1 = zext i32 %j.08 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %E, i64 %0, i64 %1
  store i32 0, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body3
  %k.07 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body8 ]
  %2 = zext i32 %i.09 to i64
  %3 = zext i32 %k.07 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i64 %2, i64 %3
  %4 = load i32, i32* %arrayidx12, align 4
  %5 = zext i32 %k.07 to i64
  %6 = zext i32 %j.08 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i64 %5, i64 %6
  %7 = load i32, i32* %arrayidx16, align 4
  %mul = mul nsw i32 %4, %7
  %8 = zext i32 %i.09 to i64
  %9 = zext i32 %j.08 to i64
  %arrayidx20 = getelementptr inbounds [10 x i32], [10 x i32]* %E, i64 %8, i64 %9
  %10 = load i32, i32* %arrayidx20, align 4
  %add = add nsw i32 %10, %mul
  store i32 %add, i32* %arrayidx20, align 4
  %inc = add nuw nsw i32 %k.07, 1
  %cmp7 = icmp ult i32 %inc, 10
  br i1 %cmp7, label %for.body8, label %for.inc21

for.inc21:                                        ; preds = %for.body8
  %inc22 = add nuw nsw i32 %j.08, 1
  %cmp2 = icmp ult i32 %inc22, 10
  br i1 %cmp2, label %for.body3, label %for.inc24

for.inc24:                                        ; preds = %for.inc21
  %inc25 = add nuw nsw i32 %i.09, 1
  %cmp = icmp ult i32 %inc25, 10
  br i1 %cmp, label %for.body, label %for.end26

for.end26:                                        ; preds = %for.inc24
  br label %for.body29

for.body29:                                       ; preds = %for.inc60, %for.end26
  %i.16 = phi i32 [ 0, %for.end26 ], [ %inc61, %for.inc60 ]
  br label %for.body32

for.body32:                                       ; preds = %for.inc57, %for.body29
  %j.15 = phi i32 [ 0, %for.body29 ], [ %inc58, %for.inc57 ]
  %11 = zext i32 %i.16 to i64
  %12 = zext i32 %j.15 to i64
  %arrayidx36 = getelementptr inbounds [10 x i32], [10 x i32]* %F, i64 %11, i64 %12
  store i32 0, i32* %arrayidx36, align 4
  br label %for.body39

for.body39:                                       ; preds = %for.body39, %for.body32
  %k.14 = phi i32 [ 0, %for.body32 ], [ %inc55, %for.body39 ]
  %13 = zext i32 %i.16 to i64
  %14 = zext i32 %k.14 to i64
  %arrayidx43 = getelementptr inbounds [10 x i32], [10 x i32]* %C, i64 %13, i64 %14
  %15 = load i32, i32* %arrayidx43, align 4
  %16 = zext i32 %k.14 to i64
  %17 = zext i32 %j.15 to i64
  %arrayidx47 = getelementptr inbounds [10 x i32], [10 x i32]* %D, i64 %16, i64 %17
  %18 = load i32, i32* %arrayidx47, align 4
  %mul48 = mul nsw i32 %15, %18
  %19 = zext i32 %i.16 to i64
  %20 = zext i32 %j.15 to i64
  %arrayidx52 = getelementptr inbounds [10 x i32], [10 x i32]* %F, i64 %19, i64 %20
  %21 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %21, %mul48
  store i32 %add53, i32* %arrayidx52, align 4
  %inc55 = add nuw nsw i32 %k.14, 1
  %cmp38 = icmp ult i32 %inc55, 10
  br i1 %cmp38, label %for.body39, label %for.inc57

for.inc57:                                        ; preds = %for.body39
  %inc58 = add nuw nsw i32 %j.15, 1
  %cmp31 = icmp ult i32 %inc58, 10
  br i1 %cmp31, label %for.body32, label %for.inc60

for.inc60:                                        ; preds = %for.inc57
  %inc61 = add nuw nsw i32 %i.16, 1
  %cmp28 = icmp ult i32 %inc61, 10
  br i1 %cmp28, label %for.body29, label %for.end62

for.end62:                                        ; preds = %for.inc60
  br label %for.body65

for.body65:                                       ; preds = %for.inc96, %for.end62
  %i.23 = phi i32 [ 0, %for.end62 ], [ %inc97, %for.inc96 ]
  br label %for.body68

for.body68:                                       ; preds = %for.inc93, %for.body65
  %j.22 = phi i32 [ 0, %for.body65 ], [ %inc94, %for.inc93 ]
  %22 = zext i32 %i.23 to i64
  %23 = zext i32 %j.22 to i64
  %arrayidx72 = getelementptr inbounds [10 x i32], [10 x i32]* %G, i64 %22, i64 %23
  store i32 0, i32* %arrayidx72, align 4
  br label %for.body75

for.body75:                                       ; preds = %for.body75, %for.body68
  %k.21 = phi i32 [ 0, %for.body68 ], [ %inc91, %for.body75 ]
  %24 = zext i32 %i.23 to i64
  %25 = zext i32 %k.21 to i64
  %arrayidx79 = getelementptr inbounds [10 x i32], [10 x i32]* %E, i64 %24, i64 %25
  %26 = load i32, i32* %arrayidx79, align 4
  %27 = zext i32 %k.21 to i64
  %28 = zext i32 %j.22 to i64
  %arrayidx83 = getelementptr inbounds [10 x i32], [10 x i32]* %F, i64 %27, i64 %28
  %29 = load i32, i32* %arrayidx83, align 4
  %mul84 = mul nsw i32 %26, %29
  %30 = zext i32 %i.23 to i64
  %31 = zext i32 %j.22 to i64
  %arrayidx88 = getelementptr inbounds [10 x i32], [10 x i32]* %G, i64 %30, i64 %31
  %32 = load i32, i32* %arrayidx88, align 4
  %add89 = add nsw i32 %32, %mul84
  store i32 %add89, i32* %arrayidx88, align 4
  %inc91 = add nuw nsw i32 %k.21, 1
  %cmp74 = icmp ult i32 %inc91, 10
  br i1 %cmp74, label %for.body75, label %for.inc93

for.inc93:                                        ; preds = %for.body75
  %inc94 = add nuw nsw i32 %j.22, 1
  %cmp67 = icmp ult i32 %inc94, 10
  br i1 %cmp67, label %for.body68, label %for.inc96

for.inc96:                                        ; preds = %for.inc93
  %inc97 = add nuw nsw i32 %i.23, 1
  %cmp64 = icmp ult i32 %inc97, 10
  br i1 %cmp64, label %for.body65, label %for.end98

for.end98:                                        ; preds = %for.inc96
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %A = alloca [1 x [10 x [10 x i32]]], align 16
  %B = alloca [1 x [10 x [10 x i32]]], align 16
  %C = alloca [1 x [10 x [10 x i32]]], align 16
  %D = alloca [1 x [10 x [10 x i32]]], align 16
  %E = alloca [1 x [10 x [10 x i32]]], align 16
  %F = alloca [1 x [10 x [10 x i32]]], align 16
  %G = alloca [1 x [10 x [10 x i32]]], align 16
  br label %for.body

for.body:                                         ; preds = %for.inc62, %entry
  br label %for.body3

for.body3:                                        ; preds = %for.inc59, %for.body
  %y.02 = phi i32 [ 0, %for.body ], [ %inc60, %for.inc59 ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body3
  %x.01 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body6 ]
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 10
  %0 = zext i32 %y.02 to i64
  %1 = zext i32 %x.01 to i64
  %2 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %A, i64 0, i64 0, i64 %0, i64 %1
  store i32 %rem, i32* %2, align 4
  %call11 = call i32 @rand() #3
  %rem12 = srem i32 %call11, 10
  %3 = zext i32 %y.02 to i64
  %4 = zext i32 %x.01 to i64
  %5 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %B, i64 0, i64 0, i64 %3, i64 %4
  store i32 %rem12, i32* %5, align 4
  %call19 = call i32 @rand() #3
  %rem20 = srem i32 %call19, 10
  %6 = zext i32 %y.02 to i64
  %7 = zext i32 %x.01 to i64
  %8 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %C, i64 0, i64 0, i64 %6, i64 %7
  store i32 %rem20, i32* %8, align 4
  %call27 = call i32 @rand() #3
  %rem28 = srem i32 %call27, 10
  %9 = zext i32 %y.02 to i64
  %10 = zext i32 %x.01 to i64
  %11 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %D, i64 0, i64 0, i64 %9, i64 %10
  store i32 %rem28, i32* %11, align 4
  %call35 = call i32 @rand() #3
  %rem36 = srem i32 %call35, 10
  %12 = zext i32 %y.02 to i64
  %13 = zext i32 %x.01 to i64
  %14 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %E, i64 0, i64 0, i64 %12, i64 %13
  store i32 %rem36, i32* %14, align 4
  %call43 = call i32 @rand() #3
  %rem44 = srem i32 %call43, 10
  %15 = zext i32 %y.02 to i64
  %16 = zext i32 %x.01 to i64
  %17 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %F, i64 0, i64 0, i64 %15, i64 %16
  store i32 %rem44, i32* %17, align 4
  %call51 = call i32 @rand() #3
  %rem52 = srem i32 %call51, 10
  %18 = zext i32 %y.02 to i64
  %19 = zext i32 %x.01 to i64
  %20 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %G, i64 0, i64 0, i64 %18, i64 %19
  store i32 %rem52, i32* %20, align 4
  %inc = add nuw nsw i32 %x.01, 1
  %cmp5 = icmp ult i32 %inc, 10
  br i1 %cmp5, label %for.body6, label %for.inc59

for.inc59:                                        ; preds = %for.body6
  %inc60 = add nuw nsw i32 %y.02, 1
  %cmp2 = icmp ult i32 %inc60, 10
  br i1 %cmp2, label %for.body3, label %for.inc62

for.inc62:                                        ; preds = %for.inc59
  br i1 false, label %for.body, label %for.end64

for.end64:                                        ; preds = %for.inc62
  %arraydecay = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %A, i64 0, i64 0, i64 0
  %arraydecay67 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %B, i64 0, i64 0, i64 0
  %arraydecay69 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %C, i64 0, i64 0, i64 0
  %arraydecay71 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %D, i64 0, i64 0, i64 0
  %arraydecay73 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %E, i64 0, i64 0, i64 0
  %arraydecay75 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %F, i64 0, i64 0, i64 0
  %arraydecay77 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %G, i64 0, i64 0, i64 0
  call void @_Z10kernel_3mmPA10_iS0_S0_S0_S0_S0_S0_([10 x i32]* nonnull %arraydecay, [10 x i32]* nonnull %arraydecay67, [10 x i32]* nonnull %arraydecay69, [10 x i32]* nonnull %arraydecay71, [10 x i32]* nonnull %arraydecay73, [10 x i32]* nonnull %arraydecay75, [10 x i32]* nonnull %arraydecay77)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @rand() #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"}
