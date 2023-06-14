; ModuleID = '.if_loop_2.cpp_mem2reg.ll'
source_filename = "src/if_loop_2.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @_Z9if_loop_2Pii(i32* %a, i32 %n) #0 {
entry:
  %cmp2 = icmp slt i32 0, %n
  br i1 %cmp2, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %sum.04 = phi i32 [ 0, %for.body.lr.ph ], [ %sum.1, %for.inc ]
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %idxprom = sext i32 %i.03 to i64
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %0, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %0, %sum.04
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %sum.1 = phi i32 [ %add, %if.then ], [ %sum.04, %for.body ]
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.03, 1
  %cmp = icmp slt i32 %inc, %n
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  %split = phi i32 [ %sum.1, %for.inc ]
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %sum.0.lcssa = phi i32 [ %split, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  ret i32 %sum.0.lcssa
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %a = alloca [1 x [100 x i32]], align 16
  %n = alloca [1 x i32], align 4
  call void @srand(i32 13) #3
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc14
  %i.02 = phi i32 [ 0, %entry ], [ %inc15, %for.inc14 ]
  %idxprom = sext i32 %i.02 to i64
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %n, i64 0, i64 %idxprom
  store i32 100, i32* %arrayidx, align 4
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.inc
  %j.01 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %rem = srem i32 %j.01, 2
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %call = call i32 @rand() #3
  %rem5 = srem i32 %call, 100
  %add = add nsw i32 %rem5, 11
  %idxprom6 = sext i32 %i.02 to i64
  %arrayidx7 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom6
  %idxprom8 = sext i32 %j.01 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  store i32 %add, i32* %arrayidx9, align 4
  br label %if.end

if.else:                                          ; preds = %for.body3
  %idxprom10 = sext i32 %i.02 to i64
  %arrayidx11 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom10
  %idxprom12 = sext i32 %j.01 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx11, i64 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.01, 1
  %cmp2 = icmp slt i32 %inc, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.end:                                          ; preds = %for.inc
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %i.02, 1
  %cmp = icmp slt i32 %inc15, 1
  br i1 %cmp, label %for.body, label %for.end16

for.end16:                                        ; preds = %for.inc14
  %arrayidx19 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 0
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx19, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [1 x i32], [1 x i32]* %n, i64 0, i64 0
  %0 = load i32, i32* %arrayidx21, align 4
  %call22 = call i32 @_Z9if_loop_2Pii(i32* %arraydecay, i32 %0)
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
