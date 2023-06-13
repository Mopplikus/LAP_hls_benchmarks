`ifndef _NOC2_NPP_DDRMC5_DEFINE_VH_
`define _NOC2_NPP_DDRMC5_DEFINE_VH_

`define NOC2_DDRMC5_RETURN_ID_WIDTH  2
`define NOC2_NPS_DDRMC5_VC           5

`define connect_npp_in_if(if_num) \
   assign noc2dmc[``if_num``].noc_valid        = IF_NOC2DMC_IN_``if_num``_NOC_VALID;\
   assign noc2dmc[``if_num``].noc_valid_en     = IF_NOC2DMC_IN_``if_num``_NOC_VALID_EN;\
   assign noc2dmc[``if_num``].noc_flit         = IF_NOC2DMC_IN_``if_num``_NOC_FLIT;\
   assign noc2dmc[``if_num``].noc_flit_en      = IF_NOC2DMC_IN_``if_num``_NOC_FLIT_EN;\
   assign noc2dmc[``if_num``].noc_credit_rdy   = IF_NOC2DMC_IN_``if_num``_NOC_CREDIT_RDY;\
   assign noc2dmc[``if_num``].noc_pdest_id     = IF_NOC2DMC_IN_``if_num``_NOC_PDEST_ID;\
   assign IF_NOC2DMC_IN_``if_num``_NOC_CREDIT_RETURN    = noc2dmc[``if_num``].noc_credit_return;\
   assign IF_NOC2DMC_IN_``if_num``_NOC_CREDIT_RETURN_EN = noc2dmc[``if_num``].noc_credit_return_en;\

`define connect_npp_out_if(if_num) \
   assign IF_DMC2NOC_OUT_``if_num``_NOC_VALID       = dmc2noc[``if_num``].noc_valid;\
   assign IF_DMC2NOC_OUT_``if_num``_NOC_VALID_EN    = dmc2noc[``if_num``].noc_valid_en;\
   assign IF_DMC2NOC_OUT_``if_num``_NOC_FLIT        = dmc2noc[``if_num``].noc_flit;\
   assign IF_DMC2NOC_OUT_``if_num``_NOC_FLIT_EN     = dmc2noc[``if_num``].noc_flit_en;\
   assign IF_DMC2NOC_OUT_``if_num``_NOC_CREDIT_RDY  = dmc2noc[``if_num``].noc_credit_rdy;\
   assign IF_DMC2NOC_OUT_``if_num``_NOC_PDEST_ID    = dmc2noc[``if_num``].noc_pdest_id;\
   assign dmc2noc[``if_num``].noc_credit_return     = IF_DMC2NOC_OUT_``if_num``_NOC_CREDIT_RETURN;\
   assign dmc2noc[``if_num``].noc_credit_return_en  = IF_DMC2NOC_OUT_``if_num``_NOC_CREDIT_RETURN_EN;\


`endif
