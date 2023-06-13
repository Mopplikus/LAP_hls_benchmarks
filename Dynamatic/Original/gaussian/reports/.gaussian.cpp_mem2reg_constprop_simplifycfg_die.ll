; ModuleID = '.gaussian.cpp_mem2reg_constprop_simplifycfg.ll'
source_filename = "src/gaussian.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @_Z8gaussianPiPA20_i(i32* %c, [20 x i32]* %A) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc22, %entry
  %j.04 = phi i32 [ 1, %entry ], [ %inc23, %for.inc22 ]
  %add = add nuw nsw i32 %j.04, 1
  %cmp22 = icmp ult i32 %add, 19
  br i1 %cmp22, label %for.body3.lr.ph, label %for.inc22

for.body3.lr.ph:                                  ; preds = %for.body
  br label %for.body3

for.body3:                                        ; preds = %for.inc19, %for.body3.lr.ph
  %i.03 = phi i32 [ %add, %for.body3.lr.ph ], [ %inc20, %for.inc19 ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body3
  %k.01 = phi i32 [ 1, %for.body3 ], [ %inc, %for.body6 ]
  %idxprom = sext i32 %i.03 to i64
  %0 = zext i32 %k.01 to i64
  %arrayidx8 = getelementptr inbounds [20 x i32], [20 x i32]* %A, i64 %idxprom, i64 %0
  %1 = load i32, i32* %arrayidx8, align 4
  %2 = zext i32 %j.04 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %c, i64 %2
  %3 = load i32, i32* %arrayidx10, align 4
  %4 = zext i32 %j.04 to i64
  %5 = zext i32 %k.01 to i64
  %arrayidx14 = getelementptr inbounds [20 x i32], [20 x i32]* %A, i64 %4, i64 %5
  %6 = load i32, i32* %arrayidx14, align 4
  %mul = mul nsw i32 %3, %6
  %sub = sub nsw i32 %1, %mul
  %idxprom15 = sext i32 %i.03 to i64
  %7 = zext i32 %k.01 to i64
  %arrayidx18 = getelementptr inbounds [20 x i32], [20 x i32]* %A, i64 %idxprom15, i64 %7
  store i32 %sub, i32* %arrayidx18, align 4
  %inc = add nuw nsw i32 %k.01, 1
  %cmp5 = icmp ult i32 %inc, 20
  br i1 %cmp5, label %for.body6, label %for.inc19

for.inc19:                                        ; preds = %for.body6
  %inc20 = add nsw i32 %i.03, 1
  %cmp2 = icmp slt i32 %i.03, 18
  br i1 %cmp2, label %for.body3, label %for.inc22

for.inc22:                                        ; preds = %for.inc19, %for.body
  %inc23 = add nuw nsw i32 %j.04, 1
  %cmp = icmp ult i32 %inc23, 19
  br i1 %cmp, label %for.body, label %for.end24

for.end24:                                        ; preds = %for.inc22
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %c = alloca [1 x [20 x i32]], align 16
  %A = alloca [1 x [20 x [20 x i32]]], align 16
  call void @srand(i32 13) #3
  br label %for.body

for.body:                                         ; preds = %for.inc18, %entry
  br label %for.body3

for.body3:                                        ; preds = %for.inc15, %for.body
  %y.02 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc15 ]
  %0 = zext i32 %y.02 to i64
  %1 = getelementptr inbounds [1 x [20 x i32]], [1 x [20 x i32]]* %c, i64 0, i64 0, i64 %0
  store i32 1, i32* %1, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body3
  %x.01 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body8 ]
  %2 = zext i32 %y.02 to i64
  %3 = zext i32 %x.01 to i64
  %4 = getelementptr inbounds [1 x [20 x [20 x i32]]], [1 x [20 x [20 x i32]]]* %A, i64 0, i64 0, i64 %2, i64 %3
  store i32 1, i32* %4, align 4
  %inc = add nuw nsw i32 %x.01, 1
  %cmp7 = icmp ult i32 %inc, 20
  br i1 %cmp7, label %for.body8, label %for.inc15

for.inc15:                                        ; preds = %for.body8
  %inc16 = add nuw nsw i32 %y.02, 1
  %cmp2 = icmp ult i32 %inc16, 20
  br i1 %cmp2, label %for.body3, label %for.inc18

for.inc18:                                        ; preds = %for.inc15
  br i1 false, label %for.body, label %for.end20

for.end20:                                        ; preds = %for.inc18
  %arraydecay = getelementptr inbounds [1 x [20 x i32]], [1 x [20 x i32]]* %c, i64 0, i64 0, i64 0
  %arraydecay26 = getelementptr inbounds [1 x [20 x [20 x i32]]], [1 x [20 x [20 x i32]]]* %A, i64 0, i64 0, i64 0
  call void @_Z8gaussianPiPA20_i(i32* nonnull %arraydecay, [20 x i32]* nonnull %arraydecay26)
  ret i32 0
}

; Function Attrs: nounwind
declare void @srand(i32) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"}
