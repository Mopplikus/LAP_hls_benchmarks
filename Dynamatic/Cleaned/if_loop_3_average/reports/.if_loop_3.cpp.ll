; ModuleID = 'src/if_loop_3.cpp'
source_filename = "src/if_loop_3.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @_Z9if_loop_3PiS_i(i32* %a, i32* %b, i32 %n) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %dist = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 1000, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 %4, %7
  store i32 %sub, i32* %dist, align 4
  %8 = load i32, i32* %dist, align 4
  %cmp3 = icmp sge i32 %8, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %sum, align 4
  %10 = load i32, i32* %dist, align 4
  %div = sdiv i32 %9, %10
  store i32 %div, i32* %sum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %sum, align 4
  ret i32 %12
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [1 x [100 x i32]], align 16
  %b = alloca [1 x [100 x i32]], align 16
  %n = alloca [1 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i36 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @srand(i32 13) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end35

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %n, i64 0, i64 %idxprom
  store i32 100, i32* %arrayidx, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %j, align 4
  %rem = srem i32 %3, 2
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %call = call i32 @rand() #3
  %rem5 = srem i32 %call, 10
  %add = add nsw i32 %rem5, 2
  %4 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom6
  %5 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %5 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  store i32 %add, i32* %arrayidx9, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom10
  %7 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx11, i64 0, i64 %idxprom12
  %8 = load i32, i32* %arrayidx13, align 4
  %sub = sub nsw i32 %8, 2
  %9 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %b, i64 0, i64 %idxprom14
  %10 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %10 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx15, i64 0, i64 %idxprom16
  store i32 %sub, i32* %arrayidx17, align 4
  br label %if.end

if.else:                                          ; preds = %for.body3
  %call18 = call i32 @rand() #3
  %rem19 = srem i32 %call18, 10
  %11 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %11 to i64
  %arrayidx21 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom20
  %12 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %12 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx21, i64 0, i64 %idxprom22
  store i32 %rem19, i32* %arrayidx23, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom24
  %14 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %14 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx25, i64 0, i64 %idxprom26
  %15 = load i32, i32* %arrayidx27, align 4
  %add28 = add nsw i32 %15, 1
  %16 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %16 to i64
  %arrayidx30 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %b, i64 0, i64 %idxprom29
  %17 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %17 to i64
  %arrayidx32 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx30, i64 0, i64 %idxprom31
  store i32 %add28, i32* %arrayidx32, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %19, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond

for.end35:                                        ; preds = %for.cond
  store i32 0, i32* %i36, align 4
  %20 = load i32, i32* %i36, align 4
  %idxprom37 = sext i32 %20 to i64
  %arrayidx38 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %a, i64 0, i64 %idxprom37
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx38, i32 0, i32 0
  %21 = load i32, i32* %i36, align 4
  %idxprom39 = sext i32 %21 to i64
  %arrayidx40 = getelementptr inbounds [1 x [100 x i32]], [1 x [100 x i32]]* %b, i64 0, i64 %idxprom39
  %arraydecay41 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx40, i32 0, i32 0
  %22 = load i32, i32* %i36, align 4
  %idxprom42 = sext i32 %22 to i64
  %arrayidx43 = getelementptr inbounds [1 x i32], [1 x i32]* %n, i64 0, i64 %idxprom42
  %23 = load i32, i32* %arrayidx43, align 4
  %call44 = call i32 @_Z9if_loop_3PiS_i(i32* %arraydecay, i32* %arraydecay41, i32 %23)
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
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
