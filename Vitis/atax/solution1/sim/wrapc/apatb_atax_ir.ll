; ModuleID = 'C:/Users/Elija/AppData/Roaming/Xilinx/Vitis/atax/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly noinline
define i32 @apatb_atax_ir([20 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="20" %A, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="20" %x, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="20" %y, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="20" %tmp) local_unnamed_addr #0 {
entry:
  %A_copy = alloca [20 x [20 x i32]], align 512
  %x_copy = alloca [20 x i32], align 512
  %y_copy = alloca [20 x i32], align 512
  %tmp_copy = alloca [20 x i32], align 512
  %0 = bitcast [20 x i32]* %A to [20 x [20 x i32]]*
  %1 = bitcast i32* %x to [20 x i32]*
  %2 = bitcast i32* %y to [20 x i32]*
  %3 = bitcast i32* %tmp to [20 x i32]*
  call fastcc void @copy_in([20 x [20 x i32]]* nonnull %0, [20 x [20 x i32]]* nonnull align 512 %A_copy, [20 x i32]* nonnull %1, [20 x i32]* nonnull align 512 %x_copy, [20 x i32]* nonnull %2, [20 x i32]* nonnull align 512 %y_copy, [20 x i32]* nonnull %3, [20 x i32]* nonnull align 512 %tmp_copy)
  %4 = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A_copy, i32 0, i32 0
  %5 = getelementptr inbounds [20 x i32], [20 x i32]* %x_copy, i32 0, i32 0
  %6 = getelementptr inbounds [20 x i32], [20 x i32]* %y_copy, i32 0, i32 0
  %7 = getelementptr inbounds [20 x i32], [20 x i32]* %tmp_copy, i32 0, i32 0
  %8 = call i32 @apatb_atax_hw([20 x i32]* %4, i32* %5, i32* %6, i32* %7)
  call void @copy_back([20 x [20 x i32]]* %0, [20 x [20 x i32]]* %A_copy, [20 x i32]* %1, [20 x i32]* %x_copy, [20 x i32]* %2, [20 x i32]* %y_copy, [20 x i32]* %3, [20 x i32]* %tmp_copy)
  ret i32 %8
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([20 x [20 x i32]]* noalias readonly, [20 x [20 x i32]]* noalias align 512, [20 x i32]* noalias readonly, [20 x i32]* noalias align 512, [20 x i32]* noalias readonly, [20 x i32]* noalias align 512, [20 x i32]* noalias readonly, [20 x i32]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a20a20i32([20 x [20 x i32]]* align 512 %1, [20 x [20 x i32]]* %0)
  call fastcc void @onebyonecpy_hls.p0a20i32([20 x i32]* align 512 %3, [20 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a20i32([20 x i32]* align 512 %5, [20 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0a20i32([20 x i32]* align 512 %7, [20 x i32]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a20a20i32([20 x [20 x i32]]* noalias align 512, [20 x [20 x i32]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [20 x [20 x i32]]* %0, null
  %3 = icmp eq [20 x [20 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [20 x [20 x i32]], [20 x [20 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [20 x [20 x i32]], [20 x [20 x i32]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i32, i32* %src.addr68, align 4
  store i32 %5, i32* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 20
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a20i32([20 x i32]* noalias align 512, [20 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [20 x i32]* %0, null
  %3 = icmp eq [20 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [20 x i32], [20 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [20 x i32], [20 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([20 x [20 x i32]]* noalias, [20 x [20 x i32]]* noalias readonly align 512, [20 x i32]* noalias, [20 x i32]* noalias readonly align 512, [20 x i32]* noalias, [20 x i32]* noalias readonly align 512, [20 x i32]* noalias, [20 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a20a20i32([20 x [20 x i32]]* %0, [20 x [20 x i32]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a20i32([20 x i32]* %2, [20 x i32]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a20i32([20 x i32]* %4, [20 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a20i32([20 x i32]* %6, [20 x i32]* align 512 %7)
  ret void
}

declare i32 @apatb_atax_hw([20 x i32]*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([20 x [20 x i32]]* noalias, [20 x [20 x i32]]* noalias readonly align 512, [20 x i32]* noalias, [20 x i32]* noalias readonly align 512, [20 x i32]* noalias, [20 x i32]* noalias readonly align 512, [20 x i32]* noalias, [20 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a20i32([20 x i32]* %4, [20 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a20i32([20 x i32]* %6, [20 x i32]* align 512 %7)
  ret void
}

define i32 @atax_hw_stub_wrapper([20 x i32]*, i32*, i32*, i32*) #4 {
entry:
  %4 = bitcast [20 x i32]* %0 to [20 x [20 x i32]]*
  %5 = bitcast i32* %1 to [20 x i32]*
  %6 = bitcast i32* %2 to [20 x i32]*
  %7 = bitcast i32* %3 to [20 x i32]*
  call void @copy_out([20 x [20 x i32]]* null, [20 x [20 x i32]]* %4, [20 x i32]* null, [20 x i32]* %5, [20 x i32]* null, [20 x i32]* %6, [20 x i32]* null, [20 x i32]* %7)
  %8 = bitcast [20 x [20 x i32]]* %4 to [20 x i32]*
  %9 = bitcast [20 x i32]* %5 to i32*
  %10 = bitcast [20 x i32]* %6 to i32*
  %11 = bitcast [20 x i32]* %7 to i32*
  %12 = call i32 @atax_hw_stub([20 x i32]* %8, i32* %9, i32* %10, i32* %11)
  call void @copy_in([20 x [20 x i32]]* null, [20 x [20 x i32]]* %4, [20 x i32]* null, [20 x i32]* %5, [20 x i32]* null, [20 x i32]* %6, [20 x i32]* null, [20 x i32]* %7)
  ret i32 %12
}

declare i32 @atax_hw_stub([20 x i32]*, i32*, i32*, i32*)

attributes #0 = { argmemonly noinline "fpga.wrapper.func"="wrapper" }
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
