; ModuleID = 'C:/Users/Elija/AppData/Roaming/Xilinx/Vitis/covariance/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define i32 @apatb_covariance_ir([32 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="32" %data, [32 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="32" %cov) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %data_copy = bitcast i8* %malloccall to [32 x [32 x i32]]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %cov_copy = bitcast i8* %malloccall1 to [32 x [32 x i32]]*
  %0 = bitcast [32 x i32]* %data to [32 x [32 x i32]]*
  %1 = bitcast [32 x i32]* %cov to [32 x [32 x i32]]*
  call fastcc void @copy_in([32 x [32 x i32]]* nonnull %0, [32 x [32 x i32]]* %data_copy, [32 x [32 x i32]]* nonnull %1, [32 x [32 x i32]]* %cov_copy)
  %2 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %data_copy, i32 0, i32 0
  %3 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %cov_copy, i32 0, i32 0
  %4 = call i32 @apatb_covariance_hw([32 x i32]* %2, [32 x i32]* %3)
  call void @copy_back([32 x [32 x i32]]* %0, [32 x [32 x i32]]* %data_copy, [32 x [32 x i32]]* %1, [32 x [32 x i32]]* %cov_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret i32 %4
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([32 x [32 x i32]]* noalias readonly, [32 x [32 x i32]]* noalias, [32 x [32 x i32]]* noalias readonly, [32 x [32 x i32]]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32a32i32([32 x [32 x i32]]* %1, [32 x [32 x i32]]* %0)
  call fastcc void @onebyonecpy_hls.p0a32a32i32([32 x [32 x i32]]* %3, [32 x [32 x i32]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a32a32i32([32 x [32 x i32]]* noalias, [32 x [32 x i32]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [32 x [32 x i32]]* %0, null
  %3 = icmp eq [32 x [32 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [32 x [32 x i32]], [32 x [32 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [32 x [32 x i32]], [32 x [32 x i32]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i32, i32* %src.addr68, align 4
  store i32 %5, i32* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 32
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([32 x [32 x i32]]* noalias, [32 x [32 x i32]]* noalias readonly, [32 x [32 x i32]]* noalias, [32 x [32 x i32]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32a32i32([32 x [32 x i32]]* %0, [32 x [32 x i32]]* %1)
  call fastcc void @onebyonecpy_hls.p0a32a32i32([32 x [32 x i32]]* %2, [32 x [32 x i32]]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare i32 @apatb_covariance_hw([32 x i32]*, [32 x i32]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([32 x [32 x i32]]* noalias, [32 x [32 x i32]]* noalias readonly, [32 x [32 x i32]]* noalias, [32 x [32 x i32]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32a32i32([32 x [32 x i32]]* %0, [32 x [32 x i32]]* %1)
  call fastcc void @onebyonecpy_hls.p0a32a32i32([32 x [32 x i32]]* %2, [32 x [32 x i32]]* %3)
  ret void
}

define i32 @covariance_hw_stub_wrapper([32 x i32]*, [32 x i32]*) #4 {
entry:
  %2 = bitcast [32 x i32]* %0 to [32 x [32 x i32]]*
  %3 = bitcast [32 x i32]* %1 to [32 x [32 x i32]]*
  call void @copy_out([32 x [32 x i32]]* null, [32 x [32 x i32]]* %2, [32 x [32 x i32]]* null, [32 x [32 x i32]]* %3)
  %4 = bitcast [32 x [32 x i32]]* %2 to [32 x i32]*
  %5 = bitcast [32 x [32 x i32]]* %3 to [32 x i32]*
  %6 = call i32 @covariance_hw_stub([32 x i32]* %4, [32 x i32]* %5)
  call void @copy_in([32 x [32 x i32]]* null, [32 x [32 x i32]]* %2, [32 x [32 x i32]]* null, [32 x [32 x i32]]* %3)
  ret i32 %6
}

declare i32 @covariance_hw_stub([32 x i32]*, [32 x i32]*)

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
