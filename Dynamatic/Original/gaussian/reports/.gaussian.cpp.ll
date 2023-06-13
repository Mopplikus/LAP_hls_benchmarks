; ModuleID = 'src/gaussian.cpp'
source_filename = "src/gaussian.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @_Z8gaussianPiPA20_i(i32* %c, [20 x i32]* %A) #0 {
entry:
  %c.addr = alloca i32*, align 8
  %A.addr = alloca [20 x i32]*, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %c, i32** %c.addr, align 8
  store [20 x i32]* %A, [20 x i32]** %A.addr, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp sle i32 %0, 18
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc19, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %2, 18
  br i1 %cmp2, label %for.body3, label %for.end21

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %3 = load i32, i32* %k, align 4
  %cmp5 = icmp sle i32 %3, 19
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %4 = load [20 x i32]*, [20 x i32]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 %idxprom
  %6 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i64 0, i64 %idxprom7
  %7 = load i32, i32* %arrayidx8, align 4
  %8 = load i32*, i32** %c.addr, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %8, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  %11 = load [20 x i32]*, [20 x i32]** %A.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 %idxprom11
  %13 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx12, i64 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %mul = mul nsw i32 %10, %14
  %sub = sub nsw i32 %7, %mul
  %15 = load [20 x i32]*, [20 x i32]** %A.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [20 x i32], [20 x i32]* %15, i64 %idxprom15
  %17 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx16, i64 0, i64 %idxprom17
  store i32 %sub, i32* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %19, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond1

for.end21:                                        ; preds = %for.cond1
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %20 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond

for.end24:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %c = alloca [1 x [20 x i32]], align 16
  %A = alloca [1 x [20 x [20 x i32]]], align 16
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %i21 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @srand(i32 13) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %1 = load i32, i32* %y, align 4
  %cmp2 = icmp slt i32 %1, 20
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1 x [20 x i32]], [1 x [20 x i32]]* %c, i64 0, i64 %idxprom
  %3 = load i32, i32* %y, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 1, i32* %arrayidx5, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %x, align 4
  %cmp7 = icmp slt i32 %4, 20
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %5 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [1 x [20 x [20 x i32]]], [1 x [20 x [20 x i32]]]* %A, i64 0, i64 %idxprom9
  %6 = load i32, i32* %y, align 4
  %idxprom11 = sext i32 %6 to i64
  %arrayidx12 = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %arrayidx10, i64 0, i64 %idxprom11
  %7 = load i32, i32* %x, align 4
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx12, i64 0, i64 %idxprom13
  store i32 1, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %8 = load i32, i32* %x, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond6

for.end:                                          ; preds = %for.cond6
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %9 = load i32, i32* %y, align 4
  %inc16 = add nsw i32 %9, 1
  store i32 %inc16, i32* %y, align 4
  br label %for.cond1

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %10 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %10, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end20:                                        ; preds = %for.cond
  store i32 0, i32* %i21, align 4
  %11 = load i32, i32* %i21, align 4
  %idxprom22 = sext i32 %11 to i64
  %arrayidx23 = getelementptr inbounds [1 x [20 x i32]], [1 x [20 x i32]]* %c, i64 0, i64 %idxprom22
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23, i32 0, i32 0
  %12 = load i32, i32* %i21, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [1 x [20 x [20 x i32]]], [1 x [20 x [20 x i32]]]* %A, i64 0, i64 %idxprom24
  %arraydecay26 = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %arrayidx25, i32 0, i32 0
  call void @_Z8gaussianPiPA20_i(i32* %arraydecay, [20 x i32]* %arraydecay26)
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
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
