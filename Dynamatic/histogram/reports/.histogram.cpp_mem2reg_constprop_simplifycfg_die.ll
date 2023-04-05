; ModuleID = '.histogram.cpp_mem2reg_constprop_simplifycfg.ll'
source_filename = "src/histogram.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @_Z9histogramPiPfS0_i(i32* %feature, float* %weight, float* %hist, i32 %n) #0 {
entry:
  %cmp1 = icmp sgt i32 %n, 0
  br i1 %cmp1, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %i.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %0 = zext i32 %i.02 to i64
  %arrayidx = getelementptr inbounds i32, i32* %feature, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = zext i32 %i.02 to i64
  %arrayidx2 = getelementptr inbounds float, float* %weight, i64 %2
  %3 = load float, float* %arrayidx2, align 4
  %idxprom3 = sext i32 %1 to i64
  %arrayidx4 = getelementptr inbounds float, float* %hist, i64 %idxprom3
  %4 = load float, float* %arrayidx4, align 4
  %add = fadd float %4, %3
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds float, float* %hist, i64 %idxprom5
  store float %add, float* %arrayidx6, align 4
  %inc = add nuw nsw i32 %i.02, 1
  %cmp = icmp slt i32 %inc, %n
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %feature = alloca [1 x [100 x i32]], align 16
  %weight = alloca [1 x [100 x float]], align 16
  %hist = alloca [1 x [100 x float]], align 16
  call void @srand(i32 15) #3
  br label %for.body

for.body:                                         ; preds = %for.inc20, %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %indx.02 = phi i32 [ 0, %for.body ], [ %inc, %for.body3 ]
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 101
  %0 = zext i32 %indx.02 to i64
  %1 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %feature, i64 0, i64 0, i64 %0
  store i32 %rem, i32* %1, align 4
  %call6 = call i32 @rand() #3
  %conv = sitofp i32 %call6 to float
  %div7 = fdiv float %conv, 0x41A99999A0000000
  %2 = zext i32 %indx.02 to i64
  %3 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %weight, i64 0, i64 0, i64 %2
  store float %div7, float* %3, align 4
  %call12 = call i32 @rand() #3
  %conv13 = sitofp i32 %call12 to float
  %div15 = fdiv float %conv13, 0x41A99999A0000000
  %4 = zext i32 %indx.02 to i64
  %5 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %hist, i64 0, i64 0, i64 %4
  store float %div15, float* %5, align 4
  %inc = add nuw nsw i32 %indx.02, 1
  %cmp2 = icmp ult i32 %inc, 100
  br i1 %cmp2, label %for.body3, label %for.inc20

for.inc20:                                        ; preds = %for.body3
  br i1 false, label %for.body, label %for.end22

for.end22:                                        ; preds = %for.inc20
  br label %for.body26

for.body26:                                       ; preds = %for.body26, %for.end22
  %i23.01 = phi i32 [ 0, %for.end22 ], [ %inc36, %for.body26 ]
  %6 = zext i32 %i23.01 to i64
  %arraydecay = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %feature, i64 0, i64 %6, i64 0
  %7 = zext i32 %i23.01 to i64
  %arraydecay31 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %weight, i64 0, i64 %7, i64 0
  %8 = zext i32 %i23.01 to i64
  %arraydecay34 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %hist, i64 0, i64 %8, i64 0
  call void @_Z9histogramPiPfS0_i(i32* nonnull %arraydecay, float* nonnull %arraydecay31, float* nonnull %arraydecay34, i32 100)
  %inc36 = add nuw nsw i32 %i23.01, 1
  br i1 false, label %for.body26, label %for.end37

for.end37:                                        ; preds = %for.body26
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
