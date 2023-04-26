; ModuleID = '.example.cpp.ll'
source_filename = "src/example.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define float @_Z7examplePfS_f(float* %A, float* %B, float %out) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %s.0 = phi float [ 0.000000e+00, %entry ], [ %s.1, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds float, float* %A, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds float, float* %B, i64 %idxprom1
  %1 = load float, float* %arrayidx2, align 4
  %sub = fsub float %0, %1
  %cmp3 = fcmp oge float %sub, 0.000000e+00
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %add = fadd float %s.0, %sub
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %s.1 = phi float [ %add, %if.then ], [ %s.0, %for.body ]
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %conv = sitofp i32 %i.0 to float
  ret float %conv
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %A = alloca [1 x [100 x float]], align 16
  %B = alloca [1 x [100 x float]], align 16
  call void @srand(i32 15) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ]
  %cmp = icmp slt i32 %j.0, 1
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %i.0, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand() #3
  %div = sdiv i32 2147483647, 5
  %div4 = sdiv i32 %call, %div
  %conv = sitofp i32 %div4 to float
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %A, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %i.0 to i64
  %arrayidx6 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx, i64 0, i64 %idxprom5
  store float %conv, float* %arrayidx6, align 4
  %call7 = call i32 @rand() #3
  %div8 = sdiv i32 2147483647, 5
  %div9 = sdiv i32 %call7, %div8
  %conv10 = sitofp i32 %div9 to float
  %idxprom11 = sext i32 %j.0 to i64
  %arrayidx12 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %B, i64 0, i64 %idxprom11
  %idxprom13 = sext i32 %i.0 to i64
  %arrayidx14 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx12, i64 0, i64 %idxprom13
  store float %conv10, float* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %j.0, 1
  br label %for.cond

for.end17:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc28, %for.end17
  %i18.0 = phi i32 [ 0, %for.end17 ], [ %inc29, %for.inc28 ]
  %cmp20 = icmp slt i32 %i18.0, 1
  br i1 %cmp20, label %for.body21, label %for.end30

for.body21:                                       ; preds = %for.cond19
  %idxprom22 = sext i32 %i18.0 to i64
  %arrayidx23 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %A, i64 0, i64 %idxprom22
  %arraydecay = getelementptr inbounds [100 x float], [100 x float]* %arrayidx23, i32 0, i32 0
  %idxprom24 = sext i32 %i18.0 to i64
  %arrayidx25 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %B, i64 0, i64 %idxprom24
  %arraydecay26 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx25, i32 0, i32 0
  %call27 = call float @_Z7examplePfS_f(float* %arraydecay, float* %arraydecay26, float undef)
  br label %for.inc28

for.inc28:                                        ; preds = %for.body21
  %inc29 = add nsw i32 %i18.0, 1
  br label %for.cond19

for.end30:                                        ; preds = %for.cond19
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
