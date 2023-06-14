; ModuleID = 'src/kernel_2mm.cpp'
source_filename = "src/kernel_2mm.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @_Z10kernel_2mmiiPA10_iS0_S0_S0_S0_(i32 %alpha, i32 %beta, [10 x i32]* %tmp, [10 x i32]* %A, [10 x i32]* %B, [10 x i32]* %C, [10 x i32]* %D) #0 {
entry:
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %tmp.addr = alloca [10 x i32]*, align 8
  %A.addr = alloca [10 x i32]*, align 8
  %B.addr = alloca [10 x i32]*, align 8
  %C.addr = alloca [10 x i32]*, align 8
  %D.addr = alloca [10 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  store [10 x i32]* %tmp, [10 x i32]** %tmp.addr, align 8
  store [10 x i32]* %A, [10 x i32]** %A.addr, align 8
  store [10 x i32]* %B, [10 x i32]** %B.addr, align 8
  store [10 x i32]* %C, [10 x i32]** %C.addr, align 8
  store [10 x i32]* %D, [10 x i32]** %D.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc22, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body3, label %for.end24

for.body3:                                        ; preds = %for.cond1
  %2 = load [10 x i32]*, [10 x i32]** %tmp.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 0, i32* %arrayidx5, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, i32* %k, align 4
  %cmp7 = icmp slt i32 %5, 10
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %6 = load i32, i32* %alpha.addr, align 4
  %7 = load [10 x i32]*, [10 x i32]** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %idxprom9
  %9 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx10, i64 0, i64 %idxprom11
  %10 = load i32, i32* %arrayidx12, align 4
  %mul = mul nsw i32 %6, %10
  %11 = load [10 x i32]*, [10 x i32]** %B.addr, align 8
  %12 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 %idxprom13
  %13 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14, i64 0, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  %mul17 = mul nsw i32 %mul, %14
  %15 = load [10 x i32]*, [10 x i32]** %tmp.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %15, i64 %idxprom18
  %17 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx19, i64 0, i64 %idxprom20
  %18 = load i32, i32* %arrayidx21, align 4
  %add = add nsw i32 %18, %mul17
  store i32 %add, i32* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6

for.end:                                          ; preds = %for.cond6
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond1

for.end24:                                        ; preds = %for.cond1
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %21 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond

for.end27:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc62, %for.end27
  %22 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %22, 10
  br i1 %cmp29, label %for.body30, label %for.end64

for.body30:                                       ; preds = %for.cond28
  store i32 0, i32* %j, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc59, %for.body30
  %23 = load i32, i32* %j, align 4
  %cmp32 = icmp slt i32 %23, 10
  br i1 %cmp32, label %for.body33, label %for.end61

for.body33:                                       ; preds = %for.cond31
  %24 = load i32, i32* %beta.addr, align 4
  %25 = load [10 x i32]*, [10 x i32]** %D.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %25, i64 %idxprom34
  %27 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx35, i64 0, i64 %idxprom36
  %28 = load i32, i32* %arrayidx37, align 4
  %mul38 = mul nsw i32 %28, %24
  store i32 %mul38, i32* %arrayidx37, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc56, %for.body33
  %29 = load i32, i32* %k, align 4
  %cmp40 = icmp slt i32 %29, 10
  br i1 %cmp40, label %for.body41, label %for.end58

for.body41:                                       ; preds = %for.cond39
  %30 = load [10 x i32]*, [10 x i32]** %tmp.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %31 to i64
  %arrayidx43 = getelementptr inbounds [10 x i32], [10 x i32]* %30, i64 %idxprom42
  %32 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %32 to i64
  %arrayidx45 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx43, i64 0, i64 %idxprom44
  %33 = load i32, i32* %arrayidx45, align 4
  %34 = load [10 x i32]*, [10 x i32]** %C.addr, align 8
  %35 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %35 to i64
  %arrayidx47 = getelementptr inbounds [10 x i32], [10 x i32]* %34, i64 %idxprom46
  %36 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %36 to i64
  %arrayidx49 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx47, i64 0, i64 %idxprom48
  %37 = load i32, i32* %arrayidx49, align 4
  %mul50 = mul nsw i32 %33, %37
  %38 = load [10 x i32]*, [10 x i32]** %D.addr, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [10 x i32], [10 x i32]* %38, i64 %idxprom51
  %40 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %40 to i64
  %arrayidx54 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx52, i64 0, i64 %idxprom53
  %41 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %41, %mul50
  store i32 %add55, i32* %arrayidx54, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.body41
  %42 = load i32, i32* %k, align 4
  %inc57 = add nsw i32 %42, 1
  store i32 %inc57, i32* %k, align 4
  br label %for.cond39

for.end58:                                        ; preds = %for.cond39
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %43 = load i32, i32* %j, align 4
  %inc60 = add nsw i32 %43, 1
  store i32 %inc60, i32* %j, align 4
  br label %for.cond31

for.end61:                                        ; preds = %for.cond31
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %44 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %44, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond28

for.end64:                                        ; preds = %for.cond28
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %alpha = alloca [1 x i32], align 4
  %beta = alloca [1 x i32], align 4
  %tmp = alloca [1 x [10 x [10 x i32]]], align 16
  %A = alloca [1 x [10 x [10 x i32]]], align 16
  %B = alloca [1 x [10 x [10 x i32]]], align 16
  %C = alloca [1 x [10 x [10 x i32]]], align 16
  %D = alloca [1 x [10 x [10 x i32]]], align 16
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %i47 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @srand(i32 0) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc44, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #3
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %alpha, i64 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  %call1 = call i32 @rand() #3
  %2 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [1 x i32], [1 x i32]* %beta, i64 0, i64 %idxprom2
  store i32 %call1, i32* %arrayidx3, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc41, %for.body
  %3 = load i32, i32* %y, align 4
  %cmp5 = icmp slt i32 %3, 10
  br i1 %cmp5, label %for.body6, label %for.end43

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %x, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %4 = load i32, i32* %x, align 4
  %cmp8 = icmp slt i32 %4, 10
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %call10 = call i32 @rand() #3
  %rem = srem i32 %call10, 100
  %5 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %A, i64 0, i64 %idxprom11
  %6 = load i32, i32* %y, align 4
  %idxprom13 = sext i32 %6 to i64
  %arrayidx14 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx12, i64 0, i64 %idxprom13
  %7 = load i32, i32* %x, align 4
  %idxprom15 = sext i32 %7 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14, i64 0, i64 %idxprom15
  store i32 %rem, i32* %arrayidx16, align 4
  %call17 = call i32 @rand() #3
  %rem18 = srem i32 %call17, 100
  %8 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %8 to i64
  %arrayidx20 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %B, i64 0, i64 %idxprom19
  %9 = load i32, i32* %y, align 4
  %idxprom21 = sext i32 %9 to i64
  %arrayidx22 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx20, i64 0, i64 %idxprom21
  %10 = load i32, i32* %x, align 4
  %idxprom23 = sext i32 %10 to i64
  %arrayidx24 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx22, i64 0, i64 %idxprom23
  store i32 %rem18, i32* %arrayidx24, align 4
  %call25 = call i32 @rand() #3
  %rem26 = srem i32 %call25, 100
  %11 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %11 to i64
  %arrayidx28 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %C, i64 0, i64 %idxprom27
  %12 = load i32, i32* %y, align 4
  %idxprom29 = sext i32 %12 to i64
  %arrayidx30 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx28, i64 0, i64 %idxprom29
  %13 = load i32, i32* %x, align 4
  %idxprom31 = sext i32 %13 to i64
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx30, i64 0, i64 %idxprom31
  store i32 %rem26, i32* %arrayidx32, align 4
  %call33 = call i32 @rand() #3
  %rem34 = srem i32 %call33, 100
  %14 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %14 to i64
  %arrayidx36 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %D, i64 0, i64 %idxprom35
  %15 = load i32, i32* %y, align 4
  %idxprom37 = sext i32 %15 to i64
  %arrayidx38 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx36, i64 0, i64 %idxprom37
  %16 = load i32, i32* %x, align 4
  %idxprom39 = sext i32 %16 to i64
  %arrayidx40 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx38, i64 0, i64 %idxprom39
  store i32 %rem34, i32* %arrayidx40, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %17 = load i32, i32* %x, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond7

for.end:                                          ; preds = %for.cond7
  br label %for.inc41

for.inc41:                                        ; preds = %for.end
  %18 = load i32, i32* %y, align 4
  %inc42 = add nsw i32 %18, 1
  store i32 %inc42, i32* %y, align 4
  br label %for.cond4

for.end43:                                        ; preds = %for.cond4
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %19 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %19, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond

for.end46:                                        ; preds = %for.cond
  store i32 0, i32* %i47, align 4
  %arrayidx48 = getelementptr inbounds [1 x i32], [1 x i32]* %alpha, i64 0, i64 0
  %20 = load i32, i32* %arrayidx48, align 4
  %arrayidx49 = getelementptr inbounds [1 x i32], [1 x i32]* %beta, i64 0, i64 0
  %21 = load i32, i32* %arrayidx49, align 4
  %arrayidx50 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %tmp, i64 0, i64 0
  %arraydecay = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx50, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %A, i64 0, i64 0
  %arraydecay52 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx51, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %B, i64 0, i64 0
  %arraydecay54 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx53, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %C, i64 0, i64 0
  %arraydecay56 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx55, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [1 x [10 x [10 x i32]]], [1 x [10 x [10 x i32]]]* %D, i64 0, i64 0
  %arraydecay58 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arrayidx57, i32 0, i32 0
  call void @_Z10kernel_2mmiiPA10_iS0_S0_S0_S0_(i32 %20, i32 %21, [10 x i32]* %arraydecay, [10 x i32]* %arraydecay52, [10 x i32]* %arraydecay54, [10 x i32]* %arraydecay56, [10 x i32]* %arraydecay58)
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
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
