; ModuleID = '.kernel_2mm.cpp_mem2reg_constprop.ll'
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
  %idxprom = sext i32 %i.06 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %tmp, i64 %idxprom
  %idxprom4 = sext i32 %j.05 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 0, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body3
  %k.04 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body8 ]
  %idxprom9 = sext i32 %i.06 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i64 %idxprom9
  %idxprom11 = sext i32 %k.04 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx10, i64 0, i64 %idxprom11
  %0 = load i32, i32* %arrayidx12, align 4
  %mul = mul nsw i32 %alpha, %0
  %idxprom13 = sext i32 %k.04 to i64
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i64 %idxprom13
  %idxprom15 = sext i32 %j.05 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14, i64 0, i64 %idxprom15
  %1 = load i32, i32* %arrayidx16, align 4
  %mul17 = mul nsw i32 %mul, %1
  %idxprom18 = sext i32 %i.06 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %tmp, i64 %idxprom18
  %idxprom20 = sext i32 %j.05 to i64
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx19, i64 0, i64 %idxprom20
  %2 = load i32, i32* %arrayidx21, align 4
  %add = add nsw i32 %2, %mul17
  store i32 %add, i32* %arrayidx21, align 4
  %inc = add nsw i32 %k.04, 1
  %cmp7 = icmp slt i32 %inc, 10
  br i1 %cmp7, label %for.body8, label %for.inc22

for.inc22:                                        ; preds = %for.body8
  %inc23 = add nsw i32 %j.05, 1
  %cmp2 = icmp slt i32 %inc23, 10
  br i1 %cmp2, label %for.body3, label %for.inc25

for.inc25:                                        ; preds = %for.inc22
  %inc26 = add nsw i32 %i.06, 1
  %cmp = icmp slt i32 %inc26, 10
  br i1 %cmp, label %for.body, label %for.end27

for.end27:                                        ; preds = %for.inc25
  br label %for.body30

for.body30:                                       ; preds = %for.inc62, %for.end27
  %i.13 = phi i32 [ 0, %for.end27 ], [ %inc63, %for.inc62 ]
  br label %for.body33

for.body33:                                       ; preds = %for.inc59, %for.body30
  %j.12 = phi i32 [ 0, %for.body30 ], [ %inc60, %for.inc59 ]
  %idxprom34 = sext i32 %i.13 to i64
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %D, i64 %idxprom34
  %idxprom36 = sext i32 %j.12 to i64
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx35, i64 0, i64 %idxprom36
  %3 = load i32, i32* %arrayidx37, align 4
  %mul38 = mul nsw i32 %3, %beta
  store i32 %mul38, i32* %arrayidx37, align 4
  br label %for.body41

for.body41:                                       ; preds = %for.body41, %for.body33
  %k.11 = phi i32 [ 0, %for.body33 ], [ %inc57, %for.body41 ]
  %idxprom42 = sext i32 %i.13 to i64
  %arrayidx43 = getelementptr inbounds [10 x i32], [10 x i32]* %tmp, i64 %idxprom42
  %idxprom44 = sext i32 %k.11 to i64
  %arrayidx45 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx43, i64 0, i64 %idxprom44
  %4 = load i32, i32* %arrayidx45, align 4
  %idxprom46 = sext i32 %k.11 to i64
  %arrayidx47 = getelementptr inbounds [10 x i32], [10 x i32]* %C, i64 %idxprom46
  %idxprom48 = sext i32 %j.12 to i64
  %arrayidx49 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx47, i64 0, i64 %idxprom48
  %5 = load i32, i32* %arrayidx49, align 4
  %mul50 = mul nsw i32 %4, %5
  %idxprom51 = sext i32 %i.13 to i64
  %arrayidx52 = getelementptr inbounds [10 x i32], [10 x i32]* %D, i64 %idxprom51
  %idxprom53 = sext i32 %j.12 to i64
  %arrayidx54 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx52, i64 0, i64 %idxprom53
  %6 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %6, %mul50
  store i32 %add55, i32* %arrayidx54, align 4
  %inc57 = add nsw i32 %k.11, 1
  %cmp40 = icmp slt i32 %inc57, 10
  br i1 %cmp40, label %for.body41, label %for.inc59

for.inc59:                                        ; preds = %for.body41
  %inc60 = add nsw i32 %j.12, 1
  %cmp32 = icmp slt i32 %inc60, 10
  br i1 %cmp32, label %for.body33, label %for.inc62

for.inc62:                                        ; preds = %for.inc59
  %inc63 = add nsw i32 %i.13, 1
  %cmp29 = icmp slt i32 %inc63, 10
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
  %i.03 = phi i32 [ 0, %entry ], [ %inc45, %for.inc44 ]
  %call = call i32 @rand() #3
  %idxprom = sext i32 %i.03 to i64
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %alpha, i64 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  %call1 = call i32 @rand() #3
  %idxprom2 = sext i32 %i.03 to i64
  %arrayidx3 = getelementptr inbounds [1 x i32], [1 x i32]* %beta, i64 0, i64 %idxprom2
  store i32 %call1, i32* %arrayidx3, align 4
  br label %for.body6

for.body6:                                        ; preds = %for.inc41, %for.body
  %y.02 = phi i32 [ 0, %for.body ], [ %inc42, %for.inc41 ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9, %for.body6
  %x.01 = phi i32 [ 0, %for.body6 ], [ %inc, %for.body9 ]
  %call10 = call i32 @rand() #3
  %rem = srem i32 %call10, 100
  %idxprom11 = sext i32 %i.03 to i64
  %arrayidx12 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %A, i64 0, i64 %idxprom11
  %idxprom13 = sext i32 %y.02 to i64
  %arrayidx14 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx12, i64 0, i64 %idxprom13
  %idxprom15 = sext i32 %x.01 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14, i64 0, i64 %idxprom15
  store i32 %rem, i32* %arrayidx16, align 4
  %call17 = call i32 @rand() #3
  %rem18 = srem i32 %call17, 100
  %idxprom19 = sext i32 %i.03 to i64
  %arrayidx20 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %B, i64 0, i64 %idxprom19
  %idxprom21 = sext i32 %y.02 to i64
  %arrayidx22 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx20, i64 0, i64 %idxprom21
  %idxprom23 = sext i32 %x.01 to i64
  %arrayidx24 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx22, i64 0, i64 %idxprom23
  store i32 %rem18, i32* %arrayidx24, align 4
  %call25 = call i32 @rand() #3
  %rem26 = srem i32 %call25, 100
  %idxprom27 = sext i32 %i.03 to i64
  %arrayidx28 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %C, i64 0, i64 %idxprom27
  %idxprom29 = sext i32 %y.02 to i64
  %arrayidx30 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx28, i64 0, i64 %idxprom29
  %idxprom31 = sext i32 %x.01 to i64
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx30, i64 0, i64 %idxprom31
  store i32 %rem26, i32* %arrayidx32, align 4
  %call33 = call i32 @rand() #3
  %rem34 = srem i32 %call33, 100
  %idxprom35 = sext i32 %i.03 to i64
  %arrayidx36 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %D, i64 0, i64 %idxprom35
  %idxprom37 = sext i32 %y.02 to i64
  %arrayidx38 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx36, i64 0, i64 %idxprom37
  %idxprom39 = sext i32 %x.01 to i64
  %arrayidx40 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx38, i64 0, i64 %idxprom39
  store i32 %rem34, i32* %arrayidx40, align 4
  %inc = add nsw i32 %x.01, 1
  %cmp8 = icmp slt i32 %inc, 10
  br i1 %cmp8, label %for.body9, label %for.inc41

for.inc41:                                        ; preds = %for.body9
  %inc42 = add nsw i32 %y.02, 1
  %cmp5 = icmp slt i32 %inc42, 10
  br i1 %cmp5, label %for.body6, label %for.inc44

for.inc44:                                        ; preds = %for.inc41
  %inc45 = add nsw i32 %i.03, 1
  %cmp = icmp slt i32 %inc45, 1
  br i1 %cmp, label %for.body, label %for.end46

for.end46:                                        ; preds = %for.inc44
  %arrayidx48 = getelementptr inbounds [1 x i32], [1 x i32]* %alpha, i64 0, i64 0
  %0 = load i32, i32* %arrayidx48, align 4
  %arrayidx49 = getelementptr inbounds [1 x i32], [1 x i32]* %beta, i64 0, i64 0
  %1 = load i32, i32* %arrayidx49, align 4
  %arrayidx50 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %tmp, i64 0, i64 0
  %arraydecay = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx50, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %A, i64 0, i64 0
  %arraydecay52 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx51, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %B, i64 0, i64 0
  %arraydecay54 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx53, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %C, i64 0, i64 0
  %arraydecay56 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx55, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %D, i64 0, i64 0
  %arraydecay58 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx57, i32 0, i32 0
  call void @_Z10kernel_2mmiiPA10_iS0_S0_S0_S0_(i32 %0, i32 %1, [10 x i32]* %arraydecay, [10 x i32]* %arraydecay52, [10 x i32]* %arraydecay54, [10 x i32]* %arraydecay56, [10 x i32]* %arraydecay58)
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
