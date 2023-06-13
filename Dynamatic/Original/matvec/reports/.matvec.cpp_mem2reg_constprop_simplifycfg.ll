; ModuleID = '.matvec.cpp_mem2reg_constprop.ll'
source_filename = "src/matvec.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @_Z6matvecPA30_iPiS1_([30 x i32]* %M, i32* %V, i32* %Out) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.end, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc11, %for.end ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %tmp.12 = phi i32 [ 0, %for.body ], [ %add, %for.body3 ]
  %j.01 = phi i32 [ 0, %for.body ], [ %inc, %for.body3 ]
  %idxprom = sext i32 %j.01 to i64
  %arrayidx = getelementptr inbounds i32, i32* %V, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %idxprom4 = sext i32 %i.03 to i64
  %arrayidx5 = getelementptr inbounds [30 x i32], [30 x i32]* %M, i64 %idxprom4
  %idxprom6 = sext i32 %j.01 to i64
  %arrayidx7 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx5, i64 0, i64 %idxprom6
  %1 = load i32, i32* %arrayidx7, align 4
  %mul = mul nsw i32 %0, %1
  %add = add nsw i32 %tmp.12, %mul
  %inc = add nsw i32 %j.01, 1
  %cmp2 = icmp slt i32 %inc, 30
  br i1 %cmp2, label %for.body3, label %for.end

for.end:                                          ; preds = %for.body3
  %tmp.1.lcssa = phi i32 [ %add, %for.body3 ]
  %idxprom8 = sext i32 %i.03 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %Out, i64 %idxprom8
  store i32 %tmp.1.lcssa, i32* %arrayidx9, align 4
  %inc11 = add nsw i32 %i.03, 1
  %cmp = icmp slt i32 %inc11, 30
  br i1 %cmp, label %for.body, label %for.end12

for.end12:                                        ; preds = %for.end
  %tmp.0.lcssa = phi i32 [ %tmp.1.lcssa, %for.end ]
  ret i32 %tmp.0.lcssa
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %M = alloca [1 x [30 x [30 x i32]]], align 16
  %V = alloca [1 x [30 x i32]], align 16
  %Out = alloca [1 x [30 x i32]], align 16
  br label %for.body

for.body:                                         ; preds = %for.inc20, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ]
  br label %for.body3

for.body3:                                        ; preds = %for.inc17, %for.body
  %y.02 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ]
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 100
  %idxprom = sext i32 %i.03 to i64
  %arrayidx = getelementptr inbounds [1 x [30 x i32]], [1 x [30 x i32]]* %V, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %y.02 to i64
  %arrayidx5 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 %rem, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body3
  %x.01 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body8 ]
  %call9 = call i32 @rand() #3
  %rem10 = srem i32 %call9, 100
  %idxprom11 = sext i32 %i.03 to i64
  %arrayidx12 = getelementptr inbounds [1 x [30 x [30 x i32]]], [1 x [30 x [30 x i32]]]* %M, i64 0, i64 %idxprom11
  %idxprom13 = sext i32 %y.02 to i64
  %arrayidx14 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %arrayidx12, i64 0, i64 %idxprom13
  %idxprom15 = sext i32 %x.01 to i64
  %arrayidx16 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx14, i64 0, i64 %idxprom15
  store i32 %rem10, i32* %arrayidx16, align 4
  %inc = add nsw i32 %x.01, 1
  %cmp7 = icmp slt i32 %inc, 30
  br i1 %cmp7, label %for.body8, label %for.inc17

for.inc17:                                        ; preds = %for.body8
  %inc18 = add nsw i32 %y.02, 1
  %cmp2 = icmp slt i32 %inc18, 30
  br i1 %cmp2, label %for.body3, label %for.inc20

for.inc20:                                        ; preds = %for.inc17
  %inc21 = add nsw i32 %i.03, 1
  %cmp = icmp slt i32 %inc21, 1
  br i1 %cmp, label %for.body, label %for.end22

for.end22:                                        ; preds = %for.inc20
  %arrayidx25 = getelementptr inbounds [1 x [30 x [30 x i32]]], [1 x [30 x [30 x i32]]]* %M, i64 0, i64 0
  %arraydecay = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %arrayidx25, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [1 x [30 x i32]], [1 x [30 x i32]]* %V, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx27, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [1 x [30 x i32]], [1 x [30 x i32]]* %Out, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx30, i32 0, i32 0
  %call32 = call i32 @_Z6matvecPA30_iPiS1_([30 x i32]* %arraydecay, i32* %arraydecay28, i32* %arraydecay31)
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
