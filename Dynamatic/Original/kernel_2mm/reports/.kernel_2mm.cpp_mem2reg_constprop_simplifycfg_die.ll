; ModuleID = '.kernel_2mm.cpp_mem2reg_constprop_simplifycfg.ll'
source_filename = "src/kernel_2mm.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @_Z10kernel_2mmiiPA10_iS0_S0_S0_S0_(i32 %alpha, i32 %beta, [10 x i32]* %tmp, [10 x i32]* %A, [10 x i32]* %B, [10 x i32]* %C, [10 x i32]* %D) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc25, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ]
  br label %for.body3

for.body3:                                        ; preds = %for.inc22, %for.body
  %j.05 = phi i32 [ 0, %for.body ], [ %inc23, %for.inc22 ]
  %0 = zext i32 %i.06 to i64
  %1 = zext i32 %j.05 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %tmp, i64 %0, i64 %1
  store i32 0, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body3
  %k.04 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body8 ]
  %2 = zext i32 %i.06 to i64
  %3 = zext i32 %k.04 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i64 %2, i64 %3
  %4 = load i32, i32* %arrayidx12, align 4
  %mul = mul nsw i32 %4, %alpha
  %5 = zext i32 %k.04 to i64
  %6 = zext i32 %j.05 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i64 %5, i64 %6
  %7 = load i32, i32* %arrayidx16, align 4
  %mul17 = mul nsw i32 %mul, %7
  %8 = zext i32 %i.06 to i64
  %9 = zext i32 %j.05 to i64
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* %tmp, i64 %8, i64 %9
  %10 = load i32, i32* %arrayidx21, align 4
  %add = add nsw i32 %10, %mul17
  store i32 %add, i32* %arrayidx21, align 4
  %inc = add nuw nsw i32 %k.04, 1
  %cmp7 = icmp ult i32 %inc, 10
  br i1 %cmp7, label %for.body8, label %for.inc22

for.inc22:                                        ; preds = %for.body8
  %inc23 = add nuw nsw i32 %j.05, 1
  %cmp2 = icmp ult i32 %inc23, 10
  br i1 %cmp2, label %for.body3, label %for.inc25

for.inc25:                                        ; preds = %for.inc22
  %inc26 = add nuw nsw i32 %i.06, 1
  %cmp = icmp ult i32 %inc26, 10
  br i1 %cmp, label %for.body, label %for.end27

for.end27:                                        ; preds = %for.inc25
  br label %for.body30

for.body30:                                       ; preds = %for.inc62, %for.end27
  %i.13 = phi i32 [ 0, %for.end27 ], [ %inc63, %for.inc62 ]
  br label %for.body33

for.body33:                                       ; preds = %for.inc59, %for.body30
  %j.12 = phi i32 [ 0, %for.body30 ], [ %inc60, %for.inc59 ]
  %11 = zext i32 %i.13 to i64
  %12 = zext i32 %j.12 to i64
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %D, i64 %11, i64 %12
  %13 = load i32, i32* %arrayidx37, align 4
  %mul38 = mul nsw i32 %13, %beta
  store i32 %mul38, i32* %arrayidx37, align 4
  br label %for.body41

for.body41:                                       ; preds = %for.body41, %for.body33
  %k.11 = phi i32 [ 0, %for.body33 ], [ %inc57, %for.body41 ]
  %14 = zext i32 %i.13 to i64
  %15 = zext i32 %k.11 to i64
  %arrayidx45 = getelementptr inbounds [10 x i32], [10 x i32]* %tmp, i64 %14, i64 %15
  %16 = load i32, i32* %arrayidx45, align 4
  %17 = zext i32 %k.11 to i64
  %18 = zext i32 %j.12 to i64
  %arrayidx49 = getelementptr inbounds [10 x i32], [10 x i32]* %C, i64 %17, i64 %18
  %19 = load i32, i32* %arrayidx49, align 4
  %mul50 = mul nsw i32 %16, %19
  %20 = zext i32 %i.13 to i64
  %21 = zext i32 %j.12 to i64
  %arrayidx54 = getelementptr inbounds [10 x i32], [10 x i32]* %D, i64 %20, i64 %21
  %22 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %22, %mul50
  store i32 %add55, i32* %arrayidx54, align 4
  %inc57 = add nuw nsw i32 %k.11, 1
  %cmp40 = icmp ult i32 %inc57, 10
  br i1 %cmp40, label %for.body41, label %for.inc59

for.inc59:                                        ; preds = %for.body41
  %inc60 = add nuw nsw i32 %j.12, 1
  %cmp32 = icmp ult i32 %inc60, 10
  br i1 %cmp32, label %for.body33, label %for.inc62

for.inc62:                                        ; preds = %for.inc59
  %inc63 = add nuw nsw i32 %i.13, 1
  %cmp29 = icmp ult i32 %inc63, 10
  br i1 %cmp29, label %for.body30, label %for.end64

for.end64:                                        ; preds = %for.inc62
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %alpha = alloca [1 x i32], align 4
  %beta = alloca [1 x i32], align 4
  %tmp = alloca [1 x [10 x [10 x i32]]], align 16
  %A = alloca [1 x [10 x [10 x i32]]], align 16
  %B = alloca [1 x [10 x [10 x i32]]], align 16
  %C = alloca [1 x [10 x [10 x i32]]], align 16
  %D = alloca [1 x [10 x [10 x i32]]], align 16
  br label %for.body

for.body:                                         ; preds = %for.inc44, %entry
  %call = call i32 @rand() #3
  %0 = getelementptr inbounds [1 x i32], [1 x i32]* %alpha, i64 0, i64 0
  store i32 %call, i32* %0, align 4
  %call1 = call i32 @rand() #3
  %1 = getelementptr inbounds [1 x i32], [1 x i32]* %beta, i64 0, i64 0
  store i32 %call1, i32* %1, align 4
  br label %for.body6

for.body6:                                        ; preds = %for.inc41, %for.body
  %y.02 = phi i32 [ 0, %for.body ], [ %inc42, %for.inc41 ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9, %for.body6
  %x.01 = phi i32 [ 0, %for.body6 ], [ %inc, %for.body9 ]
  %call10 = call i32 @rand() #3
  %rem = srem i32 %call10, 100
  %2 = zext i32 %y.02 to i64
  %3 = zext i32 %x.01 to i64
  %4 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %A, i64 0, i64 0, i64 %2, i64 %3
  store i32 %rem, i32* %4, align 4
  %call17 = call i32 @rand() #3
  %rem18 = srem i32 %call17, 100
  %5 = zext i32 %y.02 to i64
  %6 = zext i32 %x.01 to i64
  %7 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %B, i64 0, i64 0, i64 %5, i64 %6
  store i32 %rem18, i32* %7, align 4
  %call25 = call i32 @rand() #3
  %rem26 = srem i32 %call25, 100
  %8 = zext i32 %y.02 to i64
  %9 = zext i32 %x.01 to i64
  %10 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %C, i64 0, i64 0, i64 %8, i64 %9
  store i32 %rem26, i32* %10, align 4
  %call33 = call i32 @rand() #3
  %rem34 = srem i32 %call33, 100
  %11 = zext i32 %y.02 to i64
  %12 = zext i32 %x.01 to i64
  %13 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %D, i64 0, i64 0, i64 %11, i64 %12
  store i32 %rem34, i32* %13, align 4
  %inc = add nuw nsw i32 %x.01, 1
  %cmp8 = icmp ult i32 %inc, 10
  br i1 %cmp8, label %for.body9, label %for.inc41

for.inc41:                                        ; preds = %for.body9
  %inc42 = add nuw nsw i32 %y.02, 1
  %cmp5 = icmp ult i32 %inc42, 10
  br i1 %cmp5, label %for.body6, label %for.inc44

for.inc44:                                        ; preds = %for.inc41
  br i1 false, label %for.body, label %for.end46

for.end46:                                        ; preds = %for.inc44
  %arrayidx48 = getelementptr inbounds [1 x i32], [1 x i32]* %alpha, i64 0, i64 0
  %14 = load i32, i32* %arrayidx48, align 4
  %arrayidx49 = getelementptr inbounds [1 x i32], [1 x i32]* %beta, i64 0, i64 0
  %15 = load i32, i32* %arrayidx49, align 4
  %arraydecay = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %tmp, i64 0, i64 0, i64 0
  %arraydecay52 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %A, i64 0, i64 0, i64 0
  %arraydecay54 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %B, i64 0, i64 0, i64 0
  %arraydecay56 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %C, i64 0, i64 0, i64 0
  %arraydecay58 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %D, i64 0, i64 0, i64 0
  call void @_Z10kernel_2mmiiPA10_iS0_S0_S0_S0_(i32 %14, i32 %15, [10 x i32]* nonnull %arraydecay, [10 x i32]* nonnull %arraydecay52, [10 x i32]* nonnull %arraydecay54, [10 x i32]* nonnull %arraydecay56, [10 x i32]* nonnull %arraydecay58)
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
