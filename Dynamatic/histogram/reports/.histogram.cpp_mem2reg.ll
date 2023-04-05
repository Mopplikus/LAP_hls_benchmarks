; ModuleID = '.histogram.cpp.ll'
source_filename = "src/histogram.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @_Z9histogramPiPfS0_i(i32* %feature, float* %weight, float* %hist, i32 %n) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %feature, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds float, float* %weight, i64 %idxprom1
  %1 = load float, float* %arrayidx2, align 4
  %idxprom3 = sext i32 %0 to i64
  %arrayidx4 = getelementptr inbounds float, float* %hist, i64 %idxprom3
  %2 = load float, float* %arrayidx4, align 4
  %add = fadd float %2, %1
  %idxprom5 = sext i32 %0 to i64
  %arrayidx6 = getelementptr inbounds float, float* %hist, i64 %idxprom5
  store float %add, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %feature = alloca [1 x [100 x i32]], align 16
  %weight = alloca [1 x [100 x float]], align 16
  %hist = alloca [1 x [100 x float]], align 16
  call void @srand(i32 15) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ]
  %cmp = icmp slt i32 %i.0, 1
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %indx.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %indx.0, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 101
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %feature, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %indx.0 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 %rem, i32* %arrayidx5, align 4
  %call6 = call i32 @rand() #3
  %conv = sitofp i32 %call6 to float
  %div = fdiv float 0x41E0000000000000, 1.000000e+01
  %div7 = fdiv float %conv, %div
  %idxprom8 = sext i32 %i.0 to i64
  %arrayidx9 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %weight, i64 0, i64 %idxprom8
  %idxprom10 = sext i32 %indx.0 to i64
  %arrayidx11 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx9, i64 0, i64 %idxprom10
  store float %div7, float* %arrayidx11, align 4
  %call12 = call i32 @rand() #3
  %conv13 = sitofp i32 %call12 to float
  %div14 = fdiv float 0x41E0000000000000, 1.000000e+01
  %div15 = fdiv float %conv13, %div14
  %idxprom16 = sext i32 %i.0 to i64
  %arrayidx17 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %hist, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %indx.0 to i64
  %arrayidx19 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx17, i64 0, i64 %idxprom18
  store float %div15, float* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %indx.0, 1
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.0, 1
  br label %for.cond

for.end22:                                        ; preds = %for.cond
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc35, %for.end22
  %i23.0 = phi i32 [ 0, %for.end22 ], [ %inc36, %for.inc35 ]
  %cmp25 = icmp slt i32 %i23.0, 1
  br i1 %cmp25, label %for.body26, label %for.end37

for.body26:                                       ; preds = %for.cond24
  %idxprom27 = sext i32 %i23.0 to i64
  %arrayidx28 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %feature, i64 0, i64 %idxprom27
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx28, i32 0, i32 0
  %idxprom29 = sext i32 %i23.0 to i64
  %arrayidx30 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %weight, i64 0, i64 %idxprom29
  %arraydecay31 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx30, i32 0, i32 0
  %idxprom32 = sext i32 %i23.0 to i64
  %arrayidx33 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %hist, i64 0, i64 %idxprom32
  %arraydecay34 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx33, i32 0, i32 0
  call void @_Z9histogramPiPfS0_i(i32* %arraydecay, float* %arraydecay31, float* %arraydecay34, i32 100)
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %inc36 = add nsw i32 %i23.0, 1
  br label %for.cond24

for.end37:                                        ; preds = %for.cond24
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
