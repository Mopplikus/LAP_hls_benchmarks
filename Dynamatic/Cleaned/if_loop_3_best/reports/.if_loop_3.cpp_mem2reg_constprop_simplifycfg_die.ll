; ModuleID = '.if_loop_3.cpp_mem2reg_constprop_simplifycfg.ll'
source_filename = "src/if_loop_3.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @_Z9if_loop_3PiS_iS_(i32* %a, i32* %b, i32 %n, i32* %sum) #0 {
entry:
  %cmp1 = icmp sgt i32 %n, 0
  br i1 %cmp1, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %sum_local.03 = phi i32 [ 1000, %for.body.lr.ph ], [ %sum_local.1, %for.inc ]
  %i.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %0 = zext i32 %i.02 to i64
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = zext i32 %i.02 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %b, i64 %2
  %3 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 %1, %3
  %cmp3 = icmp sgt i32 %sub, -1
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %div = sdiv i32 %sum_local.03, %sub
  %4 = zext i32 %i.02 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %sum, i64 %4
  store i32 %div, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %sum_local.1 = phi i32 [ %div, %if.then ], [ %sum_local.03, %for.body ]
  %inc = add nuw nsw i32 %i.02, 1
  %cmp = icmp slt i32 %inc, %n
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %sum_local.0.lcssa = phi i32 [ 1000, %entry ], [ %sum_local.1, %for.inc ]
  ret i32 %sum_local.0.lcssa
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %a = alloca [1 x [100 x i32]], align 16
  %b = alloca [1 x [100 x i32]], align 16
  %n = alloca [1 x i32], align 4
  %sum = alloca [1 x [100 x i32]], align 16
  call void @srand(i32 13) #3
  br label %for.body

for.body:                                         ; preds = %for.inc13, %entry
  %0 = getelementptr inbounds [1 x i32], [1 x i32]* %n, i64 0, i64 0
  store i32 100, i32* %0, align 4
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %j.01 = phi i32 [ 0, %for.body ], [ %inc, %for.body3 ]
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 10
  %add = add nsw i32 %rem, 5
  %1 = zext i32 %j.01 to i64
  %2 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 0, i64 %1
  store i32 %add, i32* %2, align 4
  %add8 = add nsw i32 %rem, 6
  %3 = zext i32 %j.01 to i64
  %4 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %b, i64 0, i64 0, i64 %3
  store i32 %add8, i32* %4, align 4
  %inc = add nuw nsw i32 %j.01, 1
  %cmp2 = icmp ult i32 %inc, 100
  br i1 %cmp2, label %for.body3, label %for.inc13

for.inc13:                                        ; preds = %for.body3
  br i1 false, label %for.body, label %for.end15

for.end15:                                        ; preds = %for.inc13
  %arraydecay = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %b, i64 0, i64 0, i64 0
  %arrayidx23 = getelementptr inbounds [1 x i32], [1 x i32]* %n, i64 0, i64 0
  %5 = load i32, i32* %arrayidx23, align 4
  %arraydecay26 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %sum, i64 0, i64 0, i64 0
  %call27 = call i32 @_Z9if_loop_3PiS_iS_(i32* nonnull %arraydecay, i32* nonnull %arraydecay21, i32 %5, i32* nonnull %arraydecay26)
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
