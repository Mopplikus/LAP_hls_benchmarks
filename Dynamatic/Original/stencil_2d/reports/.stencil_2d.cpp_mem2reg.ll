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
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc20, %for.inc19 ]
  %cmp = icmp slt i32 %i.0, 1
  br i1 %cmp, label %for.body, label %for.end21

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
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc16, %for.end
  %j6.0 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ]
  %cmp8 = icmp slt i32 %j6.0, 10
  br i1 %cmp8, label %for.body9, label %for.end18

for.body9:                                        ; preds = %for.cond7
  %call10 = call i32 @rand() #3
  %rem11 = srem i32 %call10, 100
  %idxprom12 = sext i32 %i.0 to i64
  %arrayidx13 = getelementptr inbounds [1 x [10 x i32]], [1 x [10 x i32]]* %filter, i64 0, i64 %idxprom12
  %idxprom14 = sext i32 %j6.0 to i64
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx13, i64 0, i64 %idxprom14
  store i32 %rem11, i32* %arrayidx15, align 4
  br label %for.inc16

for.inc16:                                        ; preds = %for.body9
  %inc17 = add nsw i32 %j6.0, 1
  br label %for.cond7

for.end18:                                        ; preds = %for.cond7
  br label %for.inc19

for.inc19:                                        ; preds = %for.end18
  %inc20 = add nsw i32 %i.0, 1
  br label %for.cond

for.end21:                                        ; preds = %for.cond
  %idxprom23 = sext i32 0 to i64
  %arrayidx24 = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %orig, i64 0, i64 %idxprom23
  %arraydecay = getelementptr inbounds [900 x i32], [900 x i32]* %arrayidx24, i32 0, i32 0
  %idxprom25 = sext i32 0 to i64
  %arrayidx26 = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %sol, i64 0, i64 %idxprom25
  %arraydecay27 = getelementptr inbounds [900 x i32], [900 x i32]* %arrayidx26, i32 0, i32 0
  %idxprom28 = sext i32 0 to i64
  %arrayidx29 = getelementptr inbounds [1 x [10 x i32]], [1 x [10 x i32]]* %filter, i64 0, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx29, i32 0, i32 0
  %call31 = call i32 @_Z10stencil_2dPiS_S_(i32* %arraydecay, i32* %arraydecay27, i32* %arraydecay30)
  ret i32 0
}

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
