; ModuleID = '.if_loop_3.cpp_mem2reg_constprop.ll'
source_filename = "src/if_loop_3.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @_Z9if_loop_3PiS_i(i32* %a, i32* %b, i32 %n) #0 {
entry:
  %cmp1 = icmp slt i32 0, %n
  br i1 %cmp1, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %sum.03 = phi i32 [ 1000, %for.body.lr.ph ], [ %sum.1, %for.inc ]
  %i.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %idxprom = sext i32 %i.02 to i64
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %i.02 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %b, i64 %idxprom1
  %1 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 %0, %1
  %cmp3 = icmp sge i32 %sub, 0
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %div = sdiv i32 %sum.03, %sub
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %sum.1 = phi i32 [ %div, %if.then ], [ %sum.03, %for.body ]
  %inc = add nsw i32 %i.02, 1
  %cmp = icmp slt i32 %inc, %n
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %sum.0.lcssa = phi i32 [ 1000, %entry ], [ %sum.1, %for.inc ]
  ret i32 %sum.0.lcssa
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %a = alloca [1 x [100 x i32]], align 16
  %b = alloca [1 x [100 x i32]], align 16
  %n = alloca [1 x i32], align 4
  call void @srand(i32 13) #3
  br label %for.body

for.body:                                         ; preds = %for.inc33, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc34, %for.inc33 ]
  %idxprom = sext i32 %i.02 to i64
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %n, i64 0, i64 %idxprom
  store i32 100, i32* %arrayidx, align 4
  br label %for.body3

for.body3:                                        ; preds = %for.inc, %for.body
  %j.01 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %rem = srem i32 %j.01, 2
  %cmp4 = icmp eq i32 %rem, 0
  %call = call i32 @rand() #3
  %rem5 = srem i32 %call, 10
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %add = add nsw i32 %rem5, 2
  %idxprom6 = sext i32 %i.02 to i64
  %arrayidx7 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom6
  %idxprom8 = sext i32 %j.01 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  store i32 %add, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %i.02 to i64
  %arrayidx11 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom10
  %idxprom12 = sext i32 %j.01 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx11, i64 0, i64 %idxprom12
  %0 = load i32, i32* %arrayidx13, align 4
  %sub = sub nsw i32 %0, 2
  %idxprom14 = sext i32 %i.02 to i64
  %arrayidx15 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %b, i64 0, i64 %idxprom14
  %idxprom16 = sext i32 %j.01 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx15, i64 0, i64 %idxprom16
  store i32 %sub, i32* %arrayidx17, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body3
  %idxprom20 = sext i32 %i.02 to i64
  %arrayidx21 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom20
  %idxprom22 = sext i32 %j.01 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx21, i64 0, i64 %idxprom22
  store i32 %rem5, i32* %arrayidx23, align 4
  %idxprom24 = sext i32 %i.02 to i64
  %arrayidx25 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom24
  %idxprom26 = sext i32 %j.01 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx25, i64 0, i64 %idxprom26
  %1 = load i32, i32* %arrayidx27, align 4
  %add28 = add nsw i32 %1, 1
  %idxprom29 = sext i32 %i.02 to i64
  %arrayidx30 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %b, i64 0, i64 %idxprom29
  %idxprom31 = sext i32 %j.01 to i64
  %arrayidx32 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx30, i64 0, i64 %idxprom31
  store i32 %add28, i32* %arrayidx32, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %inc = add nsw i32 %j.01, 1
  %cmp2 = icmp slt i32 %inc, 100
  br i1 %cmp2, label %for.body3, label %for.inc33

for.inc33:                                        ; preds = %for.inc
  %inc34 = add nsw i32 %i.02, 1
  %cmp = icmp slt i32 %inc34, 1
  br i1 %cmp, label %for.body, label %for.end35

for.end35:                                        ; preds = %for.inc33
  %arrayidx38 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 0
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx38, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %b, i64 0, i64 0
  %arraydecay41 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx40, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [1 x i32], [1 x i32]* %n, i64 0, i64 0
  %2 = load i32, i32* %arrayidx43, align 4
  %call44 = call i32 @_Z9if_loop_3PiS_i(i32* %arraydecay, i32* %arraydecay41, i32 %2)
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
