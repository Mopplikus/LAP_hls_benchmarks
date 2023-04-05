; ModuleID = 'C:/Users/Elija/AppData/Roaming/Xilinx/Vitis/triangular/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define i32 @apatb_triangular_ir(i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100" %x, [100 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="100" %A, i32 %n) local_unnamed_addr #0 {
entry:
  %x_copy = alloca [100 x i32], align 512
  %malloccall = tail call i8* @malloc(i64 40000)
  %A_copy = bitcast i8* %malloccall to [100 x [100 x i32]]*
  %0 = bitcast i32* %x to [100 x i32]*
  %1 = bitcast [100 x i32]* %A to [100 x [100 x i32]]*
  call fastcc void @copy_in([100 x i32]* nonnull %0, [100 x i32]* nonnull align 512 %x_copy, [100 x [100 x i32]]* nonnull %1, [100 x [100 x i32]]* %A_copy)
  %2 = getelementptr inbounds [100 x i32], [100 x i32]* %x_copy, i32 0, i32 0
  %3 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %A_copy, i32 0, i32 0
  %4 = call i32 @apatb_triangular_hw(i32* %2, [100 x i32]* %3, i32 %n)
  call void @copy_back([100 x i32]* %0, [100 x i32]* %x_copy, [100 x [100 x i32]]* %1, [100 x [100 x i32]]* %A_copy)
  tail call void @free(i8* %malloccall)
  ret i32 %4
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([100 x i32]* noalias readonly, [100 x i32]* noalias align 512, [100 x [100 x i32]]* noalias readonly, [100 x [100 x i32]]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* align 512 %1, [100 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a100a100i32([100 x [100 x i32]]* %3, [100 x [100 x i32]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* noalias align 512, [100 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [100 x i32]* %0, null
  %3 = icmp eq [100 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x i32], [100 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [100 x i32], [100 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 100
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a100a100i32([100 x [100 x i32]]* noalias, [100 x [100 x i32]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [100 x [100 x i32]]* %0, null
  %3 = icmp eq [100 x [100 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [100 x [100 x i32]], [100 x [100 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [100 x [100 x i32]], [100 x [100 x i32]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i32, i32* %src.addr68, align 4
  store i32 %5, i32* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 100
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 100
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([100 x i32]* noalias, [100 x i32]* noalias readonly align 512, [100 x [100 x i32]]* noalias, [100 x [100 x i32]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* %0, [100 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a100a100i32([100 x [100 x i32]]* %2, [100 x [100 x i32]]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare i32 @apatb_triangular_hw(i32*, [100 x i32]*, i32)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([100 x i32]* noalias, [100 x i32]* noalias readonly align 512, [100 x [100 x i32]]* noalias, [100 x [100 x i32]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100a100i32([100 x [100 x i32]]* %2, [100 x [100 x i32]]* %3)
  ret void
}

define i32 @triangular_hw_stub_wrapper(i32*, [100 x i32]*, i32) #4 {
entry:
  %3 = bitcast i32* %0 to [100 x i32]*
  %4 = bitcast [100 x i32]* %1 to [100 x [100 x i32]]*
  call void @copy_out([100 x i32]* null, [100 x i32]* %3, [100 x [100 x i32]]* null, [100 x [100 x i32]]* %4)
  %5 = bitcast [100 x i32]* %3 to i32*
  %6 = bitcast [100 x [100 x i32]]* %4 to [100 x i32]*
  %7 = call i32 @triangular_hw_stub(i32* %5, [100 x i32]* %6, i32 %2)
  call void @copy_in([100 x i32]* null, [100 x i32]* %3, [100 x [100 x i32]]* null, [100 x [100 x i32]]* %4)
  ret i32 %7
}

declare i32 @triangular_hw_stub(i32*, [100 x i32]*, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
