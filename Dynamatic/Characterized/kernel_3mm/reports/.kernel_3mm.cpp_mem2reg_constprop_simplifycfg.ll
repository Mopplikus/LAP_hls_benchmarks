; ModuleID = '.kernel_3mm.cpp_mem2reg_constprop.ll'
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
  %idxprom = sext i32 %i.09 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %E, i64 %idxprom
  %idxprom4 = sext i32 %j.08 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 0, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body3
  %k.07 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body8 ]
  %idxprom9 = sext i32 %i.09 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i64 %idxprom9
  %idxprom11 = sext i32 %k.07 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx10, i64 0, i64 %idxprom11
  %0 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %k.07 to i64
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i64 %idxprom13
  %idxprom15 = sext i32 %j.08 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14, i64 0, i64 %idxprom15
  %1 = load i32, i32* %arrayidx16, align 4
  %mul = mul nsw i32 %0, %1
  %idxprom17 = sext i32 %i.09 to i64
  %arrayidx18 = getelementptr inbounds [10 x i32], [10 x i32]* %E, i64 %idxprom17
  %idxprom19 = sext i32 %j.08 to i64
  %arrayidx20 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx18, i64 0, i64 %idxprom19
  %2 = load i32, i32* %arrayidx20, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* %arrayidx20, align 4
  %inc = add nsw i32 %k.07, 1
  %cmp7 = icmp slt i32 %inc, 10
  br i1 %cmp7, label %for.body8, label %for.inc21

for.inc21:                                        ; preds = %for.body8
  %inc22 = add nsw i32 %j.08, 1
  %cmp2 = icmp slt i32 %inc22, 10
  br i1 %cmp2, label %for.body3, label %for.inc24

for.inc24:                                        ; preds = %for.inc21
  %inc25 = add nsw i32 %i.09, 1
  %cmp = icmp slt i32 %inc25, 10
  br i1 %cmp, label %for.body, label %for.end26

for.end26:                                        ; preds = %for.inc24
  br label %for.body29

for.body29:                                       ; preds = %for.inc60, %for.end26
  %i.16 = phi i32 [ 0, %for.end26 ], [ %inc61, %for.inc60 ]
  br label %for.body32

for.body32:                                       ; preds = %for.inc57, %for.body29
  %j.15 = phi i32 [ 0, %for.body29 ], [ %inc58, %for.inc57 ]
  %idxprom33 = sext i32 %i.16 to i64
  %arrayidx34 = getelementptr inbounds [10 x i32], [10 x i32]* %F, i64 %idxprom33
  %idxprom35 = sext i32 %j.15 to i64
  %arrayidx36 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx34, i64 0, i64 %idxprom35
  store i32 0, i32* %arrayidx36, align 4
  br label %for.body39

for.body39:                                       ; preds = %for.body39, %for.body32
  %k.14 = phi i32 [ 0, %for.body32 ], [ %inc55, %for.body39 ]
  %idxprom40 = sext i32 %i.16 to i64
  %arrayidx41 = getelementptr inbounds [10 x i32], [10 x i32]* %C, i64 %idxprom40
  %idxprom42 = sext i32 %k.14 to i64
  %arrayidx43 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx41, i64 0, i64 %idxprom42
  %3 = load i32, i32* %arrayidx43, align 4
  %idxprom44 = sext i32 %k.14 to i64
  %arrayidx45 = getelementptr inbounds [10 x i32], [10 x i32]* %D, i64 %idxprom44
  %idxprom46 = sext i32 %j.15 to i64
  %arrayidx47 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx45, i64 0, i64 %idxprom46
  %4 = load i32, i32* %arrayidx47, align 4
  %mul48 = mul nsw i32 %3, %4
  %idxprom49 = sext i32 %i.16 to i64
  %arrayidx50 = getelementptr inbounds [10 x i32], [10 x i32]* %F, i64 %idxprom49
  %idxprom51 = sext i32 %j.15 to i64
  %arrayidx52 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx50, i64 0, i64 %idxprom51
  %5 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %5, %mul48
  store i32 %add53, i32* %arrayidx52, align 4
  %inc55 = add nsw i32 %k.14, 1
  %cmp38 = icmp slt i32 %inc55, 10
  br i1 %cmp38, label %for.body39, label %for.inc57

for.inc57:                                        ; preds = %for.body39
  %inc58 = add nsw i32 %j.15, 1
  %cmp31 = icmp slt i32 %inc58, 10
  br i1 %cmp31, label %for.body32, label %for.inc60

for.inc60:                                        ; preds = %for.inc57
  %inc61 = add nsw i32 %i.16, 1
  %cmp28 = icmp slt i32 %inc61, 10
  br i1 %cmp28, label %for.body29, label %for.end62

for.end62:                                        ; preds = %for.inc60
  br label %for.body65

for.body65:                                       ; preds = %for.inc96, %for.end62
  %i.23 = phi i32 [ 0, %for.end62 ], [ %inc97, %for.inc96 ]
  br label %for.body68

for.body68:                                       ; preds = %for.inc93, %for.body65
  %j.22 = phi i32 [ 0, %for.body65 ], [ %inc94, %for.inc93 ]
  %idxprom69 = sext i32 %i.23 to i64
  %arrayidx70 = getelementptr inbounds [10 x i32], [10 x i32]* %G, i64 %idxprom69
  %idxprom71 = sext i32 %j.22 to i64
  %arrayidx72 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx70, i64 0, i64 %idxprom71
  store i32 0, i32* %arrayidx72, align 4
  br label %for.body75

for.body75:                                       ; preds = %for.body75, %for.body68
  %k.21 = phi i32 [ 0, %for.body68 ], [ %inc91, %for.body75 ]
  %idxprom76 = sext i32 %i.23 to i64
  %arrayidx77 = getelementptr inbounds [10 x i32], [10 x i32]* %E, i64 %idxprom76
  %idxprom78 = sext i32 %k.21 to i64
  %arrayidx79 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx77, i64 0, i64 %idxprom78
  %6 = load i32, i32* %arrayidx79, align 4
  %idxprom80 = sext i32 %k.21 to i64
  %arrayidx81 = getelementptr inbounds [10 x i32], [10 x i32]* %F, i64 %idxprom80
  %idxprom82 = sext i32 %j.22 to i64
  %arrayidx83 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx81, i64 0, i64 %idxprom82
  %7 = load i32, i32* %arrayidx83, align 4
  %mul84 = mul nsw i32 %6, %7
  %idxprom85 = sext i32 %i.23 to i64
  %arrayidx86 = getelementptr inbounds [10 x i32], [10 x i32]* %G, i64 %idxprom85
  %idxprom87 = sext i32 %j.22 to i64
  %arrayidx88 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx86, i64 0, i64 %idxprom87
  %8 = load i32, i32* %arrayidx88, align 4
  %add89 = add nsw i32 %8, %mul84
  store i32 %add89, i32* %arrayidx88, align 4
  %inc91 = add nsw i32 %k.21, 1
  %cmp74 = icmp slt i32 %inc91, 10
  br i1 %cmp74, label %for.body75, label %for.inc93

for.inc93:                                        ; preds = %for.body75
  %inc94 = add nsw i32 %j.22, 1
  %cmp67 = icmp slt i32 %inc94, 10
  br i1 %cmp67, label %for.body68, label %for.inc96

for.inc96:                                        ; preds = %for.inc93
  %inc97 = add nsw i32 %i.23, 1
  %cmp64 = icmp slt i32 %inc97, 10
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
  call void @srand(i32 0) #3
  br label %for.body

for.body:                                         ; preds = %for.inc62, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc63, %for.inc62 ]
  br label %for.body3

for.body3:                                        ; preds = %for.inc59, %for.body
  %y.02 = phi i32 [ 0, %for.body ], [ %inc60, %for.inc59 ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body3
  %x.01 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body6 ]
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 10
  %idxprom = sext i32 %i.03 to i64
  %arrayidx = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %A, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %y.02 to i64
  %arrayidx8 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx, i64 0, i64 %idxprom7
  %idxprom9 = sext i32 %x.01 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx8, i64 0, i64 %idxprom9
  store i32 %rem, i32* %arrayidx10, align 4
  %call11 = call i32 @rand() #3
  %rem12 = srem i32 %call11, 10
  %idxprom13 = sext i32 %i.03 to i64
  %arrayidx14 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %B, i64 0, i64 %idxprom13
  %idxprom15 = sext i32 %y.02 to i64
  %arrayidx16 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx14, i64 0, i64 %idxprom15
  %idxprom17 = sext i32 %x.01 to i64
  %arrayidx18 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx16, i64 0, i64 %idxprom17
  store i32 %rem12, i32* %arrayidx18, align 4
  %call19 = call i32 @rand() #3
  %rem20 = srem i32 %call19, 10
  %idxprom21 = sext i32 %i.03 to i64
  %arrayidx22 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %C, i64 0, i64 %idxprom21
  %idxprom23 = sext i32 %y.02 to i64
  %arrayidx24 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx22, i64 0, i64 %idxprom23
  %idxprom25 = sext i32 %x.01 to i64
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx24, i64 0, i64 %idxprom25
  store i32 %rem20, i32* %arrayidx26, align 4
  %call27 = call i32 @rand() #3
  %rem28 = srem i32 %call27, 10
  %idxprom29 = sext i32 %i.03 to i64
  %arrayidx30 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %D, i64 0, i64 %idxprom29
  %idxprom31 = sext i32 %y.02 to i64
  %arrayidx32 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx30, i64 0, i64 %idxprom31
  %idxprom33 = sext i32 %x.01 to i64
  %arrayidx34 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx32, i64 0, i64 %idxprom33
  store i32 %rem28, i32* %arrayidx34, align 4
  %call35 = call i32 @rand() #3
  %rem36 = srem i32 %call35, 10
  %idxprom37 = sext i32 %i.03 to i64
  %arrayidx38 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %E, i64 0, i64 %idxprom37
  %idxprom39 = sext i32 %y.02 to i64
  %arrayidx40 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx38, i64 0, i64 %idxprom39
  %idxprom41 = sext i32 %x.01 to i64
  %arrayidx42 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx40, i64 0, i64 %idxprom41
  store i32 %rem36, i32* %arrayidx42, align 4
  %call43 = call i32 @rand() #3
  %rem44 = srem i32 %call43, 10
  %idxprom45 = sext i32 %i.03 to i64
  %arrayidx46 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %F, i64 0, i64 %idxprom45
  %idxprom47 = sext i32 %y.02 to i64
  %arrayidx48 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx46, i64 0, i64 %idxprom47
  %idxprom49 = sext i32 %x.01 to i64
  %arrayidx50 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx48, i64 0, i64 %idxprom49
  store i32 %rem44, i32* %arrayidx50, align 4
  %call51 = call i32 @rand() #3
  %rem52 = srem i32 %call51, 10
  %idxprom53 = sext i32 %i.03 to i64
  %arrayidx54 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %G, i64 0, i64 %idxprom53
  %idxprom55 = sext i32 %y.02 to i64
  %arrayidx56 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx54, i64 0, i64 %idxprom55
  %idxprom57 = sext i32 %x.01 to i64
  %arrayidx58 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx56, i64 0, i64 %idxprom57
  store i32 %rem52, i32* %arrayidx58, align 4
  %inc = add nsw i32 %x.01, 1
  %cmp5 = icmp slt i32 %inc, 10
  br i1 %cmp5, label %for.body6, label %for.inc59

for.inc59:                                        ; preds = %for.body6
  %inc60 = add nsw i32 %y.02, 1
  %cmp2 = icmp slt i32 %inc60, 10
  br i1 %cmp2, label %for.body3, label %for.inc62

for.inc62:                                        ; preds = %for.inc59
  %inc63 = add nsw i32 %i.03, 1
  %cmp = icmp slt i32 %inc63, 1
  br i1 %cmp, label %for.body, label %for.end64

for.end64:                                        ; preds = %for.inc62
  %arrayidx65 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %A, i64 0, i64 0
  %arraydecay = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx65, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %B, i64 0, i64 0
  %arraydecay67 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx66, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %C, i64 0, i64 0
  %arraydecay69 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx68, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %D, i64 0, i64 0
  %arraydecay71 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx70, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %E, i64 0, i64 0
  %arraydecay73 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx72, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %F, i64 0, i64 0
  %arraydecay75 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx74, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %G, i64 0, i64 0
  %arraydecay77 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx76, i32 0, i32 0
  call void @_Z10kernel_3mmPA10_iS0_S0_S0_S0_S0_S0_([10 x i32]* %arraydecay, [10 x i32]* %arraydecay67, [10 x i32]* %arraydecay69, [10 x i32]* %arraydecay71, [10 x i32]* %arraydecay73, [10 x i32]* %arraydecay75, [10 x i32]* %arraydecay77)
  ret i32 0
}

; Function Attrs: nounwind
declare void @srand(i32) #2

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
