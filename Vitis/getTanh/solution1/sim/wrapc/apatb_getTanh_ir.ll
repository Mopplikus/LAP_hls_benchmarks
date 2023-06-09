; ModuleID = 'C:/Users/Elija/AppData/Roaming/Xilinx/Vitis/getTanh/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly noinline
define i32 @apatb_getTanh_ir(i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="1000" %A, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1000" %addr) local_unnamed_addr #0 {
entry:
  %A_copy = alloca [1000 x i32], align 512
  %addr_copy = alloca [1000 x i32], align 512
  %0 = bitcast i32* %A to [1000 x i32]*
  %1 = bitcast i32* %addr to [1000 x i32]*
  call fastcc void @copy_in([1000 x i32]* nonnull %0, [1000 x i32]* nonnull align 512 %A_copy, [1000 x i32]* nonnull %1, [1000 x i32]* nonnull align 512 %addr_copy)
  %2 = getelementptr inbounds [1000 x i32], [1000 x i32]* %A_copy, i32 0, i32 0
  %3 = getelementptr inbounds [1000 x i32], [1000 x i32]* %addr_copy, i32 0, i32 0
  %4 = call i32 @apatb_getTanh_hw(i32* %2, i32* %3)
  call void @copy_back([1000 x i32]* %0, [1000 x i32]* %A_copy, [1000 x i32]* %1, [1000 x i32]* %addr_copy)
  ret i32 %4
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1000 x i32]* noalias readonly, [1000 x i32]* noalias align 512, [1000 x i32]* noalias readonly, [1000 x i32]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* align 512 %1, [1000 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* align 512 %3, [1000 x i32]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* noalias align 512, [1000 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1000 x i32]* %0, null
  %3 = icmp eq [1000 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1000 x i32], [1000 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1000 x i32], [1000 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1000 x i32]* noalias, [1000 x i32]* noalias readonly align 512, [1000 x i32]* noalias, [1000 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* %0, [1000 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* %2, [1000 x i32]* align 512 %3)
  ret void
}

declare i32 @apatb_getTanh_hw(i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1000 x i32]* noalias, [1000 x i32]* noalias readonly align 512, [1000 x i32]* noalias, [1000 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1000i32([1000 x i32]* %0, [1000 x i32]* align 512 %1)
  ret void
}

define i32 @getTanh_hw_stub_wrapper(i32*, i32*) #4 {
entry:
  %2 = bitcast i32* %0 to [1000 x i32]*
  %3 = bitcast i32* %1 to [1000 x i32]*
  call void @copy_out([1000 x i32]* null, [1000 x i32]* %2, [1000 x i32]* null, [1000 x i32]* %3)
  %4 = bitcast [1000 x i32]* %2 to i32*
  %5 = bitcast [1000 x i32]* %3 to i32*
  %6 = call i32 @getTanh_hw_stub(i32* %4, i32* %5)
  call void @copy_in([1000 x i32]* null, [1000 x i32]* %2, [1000 x i32]* null, [1000 x i32]* %3)
  ret i32 %6
}

declare i32 @getTanh_hw_stub(i32*, i32*)

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
