; ModuleID = '.bicg.cpp_mem2reg.ll'
source_filename = "src/bicg.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @_Z4bicgPA30_iPiS1_S1_S1_([30 x i32]* %A, i32* %s, i32* %q, i32* %p, i32* %r) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc20
  %i.03 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ]
  %idxprom = sext i32 %i.03 to i64
  %arrayidx = getelementptr inbounds i32, i32* %q, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.inc
  %tmp_q.12 = phi i32 [ %0, %for.body ], [ %add17, %for.inc ]
  %j.01 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %idxprom4 = sext i32 %i.03 to i64
  %arrayidx5 = getelementptr inbounds [30 x i32], [30 x i32]* %A, i64 %idxprom4
  %idxprom6 = sext i32 %j.01 to i64
  %arrayidx7 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx5, i64 0, i64 %idxprom6
  %1 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %j.01 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %s, i64 %idxprom8
  %2 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %i.03 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %r, i64 %idxprom10
  %3 = load i32, i32* %arrayidx11, align 4
  %mul = mul nsw i32 %3, %1
  %add = add nsw i32 %2, %mul
  %idxprom12 = sext i32 %j.01 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %s, i64 %idxprom12
  store i32 %add, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %j.01 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %p, i64 %idxprom14
  %4 = load i32, i32* %arrayidx15, align 4
  %mul16 = mul nsw i32 %1, %4
  %add17 = add nsw i32 %tmp_q.12, %mul16
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.01, 1
  %cmp2 = icmp slt i32 %inc, 30
  br i1 %cmp2, label %for.body3, label %for.end

for.end:                                          ; preds = %for.inc
  %tmp_q.1.lcssa = phi i32 [ %add17, %for.inc ]
  %idxprom18 = sext i32 %i.03 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %q, i64 %idxprom18
  store i32 %tmp_q.1.lcssa, i32* %arrayidx19, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.03, 1
  %cmp = icmp slt i32 %inc21, 30
  br i1 %cmp, label %for.body, label %for.end22

for.end22:                                        ; preds = %for.inc20
  %tmp_q.0.lcssa = phi i32 [ %tmp_q.1.lcssa, %for.inc20 ]
  ret i32 %tmp_q.0.lcssa
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %A = alloca [1 x [30 x [30 x i32]]], align 16
  %s = alloca [1 x [30 x i32]], align 16
  %q = alloca [1 x [30 x i32]], align 16
  %p = alloca [1 x [30 x i32]], align 16
  %r = alloca [1 x [30 x i32]], align 16
  call void @srand(i32 13) #3
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc38
  %i.03 = phi i32 [ 0, %entry ], [ %inc39, %for.inc38 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.inc35
  %y.02 = phi i32 [ 0, %for.body ], [ %inc36, %for.inc35 ]
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 100
  %idxprom = sext i32 %i.03 to i64
  %arrayidx = getelementptr inbounds [1 x [30 x i32]], [1 x [30 x i32]]* %s, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %y.02 to i64
  %arrayidx5 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 %rem, i32* %arrayidx5, align 4
  %call6 = call i32 @rand() #3
  %rem7 = srem i32 %call6, 100
  %idxprom8 = sext i32 %i.03 to i64
  %arrayidx9 = getelementptr inbounds [1 x [30 x i32]], [1 x [30 x i32]]* %q, i64 0, i64 %idxprom8
  %idxprom10 = sext i32 %y.02 to i64
  %arrayidx11 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx9, i64 0, i64 %idxprom10
  store i32 %rem7, i32* %arrayidx11, align 4
  %call12 = call i32 @rand() #3
  %rem13 = srem i32 %call12, 100
  %idxprom14 = sext i32 %i.03 to i64
  %arrayidx15 = getelementptr inbounds [1 x [30 x i32]], [1 x [30 x i32]]* %p, i64 0, i64 %idxprom14
  %idxprom16 = sext i32 %y.02 to i64
  %arrayidx17 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx15, i64 0, i64 %idxprom16
  store i32 %rem13, i32* %arrayidx17, align 4
  %call18 = call i32 @rand() #3
  %rem19 = srem i32 %call18, 100
  %idxprom20 = sext i32 %i.03 to i64
  %arrayidx21 = getelementptr inbounds [1 x [30 x i32]], [1 x [30 x i32]]* %r, i64 0, i64 %idxprom20
  %idxprom22 = sext i32 %y.02 to i64
  %arrayidx23 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx21, i64 0, i64 %idxprom22
  store i32 %rem19, i32* %arrayidx23, align 4
  br label %for.body26

for.body26:                                       ; preds = %for.body3, %for.inc
  %x.01 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %call27 = call i32 @rand() #3
  %rem28 = srem i32 %call27, 100
  %idxprom29 = sext i32 %i.03 to i64
  %arrayidx30 = getelementptr inbounds [1 x [30 x [30 x i32]]], [1 x [30 x [30 x i32]]]* %A, i64 0, i64 %idxprom29
  %idxprom31 = sext i32 %y.02 to i64
  %arrayidx32 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %arrayidx30, i64 0, i64 %idxprom31
  %idxprom33 = sext i32 %x.01 to i64
  %arrayidx34 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx32, i64 0, i64 %idxprom33
  store i32 %rem28, i32* %arrayidx34, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body26
  %inc = add nsw i32 %x.01, 1
  %cmp25 = icmp slt i32 %inc, 30
  br i1 %cmp25, label %for.body26, label %for.end

for.end:                                          ; preds = %for.inc
  br label %for.inc35

for.inc35:                                        ; preds = %for.end
  %inc36 = add nsw i32 %y.02, 1
  %cmp2 = icmp slt i32 %inc36, 30
  br i1 %cmp2, label %for.body3, label %for.end37

for.end37:                                        ; preds = %for.inc35
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %inc39 = add nsw i32 %i.03, 1
  %cmp = icmp slt i32 %inc39, 1
  br i1 %cmp, label %for.body, label %for.end40

for.end40:                                        ; preds = %for.inc38
  %arrayidx43 = getelementptr inbounds [1 x [30 x [30 x i32]]], [1 x [30 x [30 x i32]]]* %A, i64 0, i64 0
  %arraydecay = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %arrayidx43, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [1 x [30 x i32]], [1 x [30 x i32]]* %s, i64 0, i64 0
  %arraydecay46 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx45, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [1 x [30 x i32]], [1 x [30 x i32]]* %q, i64 0, i64 0
  %arraydecay49 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx48, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [1 x [30 x i32]], [1 x [30 x i32]]* %p, i64 0, i64 0
  %arraydecay52 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx51, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [1 x [30 x i32]], [1 x [30 x i32]]* %r, i64 0, i64 0
  %arraydecay55 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx54, i32 0, i32 0
  %call56 = call i32 @_Z4bicgPA30_iPiS1_S1_S1_([30 x i32]* %arraydecay, i32* %arraydecay46, i32* %arraydecay49, i32* %arraydecay52, i32* %arraydecay55)
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
