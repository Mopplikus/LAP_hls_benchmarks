; ModuleID = 'C:/Users/Elija/AppData/Roaming/Xilinx/Vitis/matvec/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly noinline
define void @apatb_matvec_ir([30 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="30" %M, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="30" %V, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="30" %Out) local_unnamed_addr #0 {
entry:
  %M_copy = alloca [30 x [30 x i32]], align 512
  %V_copy = alloca [30 x i32], align 512
  %Out_copy = alloca [30 x i32], align 512
  %0 = bitcast [30 x i32]* %M to [30 x [30 x i32]]*
  %1 = bitcast i32* %V to [30 x i32]*
  %2 = bitcast i32* %Out to [30 x i32]*
  call fastcc void @copy_in([30 x [30 x i32]]* nonnull %0, [30 x [30 x i32]]* nonnull align 512 %M_copy, [30 x i32]* nonnull %1, [30 x i32]* nonnull align 512 %V_copy, [30 x i32]* nonnull %2, [30 x i32]* nonnull align 512 %Out_copy)
  %3 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %M_copy, i32 0, i32 0
  %4 = getelementptr inbounds [30 x i32], [30 x i32]* %V_copy, i32 0, i32 0
  %5 = getelementptr inbounds [30 x i32], [30 x i32]* %Out_copy, i32 0, i32 0
  call void @apatb_matvec_hw([30 x i32]* %3, i32* %4, i32* %5)
  call void @copy_back([30 x [30 x i32]]* %0, [30 x [30 x i32]]* %M_copy, [30 x i32]* %1, [30 x i32]* %V_copy, [30 x i32]* %2, [30 x i32]* %Out_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([30 x [30 x i32]]* noalias readonly, [30 x [30 x i32]]* noalias align 512, [30 x i32]* noalias readonly, [30 x i32]* noalias align 512, [30 x i32]* noalias readonly, [30 x i32]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a30a30i32([30 x [30 x i32]]* align 512 %1, [30 x [30 x i32]]* %0)
  call fastcc void @onebyonecpy_hls.p0a30i32([30 x i32]* align 512 %3, [30 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a30i32([30 x i32]* align 512 %5, [30 x i32]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a30a30i32([30 x [30 x i32]]* noalias align 512, [30 x [30 x i32]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [30 x [30 x i32]]* %0, null
  %3 = icmp eq [30 x [30 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [30 x [30 x i32]], [30 x [30 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [30 x [30 x i32]], [30 x [30 x i32]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i32, i32* %src.addr68, align 4
  store i32 %5, i32* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 30
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 30
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a30i32([30 x i32]* noalias align 512, [30 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [30 x i32]* %0, null
  %3 = icmp eq [30 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [30 x i32], [30 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [30 x i32], [30 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 30
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([30 x [30 x i32]]* noalias, [30 x [30 x i32]]* noalias readonly align 512, [30 x i32]* noalias, [30 x i32]* noalias readonly align 512, [30 x i32]* noalias, [30 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a30a30i32([30 x [30 x i32]]* %0, [30 x [30 x i32]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a30i32([30 x i32]* %2, [30 x i32]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a30i32([30 x i32]* %4, [30 x i32]* align 512 %5)
  ret void
}

declare void @apatb_matvec_hw([30 x i32]*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([30 x [30 x i32]]* noalias, [30 x [30 x i32]]* noalias readonly align 512, [30 x i32]* noalias, [30 x i32]* noalias readonly align 512, [30 x i32]* noalias, [30 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a30i32([30 x i32]* %4, [30 x i32]* align 512 %5)
  ret void
}

define void @matvec_hw_stub_wrapper([30 x i32]*, i32*, i32*) #4 {
entry:
  %3 = bitcast [30 x i32]* %0 to [30 x [30 x i32]]*
  %4 = bitcast i32* %1 to [30 x i32]*
  %5 = bitcast i32* %2 to [30 x i32]*
  call void @copy_out([30 x [30 x i32]]* null, [30 x [30 x i32]]* %3, [30 x i32]* null, [30 x i32]* %4, [30 x i32]* null, [30 x i32]* %5)
  %6 = bitcast [30 x [30 x i32]]* %3 to [30 x i32]*
  %7 = bitcast [30 x i32]* %4 to i32*
  %8 = bitcast [30 x i32]* %5 to i32*
  call void @matvec_hw_stub([30 x i32]* %6, i32* %7, i32* %8)
  call void @copy_in([30 x [30 x i32]]* null, [30 x [30 x i32]]* %3, [30 x i32]* null, [30 x i32]* %4, [30 x i32]* null, [30 x i32]* %5)
  ret void
}

declare void @matvec_hw_stub([30 x i32]*, i32*, i32*)

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
