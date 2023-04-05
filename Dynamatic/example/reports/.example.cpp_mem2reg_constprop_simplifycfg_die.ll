; ModuleID = '.example.cpp_mem2reg_constprop_simplifycfg.ll'
source_filename = "src/example.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define float @_Z7examplePfS_(float* %A, float* %B) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %s.01 = phi float [ 0.000000e+00, %entry ], [ %s.1, %for.body ]
  %0 = zext i32 %i.02 to i64
  %arrayidx = getelementptr inbounds float, float* %A, i64 %0
  %1 = load float, float* %arrayidx, align 4
  %2 = zext i32 %i.02 to i64
  %arrayidx2 = getelementptr inbounds float, float* %B, i64 %2
  %3 = load float, float* %arrayidx2, align 4
  %sub = fsub float %1, %3
  %cmp3 = fcmp oge float %sub, 0.000000e+00
  %add = fadd float %s.01, %sub
  %s.1 = select i1 %cmp3, float %add, float %s.01
  %inc = add nuw nsw i32 %i.02, 1
  %cmp = icmp ult i32 %inc, 100
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  ret float %s.1
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %A = alloca [1 x [100 x float]], align 16
  %B = alloca [1 x [100 x float]], align 16
  call void @srand(i32 15) #3
  br label %for.body

for.body:                                         ; preds = %for.inc15, %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %i.02 = phi i32 [ 0, %for.body ], [ %inc, %for.body3 ]
  %call = call i32 @rand() #3
  %conv = sitofp i32 %call to float
  %div4 = fdiv float %conv, 0x41B99999A0000000
  %0 = zext i32 %i.02 to i64
  %1 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %A, i64 0, i64 0, i64 %0
  store float %div4, float* %1, align 4
  %call7 = call i32 @rand() #3
  %conv8 = sitofp i32 %call7 to float
  %div10 = fdiv float %conv8, 0x41B99999A0000000
  %2 = zext i32 %i.02 to i64
  %3 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %B, i64 0, i64 0, i64 %2
  store float %div10, float* %3, align 4
  %inc = add nuw nsw i32 %i.02, 1
  %cmp2 = icmp ult i32 %inc, 100
  br i1 %cmp2, label %for.body3, label %for.inc15

for.inc15:                                        ; preds = %for.body3
  br i1 false, label %for.body, label %for.end17

for.end17:                                        ; preds = %for.inc15
  br label %for.body21

for.body21:                                       ; preds = %for.body21, %for.end17
  %i18.01 = phi i32 [ 0, %for.end17 ], [ %inc29, %for.body21 ]
  %4 = zext i32 %i18.01 to i64
  %arraydecay = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %A, i64 0, i64 %4, i64 0
  %5 = zext i32 %i18.01 to i64
  %arraydecay26 = getelementptr inbounds [1 x [100 x float]], [1 x [100 x float]]* %B, i64 0, i64 %5, i64 0
  %call27 = call float @_Z7examplePfS_(float* nonnull %arraydecay, float* nonnull %arraydecay26)
  %inc29 = add nuw nsw i32 %i18.01, 1
  br i1 false, label %for.body21, label %for.end30

for.end30:                                        ; preds = %for.body21
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
