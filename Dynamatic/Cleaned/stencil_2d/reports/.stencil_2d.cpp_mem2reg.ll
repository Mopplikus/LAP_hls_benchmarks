; ModuleID = '.stencil_2d.cpp.ll'
source_filename = "src/stencil_2d.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @_Z10stencil_2dPiS_S_(i32* %orig, i32* %sol, i32* %filter) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc30, %for.inc29 ]
  %temp.0 = phi i32 [ 0, %entry ], [ %temp.1, %for.inc29 ]
  %cmp = icmp slt i32 %r.0, 28
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %temp.1 = phi i32 [ %temp.0, %for.body ], [ %temp.2, %for.inc26 ]
  %c.0 = phi i32 [ 0, %for.body ], [ %inc27, %for.inc26 ]
  %cmp2 = icmp slt i32 %c.0, 28
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc19, %for.body3
  %temp.2 = phi i32 [ 0, %for.body3 ], [ %temp.3, %for.inc19 ]
  %k1.0 = phi i32 [ 0, %for.body3 ], [ %inc20, %for.inc19 ]
  %cmp5 = icmp slt i32 %k1.0, 3
  br i1 %cmp5, label %for.body6, label %for.end21

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %temp.3 = phi i32 [ %temp.2, %for.body6 ], [ %add18, %for.inc ]
  %k2.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ]
  %cmp8 = icmp slt i32 %k2.0, 3
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %mul10 = mul nsw i32 %k1.0, 3
  %add = add nsw i32 %mul10, %k2.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %filter, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %add11 = add nsw i32 %r.0, %k1.0
  %mul12 = mul nsw i32 %add11, 30
  %add13 = add nsw i32 %mul12, %c.0
  %add14 = add nsw i32 %add13, %k2.0
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %orig, i64 %idxprom15
  %1 = load i32, i32* %arrayidx16, align 4
  %mul17 = mul nsw i32 %0, %1
  %add18 = add nsw i32 %temp.3, %mul17
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %k2.0, 1
  br label %for.cond7

for.end:                                          ; preds = %for.cond7
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %inc20 = add nsw i32 %k1.0, 1
  br label %for.cond4

for.end21:                                        ; preds = %for.cond4
  %mul22 = mul nsw i32 %r.0, 30
  %add23 = add nsw i32 %mul22, %c.0
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %sol, i64 %idxprom24
  store i32 %temp.2, i32* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end21
  %inc27 = add nsw i32 %c.0, 1
  br label %for.cond1

for.end28:                                        ; preds = %for.cond1
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %r.0, 1
  br label %for.cond

for.end31:                                        ; preds = %for.cond
  ret i32 %temp.0
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %orig = alloca [1 x [900 x i32]], align 16
  %sol = alloca [1 x [900 x i32]], align 16
  %filter = alloca [1 x [10 x i32]], align 16
  call void @srand(i32 13) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ]
  %cmp = icmp slt i32 %i.0, 1
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, 900
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 100
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %orig, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [900 x i32], [900 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 %rem, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %i.0 to i64
  %arrayidx7 = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %sol, i64 0, i64 %idxprom6
  %idxprom8 = sext i32 %j.0 to i64
  %arrayidx9 = getelementptr inbounds [900 x i32], [900 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  store i32 0, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc20, %for.end
  %j10.0 = phi i32 [ 0, %for.end ], [ %inc21, %for.inc20 ]
  %cmp12 = icmp slt i32 %j10.0, 10
  br i1 %cmp12, label %for.body13, label %for.end22

for.body13:                                       ; preds = %for.cond11
  %call14 = call i32 @rand() #3
  %rem15 = srem i32 %call14, 100
  %idxprom16 = sext i32 %i.0 to i64
  %arrayidx17 = getelementptr inbounds [1 x [10 x i32]], [1 x [10 x i32]]* %filter, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %j10.0 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx17, i64 0, i64 %idxprom18
  store i32 %rem15, i32* %arrayidx19, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body13
  %inc21 = add nsw i32 %j10.0, 1
  br label %for.cond11

for.end22:                                        ; preds = %for.cond11
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.0, 1
  br label %for.cond

for.end25:                                        ; preds = %for.cond
  %idxprom27 = sext i32 0 to i64
  %arrayidx28 = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %orig, i64 0, i64 %idxprom27
  %arraydecay = getelementptr inbounds [900 x i32], [900 x i32]* %arrayidx28, i32 0, i32 0
  %idxprom29 = sext i32 0 to i64
  %arrayidx30 = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %sol, i64 0, i64 %idxprom29
  %arraydecay31 = getelementptr inbounds [900 x i32], [900 x i32]* %arrayidx30, i32 0, i32 0
  %idxprom32 = sext i32 0 to i64
  %arrayidx33 = getelementptr inbounds [1 x [10 x i32]], [1 x [10 x i32]]* %filter, i64 0, i64 %idxprom32
  %arraydecay34 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx33, i32 0, i32 0
  %call35 = call i32 @_Z10stencil_2dPiS_S_(i32* %arraydecay, i32* %arraydecay31, i32* %arraydecay34)
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
