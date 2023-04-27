; ModuleID = 'C:/Users/Elija/AppData/Roaming/Xilinx/Vitis/3mm/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly noinline
define void @apatb_kernel_3mm_ir([10 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="10" %A, [10 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="10" %B, [10 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="10" %C, [10 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="10" %D, [10 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="10" %E, [10 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="10" %F, [10 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="10" %G) local_unnamed_addr #0 {
entry:
  %A_copy = alloca [10 x [10 x i32]], align 512
  %B_copy = alloca [10 x [10 x i32]], align 512
  %C_copy = alloca [10 x [10 x i32]], align 512
  %D_copy = alloca [10 x [10 x i32]], align 512
  %E_copy = alloca [10 x [10 x i32]], align 512
  %F_copy = alloca [10 x [10 x i32]], align 512
  %G_copy = alloca [10 x [10 x i32]], align 512
  %0 = bitcast [10 x i32]* %A to [10 x [10 x i32]]*
  %1 = bitcast [10 x i32]* %B to [10 x [10 x i32]]*
  %2 = bitcast [10 x i32]* %C to [10 x [10 x i32]]*
  %3 = bitcast [10 x i32]* %D to [10 x [10 x i32]]*
  %4 = bitcast [10 x i32]* %E to [10 x [10 x i32]]*
  %5 = bitcast [10 x i32]* %F to [10 x [10 x i32]]*
  %6 = bitcast [10 x i32]* %G to [10 x [10 x i32]]*
  call fastcc void @copy_in([10 x [10 x i32]]* nonnull %0, [10 x [10 x i32]]* nonnull align 512 %A_copy, [10 x [10 x i32]]* nonnull %1, [10 x [10 x i32]]* nonnull align 512 %B_copy, [10 x [10 x i32]]* nonnull %2, [10 x [10 x i32]]* nonnull align 512 %C_copy, [10 x [10 x i32]]* nonnull %3, [10 x [10 x i32]]* nonnull align 512 %D_copy, [10 x [10 x i32]]* nonnull %4, [10 x [10 x i32]]* nonnull align 512 %E_copy, [10 x [10 x i32]]* nonnull %5, [10 x [10 x i32]]* nonnull align 512 %F_copy, [10 x [10 x i32]]* nonnull %6, [10 x [10 x i32]]* nonnull align 512 %G_copy)
  %7 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A_copy, i32 0, i32 0
  %8 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %B_copy, i32 0, i32 0
  %9 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %C_copy, i32 0, i32 0
  %10 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %D_copy, i32 0, i32 0
  %11 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %E_copy, i32 0, i32 0
  %12 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %F_copy, i32 0, i32 0
  %13 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %G_copy, i32 0, i32 0
  call void @apatb_kernel_3mm_hw([10 x i32]* %7, [10 x i32]* %8, [10 x i32]* %9, [10 x i32]* %10, [10 x i32]* %11, [10 x i32]* %12, [10 x i32]* %13)
  call void @copy_back([10 x [10 x i32]]* %0, [10 x [10 x i32]]* %A_copy, [10 x [10 x i32]]* %1, [10 x [10 x i32]]* %B_copy, [10 x [10 x i32]]* %2, [10 x [10 x i32]]* %C_copy, [10 x [10 x i32]]* %3, [10 x [10 x i32]]* %D_copy, [10 x [10 x i32]]* %4, [10 x [10 x i32]]* %E_copy, [10 x [10 x i32]]* %5, [10 x [10 x i32]]* %F_copy, [10 x [10 x i32]]* %6, [10 x [10 x i32]]* %G_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([10 x [10 x i32]]* noalias readonly, [10 x [10 x i32]]* noalias align 512, [10 x [10 x i32]]* noalias readonly, [10 x [10 x i32]]* noalias align 512, [10 x [10 x i32]]* noalias readonly, [10 x [10 x i32]]* noalias align 512, [10 x [10 x i32]]* noalias readonly, [10 x [10 x i32]]* noalias align 512, [10 x [10 x i32]]* noalias readonly, [10 x [10 x i32]]* noalias align 512, [10 x [10 x i32]]* noalias readonly, [10 x [10 x i32]]* noalias align 512, [10 x [10 x i32]]* noalias readonly, [10 x [10 x i32]]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* align 512 %1, [10 x [10 x i32]]* %0)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* align 512 %3, [10 x [10 x i32]]* %2)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* align 512 %5, [10 x [10 x i32]]* %4)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* align 512 %7, [10 x [10 x i32]]* %6)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* align 512 %9, [10 x [10 x i32]]* %8)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* align 512 %11, [10 x [10 x i32]]* %10)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* align 512 %13, [10 x [10 x i32]]* %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* noalias align 512, [10 x [10 x i32]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [10 x [10 x i32]]* %0, null
  %3 = icmp eq [10 x [10 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i32, i32* %src.addr68, align 4
  store i32 %5, i32* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 10
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512, [10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512, [10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512, [10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512, [10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512, [10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512, [10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* %0, [10 x [10 x i32]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* %2, [10 x [10 x i32]]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* %4, [10 x [10 x i32]]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* %6, [10 x [10 x i32]]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* %8, [10 x [10 x i32]]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* %10, [10 x [10 x i32]]* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* %12, [10 x [10 x i32]]* align 512 %13)
  ret void
}

declare void @apatb_kernel_3mm_hw([10 x i32]*, [10 x i32]*, [10 x i32]*, [10 x i32]*, [10 x i32]*, [10 x i32]*, [10 x i32]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512, [10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512, [10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512, [10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512, [10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512, [10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512, [10 x [10 x i32]]* noalias, [10 x [10 x i32]]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* %8, [10 x [10 x i32]]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* %10, [10 x [10 x i32]]* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0a10a10i32([10 x [10 x i32]]* %12, [10 x [10 x i32]]* align 512 %13)
  ret void
}

define void @kernel_3mm_hw_stub_wrapper([10 x i32]*, [10 x i32]*, [10 x i32]*, [10 x i32]*, [10 x i32]*, [10 x i32]*, [10 x i32]*) #4 {
entry:
  %7 = bitcast [10 x i32]* %0 to [10 x [10 x i32]]*
  %8 = bitcast [10 x i32]* %1 to [10 x [10 x i32]]*
  %9 = bitcast [10 x i32]* %2 to [10 x [10 x i32]]*
  %10 = bitcast [10 x i32]* %3 to [10 x [10 x i32]]*
  %11 = bitcast [10 x i32]* %4 to [10 x [10 x i32]]*
  %12 = bitcast [10 x i32]* %5 to [10 x [10 x i32]]*
  %13 = bitcast [10 x i32]* %6 to [10 x [10 x i32]]*
  call void @copy_out([10 x [10 x i32]]* null, [10 x [10 x i32]]* %7, [10 x [10 x i32]]* null, [10 x [10 x i32]]* %8, [10 x [10 x i32]]* null, [10 x [10 x i32]]* %9, [10 x [10 x i32]]* null, [10 x [10 x i32]]* %10, [10 x [10 x i32]]* null, [10 x [10 x i32]]* %11, [10 x [10 x i32]]* null, [10 x [10 x i32]]* %12, [10 x [10 x i32]]* null, [10 x [10 x i32]]* %13)
  %14 = bitcast [10 x [10 x i32]]* %7 to [10 x i32]*
  %15 = bitcast [10 x [10 x i32]]* %8 to [10 x i32]*
  %16 = bitcast [10 x [10 x i32]]* %9 to [10 x i32]*
  %17 = bitcast [10 x [10 x i32]]* %10 to [10 x i32]*
  %18 = bitcast [10 x [10 x i32]]* %11 to [10 x i32]*
  %19 = bitcast [10 x [10 x i32]]* %12 to [10 x i32]*
  %20 = bitcast [10 x [10 x i32]]* %13 to [10 x i32]*
  call void @kernel_3mm_hw_stub([10 x i32]* %14, [10 x i32]* %15, [10 x i32]* %16, [10 x i32]* %17, [10 x i32]* %18, [10 x i32]* %19, [10 x i32]* %20)
  call void @copy_in([10 x [10 x i32]]* null, [10 x [10 x i32]]* %7, [10 x [10 x i32]]* null, [10 x [10 x i32]]* %8, [10 x [10 x i32]]* null, [10 x [10 x i32]]* %9, [10 x [10 x i32]]* null, [10 x [10 x i32]]* %10, [10 x [10 x i32]]* null, [10 x [10 x i32]]* %11, [10 x [10 x i32]]* null, [10 x [10 x i32]]* %12, [10 x [10 x i32]]* null, [10 x [10 x i32]]* %13)
  ret void
}

declare void @kernel_3mm_hw_stub([10 x i32]*, [10 x i32]*, [10 x i32]*, [10 x i32]*, [10 x i32]*, [10 x i32]*, [10 x i32]*)

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
