; ModuleID = '.if_loop_3.cpp_mem2reg_constprop_simplifycfg.ll'
source_filename = "src/if_loop_3.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @_Z9if_loop_3PiS_i(i32* %a, i32* %b, i32 %n) #0 {
entry:
  %cmp1 = icmp sgt i32 %n, 0
  br i1 %cmp1, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %sum.03 = phi i32 [ 1000, %for.body.lr.ph ], [ %sum.1, %for.inc ]
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
  %div = sdiv i32 %sum.03, %sub
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %sum.1 = phi i32 [ %div, %if.then ], [ %sum.03, %for.body ]
  %inc = add nuw nsw i32 %i.02, 1
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

for.body:                                         ; preds = %for.inc16, %entry
  %0 = getelementptr inbounds [1 x i32], [1 x i32]* %n, i64 0, i64 0
  store i32 100, i32* %0, align 4
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %j.01 = phi i32 [ 0, %for.body ], [ %inc, %for.body3 ]
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 10
  %1 = zext i32 %j.01 to i64
  %2 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 0, i64 %1
  store i32 %rem, i32* %2, align 4
  %3 = zext i32 %j.01 to i64
  %4 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4
  %add = add nsw i32 %5, 1
  %6 = zext i32 %j.01 to i64
  %7 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %b, i64 0, i64 0, i64 %6
  store i32 %add, i32* %7, align 4
  %inc = add nuw nsw i32 %j.01, 1
  %cmp2 = icmp ult i32 %inc, 100
  br i1 %cmp2, label %for.body3, label %for.inc16

for.inc16:                                        ; preds = %for.body3
  br i1 false, label %for.body, label %for.end18

for.end18:                                        ; preds = %for.inc16
  %arraydecay = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 0, i64 0
  %arraydecay24 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %b, i64 0, i64 0, i64 0
  %arrayidx26 = getelementptr inbounds [1 x i32], [1 x i32]* %n, i64 0, i64 0
  %8 = load i32, i32* %arrayidx26, align 4
  %call27 = call i32 @_Z9if_loop_3PiS_i(i32* nonnull %arraydecay, i32* nonnull %arraydecay24, i32 %8)
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
