; ModuleID = 'src/example.cpp'
source_filename = "src/example.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define float @_Z7examplePfS_f(float* %A, float* %B, float %out) #0 {
entry:
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %out.addr = alloca float, align 4
  %d = alloca float, align 4
  %s = alloca float, align 4
  %i = alloca i32, align 4
  store float* %A, float** %A.addr, align 8
  store float* %B, float** %B.addr, align 8
  store float %out, float* %out.addr, align 4
  store float 0.000000e+00, float* %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float*, float** %A.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds float, float* %1, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %4 = load float*, float** %B.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds float, float* %4, i64 %idxprom1
  %6 = load float, float* %arrayidx2, align 4
  %sub = fsub float %3, %6
  store float %sub, float* %d, align 4
  %7 = load float, float* %d, align 4
  %cmp3 = fcmp oge float %7, 0.000000e+00
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load float, float* %d, align 4
  %9 = load float, float* %s, align 4
  %add = fadd float %9, %8
  store float %add, float* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load float, float* %s, align 4
  store float %11, float* %out.addr, align 4
  %12 = load i32, i32* %i, align 4
  %conv = sitofp i32 %12 to float
  ret float %conv
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %A = alloca [1 x [100 x float]], align 16
  %B = alloca [1 x [100 x float]], align 16
  %out = alloca float, align 4
  %a = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %i18 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 5, i32* %a, align 4
  call void @srand(i32 15) #3
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand() #3
  %2 = load i32, i32* %a, align 4
  %div = sdiv i32 2147483647, %2
  %div4 = sdiv i32 %call, %div
  %conv = sitofp i32 %div4 to float
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %A, i64 0, i64 %idxprom
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx, i64 0, i64 %idxprom5
  store float %conv, float* %arrayidx6, align 4
  %call7 = call i32 @rand() #3
  %5 = load i32, i32* %a, align 4
  %div8 = sdiv i32 2147483647, %5
  %div9 = sdiv i32 %call7, %div8
  %conv10 = sitofp i32 %div9 to float
  %6 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %6 to i64
  %arrayidx12 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %B, i64 0, i64 %idxprom11
  %7 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx12, i64 0, i64 %idxprom13
  store float %conv10, float* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %9 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %9, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond

for.end17:                                        ; preds = %for.cond
  store i32 0, i32* %i18, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc28, %for.end17
  %10 = load i32, i32* %i18, align 4
  %cmp20 = icmp slt i32 %10, 1
  br i1 %cmp20, label %for.body21, label %for.end30

for.body21:                                       ; preds = %for.cond19
  %11 = load i32, i32* %i18, align 4
  %idxprom22 = sext i32 %11 to i64
  %arrayidx23 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %A, i64 0, i64 %idxprom22
  %arraydecay = getelementptr inbounds [100 x float], [100 x float]* %arrayidx23, i32 0, i32 0
  %12 = load i32, i32* %i18, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %B, i64 0, i64 %idxprom24
  %arraydecay26 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx25, i32 0, i32 0
  %13 = load float, float* %out, align 4
  %call27 = call float @_Z7examplePfS_f(float* %arraydecay, float* %arraydecay26, float %13)
  br label %for.inc28

for.inc28:                                        ; preds = %for.body21
  %14 = load i32, i32* %i18, align 4
  %inc29 = add nsw i32 %14, 1
  store i32 %inc29, i32* %i18, align 4
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
