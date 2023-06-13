; ModuleID = 'src/stencil_2d.cpp'
source_filename = "src/stencil_2d.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @_Z10stencil_2dPiS_S_(i32* %orig, i32* %sol, i32* %filter) #0 {
entry:
  %orig.addr = alloca i32*, align 8
  %sol.addr = alloca i32*, align 8
  %filter.addr = alloca i32*, align 8
  %temp = alloca i32, align 4
  %mul = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  store i32* %orig, i32** %orig.addr, align 8
  store i32* %sol, i32** %sol.addr, align 8
  store i32* %filter, i32** %filter.addr, align 8
  store i32 0, i32* %temp, align 4
  store i32 0, i32* %mul, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %0 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %0, 28
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %1 = load i32, i32* %c, align 4
  %cmp2 = icmp slt i32 %1, 28
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %temp, align 4
  store i32 0, i32* %k1, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc19, %for.body3
  %2 = load i32, i32* %k1, align 4
  %cmp5 = icmp slt i32 %2, 3
  br i1 %cmp5, label %for.body6, label %for.end21

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %k2, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %3 = load i32, i32* %k2, align 4
  %cmp8 = icmp slt i32 %3, 3
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %4 = load i32*, i32** %filter.addr, align 8
  %5 = load i32, i32* %k1, align 4
  %mul10 = mul nsw i32 %5, 3
  %6 = load i32, i32* %k2, align 4
  %add = add nsw i32 %mul10, %6
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32*, i32** %orig.addr, align 8
  %9 = load i32, i32* %r, align 4
  %10 = load i32, i32* %k1, align 4
  %add11 = add nsw i32 %9, %10
  %mul12 = mul nsw i32 %add11, 30
  %11 = load i32, i32* %c, align 4
  %add13 = add nsw i32 %mul12, %11
  %12 = load i32, i32* %k2, align 4
  %add14 = add nsw i32 %add13, %12
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %8, i64 %idxprom15
  %13 = load i32, i32* %arrayidx16, align 4
  %mul17 = mul nsw i32 %7, %13
  store i32 %mul17, i32* %mul, align 4
  %14 = load i32, i32* %mul, align 4
  %15 = load i32, i32* %temp, align 4
  %add18 = add nsw i32 %15, %14
  store i32 %add18, i32* %temp, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %16 = load i32, i32* %k2, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k2, align 4
  br label %for.cond7

for.end:                                          ; preds = %for.cond7
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %17 = load i32, i32* %k1, align 4
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, i32* %k1, align 4
  br label %for.cond4

for.end21:                                        ; preds = %for.cond4
  %18 = load i32, i32* %temp, align 4
  %19 = load i32*, i32** %sol.addr, align 8
  %20 = load i32, i32* %r, align 4
  %mul22 = mul nsw i32 %20, 30
  %21 = load i32, i32* %c, align 4
  %add23 = add nsw i32 %mul22, %21
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %19, i64 %idxprom24
  store i32 %18, i32* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end21
  %22 = load i32, i32* %c, align 4
  %inc27 = add nsw i32 %22, 1
  store i32 %inc27, i32* %c, align 4
  br label %for.cond1

for.end28:                                        ; preds = %for.cond1
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %23 = load i32, i32* %r, align 4
  %inc30 = add nsw i32 %23, 1
  store i32 %inc30, i32* %r, align 4
  br label %for.cond

for.end31:                                        ; preds = %for.cond
  %24 = load i32, i32* %temp, align 4
  ret i32 %24
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %orig = alloca [1 x [900 x i32]], align 16
  %sol = alloca [1 x [900 x i32]], align 16
  %filter = alloca [1 x [10 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j6 = alloca i32, align 4
  %i22 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 900
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 100
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %orig, i64 0, i64 %idxprom
  %3 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [900 x i32], [900 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 %rem, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, i32* %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %j6, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc16, %for.end
  %5 = load i32, i32* %j6, align 4
  %cmp8 = icmp slt i32 %5, 10
  br i1 %cmp8, label %for.body9, label %for.end18

for.body9:                                        ; preds = %for.cond7
  %call10 = call i32 @rand() #3
  %rem11 = srem i32 %call10, 100
  %6 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %6 to i64
  %arrayidx13 = getelementptr inbounds [1 x [10 x i32]], [1 x [10 x i32]]* %filter, i64 0, i64 %idxprom12
  %7 = load i32, i32* %j6, align 4
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx13, i64 0, i64 %idxprom14
  store i32 %rem11, i32* %arrayidx15, align 4
  br label %for.inc16

for.inc16:                                        ; preds = %for.body9
  %8 = load i32, i32* %j6, align 4
  %inc17 = add nsw i32 %8, 1
  store i32 %inc17, i32* %j6, align 4
  br label %for.cond7

for.end18:                                        ; preds = %for.cond7
  br label %for.inc19

for.inc19:                                        ; preds = %for.end18
  %9 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %9, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end21:                                        ; preds = %for.cond
  store i32 0, i32* %i22, align 4
  %10 = load i32, i32* %i22, align 4
  %idxprom23 = sext i32 %10 to i64
  %arrayidx24 = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %orig, i64 0, i64 %idxprom23
  %arraydecay = getelementptr inbounds [900 x i32], [900 x i32]* %arrayidx24, i32 0, i32 0
  %11 = load i32, i32* %i22, align 4
  %idxprom25 = sext i32 %11 to i64
  %arrayidx26 = getelementptr inbounds [1 x [900 x i32]], [1 x [900 x i32]]* %sol, i64 0, i64 %idxprom25
  %arraydecay27 = getelementptr inbounds [900 x i32], [900 x i32]* %arrayidx26, i32 0, i32 0
  %12 = load i32, i32* %i22, align 4
  %idxprom28 = sext i32 %12 to i64
  %arrayidx29 = getelementptr inbounds [1 x [10 x i32]], [1 x [10 x i32]]* %filter, i64 0, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx29, i32 0, i32 0
  %call31 = call i32 @_Z10stencil_2dPiS_S_(i32* %arraydecay, i32* %arraydecay27, i32* %arraydecay30)
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
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
