; ModuleID = '.if_loop_3.cpp.ll'
source_filename = "src/if_loop_3.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @_Z9if_loop_3PiS_i(i32* %a, i32* %b, i32 %n) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %sum.0 = phi i32 [ 1000, %entry ], [ %sum.1, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %b, i64 %idxprom1
  %1 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 %0, %1
  %cmp3 = icmp sge i32 %sub, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %div = sdiv i32 %sum.0, %sub
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %sum.1 = phi i32 [ %div, %if.then ], [ %sum.0, %for.body ]
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 %sum.0
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %a = alloca [1 x [100 x i32]], align 16
  %b = alloca [1 x [100 x i32]], align 16
  %n = alloca [1 x i32], align 4
  call void @srand(i32 13) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ]
  %cmp = icmp slt i32 %i.0, 1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %n, i64 0, i64 %idxprom
  store i32 100, i32* %arrayidx, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 10
  %add = add nsw i32 %rem, 5
  %idxprom4 = sext i32 %i.0 to i64
  %arrayidx5 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom4
  %idxprom6 = sext i32 %j.0 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx5, i64 0, i64 %idxprom6
  store i32 %add, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %add, 1
  %idxprom9 = sext i32 %i.0 to i64
  %arrayidx10 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %b, i64 0, i64 %idxprom9
  %idxprom11 = sext i32 %j.0 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx10, i64 0, i64 %idxprom11
  store i32 %add8, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1
  br label %for.cond

for.end15:                                        ; preds = %for.cond
  %idxprom17 = sext i32 0 to i64
  %arrayidx18 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom17
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx18, i32 0, i32 0
  %idxprom19 = sext i32 0 to i64
  %arrayidx20 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %b, i64 0, i64 %idxprom19
  %arraydecay21 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx20, i32 0, i32 0
  %idxprom22 = sext i32 0 to i64
  %arrayidx23 = getelementptr inbounds [1 x i32], [1 x i32]* %n, i64 0, i64 %idxprom22
  %0 = load i32, i32* %arrayidx23, align 4
  %call24 = call i32 @_Z9if_loop_3PiS_i(i32* %arraydecay, i32* %arraydecay21, i32 %0)
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
