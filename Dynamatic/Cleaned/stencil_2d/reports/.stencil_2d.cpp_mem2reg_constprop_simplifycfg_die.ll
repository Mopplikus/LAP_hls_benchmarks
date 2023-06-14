; ModuleID = '.stencil_2d.cpp_mem2reg_constprop_simplifycfg.ll'
source_filename = "src/stencil_2d.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @_Z10stencil_2dPiS_S_(i32* %orig, i32* %sol, i32* %filter) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc29, %entry
  %r.06 = phi i32 [ 0, %entry ], [ %inc30, %for.inc29 ]
  br label %for.body3

for.body3:                                        ; preds = %for.end21, %for.body
  %c.05 = phi i32 [ 0, %for.body ], [ %inc27, %for.end21 ]
  br label %for.body6

for.body6:                                        ; preds = %for.inc19, %for.body3
  %k1.04 = phi i32 [ 0, %for.body3 ], [ %inc20, %for.inc19 ]
  %temp.23 = phi i32 [ 0, %for.body3 ], [ %add18, %for.inc19 ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9, %for.body6
  %k2.02 = phi i32 [ 0, %for.body6 ], [ %inc, %for.body9 ]
  %temp.31 = phi i32 [ %temp.23, %for.body6 ], [ %add18, %for.body9 ]
  %mul10 = mul nsw i32 %k1.04, 3
  %add = add nuw nsw i32 %mul10, %k2.02
  %0 = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %filter, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %add11 = add nuw nsw i32 %r.06, %k1.04
  %mul12 = mul nsw i32 %add11, 30
  %add13 = add nuw nsw i32 %mul12, %c.05
  %add14 = add nuw nsw i32 %add13, %k2.02
  %2 = zext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %orig, i64 %2
  %3 = load i32, i32* %arrayidx16, align 4
  %mul17 = mul nsw i32 %1, %3
  %add18 = add nsw i32 %temp.31, %mul17
  %inc = add nuw nsw i32 %k2.02, 1
  %cmp8 = icmp ult i32 %inc, 3
  br i1 %cmp8, label %for.body9, label %for.inc19

for.inc19:                                        ; preds = %for.body9
  %inc20 = add nuw nsw i32 %k1.04, 1
  %cmp5 = icmp ult i32 %inc20, 3
  br i1 %cmp5, label %for.body6, label %for.end21

for.end21:                                        ; preds = %for.inc19
  %mul22 = mul nsw i32 %r.06, 30
  %add23 = add nuw nsw i32 %mul22, %c.05
  %4 = zext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %sol, i64 %4
  store i32 %add18, i32* %arrayidx25, align 4
  %inc27 = add nuw nsw i32 %c.05, 1
  %cmp2 = icmp ult i32 %inc27, 28
  br i1 %cmp2, label %for.body3, label %for.inc29

for.inc29:                                        ; preds = %for.end21
  %inc30 = add nuw nsw i32 %r.06, 1
  %cmp = icmp ult i32 %inc30, 28
  br i1 %cmp, label %for.body, label %for.end31

for.end31:                                        ; preds = %for.inc29
  ret i32 %add18
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %orig = alloca [1 x [900 x i32]], align 16
  %sol = alloca [1 x [900 x i32]], align 16
  %filter = alloca [1 x [10 x i32]], align 16
  call void @srand(i32 13) #3
  br label %for.body

for.body:                                         ; preds = %for.inc23, %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %j.01 = phi i32 [ 0, %for.body ], [ %inc, %for.body3 ]
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 100
  %0 = zext i32 %j.01 to i64
  %1 = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %orig, i64 0, i64 0, i64 %0
  store i32 %rem, i32* %1, align 4
  %2 = zext i32 %j.01 to i64
  %3 = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %sol, i64 0, i64 0, i64 %2
  store i32 0, i32* %3, align 4
  %inc = add nuw nsw i32 %j.01, 1
  %cmp2 = icmp ult i32 %inc, 900
  br i1 %cmp2, label %for.body3, label %for.end

for.end:                                          ; preds = %for.body3
  br label %for.body13

for.body13:                                       ; preds = %for.body13, %for.end
  %j10.02 = phi i32 [ 0, %for.end ], [ %inc21, %for.body13 ]
  %call14 = call i32 @rand() #3
  %rem15 = srem i32 %call14, 100
  %4 = zext i32 %j10.02 to i64
  %5 = getelementptr inbounds [1 x [10 x i32]], [1 x [10 x i32]]* %filter, i64 0, i64 0, i64 %4
  store i32 %rem15, i32* %5, align 4
  %inc21 = add nuw nsw i32 %j10.02, 1
  %cmp12 = icmp ult i32 %inc21, 10
  br i1 %cmp12, label %for.body13, label %for.inc23

for.inc23:                                        ; preds = %for.body13
  br i1 false, label %for.body, label %for.end25

for.end25:                                        ; preds = %for.inc23
  %arraydecay = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %orig, i64 0, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %sol, i64 0, i64 0, i64 0
  %arraydecay34 = getelementptr inbounds [1 x [10 x i32]], [1 x [10 x i32]]* %filter, i64 0, i64 0, i64 0
  %call35 = call i32 @_Z10stencil_2dPiS_S_(i32* nonnull %arraydecay, i32* nonnull %arraydecay31, i32* nonnull %arraydecay34)
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
