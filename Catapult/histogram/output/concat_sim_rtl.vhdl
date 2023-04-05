
--------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_in_wait_v1.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_in_wait_pkg_v1 IS

COMPONENT ccs_in_wait_v1
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    idat   : OUT std_logic_vector(width-1 DOWNTO 0);
    rdy    : OUT std_logic;
    ivld   : OUT std_logic;
    dat    : IN  std_logic_vector(width-1 DOWNTO 0);
    irdy   : IN  std_logic;
    vld    : IN  std_logic
   );
END COMPONENT;

END ccs_in_wait_pkg_v1;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY ccs_in_wait_v1 IS
  GENERIC (
    rscid : INTEGER;
    width : INTEGER
  );
  PORT (
    idat  : OUT std_logic_vector(width-1 DOWNTO 0);
    rdy   : OUT std_logic;
    ivld  : OUT std_logic;
    dat   : IN  std_logic_vector(width-1 DOWNTO 0);
    irdy  : IN  std_logic;
    vld   : IN  std_logic
  );
END ccs_in_wait_v1;

ARCHITECTURE beh OF ccs_in_wait_v1 IS
BEGIN

  idat <= dat;
  rdy  <= irdy;
  ivld <= vld;

END beh;


--------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_out_wait_v1.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_out_wait_pkg_v1 IS

COMPONENT ccs_out_wait_v1
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    dat    : OUT std_logic_vector(width-1 DOWNTO 0);
    irdy   : OUT std_logic;
    vld    : OUT std_logic;
    idat   : IN  std_logic_vector(width-1 DOWNTO 0);
    rdy    : IN  std_logic;
    ivld   : IN  std_logic
  );
END COMPONENT;

END ccs_out_wait_pkg_v1;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY ccs_out_wait_v1 IS
  GENERIC (
    rscid : INTEGER;
    width : INTEGER
  );
  PORT (
    dat   : OUT std_logic_vector(width-1 DOWNTO 0);
    irdy  : OUT std_logic;
    vld   : OUT std_logic;
    idat  : IN  std_logic_vector(width-1 DOWNTO 0);
    rdy   : IN  std_logic;
    ivld  : IN  std_logic
  );
END ccs_out_wait_v1;

ARCHITECTURE beh OF ccs_out_wait_v1 IS
BEGIN

  dat  <= idat;
  irdy <= rdy;
  vld  <= ivld;

END beh;


--------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/mgc_io_sync_v2.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
PACKAGE mgc_io_sync_pkg_v2 IS

COMPONENT mgc_io_sync_v2
  GENERIC (
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    ld       : IN    std_logic;
    lz       : OUT   std_logic
  );
END COMPONENT;

END mgc_io_sync_pkg_v2;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY mgc_io_sync_v2 IS
  GENERIC (
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    ld       : IN    std_logic;
    lz       : OUT   std_logic
  );
END mgc_io_sync_v2;

ARCHITECTURE beh OF mgc_io_sync_v2 IS
BEGIN

  lz <= ld;

END beh;


--------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/hls_pkgs/src/funcs.vhd 

-- a package of attributes that give verification tools a hint about
-- the function being implemented
PACKAGE attributes IS
  ATTRIBUTE CALYPTO_FUNC : string;
  ATTRIBUTE CALYPTO_DATA_ORDER : string;
end attributes;

-----------------------------------------------------------------------
-- Package that declares synthesizable functions needed for RTL output
-----------------------------------------------------------------------

LIBRARY ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

PACKAGE funcs IS

-----------------------------------------------------------------
-- utility functions
-----------------------------------------------------------------

   FUNCTION TO_STDLOGIC(arg1: BOOLEAN) RETURN STD_LOGIC;
--   FUNCTION TO_STDLOGIC(arg1: STD_ULOGIC_VECTOR(0 DOWNTO 0)) RETURN STD_LOGIC;
   FUNCTION TO_STDLOGIC(arg1: STD_LOGIC_VECTOR(0 DOWNTO 0)) RETURN STD_LOGIC;
   FUNCTION TO_STDLOGIC(arg1: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION TO_STDLOGIC(arg1: SIGNED(0 DOWNTO 0)) RETURN STD_LOGIC;
   FUNCTION TO_STDLOGICVECTOR(arg1: STD_LOGIC) RETURN STD_LOGIC_VECTOR;

   FUNCTION maximum(arg1, arg2 : INTEGER) RETURN INTEGER;
   FUNCTION minimum(arg1, arg2 : INTEGER) RETURN INTEGER;
   FUNCTION ifeqsel(arg1, arg2, seleq, selne : INTEGER) RETURN INTEGER;
   FUNCTION resolve_std_logic_vector(input1: STD_LOGIC_VECTOR; input2 : STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR;
   
-----------------------------------------------------------------
-- logic functions
-----------------------------------------------------------------

   FUNCTION and_s(inputs: STD_LOGIC_VECTOR) RETURN STD_LOGIC;
   FUNCTION or_s (inputs: STD_LOGIC_VECTOR) RETURN STD_LOGIC;
   FUNCTION xor_s(inputs: STD_LOGIC_VECTOR) RETURN STD_LOGIC;

   FUNCTION and_v(inputs: STD_LOGIC_VECTOR; olen: POSITIVE) RETURN STD_LOGIC_VECTOR;
   FUNCTION or_v (inputs: STD_LOGIC_VECTOR; olen: POSITIVE) RETURN STD_LOGIC_VECTOR;
   FUNCTION xor_v(inputs: STD_LOGIC_VECTOR; olen: POSITIVE) RETURN STD_LOGIC_VECTOR;

-----------------------------------------------------------------
-- mux functions
-----------------------------------------------------------------

   FUNCTION mux_s(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC       ) RETURN STD_LOGIC;
   FUNCTION mux_s(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR) RETURN STD_LOGIC;
   FUNCTION mux_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC       ) RETURN STD_LOGIC_VECTOR;
   FUNCTION mux_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR;

-----------------------------------------------------------------
-- latch functions
-----------------------------------------------------------------
   FUNCTION lat_s(dinput: STD_LOGIC       ; clk: STD_LOGIC; doutput: STD_LOGIC       ) RETURN STD_LOGIC;
   FUNCTION lat_v(dinput: STD_LOGIC_VECTOR; clk: STD_LOGIC; doutput: STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR;

-----------------------------------------------------------------
-- tristate functions
-----------------------------------------------------------------
--   FUNCTION tri_s(dinput: STD_LOGIC       ; control: STD_LOGIC) RETURN STD_LOGIC;
--   FUNCTION tri_v(dinput: STD_LOGIC_VECTOR; control: STD_LOGIC) RETURN STD_LOGIC_VECTOR;

-----------------------------------------------------------------
-- compare functions returning STD_LOGIC
-- in contrast to the functions returning boolean
-----------------------------------------------------------------

   FUNCTION "=" (l, r: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION "=" (l, r: SIGNED  ) RETURN STD_LOGIC;
   FUNCTION "/="(l, r: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION "/="(l, r: SIGNED  ) RETURN STD_LOGIC;
   FUNCTION "<="(l, r: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION "<="(l, r: SIGNED  ) RETURN STD_LOGIC;
   FUNCTION "<" (l, r: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION "<" (l, r: SIGNED  ) RETURN STD_LOGIC;
   FUNCTION ">="(l, r: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION ">="(l, r: SIGNED  ) RETURN STD_LOGIC;
   FUNCTION ">" (l, r: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION ">" (l, r: SIGNED  ) RETURN STD_LOGIC;

   -- RETURN 2 bits (left => lt, right => eq)
   FUNCTION cmp (l, r: STD_LOGIC_VECTOR) RETURN STD_LOGIC;

-----------------------------------------------------------------
-- Vectorized Overloaded Arithmetic Operators
-----------------------------------------------------------------

   FUNCTION faccu(arg: UNSIGNED; width: NATURAL) RETURN UNSIGNED;
 
   FUNCTION fabs(arg1: SIGNED  ) RETURN UNSIGNED;

   FUNCTION "/"  (l, r: UNSIGNED) RETURN UNSIGNED;
   FUNCTION "MOD"(l, r: UNSIGNED) RETURN UNSIGNED;
   FUNCTION "REM"(l, r: UNSIGNED) RETURN UNSIGNED;
   FUNCTION "**" (l, r: UNSIGNED) RETURN UNSIGNED;

   FUNCTION "/"  (l, r: SIGNED  ) RETURN SIGNED  ;
   FUNCTION "MOD"(l, r: SIGNED  ) RETURN SIGNED  ;
   FUNCTION "REM"(l, r: SIGNED  ) RETURN SIGNED  ;
   FUNCTION "**" (l, r: SIGNED  ) RETURN SIGNED  ;

-----------------------------------------------------------------
--               S H I F T   F U C T I O N S
-- negative shift shifts the opposite direction
-- *_stdar functions use shift functions from std_logic_arith
-----------------------------------------------------------------

   FUNCTION fshl(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshl(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED;

   FUNCTION fshl(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED  ;
   FUNCTION fshr(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED  ;
   FUNCTION fshl(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED  ;
   FUNCTION fshr(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED  ;

   FUNCTION fshl(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshl(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;

   FUNCTION frot(arg1: STD_LOGIC_VECTOR; arg2: STD_LOGIC_VECTOR; signd2: BOOLEAN; sdir: INTEGER range -1 TO 1) RETURN STD_LOGIC_VECTOR;
   FUNCTION frol(arg1: STD_LOGIC_VECTOR; arg2: UNSIGNED) RETURN STD_LOGIC_VECTOR;
   FUNCTION fror(arg1: STD_LOGIC_VECTOR; arg2: UNSIGNED) RETURN STD_LOGIC_VECTOR;
   FUNCTION frol(arg1: STD_LOGIC_VECTOR; arg2: SIGNED  ) RETURN STD_LOGIC_VECTOR;
   FUNCTION fror(arg1: STD_LOGIC_VECTOR; arg2: SIGNED  ) RETURN STD_LOGIC_VECTOR;

   -----------------------------------------------------------------
   -- *_stdar functions use shift functions from std_logic_arith
   -----------------------------------------------------------------
   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED;

   FUNCTION fshl_stdar(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED  ;
   FUNCTION fshr_stdar(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED  ;
   FUNCTION fshl_stdar(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED  ;
   FUNCTION fshr_stdar(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED  ;

   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;

-----------------------------------------------------------------
-- indexing functions: LSB always has index 0
-----------------------------------------------------------------

   FUNCTION readindex(vec: STD_LOGIC_VECTOR; index: INTEGER                 ) RETURN STD_LOGIC;
   FUNCTION readslice(vec: STD_LOGIC_VECTOR; index: INTEGER; width: POSITIVE) RETURN STD_LOGIC_VECTOR;

   FUNCTION writeindex(vec: STD_LOGIC_VECTOR; dinput: STD_LOGIC       ; index: INTEGER) RETURN STD_LOGIC_VECTOR;
   FUNCTION n_bits(p: NATURAL) RETURN POSITIVE;
   --FUNCTION writeslice(vec: STD_LOGIC_VECTOR; dinput: STD_LOGIC_VECTOR; index: INTEGER) RETURN STD_LOGIC_VECTOR;
   FUNCTION writeslice(vec: STD_LOGIC_VECTOR; dinput: STD_LOGIC_VECTOR; enable: STD_LOGIC_VECTOR; byte_width: INTEGER;  index: INTEGER) RETURN STD_LOGIC_VECTOR ;

   FUNCTION ceil_log2(size : NATURAL) return NATURAL;
   FUNCTION bits(size : NATURAL) return NATURAL;    

   PROCEDURE csa(a, b, c: IN INTEGER; s, cout: OUT STD_LOGIC_VECTOR);
   PROCEDURE csha(a, b: IN INTEGER; s, cout: OUT STD_LOGIC_VECTOR);
   
END funcs;


--------------------------- B O D Y ----------------------------


PACKAGE BODY funcs IS

-----------------------------------------------------------------
-- utility functions
-----------------------------------------------------------------

   FUNCTION TO_STDLOGIC(arg1: BOOLEAN) RETURN STD_LOGIC IS
     BEGIN IF arg1 THEN RETURN '1'; ELSE RETURN '0'; END IF; END;
--   FUNCTION TO_STDLOGIC(arg1: STD_ULOGIC_VECTOR(0 DOWNTO 0)) RETURN STD_LOGIC IS
--     BEGIN RETURN arg1(0); END;
   FUNCTION TO_STDLOGIC(arg1: STD_LOGIC_VECTOR(0 DOWNTO 0)) RETURN STD_LOGIC IS
     BEGIN RETURN arg1(0); END;
   FUNCTION TO_STDLOGIC(arg1: UNSIGNED) RETURN STD_LOGIC IS
     BEGIN RETURN arg1(0); END;
   FUNCTION TO_STDLOGIC(arg1: SIGNED(0 DOWNTO 0)) RETURN STD_LOGIC IS
     BEGIN RETURN arg1(0); END;

   FUNCTION TO_STDLOGICVECTOR(arg1: STD_LOGIC) RETURN STD_LOGIC_VECTOR IS
     VARIABLE result: STD_LOGIC_VECTOR(0 DOWNTO 0);
   BEGIN
     result := (0 => arg1);
     RETURN result;
   END;

   FUNCTION maximum (arg1,arg2: INTEGER) RETURN INTEGER IS
   BEGIN
     IF(arg1 > arg2) THEN
       RETURN(arg1) ;
     ELSE
       RETURN(arg2) ;
     END IF;
   END;

   FUNCTION minimum (arg1,arg2: INTEGER) RETURN INTEGER IS
   BEGIN
     IF(arg1 < arg2) THEN
       RETURN(arg1) ;
     ELSE
       RETURN(arg2) ;
     END IF;
   END;

   FUNCTION ifeqsel(arg1, arg2, seleq, selne : INTEGER) RETURN INTEGER IS
   BEGIN
     IF(arg1 = arg2) THEN
       RETURN(seleq) ;
     ELSE
       RETURN(selne) ;
     END IF;
   END;

   FUNCTION resolve_std_logic_vector(input1: STD_LOGIC_VECTOR; input2: STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR IS
     CONSTANT len: INTEGER := input1'LENGTH;
     ALIAS input1a: STD_LOGIC_VECTOR(len-1 DOWNTO 0) IS input1;
     ALIAS input2a: STD_LOGIC_VECTOR(len-1 DOWNTO 0) IS input2;
     VARIABLE result: STD_LOGIC_VECTOR(len-1 DOWNTO 0);
   BEGIN
     result := (others => '0');
     --synopsys translate_off
     FOR i IN len-1 DOWNTO 0 LOOP
       result(i) := resolved(input1a(i) & input2a(i));
     END LOOP;
     --synopsys translate_on
     RETURN result;
   END;

   FUNCTION resolve_unsigned(input1: UNSIGNED; input2: UNSIGNED) RETURN UNSIGNED IS
   BEGIN RETURN UNSIGNED(resolve_std_logic_vector(STD_LOGIC_VECTOR(input1), STD_LOGIC_VECTOR(input2))); END;

   FUNCTION resolve_signed(input1: SIGNED; input2: SIGNED) RETURN SIGNED IS
   BEGIN RETURN SIGNED(resolve_std_logic_vector(STD_LOGIC_VECTOR(input1), STD_LOGIC_VECTOR(input2))); END;

-----------------------------------------------------------------
-- Logic Functions
-----------------------------------------------------------------

   FUNCTION "not"(arg1: UNSIGNED) RETURN UNSIGNED IS
     BEGIN RETURN UNSIGNED(not STD_LOGIC_VECTOR(arg1)); END;
   FUNCTION and_s(inputs: STD_LOGIC_VECTOR) RETURN STD_LOGIC IS
     BEGIN RETURN TO_STDLOGIC(and_v(inputs, 1)); END;
   FUNCTION or_s (inputs: STD_LOGIC_VECTOR) RETURN STD_LOGIC IS
     BEGIN RETURN TO_STDLOGIC(or_v(inputs, 1)); END;
   FUNCTION xor_s(inputs: STD_LOGIC_VECTOR) RETURN STD_LOGIC IS
     BEGIN RETURN TO_STDLOGIC(xor_v(inputs, 1)); END;

   FUNCTION and_v(inputs: STD_LOGIC_VECTOR; olen: POSITIVE) RETURN STD_LOGIC_VECTOR IS
     CONSTANT ilen: POSITIVE := inputs'LENGTH;
     CONSTANT ilenM1: POSITIVE := ilen-1; --2.1.6.3
     CONSTANT olenM1: INTEGER := olen-1; --2.1.6.3
     CONSTANT ilenMolenM1: INTEGER := ilen-olen-1; --2.1.6.3
     VARIABLE inputsx: STD_LOGIC_VECTOR(ilen-1 DOWNTO 0);
     CONSTANT icnt2: POSITIVE:= inputs'LENGTH/olen;
     VARIABLE result: STD_LOGIC_VECTOR(olen-1 DOWNTO 0);
   BEGIN
     --synopsys translate_off
     ASSERT ilen REM olen = 0 SEVERITY FAILURE;
     --synopsys translate_on
     inputsx := inputs;
     result := inputsx(olenM1 DOWNTO 0);
     FOR i IN icnt2-1 DOWNTO 1 LOOP
       inputsx(ilenMolenM1 DOWNTO 0) := inputsx(ilenM1 DOWNTO olen);
       result := result AND inputsx(olenM1 DOWNTO 0);
     END LOOP;
     RETURN result;
   END;

   FUNCTION or_v(inputs: STD_LOGIC_VECTOR; olen: POSITIVE) RETURN STD_LOGIC_VECTOR IS
     CONSTANT ilen: POSITIVE := inputs'LENGTH;
     CONSTANT ilenM1: POSITIVE := ilen-1; --2.1.6.3
     CONSTANT olenM1: INTEGER := olen-1; --2.1.6.3
     CONSTANT ilenMolenM1: INTEGER := ilen-olen-1; --2.1.6.3
     VARIABLE inputsx: STD_LOGIC_VECTOR(ilen-1 DOWNTO 0);
     CONSTANT icnt2: POSITIVE:= inputs'LENGTH/olen;
     VARIABLE result: STD_LOGIC_VECTOR(olen-1 DOWNTO 0);
   BEGIN
     --synopsys translate_off
     ASSERT ilen REM olen = 0 SEVERITY FAILURE;
     --synopsys translate_on
     inputsx := inputs;
     result := inputsx(olenM1 DOWNTO 0);
     -- this if is added as a quick fix for a bug in catapult evaluating the loop even if inputs'LENGTH==1
     -- see dts0100971279
     IF icnt2 > 1 THEN
       FOR i IN icnt2-1 DOWNTO 1 LOOP
         inputsx(ilenMolenM1 DOWNTO 0) := inputsx(ilenM1 DOWNTO olen);
         result := result OR inputsx(olenM1 DOWNTO 0);
       END LOOP;
     END IF;
     RETURN result;
   END;

   FUNCTION xor_v(inputs: STD_LOGIC_VECTOR; olen: POSITIVE) RETURN STD_LOGIC_VECTOR IS
     CONSTANT ilen: POSITIVE := inputs'LENGTH;
     CONSTANT ilenM1: POSITIVE := ilen-1; --2.1.6.3
     CONSTANT olenM1: INTEGER := olen-1; --2.1.6.3
     CONSTANT ilenMolenM1: INTEGER := ilen-olen-1; --2.1.6.3
     VARIABLE inputsx: STD_LOGIC_VECTOR(ilen-1 DOWNTO 0);
     CONSTANT icnt2: POSITIVE:= inputs'LENGTH/olen;
     VARIABLE result: STD_LOGIC_VECTOR(olen-1 DOWNTO 0);
   BEGIN
     --synopsys translate_off
     ASSERT ilen REM olen = 0 SEVERITY FAILURE;
     --synopsys translate_on
     inputsx := inputs;
     result := inputsx(olenM1 DOWNTO 0);
     FOR i IN icnt2-1 DOWNTO 1 LOOP
       inputsx(ilenMolenM1 DOWNTO 0) := inputsx(ilenM1 DOWNTO olen);
       result := result XOR inputsx(olenM1 DOWNTO 0);
     END LOOP;
     RETURN result;
   END;

-----------------------------------------------------------------
-- Muxes
-----------------------------------------------------------------
   
   FUNCTION mux_sel2_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(1 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'LENGTH / 4;
     ALIAS    inputs0: STD_LOGIC_VECTOR( inputs'LENGTH-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector( size-1 DOWNTO 0);
   BEGIN
     -- for synthesis only
     -- simulation inconsistent with control values 'UXZHLWD'
     CASE sel IS
     WHEN "00" =>
       result := inputs0(1*size-1 DOWNTO 0*size);
     WHEN "01" =>
       result := inputs0(2*size-1 DOWNTO 1*size);
     WHEN "10" =>
       result := inputs0(3*size-1 DOWNTO 2*size);
     WHEN "11" =>
       result := inputs0(4*size-1 DOWNTO 3*size);
     WHEN others =>
       result := (others => 'X');
     END CASE;
     RETURN result;
   END;
   
   FUNCTION mux_sel3_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(2 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'LENGTH / 8;
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'LENGTH-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector(size-1 DOWNTO 0);
   BEGIN
     -- for synthesis only
     -- simulation inconsistent with control values 'UXZHLWD'
     CASE sel IS
     WHEN "000" =>
       result := inputs0(1*size-1 DOWNTO 0*size);
     WHEN "001" =>
       result := inputs0(2*size-1 DOWNTO 1*size);
     WHEN "010" =>
       result := inputs0(3*size-1 DOWNTO 2*size);
     WHEN "011" =>
       result := inputs0(4*size-1 DOWNTO 3*size);
     WHEN "100" =>
       result := inputs0(5*size-1 DOWNTO 4*size);
     WHEN "101" =>
       result := inputs0(6*size-1 DOWNTO 5*size);
     WHEN "110" =>
       result := inputs0(7*size-1 DOWNTO 6*size);
     WHEN "111" =>
       result := inputs0(8*size-1 DOWNTO 7*size);
     WHEN others =>
       result := (others => 'X');
     END CASE;
     RETURN result;
   END;
   
   FUNCTION mux_sel4_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(3 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'LENGTH / 16;
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'LENGTH-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector(size-1 DOWNTO 0);
   BEGIN
     -- for synthesis only
     -- simulation inconsistent with control values 'UXZHLWD'
     CASE sel IS
     WHEN "0000" =>
       result := inputs0( 1*size-1 DOWNTO 0*size);
     WHEN "0001" =>
       result := inputs0( 2*size-1 DOWNTO 1*size);
     WHEN "0010" =>
       result := inputs0( 3*size-1 DOWNTO 2*size);
     WHEN "0011" =>
       result := inputs0( 4*size-1 DOWNTO 3*size);
     WHEN "0100" =>
       result := inputs0( 5*size-1 DOWNTO 4*size);
     WHEN "0101" =>
       result := inputs0( 6*size-1 DOWNTO 5*size);
     WHEN "0110" =>
       result := inputs0( 7*size-1 DOWNTO 6*size);
     WHEN "0111" =>
       result := inputs0( 8*size-1 DOWNTO 7*size);
     WHEN "1000" =>
       result := inputs0( 9*size-1 DOWNTO 8*size);
     WHEN "1001" =>
       result := inputs0( 10*size-1 DOWNTO 9*size);
     WHEN "1010" =>
       result := inputs0( 11*size-1 DOWNTO 10*size);
     WHEN "1011" =>
       result := inputs0( 12*size-1 DOWNTO 11*size);
     WHEN "1100" =>
       result := inputs0( 13*size-1 DOWNTO 12*size);
     WHEN "1101" =>
       result := inputs0( 14*size-1 DOWNTO 13*size);
     WHEN "1110" =>
       result := inputs0( 15*size-1 DOWNTO 14*size);
     WHEN "1111" =>
       result := inputs0( 16*size-1 DOWNTO 15*size);
     WHEN others =>
       result := (others => 'X');
     END CASE;
     RETURN result;
   END;
   
   FUNCTION mux_sel5_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(4 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'LENGTH / 32;
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'LENGTH-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector(size-1 DOWNTO 0 );
   BEGIN
     -- for synthesis only
     -- simulation inconsistent with control values 'UXZHLWD'
     CASE sel IS
     WHEN "00000" =>
       result := inputs0( 1*size-1 DOWNTO 0*size);
     WHEN "00001" =>
       result := inputs0( 2*size-1 DOWNTO 1*size);
     WHEN "00010" =>
       result := inputs0( 3*size-1 DOWNTO 2*size);
     WHEN "00011" =>
       result := inputs0( 4*size-1 DOWNTO 3*size);
     WHEN "00100" =>
       result := inputs0( 5*size-1 DOWNTO 4*size);
     WHEN "00101" =>
       result := inputs0( 6*size-1 DOWNTO 5*size);
     WHEN "00110" =>
       result := inputs0( 7*size-1 DOWNTO 6*size);
     WHEN "00111" =>
       result := inputs0( 8*size-1 DOWNTO 7*size);
     WHEN "01000" =>
       result := inputs0( 9*size-1 DOWNTO 8*size);
     WHEN "01001" =>
       result := inputs0( 10*size-1 DOWNTO 9*size);
     WHEN "01010" =>
       result := inputs0( 11*size-1 DOWNTO 10*size);
     WHEN "01011" =>
       result := inputs0( 12*size-1 DOWNTO 11*size);
     WHEN "01100" =>
       result := inputs0( 13*size-1 DOWNTO 12*size);
     WHEN "01101" =>
       result := inputs0( 14*size-1 DOWNTO 13*size);
     WHEN "01110" =>
       result := inputs0( 15*size-1 DOWNTO 14*size);
     WHEN "01111" =>
       result := inputs0( 16*size-1 DOWNTO 15*size);
     WHEN "10000" =>
       result := inputs0( 17*size-1 DOWNTO 16*size);
     WHEN "10001" =>
       result := inputs0( 18*size-1 DOWNTO 17*size);
     WHEN "10010" =>
       result := inputs0( 19*size-1 DOWNTO 18*size);
     WHEN "10011" =>
       result := inputs0( 20*size-1 DOWNTO 19*size);
     WHEN "10100" =>
       result := inputs0( 21*size-1 DOWNTO 20*size);
     WHEN "10101" =>
       result := inputs0( 22*size-1 DOWNTO 21*size);
     WHEN "10110" =>
       result := inputs0( 23*size-1 DOWNTO 22*size);
     WHEN "10111" =>
       result := inputs0( 24*size-1 DOWNTO 23*size);
     WHEN "11000" =>
       result := inputs0( 25*size-1 DOWNTO 24*size);
     WHEN "11001" =>
       result := inputs0( 26*size-1 DOWNTO 25*size);
     WHEN "11010" =>
       result := inputs0( 27*size-1 DOWNTO 26*size);
     WHEN "11011" =>
       result := inputs0( 28*size-1 DOWNTO 27*size);
     WHEN "11100" =>
       result := inputs0( 29*size-1 DOWNTO 28*size);
     WHEN "11101" =>
       result := inputs0( 30*size-1 DOWNTO 29*size);
     WHEN "11110" =>
       result := inputs0( 31*size-1 DOWNTO 30*size);
     WHEN "11111" =>
       result := inputs0( 32*size-1 DOWNTO 31*size);
     WHEN others =>
       result := (others => 'X');
     END CASE;
     RETURN result;
   END;
   
   FUNCTION mux_sel6_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(5 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'LENGTH / 64;
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'LENGTH-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector(size-1 DOWNTO 0);
   BEGIN
     -- for synthesis only
     -- simulation inconsistent with control values 'UXZHLWD'
     CASE sel IS
     WHEN "000000" =>
       result := inputs0( 1*size-1 DOWNTO 0*size);
     WHEN "000001" =>
       result := inputs0( 2*size-1 DOWNTO 1*size);
     WHEN "000010" =>
       result := inputs0( 3*size-1 DOWNTO 2*size);
     WHEN "000011" =>
       result := inputs0( 4*size-1 DOWNTO 3*size);
     WHEN "000100" =>
       result := inputs0( 5*size-1 DOWNTO 4*size);
     WHEN "000101" =>
       result := inputs0( 6*size-1 DOWNTO 5*size);
     WHEN "000110" =>
       result := inputs0( 7*size-1 DOWNTO 6*size);
     WHEN "000111" =>
       result := inputs0( 8*size-1 DOWNTO 7*size);
     WHEN "001000" =>
       result := inputs0( 9*size-1 DOWNTO 8*size);
     WHEN "001001" =>
       result := inputs0( 10*size-1 DOWNTO 9*size);
     WHEN "001010" =>
       result := inputs0( 11*size-1 DOWNTO 10*size);
     WHEN "001011" =>
       result := inputs0( 12*size-1 DOWNTO 11*size);
     WHEN "001100" =>
       result := inputs0( 13*size-1 DOWNTO 12*size);
     WHEN "001101" =>
       result := inputs0( 14*size-1 DOWNTO 13*size);
     WHEN "001110" =>
       result := inputs0( 15*size-1 DOWNTO 14*size);
     WHEN "001111" =>
       result := inputs0( 16*size-1 DOWNTO 15*size);
     WHEN "010000" =>
       result := inputs0( 17*size-1 DOWNTO 16*size);
     WHEN "010001" =>
       result := inputs0( 18*size-1 DOWNTO 17*size);
     WHEN "010010" =>
       result := inputs0( 19*size-1 DOWNTO 18*size);
     WHEN "010011" =>
       result := inputs0( 20*size-1 DOWNTO 19*size);
     WHEN "010100" =>
       result := inputs0( 21*size-1 DOWNTO 20*size);
     WHEN "010101" =>
       result := inputs0( 22*size-1 DOWNTO 21*size);
     WHEN "010110" =>
       result := inputs0( 23*size-1 DOWNTO 22*size);
     WHEN "010111" =>
       result := inputs0( 24*size-1 DOWNTO 23*size);
     WHEN "011000" =>
       result := inputs0( 25*size-1 DOWNTO 24*size);
     WHEN "011001" =>
       result := inputs0( 26*size-1 DOWNTO 25*size);
     WHEN "011010" =>
       result := inputs0( 27*size-1 DOWNTO 26*size);
     WHEN "011011" =>
       result := inputs0( 28*size-1 DOWNTO 27*size);
     WHEN "011100" =>
       result := inputs0( 29*size-1 DOWNTO 28*size);
     WHEN "011101" =>
       result := inputs0( 30*size-1 DOWNTO 29*size);
     WHEN "011110" =>
       result := inputs0( 31*size-1 DOWNTO 30*size);
     WHEN "011111" =>
       result := inputs0( 32*size-1 DOWNTO 31*size);
     WHEN "100000" =>
       result := inputs0( 33*size-1 DOWNTO 32*size);
     WHEN "100001" =>
       result := inputs0( 34*size-1 DOWNTO 33*size);
     WHEN "100010" =>
       result := inputs0( 35*size-1 DOWNTO 34*size);
     WHEN "100011" =>
       result := inputs0( 36*size-1 DOWNTO 35*size);
     WHEN "100100" =>
       result := inputs0( 37*size-1 DOWNTO 36*size);
     WHEN "100101" =>
       result := inputs0( 38*size-1 DOWNTO 37*size);
     WHEN "100110" =>
       result := inputs0( 39*size-1 DOWNTO 38*size);
     WHEN "100111" =>
       result := inputs0( 40*size-1 DOWNTO 39*size);
     WHEN "101000" =>
       result := inputs0( 41*size-1 DOWNTO 40*size);
     WHEN "101001" =>
       result := inputs0( 42*size-1 DOWNTO 41*size);
     WHEN "101010" =>
       result := inputs0( 43*size-1 DOWNTO 42*size);
     WHEN "101011" =>
       result := inputs0( 44*size-1 DOWNTO 43*size);
     WHEN "101100" =>
       result := inputs0( 45*size-1 DOWNTO 44*size);
     WHEN "101101" =>
       result := inputs0( 46*size-1 DOWNTO 45*size);
     WHEN "101110" =>
       result := inputs0( 47*size-1 DOWNTO 46*size);
     WHEN "101111" =>
       result := inputs0( 48*size-1 DOWNTO 47*size);
     WHEN "110000" =>
       result := inputs0( 49*size-1 DOWNTO 48*size);
     WHEN "110001" =>
       result := inputs0( 50*size-1 DOWNTO 49*size);
     WHEN "110010" =>
       result := inputs0( 51*size-1 DOWNTO 50*size);
     WHEN "110011" =>
       result := inputs0( 52*size-1 DOWNTO 51*size);
     WHEN "110100" =>
       result := inputs0( 53*size-1 DOWNTO 52*size);
     WHEN "110101" =>
       result := inputs0( 54*size-1 DOWNTO 53*size);
     WHEN "110110" =>
       result := inputs0( 55*size-1 DOWNTO 54*size);
     WHEN "110111" =>
       result := inputs0( 56*size-1 DOWNTO 55*size);
     WHEN "111000" =>
       result := inputs0( 57*size-1 DOWNTO 56*size);
     WHEN "111001" =>
       result := inputs0( 58*size-1 DOWNTO 57*size);
     WHEN "111010" =>
       result := inputs0( 59*size-1 DOWNTO 58*size);
     WHEN "111011" =>
       result := inputs0( 60*size-1 DOWNTO 59*size);
     WHEN "111100" =>
       result := inputs0( 61*size-1 DOWNTO 60*size);
     WHEN "111101" =>
       result := inputs0( 62*size-1 DOWNTO 61*size);
     WHEN "111110" =>
       result := inputs0( 63*size-1 DOWNTO 62*size);
     WHEN "111111" =>
       result := inputs0( 64*size-1 DOWNTO 63*size);
     WHEN others =>
       result := (others => 'X');
     END CASE;
     RETURN result;
   END;

   FUNCTION mux_s(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC) RETURN STD_LOGIC IS
   BEGIN RETURN TO_STDLOGIC(mux_v(inputs, sel)); END;

   FUNCTION mux_s(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR) RETURN STD_LOGIC IS
   BEGIN RETURN TO_STDLOGIC(mux_v(inputs, sel)); END;

   FUNCTION mux_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC) RETURN STD_LOGIC_VECTOR IS  --pragma hls_map_to_operator mux
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'LENGTH-1 DOWNTO 0) IS inputs;
     CONSTANT size   : POSITIVE := inputs'LENGTH / 2;
     CONSTANT olen   : POSITIVE := inputs'LENGTH / 2;
     VARIABLE result : STD_LOGIC_VECTOR(olen-1 DOWNTO 0);
   BEGIN
     --synopsys translate_off
     ASSERT inputs'LENGTH = olen * 2 SEVERITY FAILURE;
     --synopsys translate_on
       CASE sel IS
       WHEN '1'
     --synopsys translate_off
            | 'H'
     --synopsys translate_on
            =>
         result := inputs0( size-1 DOWNTO 0);
       WHEN '0' 
     --synopsys translate_off
            | 'L'
     --synopsys translate_on
            =>
         result := inputs0(2*size-1  DOWNTO size);
       WHEN others =>
         --synopsys translate_off
         result := resolve_std_logic_vector(inputs0(size-1 DOWNTO 0), inputs0( 2*size-1 DOWNTO size));
         --synopsys translate_on
       END CASE;
       RETURN result;
   END;
--   BEGIN RETURN mux_v(inputs, TO_STDLOGICVECTOR(sel)); END;

   FUNCTION mux_v(inputs: STD_LOGIC_VECTOR; sel : STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR IS --pragma hls_map_to_operator mux
     ALIAS    inputs0: STD_LOGIC_VECTOR( inputs'LENGTH-1 DOWNTO 0) IS inputs;
     ALIAS    sel0   : STD_LOGIC_VECTOR( sel'LENGTH-1 DOWNTO 0 ) IS sel;

     VARIABLE sellen : INTEGER RANGE 2-sel'LENGTH TO sel'LENGTH;
     CONSTANT size   : POSITIVE := inputs'LENGTH / 2;
     CONSTANT olen   : POSITIVE := inputs'LENGTH / 2**sel'LENGTH;
     VARIABLE result : STD_LOGIC_VECTOR(olen-1 DOWNTO 0);
     TYPE inputs_array_type is array(natural range <>) of std_logic_vector( olen - 1 DOWNTO 0);
     VARIABLE inputs_array : inputs_array_type( 2**sel'LENGTH - 1 DOWNTO 0);
   BEGIN
     sellen := sel'LENGTH;
     --synopsys translate_off
     ASSERT inputs'LENGTH = olen * 2**sellen SEVERITY FAILURE;
     sellen := 2-sellen;
     --synopsys translate_on
     CASE sellen IS
     WHEN 1 =>
       CASE sel0(0) IS

       WHEN '1' 
     --synopsys translate_off
            | 'H'
     --synopsys translate_on
            =>
         result := inputs0(  size-1 DOWNTO 0);
       WHEN '0' 
     --synopsys translate_off
            | 'L'
     --synopsys translate_on
            =>
         result := inputs0(2*size-1 DOWNTO size);
       WHEN others =>
         --synopsys translate_off
         result := resolve_std_logic_vector(inputs0( size-1 DOWNTO 0), inputs0( 2*size-1 DOWNTO size));
         --synopsys translate_on
       END CASE;
     WHEN 2 =>
       result := mux_sel2_v(inputs, not sel);
     WHEN 3 =>
       result := mux_sel3_v(inputs, not sel);
     WHEN 4 =>
       result := mux_sel4_v(inputs, not sel);
     WHEN 5 =>
       result := mux_sel5_v(inputs, not sel);
     WHEN 6 =>
       result := mux_sel6_v(inputs, not sel);
     WHEN others =>
       -- synopsys translate_off
       IF(Is_X(sel0)) THEN
         result := (others => 'X');
       ELSE
       -- synopsys translate_on
         FOR i in 0 to 2**sel'LENGTH - 1 LOOP
           inputs_array(i) := inputs0( ((i + 1) * olen) - 1  DOWNTO i*olen);
         END LOOP;
         result := inputs_array(CONV_INTEGER( (UNSIGNED(NOT sel0)) ));
       -- synopsys translate_off
       END IF;
       -- synopsys translate_on
     END CASE;
     RETURN result;
   END;

 
-----------------------------------------------------------------
-- Latches
-----------------------------------------------------------------

   FUNCTION lat_s(dinput: STD_LOGIC; clk: STD_LOGIC; doutput: STD_LOGIC) RETURN STD_LOGIC IS
   BEGIN RETURN mux_s(STD_LOGIC_VECTOR'(doutput & dinput), clk); END;

   FUNCTION lat_v(dinput: STD_LOGIC_VECTOR ; clk: STD_LOGIC; doutput: STD_LOGIC_VECTOR ) RETURN STD_LOGIC_VECTOR IS
   BEGIN
     --synopsys translate_off
     ASSERT dinput'LENGTH = doutput'LENGTH SEVERITY FAILURE;
     --synopsys translate_on
     RETURN mux_v(doutput & dinput, clk);
   END;

-----------------------------------------------------------------
-- Tri-States
-----------------------------------------------------------------
--   FUNCTION tri_s(dinput: STD_LOGIC; control: STD_LOGIC) RETURN STD_LOGIC IS
--   BEGIN RETURN TO_STDLOGIC(tri_v(TO_STDLOGICVECTOR(dinput), control)); END;
--
--   FUNCTION tri_v(dinput: STD_LOGIC_VECTOR ; control: STD_LOGIC) RETURN STD_LOGIC_VECTOR IS
--     VARIABLE result: STD_LOGIC_VECTOR(dinput'range);
--   BEGIN
--     CASE control IS
--     WHEN '0' | 'L' =>
--       result := (others => 'Z');
--     WHEN '1' | 'H' =>
--       FOR i IN dinput'range LOOP
--         result(i) := to_UX01(dinput(i));
--       END LOOP;
--     WHEN others =>
--       -- synopsys translate_off
--       result := (others => 'X');
--       -- synopsys translate_on
--     END CASE;
--     RETURN result;
--   END;

-----------------------------------------------------------------
-- compare functions returning STD_LOGIC
-- in contrast to the functions returning boolean
-----------------------------------------------------------------

   FUNCTION "=" (l, r: UNSIGNED) RETURN STD_LOGIC IS
     BEGIN RETURN not or_s(STD_LOGIC_VECTOR(l) xor STD_LOGIC_VECTOR(r)); END;
   FUNCTION "=" (l, r: SIGNED  ) RETURN STD_LOGIC IS
     BEGIN RETURN not or_s(STD_LOGIC_VECTOR(l) xor STD_LOGIC_VECTOR(r)); END;
   FUNCTION "/="(l, r: UNSIGNED) RETURN STD_LOGIC IS
     BEGIN RETURN or_s(STD_LOGIC_VECTOR(l) xor STD_LOGIC_VECTOR(r)); END;
   FUNCTION "/="(l, r: SIGNED  ) RETURN STD_LOGIC IS
     BEGIN RETURN or_s(STD_LOGIC_VECTOR(l) xor STD_LOGIC_VECTOR(r)); END;

   FUNCTION "<" (l, r: UNSIGNED) RETURN STD_LOGIC IS
     VARIABLE diff: UNSIGNED(l'LENGTH DOWNTO 0);
   BEGIN
     --synopsys translate_off
     ASSERT l'LENGTH = r'LENGTH SEVERITY FAILURE;
     --synopsys translate_on
     diff := ('0'&l) - ('0'&r);
     RETURN diff(l'LENGTH);
   END;
   FUNCTION "<"(l, r: SIGNED  ) RETURN STD_LOGIC IS
   BEGIN
     RETURN (UNSIGNED(l) < UNSIGNED(r)) xor (l(l'LEFT) xor r(r'LEFT));
   END;

   FUNCTION "<="(l, r: UNSIGNED) RETURN STD_LOGIC IS
     BEGIN RETURN not STD_LOGIC'(r < l); END;
   FUNCTION "<=" (l, r: SIGNED  ) RETURN STD_LOGIC IS
     BEGIN RETURN not STD_LOGIC'(r < l); END;
   FUNCTION ">" (l, r: UNSIGNED) RETURN STD_LOGIC IS
     BEGIN RETURN r < l; END;
   FUNCTION ">"(l, r: SIGNED  ) RETURN STD_LOGIC IS
     BEGIN RETURN r < l; END;
   FUNCTION ">="(l, r: UNSIGNED) RETURN STD_LOGIC IS
     BEGIN RETURN not STD_LOGIC'(l < r); END;
   FUNCTION ">=" (l, r: SIGNED  ) RETURN STD_LOGIC IS
     BEGIN RETURN not STD_LOGIC'(l < r); END;

   FUNCTION cmp (l, r: STD_LOGIC_VECTOR) RETURN STD_LOGIC IS
   BEGIN
     --synopsys translate_off
     ASSERT l'LENGTH = r'LENGTH SEVERITY FAILURE;
     --synopsys translate_on
     RETURN not or_s(l xor r);
   END;

-----------------------------------------------------------------
-- Vectorized Overloaded Arithmetic Operators
-----------------------------------------------------------------

   --some functions to placate spyglass
   FUNCTION mult_natural(a,b : NATURAL) RETURN NATURAL IS
   BEGIN
     return a*b;
   END mult_natural;

   FUNCTION div_natural(a,b : NATURAL) RETURN NATURAL IS
   BEGIN
     return a/b;
   END div_natural;

   FUNCTION mod_natural(a,b : NATURAL) RETURN NATURAL IS
   BEGIN
     return a mod b;
   END mod_natural;

   FUNCTION add_unsigned(a,b : UNSIGNED) RETURN UNSIGNED IS
   BEGIN
     return a+b;
   END add_unsigned;

   FUNCTION sub_unsigned(a,b : UNSIGNED) RETURN UNSIGNED IS
   BEGIN
     return a-b;
   END sub_unsigned;

   FUNCTION sub_int(a,b : INTEGER) RETURN INTEGER IS
   BEGIN
     return a-b;
   END sub_int;

   FUNCTION concat_0(b : UNSIGNED) RETURN UNSIGNED IS
   BEGIN
     return '0' & b;
   END concat_0;

   FUNCTION concat_uns(a,b : UNSIGNED) RETURN UNSIGNED IS
   BEGIN
     return a&b;
   END concat_uns;

   FUNCTION concat_vect(a,b : STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR IS
   BEGIN
     return a&b;
   END concat_vect;





   FUNCTION faccu(arg: UNSIGNED; width: NATURAL) RETURN UNSIGNED IS
     CONSTANT ninps : NATURAL := arg'LENGTH / width;
     ALIAS    arg0  : UNSIGNED(arg'LENGTH-1 DOWNTO 0) IS arg;
     VARIABLE result: UNSIGNED(width-1 DOWNTO 0);
     VARIABLE from  : INTEGER;
     VARIABLE dto   : INTEGER;
   BEGIN
     --synopsys translate_off
     ASSERT arg'LENGTH = width * ninps SEVERITY FAILURE;
     --synopsys translate_on
     result := (OTHERS => '0');
     FOR i IN ninps-1 DOWNTO 0 LOOP
       --result := result + arg0((i+1)*width-1 DOWNTO i*width);
       from := mult_natural((i+1), width)-1; --2.1.6.3
       dto  := mult_natural(i,width); --2.1.6.3
       result := add_unsigned(result , arg0(from DOWNTO dto) );
     END LOOP;
     RETURN result;
   END faccu;

   FUNCTION  fabs (arg1: SIGNED) RETURN UNSIGNED IS
   BEGIN
     CASE arg1(arg1'LEFT) IS
     WHEN '1'
     --synopsys translate_off
          | 'H'
     --synopsys translate_on
       =>
       RETURN UNSIGNED'("0") - UNSIGNED(arg1);
     WHEN '0'
     --synopsys translate_off
          | 'L'
     --synopsys translate_on
       =>
       RETURN UNSIGNED(arg1);
     WHEN others =>
       RETURN resolve_unsigned(UNSIGNED(arg1), UNSIGNED'("0") - UNSIGNED(arg1));
     END CASE;
   END;

   PROCEDURE divmod(l, r: UNSIGNED; rdiv, rmod: OUT UNSIGNED) IS
     CONSTANT llen: INTEGER := l'LENGTH;
     CONSTANT rlen: INTEGER := r'LENGTH;
     CONSTANT llen_plus_rlen: INTEGER := llen + rlen;
     VARIABLE lbuf: UNSIGNED(llen+rlen-1 DOWNTO 0);
     VARIABLE diff: UNSIGNED(rlen DOWNTO 0);
   BEGIN
     --synopsys translate_off
     ASSERT rdiv'LENGTH = llen AND rmod'LENGTH = rlen SEVERITY FAILURE;
     --synopsys translate_on
     lbuf := (others => '0');
     lbuf(llen-1 DOWNTO 0) := l;
     FOR i IN rdiv'range LOOP
       diff := sub_unsigned(lbuf(llen_plus_rlen-1 DOWNTO llen-1) ,(concat_0(r)));
       rdiv(i) := not diff(rlen);
       IF diff(rlen) = '0' THEN
         lbuf(llen_plus_rlen-1 DOWNTO llen-1) := diff;
       END IF;
       lbuf(llen_plus_rlen-1 DOWNTO 1) := lbuf(llen_plus_rlen-2 DOWNTO 0);
     END LOOP;
     rmod := lbuf(llen_plus_rlen-1 DOWNTO llen);
   END divmod;

   FUNCTION "/"  (l, r: UNSIGNED) RETURN UNSIGNED IS
     VARIABLE rdiv: UNSIGNED(l'LENGTH-1 DOWNTO 0);
     VARIABLE rmod: UNSIGNED(r'LENGTH-1 DOWNTO 0);
   BEGIN
     divmod(l, r, rdiv, rmod);
     RETURN rdiv;
   END "/";

   FUNCTION "MOD"(l, r: UNSIGNED) RETURN UNSIGNED IS
     VARIABLE rdiv: UNSIGNED(l'LENGTH-1 DOWNTO 0);
     VARIABLE rmod: UNSIGNED(r'LENGTH-1 DOWNTO 0);
   BEGIN
     divmod(l, r, rdiv, rmod);
     RETURN rmod;
   END;

   FUNCTION "REM"(l, r: UNSIGNED) RETURN UNSIGNED IS
     BEGIN RETURN l MOD r; END;

   FUNCTION "/"  (l, r: SIGNED  ) RETURN SIGNED  IS
     VARIABLE rdiv: UNSIGNED(l'LENGTH-1 DOWNTO 0);
     VARIABLE rmod: UNSIGNED(r'LENGTH-1 DOWNTO 0);
   BEGIN
     divmod(fabs(l), fabs(r), rdiv, rmod);
     IF to_X01(l(l'LEFT)) /= to_X01(r(r'LEFT)) THEN
       rdiv := UNSIGNED'("0") - rdiv;
     END IF;
     RETURN SIGNED(rdiv); -- overflow problem "1000" / "11"
   END "/";

   FUNCTION "MOD"(l, r: SIGNED  ) RETURN SIGNED  IS
     VARIABLE rdiv: UNSIGNED(l'LENGTH-1 DOWNTO 0);
     VARIABLE rmod: UNSIGNED(r'LENGTH-1 DOWNTO 0);
     CONSTANT rnul: UNSIGNED(r'LENGTH-1 DOWNTO 0) := (others => '0');
   BEGIN
     divmod(fabs(l), fabs(r), rdiv, rmod);
     IF to_X01(l(l'LEFT)) = '1' THEN
       rmod := UNSIGNED'("0") - rmod;
     END IF;
     IF rmod /= rnul AND to_X01(l(l'LEFT)) /= to_X01(r(r'LEFT)) THEN
       rmod := UNSIGNED(r) + rmod;
     END IF;
     RETURN SIGNED(rmod);
   END "MOD";

   FUNCTION "REM"(l, r: SIGNED  ) RETURN SIGNED  IS
     VARIABLE rdiv: UNSIGNED(l'LENGTH-1 DOWNTO 0);
     VARIABLE rmod: UNSIGNED(r'LENGTH-1 DOWNTO 0);
   BEGIN
     divmod(fabs(l), fabs(r), rdiv, rmod);
     IF to_X01(l(l'LEFT)) = '1' THEN
       rmod := UNSIGNED'("0") - rmod;
     END IF;
     RETURN SIGNED(rmod);
   END "REM";

   FUNCTION mult_unsigned(l,r : UNSIGNED) return UNSIGNED is
   BEGIN
     return l*r; 
   END mult_unsigned;

   FUNCTION "**" (l, r : UNSIGNED) RETURN UNSIGNED IS
     CONSTANT llen  : NATURAL := l'LENGTH;
     VARIABLE result: UNSIGNED(llen-1 DOWNTO 0);
     VARIABLE fak   : UNSIGNED(llen-1 DOWNTO 0);
   BEGIN
     fak := l;
     result := (others => '0'); result(0) := '1';
     FOR i IN r'reverse_range LOOP
       --was:result := UNSIGNED(mux_v(STD_LOGIC_VECTOR(result & (result*fak)), r(i)));
       result := UNSIGNED(mux_v(STD_LOGIC_VECTOR( concat_uns(result , mult_unsigned(result,fak) )), r(i)));

       fak := mult_unsigned(fak , fak);
     END LOOP;
     RETURN result;
   END "**";

   FUNCTION "**" (l, r : SIGNED) RETURN SIGNED IS
     CONSTANT rlen  : NATURAL := r'LENGTH;
     ALIAS    r0    : SIGNED(0 TO r'LENGTH-1) IS r;
     VARIABLE result: SIGNED(l'range);
   BEGIN
     CASE r(r'LEFT) IS
     WHEN '0'
   --synopsys translate_off
          | 'L'
   --synopsys translate_on
     =>
       result := SIGNED(UNSIGNED(l) ** UNSIGNED(r0(1 TO r'LENGTH-1)));
     WHEN '1'
   --synopsys translate_off
          | 'H'
   --synopsys translate_on
     =>
       result := (others => '0');
     WHEN others =>
       result := (others => 'X');
     END CASE;
     RETURN result;
   END "**";

-----------------------------------------------------------------
--               S H I F T   F U C T I O N S
-- negative shift shifts the opposite direction
-----------------------------------------------------------------

   FUNCTION add_nat(arg1 : NATURAL; arg2 : NATURAL ) RETURN NATURAL IS
   BEGIN
     return (arg1 + arg2);
   END;
   
--   FUNCTION UNSIGNED_2_BIT_VECTOR(arg1 : NATURAL; arg2 : NATURAL ) RETURN BIT_VECTOR IS
--   BEGIN
--     return (arg1 + arg2);
--   END;
   
   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT ilen: INTEGER := arg1'LENGTH;
     CONSTANT olenM1: INTEGER := olen-1; -- 2.1.6.3
     CONSTANT ilenub: INTEGER := arg1'LENGTH-1;
     CONSTANT len: INTEGER := maximum(ilen, olen);
     VARIABLE result: UNSIGNED(len-1 DOWNTO 0);
   BEGIN
     result := (others => sbit);
     result(ilenub DOWNTO 0) := arg1;
     result := shl(result, arg2);
     RETURN result(olenM1 DOWNTO 0);
   END;

   FUNCTION fshl_stdar(arg1: SIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN SIGNED IS
     CONSTANT ilen: INTEGER := arg1'LENGTH;
     CONSTANT olenM1: INTEGER := olen-1; -- 2.1.6.3
     CONSTANT ilenub: INTEGER := arg1'LENGTH-1;
     CONSTANT len: INTEGER := maximum(ilen, olen);
     VARIABLE result: SIGNED(len-1 DOWNTO 0);
   BEGIN
     result := (others => sbit);
     result(ilenub DOWNTO 0) := arg1;
     result := shl(SIGNED(result), arg2);
     RETURN result(olenM1 DOWNTO 0);
   END;

   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT ilen: INTEGER := arg1'LENGTH;
     CONSTANT olenM1: INTEGER := olen-1; -- 2.1.6.3
     CONSTANT ilenub: INTEGER := arg1'LENGTH-1;
     CONSTANT len: INTEGER := maximum(ilen, olen);
     VARIABLE result: UNSIGNED(len-1 DOWNTO 0);
   BEGIN
     result := (others => sbit);
     result(ilenub DOWNTO 0) := arg1;
     result := shr(result, arg2);
     RETURN result(olenM1 DOWNTO 0);
   END;

   FUNCTION fshr_stdar(arg1: SIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN SIGNED IS
     CONSTANT ilen: INTEGER := arg1'LENGTH;
     CONSTANT olenM1: INTEGER := olen-1; -- 2.1.6.3
     CONSTANT ilenub: INTEGER := arg1'LENGTH-1;
     CONSTANT len: INTEGER := maximum(ilen, olen);
     VARIABLE result: SIGNED(len-1 DOWNTO 0);
   BEGIN
     result := (others => sbit);
     result(ilenub DOWNTO 0) := arg1;
     result := shr(result, arg2);
     RETURN result(olenM1 DOWNTO 0);
   END;

   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT arg1l: NATURAL := arg1'LENGTH - 1;
     ALIAS    arg1x: UNSIGNED(arg1l DOWNTO 0) IS arg1;
     CONSTANT arg2l: NATURAL := arg2'LENGTH - 1;
     ALIAS    arg2x: SIGNED(arg2l DOWNTO 0) IS arg2;
     VARIABLE arg1x_pad: UNSIGNED(arg1l+1 DOWNTO 0);
     VARIABLE result: UNSIGNED(olen-1 DOWNTO 0);
   BEGIN
     result := (others=>'0');
     arg1x_pad(arg1l+1) := sbit;
     arg1x_pad(arg1l downto 0) := arg1x;
     IF arg2l = 0 THEN
       RETURN fshr_stdar(arg1x_pad, UNSIGNED(arg2x), sbit, olen);
     -- ELSIF arg1l = 0 THEN
     --   RETURN fshl(sbit & arg1x, arg2x, sbit, olen);
     ELSE
       CASE arg2x(arg2l) IS
       WHEN '0'
     --synopsys translate_off
            | 'L'
     --synopsys translate_on
       =>
         RETURN fshl_stdar(arg1x_pad, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN '1'
     --synopsys translate_off
            | 'H'
     --synopsys translate_on
       =>
         RETURN fshr_stdar(arg1x_pad(arg1l+1 DOWNTO 1), '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN others =>
         --synopsys translate_off
         result := resolve_unsigned(
           fshl_stdar(arg1x, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit,  olen),
           fshr_stdar(arg1x_pad(arg1l+1 DOWNTO 1), '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen)
         );
         --synopsys translate_on
         RETURN result;
       END CASE;
     END IF;
   END;

   FUNCTION fshl_stdar(arg1: SIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN SIGNED IS
     CONSTANT arg1l: NATURAL := arg1'LENGTH - 1;
     ALIAS    arg1x: SIGNED(arg1l DOWNTO 0) IS arg1;
     CONSTANT arg2l: NATURAL := arg2'LENGTH - 1;
     ALIAS    arg2x: SIGNED(arg2l DOWNTO 0) IS arg2;
     VARIABLE arg1x_pad: SIGNED(arg1l+1 DOWNTO 0);
     VARIABLE result: SIGNED(olen-1 DOWNTO 0);
   BEGIN
     result := (others=>'0');
     arg1x_pad(arg1l+1) := sbit;
     arg1x_pad(arg1l downto 0) := arg1x;
     IF arg2l = 0 THEN
       RETURN fshr_stdar(arg1x_pad, UNSIGNED(arg2x), sbit, olen);
     -- ELSIF arg1l = 0 THEN
     --   RETURN fshl(sbit & arg1x, arg2x, sbit, olen);
     ELSE
       CASE arg2x(arg2l) IS
       WHEN '0'
       --synopsys translate_off
            | 'L'
       --synopsys translate_on
       =>
         RETURN fshl_stdar(arg1x_pad, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN '1'
       --synopsys translate_off
            | 'H'
       --synopsys translate_on
       =>
         RETURN fshr_stdar(arg1x_pad(arg1l+1 DOWNTO 1), '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN others =>
         --synopsys translate_off
         result := resolve_signed(
           fshl_stdar(arg1x, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit,  olen),
           fshr_stdar(arg1x_pad(arg1l+1 DOWNTO 1), '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen)
         );
         --synopsys translate_on
         RETURN result;
       END CASE;
     END IF;
   END;

   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT arg2l: INTEGER := arg2'LENGTH - 1;
     ALIAS    arg2x: SIGNED(arg2l DOWNTO 0) IS arg2;
     VARIABLE result: UNSIGNED(olen-1 DOWNTO 0);
   BEGIN
     result := (others => '0');
     IF arg2l = 0 THEN
       RETURN fshl_stdar(arg1, UNSIGNED(arg2x), olen);
     ELSE
       CASE arg2x(arg2l) IS
       WHEN '0'
       --synopsys translate_off
            | 'L'
       --synopsys translate_on
        =>
         RETURN fshr_stdar(arg1, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN '1'
       --synopsys translate_off
            | 'H'
       --synopsys translate_on
        =>
         RETURN fshl_stdar(arg1 & '0', '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), olen);
       WHEN others =>
         --synopsys translate_off
         result := resolve_unsigned(
           fshr_stdar(arg1, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen),
           fshl_stdar(arg1 & '0', '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), olen)
         );
         --synopsys translate_on
	 return result;
       END CASE;
     END IF;
   END;

   FUNCTION fshr_stdar(arg1: SIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN SIGNED IS
     CONSTANT arg2l: INTEGER := arg2'LENGTH - 1;
     ALIAS    arg2x: SIGNED(arg2l DOWNTO 0) IS arg2;
     VARIABLE result: SIGNED(olen-1 DOWNTO 0);
   BEGIN
     result := (others => '0');
     IF arg2l = 0 THEN
       RETURN fshl_stdar(arg1, UNSIGNED(arg2x), olen);
     ELSE
       CASE arg2x(arg2l) IS
       WHEN '0'
       --synopsys translate_off
            | 'L'
       --synopsys translate_on
       =>
         RETURN fshr_stdar(arg1, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN '1'
       --synopsys translate_off
            | 'H'
       --synopsys translate_on
       =>
         RETURN fshl_stdar(arg1 & '0', '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), olen);
       WHEN others =>
         --synopsys translate_off
         result := resolve_signed(
           fshr_stdar(arg1, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen),
           fshl_stdar(arg1 & '0', '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), olen)
         );
         --synopsys translate_on
	 return result;
       END CASE;
     END IF;
   END;

   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshl_stdar(arg1, arg2, '0', olen); END;
   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshr_stdar(arg1, arg2, '0', olen); END;
   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshl_stdar(arg1, arg2, '0', olen); END;
   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshr_stdar(arg1, arg2, '0', olen); END;

   FUNCTION fshl_stdar(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN fshl_stdar(arg1, arg2, arg1(arg1'LEFT), olen); END;
   FUNCTION fshr_stdar(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN fshr_stdar(arg1, arg2, arg1(arg1'LEFT), olen); END;
   FUNCTION fshl_stdar(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN fshl_stdar(arg1, arg2, arg1(arg1'LEFT), olen); END;
   FUNCTION fshr_stdar(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN fshr_stdar(arg1, arg2, arg1(arg1'LEFT), olen); END;


   FUNCTION fshl(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT ilen: INTEGER := arg1'LENGTH;
     CONSTANT olenM1: INTEGER := olen-1; --2.1.6.3
     CONSTANT len: INTEGER := maximum(ilen, olen);
     VARIABLE result: UNSIGNED(len-1 DOWNTO 0);
     VARIABLE temp: UNSIGNED(len-1 DOWNTO 0);
     --SUBTYPE  sw_range IS NATURAL range 1 TO len;
     VARIABLE sw: NATURAL range 1 TO len;
     VARIABLE temp_idx : INTEGER; --2.1.6.3
   BEGIN
     sw := 1;
     result := (others => sbit);
     result(ilen-1 DOWNTO 0) := arg1;
     FOR i IN arg2'reverse_range LOOP
       temp := (others => '0');
       FOR i2 IN len-1-sw DOWNTO 0 LOOP
         --was:temp(i2+sw) := result(i2);
         temp_idx := add_nat(i2,sw);
         temp(temp_idx) := result(i2);
       END LOOP;
       result := UNSIGNED(mux_v(STD_LOGIC_VECTOR(concat_uns(result,temp)), arg2(i)));
       sw := minimum(mult_natural(sw,2), len);
     END LOOP;
     RETURN result(olenM1 DOWNTO 0);
   END;

   FUNCTION fshr(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT ilen: INTEGER := arg1'LENGTH;
     CONSTANT olenM1: INTEGER := olen-1; --2.1.6.3
     CONSTANT len: INTEGER := maximum(ilen, olen);
     VARIABLE result: UNSIGNED(len-1 DOWNTO 0);
     VARIABLE temp: UNSIGNED(len-1 DOWNTO 0);
     SUBTYPE  sw_range IS NATURAL range 1 TO len;
     VARIABLE sw: sw_range;
     VARIABLE result_idx : INTEGER; --2.1.6.3
   BEGIN
     sw := 1;
     result := (others => sbit);
     result(ilen-1 DOWNTO 0) := arg1;
     FOR i IN arg2'reverse_range LOOP
       temp := (others => sbit);
       FOR i2 IN len-1-sw DOWNTO 0 LOOP
         -- was: temp(i2) := result(i2+sw);
         result_idx := add_nat(i2,sw);
         temp(i2) := result(result_idx);
       END LOOP;
       result := UNSIGNED(mux_v(STD_LOGIC_VECTOR(concat_uns(result,temp)), arg2(i)));
       sw := minimum(mult_natural(sw,2), len);
     END LOOP;
     RETURN result(olenM1 DOWNTO 0);
   END;

   FUNCTION fshl(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT arg1l: NATURAL := arg1'LENGTH - 1;
     ALIAS    arg1x: UNSIGNED(arg1l DOWNTO 0) IS arg1;
     CONSTANT arg2l: NATURAL := arg2'LENGTH - 1;
     ALIAS    arg2x: SIGNED(arg2l DOWNTO 0) IS arg2;
     VARIABLE arg1x_pad: UNSIGNED(arg1l+1 DOWNTO 0);
     VARIABLE result: UNSIGNED(olen-1 DOWNTO 0);
   BEGIN
     result := (others=>'0');
     arg1x_pad(arg1l+1) := sbit;
     arg1x_pad(arg1l downto 0) := arg1x;
     IF arg2l = 0 THEN
       RETURN fshr(arg1x_pad, UNSIGNED(arg2x), sbit, olen);
     -- ELSIF arg1l = 0 THEN
     --   RETURN fshl(sbit & arg1x, arg2x, sbit, olen);
     ELSE
       CASE arg2x(arg2l) IS
       WHEN '0'
       --synopsys translate_off
            | 'L'
       --synopsys translate_on
       =>
         RETURN fshl(arg1x_pad, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);

       WHEN '1'
       --synopsys translate_off
            | 'H'
       --synopsys translate_on
       =>
         RETURN fshr(arg1x_pad(arg1l+1 DOWNTO 1), not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);

       WHEN others =>
         --synopsys translate_off
         result := resolve_unsigned(
           fshl(arg1x_pad, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit,  olen),
           fshr(arg1x_pad(arg1l+1 DOWNTO 1), not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen)
         );
         --synopsys translate_on
         RETURN result;
       END CASE;
     END IF;
   END;

   FUNCTION fshr(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT arg2l: INTEGER := arg2'LENGTH - 1;
     ALIAS    arg2x: SIGNED(arg2l DOWNTO 0) IS arg2;
     VARIABLE result: UNSIGNED(olen-1 DOWNTO 0);
   BEGIN
     result := (others => '0');
     IF arg2l = 0 THEN
       RETURN fshl(arg1, UNSIGNED(arg2x), olen);
     ELSE
       CASE arg2x(arg2l) IS
       WHEN '0'
       --synopsys translate_off
            | 'L'
       --synopsys translate_on
       =>
         RETURN fshr(arg1, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);

       WHEN '1'
       --synopsys translate_off
            | 'H'
       --synopsys translate_on
       =>
         RETURN fshl(arg1 & '0', not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), olen);
       WHEN others =>
         --synopsys translate_off
         result := resolve_unsigned(
           fshr(arg1, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen),
           fshl(arg1 & '0', not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), olen)
         );
         --synopsys translate_on
	 return result;
       END CASE;
     END IF;
   END;

   FUNCTION fshl(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshl(arg1, arg2, '0', olen); END;
   FUNCTION fshr(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshr(arg1, arg2, '0', olen); END;
   FUNCTION fshl(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshl(arg1, arg2, '0', olen); END;
   FUNCTION fshr(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshr(arg1, arg2, '0', olen); END;

   FUNCTION fshl(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN SIGNED(fshl(UNSIGNED(arg1), arg2, arg1(arg1'LEFT), olen)); END;
   FUNCTION fshr(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN SIGNED(fshr(UNSIGNED(arg1), arg2, arg1(arg1'LEFT), olen)); END;
   FUNCTION fshl(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN SIGNED(fshl(UNSIGNED(arg1), arg2, arg1(arg1'LEFT), olen)); END;
   FUNCTION fshr(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN SIGNED(fshr(UNSIGNED(arg1), arg2, arg1(arg1'LEFT), olen)); END;


   FUNCTION frot(arg1: STD_LOGIC_VECTOR; arg2: STD_LOGIC_VECTOR; signd2: BOOLEAN; sdir: INTEGER range -1 TO 1) RETURN STD_LOGIC_VECTOR IS
     CONSTANT len: INTEGER := arg1'LENGTH;
     VARIABLE result: STD_LOGIC_VECTOR(len-1 DOWNTO 0);
     VARIABLE temp: STD_LOGIC_VECTOR(len-1 DOWNTO 0);
     SUBTYPE sw_range IS NATURAL range 0 TO len-1;
     VARIABLE sw: sw_range;
     VARIABLE temp_idx : INTEGER; --2.1.6.3
   BEGIN
     result := (others=>'0');
     result := arg1;
     sw := sdir MOD len;
     FOR i IN arg2'reverse_range LOOP
       EXIT WHEN sw = 0;
       IF signd2 AND i = arg2'LEFT THEN 
         sw := sub_int(len,sw); 
       END IF;
       -- temp := result(len-sw-1 DOWNTO 0) & result(len-1 DOWNTO len-sw)
       FOR i2 IN len-1 DOWNTO 0 LOOP
         --was: temp((i2+sw) MOD len) := result(i2);
         temp_idx := add_nat(i2,sw) MOD len;
         temp(temp_idx) := result(i2);
       END LOOP;
       result := mux_v(STD_LOGIC_VECTOR(concat_vect(result,temp)), arg2(i));
       sw := mod_natural(mult_natural(sw,2), len);
     END LOOP;
     RETURN result;
   END frot;

   FUNCTION frol(arg1: STD_LOGIC_VECTOR; arg2: UNSIGNED) RETURN STD_LOGIC_VECTOR IS
     BEGIN RETURN frot(arg1, STD_LOGIC_VECTOR(arg2), FALSE, 1); END;
   FUNCTION fror(arg1: STD_LOGIC_VECTOR; arg2: UNSIGNED) RETURN STD_LOGIC_VECTOR IS
     BEGIN RETURN frot(arg1, STD_LOGIC_VECTOR(arg2), FALSE, -1); END;
   FUNCTION frol(arg1: STD_LOGIC_VECTOR; arg2: SIGNED  ) RETURN STD_LOGIC_VECTOR IS
     BEGIN RETURN frot(arg1, STD_LOGIC_VECTOR(arg2), TRUE, 1); END;
   FUNCTION fror(arg1: STD_LOGIC_VECTOR; arg2: SIGNED  ) RETURN STD_LOGIC_VECTOR IS
     BEGIN RETURN frot(arg1, STD_LOGIC_VECTOR(arg2), TRUE, -1); END;

-----------------------------------------------------------------
-- indexing functions: LSB always has index 0
-----------------------------------------------------------------

   FUNCTION readindex(vec: STD_LOGIC_VECTOR; index: INTEGER                 ) RETURN STD_LOGIC IS
     CONSTANT len : INTEGER := vec'LENGTH;
     ALIAS    vec0: STD_LOGIC_VECTOR(len-1 DOWNTO 0) IS vec;
   BEGIN
     IF index >= len OR index < 0 THEN
       RETURN 'X';
     END IF;
     RETURN vec0(index);
   END;

   FUNCTION readslice(vec: STD_LOGIC_VECTOR; index: INTEGER; width: POSITIVE) RETURN STD_LOGIC_VECTOR IS
     CONSTANT len : INTEGER := vec'LENGTH;
     CONSTANT indexPwidthM1 : INTEGER := index+width-1; --2.1.6.3
     ALIAS    vec0: STD_LOGIC_VECTOR(len-1 DOWNTO 0) IS vec;
     CONSTANT xxx : STD_LOGIC_VECTOR(width-1 DOWNTO 0) := (others => 'X');
   BEGIN
     IF index+width > len OR index < 0 THEN
       RETURN xxx;
     END IF;
     RETURN vec0(indexPwidthM1 DOWNTO index);
   END;

   FUNCTION writeindex(vec: STD_LOGIC_VECTOR; dinput: STD_LOGIC       ; index: INTEGER) RETURN STD_LOGIC_VECTOR IS
     CONSTANT len : INTEGER := vec'LENGTH;
     VARIABLE vec0: STD_LOGIC_VECTOR(len-1 DOWNTO 0);
     CONSTANT xxx : STD_LOGIC_VECTOR(len-1 DOWNTO 0) := (others => 'X');
   BEGIN
     vec0 := vec;
     IF index >= len OR index < 0 THEN
       RETURN xxx;
     END IF;
     vec0(index) := dinput;
     RETURN vec0;
   END;

   FUNCTION n_bits(p: NATURAL) RETURN POSITIVE IS
     VARIABLE n_b : POSITIVE;
     VARIABLE p_v : NATURAL;
   BEGIN
     p_v := p;
     FOR i IN 1 TO 32 LOOP
       p_v := div_natural(p_v,2);
       n_b := i;
       EXIT WHEN (p_v = 0);
     END LOOP;
     RETURN n_b;
   END;


--   FUNCTION writeslice(vec: STD_LOGIC_VECTOR; dinput: STD_LOGIC_VECTOR; index: INTEGER) RETURN STD_LOGIC_VECTOR IS
--
--     CONSTANT vlen: INTEGER := vec'LENGTH;
--     CONSTANT ilen: INTEGER := dinput'LENGTH;
--     CONSTANT max_shift: INTEGER := vlen-ilen;
--     CONSTANT ones: UNSIGNED(ilen-1 DOWNTO 0) := (others => '1');
--     CONSTANT xxx : STD_LOGIC_VECTOR(vlen-1 DOWNTO 0) := (others => 'X');
--     VARIABLE shift : UNSIGNED(n_bits(max_shift)-1 DOWNTO 0);
--     VARIABLE vec0: STD_LOGIC_VECTOR(vlen-1 DOWNTO 0);
--     VARIABLE inp: UNSIGNED(vlen-1 DOWNTO 0);
--     VARIABLE mask: UNSIGNED(vlen-1 DOWNTO 0);
--   BEGIN
--     inp := (others => '0');
--     mask := (others => '0');
--
--     IF index > max_shift OR index < 0 THEN
--       RETURN xxx;
--     END IF;
--
--     shift := CONV_UNSIGNED(index, shift'LENGTH);
--     inp(ilen-1 DOWNTO 0) := UNSIGNED(dinput);
--     mask(ilen-1 DOWNTO 0) := ones;
--     inp := fshl(inp, shift, vlen);
--     mask := fshl(mask, shift, vlen);
--     vec0 := (vec and (not STD_LOGIC_VECTOR(mask))) or STD_LOGIC_VECTOR(inp);
--     RETURN vec0;
--   END;

   FUNCTION writeslice(vec: STD_LOGIC_VECTOR; dinput: STD_LOGIC_VECTOR; enable: STD_LOGIC_VECTOR; byte_width: INTEGER;  index: INTEGER) RETURN STD_LOGIC_VECTOR IS

     type enable_matrix is array (0 to enable'LENGTH-1 ) of std_logic_vector(byte_width-1 downto 0);
     CONSTANT vlen: INTEGER := vec'LENGTH;
     CONSTANT ilen: INTEGER := dinput'LENGTH;
     CONSTANT max_shift: INTEGER := vlen-ilen;
     CONSTANT ones: UNSIGNED(ilen-1 DOWNTO 0) := (others => '1');
     CONSTANT xxx : STD_LOGIC_VECTOR(vlen-1 DOWNTO 0) := (others => 'X');
     VARIABLE shift : UNSIGNED(n_bits(max_shift)-1 DOWNTO 0);
     VARIABLE vec0: STD_LOGIC_VECTOR(vlen-1 DOWNTO 0);
     VARIABLE inp: UNSIGNED(vlen-1 DOWNTO 0);
     VARIABLE mask: UNSIGNED(vlen-1 DOWNTO 0);
     VARIABLE mask2: UNSIGNED(vlen-1 DOWNTO 0);
     VARIABLE enables: enable_matrix;
     VARIABLE cat_enables: STD_LOGIC_VECTOR(ilen-1 DOWNTO 0 );
     VARIABLE lsbi : INTEGER;
     VARIABLE msbi : INTEGER;

   BEGIN
     cat_enables := (others => '0');
     lsbi := 0;
     msbi := byte_width-1;
     inp := (others => '0');
     mask := (others => '0');

     IF index > max_shift OR index < 0 THEN
       RETURN xxx;
     END IF;

     --initialize enables
     for i in 0 TO (enable'LENGTH-1) loop
       enables(i)  := (others => enable(i));
       cat_enables(msbi downto lsbi) := enables(i) ;
       lsbi := msbi+1;
       msbi := msbi+byte_width;
     end loop;


     shift := CONV_UNSIGNED(index, shift'LENGTH);
     inp(ilen-1 DOWNTO 0) := UNSIGNED(dinput);
     mask(ilen-1 DOWNTO 0) := UNSIGNED((STD_LOGIC_VECTOR(ones) AND cat_enables));
     inp := fshl(inp, shift, vlen);
     mask := fshl(mask, shift, vlen);
     vec0 := (vec and (not STD_LOGIC_VECTOR(mask))) or STD_LOGIC_VECTOR(inp);
     RETURN vec0;
   END;


   FUNCTION ceil_log2(size : NATURAL) return NATURAL is
     VARIABLE cnt : NATURAL;
     VARIABLE res : NATURAL;
   begin
     cnt := 1;
     res := 0;
     while (cnt < size) loop
       res := res + 1;
       cnt := 2 * cnt;
     end loop;
     return res;
   END;
   
   FUNCTION bits(size : NATURAL) return NATURAL is
   begin
     return ceil_log2(size);
   END;

   PROCEDURE csa(a, b, c: IN INTEGER; s, cout: OUT STD_LOGIC_VECTOR) IS
   BEGIN
     s    := conv_std_logic_vector(a, s'LENGTH) xor conv_std_logic_vector(b, s'LENGTH) xor conv_std_logic_vector(c, s'LENGTH);
     cout := ( (conv_std_logic_vector(a, cout'LENGTH) and conv_std_logic_vector(b, cout'LENGTH)) or (conv_std_logic_vector(a, cout'LENGTH) and conv_std_logic_vector(c, cout'LENGTH)) or (conv_std_logic_vector(b, cout'LENGTH) and conv_std_logic_vector(c, cout'LENGTH)) );
   END PROCEDURE csa;

   PROCEDURE csha(a, b: IN INTEGER; s, cout: OUT STD_LOGIC_VECTOR) IS
   BEGIN
     s    := conv_std_logic_vector(a, s'LENGTH) xor conv_std_logic_vector(b, s'LENGTH);
     cout := (conv_std_logic_vector(a, cout'LENGTH) and conv_std_logic_vector(b, cout'LENGTH));
   END PROCEDURE csha;

END funcs;

--------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/mgc_shift_comps_v5.vhd 
LIBRARY ieee;

USE ieee.std_logic_1164.all;

PACKAGE mgc_shift_comps_v5 IS

COMPONENT mgc_shift_l_v5
  GENERIC (
    width_a: NATURAL;
    signd_a: NATURAL;
    width_s: NATURAL;
    width_z: NATURAL
  );
  PORT (
    a : in  std_logic_vector(width_a-1 DOWNTO 0);
    s : in  std_logic_vector(width_s-1 DOWNTO 0);
    z : out std_logic_vector(width_z-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_shift_r_v5
  GENERIC (
    width_a: NATURAL;
    signd_a: NATURAL;
    width_s: NATURAL;
    width_z: NATURAL
  );
  PORT (
    a : in  std_logic_vector(width_a-1 DOWNTO 0);
    s : in  std_logic_vector(width_s-1 DOWNTO 0);
    z : out std_logic_vector(width_z-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_shift_bl_v5
  GENERIC (
    width_a: NATURAL;
    signd_a: NATURAL;
    width_s: NATURAL;
    width_z: NATURAL
  );
  PORT (
    a : in  std_logic_vector(width_a-1 DOWNTO 0);
    s : in  std_logic_vector(width_s-1 DOWNTO 0);
    z : out std_logic_vector(width_z-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_shift_br_v5
  GENERIC (
    width_a: NATURAL;
    signd_a: NATURAL;
    width_s: NATURAL;
    width_z: NATURAL
  );
  PORT (
    a : in  std_logic_vector(width_a-1 DOWNTO 0);
    s : in  std_logic_vector(width_s-1 DOWNTO 0);
    z : out std_logic_vector(width_z-1 DOWNTO 0)
  );
END COMPONENT;

END mgc_shift_comps_v5;

--------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/mgc_shift_r_beh_v5.vhd 
LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY mgc_shift_r_v5 IS
  GENERIC (
    width_a: NATURAL;
    signd_a: NATURAL;
    width_s: NATURAL;
    width_z: NATURAL
  );
  PORT (
    a : in  std_logic_vector(width_a-1 DOWNTO 0);
    s : in  std_logic_vector(width_s-1 DOWNTO 0);
    z : out std_logic_vector(width_z-1 DOWNTO 0)
  );
END mgc_shift_r_v5;

LIBRARY ieee;

USE ieee.std_logic_arith.all;

ARCHITECTURE beh OF mgc_shift_r_v5 IS

  FUNCTION maximum (arg1,arg2: INTEGER) RETURN INTEGER IS
  BEGIN
    IF(arg1 > arg2) THEN
      RETURN(arg1) ;
    ELSE
      RETURN(arg2) ;
    END IF;
  END;

  FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
    CONSTANT ilen: INTEGER := arg1'LENGTH;
    CONSTANT olenM1: INTEGER := olen-1; -- 2.1.6.3
    CONSTANT ilenub: INTEGER := arg1'LENGTH-1;
    CONSTANT len: INTEGER := maximum(ilen, olen);
    VARIABLE result: UNSIGNED(len-1 DOWNTO 0);
  BEGIN
    result := (others => sbit);
    result(ilenub DOWNTO 0) := arg1;
    result := shr(result, arg2);
    RETURN result(olenM1 DOWNTO 0);
  END;

  FUNCTION fshr_stdar(arg1: SIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN SIGNED IS
    CONSTANT ilen: INTEGER := arg1'LENGTH;
    CONSTANT olenM1: INTEGER := olen-1; -- 2.1.6.3
    CONSTANT ilenub: INTEGER := arg1'LENGTH-1;
    CONSTANT len: INTEGER := maximum(ilen, olen);
    VARIABLE result: SIGNED(len-1 DOWNTO 0);
  BEGIN
    result := (others => sbit);
    result(ilenub DOWNTO 0) := arg1;
    result := shr(result, arg2);
    RETURN result(olenM1 DOWNTO 0);
  END;

  FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE)
  RETURN UNSIGNED IS
  BEGIN
    RETURN fshr_stdar(arg1, arg2, '0', olen);
  END;

  FUNCTION fshr_stdar(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE)
  RETURN SIGNED IS
  BEGIN
    RETURN fshr_stdar(arg1, arg2, arg1(arg1'LEFT), olen);
  END;

BEGIN
UNSGNED:  IF signd_a = 0 GENERATE
    z <= std_logic_vector(fshr_stdar(unsigned(a), unsigned(s), width_z));
  END GENERATE;
SGNED:  IF signd_a /= 0 GENERATE
    z <= std_logic_vector(fshr_stdar(  signed(a), unsigned(s), width_z));
  END GENERATE;
END beh;

--------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/mgc_shift_l_beh_v5.vhd 
LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY mgc_shift_l_v5 IS
  GENERIC (
    width_a: NATURAL;
    signd_a: NATURAL;
    width_s: NATURAL;
    width_z: NATURAL
  );
  PORT (
    a : in  std_logic_vector(width_a-1 DOWNTO 0);
    s : in  std_logic_vector(width_s-1 DOWNTO 0);
    z : out std_logic_vector(width_z-1 DOWNTO 0)
  );
END mgc_shift_l_v5;

LIBRARY ieee;

USE ieee.std_logic_arith.all;

ARCHITECTURE beh OF mgc_shift_l_v5 IS

  FUNCTION maximum (arg1,arg2: INTEGER) RETURN INTEGER IS
  BEGIN
    IF(arg1 > arg2) THEN
      RETURN(arg1) ;
    ELSE
      RETURN(arg2) ;
    END IF;
  END;

  FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
    CONSTANT ilen: INTEGER := arg1'LENGTH;
    CONSTANT olenM1: INTEGER := olen-1; -- 2.1.6.3
    CONSTANT ilenub: INTEGER := arg1'LENGTH-1;
    CONSTANT len: INTEGER := maximum(ilen, olen);
    VARIABLE result: UNSIGNED(len-1 DOWNTO 0);
  BEGIN
    result := (others => sbit);
    result(ilenub DOWNTO 0) := arg1;
    result := shl(result, arg2);
    RETURN result(olenM1 DOWNTO 0);
  END;

  FUNCTION fshl_stdar(arg1: SIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN SIGNED IS
    CONSTANT ilen: INTEGER := arg1'LENGTH;
    CONSTANT olenM1: INTEGER := olen-1; -- 2.1.6.3
    CONSTANT ilenub: INTEGER := arg1'LENGTH-1;
    CONSTANT len: INTEGER := maximum(ilen, olen);
    VARIABLE result: SIGNED(len-1 DOWNTO 0);
  BEGIN
    result := (others => sbit);
    result(ilenub DOWNTO 0) := arg1;
    result := shl(SIGNED(result), arg2);
    RETURN result(olenM1 DOWNTO 0);
  END;

  FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE)
  RETURN UNSIGNED IS
  BEGIN
    RETURN fshl_stdar(arg1, arg2, '0', olen);
  END;

  FUNCTION fshl_stdar(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE)
  RETURN SIGNED IS
  BEGIN
    RETURN fshl_stdar(arg1, arg2, arg1(arg1'LEFT), olen);
  END;

BEGIN
UNSGNED:  IF signd_a = 0 GENERATE
    z <= std_logic_vector(fshl_stdar(unsigned(a), unsigned(s), width_z));
  END GENERATE;
SGNED:  IF signd_a /= 0 GENERATE
    z <= std_logic_vector(fshl_stdar(  signed(a), unsigned(s), width_z));
  END GENERATE;
END beh;

--------> ../td_ccore_solutions/leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_0/rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   dirren@lapsrv6.epfl.ch
--  Generated date: Wed Mar  8 16:25:37 2023
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    leading_sign_28_1_1_0
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY leading_sign_28_1_1_0 IS
  PORT(
    mantissa : IN STD_LOGIC_VECTOR (27 DOWNTO 0);
    all_same : OUT STD_LOGIC;
    rtn : OUT STD_LOGIC_VECTOR (4 DOWNTO 0)
  );
END leading_sign_28_1_1_0;

ARCHITECTURE v1 OF leading_sign_28_1_1_0 IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_2 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_18_3_sdt_3 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_2 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_42_4_sdt_4 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_2 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_62_3_sdt_3 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_78_5_sdt_5 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_14_2_sdt_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_34_2_sdt_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_58_2_sdt_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_68_2_sdt_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0 : STD_LOGIC_VECTOR
      (26 DOWNTO 0);
  SIGNAL c_h_1_2 : STD_LOGIC;
  SIGNAL c_h_1_5 : STD_LOGIC;
  SIGNAL c_h_1_6 : STD_LOGIC;
  SIGNAL c_h_1_9 : STD_LOGIC;
  SIGNAL c_h_1_11 : STD_LOGIC;
  SIGNAL c_h_1_12 : STD_LOGIC;

  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_and_101_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_return_add_generic_AC_RND_CONV_false_ls_all_sign_and_nl
      : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_return_add_generic_AC_RND_CONV_false_ls_all_sign_or_2_nl
      : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_and_106_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_ls_all_sign_and_109_nl : STD_LOGIC;
  FUNCTION CONV_SL_1_1(input_val:BOOLEAN)
  RETURN STD_LOGIC IS
  BEGIN
    IF input_val THEN RETURN '1';ELSE RETURN '0';END IF;
  END;

  FUNCTION MUX_v_2_2_2(input_0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(1 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

BEGIN
  return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0 <= (mantissa(26 DOWNTO
      0)) XOR STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT (mantissa(27)), 1),27));
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_2 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(24
      DOWNTO 23)=STD_LOGIC_VECTOR'("11"));
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_1 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(26
      DOWNTO 25)=STD_LOGIC_VECTOR'("11"));
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_14_2_sdt_1 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(22
      DOWNTO 21)=STD_LOGIC_VECTOR'("11"));
  c_h_1_2 <= return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_1 AND
      return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_2;
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_18_3_sdt_3 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(20
      DOWNTO 19)=STD_LOGIC_VECTOR'("11")) AND return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_14_2_sdt_1;
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_2 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(16
      DOWNTO 15)=STD_LOGIC_VECTOR'("11"));
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_1 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(18
      DOWNTO 17)=STD_LOGIC_VECTOR'("11"));
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_34_2_sdt_1 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(14
      DOWNTO 13)=STD_LOGIC_VECTOR'("11"));
  c_h_1_5 <= return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_1 AND
      return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_2;
  c_h_1_6 <= c_h_1_2 AND return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_18_3_sdt_3;
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_42_4_sdt_4 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(12
      DOWNTO 11)=STD_LOGIC_VECTOR'("11")) AND return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_34_2_sdt_1
      AND c_h_1_5;
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_2 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(8
      DOWNTO 7)=STD_LOGIC_VECTOR'("11"));
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_1 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(10
      DOWNTO 9)=STD_LOGIC_VECTOR'("11"));
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_58_2_sdt_1 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(6
      DOWNTO 5)=STD_LOGIC_VECTOR'("11"));
  c_h_1_9 <= return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_1 AND
      return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_2;
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_62_3_sdt_3 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(4
      DOWNTO 3)=STD_LOGIC_VECTOR'("11")) AND return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_58_2_sdt_1;
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_68_2_sdt_1 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(2
      DOWNTO 1)=STD_LOGIC_VECTOR'("11"));
  c_h_1_11 <= c_h_1_9 AND return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_62_3_sdt_3;
  c_h_1_12 <= c_h_1_6 AND return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_42_4_sdt_4;
  return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_78_5_sdt_5 <= (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(0))
      AND return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_68_2_sdt_1 AND c_h_1_11
      AND c_h_1_12;
  all_same <= return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_78_5_sdt_5;
  return_add_generic_AC_RND_CONV_false_ls_all_sign_and_101_nl <= c_h_1_6 AND (c_h_1_11
      OR (NOT return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_42_4_sdt_4));
  return_add_generic_AC_RND_CONV_false_ls_all_sign_return_add_generic_AC_RND_CONV_false_ls_all_sign_and_nl
      <= c_h_1_2 AND (c_h_1_5 OR (NOT return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_18_3_sdt_3))
      AND (NOT((NOT(c_h_1_9 AND (NOT return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_62_3_sdt_3)))
      AND c_h_1_12));
  return_add_generic_AC_RND_CONV_false_ls_all_sign_and_106_nl <= return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_1
      AND (return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_14_2_sdt_1 OR (NOT
      return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_2)) AND (NOT((NOT(return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_1
      AND (return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_34_2_sdt_1 OR (NOT
      return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_2)))) AND c_h_1_6))
      AND (NOT((NOT(return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_1
      AND (return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_58_2_sdt_1 OR (NOT
      return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_2)) AND (return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_68_2_sdt_1
      OR (NOT c_h_1_11)))) AND c_h_1_12));
  return_add_generic_AC_RND_CONV_false_ls_all_sign_and_109_nl <= (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(26))
      AND (CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(25
      DOWNTO 24)/=STD_LOGIC_VECTOR'("10"))) AND (NOT((NOT((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(22))
      AND (CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(21
      DOWNTO 20)/=STD_LOGIC_VECTOR'("10"))))) AND c_h_1_2)) AND (NOT((NOT((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(18))
      AND (CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(17
      DOWNTO 16)/=STD_LOGIC_VECTOR'("10"))) AND (NOT((NOT((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(14))
      AND (CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(13
      DOWNTO 12)/=STD_LOGIC_VECTOR'("10"))))) AND c_h_1_5)))) AND c_h_1_6)) AND (NOT((NOT((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(10))
      AND (CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(9
      DOWNTO 8)/=STD_LOGIC_VECTOR'("10"))) AND (NOT((NOT((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(6))
      AND (CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(5
      DOWNTO 4)/=STD_LOGIC_VECTOR'("10"))))) AND c_h_1_9)) AND (NOT((NOT(CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0(2
      DOWNTO 1)=STD_LOGIC_VECTOR'("10")))) AND c_h_1_11)))) AND c_h_1_12));
  return_add_generic_AC_RND_CONV_false_ls_all_sign_return_add_generic_AC_RND_CONV_false_ls_all_sign_or_2_nl
      <= MUX_v_2_2_2(STD_LOGIC_VECTOR'( return_add_generic_AC_RND_CONV_false_ls_all_sign_and_106_nl
      & return_add_generic_AC_RND_CONV_false_ls_all_sign_and_109_nl), STD_LOGIC_VECTOR'("11"),
      return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_78_5_sdt_5);
  rtn <= c_h_1_12 & return_add_generic_AC_RND_CONV_false_ls_all_sign_and_101_nl &
      return_add_generic_AC_RND_CONV_false_ls_all_sign_return_add_generic_AC_RND_CONV_false_ls_all_sign_and_nl
      & return_add_generic_AC_RND_CONV_false_ls_all_sign_return_add_generic_AC_RND_CONV_false_ls_all_sign_or_2_nl;
END v1;




--------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_in_v1.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_in_pkg_v1 IS

COMPONENT ccs_in_v1
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    idat   : OUT std_logic_vector(width-1 DOWNTO 0);
    dat    : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

END ccs_in_pkg_v1;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY ccs_in_v1 IS
  GENERIC (
    rscid : INTEGER;
    width : INTEGER
  );
  PORT (
    idat  : OUT std_logic_vector(width-1 DOWNTO 0);
    dat   : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END ccs_in_v1;

ARCHITECTURE beh OF ccs_in_v1 IS
BEGIN

  idat <= dat;

END beh;


--------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_out_v1.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_out_pkg_v1 IS

COMPONENT ccs_out_v1
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    dat    : OUT std_logic_vector(width-1 DOWNTO 0);
    idat   : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

END ccs_out_pkg_v1;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY ccs_out_v1 IS
  GENERIC (
    rscid : INTEGER;
    width : INTEGER
  );
  PORT (
    dat   : OUT std_logic_vector(width-1 DOWNTO 0);
    idat  : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END ccs_out_v1;

ARCHITECTURE beh OF ccs_out_v1 IS
BEGIN

  dat <= idat;

END beh;


--------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_genreg_v1.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_genreg_pkg_v1 IS

  COMPONENT ccs_genreg_v1
    GENERIC (
      width    : INTEGER;
      ph_clk   : INTEGER RANGE 0 TO 1;
      ph_en    : INTEGER RANGE 0 TO 1;
      ph_arst  : INTEGER RANGE 0 TO 1;
      ph_srst  : INTEGER RANGE 0 TO 1;
      has_en   : INTEGER RANGE 0 TO 1
    );
    PORT (
      clk     : IN  std_logic;
      en      : IN  std_logic;
      arst    : IN  std_logic;
      srst    : IN  std_logic;
      d       : IN  std_logic_vector(width-1 DOWNTO 0);
      z       : OUT std_logic_vector(width-1 DOWNTO 0)
    );
  END COMPONENT;
END ccs_genreg_pkg_v1;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY ccs_genreg_v1 IS
  GENERIC (
    width    : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1;
    has_en   : INTEGER RANGE 0 TO 1
  );
  PORT (
    clk     : IN  std_logic;
    en      : IN  std_logic;
    arst    : IN  std_logic;
    srst    : IN  std_logic;
    d       : IN  std_logic_vector(width-1 DOWNTO 0);
    z       : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END ccs_genreg_v1;

ARCHITECTURE beh OF ccs_genreg_v1 IS
BEGIN
    GEN_REG_POS_CLK: IF ph_clk = 1 GENERATE
      GEN_CLK1_EN: IF has_en = 1 GENERATE
        PROCESS (clk, arst)
        BEGIN
          IF (conv_integer(arst) = ph_arst) THEN
            z <= (others => '0');
          ELSIF (clk'EVENT AND clk = '1') THEN
            IF (conv_integer(srst) = ph_srst) THEN
              z <= (others => '0');
            ELSIF (conv_integer(en) = ph_en) THEN
              z <= d;
            END IF;
          END IF;
        END PROCESS;
      END GENERATE GEN_CLK1_EN;

      GEN_CLK1_NO_EN: IF has_en = 0 GENERATE
        PROCESS (clk, arst)
        BEGIN
          IF (conv_integer(arst) = ph_arst) THEN
            z <= (others => '0');
          ELSIF (clk'EVENT AND clk = '1') THEN
            IF (conv_integer(srst) = ph_srst) THEN
              z <= (others => '0');
            ELSE
              z <= d;
            END IF;
          END IF;
        END PROCESS;
      END GENERATE GEN_CLK1_NO_EN;
    END GENERATE GEN_REG_POS_CLK;


    GEN_REG_NEG_CLK: IF ph_clk = 0 GENERATE
      GEN_CLK0_EN: IF has_en = 1 GENERATE
        PROCESS (clk, arst)
        BEGIN
          IF (conv_integer(arst) = ph_arst) THEN
            z <= (others => '0');
          ELSIF (clk'EVENT AND clk = '0') THEN
            IF (conv_integer(srst) = ph_srst) THEN
              z <= (others => '0');
            ELSIF (conv_integer(en) = ph_en) THEN
              z <= d;
            END IF;
          END IF;
        END PROCESS;
      END GENERATE GEN_CLK0_EN;

      GEN_CLK0_NO_EN: IF has_en = 0 GENERATE
        PROCESS (clk, arst)
        BEGIN
          IF (conv_integer(arst) = ph_arst) THEN
            z <= (others => '0');
          ELSIF (clk'EVENT AND clk = '0') THEN
            IF (conv_integer(srst) = ph_srst) THEN
              z <= (others => '0');
            ELSE
              z <= d;
            END IF;
          END IF;
        END PROCESS;
      END GENERATE GEN_CLK0_NO_EN;
    END GENERATE GEN_REG_NEG_CLK;
END beh;


--------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_fifo_wait_core_v5.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
-- Change History:
--    2019-01-24 - Verify and fix bug in rdy signal behavior under reset.
--                 Provide parameter defaults
----------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_fifo_wait_core_pkg_v5 IS

  COMPONENT ccs_fifo_wait_core_v5
    GENERIC (
      rscid    : INTEGER := 0;
      width    : INTEGER := 8;
      sz_width : INTEGER := 8;
      fifo_sz  : INTEGER := 8;
      ph_clk   : INTEGER RANGE 0 TO 1 := 1;
      ph_en    : INTEGER RANGE 0 TO 1 := 1;
      ph_arst  : INTEGER RANGE 0 TO 1 := 1;
      ph_srst  : INTEGER RANGE 0 TO 1 := 1;
      ph_log2  : INTEGER := 3
    );
    PORT (
      clk      : IN  std_logic;
      en       : IN  std_logic;
      arst     : IN  std_logic;
      srst     : IN  std_logic;
      din_vld  : IN  std_logic;
      din_rdy  : OUT std_logic;
      din      : IN  std_logic_vector(width-1 DOWNTO 0);
      dout_vld : OUT std_logic;
      dout_rdy : IN  std_logic;
      dout     : OUT std_logic_vector(width-1 DOWNTO 0);
      sd       : OUT std_logic_vector(sz_width-1 DOWNTO 0);
      is_idle  : OUT std_logic
    );
  END COMPONENT;
END ccs_fifo_wait_core_pkg_v5;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

USE work.ccs_genreg_pkg_v1.all;

ENTITY ccs_fifo_wait_core_v5 IS
  GENERIC (
    rscid    : INTEGER := 0;
    width    : INTEGER := 8;
    sz_width : INTEGER := 8;
    fifo_sz  : INTEGER := 8;
    ph_clk   : INTEGER RANGE 0 TO 1 := 1;
    ph_en    : INTEGER RANGE 0 TO 1 := 1;
    ph_arst  : INTEGER RANGE 0 TO 1 := 1;
    ph_srst  : INTEGER RANGE 0 TO 1 := 1;
    ph_log2  : INTEGER := 3
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    din_vld  : IN  std_logic;
    din_rdy  : OUT std_logic;
    din      : IN  std_logic_vector(width-1 DOWNTO 0);
    dout_vld : OUT std_logic;
    dout_rdy : IN  std_logic;
    dout     : OUT std_logic_vector(width-1 DOWNTO 0);
    sd       : OUT std_logic_vector(sz_width-1 DOWNTO 0);
    is_idle  : OUT std_logic
  );
END ccs_fifo_wait_core_v5;

ARCHITECTURE beh OF ccs_fifo_wait_core_v5 IS

  FUNCTION adjust(sz : INTEGER) RETURN INTEGER IS
    VARIABLE res : INTEGER RANGE 0 TO width*fifo_sz+1;
  BEGIN
    IF sz > 0 THEN
      res := sz;
    ELSE
      res := 1;
    END IF;
    RETURN res;
  END ;

  SIGNAL stat     : std_logic_vector(adjust(fifo_sz)-1 DOWNTO 0);
  SIGNAL stat_pre : std_logic_vector(adjust(fifo_sz)-1 DOWNTO 0);
  SIGNAL hs_init  : std_logic_vector(0 DOWNTO 0);

  SIGNAL sbuf     : std_logic_vector(adjust(width*fifo_sz)-1 DOWNTO 0);
  SIGNAL buf_pre  : std_logic_vector(adjust(width*fifo_sz)-1 DOWNTO 0);

  SIGNAL en_l     : std_logic_vector(adjust(fifo_sz)-1 DOWNTO 0);
  SIGNAL en_l_s   : std_logic_vector(((adjust(fifo_sz)-1)/8) DOWNTO 0);

  SIGNAL din_rdy_drv  : std_logic;
  SIGNAL dout_vld_drv : std_logic;
  SIGNAL din_vld_int   : std_logic;
  SIGNAL active       : std_logic;

  SIGNAL count  : integer range 0 to fifo_sz+1 := 0;
  -- pragma translate_off
  SIGNAL peak   : integer range 0 to fifo_sz+1 := 0;
  -- pragma translate_on

BEGIN
  --din_rdy  <= din_rdy_drv;
  -- din_rdy_drv  <= dout_rdy OR (NOT stat(0) AND hs_init(0));
  din_rdy  <= '1' WHEN ((fifo_sz > 0) and (((stat(0) = '0') or (dout_rdy = '1')) and (hs_init(0) = '1'))) or
                       ((fifo_sz <= 0) and (dout_rdy = '1')) else '0';
  
  dout_vld <= dout_vld_drv;
  is_idle  <= (NOT ((din_vld and din_rdy_drv) or (dout_vld_drv and dout_rdy))) and hs_init(0);
  
  FIFO_REG: IF fifo_sz > 0 GENERATE
    din_vld_int  <= din_vld AND hs_init(0);
    din_rdy_drv  <= dout_rdy OR (NOT stat(0) AND hs_init(0));
    dout_vld_drv <= din_vld_int OR stat(fifo_sz-1);

    active       <= (din_vld_int AND din_rdy_drv) OR (dout_rdy AND dout_vld_drv);

    sd <= conv_std_logic_vector(count 
            - (conv_integer(dout_rdy AND stat(fifo_sz-1)))
            + conv_integer(din_vld_int)
            , sz_width);   -- 32 == sz_width;

    DO_PROC: PROCESS(sbuf, din, stat)
    BEGIN
      IF conv_integer(stat(fifo_sz-1)) = 1 THEN
        dout <= sbuf(width*fifo_sz-1 DOWNTO width*(fifo_sz-1));
      ELSE
        dout <= din; -- pass through
     END IF;
    END PROCESS;
  
    FIFOPROC: PROCESS(din_vld_int, dout_rdy, din, stat, sbuf, en, active)
      VARIABLE stat_ahead,
               stat_behind,
               stat_nxt,
               en_l_var : std_logic;
      VARIABLE buf_nxt  : std_logic_vector(width-1 DOWNTO 0);
      VARIABLE n_elem   : integer range 0 to fifo_sz+1;
      VARIABLE count_t  : integer range 0 to fifo_sz+1;
    BEGIN
      n_elem := 0;
      FOR i IN fifo_sz-1 DOWNTO 0 LOOP
        IF i /= 0         THEN stat_behind := stat(i-1); ELSE stat_behind := '0'; END IF;
        IF i /= fifo_sz-1 THEN stat_ahead  := stat(i+1); ELSE stat_ahead  := '1'; END IF;

        -- Determine if this buffer element will have data
        stat_nxt := stat_ahead AND                        -- valid element ahead of this one (or head)
                      (stat_behind                        -- valid element behind this one
                        OR (stat(i) AND NOT dout_rdy)     -- valid element, output not ready (in use, no tx)
                        OR (stat(i) AND din_vld_int)      -- valid element and input has data
                        OR (din_vld_int AND NOT dout_rdy) -- input has data and output not ready
                      );
        stat_pre(i) <= stat_nxt;

        IF conv_integer(dout_rdy AND stat_behind) = 1 THEN
          -- Pop n Shift 
          buf_nxt := sbuf(width*i-1 DOWNTO width*(i-1));
          en_l_var := '1';                             
        ELSIF conv_integer(din_vld_int AND stat_nxt AND    NOT(NOT dout_rdy AND stat(i))) =  1 THEN
          -- Push input on to buffer       ^will have data ^-- ??? not already in use, no tx ???
          buf_nxt := din;
          en_l_var := '1';
        ELSE
          buf_nxt := (others => 'X'); --din; -- Don't care input to disabled flop
          en_l_var := '0';
        END IF;

        buf_pre(width*(i+1)-1 DOWNTO width*i) <= buf_nxt;

        IF conv_integer(ph_en) = 1 THEN
          en_l(i) <= en AND en_l_var;
        ELSE
          en_l(i) <= en OR (NOT en_l_var);
        END IF;

        IF (stat_ahead = '1' AND stat(i) = '0') then
          -- Found tail, update number of elements for count
          n_elem := fifo_sz - 1 - i;
        END IF;
      END LOOP;

      -- Enable for stat registers (partitioned into banks of eight)
      -- Take care of the head first
      IF conv_integer(ph_en) = 1 THEN
        en_l_s((adjust(fifo_sz)-1)/8) <= en AND active;
      ELSE
        en_l_s((adjust(fifo_sz)-1)/8) <= en OR NOT active;
      END IF;
      -- Now every eight
      FOR i IN fifo_sz-1 DOWNTO 7 LOOP
        IF (i rem 8) = 0 THEN
          IF conv_integer(ph_en) = 1 THEN
            en_l_s((i/8)-1) <= en AND stat(i) AND active;
          ELSE
            en_l_s((i/8)-1) <= en OR (NOT stat(i)) OR NOT active;
          END IF;
        END IF;
      END LOOP;

      IF stat(fifo_sz-1) = '0' THEN
        count_t := 0;
      ELSIF stat(0) = '1' THEN
        count_t := fifo_sz;
      ELSE
        count_t := n_elem;
      END IF;
      count <= count_t;
      -- pragma translate_off
      IF ( peak < count_t ) THEN
        peak <= count_t;
      END IF;
      -- pragma translate_on
    END PROCESS;

    HS_INIT_REG : ccs_genreg_v1
      GENERIC MAP (
        width   => 1,
        ph_clk  => ph_clk,
        ph_en   => 1,
        ph_arst => ph_arst,
        ph_srst => ph_srst,
        has_en  => 0
      )
      PORT MAP (
        clk     => clk,
        en      => '1',
        arst    => arst,
        srst    => srst,
        d       => "1",
        z       => hs_init
      );

    GEN_REGS: FOR i IN fifo_sz-1 DOWNTO 0 GENERATE
      STATREG : ccs_genreg_v1
        GENERIC MAP (
          width   => 1,
          ph_clk  => ph_clk,
          ph_en   => ph_en,
          ph_arst => ph_arst,
          ph_srst => ph_srst,
          has_en  => 1
        )
        PORT MAP (
          clk     => clk,
          en      => en_l_s(i/8),
          arst    => arst,
          srst    => srst,
          d       => stat_pre(i DOWNTO i),
          z       => stat(i DOWNTO i)
        );

      BUFREG : ccs_genreg_v1
        GENERIC MAP (
          width   => width,
          ph_clk  => ph_clk,
          ph_en   => ph_en,
          ph_arst => ph_arst,
          ph_srst => ph_srst,
          has_en  => 1
        )
        PORT MAP (
          clk     => clk,
          en      => en_l(i),
          arst    => arst,
          srst    => srst,
          d       => buf_pre(width*(i+1)-1 DOWNTO width*i),
          z       => sbuf(width*(i+1)-1 DOWNTO width*i) 
        );
    END GENERATE GEN_REGS;
  END GENERATE FIFO_REG;

  FEED_THRU: IF fifo_sz = 0 GENERATE
    din_rdy_drv  <= dout_rdy;
    dout_vld_drv <= din_vld;
    dout         <= din;
    -- non-blocking is not II=1 when fifo_sz=0
    sd <= conv_std_logic_vector (conv_integer(din_vld AND NOT dout_rdy), sz_width);
  END GENERATE FEED_THRU;
END beh;



--------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_pipe_v5.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--------------------------------------------------------------------------------
--
--            ________________________________________________
-- WRITER    |                                                |          READER
--           |                    ccs_pipe                    |
--           |            ________________________            |
--        --<| din_rdy --<|  ------------------ <|---dout_rdy<|---
--           |            |         FIFO         |            |
--        ---|>din_vld ---|> ------------------  |>--dout_vld |>--
--        ---|>din -------|> ------------------  |> -----dout |>--
--           |            |______________________|            |
--           |________________________________________________|
--
--    din_rdy     - can be considered as a notFULL signal
--    dout_vld    - can be considered as a notEMPTY signal
--    write_stall - an internal debug signal formed from din_vld & !din_rdy
--    read_stall  - an internal debug signal formed from dout_rdy & !dout_vld
--    is_idle     - indicates the clock can be safely gated
--

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_pipe_pkg_v5 IS
  COMPONENT ccs_pipe_v5
    GENERIC (
      rscid    : INTEGER := 0;
      width    : INTEGER := 8;
      sz_width : INTEGER := 8;
      fifo_sz  : INTEGER := 8;
      log2_sz  : INTEGER := 3;
      ph_clk   : INTEGER RANGE 0 TO 1 := 1;
      ph_en    : INTEGER RANGE 0 TO 1 := 1;
      ph_arst  : INTEGER RANGE 0 TO 1 := 1;
      ph_srst  : INTEGER RANGE 0 TO 1 := 1
    );
    PORT (
      -- clock
      clk      : IN  std_logic;
      en       : IN  std_logic;
      arst     : IN  std_logic;
      srst     : IN  std_logic;
      -- writer
      din_rdy  : OUT std_logic;
      din_vld  : IN  std_logic;
      din      : IN  std_logic_vector(width-1 DOWNTO 0);
      -- reader
      dout_rdy : IN  std_logic;
      dout_vld : OUT std_logic;
      dout     : OUT std_logic_vector(width-1 DOWNTO 0);
      -- size
      sz       : OUT std_logic_vector(sz_width-1 DOWNTO 0);
      sz_req   : IN  std_logic;
      is_idle  : OUT std_logic
    );
  END COMPONENT;
END ccs_pipe_pkg_v5;


LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

USE work.ccs_fifo_wait_core_pkg_v5.all;

ENTITY ccs_pipe_v5 IS
  GENERIC (
    rscid    : INTEGER := 0;
    width    : INTEGER := 8;
    sz_width : INTEGER := 8;
    fifo_sz  : INTEGER := 8;
    log2_sz  : INTEGER := 3;
    ph_clk   : INTEGER RANGE 0 TO 1 := 1;
    ph_en    : INTEGER RANGE 0 TO 1 := 1;
    ph_arst  : INTEGER RANGE 0 TO 1 := 1;
    ph_srst  : INTEGER RANGE 0 TO 1 := 1
  );
  PORT (
    -- clock
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    -- writer
    din_rdy  : OUT std_logic;
    din_vld  : IN  std_logic;
    din      : IN  std_logic_vector(width-1 DOWNTO 0);
    -- reader
    dout_rdy : IN  std_logic;
    dout_vld : OUT std_logic;
    dout     : OUT std_logic_vector(width-1 DOWNTO 0);
    -- size
    sz       : OUT std_logic_vector(sz_width-1 DOWNTO 0);
    sz_req   : in  std_logic;
    is_idle  : OUT std_logic
  );
END ccs_pipe_v5;

ARCHITECTURE beh OF ccs_pipe_v5 IS

  SIGNAL din_rdy_drv : std_logic;
  SIGNAL dout_vld_drv : std_logic;

  -- Internal debug signals
  -- pragma translate_off
  SIGNAL write_stall : std_logic;
  SIGNAL read_stall : std_logic;
  -- pragma translate_on

BEGIN

  din_rdy  <= din_rdy_drv;
  dout_vld <= dout_vld_drv;

  -- pragma translate_off
  write_stall <= din_vld  AND NOT din_rdy_drv;
  read_stall  <= dout_rdy AND NOT dout_vld_drv;
  -- pragma translate_on

  FIFO: ccs_fifo_wait_core_v5
    generic map (
      rscid    => rscid,
      width    => width,
      sz_width => sz_width,
      fifo_sz  => fifo_sz,
      ph_clk   => ph_clk,
      ph_en    => ph_en,
      ph_arst  => ph_arst,
      ph_srst  => ph_srst,
      ph_log2  => log2_sz
    )
    port map (
      clk      => clk,
      en       => en,
      arst     => arst,
      srst     => srst,
      din_vld  => din_vld,
      din_rdy  => din_rdy_drv,
      din      => din,
      dout_vld => dout_vld_drv,
      dout_rdy => dout_rdy,
      dout     => dout,
      sd       => sz,
      is_idle  => is_idle
    );

END beh;


--------> ./rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   dirren@lapsrv6.epfl.ch
--  Generated date: Wed Mar  8 16:27:38 2023
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_core_fsm
--  FSM Module
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_core_fsm IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    core_wen : IN STD_LOGIC;
    fsm_output : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    for_C_1_tr0 : IN STD_LOGIC;
    for_1_C_0_tr0 : IN STD_LOGIC
  );
END main_core_core_core_fsm;

ARCHITECTURE v6 OF main_core_core_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for main_core_core_core_fsm_1
  TYPE main_core_core_core_fsm_1_ST IS (main_C_0, for_C_0, for_C_1, for_1_C_0, main_C_1);

  SIGNAL state_var : main_core_core_core_fsm_1_ST;
  SIGNAL state_var_NS : main_core_core_core_fsm_1_ST;

BEGIN
  main_core_core_core_fsm_1 : PROCESS (for_C_1_tr0, for_1_C_0_tr0, state_var)
  BEGIN
    CASE state_var IS
      WHEN for_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00010");
        state_var_NS <= for_C_1;
      WHEN for_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00100");
        IF ( for_C_1_tr0 = '1' ) THEN
          state_var_NS <= for_1_C_0;
        ELSE
          state_var_NS <= for_C_0;
        END IF;
      WHEN for_1_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "01000");
        IF ( for_1_C_0_tr0 = '1' ) THEN
          state_var_NS <= main_C_1;
        ELSE
          state_var_NS <= for_1_C_0;
        END IF;
      WHEN main_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "10000");
        state_var_NS <= main_C_0;
      -- main_C_0
      WHEN OTHERS =>
        fsm_output <= STD_LOGIC_VECTOR'( "00001");
        state_var_NS <= for_C_0;
    END CASE;
  END PROCESS main_core_core_core_fsm_1;

  main_core_core_core_fsm_1_REG : PROCESS (clk)
  BEGIN
    IF clk'event AND ( clk = '1' ) THEN
      IF ( rst = '1' ) THEN
        state_var <= main_C_0;
      ELSE
        IF ( core_wen = '1' ) THEN
          state_var <= state_var_NS;
        END IF;
      END IF;
    END IF;
  END PROCESS main_core_core_core_fsm_1_REG;

END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_staller
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_staller IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    core_wen : OUT STD_LOGIC;
    core_wten : OUT STD_LOGIC;
    feature_cnsi_wen_comp : IN STD_LOGIC;
    weight_cnsi_wen_comp : IN STD_LOGIC;
    hist_cnsi_wen_comp : IN STD_LOGIC;
    out_cnsi_wen_comp : IN STD_LOGIC
  );
END main_core_core_staller;

ARCHITECTURE v6 OF main_core_core_staller IS
  -- Default Constants

  -- Output Reader Declarations
  SIGNAL core_wen_drv : STD_LOGIC;

BEGIN
  -- Output Reader Assignments
  core_wen <= core_wen_drv;

  core_wen_drv <= feature_cnsi_wen_comp AND weight_cnsi_wen_comp AND hist_cnsi_wen_comp
      AND out_cnsi_wen_comp;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        core_wten <= '0';
      ELSE
        core_wten <= NOT core_wen_drv;
      END IF;
    END IF;
  END PROCESS;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_return_rsc_triosy_obj_return_rsc_triosy_wait_ctrl
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_return_rsc_triosy_obj_return_rsc_triosy_wait_ctrl IS
  PORT(
    core_wten : IN STD_LOGIC;
    return_rsc_triosy_obj_iswt0 : IN STD_LOGIC;
    return_rsc_triosy_obj_ld_core_sct : OUT STD_LOGIC
  );
END main_core_core_return_rsc_triosy_obj_return_rsc_triosy_wait_ctrl;

ARCHITECTURE v6 OF main_core_core_return_rsc_triosy_obj_return_rsc_triosy_wait_ctrl
    IS
  -- Default Constants

BEGIN
  return_rsc_triosy_obj_ld_core_sct <= return_rsc_triosy_obj_iswt0 AND (NOT core_wten);
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_out_cnsi_out_wait_dp
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_out_cnsi_out_wait_dp IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    out_cnsi_oswt : IN STD_LOGIC;
    out_cnsi_wen_comp : OUT STD_LOGIC;
    out_cnsi_idat_mxwt : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    out_cnsi_biwt : IN STD_LOGIC;
    out_cnsi_bdwt : IN STD_LOGIC;
    out_cnsi_bcwt : OUT STD_LOGIC;
    out_cnsi_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
  );
END main_core_core_out_cnsi_out_wait_dp;

ARCHITECTURE v6 OF main_core_core_out_cnsi_out_wait_dp IS
  -- Default Constants

  -- Output Reader Declarations
  SIGNAL out_cnsi_bcwt_drv : STD_LOGIC;

  -- Interconnect Declarations
  SIGNAL out_cnsi_idat_bfwt : STD_LOGIC_VECTOR (31 DOWNTO 0);

  FUNCTION MUX_v_32_2_2(input_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(31 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

BEGIN
  -- Output Reader Assignments
  out_cnsi_bcwt <= out_cnsi_bcwt_drv;

  out_cnsi_wen_comp <= (NOT out_cnsi_oswt) OR out_cnsi_biwt OR out_cnsi_bcwt_drv;
  out_cnsi_idat_mxwt <= MUX_v_32_2_2(out_cnsi_idat, out_cnsi_idat_bfwt, out_cnsi_bcwt_drv);
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out_cnsi_bcwt_drv <= '0';
      ELSE
        out_cnsi_bcwt_drv <= NOT((NOT(out_cnsi_bcwt_drv OR out_cnsi_biwt)) OR out_cnsi_bdwt);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out_cnsi_idat_bfwt <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000");
      ELSIF ( out_cnsi_biwt = '1' ) THEN
        out_cnsi_idat_bfwt <= out_cnsi_idat;
      END IF;
    END IF;
  END PROCESS;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_out_cnsi_out_wait_ctrl
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_out_cnsi_out_wait_ctrl IS
  PORT(
    core_wen : IN STD_LOGIC;
    out_cnsi_oswt : IN STD_LOGIC;
    out_cnsi_biwt : OUT STD_LOGIC;
    out_cnsi_bdwt : OUT STD_LOGIC;
    out_cnsi_bcwt : IN STD_LOGIC;
    out_cnsi_irdy_core_sct : OUT STD_LOGIC;
    out_cnsi_ivld : IN STD_LOGIC
  );
END main_core_core_out_cnsi_out_wait_ctrl;

ARCHITECTURE v6 OF main_core_core_out_cnsi_out_wait_ctrl IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL out_cnsi_ogwt : STD_LOGIC;

BEGIN
  out_cnsi_bdwt <= out_cnsi_oswt AND core_wen;
  out_cnsi_biwt <= out_cnsi_ogwt AND out_cnsi_ivld;
  out_cnsi_ogwt <= out_cnsi_oswt AND (NOT out_cnsi_bcwt);
  out_cnsi_irdy_core_sct <= out_cnsi_ogwt;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_hist_cnsi_hist_wait_dp
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_hist_cnsi_hist_wait_dp IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    hist_cnsi_oswt : IN STD_LOGIC;
    hist_cnsi_wen_comp : OUT STD_LOGIC;
    hist_cnsi_biwt : IN STD_LOGIC;
    hist_cnsi_bdwt : IN STD_LOGIC;
    hist_cnsi_bcwt : OUT STD_LOGIC
  );
END main_core_core_hist_cnsi_hist_wait_dp;

ARCHITECTURE v6 OF main_core_core_hist_cnsi_hist_wait_dp IS
  -- Default Constants

  -- Output Reader Declarations
  SIGNAL hist_cnsi_bcwt_drv : STD_LOGIC;

BEGIN
  -- Output Reader Assignments
  hist_cnsi_bcwt <= hist_cnsi_bcwt_drv;

  hist_cnsi_wen_comp <= (NOT hist_cnsi_oswt) OR hist_cnsi_biwt OR hist_cnsi_bcwt_drv;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_cnsi_bcwt_drv <= '0';
      ELSE
        hist_cnsi_bcwt_drv <= NOT((NOT(hist_cnsi_bcwt_drv OR hist_cnsi_biwt)) OR
            hist_cnsi_bdwt);
      END IF;
    END IF;
  END PROCESS;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_hist_cnsi_hist_wait_ctrl
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_hist_cnsi_hist_wait_ctrl IS
  PORT(
    core_wen : IN STD_LOGIC;
    hist_cnsi_oswt : IN STD_LOGIC;
    hist_cnsi_irdy : IN STD_LOGIC;
    hist_cnsi_biwt : OUT STD_LOGIC;
    hist_cnsi_bdwt : OUT STD_LOGIC;
    hist_cnsi_bcwt : IN STD_LOGIC;
    hist_cnsi_ivld_core_sct : OUT STD_LOGIC
  );
END main_core_core_hist_cnsi_hist_wait_ctrl;

ARCHITECTURE v6 OF main_core_core_hist_cnsi_hist_wait_ctrl IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL hist_cnsi_ogwt : STD_LOGIC;

BEGIN
  hist_cnsi_bdwt <= hist_cnsi_oswt AND core_wen;
  hist_cnsi_biwt <= hist_cnsi_ogwt AND hist_cnsi_irdy;
  hist_cnsi_ogwt <= hist_cnsi_oswt AND (NOT hist_cnsi_bcwt);
  hist_cnsi_ivld_core_sct <= hist_cnsi_ogwt;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_weight_cnsi_weight_wait_dp
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_weight_cnsi_weight_wait_dp IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    weight_cnsi_oswt : IN STD_LOGIC;
    weight_cnsi_wen_comp : OUT STD_LOGIC;
    weight_cnsi_biwt : IN STD_LOGIC;
    weight_cnsi_bdwt : IN STD_LOGIC;
    weight_cnsi_bcwt : OUT STD_LOGIC
  );
END main_core_core_weight_cnsi_weight_wait_dp;

ARCHITECTURE v6 OF main_core_core_weight_cnsi_weight_wait_dp IS
  -- Default Constants

  -- Output Reader Declarations
  SIGNAL weight_cnsi_bcwt_drv : STD_LOGIC;

BEGIN
  -- Output Reader Assignments
  weight_cnsi_bcwt <= weight_cnsi_bcwt_drv;

  weight_cnsi_wen_comp <= (NOT weight_cnsi_oswt) OR weight_cnsi_biwt OR weight_cnsi_bcwt_drv;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        weight_cnsi_bcwt_drv <= '0';
      ELSE
        weight_cnsi_bcwt_drv <= NOT((NOT(weight_cnsi_bcwt_drv OR weight_cnsi_biwt))
            OR weight_cnsi_bdwt);
      END IF;
    END IF;
  END PROCESS;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_weight_cnsi_weight_wait_ctrl
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_weight_cnsi_weight_wait_ctrl IS
  PORT(
    core_wen : IN STD_LOGIC;
    weight_cnsi_oswt : IN STD_LOGIC;
    weight_cnsi_irdy : IN STD_LOGIC;
    weight_cnsi_biwt : OUT STD_LOGIC;
    weight_cnsi_bdwt : OUT STD_LOGIC;
    weight_cnsi_bcwt : IN STD_LOGIC;
    weight_cnsi_ivld_core_sct : OUT STD_LOGIC
  );
END main_core_core_weight_cnsi_weight_wait_ctrl;

ARCHITECTURE v6 OF main_core_core_weight_cnsi_weight_wait_ctrl IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL weight_cnsi_ogwt : STD_LOGIC;

BEGIN
  weight_cnsi_bdwt <= weight_cnsi_oswt AND core_wen;
  weight_cnsi_biwt <= weight_cnsi_ogwt AND weight_cnsi_irdy;
  weight_cnsi_ogwt <= weight_cnsi_oswt AND (NOT weight_cnsi_bcwt);
  weight_cnsi_ivld_core_sct <= weight_cnsi_ogwt;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_feature_cnsi_feature_wait_dp
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_feature_cnsi_feature_wait_dp IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    feature_cnsi_oswt : IN STD_LOGIC;
    feature_cnsi_wen_comp : OUT STD_LOGIC;
    feature_cnsi_biwt : IN STD_LOGIC;
    feature_cnsi_bdwt : IN STD_LOGIC;
    feature_cnsi_bcwt : OUT STD_LOGIC
  );
END main_core_core_feature_cnsi_feature_wait_dp;

ARCHITECTURE v6 OF main_core_core_feature_cnsi_feature_wait_dp IS
  -- Default Constants

  -- Output Reader Declarations
  SIGNAL feature_cnsi_bcwt_drv : STD_LOGIC;

BEGIN
  -- Output Reader Assignments
  feature_cnsi_bcwt <= feature_cnsi_bcwt_drv;

  feature_cnsi_wen_comp <= (NOT feature_cnsi_oswt) OR feature_cnsi_biwt OR feature_cnsi_bcwt_drv;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        feature_cnsi_bcwt_drv <= '0';
      ELSE
        feature_cnsi_bcwt_drv <= NOT((NOT(feature_cnsi_bcwt_drv OR feature_cnsi_biwt))
            OR feature_cnsi_bdwt);
      END IF;
    END IF;
  END PROCESS;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_feature_cnsi_feature_wait_ctrl
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_feature_cnsi_feature_wait_ctrl IS
  PORT(
    core_wen : IN STD_LOGIC;
    feature_cnsi_oswt : IN STD_LOGIC;
    feature_cnsi_irdy : IN STD_LOGIC;
    feature_cnsi_biwt : OUT STD_LOGIC;
    feature_cnsi_bdwt : OUT STD_LOGIC;
    feature_cnsi_bcwt : IN STD_LOGIC;
    feature_cnsi_ivld_core_sct : OUT STD_LOGIC
  );
END main_core_core_feature_cnsi_feature_wait_ctrl;

ARCHITECTURE v6 OF main_core_core_feature_cnsi_feature_wait_ctrl IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL feature_cnsi_ogwt : STD_LOGIC;

BEGIN
  feature_cnsi_bdwt <= feature_cnsi_oswt AND core_wen;
  feature_cnsi_biwt <= feature_cnsi_ogwt AND feature_cnsi_irdy;
  feature_cnsi_ogwt <= feature_cnsi_oswt AND (NOT feature_cnsi_bcwt);
  feature_cnsi_ivld_core_sct <= feature_cnsi_ogwt;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_core_fsm
--  FSM Module
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_core_fsm IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    core_wen : IN STD_LOGIC;
    fsm_output : OUT STD_LOGIC_VECTOR (8 DOWNTO 0);
    while_C_1_tr0 : IN STD_LOGIC;
    main_C_1_tr0 : IN STD_LOGIC;
    for_C_0_tr0 : IN STD_LOGIC;
    main_C_2_tr0 : IN STD_LOGIC;
    for_1_C_1_tr0 : IN STD_LOGIC
  );
END histogram_core_core_fsm;

ARCHITECTURE v6 OF histogram_core_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for histogram_core_core_fsm_1
  TYPE histogram_core_core_fsm_1_ST IS (main_C_0, while_C_0, while_C_1, main_C_1,
      for_C_0, main_C_2, for_1_C_0, for_1_C_1, main_C_3);

  SIGNAL state_var : histogram_core_core_fsm_1_ST;
  SIGNAL state_var_NS : histogram_core_core_fsm_1_ST;

BEGIN
  histogram_core_core_fsm_1 : PROCESS (while_C_1_tr0, main_C_1_tr0, for_C_0_tr0,
      main_C_2_tr0, for_1_C_1_tr0, state_var)
  BEGIN
    CASE state_var IS
      WHEN while_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000000010");
        state_var_NS <= while_C_1;
      WHEN while_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000000100");
        IF ( while_C_1_tr0 = '1' ) THEN
          state_var_NS <= main_C_1;
        ELSE
          state_var_NS <= while_C_0;
        END IF;
      WHEN main_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000001000");
        IF ( main_C_1_tr0 = '1' ) THEN
          state_var_NS <= main_C_2;
        ELSE
          state_var_NS <= for_C_0;
        END IF;
      WHEN for_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000010000");
        IF ( for_C_0_tr0 = '1' ) THEN
          state_var_NS <= main_C_2;
        ELSE
          state_var_NS <= for_C_0;
        END IF;
      WHEN main_C_2 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000100000");
        IF ( main_C_2_tr0 = '1' ) THEN
          state_var_NS <= main_C_3;
        ELSE
          state_var_NS <= for_1_C_0;
        END IF;
      WHEN for_1_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "001000000");
        state_var_NS <= for_1_C_1;
      WHEN for_1_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "010000000");
        IF ( for_1_C_1_tr0 = '1' ) THEN
          state_var_NS <= main_C_3;
        ELSE
          state_var_NS <= for_1_C_0;
        END IF;
      WHEN main_C_3 =>
        fsm_output <= STD_LOGIC_VECTOR'( "100000000");
        state_var_NS <= main_C_0;
      -- main_C_0
      WHEN OTHERS =>
        fsm_output <= STD_LOGIC_VECTOR'( "000000001");
        state_var_NS <= while_C_0;
    END CASE;
  END PROCESS histogram_core_core_fsm_1;

  histogram_core_core_fsm_1_REG : PROCESS (clk)
  BEGIN
    IF clk'event AND ( clk = '1' ) THEN
      IF ( rst = '1' ) THEN
        state_var <= main_C_0;
      ELSE
        IF ( core_wen = '1' ) THEN
          state_var <= state_var_NS;
        END IF;
      END IF;
    END IF;
  END PROCESS histogram_core_core_fsm_1_REG;

END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_staller
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_staller IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    core_wen : OUT STD_LOGIC;
    core_wten : OUT STD_LOGIC;
    feature_rsci_wen_comp : IN STD_LOGIC;
    weight_rsci_wen_comp : IN STD_LOGIC;
    out_rsci_wen_comp : IN STD_LOGIC
  );
END histogram_core_staller;

ARCHITECTURE v6 OF histogram_core_staller IS
  -- Default Constants

  -- Output Reader Declarations
  SIGNAL core_wen_drv : STD_LOGIC;

BEGIN
  -- Output Reader Assignments
  core_wen <= core_wen_drv;

  core_wen_drv <= feature_rsci_wen_comp AND weight_rsci_wen_comp AND out_rsci_wen_comp;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        core_wten <= '0';
      ELSE
        core_wten <= NOT core_wen_drv;
      END IF;
    END IF;
  END PROCESS;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_n_rsc_triosy_obj_n_rsc_triosy_wait_ctrl
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_n_rsc_triosy_obj_n_rsc_triosy_wait_ctrl IS
  PORT(
    core_wten : IN STD_LOGIC;
    n_rsc_triosy_obj_iswt0 : IN STD_LOGIC;
    n_rsc_triosy_obj_ld_core_sct : OUT STD_LOGIC
  );
END histogram_core_n_rsc_triosy_obj_n_rsc_triosy_wait_ctrl;

ARCHITECTURE v6 OF histogram_core_n_rsc_triosy_obj_n_rsc_triosy_wait_ctrl IS
  -- Default Constants

BEGIN
  n_rsc_triosy_obj_ld_core_sct <= n_rsc_triosy_obj_iswt0 AND (NOT core_wten);
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_out_rsci_out_wait_dp
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_out_rsci_out_wait_dp IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    out_rsci_oswt : IN STD_LOGIC;
    out_rsci_wen_comp : OUT STD_LOGIC;
    out_rsci_biwt : IN STD_LOGIC;
    out_rsci_bdwt : IN STD_LOGIC;
    out_rsci_bcwt : OUT STD_LOGIC
  );
END histogram_core_out_rsci_out_wait_dp;

ARCHITECTURE v6 OF histogram_core_out_rsci_out_wait_dp IS
  -- Default Constants

  -- Output Reader Declarations
  SIGNAL out_rsci_bcwt_drv : STD_LOGIC;

BEGIN
  -- Output Reader Assignments
  out_rsci_bcwt <= out_rsci_bcwt_drv;

  out_rsci_wen_comp <= (NOT out_rsci_oswt) OR out_rsci_biwt OR out_rsci_bcwt_drv;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out_rsci_bcwt_drv <= '0';
      ELSE
        out_rsci_bcwt_drv <= NOT((NOT(out_rsci_bcwt_drv OR out_rsci_biwt)) OR out_rsci_bdwt);
      END IF;
    END IF;
  END PROCESS;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_out_rsci_out_wait_ctrl
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_out_rsci_out_wait_ctrl IS
  PORT(
    core_wen : IN STD_LOGIC;
    out_rsci_oswt : IN STD_LOGIC;
    out_rsci_irdy : IN STD_LOGIC;
    out_rsci_biwt : OUT STD_LOGIC;
    out_rsci_bdwt : OUT STD_LOGIC;
    out_rsci_bcwt : IN STD_LOGIC;
    out_rsci_ivld_core_sct : OUT STD_LOGIC
  );
END histogram_core_out_rsci_out_wait_ctrl;

ARCHITECTURE v6 OF histogram_core_out_rsci_out_wait_ctrl IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL out_rsci_ogwt : STD_LOGIC;

BEGIN
  out_rsci_bdwt <= out_rsci_oswt AND core_wen;
  out_rsci_biwt <= out_rsci_ogwt AND out_rsci_irdy;
  out_rsci_ogwt <= out_rsci_oswt AND (NOT out_rsci_bcwt);
  out_rsci_ivld_core_sct <= out_rsci_ogwt;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_hist_rsci_hist_wait_dp
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_hist_rsci_hist_wait_dp IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    hist_rsci_ivld_mxwt : OUT STD_LOGIC;
    hist_rsci_idat_mxwt : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    hist_rsci_biwt : IN STD_LOGIC;
    hist_rsci_bdwt : IN STD_LOGIC;
    hist_rsci_ivld : IN STD_LOGIC;
    hist_rsci_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
  );
END histogram_core_hist_rsci_hist_wait_dp;

ARCHITECTURE v6 OF histogram_core_hist_rsci_hist_wait_dp IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL hist_rsci_bcwt : STD_LOGIC;
  SIGNAL hist_rsci_ivld_bfwt : STD_LOGIC;
  SIGNAL hist_rsci_idat_gtd : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL hist_rsci_idat_bfwt : STD_LOGIC_VECTOR (31 DOWNTO 0);

  FUNCTION MUX_s_1_2_2(input_0 : STD_LOGIC;
  input_1 : STD_LOGIC;
  sel : STD_LOGIC)
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_32_2_2(input_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(31 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

BEGIN
  hist_rsci_ivld_mxwt <= MUX_s_1_2_2(hist_rsci_ivld, hist_rsci_ivld_bfwt, hist_rsci_bcwt);
  hist_rsci_idat_gtd <= MUX_v_32_2_2(STD_LOGIC_VECTOR'("00000000000000000000000000000000"),
      hist_rsci_idat, hist_rsci_ivld);
  hist_rsci_idat_mxwt <= MUX_v_32_2_2(hist_rsci_idat_gtd, hist_rsci_idat_bfwt, hist_rsci_bcwt);
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_rsci_bcwt <= '0';
      ELSE
        hist_rsci_bcwt <= NOT((NOT(hist_rsci_bcwt OR hist_rsci_biwt)) OR hist_rsci_bdwt);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_rsci_ivld_bfwt <= '0';
        hist_rsci_idat_bfwt <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000");
      ELSIF ( hist_rsci_biwt = '1' ) THEN
        hist_rsci_ivld_bfwt <= hist_rsci_ivld;
        hist_rsci_idat_bfwt <= hist_rsci_idat_gtd;
      END IF;
    END IF;
  END PROCESS;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_hist_rsci_hist_wait_ctrl
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_hist_rsci_hist_wait_ctrl IS
  PORT(
    core_wen : IN STD_LOGIC;
    core_wten : IN STD_LOGIC;
    hist_rsci_oswt : IN STD_LOGIC;
    hist_rsci_biwt : OUT STD_LOGIC;
    hist_rsci_bdwt : OUT STD_LOGIC
  );
END histogram_core_hist_rsci_hist_wait_ctrl;

ARCHITECTURE v6 OF histogram_core_hist_rsci_hist_wait_ctrl IS
  -- Default Constants

BEGIN
  hist_rsci_bdwt <= hist_rsci_oswt AND core_wen;
  hist_rsci_biwt <= (NOT core_wten) AND hist_rsci_oswt;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_weight_rsci_weight_wait_dp
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_weight_rsci_weight_wait_dp IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    weight_rsci_oswt : IN STD_LOGIC;
    weight_rsci_wen_comp : OUT STD_LOGIC;
    weight_rsci_idat_mxwt : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    weight_rsci_biwt : IN STD_LOGIC;
    weight_rsci_bdwt : IN STD_LOGIC;
    weight_rsci_bcwt : OUT STD_LOGIC;
    weight_rsci_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
  );
END histogram_core_weight_rsci_weight_wait_dp;

ARCHITECTURE v6 OF histogram_core_weight_rsci_weight_wait_dp IS
  -- Default Constants

  -- Output Reader Declarations
  SIGNAL weight_rsci_bcwt_drv : STD_LOGIC;

  -- Interconnect Declarations
  SIGNAL weight_rsci_idat_bfwt : STD_LOGIC_VECTOR (31 DOWNTO 0);

  FUNCTION MUX_v_32_2_2(input_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(31 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

BEGIN
  -- Output Reader Assignments
  weight_rsci_bcwt <= weight_rsci_bcwt_drv;

  weight_rsci_wen_comp <= (NOT weight_rsci_oswt) OR weight_rsci_biwt OR weight_rsci_bcwt_drv;
  weight_rsci_idat_mxwt <= MUX_v_32_2_2(weight_rsci_idat, weight_rsci_idat_bfwt,
      weight_rsci_bcwt_drv);
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        weight_rsci_bcwt_drv <= '0';
      ELSE
        weight_rsci_bcwt_drv <= NOT((NOT(weight_rsci_bcwt_drv OR weight_rsci_biwt))
            OR weight_rsci_bdwt);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        weight_rsci_idat_bfwt <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000");
      ELSIF ( weight_rsci_biwt = '1' ) THEN
        weight_rsci_idat_bfwt <= weight_rsci_idat;
      END IF;
    END IF;
  END PROCESS;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_weight_rsci_weight_wait_ctrl
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_weight_rsci_weight_wait_ctrl IS
  PORT(
    core_wen : IN STD_LOGIC;
    weight_rsci_oswt : IN STD_LOGIC;
    weight_rsci_biwt : OUT STD_LOGIC;
    weight_rsci_bdwt : OUT STD_LOGIC;
    weight_rsci_bcwt : IN STD_LOGIC;
    weight_rsci_irdy_core_sct : OUT STD_LOGIC;
    weight_rsci_ivld : IN STD_LOGIC
  );
END histogram_core_weight_rsci_weight_wait_ctrl;

ARCHITECTURE v6 OF histogram_core_weight_rsci_weight_wait_ctrl IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL weight_rsci_ogwt : STD_LOGIC;

BEGIN
  weight_rsci_bdwt <= weight_rsci_oswt AND core_wen;
  weight_rsci_biwt <= weight_rsci_ogwt AND weight_rsci_ivld;
  weight_rsci_ogwt <= weight_rsci_oswt AND (NOT weight_rsci_bcwt);
  weight_rsci_irdy_core_sct <= weight_rsci_ogwt;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_feature_rsci_feature_wait_dp
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_feature_rsci_feature_wait_dp IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    feature_rsci_oswt : IN STD_LOGIC;
    feature_rsci_wen_comp : OUT STD_LOGIC;
    feature_rsci_idat_mxwt : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
    feature_rsci_biwt : IN STD_LOGIC;
    feature_rsci_bdwt : IN STD_LOGIC;
    feature_rsci_bcwt : OUT STD_LOGIC;
    feature_rsci_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
  );
END histogram_core_feature_rsci_feature_wait_dp;

ARCHITECTURE v6 OF histogram_core_feature_rsci_feature_wait_dp IS
  -- Default Constants

  -- Output Reader Declarations
  SIGNAL feature_rsci_bcwt_drv : STD_LOGIC;

  -- Interconnect Declarations
  SIGNAL feature_rsci_idat_bfwt_6_0 : STD_LOGIC_VECTOR (6 DOWNTO 0);

  FUNCTION MUX_v_7_2_2(input_0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(6 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

BEGIN
  -- Output Reader Assignments
  feature_rsci_bcwt <= feature_rsci_bcwt_drv;

  feature_rsci_wen_comp <= (NOT feature_rsci_oswt) OR feature_rsci_biwt OR feature_rsci_bcwt_drv;
  feature_rsci_idat_mxwt <= MUX_v_7_2_2((feature_rsci_idat(6 DOWNTO 0)), feature_rsci_idat_bfwt_6_0,
      feature_rsci_bcwt_drv);
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        feature_rsci_bcwt_drv <= '0';
      ELSE
        feature_rsci_bcwt_drv <= NOT((NOT(feature_rsci_bcwt_drv OR feature_rsci_biwt))
            OR feature_rsci_bdwt);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        feature_rsci_idat_bfwt_6_0 <= STD_LOGIC_VECTOR'( "0000000");
      ELSIF ( feature_rsci_biwt = '1' ) THEN
        feature_rsci_idat_bfwt_6_0 <= feature_rsci_idat(6 DOWNTO 0);
      END IF;
    END IF;
  END PROCESS;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_feature_rsci_feature_wait_ctrl
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_feature_rsci_feature_wait_ctrl IS
  PORT(
    core_wen : IN STD_LOGIC;
    feature_rsci_oswt : IN STD_LOGIC;
    feature_rsci_biwt : OUT STD_LOGIC;
    feature_rsci_bdwt : OUT STD_LOGIC;
    feature_rsci_bcwt : IN STD_LOGIC;
    feature_rsci_irdy_core_sct : OUT STD_LOGIC;
    feature_rsci_ivld : IN STD_LOGIC
  );
END histogram_core_feature_rsci_feature_wait_ctrl;

ARCHITECTURE v6 OF histogram_core_feature_rsci_feature_wait_ctrl IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL feature_rsci_ogwt : STD_LOGIC;

BEGIN
  feature_rsci_bdwt <= feature_rsci_oswt AND core_wen;
  feature_rsci_biwt <= feature_rsci_ogwt AND feature_rsci_ivld;
  feature_rsci_ogwt <= feature_rsci_oswt AND (NOT feature_rsci_bcwt);
  feature_rsci_irdy_core_sct <= feature_rsci_ogwt;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_return_rsc_triosy_obj
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_return_rsc_triosy_obj IS
  PORT(
    return_rsc_triosy_lz : OUT STD_LOGIC;
    core_wten : IN STD_LOGIC;
    return_rsc_triosy_obj_iswt0 : IN STD_LOGIC
  );
END main_core_core_return_rsc_triosy_obj;

ARCHITECTURE v6 OF main_core_core_return_rsc_triosy_obj IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL return_rsc_triosy_obj_ld_core_sct : STD_LOGIC;

  COMPONENT main_core_core_return_rsc_triosy_obj_return_rsc_triosy_wait_ctrl
    PORT(
      core_wten : IN STD_LOGIC;
      return_rsc_triosy_obj_iswt0 : IN STD_LOGIC;
      return_rsc_triosy_obj_ld_core_sct : OUT STD_LOGIC
    );
  END COMPONENT;
BEGIN
  return_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => return_rsc_triosy_obj_ld_core_sct,
      lz => return_rsc_triosy_lz
    );
  main_core_core_return_rsc_triosy_obj_return_rsc_triosy_wait_ctrl_inst : main_core_core_return_rsc_triosy_obj_return_rsc_triosy_wait_ctrl
    PORT MAP(
      core_wten => core_wten,
      return_rsc_triosy_obj_iswt0 => return_rsc_triosy_obj_iswt0,
      return_rsc_triosy_obj_ld_core_sct => return_rsc_triosy_obj_ld_core_sct
    );
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_out_cnsi
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_out_cnsi IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    out_cns_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    out_cns_vld : IN STD_LOGIC;
    out_cns_rdy : OUT STD_LOGIC;
    core_wen : IN STD_LOGIC;
    out_cnsi_oswt : IN STD_LOGIC;
    out_cnsi_wen_comp : OUT STD_LOGIC;
    out_cnsi_idat_mxwt : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
  );
END main_core_core_out_cnsi;

ARCHITECTURE v6 OF main_core_core_out_cnsi IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL out_cnsi_biwt : STD_LOGIC;
  SIGNAL out_cnsi_bdwt : STD_LOGIC;
  SIGNAL out_cnsi_bcwt : STD_LOGIC;
  SIGNAL out_cnsi_irdy_core_sct : STD_LOGIC;
  SIGNAL out_cnsi_ivld : STD_LOGIC;
  SIGNAL out_cnsi_idat : STD_LOGIC_VECTOR (31 DOWNTO 0);

  SIGNAL out_cnsi_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL out_cnsi_idat_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);

  COMPONENT main_core_core_out_cnsi_out_wait_ctrl
    PORT(
      core_wen : IN STD_LOGIC;
      out_cnsi_oswt : IN STD_LOGIC;
      out_cnsi_biwt : OUT STD_LOGIC;
      out_cnsi_bdwt : OUT STD_LOGIC;
      out_cnsi_bcwt : IN STD_LOGIC;
      out_cnsi_irdy_core_sct : OUT STD_LOGIC;
      out_cnsi_ivld : IN STD_LOGIC
    );
  END COMPONENT;
  COMPONENT main_core_core_out_cnsi_out_wait_dp
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      out_cnsi_oswt : IN STD_LOGIC;
      out_cnsi_wen_comp : OUT STD_LOGIC;
      out_cnsi_idat_mxwt : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      out_cnsi_biwt : IN STD_LOGIC;
      out_cnsi_bdwt : IN STD_LOGIC;
      out_cnsi_bcwt : OUT STD_LOGIC;
      out_cnsi_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL main_core_core_out_cnsi_out_wait_dp_inst_out_cnsi_idat_mxwt : STD_LOGIC_VECTOR
      (31 DOWNTO 0);
  SIGNAL main_core_core_out_cnsi_out_wait_dp_inst_out_cnsi_idat : STD_LOGIC_VECTOR
      (31 DOWNTO 0);

BEGIN
  out_cnsi : work.ccs_in_wait_pkg_v1.ccs_in_wait_v1
    GENERIC MAP(
      rscid => 16,
      width => 32
      )
    PORT MAP(
      rdy => out_cns_rdy,
      vld => out_cns_vld,
      dat => out_cnsi_dat,
      irdy => out_cnsi_irdy_core_sct,
      ivld => out_cnsi_ivld,
      idat => out_cnsi_idat_1
    );
  out_cnsi_dat <= out_cns_dat;
  out_cnsi_idat <= out_cnsi_idat_1;

  main_core_core_out_cnsi_out_wait_ctrl_inst : main_core_core_out_cnsi_out_wait_ctrl
    PORT MAP(
      core_wen => core_wen,
      out_cnsi_oswt => out_cnsi_oswt,
      out_cnsi_biwt => out_cnsi_biwt,
      out_cnsi_bdwt => out_cnsi_bdwt,
      out_cnsi_bcwt => out_cnsi_bcwt,
      out_cnsi_irdy_core_sct => out_cnsi_irdy_core_sct,
      out_cnsi_ivld => out_cnsi_ivld
    );
  main_core_core_out_cnsi_out_wait_dp_inst : main_core_core_out_cnsi_out_wait_dp
    PORT MAP(
      clk => clk,
      rst => rst,
      out_cnsi_oswt => out_cnsi_oswt,
      out_cnsi_wen_comp => out_cnsi_wen_comp,
      out_cnsi_idat_mxwt => main_core_core_out_cnsi_out_wait_dp_inst_out_cnsi_idat_mxwt,
      out_cnsi_biwt => out_cnsi_biwt,
      out_cnsi_bdwt => out_cnsi_bdwt,
      out_cnsi_bcwt => out_cnsi_bcwt,
      out_cnsi_idat => main_core_core_out_cnsi_out_wait_dp_inst_out_cnsi_idat
    );
  out_cnsi_idat_mxwt <= main_core_core_out_cnsi_out_wait_dp_inst_out_cnsi_idat_mxwt;
  main_core_core_out_cnsi_out_wait_dp_inst_out_cnsi_idat <= out_cnsi_idat;

END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_hist_cnsi
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_hist_cnsi IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    hist_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    hist_cns_vld : OUT STD_LOGIC;
    hist_cns_rdy : IN STD_LOGIC;
    core_wen : IN STD_LOGIC;
    hist_cnsi_oswt : IN STD_LOGIC;
    hist_cnsi_wen_comp : OUT STD_LOGIC
  );
END main_core_core_hist_cnsi;

ARCHITECTURE v6 OF main_core_core_hist_cnsi IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL hist_cnsi_irdy : STD_LOGIC;
  SIGNAL hist_cnsi_biwt : STD_LOGIC;
  SIGNAL hist_cnsi_bdwt : STD_LOGIC;
  SIGNAL hist_cnsi_bcwt : STD_LOGIC;
  SIGNAL hist_cnsi_ivld_core_sct : STD_LOGIC;

  SIGNAL hist_cnsi_idat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL hist_cnsi_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);

  COMPONENT main_core_core_hist_cnsi_hist_wait_ctrl
    PORT(
      core_wen : IN STD_LOGIC;
      hist_cnsi_oswt : IN STD_LOGIC;
      hist_cnsi_irdy : IN STD_LOGIC;
      hist_cnsi_biwt : OUT STD_LOGIC;
      hist_cnsi_bdwt : OUT STD_LOGIC;
      hist_cnsi_bcwt : IN STD_LOGIC;
      hist_cnsi_ivld_core_sct : OUT STD_LOGIC
    );
  END COMPONENT;
  COMPONENT main_core_core_hist_cnsi_hist_wait_dp
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      hist_cnsi_oswt : IN STD_LOGIC;
      hist_cnsi_wen_comp : OUT STD_LOGIC;
      hist_cnsi_biwt : IN STD_LOGIC;
      hist_cnsi_bdwt : IN STD_LOGIC;
      hist_cnsi_bcwt : OUT STD_LOGIC
    );
  END COMPONENT;
BEGIN
  hist_cnsi : work.ccs_out_wait_pkg_v1.ccs_out_wait_v1
    GENERIC MAP(
      rscid => 15,
      width => 32
      )
    PORT MAP(
      irdy => hist_cnsi_irdy,
      ivld => hist_cnsi_ivld_core_sct,
      idat => hist_cnsi_idat,
      rdy => hist_cns_rdy,
      vld => hist_cns_vld,
      dat => hist_cnsi_dat
    );
  hist_cnsi_idat <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000");
  hist_cns_dat <= hist_cnsi_dat;

  main_core_core_hist_cnsi_hist_wait_ctrl_inst : main_core_core_hist_cnsi_hist_wait_ctrl
    PORT MAP(
      core_wen => core_wen,
      hist_cnsi_oswt => hist_cnsi_oswt,
      hist_cnsi_irdy => hist_cnsi_irdy,
      hist_cnsi_biwt => hist_cnsi_biwt,
      hist_cnsi_bdwt => hist_cnsi_bdwt,
      hist_cnsi_bcwt => hist_cnsi_bcwt,
      hist_cnsi_ivld_core_sct => hist_cnsi_ivld_core_sct
    );
  main_core_core_hist_cnsi_hist_wait_dp_inst : main_core_core_hist_cnsi_hist_wait_dp
    PORT MAP(
      clk => clk,
      rst => rst,
      hist_cnsi_oswt => hist_cnsi_oswt,
      hist_cnsi_wen_comp => hist_cnsi_wen_comp,
      hist_cnsi_biwt => hist_cnsi_biwt,
      hist_cnsi_bdwt => hist_cnsi_bdwt,
      hist_cnsi_bcwt => hist_cnsi_bcwt
    );
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_weight_cnsi
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_weight_cnsi IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    weight_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    weight_cns_vld : OUT STD_LOGIC;
    weight_cns_rdy : IN STD_LOGIC;
    core_wen : IN STD_LOGIC;
    weight_cnsi_oswt : IN STD_LOGIC;
    weight_cnsi_wen_comp : OUT STD_LOGIC;
    weight_cnsi_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
  );
END main_core_core_weight_cnsi;

ARCHITECTURE v6 OF main_core_core_weight_cnsi IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL weight_cnsi_irdy : STD_LOGIC;
  SIGNAL weight_cnsi_biwt : STD_LOGIC;
  SIGNAL weight_cnsi_bdwt : STD_LOGIC;
  SIGNAL weight_cnsi_bcwt : STD_LOGIC;
  SIGNAL weight_cnsi_ivld_core_sct : STD_LOGIC;

  SIGNAL weight_cnsi_idat_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL weight_cnsi_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);

  COMPONENT main_core_core_weight_cnsi_weight_wait_ctrl
    PORT(
      core_wen : IN STD_LOGIC;
      weight_cnsi_oswt : IN STD_LOGIC;
      weight_cnsi_irdy : IN STD_LOGIC;
      weight_cnsi_biwt : OUT STD_LOGIC;
      weight_cnsi_bdwt : OUT STD_LOGIC;
      weight_cnsi_bcwt : IN STD_LOGIC;
      weight_cnsi_ivld_core_sct : OUT STD_LOGIC
    );
  END COMPONENT;
  COMPONENT main_core_core_weight_cnsi_weight_wait_dp
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      weight_cnsi_oswt : IN STD_LOGIC;
      weight_cnsi_wen_comp : OUT STD_LOGIC;
      weight_cnsi_biwt : IN STD_LOGIC;
      weight_cnsi_bdwt : IN STD_LOGIC;
      weight_cnsi_bcwt : OUT STD_LOGIC
    );
  END COMPONENT;
BEGIN
  weight_cnsi : work.ccs_out_wait_pkg_v1.ccs_out_wait_v1
    GENERIC MAP(
      rscid => 14,
      width => 32
      )
    PORT MAP(
      irdy => weight_cnsi_irdy,
      ivld => weight_cnsi_ivld_core_sct,
      idat => weight_cnsi_idat_1,
      rdy => weight_cns_rdy,
      vld => weight_cns_vld,
      dat => weight_cnsi_dat
    );
  weight_cnsi_idat_1 <= weight_cnsi_idat;
  weight_cns_dat <= weight_cnsi_dat;

  main_core_core_weight_cnsi_weight_wait_ctrl_inst : main_core_core_weight_cnsi_weight_wait_ctrl
    PORT MAP(
      core_wen => core_wen,
      weight_cnsi_oswt => weight_cnsi_oswt,
      weight_cnsi_irdy => weight_cnsi_irdy,
      weight_cnsi_biwt => weight_cnsi_biwt,
      weight_cnsi_bdwt => weight_cnsi_bdwt,
      weight_cnsi_bcwt => weight_cnsi_bcwt,
      weight_cnsi_ivld_core_sct => weight_cnsi_ivld_core_sct
    );
  main_core_core_weight_cnsi_weight_wait_dp_inst : main_core_core_weight_cnsi_weight_wait_dp
    PORT MAP(
      clk => clk,
      rst => rst,
      weight_cnsi_oswt => weight_cnsi_oswt,
      weight_cnsi_wen_comp => weight_cnsi_wen_comp,
      weight_cnsi_biwt => weight_cnsi_biwt,
      weight_cnsi_bdwt => weight_cnsi_bdwt,
      weight_cnsi_bcwt => weight_cnsi_bcwt
    );
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core_feature_cnsi
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core_feature_cnsi IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    feature_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    feature_cns_vld : OUT STD_LOGIC;
    feature_cns_rdy : IN STD_LOGIC;
    core_wen : IN STD_LOGIC;
    feature_cnsi_oswt : IN STD_LOGIC;
    feature_cnsi_wen_comp : OUT STD_LOGIC;
    feature_cnsi_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
  );
END main_core_core_feature_cnsi;

ARCHITECTURE v6 OF main_core_core_feature_cnsi IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL feature_cnsi_irdy : STD_LOGIC;
  SIGNAL feature_cnsi_biwt : STD_LOGIC;
  SIGNAL feature_cnsi_bdwt : STD_LOGIC;
  SIGNAL feature_cnsi_bcwt : STD_LOGIC;
  SIGNAL feature_cnsi_ivld_core_sct : STD_LOGIC;

  SIGNAL feature_cnsi_idat_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL feature_cnsi_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);

  COMPONENT main_core_core_feature_cnsi_feature_wait_ctrl
    PORT(
      core_wen : IN STD_LOGIC;
      feature_cnsi_oswt : IN STD_LOGIC;
      feature_cnsi_irdy : IN STD_LOGIC;
      feature_cnsi_biwt : OUT STD_LOGIC;
      feature_cnsi_bdwt : OUT STD_LOGIC;
      feature_cnsi_bcwt : IN STD_LOGIC;
      feature_cnsi_ivld_core_sct : OUT STD_LOGIC
    );
  END COMPONENT;
  COMPONENT main_core_core_feature_cnsi_feature_wait_dp
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      feature_cnsi_oswt : IN STD_LOGIC;
      feature_cnsi_wen_comp : OUT STD_LOGIC;
      feature_cnsi_biwt : IN STD_LOGIC;
      feature_cnsi_bdwt : IN STD_LOGIC;
      feature_cnsi_bcwt : OUT STD_LOGIC
    );
  END COMPONENT;
BEGIN
  feature_cnsi : work.ccs_out_wait_pkg_v1.ccs_out_wait_v1
    GENERIC MAP(
      rscid => 13,
      width => 32
      )
    PORT MAP(
      irdy => feature_cnsi_irdy,
      ivld => feature_cnsi_ivld_core_sct,
      idat => feature_cnsi_idat_1,
      rdy => feature_cns_rdy,
      vld => feature_cns_vld,
      dat => feature_cnsi_dat
    );
  feature_cnsi_idat_1 <= STD_LOGIC_VECTOR'( "0000000000000000000000000") & (feature_cnsi_idat(6
      DOWNTO 0));
  feature_cns_dat <= feature_cnsi_dat;

  main_core_core_feature_cnsi_feature_wait_ctrl_inst : main_core_core_feature_cnsi_feature_wait_ctrl
    PORT MAP(
      core_wen => core_wen,
      feature_cnsi_oswt => feature_cnsi_oswt,
      feature_cnsi_irdy => feature_cnsi_irdy,
      feature_cnsi_biwt => feature_cnsi_biwt,
      feature_cnsi_bdwt => feature_cnsi_bdwt,
      feature_cnsi_bcwt => feature_cnsi_bcwt,
      feature_cnsi_ivld_core_sct => feature_cnsi_ivld_core_sct
    );
  main_core_core_feature_cnsi_feature_wait_dp_inst : main_core_core_feature_cnsi_feature_wait_dp
    PORT MAP(
      clk => clk,
      rst => rst,
      feature_cnsi_oswt => feature_cnsi_oswt,
      feature_cnsi_wen_comp => feature_cnsi_wen_comp,
      feature_cnsi_biwt => feature_cnsi_biwt,
      feature_cnsi_bdwt => feature_cnsi_bdwt,
      feature_cnsi_bcwt => feature_cnsi_bcwt
    );
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_n_rsc_triosy_obj
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_n_rsc_triosy_obj IS
  PORT(
    n_rsc_triosy_lz : OUT STD_LOGIC;
    core_wten : IN STD_LOGIC;
    n_rsc_triosy_obj_iswt0 : IN STD_LOGIC
  );
END histogram_core_n_rsc_triosy_obj;

ARCHITECTURE v6 OF histogram_core_n_rsc_triosy_obj IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL n_rsc_triosy_obj_ld_core_sct : STD_LOGIC;

  COMPONENT histogram_core_n_rsc_triosy_obj_n_rsc_triosy_wait_ctrl
    PORT(
      core_wten : IN STD_LOGIC;
      n_rsc_triosy_obj_iswt0 : IN STD_LOGIC;
      n_rsc_triosy_obj_ld_core_sct : OUT STD_LOGIC
    );
  END COMPONENT;
BEGIN
  n_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => n_rsc_triosy_obj_ld_core_sct,
      lz => n_rsc_triosy_lz
    );
  histogram_core_n_rsc_triosy_obj_n_rsc_triosy_wait_ctrl_inst : histogram_core_n_rsc_triosy_obj_n_rsc_triosy_wait_ctrl
    PORT MAP(
      core_wten => core_wten,
      n_rsc_triosy_obj_iswt0 => n_rsc_triosy_obj_iswt0,
      n_rsc_triosy_obj_ld_core_sct => n_rsc_triosy_obj_ld_core_sct
    );
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_out_rsci
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_out_rsci IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    out_rsc_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    out_rsc_vld : OUT STD_LOGIC;
    out_rsc_rdy : IN STD_LOGIC;
    core_wen : IN STD_LOGIC;
    out_rsci_oswt : IN STD_LOGIC;
    out_rsci_wen_comp : OUT STD_LOGIC;
    out_rsci_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
  );
END histogram_core_out_rsci;

ARCHITECTURE v6 OF histogram_core_out_rsci IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL out_rsci_irdy : STD_LOGIC;
  SIGNAL out_rsci_biwt : STD_LOGIC;
  SIGNAL out_rsci_bdwt : STD_LOGIC;
  SIGNAL out_rsci_bcwt : STD_LOGIC;
  SIGNAL out_rsci_ivld_core_sct : STD_LOGIC;

  SIGNAL out_rsci_idat_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL out_rsci_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);

  COMPONENT histogram_core_out_rsci_out_wait_ctrl
    PORT(
      core_wen : IN STD_LOGIC;
      out_rsci_oswt : IN STD_LOGIC;
      out_rsci_irdy : IN STD_LOGIC;
      out_rsci_biwt : OUT STD_LOGIC;
      out_rsci_bdwt : OUT STD_LOGIC;
      out_rsci_bcwt : IN STD_LOGIC;
      out_rsci_ivld_core_sct : OUT STD_LOGIC
    );
  END COMPONENT;
  COMPONENT histogram_core_out_rsci_out_wait_dp
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      out_rsci_oswt : IN STD_LOGIC;
      out_rsci_wen_comp : OUT STD_LOGIC;
      out_rsci_biwt : IN STD_LOGIC;
      out_rsci_bdwt : IN STD_LOGIC;
      out_rsci_bcwt : OUT STD_LOGIC
    );
  END COMPONENT;
BEGIN
  out_rsci : work.ccs_out_wait_pkg_v1.ccs_out_wait_v1
    GENERIC MAP(
      rscid => 5,
      width => 32
      )
    PORT MAP(
      irdy => out_rsci_irdy,
      ivld => out_rsci_ivld_core_sct,
      idat => out_rsci_idat_1,
      rdy => out_rsc_rdy,
      vld => out_rsc_vld,
      dat => out_rsci_dat
    );
  out_rsci_idat_1 <= out_rsci_idat;
  out_rsc_dat <= out_rsci_dat;

  histogram_core_out_rsci_out_wait_ctrl_inst : histogram_core_out_rsci_out_wait_ctrl
    PORT MAP(
      core_wen => core_wen,
      out_rsci_oswt => out_rsci_oswt,
      out_rsci_irdy => out_rsci_irdy,
      out_rsci_biwt => out_rsci_biwt,
      out_rsci_bdwt => out_rsci_bdwt,
      out_rsci_bcwt => out_rsci_bcwt,
      out_rsci_ivld_core_sct => out_rsci_ivld_core_sct
    );
  histogram_core_out_rsci_out_wait_dp_inst : histogram_core_out_rsci_out_wait_dp
    PORT MAP(
      clk => clk,
      rst => rst,
      out_rsci_oswt => out_rsci_oswt,
      out_rsci_wen_comp => out_rsci_wen_comp,
      out_rsci_biwt => out_rsci_biwt,
      out_rsci_bdwt => out_rsci_bdwt,
      out_rsci_bcwt => out_rsci_bcwt
    );
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_hist_rsci
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_hist_rsci IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    hist_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    hist_rsc_vld : IN STD_LOGIC;
    hist_rsc_rdy : OUT STD_LOGIC;
    core_wen : IN STD_LOGIC;
    core_wten : IN STD_LOGIC;
    hist_rsci_oswt : IN STD_LOGIC;
    hist_rsci_ivld_mxwt : OUT STD_LOGIC;
    hist_rsci_idat_mxwt : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
  );
END histogram_core_hist_rsci;

ARCHITECTURE v6 OF histogram_core_hist_rsci IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL hist_rsci_biwt : STD_LOGIC;
  SIGNAL hist_rsci_bdwt : STD_LOGIC;
  SIGNAL hist_rsci_ivld : STD_LOGIC;
  SIGNAL hist_rsci_idat : STD_LOGIC_VECTOR (31 DOWNTO 0);

  SIGNAL hist_rsci_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL hist_rsci_idat_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);

  COMPONENT histogram_core_hist_rsci_hist_wait_ctrl
    PORT(
      core_wen : IN STD_LOGIC;
      core_wten : IN STD_LOGIC;
      hist_rsci_oswt : IN STD_LOGIC;
      hist_rsci_biwt : OUT STD_LOGIC;
      hist_rsci_bdwt : OUT STD_LOGIC
    );
  END COMPONENT;
  COMPONENT histogram_core_hist_rsci_hist_wait_dp
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      hist_rsci_ivld_mxwt : OUT STD_LOGIC;
      hist_rsci_idat_mxwt : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      hist_rsci_biwt : IN STD_LOGIC;
      hist_rsci_bdwt : IN STD_LOGIC;
      hist_rsci_ivld : IN STD_LOGIC;
      hist_rsci_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL histogram_core_hist_rsci_hist_wait_dp_inst_hist_rsci_idat_mxwt : STD_LOGIC_VECTOR
      (31 DOWNTO 0);
  SIGNAL histogram_core_hist_rsci_hist_wait_dp_inst_hist_rsci_idat : STD_LOGIC_VECTOR
      (31 DOWNTO 0);

BEGIN
  hist_rsci : work.ccs_in_wait_pkg_v1.ccs_in_wait_v1
    GENERIC MAP(
      rscid => 3,
      width => 32
      )
    PORT MAP(
      rdy => hist_rsc_rdy,
      vld => hist_rsc_vld,
      dat => hist_rsci_dat,
      irdy => hist_rsci_biwt,
      ivld => hist_rsci_ivld,
      idat => hist_rsci_idat_1
    );
  hist_rsci_dat <= hist_rsc_dat;
  hist_rsci_idat <= hist_rsci_idat_1;

  histogram_core_hist_rsci_hist_wait_ctrl_inst : histogram_core_hist_rsci_hist_wait_ctrl
    PORT MAP(
      core_wen => core_wen,
      core_wten => core_wten,
      hist_rsci_oswt => hist_rsci_oswt,
      hist_rsci_biwt => hist_rsci_biwt,
      hist_rsci_bdwt => hist_rsci_bdwt
    );
  histogram_core_hist_rsci_hist_wait_dp_inst : histogram_core_hist_rsci_hist_wait_dp
    PORT MAP(
      clk => clk,
      rst => rst,
      hist_rsci_ivld_mxwt => hist_rsci_ivld_mxwt,
      hist_rsci_idat_mxwt => histogram_core_hist_rsci_hist_wait_dp_inst_hist_rsci_idat_mxwt,
      hist_rsci_biwt => hist_rsci_biwt,
      hist_rsci_bdwt => hist_rsci_bdwt,
      hist_rsci_ivld => hist_rsci_ivld,
      hist_rsci_idat => histogram_core_hist_rsci_hist_wait_dp_inst_hist_rsci_idat
    );
  hist_rsci_idat_mxwt <= histogram_core_hist_rsci_hist_wait_dp_inst_hist_rsci_idat_mxwt;
  histogram_core_hist_rsci_hist_wait_dp_inst_hist_rsci_idat <= hist_rsci_idat;

END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_weight_rsci
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_weight_rsci IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    weight_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    weight_rsc_vld : IN STD_LOGIC;
    weight_rsc_rdy : OUT STD_LOGIC;
    core_wen : IN STD_LOGIC;
    weight_rsci_oswt : IN STD_LOGIC;
    weight_rsci_wen_comp : OUT STD_LOGIC;
    weight_rsci_idat_mxwt : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
  );
END histogram_core_weight_rsci;

ARCHITECTURE v6 OF histogram_core_weight_rsci IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL weight_rsci_biwt : STD_LOGIC;
  SIGNAL weight_rsci_bdwt : STD_LOGIC;
  SIGNAL weight_rsci_bcwt : STD_LOGIC;
  SIGNAL weight_rsci_irdy_core_sct : STD_LOGIC;
  SIGNAL weight_rsci_ivld : STD_LOGIC;
  SIGNAL weight_rsci_idat : STD_LOGIC_VECTOR (31 DOWNTO 0);

  SIGNAL weight_rsci_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL weight_rsci_idat_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);

  COMPONENT histogram_core_weight_rsci_weight_wait_ctrl
    PORT(
      core_wen : IN STD_LOGIC;
      weight_rsci_oswt : IN STD_LOGIC;
      weight_rsci_biwt : OUT STD_LOGIC;
      weight_rsci_bdwt : OUT STD_LOGIC;
      weight_rsci_bcwt : IN STD_LOGIC;
      weight_rsci_irdy_core_sct : OUT STD_LOGIC;
      weight_rsci_ivld : IN STD_LOGIC
    );
  END COMPONENT;
  COMPONENT histogram_core_weight_rsci_weight_wait_dp
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      weight_rsci_oswt : IN STD_LOGIC;
      weight_rsci_wen_comp : OUT STD_LOGIC;
      weight_rsci_idat_mxwt : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      weight_rsci_biwt : IN STD_LOGIC;
      weight_rsci_bdwt : IN STD_LOGIC;
      weight_rsci_bcwt : OUT STD_LOGIC;
      weight_rsci_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL histogram_core_weight_rsci_weight_wait_dp_inst_weight_rsci_idat_mxwt : STD_LOGIC_VECTOR
      (31 DOWNTO 0);
  SIGNAL histogram_core_weight_rsci_weight_wait_dp_inst_weight_rsci_idat : STD_LOGIC_VECTOR
      (31 DOWNTO 0);

BEGIN
  weight_rsci : work.ccs_in_wait_pkg_v1.ccs_in_wait_v1
    GENERIC MAP(
      rscid => 2,
      width => 32
      )
    PORT MAP(
      rdy => weight_rsc_rdy,
      vld => weight_rsc_vld,
      dat => weight_rsci_dat,
      irdy => weight_rsci_irdy_core_sct,
      ivld => weight_rsci_ivld,
      idat => weight_rsci_idat_1
    );
  weight_rsci_dat <= weight_rsc_dat;
  weight_rsci_idat <= weight_rsci_idat_1;

  histogram_core_weight_rsci_weight_wait_ctrl_inst : histogram_core_weight_rsci_weight_wait_ctrl
    PORT MAP(
      core_wen => core_wen,
      weight_rsci_oswt => weight_rsci_oswt,
      weight_rsci_biwt => weight_rsci_biwt,
      weight_rsci_bdwt => weight_rsci_bdwt,
      weight_rsci_bcwt => weight_rsci_bcwt,
      weight_rsci_irdy_core_sct => weight_rsci_irdy_core_sct,
      weight_rsci_ivld => weight_rsci_ivld
    );
  histogram_core_weight_rsci_weight_wait_dp_inst : histogram_core_weight_rsci_weight_wait_dp
    PORT MAP(
      clk => clk,
      rst => rst,
      weight_rsci_oswt => weight_rsci_oswt,
      weight_rsci_wen_comp => weight_rsci_wen_comp,
      weight_rsci_idat_mxwt => histogram_core_weight_rsci_weight_wait_dp_inst_weight_rsci_idat_mxwt,
      weight_rsci_biwt => weight_rsci_biwt,
      weight_rsci_bdwt => weight_rsci_bdwt,
      weight_rsci_bcwt => weight_rsci_bcwt,
      weight_rsci_idat => histogram_core_weight_rsci_weight_wait_dp_inst_weight_rsci_idat
    );
  weight_rsci_idat_mxwt <= histogram_core_weight_rsci_weight_wait_dp_inst_weight_rsci_idat_mxwt;
  histogram_core_weight_rsci_weight_wait_dp_inst_weight_rsci_idat <= weight_rsci_idat;

END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core_feature_rsci
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core_feature_rsci IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    feature_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    feature_rsc_vld : IN STD_LOGIC;
    feature_rsc_rdy : OUT STD_LOGIC;
    core_wen : IN STD_LOGIC;
    feature_rsci_oswt : IN STD_LOGIC;
    feature_rsci_wen_comp : OUT STD_LOGIC;
    feature_rsci_idat_mxwt : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
  );
END histogram_core_feature_rsci;

ARCHITECTURE v6 OF histogram_core_feature_rsci IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL feature_rsci_biwt : STD_LOGIC;
  SIGNAL feature_rsci_bdwt : STD_LOGIC;
  SIGNAL feature_rsci_bcwt : STD_LOGIC;
  SIGNAL feature_rsci_irdy_core_sct : STD_LOGIC;
  SIGNAL feature_rsci_ivld : STD_LOGIC;
  SIGNAL feature_rsci_idat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL feature_rsci_idat_mxwt_pconst : STD_LOGIC_VECTOR (6 DOWNTO 0);

  SIGNAL feature_rsci_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL feature_rsci_idat_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);

  COMPONENT histogram_core_feature_rsci_feature_wait_ctrl
    PORT(
      core_wen : IN STD_LOGIC;
      feature_rsci_oswt : IN STD_LOGIC;
      feature_rsci_biwt : OUT STD_LOGIC;
      feature_rsci_bdwt : OUT STD_LOGIC;
      feature_rsci_bcwt : IN STD_LOGIC;
      feature_rsci_irdy_core_sct : OUT STD_LOGIC;
      feature_rsci_ivld : IN STD_LOGIC
    );
  END COMPONENT;
  COMPONENT histogram_core_feature_rsci_feature_wait_dp
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      feature_rsci_oswt : IN STD_LOGIC;
      feature_rsci_wen_comp : OUT STD_LOGIC;
      feature_rsci_idat_mxwt : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
      feature_rsci_biwt : IN STD_LOGIC;
      feature_rsci_bdwt : IN STD_LOGIC;
      feature_rsci_bcwt : OUT STD_LOGIC;
      feature_rsci_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL histogram_core_feature_rsci_feature_wait_dp_inst_feature_rsci_idat_mxwt
      : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL histogram_core_feature_rsci_feature_wait_dp_inst_feature_rsci_idat : STD_LOGIC_VECTOR
      (31 DOWNTO 0);

BEGIN
  feature_rsci : work.ccs_in_wait_pkg_v1.ccs_in_wait_v1
    GENERIC MAP(
      rscid => 1,
      width => 32
      )
    PORT MAP(
      rdy => feature_rsc_rdy,
      vld => feature_rsc_vld,
      dat => feature_rsci_dat,
      irdy => feature_rsci_irdy_core_sct,
      ivld => feature_rsci_ivld,
      idat => feature_rsci_idat_1
    );
  feature_rsci_dat <= feature_rsc_dat;
  feature_rsci_idat <= feature_rsci_idat_1;

  histogram_core_feature_rsci_feature_wait_ctrl_inst : histogram_core_feature_rsci_feature_wait_ctrl
    PORT MAP(
      core_wen => core_wen,
      feature_rsci_oswt => feature_rsci_oswt,
      feature_rsci_biwt => feature_rsci_biwt,
      feature_rsci_bdwt => feature_rsci_bdwt,
      feature_rsci_bcwt => feature_rsci_bcwt,
      feature_rsci_irdy_core_sct => feature_rsci_irdy_core_sct,
      feature_rsci_ivld => feature_rsci_ivld
    );
  histogram_core_feature_rsci_feature_wait_dp_inst : histogram_core_feature_rsci_feature_wait_dp
    PORT MAP(
      clk => clk,
      rst => rst,
      feature_rsci_oswt => feature_rsci_oswt,
      feature_rsci_wen_comp => feature_rsci_wen_comp,
      feature_rsci_idat_mxwt => histogram_core_feature_rsci_feature_wait_dp_inst_feature_rsci_idat_mxwt,
      feature_rsci_biwt => feature_rsci_biwt,
      feature_rsci_bdwt => feature_rsci_bdwt,
      feature_rsci_bcwt => feature_rsci_bcwt,
      feature_rsci_idat => histogram_core_feature_rsci_feature_wait_dp_inst_feature_rsci_idat
    );
  feature_rsci_idat_mxwt_pconst <= histogram_core_feature_rsci_feature_wait_dp_inst_feature_rsci_idat_mxwt;
  histogram_core_feature_rsci_feature_wait_dp_inst_feature_rsci_idat <= feature_rsci_idat;

  feature_rsci_idat_mxwt <= feature_rsci_idat_mxwt_pconst;
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core_core
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core_core IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    return_rsc_triosy_lz : OUT STD_LOGIC;
    feature_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    feature_cns_vld : OUT STD_LOGIC;
    feature_cns_rdy : IN STD_LOGIC;
    weight_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    weight_cns_vld : OUT STD_LOGIC;
    weight_cns_rdy : IN STD_LOGIC;
    hist_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    hist_cns_vld : OUT STD_LOGIC;
    hist_cns_rdy : IN STD_LOGIC;
    out_cns_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    out_cns_vld : IN STD_LOGIC;
    out_cns_rdy : OUT STD_LOGIC;
    return_rsci_idat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
  );
END main_core_core;

ARCHITECTURE v6 OF main_core_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL core_wen : STD_LOGIC;
  SIGNAL core_wten : STD_LOGIC;
  SIGNAL feature_cnsi_wen_comp : STD_LOGIC;
  SIGNAL weight_cnsi_wen_comp : STD_LOGIC;
  SIGNAL hist_cnsi_wen_comp : STD_LOGIC;
  SIGNAL out_cnsi_wen_comp : STD_LOGIC;
  SIGNAL out_cnsi_idat_mxwt : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL weight_cnsi_idat_31 : STD_LOGIC;
  SIGNAL weight_cnsi_idat_30_23 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL weight_cnsi_idat_22 : STD_LOGIC;
  SIGNAL weight_cnsi_idat_21_0 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL feature_cnsi_idat_6_0 : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL fsm_output : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp : STD_LOGIC_VECTOR (27 DOWNTO
      0);
  SIGNAL or_dcpl : STD_LOGIC;
  SIGNAL mux_tmp_3 : STD_LOGIC;
  SIGNAL and_dcpl : STD_LOGIC;
  SIGNAL and_23_cse : STD_LOGIC;
  SIGNAL for_slc_for_acc_5_itm : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_exception_sva_1 : STD_LOGIC;
  SIGNAL return_extract_m_zero_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op1_nan_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_r_rnd_sva_1 : STD_LOGIC_VECTOR (25
      DOWNTO 1);
  SIGNAL return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_r_sign_sva_mx0w0 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_add_r_1_sva_1 : STD_LOGIC_VECTOR (27
      DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_psp_sva_1
      : STD_LOGIC_VECTOR (25 DOWNTO 0);
  SIGNAL return_extract_return_extract_nor_cse_sva_1 : STD_LOGIC;
  SIGNAL wt_d_21_0_sva : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_acc_psp_sva_1 : STD_LOGIC_VECTOR (9
      DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0 : STD_LOGIC_VECTOR
      (23 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_shift_r_sva_1 : STD_LOGIC;
  SIGNAL i_1_6_0_sva : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL wt_d_30_23_sva : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL wt_d_31_sva : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1 : STD_LOGIC_VECTOR
      (8 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0 : STD_LOGIC_VECTOR
      (8 DOWNTO 0);
  SIGNAL for_and_cse : STD_LOGIC;
  SIGNAL reg_return_rsc_triosy_obj_ld_core_psct_cse : STD_LOGIC;
  SIGNAL reg_out_cnsi_irdy_core_psct_cse : STD_LOGIC;
  SIGNAL reg_hist_cnsi_ivld_core_psct_cse : STD_LOGIC;
  SIGNAL reg_weight_cnsi_ivld_core_psct_cse : STD_LOGIC;
  SIGNAL and_2_cse : STD_LOGIC;
  SIGNAL and_9_cse : STD_LOGIC;
  SIGNAL return_operator_2_or_2 : STD_LOGIC;
  SIGNAL reg_return_rsci_idat_reg : STD_LOGIC;
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_itm : STD_LOGIC_VECTOR (27 DOWNTO
      0);
  SIGNAL for_acc_1_cse_6_0_sva_mx0w2 : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1 : STD_LOGIC_VECTOR (24
      DOWNTO 0);
  SIGNAL return_extract_return_extract_or_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_pmx_7_0_sva_1 : STD_LOGIC_VECTOR
      (7 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1
      : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0 : STD_LOGIC_VECTOR
      (1 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0 : STD_LOGIC_VECTOR
      (21 DOWNTO 0);
  SIGNAL drf_op1_m_smx_24_lpi_2_dfm_1 : STD_LOGIC;
  SIGNAL drf_op1_m_smx_23_0_lpi_2_dfm_23_1 : STD_LOGIC;
  SIGNAL drf_op1_m_smx_23_0_lpi_2_dfm_22_1 : STD_LOGIC;
  SIGNAL drf_op1_m_smx_23_0_lpi_2_dfm_21_0_1 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL return_extract_not_4 : STD_LOGIC;
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      : STD_LOGIC_VECTOR (25 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_conc_89_7 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_conc_89_6_0 : STD_LOGIC_VECTOR (6 DOWNTO
      0);
  SIGNAL libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2 :
      STD_LOGIC;
  SIGNAL libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3 :
      STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL or_1_itm : STD_LOGIC;
  SIGNAL or_itm : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1
      : STD_LOGIC;
  SIGNAL for_acc_2_itm_5_1 : STD_LOGIC;

  SIGNAL for_1_mux_nl : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL nor_8_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_if_1_return_add_generic_AC_RND_CONV_false_if_1_nor_nl
      : STD_LOGIC;
  SIGNAL and_39_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_and_nl
      : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_nor_nl
      : STD_LOGIC;
  SIGNAL ac_std_float_cctor_ac_std_float_mux_4_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_qif_3_mux_nl : STD_LOGIC_VECTOR (9
      DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl : STD_LOGIC_VECTOR (9
      DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl : STD_LOGIC_VECTOR
      (4 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_r_un_qif_acc_nl : STD_LOGIC_VECTOR
      (24 DOWNTO 1);
  SIGNAL xnor_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_r_rnd_and_nl : STD_LOGIC;
  SIGNAL xor_2_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_r_inf_acc_nl : STD_LOGIC_VECTOR (9
      DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl : STD_LOGIC_VECTOR
      (8 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_nl
      : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_or_1_nl
      : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_4_nl
      : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_5_nl
      : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_e_dif_not_10_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_qelse_2_mux_1_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_qelse_2_mux_nl : STD_LOGIC_VECTOR (6
      DOWNTO 0);
  SIGNAL for_acc_2_nl : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL mux_6_nl : STD_LOGIC;
  SIGNAL mux_9_nl : STD_LOGIC;
  SIGNAL mux_5_nl : STD_LOGIC;
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_a : STD_LOGIC_VECTOR (27 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_s : STD_LOGIC_VECTOR (7 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_z : STD_LOGIC_VECTOR (27 DOWNTO
      0);

  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_a : STD_LOGIC_VECTOR (27 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s : STD_LOGIC_VECTOR (8 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_z : STD_LOGIC_VECTOR (27 DOWNTO
      0);

  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_a : STD_LOGIC_VECTOR (0 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_s : STD_LOGIC_VECTOR (7 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_z : STD_LOGIC_VECTOR (27
      DOWNTO 0);

  COMPONENT leading_sign_28_1_1_0
    PORT (
      mantissa : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
      all_same : OUT STD_LOGIC;
      rtn : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL leading_sign_28_1_1_0_rg_mantissa : STD_LOGIC_VECTOR (27 DOWNTO 0);
  SIGNAL leading_sign_28_1_1_0_rg_rtn : STD_LOGIC_VECTOR (4 DOWNTO 0);

  COMPONENT main_core_core_feature_cnsi
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      feature_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      feature_cns_vld : OUT STD_LOGIC;
      feature_cns_rdy : IN STD_LOGIC;
      core_wen : IN STD_LOGIC;
      feature_cnsi_oswt : IN STD_LOGIC;
      feature_cnsi_wen_comp : OUT STD_LOGIC;
      feature_cnsi_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL main_core_core_feature_cnsi_inst_feature_cns_dat : STD_LOGIC_VECTOR (31
      DOWNTO 0);
  SIGNAL main_core_core_feature_cnsi_inst_feature_cnsi_idat : STD_LOGIC_VECTOR (31
      DOWNTO 0);

  COMPONENT main_core_core_weight_cnsi
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      weight_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      weight_cns_vld : OUT STD_LOGIC;
      weight_cns_rdy : IN STD_LOGIC;
      core_wen : IN STD_LOGIC;
      weight_cnsi_oswt : IN STD_LOGIC;
      weight_cnsi_wen_comp : OUT STD_LOGIC;
      weight_cnsi_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL main_core_core_weight_cnsi_inst_weight_cns_dat : STD_LOGIC_VECTOR (31 DOWNTO
      0);
  SIGNAL main_core_core_weight_cnsi_inst_weight_cnsi_idat : STD_LOGIC_VECTOR (31
      DOWNTO 0);

  COMPONENT main_core_core_hist_cnsi
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      hist_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      hist_cns_vld : OUT STD_LOGIC;
      hist_cns_rdy : IN STD_LOGIC;
      core_wen : IN STD_LOGIC;
      hist_cnsi_oswt : IN STD_LOGIC;
      hist_cnsi_wen_comp : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL main_core_core_hist_cnsi_inst_hist_cns_dat : STD_LOGIC_VECTOR (31 DOWNTO
      0);

  COMPONENT main_core_core_out_cnsi
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      out_cns_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      out_cns_vld : IN STD_LOGIC;
      out_cns_rdy : OUT STD_LOGIC;
      core_wen : IN STD_LOGIC;
      out_cnsi_oswt : IN STD_LOGIC;
      out_cnsi_wen_comp : OUT STD_LOGIC;
      out_cnsi_idat_mxwt : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL main_core_core_out_cnsi_inst_out_cns_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL main_core_core_out_cnsi_inst_out_cnsi_idat_mxwt : STD_LOGIC_VECTOR (31 DOWNTO
      0);

  COMPONENT main_core_core_return_rsc_triosy_obj
    PORT(
      return_rsc_triosy_lz : OUT STD_LOGIC;
      core_wten : IN STD_LOGIC;
      return_rsc_triosy_obj_iswt0 : IN STD_LOGIC
    );
  END COMPONENT;
  COMPONENT main_core_core_staller
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      core_wen : OUT STD_LOGIC;
      core_wten : OUT STD_LOGIC;
      feature_cnsi_wen_comp : IN STD_LOGIC;
      weight_cnsi_wen_comp : IN STD_LOGIC;
      hist_cnsi_wen_comp : IN STD_LOGIC;
      out_cnsi_wen_comp : IN STD_LOGIC
    );
  END COMPONENT;
  COMPONENT main_core_core_core_fsm
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      core_wen : IN STD_LOGIC;
      fsm_output : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
      for_C_1_tr0 : IN STD_LOGIC;
      for_1_C_0_tr0 : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL main_core_core_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL main_core_core_core_fsm_inst_for_C_1_tr0 : STD_LOGIC;

  FUNCTION CONV_SL_1_1(input_val:BOOLEAN)
  RETURN STD_LOGIC IS
  BEGIN
    IF input_val THEN RETURN '1';ELSE RETURN '0';END IF;
  END;

  FUNCTION MUX_s_1_2_2(input_0 : STD_LOGIC;
  input_1 : STD_LOGIC;
  sel : STD_LOGIC)
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_10_2_2(input_0 : STD_LOGIC_VECTOR(9 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(9 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_22_2_2(input_0 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(21 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_24_2_2(input_0 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(23 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_2_2_2(input_0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(1 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_4_2_2(input_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_5_2_2(input_0 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(4 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_7_2_2(input_0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(6 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_8_2_2(input_0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(7 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_9_2_2(input_0 : STD_LOGIC_VECTOR(8 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(8 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

BEGIN
  operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg : work.mgc_shift_comps_v5.mgc_shift_r_v5
    GENERIC MAP(
      width_a => 28,
      signd_a => 1,
      width_s => 8,
      width_z => 28
      )
    PORT MAP(
      a => operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_a,
      s => operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_s,
      z => operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_z
    );
  operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_a <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(drf_op1_m_smx_24_lpi_2_dfm_1
      & drf_op1_m_smx_23_0_lpi_2_dfm_23_1 & drf_op1_m_smx_23_0_lpi_2_dfm_22_1 & drf_op1_m_smx_23_0_lpi_2_dfm_21_0_1
      & STD_LOGIC_VECTOR'( "00")),28));
  operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_s <= return_add_generic_AC_RND_CONV_false_conc_89_7
      & return_add_generic_AC_RND_CONV_false_conc_89_6_0;
  operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp <= operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_z;

  operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg : work.mgc_shift_comps_v5.mgc_shift_l_v5
    GENERIC MAP(
      width_a => 28,
      signd_a => 0,
      width_s => 9,
      width_z => 28
      )
    PORT MAP(
      a => operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_a,
      s => operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s,
      z => operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_z
    );
  operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_a <= operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      & (operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp(1 DOWNTO 0));
  operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s <= (MUX_v_4_2_2(STD_LOGIC_VECTOR'("0000"),
      (return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0(8 DOWNTO 5)),
      (NOT return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1)))
      & (MUX_v_5_2_2((return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0(4
      DOWNTO 0)), libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3,
      return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1));
  return_add_generic_AC_RND_CONV_false_add_r_1_sva_1 <= operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_z;

  operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1 : work.mgc_shift_comps_v5.mgc_shift_l_v5
    GENERIC MAP(
      width_a => 1,
      signd_a => 1,
      width_s => 8,
      width_z => 28
      )
    PORT MAP(
      a => operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_a,
      s => operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_s,
      z => operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_z
    );
  operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_a(0) <= '1';
  operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_s <= return_add_generic_AC_RND_CONV_false_conc_89_7
      & return_add_generic_AC_RND_CONV_false_conc_89_6_0;
  operator_28_26_true_AC_TRN_AC_WRAP_lshift_itm <= operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_z;

  leading_sign_28_1_1_0_rg : leading_sign_28_1_1_0
    PORT MAP(
      mantissa => leading_sign_28_1_1_0_rg_mantissa,
      all_same => libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2,
      rtn => leading_sign_28_1_1_0_rg_rtn
    );
  leading_sign_28_1_1_0_rg_mantissa <= operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      & (operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp(1 DOWNTO 0));
  libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3 <= leading_sign_28_1_1_0_rg_rtn;

  main_core_core_feature_cnsi_inst : main_core_core_feature_cnsi
    PORT MAP(
      clk => clk,
      rst => rst,
      feature_cns_dat => main_core_core_feature_cnsi_inst_feature_cns_dat,
      feature_cns_vld => feature_cns_vld,
      feature_cns_rdy => feature_cns_rdy,
      core_wen => core_wen,
      feature_cnsi_oswt => reg_weight_cnsi_ivld_core_psct_cse,
      feature_cnsi_wen_comp => feature_cnsi_wen_comp,
      feature_cnsi_idat => main_core_core_feature_cnsi_inst_feature_cnsi_idat
    );
  feature_cns_dat <= main_core_core_feature_cnsi_inst_feature_cns_dat;
  main_core_core_feature_cnsi_inst_feature_cnsi_idat <= STD_LOGIC_VECTOR(UNSIGNED'(
      "0000000000000000000000000") & UNSIGNED(feature_cnsi_idat_6_0));

  main_core_core_weight_cnsi_inst : main_core_core_weight_cnsi
    PORT MAP(
      clk => clk,
      rst => rst,
      weight_cns_dat => main_core_core_weight_cnsi_inst_weight_cns_dat,
      weight_cns_vld => weight_cns_vld,
      weight_cns_rdy => weight_cns_rdy,
      core_wen => core_wen,
      weight_cnsi_oswt => reg_weight_cnsi_ivld_core_psct_cse,
      weight_cnsi_wen_comp => weight_cnsi_wen_comp,
      weight_cnsi_idat => main_core_core_weight_cnsi_inst_weight_cnsi_idat
    );
  weight_cns_dat <= main_core_core_weight_cnsi_inst_weight_cns_dat;
  main_core_core_weight_cnsi_inst_weight_cnsi_idat <= weight_cnsi_idat_31 & weight_cnsi_idat_30_23
      & weight_cnsi_idat_22 & weight_cnsi_idat_21_0;

  main_core_core_hist_cnsi_inst : main_core_core_hist_cnsi
    PORT MAP(
      clk => clk,
      rst => rst,
      hist_cns_dat => main_core_core_hist_cnsi_inst_hist_cns_dat,
      hist_cns_vld => hist_cns_vld,
      hist_cns_rdy => hist_cns_rdy,
      core_wen => core_wen,
      hist_cnsi_oswt => reg_hist_cnsi_ivld_core_psct_cse,
      hist_cnsi_wen_comp => hist_cnsi_wen_comp
    );
  hist_cns_dat <= main_core_core_hist_cnsi_inst_hist_cns_dat;

  main_core_core_out_cnsi_inst : main_core_core_out_cnsi
    PORT MAP(
      clk => clk,
      rst => rst,
      out_cns_dat => main_core_core_out_cnsi_inst_out_cns_dat,
      out_cns_vld => out_cns_vld,
      out_cns_rdy => out_cns_rdy,
      core_wen => core_wen,
      out_cnsi_oswt => reg_out_cnsi_irdy_core_psct_cse,
      out_cnsi_wen_comp => out_cnsi_wen_comp,
      out_cnsi_idat_mxwt => main_core_core_out_cnsi_inst_out_cnsi_idat_mxwt
    );
  main_core_core_out_cnsi_inst_out_cns_dat <= out_cns_dat;
  out_cnsi_idat_mxwt <= main_core_core_out_cnsi_inst_out_cnsi_idat_mxwt;

  main_core_core_return_rsc_triosy_obj_inst : main_core_core_return_rsc_triosy_obj
    PORT MAP(
      return_rsc_triosy_lz => return_rsc_triosy_lz,
      core_wten => core_wten,
      return_rsc_triosy_obj_iswt0 => reg_return_rsc_triosy_obj_ld_core_psct_cse
    );
  main_core_core_staller_inst : main_core_core_staller
    PORT MAP(
      clk => clk,
      rst => rst,
      core_wen => core_wen,
      core_wten => core_wten,
      feature_cnsi_wen_comp => feature_cnsi_wen_comp,
      weight_cnsi_wen_comp => weight_cnsi_wen_comp,
      hist_cnsi_wen_comp => hist_cnsi_wen_comp,
      out_cnsi_wen_comp => out_cnsi_wen_comp
    );
  main_core_core_core_fsm_inst : main_core_core_core_fsm
    PORT MAP(
      clk => clk,
      rst => rst,
      core_wen => core_wen,
      fsm_output => main_core_core_core_fsm_inst_fsm_output,
      for_C_1_tr0 => main_core_core_core_fsm_inst_for_C_1_tr0,
      for_1_C_0_tr0 => or_dcpl
    );
  fsm_output <= main_core_core_core_fsm_inst_fsm_output;
  main_core_core_core_fsm_inst_for_C_1_tr0 <= NOT for_slc_for_acc_5_itm;

  return_rsci_idat <= STD_LOGIC_VECTOR(UNSIGNED'( "0000000000000000000000000000000")
      & CONV_UNSIGNED(reg_return_rsci_idat_reg, 1));
  for_and_cse <= core_wen AND (fsm_output(1));
  and_2_cse <= (NOT (operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp(0))) AND libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2;
  and_9_cse <= CONV_SL_1_1(wt_d_30_23_sva=STD_LOGIC_VECTOR'("11111111"));
  for_acc_1_cse_6_0_sva_mx0w2 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(i_1_6_0_sva)
      + SIGNED'( "0000001"), 7));
  return_add_generic_AC_RND_CONV_false_r_sign_sva_mx0w0 <= (return_add_generic_AC_RND_CONV_false_r_rnd_sva_1(25))
      XOR return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1;
  return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED('1'
      & (NOT return_extract_return_extract_or_sva_1) & (NOT for_slc_for_acc_5_itm)
      & (NOT wt_d_21_0_sva)) + SIGNED'( "0000000000000000000000001"), 25));
  return_extract_return_extract_or_sva_1 <= CONV_SL_1_1(wt_d_30_23_sva/=STD_LOGIC_VECTOR'("00000000"));
  return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_pmx_7_0_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_UNSIGNED(UNSIGNED(NOT
      (return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1(6 DOWNTO 0))), 7),
      8) + SIGNED'( "00000001"), 8));
  return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(wt_d_30_23_sva),
      8), 9) + CONV_UNSIGNED(CONV_UNSIGNED(CONV_UNSIGNED(return_extract_return_extract_nor_cse_sva_1,
      1), 1), 9), 9));
  return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1
      <= NOT((return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1(7)) XOR (return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1(8)));
  return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED('1'
      & (NOT (libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3(4
      DOWNTO 1)))) + SIGNED'( "00001"), 5));
  return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl),
      5)) & (NOT (libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3(0)))),
      6), 10) + CONV_SIGNED(CONV_UNSIGNED(UNSIGNED(return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0),
      9), 10), 10));
  return_add_generic_AC_RND_CONV_false_qif_3_mux_nl <= MUX_v_10_2_2(STD_LOGIC_VECTOR'(
      "0000000001"), STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl),
      10)), return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1);
  return_add_generic_AC_RND_CONV_false_acc_psp_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(return_add_generic_AC_RND_CONV_false_qif_3_mux_nl)
      + CONV_SIGNED(CONV_UNSIGNED(CONV_UNSIGNED(return_add_generic_AC_RND_CONV_false_shift_r_sva_1,
      1), 1), 10), 10));
  return_add_generic_AC_RND_CONV_false_r_un_qif_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(
      -SIGNED(return_add_generic_AC_RND_CONV_false_r_rnd_sva_1(24 DOWNTO 1)), 24));
  xnor_nl <= NOT((return_add_generic_AC_RND_CONV_false_r_rnd_sva_1(25)) XOR return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1);
  return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0 <= MUX_v_24_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(return_add_generic_AC_RND_CONV_false_r_un_qif_acc_nl),
      24)), (return_add_generic_AC_RND_CONV_false_r_rnd_sva_1(24 DOWNTO 1)), xnor_nl);
  return_add_generic_AC_RND_CONV_false_r_rnd_and_nl <= (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1(2))
      AND ((return_add_generic_AC_RND_CONV_false_add_r_1_sva_1(0)) OR CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_psp_sva_1/=STD_LOGIC_VECTOR'("00000000000000000000000000"))
      OR (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1(1)) OR (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1(3)));
  return_add_generic_AC_RND_CONV_false_r_rnd_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(return_add_generic_AC_RND_CONV_false_add_r_1_sva_1(27
      DOWNTO 3)) + CONV_SIGNED(CONV_UNSIGNED(return_add_generic_AC_RND_CONV_false_r_rnd_and_nl,
      1), 25), 25));
  xor_2_nl <= (return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1(7)) XOR (return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1(8));
  return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0 <= MUX_v_9_2_2(STD_LOGIC_VECTOR'(
      "010000000"), return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1, xor_2_nl);
  return_add_generic_AC_RND_CONV_false_shift_r_sva_1 <= return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1
      OR (return_add_generic_AC_RND_CONV_false_r_sign_sva_mx0w0 AND CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_r_rnd_sva_1(24
      DOWNTO 1)=STD_LOGIC_VECTOR'("000000000000000000000000")));
  return_add_generic_AC_RND_CONV_false_op1_nan_sva_1 <= and_9_cse AND (NOT return_extract_m_zero_sva_1);
  return_add_generic_AC_RND_CONV_false_r_inf_acc_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(NOT
      return_add_generic_AC_RND_CONV_false_acc_psp_sva_1) + SIGNED'( "0011111111"),
      10));
  return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1 <= return_add_generic_AC_RND_CONV_false_r_inf_acc_nl(9);
  return_add_generic_AC_RND_CONV_false_exception_sva_1 <= (and_9_cse AND return_extract_m_zero_sva_1)
      OR return_add_generic_AC_RND_CONV_false_op1_nan_sva_1 OR return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1;
  return_extract_m_zero_sva_1 <= NOT(for_slc_for_acc_5_itm OR CONV_SL_1_1(wt_d_21_0_sva/=STD_LOGIC_VECTOR'("0000000000000000000000")));
  return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_UNSIGNED(UNSIGNED(libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3),
      5), 9) - SIGNED(return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0),
      9));
  return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1 <= return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl(8);
  return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_add_r_1_sva_1(26
      DOWNTO 2)=STD_LOGIC_VECTOR'("1111111111111111111111111"));
  return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_psp_sva_1
      <= NOT(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED((NOT drf_op1_m_smx_24_lpi_2_dfm_1)
      & (NOT drf_op1_m_smx_23_0_lpi_2_dfm_23_1) & (NOT drf_op1_m_smx_23_0_lpi_2_dfm_22_1)
      & (NOT drf_op1_m_smx_23_0_lpi_2_dfm_21_0_1)),26)) OR (operator_28_26_true_AC_TRN_AC_WRAP_lshift_itm(27
      DOWNTO 2)));
  return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0 <= MUX_v_2_2_2(STD_LOGIC_VECTOR'(
      '0' & return_extract_return_extract_or_sva_1), (return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1(24
      DOWNTO 23)), wt_d_31_sva);
  return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0 <= MUX_s_1_2_2(for_slc_for_acc_5_itm,
      (return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1(22)), wt_d_31_sva);
  return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0 <= MUX_v_22_2_2(wt_d_21_0_sva,
      (return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1(21 DOWNTO 0)), wt_d_31_sva);
  drf_op1_m_smx_24_lpi_2_dfm_1 <= (return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0(1))
      AND return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1;
  drf_op1_m_smx_23_0_lpi_2_dfm_23_1 <= (return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0(0))
      OR (NOT return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1);
  drf_op1_m_smx_23_0_lpi_2_dfm_22_1 <= return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0
      AND return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1;
  drf_op1_m_smx_23_0_lpi_2_dfm_21_0_1 <= MUX_v_22_2_2(STD_LOGIC_VECTOR'("0000000000000000000000"),
      return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0, return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1);
  return_extract_return_extract_nor_cse_sva_1 <= NOT(CONV_SL_1_1(wt_d_30_23_sva/=STD_LOGIC_VECTOR'("00000000")));
  return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_nl
      <= (return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0(1)) AND
      (NOT return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1);
  return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_or_1_nl
      <= (return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0(0)) OR
      return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1;
  return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_4_nl
      <= return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0 AND (NOT
      return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1);
  return_add_generic_AC_RND_CONV_false_e_dif_not_10_nl <= NOT return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1;
  return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_5_nl
      <= MUX_v_22_2_2(STD_LOGIC_VECTOR'("0000000000000000000000"), return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0,
      return_add_generic_AC_RND_CONV_false_e_dif_not_10_nl);
  operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp(27
      DOWNTO 2)) + CONV_SIGNED(CONV_SIGNED(SIGNED(return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_nl
      & return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_or_1_nl
      & return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_4_nl
      & return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_5_nl),
      25), 26), 26));
  return_add_generic_AC_RND_CONV_false_qelse_2_mux_1_nl <= MUX_s_1_2_2((NOT (return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1(7))),
      (return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_pmx_7_0_sva_1(7)), return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1);
  return_add_generic_AC_RND_CONV_false_conc_89_7 <= return_add_generic_AC_RND_CONV_false_qelse_2_mux_1_nl
      AND return_extract_not_4;
  return_add_generic_AC_RND_CONV_false_qelse_2_mux_nl <= MUX_v_7_2_2((return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1(6
      DOWNTO 0)), (return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_pmx_7_0_sva_1(6
      DOWNTO 0)), return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1);
  return_add_generic_AC_RND_CONV_false_conc_89_6_0 <= MUX_v_7_2_2(STD_LOGIC_VECTOR'("0000000"),
      return_add_generic_AC_RND_CONV_false_qelse_2_mux_nl, return_extract_not_4);
  return_extract_not_4 <= NOT(return_extract_return_extract_nor_cse_sva_1 AND return_extract_m_zero_sva_1);
  return_operator_2_or_2 <= CONV_SL_1_1(out_cnsi_idat_mxwt(30 DOWNTO 0)/=STD_LOGIC_VECTOR'("0000000000000000000000000000000"));
  for_acc_2_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_UNSIGNED(UNSIGNED(for_acc_1_cse_6_0_sva_mx0w2(6
      DOWNTO 2)), 5), 6) + SIGNED'( "100111"), 6));
  for_acc_2_itm_5_1 <= for_acc_2_nl(5);
  or_1_itm <= CONV_SL_1_1(out_cnsi_idat_mxwt/=STD_LOGIC_VECTOR'("00111111100000000000000000000000"));
  or_itm <= CONV_SL_1_1(i_1_6_0_sva(6 DOWNTO 1)/=STD_LOGIC_VECTOR'("000000"));
  mux_9_nl <= MUX_s_1_2_2(return_operator_2_or_2, or_1_itm, or_itm);
  mux_6_nl <= MUX_s_1_2_2(mux_9_nl, return_operator_2_or_2, i_1_6_0_sva(0));
  or_dcpl <= mux_6_nl OR (NOT for_acc_2_itm_5_1);
  mux_5_nl <= MUX_s_1_2_2(return_operator_2_or_2, or_1_itm, or_itm);
  mux_tmp_3 <= MUX_s_1_2_2((NOT mux_5_nl), (NOT return_operator_2_or_2), i_1_6_0_sva(0));
  and_dcpl <= mux_tmp_3 AND for_acc_2_itm_5_1;
  and_23_cse <= (NOT for_slc_for_acc_5_itm) AND (fsm_output(2));
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        wt_d_21_0_sva <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        i_1_6_0_sva <= STD_LOGIC_VECTOR'( "0000000");
        wt_d_30_23_sva <= STD_LOGIC_VECTOR'( "00000000");
        wt_d_31_sva <= '0';
        reg_return_rsc_triosy_obj_ld_core_psct_cse <= '0';
        reg_out_cnsi_irdy_core_psct_cse <= '0';
        reg_hist_cnsi_ivld_core_psct_cse <= '0';
        reg_weight_cnsi_ivld_core_psct_cse <= '0';
        for_slc_for_acc_5_itm <= '0';
      ELSIF ( core_wen = '1' ) THEN
        wt_d_21_0_sva <= MUX_v_22_2_2(STD_LOGIC_VECTOR'("0000000000000000000000"),
            weight_cnsi_idat_21_0, (fsm_output(2)));
        i_1_6_0_sva <= MUX_v_7_2_2(STD_LOGIC_VECTOR'("0000000"), for_1_mux_nl, nor_8_nl);
        wt_d_30_23_sva <= MUX_v_8_2_2(STD_LOGIC_VECTOR'("00000000"), weight_cnsi_idat_30_23,
            (fsm_output(2)));
        wt_d_31_sva <= weight_cnsi_idat_31 AND (fsm_output(2));
        reg_return_rsc_triosy_obj_ld_core_psct_cse <= or_dcpl AND (fsm_output(3));
        reg_out_cnsi_irdy_core_psct_cse <= (and_dcpl AND (fsm_output(3))) OR and_23_cse;
        reg_hist_cnsi_ivld_core_psct_cse <= NOT((NOT((fsm_output(0)) OR (fsm_output(2))))
            OR and_23_cse);
        reg_weight_cnsi_ivld_core_psct_cse <= fsm_output(1);
        for_slc_for_acc_5_itm <= ac_std_float_cctor_ac_std_float_mux_4_nl AND (CONV_SL_1_1(fsm_output(2
            DOWNTO 1)/=STD_LOGIC_VECTOR'("00")));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_return_rsci_idat_reg <= '0';
      ELSIF ( (core_wen AND (NOT(and_dcpl OR (NOT (fsm_output(3)))))) = '1' ) THEN
        reg_return_rsci_idat_reg <= NOT((NOT for_acc_2_itm_5_1) AND mux_tmp_3);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        feature_cnsi_idat_6_0 <= STD_LOGIC_VECTOR'( "0000000");
        weight_cnsi_idat_21_0 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        weight_cnsi_idat_22 <= '0';
        weight_cnsi_idat_30_23 <= STD_LOGIC_VECTOR'( "00000000");
        weight_cnsi_idat_31 <= '0';
      ELSIF ( for_and_cse = '1' ) THEN
        feature_cnsi_idat_6_0 <= for_acc_1_cse_6_0_sva_mx0w2;
        weight_cnsi_idat_21_0 <= MUX_v_22_2_2(STD_LOGIC_VECTOR'("0000000000000000000000"),
            (return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_if_1_return_add_generic_AC_RND_CONV_false_if_1_nor_nl);
        weight_cnsi_idat_22 <= MUX_s_1_2_2(return_add_generic_AC_RND_CONV_false_op1_nan_sva_1,
            (return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0(22)), and_39_nl);
        weight_cnsi_idat_30_23 <= MUX_v_8_2_2(return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_and_nl,
            STD_LOGIC_VECTOR'("11111111"), return_add_generic_AC_RND_CONV_false_exception_sva_1);
        weight_cnsi_idat_31 <= return_add_generic_AC_RND_CONV_false_r_sign_sva_mx0w0;
      END IF;
    END IF;
  END PROCESS;
  for_1_mux_nl <= MUX_v_7_2_2(feature_cnsi_idat_6_0, for_acc_1_cse_6_0_sva_mx0w2,
      fsm_output(3));
  nor_8_nl <= NOT((NOT(CONV_SL_1_1(fsm_output(3 DOWNTO 2)/=STD_LOGIC_VECTOR'("00"))))
      OR and_23_cse);
  ac_std_float_cctor_ac_std_float_mux_4_nl <= MUX_s_1_2_2(for_acc_2_itm_5_1, weight_cnsi_idat_22,
      fsm_output(2));
  return_add_generic_AC_RND_CONV_false_if_1_return_add_generic_AC_RND_CONV_false_if_1_nor_nl
      <= NOT(return_add_generic_AC_RND_CONV_false_exception_sva_1 OR and_2_cse);
  and_39_nl <= (CONV_SL_1_1(wt_d_30_23_sva/=STD_LOGIC_VECTOR'("11111111"))) AND (NOT((NOT((operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp(0))
      OR (NOT libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2)))
      OR return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1)) AND (fsm_output(1));
  return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_nor_nl
      <= NOT(and_2_cse OR (NOT((return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0(23))
      OR return_add_generic_AC_RND_CONV_false_shift_r_sva_1)));
  return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_and_nl
      <= MUX_v_8_2_2(STD_LOGIC_VECTOR'("00000000"), (return_add_generic_AC_RND_CONV_false_acc_psp_sva_1(7
      DOWNTO 0)), return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_nor_nl);
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram_core
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram_core IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    feature_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    feature_rsc_vld : IN STD_LOGIC;
    feature_rsc_rdy : OUT STD_LOGIC;
    weight_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    weight_rsc_vld : IN STD_LOGIC;
    weight_rsc_rdy : OUT STD_LOGIC;
    hist_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    hist_rsc_vld : IN STD_LOGIC;
    hist_rsc_rdy : OUT STD_LOGIC;
    n_rsc_triosy_lz : OUT STD_LOGIC;
    out_rsc_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    out_rsc_vld : OUT STD_LOGIC;
    out_rsc_rdy : IN STD_LOGIC;
    n_rsci_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
  );
END histogram_core;

ARCHITECTURE v6 OF histogram_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL core_wen : STD_LOGIC;
  SIGNAL core_wten : STD_LOGIC;
  SIGNAL feature_rsci_wen_comp : STD_LOGIC;
  SIGNAL feature_rsci_idat_mxwt : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL weight_rsci_wen_comp : STD_LOGIC;
  SIGNAL weight_rsci_idat_mxwt : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL hist_rsci_ivld_mxwt : STD_LOGIC;
  SIGNAL hist_rsci_idat_mxwt : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL out_rsci_wen_comp : STD_LOGIC;
  SIGNAL out_rsci_idat_31 : STD_LOGIC;
  SIGNAL out_rsci_idat_30_23 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL out_rsci_idat_22 : STD_LOGIC;
  SIGNAL out_rsci_idat_21_0 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL fsm_output : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp : STD_LOGIC_VECTOR (9
      DOWNTO 0);
  SIGNAL return_extract_m_zero_return_extract_m_zero_nor_tmp : STD_LOGIC;
  SIGNAL x_ac_ieee_float_base_mux_tmp : STD_LOGIC;
  SIGNAL or_dcpl_6 : STD_LOGIC;
  SIGNAL and_dcpl_10 : STD_LOGIC;
  SIGNAL and_dcpl_11 : STD_LOGIC;
  SIGNAL and_dcpl_12 : STD_LOGIC;
  SIGNAL and_dcpl_13 : STD_LOGIC;
  SIGNAL and_dcpl_14 : STD_LOGIC;
  SIGNAL or_dcpl_12 : STD_LOGIC;
  SIGNAL or_dcpl_13 : STD_LOGIC;
  SIGNAL or_dcpl_14 : STD_LOGIC;
  SIGNAL or_dcpl_15 : STD_LOGIC;
  SIGNAL or_dcpl_16 : STD_LOGIC;
  SIGNAL or_dcpl_17 : STD_LOGIC;
  SIGNAL or_dcpl_19 : STD_LOGIC;
  SIGNAL or_dcpl_20 : STD_LOGIC;
  SIGNAL or_dcpl_21 : STD_LOGIC;
  SIGNAL or_dcpl_22 : STD_LOGIC;
  SIGNAL or_dcpl_23 : STD_LOGIC;
  SIGNAL and_dcpl_21 : STD_LOGIC;
  SIGNAL and_dcpl_22 : STD_LOGIC;
  SIGNAL or_dcpl_25 : STD_LOGIC;
  SIGNAL or_dcpl_26 : STD_LOGIC;
  SIGNAL or_dcpl_28 : STD_LOGIC;
  SIGNAL or_dcpl_29 : STD_LOGIC;
  SIGNAL and_dcpl_28 : STD_LOGIC;
  SIGNAL and_dcpl_29 : STD_LOGIC;
  SIGNAL and_dcpl_30 : STD_LOGIC;
  SIGNAL or_dcpl_31 : STD_LOGIC;
  SIGNAL or_dcpl_32 : STD_LOGIC;
  SIGNAL or_dcpl_33 : STD_LOGIC;
  SIGNAL or_dcpl_35 : STD_LOGIC;
  SIGNAL or_dcpl_36 : STD_LOGIC;
  SIGNAL or_dcpl_37 : STD_LOGIC;
  SIGNAL and_dcpl_35 : STD_LOGIC;
  SIGNAL or_dcpl_39 : STD_LOGIC;
  SIGNAL or_dcpl_40 : STD_LOGIC;
  SIGNAL or_dcpl_42 : STD_LOGIC;
  SIGNAL and_dcpl_41 : STD_LOGIC;
  SIGNAL and_dcpl_42 : STD_LOGIC;
  SIGNAL or_dcpl_44 : STD_LOGIC;
  SIGNAL or_dcpl_45 : STD_LOGIC;
  SIGNAL or_dcpl_46 : STD_LOGIC;
  SIGNAL or_dcpl_48 : STD_LOGIC;
  SIGNAL or_dcpl_49 : STD_LOGIC;
  SIGNAL and_dcpl_46 : STD_LOGIC;
  SIGNAL and_dcpl_47 : STD_LOGIC;
  SIGNAL or_dcpl_51 : STD_LOGIC;
  SIGNAL or_dcpl_53 : STD_LOGIC;
  SIGNAL or_dcpl_54 : STD_LOGIC;
  SIGNAL and_dcpl_50 : STD_LOGIC;
  SIGNAL or_dcpl_57 : STD_LOGIC;
  SIGNAL and_dcpl_53 : STD_LOGIC;
  SIGNAL or_dcpl_60 : STD_LOGIC;
  SIGNAL and_dcpl_58 : STD_LOGIC;
  SIGNAL and_dcpl_59 : STD_LOGIC;
  SIGNAL or_dcpl_62 : STD_LOGIC;
  SIGNAL or_dcpl_63 : STD_LOGIC;
  SIGNAL or_dcpl_65 : STD_LOGIC;
  SIGNAL or_dcpl_66 : STD_LOGIC;
  SIGNAL or_dcpl_68 : STD_LOGIC;
  SIGNAL or_dcpl_71 : STD_LOGIC;
  SIGNAL or_dcpl_74 : STD_LOGIC;
  SIGNAL or_dcpl_77 : STD_LOGIC;
  SIGNAL and_dcpl_84 : STD_LOGIC;
  SIGNAL and_dcpl_85 : STD_LOGIC;
  SIGNAL or_dcpl_88 : STD_LOGIC;
  SIGNAL or_dcpl_89 : STD_LOGIC;
  SIGNAL or_dcpl_91 : STD_LOGIC;
  SIGNAL or_dcpl_92 : STD_LOGIC;
  SIGNAL or_dcpl_94 : STD_LOGIC;
  SIGNAL or_dcpl_97 : STD_LOGIC;
  SIGNAL or_dcpl_100 : STD_LOGIC;
  SIGNAL or_dcpl_107 : STD_LOGIC;
  SIGNAL and_dcpl_110 : STD_LOGIC;
  SIGNAL and_dcpl_111 : STD_LOGIC;
  SIGNAL or_dcpl_114 : STD_LOGIC;
  SIGNAL or_dcpl_115 : STD_LOGIC;
  SIGNAL or_dcpl_117 : STD_LOGIC;
  SIGNAL or_dcpl_118 : STD_LOGIC;
  SIGNAL or_dcpl_126 : STD_LOGIC;
  SIGNAL and_dcpl_131 : STD_LOGIC;
  SIGNAL or_dcpl_138 : STD_LOGIC;
  SIGNAL and_dcpl_148 : STD_LOGIC;
  SIGNAL or_dcpl_155 : STD_LOGIC;
  SIGNAL and_dcpl_167 : STD_LOGIC;
  SIGNAL or_dcpl_174 : STD_LOGIC;
  SIGNAL and_dcpl_188 : STD_LOGIC;
  SIGNAL and_dcpl_189 : STD_LOGIC;
  SIGNAL or_dcpl_192 : STD_LOGIC;
  SIGNAL or_dcpl_193 : STD_LOGIC;
  SIGNAL or_dcpl_195 : STD_LOGIC;
  SIGNAL or_dcpl_196 : STD_LOGIC;
  SIGNAL or_dcpl_204 : STD_LOGIC;
  SIGNAL and_dcpl_209 : STD_LOGIC;
  SIGNAL or_dcpl_216 : STD_LOGIC;
  SIGNAL and_dcpl_228 : STD_LOGIC;
  SIGNAL or_dcpl_235 : STD_LOGIC;
  SIGNAL and_dcpl_245 : STD_LOGIC;
  SIGNAL or_dcpl_252 : STD_LOGIC;
  SIGNAL and_dcpl_267 : STD_LOGIC;
  SIGNAL or_dcpl_271 : STD_LOGIC;
  SIGNAL or_dcpl_274 : STD_LOGIC;
  SIGNAL or_tmp_416 : STD_LOGIC;
  SIGNAL or_tmp_419 : STD_LOGIC;
  SIGNAL or_tmp_422 : STD_LOGIC;
  SIGNAL or_tmp_425 : STD_LOGIC;
  SIGNAL or_tmp_428 : STD_LOGIC;
  SIGNAL or_tmp_431 : STD_LOGIC;
  SIGNAL or_tmp_434 : STD_LOGIC;
  SIGNAL or_tmp_437 : STD_LOGIC;
  SIGNAL or_tmp_440 : STD_LOGIC;
  SIGNAL or_tmp_443 : STD_LOGIC;
  SIGNAL or_tmp_446 : STD_LOGIC;
  SIGNAL or_tmp_449 : STD_LOGIC;
  SIGNAL or_tmp_452 : STD_LOGIC;
  SIGNAL or_tmp_455 : STD_LOGIC;
  SIGNAL or_tmp_458 : STD_LOGIC;
  SIGNAL or_tmp_461 : STD_LOGIC;
  SIGNAL or_tmp_464 : STD_LOGIC;
  SIGNAL or_tmp_467 : STD_LOGIC;
  SIGNAL or_tmp_470 : STD_LOGIC;
  SIGNAL or_tmp_473 : STD_LOGIC;
  SIGNAL or_tmp_476 : STD_LOGIC;
  SIGNAL or_tmp_479 : STD_LOGIC;
  SIGNAL or_tmp_482 : STD_LOGIC;
  SIGNAL or_tmp_485 : STD_LOGIC;
  SIGNAL or_tmp_488 : STD_LOGIC;
  SIGNAL or_tmp_491 : STD_LOGIC;
  SIGNAL or_tmp_494 : STD_LOGIC;
  SIGNAL or_tmp_497 : STD_LOGIC;
  SIGNAL or_tmp_500 : STD_LOGIC;
  SIGNAL or_tmp_503 : STD_LOGIC;
  SIGNAL or_tmp_506 : STD_LOGIC;
  SIGNAL or_tmp_509 : STD_LOGIC;
  SIGNAL or_tmp_512 : STD_LOGIC;
  SIGNAL or_tmp_515 : STD_LOGIC;
  SIGNAL or_tmp_518 : STD_LOGIC;
  SIGNAL or_tmp_521 : STD_LOGIC;
  SIGNAL or_tmp_524 : STD_LOGIC;
  SIGNAL or_tmp_527 : STD_LOGIC;
  SIGNAL or_tmp_530 : STD_LOGIC;
  SIGNAL or_tmp_533 : STD_LOGIC;
  SIGNAL or_tmp_536 : STD_LOGIC;
  SIGNAL or_tmp_539 : STD_LOGIC;
  SIGNAL or_tmp_542 : STD_LOGIC;
  SIGNAL or_tmp_545 : STD_LOGIC;
  SIGNAL or_tmp_548 : STD_LOGIC;
  SIGNAL or_tmp_551 : STD_LOGIC;
  SIGNAL or_tmp_554 : STD_LOGIC;
  SIGNAL or_tmp_557 : STD_LOGIC;
  SIGNAL or_tmp_560 : STD_LOGIC;
  SIGNAL or_tmp_563 : STD_LOGIC;
  SIGNAL or_tmp_566 : STD_LOGIC;
  SIGNAL or_tmp_569 : STD_LOGIC;
  SIGNAL or_tmp_572 : STD_LOGIC;
  SIGNAL or_tmp_575 : STD_LOGIC;
  SIGNAL or_tmp_578 : STD_LOGIC;
  SIGNAL or_tmp_581 : STD_LOGIC;
  SIGNAL or_tmp_584 : STD_LOGIC;
  SIGNAL or_tmp_587 : STD_LOGIC;
  SIGNAL or_tmp_590 : STD_LOGIC;
  SIGNAL or_tmp_593 : STD_LOGIC;
  SIGNAL or_tmp_596 : STD_LOGIC;
  SIGNAL or_tmp_599 : STD_LOGIC;
  SIGNAL or_tmp_602 : STD_LOGIC;
  SIGNAL or_tmp_605 : STD_LOGIC;
  SIGNAL or_tmp_608 : STD_LOGIC;
  SIGNAL or_tmp_611 : STD_LOGIC;
  SIGNAL or_tmp_614 : STD_LOGIC;
  SIGNAL or_tmp_617 : STD_LOGIC;
  SIGNAL or_tmp_620 : STD_LOGIC;
  SIGNAL or_tmp_623 : STD_LOGIC;
  SIGNAL or_tmp_626 : STD_LOGIC;
  SIGNAL or_tmp_629 : STD_LOGIC;
  SIGNAL or_tmp_632 : STD_LOGIC;
  SIGNAL or_tmp_635 : STD_LOGIC;
  SIGNAL or_tmp_638 : STD_LOGIC;
  SIGNAL or_tmp_641 : STD_LOGIC;
  SIGNAL or_tmp_644 : STD_LOGIC;
  SIGNAL or_tmp_647 : STD_LOGIC;
  SIGNAL or_tmp_650 : STD_LOGIC;
  SIGNAL or_tmp_653 : STD_LOGIC;
  SIGNAL or_tmp_656 : STD_LOGIC;
  SIGNAL or_tmp_659 : STD_LOGIC;
  SIGNAL or_tmp_662 : STD_LOGIC;
  SIGNAL or_tmp_665 : STD_LOGIC;
  SIGNAL or_tmp_668 : STD_LOGIC;
  SIGNAL or_tmp_671 : STD_LOGIC;
  SIGNAL or_tmp_674 : STD_LOGIC;
  SIGNAL or_tmp_677 : STD_LOGIC;
  SIGNAL or_tmp_680 : STD_LOGIC;
  SIGNAL or_tmp_683 : STD_LOGIC;
  SIGNAL or_tmp_686 : STD_LOGIC;
  SIGNAL or_tmp_689 : STD_LOGIC;
  SIGNAL or_tmp_692 : STD_LOGIC;
  SIGNAL or_tmp_695 : STD_LOGIC;
  SIGNAL or_tmp_698 : STD_LOGIC;
  SIGNAL or_tmp_701 : STD_LOGIC;
  SIGNAL or_tmp_704 : STD_LOGIC;
  SIGNAL or_tmp_707 : STD_LOGIC;
  SIGNAL or_tmp_710 : STD_LOGIC;
  SIGNAL or_tmp_713 : STD_LOGIC;
  SIGNAL and_1513_cse : STD_LOGIC;
  SIGNAL exit_for_1_sva : STD_LOGIC;
  SIGNAL exit_for_sva_mx0 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_exception_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_r_zero_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0 : STD_LOGIC_VECTOR
      (23 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_op1_inf_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op2_inf_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op1_nan_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op2_nan_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_r_sign_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_add_r_1_sva_1 : STD_LOGIC_VECTOR (27
      DOWNTO 0);
  SIGNAL return_extract_1_return_extract_1_nor_cse_sva_1 : STD_LOGIC;
  SIGNAL return_extract_1_m_zero_sva_1 : STD_LOGIC;
  SIGNAL return_extract_return_extract_nor_cse_sva_1 : STD_LOGIC;
  SIGNAL while_slc_while_acc_5_svs : STD_LOGIC;
  SIGNAL size_6_0_sva : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_op_lshift_sva_1 : STD_LOGIC_VECTOR
      (27 DOWNTO 0);
  SIGNAL for_1_and_cse : STD_LOGIC;
  SIGNAL reg_n_rsc_triosy_obj_ld_core_psct_cse : STD_LOGIC;
  SIGNAL reg_out_rsci_ivld_core_psct_cse : STD_LOGIC;
  SIGNAL reg_hist_rsci_irdy_core_psct_cse : STD_LOGIC;
  SIGNAL reg_weight_rsci_irdy_core_psct_cse : STD_LOGIC;
  SIGNAL and_4721_cse : STD_LOGIC;
  SIGNAL and_4722_cse : STD_LOGIC;
  SIGNAL nor_15_cse : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_22_0_mx0 : STD_LOGIC_VECTOR
      (22 DOWNTO 0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_itm : STD_LOGIC_VECTOR (27 DOWNTO
      0);
  SIGNAL z_out : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL z_out_1 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL z_out_2 : STD_LOGIC_VECTOR (32 DOWNTO 0);
  SIGNAL z_out_3 : STD_LOGIC_VECTOR (24 DOWNTO 0);
  SIGNAL z_out_4 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL z_out_5 : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL n_sva : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL hist_local_d_49_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_49_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_49_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_49_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_50_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_50_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_50_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_50_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_48_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_48_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_48_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_48_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_51_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_51_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_51_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_51_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_47_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_47_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_47_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_47_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_52_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_52_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_52_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_52_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_46_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_46_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_46_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_46_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_53_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_53_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_53_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_53_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_45_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_45_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_45_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_45_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_54_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_54_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_54_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_54_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_44_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_44_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_44_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_44_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_55_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_55_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_55_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_55_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_43_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_43_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_43_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_43_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_56_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_56_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_56_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_56_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_42_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_42_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_42_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_42_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_57_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_57_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_57_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_57_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_41_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_41_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_41_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_41_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_58_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_58_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_58_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_58_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_40_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_40_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_40_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_40_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_59_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_59_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_59_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_59_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_39_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_39_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_39_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_39_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_60_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_60_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_60_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_60_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_38_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_38_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_38_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_38_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_61_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_61_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_61_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_61_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_37_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_37_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_37_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_37_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_62_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_62_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_62_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_62_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_36_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_36_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_36_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_36_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_63_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_63_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_63_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_63_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_35_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_35_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_35_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_35_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_64_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_64_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_64_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_64_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_34_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_34_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_34_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_34_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_65_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_65_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_65_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_65_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_33_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_33_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_33_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_33_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_66_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_66_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_66_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_66_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_32_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_32_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_32_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_32_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_67_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_67_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_67_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_67_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_31_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_31_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_31_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_31_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_68_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_68_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_68_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_68_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_30_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_30_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_30_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_30_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_69_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_69_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_69_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_69_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_29_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_29_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_29_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_29_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_70_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_70_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_70_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_70_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_28_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_28_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_28_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_28_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_71_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_71_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_71_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_71_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_27_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_27_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_27_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_27_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_72_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_72_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_72_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_72_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_26_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_26_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_26_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_26_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_73_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_73_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_73_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_73_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_25_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_25_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_25_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_25_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_74_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_74_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_74_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_74_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_24_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_24_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_24_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_24_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_75_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_75_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_75_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_75_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_23_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_23_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_23_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_23_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_76_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_76_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_76_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_76_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_22_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_22_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_22_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_22_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_77_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_77_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_77_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_77_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_21_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_21_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_21_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_21_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_78_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_78_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_78_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_78_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_20_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_20_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_20_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_20_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_79_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_79_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_79_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_79_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_19_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_19_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_19_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_19_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_80_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_80_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_80_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_80_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_18_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_18_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_18_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_18_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_81_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_81_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_81_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_81_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_17_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_17_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_17_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_17_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_82_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_82_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_82_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_82_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_16_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_16_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_16_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_16_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_83_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_83_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_83_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_83_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_15_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_15_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_15_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_15_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_84_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_84_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_84_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_84_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_14_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_14_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_14_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_14_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_85_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_85_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_85_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_85_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_13_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_13_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_13_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_13_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_86_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_86_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_86_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_86_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_12_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_12_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_12_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_12_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_87_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_87_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_87_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_87_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_11_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_11_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_11_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_11_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_88_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_88_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_88_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_88_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_10_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_10_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_10_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_10_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_89_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_89_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_89_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_89_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_9_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_9_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_9_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_9_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_90_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_90_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_90_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_90_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_8_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_8_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_8_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_8_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_91_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_91_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_91_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_91_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_7_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_7_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_7_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_7_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_92_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_92_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_92_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_92_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_6_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_6_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_6_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_6_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_93_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_93_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_93_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_93_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_5_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_5_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_5_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_5_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_94_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_94_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_94_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_94_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_4_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_4_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_4_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_4_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_95_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_95_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_95_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_95_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_3_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_3_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_3_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_3_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_96_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_96_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_96_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_96_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_2_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_2_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_2_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_2_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_97_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_97_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_97_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_97_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_1_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_1_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_1_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_1_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_98_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_98_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_98_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_98_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_0_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_0_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_0_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_0_31_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_99_22_lpi_3 : STD_LOGIC;
  SIGNAL hist_local_d_99_30_23_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL hist_local_d_99_21_0_lpi_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL hist_local_d_99_31_lpi_3 : STD_LOGIC;
  SIGNAL i_1_sva : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL i_7_0_sva_6_0 : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL for_asn_811_mx0w1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL return_extract_return_extract_or_sva_1 : STD_LOGIC;
  SIGNAL x_to_helper_t_return_d_sva_22_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_24_23_mx0 : STD_LOGIC_VECTOR
      (1 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_op2_m_qr_sva_1 : STD_LOGIC_VECTOR (24
      DOWNTO 0);
  SIGNAL return_extract_1_return_extract_1_or_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0 : STD_LOGIC_VECTOR
      (8 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_acc_psp_sva_1 : STD_LOGIC_VECTOR (9
      DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_shift_r_sva_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1 : STD_LOGIC_VECTOR
      (21 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_psp_sva_1
      : STD_LOGIC_VECTOR (25 DOWNTO 0);
  SIGNAL operator_8_false_return_sva_1 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_op2_e_b_8_0_sva_1 : STD_LOGIC_VECTOR
      (8 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0 : STD_LOGIC_VECTOR
      (1 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0 : STD_LOGIC_VECTOR
      (21 DOWNTO 0);
  SIGNAL drf_op1_m_smx_24_lpi_2_dfm_mx0 : STD_LOGIC;
  SIGNAL drf_op1_m_smx_23_0_lpi_2_dfm_23_mx0 : STD_LOGIC;
  SIGNAL drf_op1_m_smx_23_0_lpi_2_dfm_22_mx0 : STD_LOGIC;
  SIGNAL drf_op1_m_smx_23_0_lpi_2_dfm_21_0_mx0 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_asn_6 : STD_LOGIC_VECTOR (8 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      : STD_LOGIC_VECTOR (25 DOWNTO 0);
  SIGNAL libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2 :
      STD_LOGIC;
  SIGNAL libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3 :
      STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL hist_local_d_and_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_1_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_2_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_3_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_4_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_5_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_6_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_7_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_8_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_9_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_10_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_11_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_12_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_13_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_14_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_15_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_16_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_17_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_18_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_19_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_20_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_21_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_22_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_23_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_24_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_25_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_26_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_27_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_28_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_29_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_30_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_31_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_32_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_33_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_34_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_35_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_36_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_37_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_38_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_39_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_40_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_41_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_42_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_43_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_44_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_45_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_46_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_47_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_48_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_49_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_50_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_51_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_52_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_53_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_54_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_55_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_56_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_57_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_58_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_59_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_60_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_61_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_62_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_63_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_64_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_65_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_66_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_67_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_68_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_69_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_70_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_71_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_72_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_73_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_74_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_75_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_76_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_77_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_78_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_79_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_80_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_81_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_82_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_83_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_84_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_85_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_86_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_87_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_88_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_89_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_90_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_91_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_92_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_93_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_94_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_95_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_96_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_97_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_98_cse : STD_LOGIC;
  SIGNAL hist_local_d_and_99_cse : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1 : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1
      : STD_LOGIC;
  SIGNAL for_1_mux_9_cse : STD_LOGIC_VECTOR (6 DOWNTO 0);

  SIGNAL not_nl : STD_LOGIC;
  SIGNAL for_1_acc_nl : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_and_nl
      : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_nor_nl
      : STD_LOGIC;
  SIGNAL operator_32_true_acc_nl : STD_LOGIC_VECTOR (32 DOWNTO 0);
  SIGNAL xnor_nl : STD_LOGIC;
  SIGNAL nor_7_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_qif_3_mux_nl : STD_LOGIC_VECTOR (9
      DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl : STD_LOGIC_VECTOR (9
      DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl : STD_LOGIC_VECTOR
      (4 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_if_1_return_add_generic_AC_RND_CONV_false_if_1_nor_nl
      : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_r_nan_or_1_nl : STD_LOGIC;
  SIGNAL and_1482_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_r_inf_acc_nl : STD_LOGIC_VECTOR (9
      DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_op_lshift_mux_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op_lshift_mux_1_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op_lshift_mux_6_nl : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_op_lshift_mux_7_nl : STD_LOGIC_VECTOR
      (21 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_qelse_2_mux_nl : STD_LOGIC_VECTOR (8
      DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_nl : STD_LOGIC_VECTOR
      (8 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_1_nl
      : STD_LOGIC;
  SIGNAL return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl : STD_LOGIC_VECTOR
      (8 DOWNTO 0);
  SIGNAL operator_32_true_mux_1_nl : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL operator_32_true_or_1_nl : STD_LOGIC;
  SIGNAL while_while_while_nand_2_nl : STD_LOGIC;
  SIGNAL while_while_while_nand_3_nl : STD_LOGIC;
  SIGNAL while_mux_2_nl : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL while_mux_3_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL return_add_generic_AC_RND_CONV_false_r_un_qif_mux_1_nl : STD_LOGIC_VECTOR
      (23 DOWNTO 0);
  SIGNAL while_mux1h_401_nl : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_a : STD_LOGIC_VECTOR (27 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_s : STD_LOGIC_VECTOR (8 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_z : STD_LOGIC_VECTOR (27 DOWNTO
      0);

  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_a : STD_LOGIC_VECTOR (27 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s : STD_LOGIC_VECTOR (8 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_z : STD_LOGIC_VECTOR (27 DOWNTO
      0);

  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_a : STD_LOGIC_VECTOR (0 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_s : STD_LOGIC_VECTOR (8 DOWNTO
      0);
  SIGNAL operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_z : STD_LOGIC_VECTOR (27
      DOWNTO 0);

  COMPONENT leading_sign_28_1_1_0
    PORT (
      mantissa : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
      all_same : OUT STD_LOGIC;
      rtn : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL leading_sign_28_1_1_0_rg_mantissa : STD_LOGIC_VECTOR (27 DOWNTO 0);
  SIGNAL leading_sign_28_1_1_0_rg_rtn : STD_LOGIC_VECTOR (4 DOWNTO 0);

  COMPONENT histogram_core_feature_rsci
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      feature_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      feature_rsc_vld : IN STD_LOGIC;
      feature_rsc_rdy : OUT STD_LOGIC;
      core_wen : IN STD_LOGIC;
      feature_rsci_oswt : IN STD_LOGIC;
      feature_rsci_wen_comp : OUT STD_LOGIC;
      feature_rsci_idat_mxwt : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL histogram_core_feature_rsci_inst_feature_rsc_dat : STD_LOGIC_VECTOR (31
      DOWNTO 0);
  SIGNAL histogram_core_feature_rsci_inst_feature_rsci_idat_mxwt : STD_LOGIC_VECTOR
      (6 DOWNTO 0);

  COMPONENT histogram_core_weight_rsci
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      weight_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      weight_rsc_vld : IN STD_LOGIC;
      weight_rsc_rdy : OUT STD_LOGIC;
      core_wen : IN STD_LOGIC;
      weight_rsci_oswt : IN STD_LOGIC;
      weight_rsci_wen_comp : OUT STD_LOGIC;
      weight_rsci_idat_mxwt : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL histogram_core_weight_rsci_inst_weight_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO
      0);
  SIGNAL histogram_core_weight_rsci_inst_weight_rsci_idat_mxwt : STD_LOGIC_VECTOR
      (31 DOWNTO 0);

  COMPONENT histogram_core_hist_rsci
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      hist_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      hist_rsc_vld : IN STD_LOGIC;
      hist_rsc_rdy : OUT STD_LOGIC;
      core_wen : IN STD_LOGIC;
      core_wten : IN STD_LOGIC;
      hist_rsci_oswt : IN STD_LOGIC;
      hist_rsci_ivld_mxwt : OUT STD_LOGIC;
      hist_rsci_idat_mxwt : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL histogram_core_hist_rsci_inst_hist_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO
      0);
  SIGNAL histogram_core_hist_rsci_inst_hist_rsci_idat_mxwt : STD_LOGIC_VECTOR (31
      DOWNTO 0);

  COMPONENT histogram_core_out_rsci
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      out_rsc_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      out_rsc_vld : OUT STD_LOGIC;
      out_rsc_rdy : IN STD_LOGIC;
      core_wen : IN STD_LOGIC;
      out_rsci_oswt : IN STD_LOGIC;
      out_rsci_wen_comp : OUT STD_LOGIC;
      out_rsci_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL histogram_core_out_rsci_inst_out_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL histogram_core_out_rsci_inst_out_rsci_idat : STD_LOGIC_VECTOR (31 DOWNTO
      0);

  COMPONENT histogram_core_n_rsc_triosy_obj
    PORT(
      n_rsc_triosy_lz : OUT STD_LOGIC;
      core_wten : IN STD_LOGIC;
      n_rsc_triosy_obj_iswt0 : IN STD_LOGIC
    );
  END COMPONENT;
  COMPONENT histogram_core_staller
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      core_wen : OUT STD_LOGIC;
      core_wten : OUT STD_LOGIC;
      feature_rsci_wen_comp : IN STD_LOGIC;
      weight_rsci_wen_comp : IN STD_LOGIC;
      out_rsci_wen_comp : IN STD_LOGIC
    );
  END COMPONENT;
  COMPONENT histogram_core_core_fsm
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      core_wen : IN STD_LOGIC;
      fsm_output : OUT STD_LOGIC_VECTOR (8 DOWNTO 0);
      while_C_1_tr0 : IN STD_LOGIC;
      main_C_1_tr0 : IN STD_LOGIC;
      for_C_0_tr0 : IN STD_LOGIC;
      main_C_2_tr0 : IN STD_LOGIC;
      for_1_C_1_tr0 : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL histogram_core_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL histogram_core_core_fsm_inst_while_C_1_tr0 : STD_LOGIC;
  SIGNAL histogram_core_core_fsm_inst_main_C_2_tr0 : STD_LOGIC;

  FUNCTION CONV_SL_1_1(input_val:BOOLEAN)
  RETURN STD_LOGIC IS
  BEGIN
    IF input_val THEN RETURN '1';ELSE RETURN '0';END IF;
  END;

  FUNCTION MUX1HOT_v_32_3_2(input_2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(2 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(31 DOWNTO 0);
    VARIABLE tmp : STD_LOGIC_VECTOR(31 DOWNTO 0);

    BEGIN
      tmp := (OTHERS=>sel(0));
      result := input_0 and tmp;
      tmp := (OTHERS=>sel( 1));
      result := result or ( input_1 and tmp);
      tmp := (OTHERS=>sel( 2));
      result := result or ( input_2 and tmp);
    RETURN result;
  END;

  FUNCTION MUX_s_1_100_2(input_0 : STD_LOGIC;
  input_1 : STD_LOGIC;
  input_2 : STD_LOGIC;
  input_3 : STD_LOGIC;
  input_4 : STD_LOGIC;
  input_5 : STD_LOGIC;
  input_6 : STD_LOGIC;
  input_7 : STD_LOGIC;
  input_8 : STD_LOGIC;
  input_9 : STD_LOGIC;
  input_10 : STD_LOGIC;
  input_11 : STD_LOGIC;
  input_12 : STD_LOGIC;
  input_13 : STD_LOGIC;
  input_14 : STD_LOGIC;
  input_15 : STD_LOGIC;
  input_16 : STD_LOGIC;
  input_17 : STD_LOGIC;
  input_18 : STD_LOGIC;
  input_19 : STD_LOGIC;
  input_20 : STD_LOGIC;
  input_21 : STD_LOGIC;
  input_22 : STD_LOGIC;
  input_23 : STD_LOGIC;
  input_24 : STD_LOGIC;
  input_25 : STD_LOGIC;
  input_26 : STD_LOGIC;
  input_27 : STD_LOGIC;
  input_28 : STD_LOGIC;
  input_29 : STD_LOGIC;
  input_30 : STD_LOGIC;
  input_31 : STD_LOGIC;
  input_32 : STD_LOGIC;
  input_33 : STD_LOGIC;
  input_34 : STD_LOGIC;
  input_35 : STD_LOGIC;
  input_36 : STD_LOGIC;
  input_37 : STD_LOGIC;
  input_38 : STD_LOGIC;
  input_39 : STD_LOGIC;
  input_40 : STD_LOGIC;
  input_41 : STD_LOGIC;
  input_42 : STD_LOGIC;
  input_43 : STD_LOGIC;
  input_44 : STD_LOGIC;
  input_45 : STD_LOGIC;
  input_46 : STD_LOGIC;
  input_47 : STD_LOGIC;
  input_48 : STD_LOGIC;
  input_49 : STD_LOGIC;
  input_50 : STD_LOGIC;
  input_51 : STD_LOGIC;
  input_52 : STD_LOGIC;
  input_53 : STD_LOGIC;
  input_54 : STD_LOGIC;
  input_55 : STD_LOGIC;
  input_56 : STD_LOGIC;
  input_57 : STD_LOGIC;
  input_58 : STD_LOGIC;
  input_59 : STD_LOGIC;
  input_60 : STD_LOGIC;
  input_61 : STD_LOGIC;
  input_62 : STD_LOGIC;
  input_63 : STD_LOGIC;
  input_64 : STD_LOGIC;
  input_65 : STD_LOGIC;
  input_66 : STD_LOGIC;
  input_67 : STD_LOGIC;
  input_68 : STD_LOGIC;
  input_69 : STD_LOGIC;
  input_70 : STD_LOGIC;
  input_71 : STD_LOGIC;
  input_72 : STD_LOGIC;
  input_73 : STD_LOGIC;
  input_74 : STD_LOGIC;
  input_75 : STD_LOGIC;
  input_76 : STD_LOGIC;
  input_77 : STD_LOGIC;
  input_78 : STD_LOGIC;
  input_79 : STD_LOGIC;
  input_80 : STD_LOGIC;
  input_81 : STD_LOGIC;
  input_82 : STD_LOGIC;
  input_83 : STD_LOGIC;
  input_84 : STD_LOGIC;
  input_85 : STD_LOGIC;
  input_86 : STD_LOGIC;
  input_87 : STD_LOGIC;
  input_88 : STD_LOGIC;
  input_89 : STD_LOGIC;
  input_90 : STD_LOGIC;
  input_91 : STD_LOGIC;
  input_92 : STD_LOGIC;
  input_93 : STD_LOGIC;
  input_94 : STD_LOGIC;
  input_95 : STD_LOGIC;
  input_96 : STD_LOGIC;
  input_97 : STD_LOGIC;
  input_98 : STD_LOGIC;
  input_99 : STD_LOGIC;
  sel : STD_LOGIC_VECTOR(6 DOWNTO 0))
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;

    BEGIN
      CASE sel IS
        WHEN "0000000" =>
          result := input_0;
        WHEN "0000001" =>
          result := input_1;
        WHEN "0000010" =>
          result := input_2;
        WHEN "0000011" =>
          result := input_3;
        WHEN "0000100" =>
          result := input_4;
        WHEN "0000101" =>
          result := input_5;
        WHEN "0000110" =>
          result := input_6;
        WHEN "0000111" =>
          result := input_7;
        WHEN "0001000" =>
          result := input_8;
        WHEN "0001001" =>
          result := input_9;
        WHEN "0001010" =>
          result := input_10;
        WHEN "0001011" =>
          result := input_11;
        WHEN "0001100" =>
          result := input_12;
        WHEN "0001101" =>
          result := input_13;
        WHEN "0001110" =>
          result := input_14;
        WHEN "0001111" =>
          result := input_15;
        WHEN "0010000" =>
          result := input_16;
        WHEN "0010001" =>
          result := input_17;
        WHEN "0010010" =>
          result := input_18;
        WHEN "0010011" =>
          result := input_19;
        WHEN "0010100" =>
          result := input_20;
        WHEN "0010101" =>
          result := input_21;
        WHEN "0010110" =>
          result := input_22;
        WHEN "0010111" =>
          result := input_23;
        WHEN "0011000" =>
          result := input_24;
        WHEN "0011001" =>
          result := input_25;
        WHEN "0011010" =>
          result := input_26;
        WHEN "0011011" =>
          result := input_27;
        WHEN "0011100" =>
          result := input_28;
        WHEN "0011101" =>
          result := input_29;
        WHEN "0011110" =>
          result := input_30;
        WHEN "0011111" =>
          result := input_31;
        WHEN "0100000" =>
          result := input_32;
        WHEN "0100001" =>
          result := input_33;
        WHEN "0100010" =>
          result := input_34;
        WHEN "0100011" =>
          result := input_35;
        WHEN "0100100" =>
          result := input_36;
        WHEN "0100101" =>
          result := input_37;
        WHEN "0100110" =>
          result := input_38;
        WHEN "0100111" =>
          result := input_39;
        WHEN "0101000" =>
          result := input_40;
        WHEN "0101001" =>
          result := input_41;
        WHEN "0101010" =>
          result := input_42;
        WHEN "0101011" =>
          result := input_43;
        WHEN "0101100" =>
          result := input_44;
        WHEN "0101101" =>
          result := input_45;
        WHEN "0101110" =>
          result := input_46;
        WHEN "0101111" =>
          result := input_47;
        WHEN "0110000" =>
          result := input_48;
        WHEN "0110001" =>
          result := input_49;
        WHEN "0110010" =>
          result := input_50;
        WHEN "0110011" =>
          result := input_51;
        WHEN "0110100" =>
          result := input_52;
        WHEN "0110101" =>
          result := input_53;
        WHEN "0110110" =>
          result := input_54;
        WHEN "0110111" =>
          result := input_55;
        WHEN "0111000" =>
          result := input_56;
        WHEN "0111001" =>
          result := input_57;
        WHEN "0111010" =>
          result := input_58;
        WHEN "0111011" =>
          result := input_59;
        WHEN "0111100" =>
          result := input_60;
        WHEN "0111101" =>
          result := input_61;
        WHEN "0111110" =>
          result := input_62;
        WHEN "0111111" =>
          result := input_63;
        WHEN "1000000" =>
          result := input_64;
        WHEN "1000001" =>
          result := input_65;
        WHEN "1000010" =>
          result := input_66;
        WHEN "1000011" =>
          result := input_67;
        WHEN "1000100" =>
          result := input_68;
        WHEN "1000101" =>
          result := input_69;
        WHEN "1000110" =>
          result := input_70;
        WHEN "1000111" =>
          result := input_71;
        WHEN "1001000" =>
          result := input_72;
        WHEN "1001001" =>
          result := input_73;
        WHEN "1001010" =>
          result := input_74;
        WHEN "1001011" =>
          result := input_75;
        WHEN "1001100" =>
          result := input_76;
        WHEN "1001101" =>
          result := input_77;
        WHEN "1001110" =>
          result := input_78;
        WHEN "1001111" =>
          result := input_79;
        WHEN "1010000" =>
          result := input_80;
        WHEN "1010001" =>
          result := input_81;
        WHEN "1010010" =>
          result := input_82;
        WHEN "1010011" =>
          result := input_83;
        WHEN "1010100" =>
          result := input_84;
        WHEN "1010101" =>
          result := input_85;
        WHEN "1010110" =>
          result := input_86;
        WHEN "1010111" =>
          result := input_87;
        WHEN "1011000" =>
          result := input_88;
        WHEN "1011001" =>
          result := input_89;
        WHEN "1011010" =>
          result := input_90;
        WHEN "1011011" =>
          result := input_91;
        WHEN "1011100" =>
          result := input_92;
        WHEN "1011101" =>
          result := input_93;
        WHEN "1011110" =>
          result := input_94;
        WHEN "1011111" =>
          result := input_95;
        WHEN "1100000" =>
          result := input_96;
        WHEN "1100001" =>
          result := input_97;
        WHEN "1100010" =>
          result := input_98;
        WHEN others =>
          result := input_99;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_s_1_2_2(input_0 : STD_LOGIC;
  input_1 : STD_LOGIC;
  sel : STD_LOGIC)
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_10_2_2(input_0 : STD_LOGIC_VECTOR(9 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(9 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_22_100_2(input_0 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_13 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_14 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_15 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_16 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_17 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_18 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_19 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_20 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_21 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_22 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_23 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_24 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_25 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_26 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_27 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_28 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_29 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_30 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_31 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_32 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_33 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_34 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_35 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_36 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_37 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_38 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_39 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_40 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_41 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_42 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_43 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_44 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_45 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_46 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_47 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_48 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_49 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_50 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_51 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_52 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_53 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_54 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_55 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_56 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_57 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_58 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_59 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_60 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_61 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_62 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_63 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_64 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_65 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_66 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_67 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_68 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_69 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_70 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_71 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_72 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_73 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_74 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_75 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_76 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_77 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_78 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_79 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_80 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_81 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_82 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_83 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_84 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_85 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_86 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_87 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_88 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_89 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_90 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_91 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_92 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_93 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_94 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_95 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_96 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_97 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_98 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_99 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(6 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(21 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "0000000" =>
          result := input_0;
        WHEN "0000001" =>
          result := input_1;
        WHEN "0000010" =>
          result := input_2;
        WHEN "0000011" =>
          result := input_3;
        WHEN "0000100" =>
          result := input_4;
        WHEN "0000101" =>
          result := input_5;
        WHEN "0000110" =>
          result := input_6;
        WHEN "0000111" =>
          result := input_7;
        WHEN "0001000" =>
          result := input_8;
        WHEN "0001001" =>
          result := input_9;
        WHEN "0001010" =>
          result := input_10;
        WHEN "0001011" =>
          result := input_11;
        WHEN "0001100" =>
          result := input_12;
        WHEN "0001101" =>
          result := input_13;
        WHEN "0001110" =>
          result := input_14;
        WHEN "0001111" =>
          result := input_15;
        WHEN "0010000" =>
          result := input_16;
        WHEN "0010001" =>
          result := input_17;
        WHEN "0010010" =>
          result := input_18;
        WHEN "0010011" =>
          result := input_19;
        WHEN "0010100" =>
          result := input_20;
        WHEN "0010101" =>
          result := input_21;
        WHEN "0010110" =>
          result := input_22;
        WHEN "0010111" =>
          result := input_23;
        WHEN "0011000" =>
          result := input_24;
        WHEN "0011001" =>
          result := input_25;
        WHEN "0011010" =>
          result := input_26;
        WHEN "0011011" =>
          result := input_27;
        WHEN "0011100" =>
          result := input_28;
        WHEN "0011101" =>
          result := input_29;
        WHEN "0011110" =>
          result := input_30;
        WHEN "0011111" =>
          result := input_31;
        WHEN "0100000" =>
          result := input_32;
        WHEN "0100001" =>
          result := input_33;
        WHEN "0100010" =>
          result := input_34;
        WHEN "0100011" =>
          result := input_35;
        WHEN "0100100" =>
          result := input_36;
        WHEN "0100101" =>
          result := input_37;
        WHEN "0100110" =>
          result := input_38;
        WHEN "0100111" =>
          result := input_39;
        WHEN "0101000" =>
          result := input_40;
        WHEN "0101001" =>
          result := input_41;
        WHEN "0101010" =>
          result := input_42;
        WHEN "0101011" =>
          result := input_43;
        WHEN "0101100" =>
          result := input_44;
        WHEN "0101101" =>
          result := input_45;
        WHEN "0101110" =>
          result := input_46;
        WHEN "0101111" =>
          result := input_47;
        WHEN "0110000" =>
          result := input_48;
        WHEN "0110001" =>
          result := input_49;
        WHEN "0110010" =>
          result := input_50;
        WHEN "0110011" =>
          result := input_51;
        WHEN "0110100" =>
          result := input_52;
        WHEN "0110101" =>
          result := input_53;
        WHEN "0110110" =>
          result := input_54;
        WHEN "0110111" =>
          result := input_55;
        WHEN "0111000" =>
          result := input_56;
        WHEN "0111001" =>
          result := input_57;
        WHEN "0111010" =>
          result := input_58;
        WHEN "0111011" =>
          result := input_59;
        WHEN "0111100" =>
          result := input_60;
        WHEN "0111101" =>
          result := input_61;
        WHEN "0111110" =>
          result := input_62;
        WHEN "0111111" =>
          result := input_63;
        WHEN "1000000" =>
          result := input_64;
        WHEN "1000001" =>
          result := input_65;
        WHEN "1000010" =>
          result := input_66;
        WHEN "1000011" =>
          result := input_67;
        WHEN "1000100" =>
          result := input_68;
        WHEN "1000101" =>
          result := input_69;
        WHEN "1000110" =>
          result := input_70;
        WHEN "1000111" =>
          result := input_71;
        WHEN "1001000" =>
          result := input_72;
        WHEN "1001001" =>
          result := input_73;
        WHEN "1001010" =>
          result := input_74;
        WHEN "1001011" =>
          result := input_75;
        WHEN "1001100" =>
          result := input_76;
        WHEN "1001101" =>
          result := input_77;
        WHEN "1001110" =>
          result := input_78;
        WHEN "1001111" =>
          result := input_79;
        WHEN "1010000" =>
          result := input_80;
        WHEN "1010001" =>
          result := input_81;
        WHEN "1010010" =>
          result := input_82;
        WHEN "1010011" =>
          result := input_83;
        WHEN "1010100" =>
          result := input_84;
        WHEN "1010101" =>
          result := input_85;
        WHEN "1010110" =>
          result := input_86;
        WHEN "1010111" =>
          result := input_87;
        WHEN "1011000" =>
          result := input_88;
        WHEN "1011001" =>
          result := input_89;
        WHEN "1011010" =>
          result := input_90;
        WHEN "1011011" =>
          result := input_91;
        WHEN "1011100" =>
          result := input_92;
        WHEN "1011101" =>
          result := input_93;
        WHEN "1011110" =>
          result := input_94;
        WHEN "1011111" =>
          result := input_95;
        WHEN "1100000" =>
          result := input_96;
        WHEN "1100001" =>
          result := input_97;
        WHEN "1100010" =>
          result := input_98;
        WHEN others =>
          result := input_99;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_22_2_2(input_0 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(21 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_23_2_2(input_0 : STD_LOGIC_VECTOR(22 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(22 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(22 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_24_2_2(input_0 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(23 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_2_2_2(input_0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(1 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_32_2_2(input_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(31 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_4_2_2(input_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_5_2_2(input_0 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(4 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_7_2_2(input_0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(6 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_8_100_2(input_0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_13 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_14 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_15 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_16 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_17 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_18 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_19 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_20 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_21 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_22 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_23 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_24 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_25 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_26 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_27 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_28 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_29 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_30 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_31 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_32 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_33 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_34 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_35 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_36 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_37 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_38 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_39 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_40 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_41 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_42 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_43 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_44 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_45 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_46 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_47 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_48 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_49 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_50 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_51 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_52 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_53 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_54 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_55 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_56 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_57 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_58 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_59 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_60 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_61 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_62 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_63 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_64 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_65 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_66 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_67 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_68 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_69 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_70 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_71 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_72 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_73 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_74 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_75 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_76 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_77 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_78 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_79 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_80 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_81 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_82 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_83 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_84 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_85 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_86 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_87 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_88 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_89 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_90 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_91 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_92 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_93 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_94 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_95 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_96 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_97 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_98 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_99 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(6 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(7 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "0000000" =>
          result := input_0;
        WHEN "0000001" =>
          result := input_1;
        WHEN "0000010" =>
          result := input_2;
        WHEN "0000011" =>
          result := input_3;
        WHEN "0000100" =>
          result := input_4;
        WHEN "0000101" =>
          result := input_5;
        WHEN "0000110" =>
          result := input_6;
        WHEN "0000111" =>
          result := input_7;
        WHEN "0001000" =>
          result := input_8;
        WHEN "0001001" =>
          result := input_9;
        WHEN "0001010" =>
          result := input_10;
        WHEN "0001011" =>
          result := input_11;
        WHEN "0001100" =>
          result := input_12;
        WHEN "0001101" =>
          result := input_13;
        WHEN "0001110" =>
          result := input_14;
        WHEN "0001111" =>
          result := input_15;
        WHEN "0010000" =>
          result := input_16;
        WHEN "0010001" =>
          result := input_17;
        WHEN "0010010" =>
          result := input_18;
        WHEN "0010011" =>
          result := input_19;
        WHEN "0010100" =>
          result := input_20;
        WHEN "0010101" =>
          result := input_21;
        WHEN "0010110" =>
          result := input_22;
        WHEN "0010111" =>
          result := input_23;
        WHEN "0011000" =>
          result := input_24;
        WHEN "0011001" =>
          result := input_25;
        WHEN "0011010" =>
          result := input_26;
        WHEN "0011011" =>
          result := input_27;
        WHEN "0011100" =>
          result := input_28;
        WHEN "0011101" =>
          result := input_29;
        WHEN "0011110" =>
          result := input_30;
        WHEN "0011111" =>
          result := input_31;
        WHEN "0100000" =>
          result := input_32;
        WHEN "0100001" =>
          result := input_33;
        WHEN "0100010" =>
          result := input_34;
        WHEN "0100011" =>
          result := input_35;
        WHEN "0100100" =>
          result := input_36;
        WHEN "0100101" =>
          result := input_37;
        WHEN "0100110" =>
          result := input_38;
        WHEN "0100111" =>
          result := input_39;
        WHEN "0101000" =>
          result := input_40;
        WHEN "0101001" =>
          result := input_41;
        WHEN "0101010" =>
          result := input_42;
        WHEN "0101011" =>
          result := input_43;
        WHEN "0101100" =>
          result := input_44;
        WHEN "0101101" =>
          result := input_45;
        WHEN "0101110" =>
          result := input_46;
        WHEN "0101111" =>
          result := input_47;
        WHEN "0110000" =>
          result := input_48;
        WHEN "0110001" =>
          result := input_49;
        WHEN "0110010" =>
          result := input_50;
        WHEN "0110011" =>
          result := input_51;
        WHEN "0110100" =>
          result := input_52;
        WHEN "0110101" =>
          result := input_53;
        WHEN "0110110" =>
          result := input_54;
        WHEN "0110111" =>
          result := input_55;
        WHEN "0111000" =>
          result := input_56;
        WHEN "0111001" =>
          result := input_57;
        WHEN "0111010" =>
          result := input_58;
        WHEN "0111011" =>
          result := input_59;
        WHEN "0111100" =>
          result := input_60;
        WHEN "0111101" =>
          result := input_61;
        WHEN "0111110" =>
          result := input_62;
        WHEN "0111111" =>
          result := input_63;
        WHEN "1000000" =>
          result := input_64;
        WHEN "1000001" =>
          result := input_65;
        WHEN "1000010" =>
          result := input_66;
        WHEN "1000011" =>
          result := input_67;
        WHEN "1000100" =>
          result := input_68;
        WHEN "1000101" =>
          result := input_69;
        WHEN "1000110" =>
          result := input_70;
        WHEN "1000111" =>
          result := input_71;
        WHEN "1001000" =>
          result := input_72;
        WHEN "1001001" =>
          result := input_73;
        WHEN "1001010" =>
          result := input_74;
        WHEN "1001011" =>
          result := input_75;
        WHEN "1001100" =>
          result := input_76;
        WHEN "1001101" =>
          result := input_77;
        WHEN "1001110" =>
          result := input_78;
        WHEN "1001111" =>
          result := input_79;
        WHEN "1010000" =>
          result := input_80;
        WHEN "1010001" =>
          result := input_81;
        WHEN "1010010" =>
          result := input_82;
        WHEN "1010011" =>
          result := input_83;
        WHEN "1010100" =>
          result := input_84;
        WHEN "1010101" =>
          result := input_85;
        WHEN "1010110" =>
          result := input_86;
        WHEN "1010111" =>
          result := input_87;
        WHEN "1011000" =>
          result := input_88;
        WHEN "1011001" =>
          result := input_89;
        WHEN "1011010" =>
          result := input_90;
        WHEN "1011011" =>
          result := input_91;
        WHEN "1011100" =>
          result := input_92;
        WHEN "1011101" =>
          result := input_93;
        WHEN "1011110" =>
          result := input_94;
        WHEN "1011111" =>
          result := input_95;
        WHEN "1100000" =>
          result := input_96;
        WHEN "1100001" =>
          result := input_97;
        WHEN "1100010" =>
          result := input_98;
        WHEN others =>
          result := input_99;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_8_2_2(input_0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(7 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_9_2_2(input_0 : STD_LOGIC_VECTOR(8 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(8 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

BEGIN
  operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg : work.mgc_shift_comps_v5.mgc_shift_r_v5
    GENERIC MAP(
      width_a => 28,
      signd_a => 1,
      width_s => 9,
      width_z => 28
      )
    PORT MAP(
      a => operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_a,
      s => operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_s,
      z => operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_z
    );
  operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_a <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(drf_op1_m_smx_24_lpi_2_dfm_mx0
      & drf_op1_m_smx_23_0_lpi_2_dfm_23_mx0 & drf_op1_m_smx_23_0_lpi_2_dfm_22_mx0
      & drf_op1_m_smx_23_0_lpi_2_dfm_21_0_mx0 & STD_LOGIC_VECTOR'( "00")),28));
  operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_s <= return_add_generic_AC_RND_CONV_false_asn_6;
  return_add_generic_AC_RND_CONV_false_op_lshift_sva_1 <= operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_z;

  operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg : work.mgc_shift_comps_v5.mgc_shift_l_v5
    GENERIC MAP(
      width_a => 28,
      signd_a => 0,
      width_s => 9,
      width_z => 28
      )
    PORT MAP(
      a => operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_a,
      s => operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s,
      z => operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_z
    );
  operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_a <= operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      & (return_add_generic_AC_RND_CONV_false_op_lshift_sva_1(1 DOWNTO 0));
  operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s <= (MUX_v_4_2_2(STD_LOGIC_VECTOR'("0000"),
      (return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0(8 DOWNTO 5)),
      (NOT return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1)))
      & (MUX_v_5_2_2((return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0(4
      DOWNTO 0)), libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3,
      return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1));
  return_add_generic_AC_RND_CONV_false_add_r_1_sva_1 <= operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_z;

  operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1 : work.mgc_shift_comps_v5.mgc_shift_l_v5
    GENERIC MAP(
      width_a => 1,
      signd_a => 1,
      width_s => 9,
      width_z => 28
      )
    PORT MAP(
      a => operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_a,
      s => operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_s,
      z => operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_z
    );
  operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_a(0) <= '1';
  operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_s <= return_add_generic_AC_RND_CONV_false_asn_6;
  operator_28_26_true_AC_TRN_AC_WRAP_lshift_itm <= operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1_z;

  leading_sign_28_1_1_0_rg : leading_sign_28_1_1_0
    PORT MAP(
      mantissa => leading_sign_28_1_1_0_rg_mantissa,
      all_same => libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2,
      rtn => leading_sign_28_1_1_0_rg_rtn
    );
  leading_sign_28_1_1_0_rg_mantissa <= operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      & (return_add_generic_AC_RND_CONV_false_op_lshift_sva_1(1 DOWNTO 0));
  libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3 <= leading_sign_28_1_1_0_rg_rtn;

  histogram_core_feature_rsci_inst : histogram_core_feature_rsci
    PORT MAP(
      clk => clk,
      rst => rst,
      feature_rsc_dat => histogram_core_feature_rsci_inst_feature_rsc_dat,
      feature_rsc_vld => feature_rsc_vld,
      feature_rsc_rdy => feature_rsc_rdy,
      core_wen => core_wen,
      feature_rsci_oswt => reg_weight_rsci_irdy_core_psct_cse,
      feature_rsci_wen_comp => feature_rsci_wen_comp,
      feature_rsci_idat_mxwt => histogram_core_feature_rsci_inst_feature_rsci_idat_mxwt
    );
  histogram_core_feature_rsci_inst_feature_rsc_dat <= feature_rsc_dat;
  feature_rsci_idat_mxwt <= histogram_core_feature_rsci_inst_feature_rsci_idat_mxwt;

  histogram_core_weight_rsci_inst : histogram_core_weight_rsci
    PORT MAP(
      clk => clk,
      rst => rst,
      weight_rsc_dat => histogram_core_weight_rsci_inst_weight_rsc_dat,
      weight_rsc_vld => weight_rsc_vld,
      weight_rsc_rdy => weight_rsc_rdy,
      core_wen => core_wen,
      weight_rsci_oswt => reg_weight_rsci_irdy_core_psct_cse,
      weight_rsci_wen_comp => weight_rsci_wen_comp,
      weight_rsci_idat_mxwt => histogram_core_weight_rsci_inst_weight_rsci_idat_mxwt
    );
  histogram_core_weight_rsci_inst_weight_rsc_dat <= weight_rsc_dat;
  weight_rsci_idat_mxwt <= histogram_core_weight_rsci_inst_weight_rsci_idat_mxwt;

  histogram_core_hist_rsci_inst : histogram_core_hist_rsci
    PORT MAP(
      clk => clk,
      rst => rst,
      hist_rsc_dat => histogram_core_hist_rsci_inst_hist_rsc_dat,
      hist_rsc_vld => hist_rsc_vld,
      hist_rsc_rdy => hist_rsc_rdy,
      core_wen => core_wen,
      core_wten => core_wten,
      hist_rsci_oswt => reg_hist_rsci_irdy_core_psct_cse,
      hist_rsci_ivld_mxwt => hist_rsci_ivld_mxwt,
      hist_rsci_idat_mxwt => histogram_core_hist_rsci_inst_hist_rsci_idat_mxwt
    );
  histogram_core_hist_rsci_inst_hist_rsc_dat <= hist_rsc_dat;
  hist_rsci_idat_mxwt <= histogram_core_hist_rsci_inst_hist_rsci_idat_mxwt;

  histogram_core_out_rsci_inst : histogram_core_out_rsci
    PORT MAP(
      clk => clk,
      rst => rst,
      out_rsc_dat => histogram_core_out_rsci_inst_out_rsc_dat,
      out_rsc_vld => out_rsc_vld,
      out_rsc_rdy => out_rsc_rdy,
      core_wen => core_wen,
      out_rsci_oswt => reg_out_rsci_ivld_core_psct_cse,
      out_rsci_wen_comp => out_rsci_wen_comp,
      out_rsci_idat => histogram_core_out_rsci_inst_out_rsci_idat
    );
  out_rsc_dat <= histogram_core_out_rsci_inst_out_rsc_dat;
  histogram_core_out_rsci_inst_out_rsci_idat <= out_rsci_idat_31 & out_rsci_idat_30_23
      & out_rsci_idat_22 & out_rsci_idat_21_0;

  histogram_core_n_rsc_triosy_obj_inst : histogram_core_n_rsc_triosy_obj
    PORT MAP(
      n_rsc_triosy_lz => n_rsc_triosy_lz,
      core_wten => core_wten,
      n_rsc_triosy_obj_iswt0 => reg_n_rsc_triosy_obj_ld_core_psct_cse
    );
  histogram_core_staller_inst : histogram_core_staller
    PORT MAP(
      clk => clk,
      rst => rst,
      core_wen => core_wen,
      core_wten => core_wten,
      feature_rsci_wen_comp => feature_rsci_wen_comp,
      weight_rsci_wen_comp => weight_rsci_wen_comp,
      out_rsci_wen_comp => out_rsci_wen_comp
    );
  histogram_core_core_fsm_inst : histogram_core_core_fsm
    PORT MAP(
      clk => clk,
      rst => rst,
      core_wen => core_wen,
      fsm_output => histogram_core_core_fsm_inst_fsm_output,
      while_C_1_tr0 => histogram_core_core_fsm_inst_while_C_1_tr0,
      main_C_1_tr0 => exit_for_sva_mx0,
      for_C_0_tr0 => exit_for_sva_mx0,
      main_C_2_tr0 => histogram_core_core_fsm_inst_main_C_2_tr0,
      for_1_C_1_tr0 => exit_for_1_sva
    );
  fsm_output <= histogram_core_core_fsm_inst_fsm_output;
  histogram_core_core_fsm_inst_while_C_1_tr0 <= or_dcpl_6;
  histogram_core_core_fsm_inst_main_C_2_tr0 <= NOT (z_out_4(7));

  for_1_and_cse <= core_wen AND (fsm_output(6));
  nor_15_cse <= NOT((fsm_output(8)) OR (fsm_output(0)));
  hist_local_d_and_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_14)
      AND (fsm_output(2))) OR ((or_dcpl_23 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_1_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_26)
      AND (fsm_output(2))) OR ((or_dcpl_23 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_2_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_33)
      AND (fsm_output(2))) OR ((or_dcpl_37 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_3_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_40)
      AND (fsm_output(2))) OR ((or_dcpl_37 OR or_dcpl_42) AND (fsm_output(4)))));
  hist_local_d_and_4_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_44)
      AND (fsm_output(2))) OR ((or_dcpl_37 OR or_dcpl_49) AND (fsm_output(4)))));
  hist_local_d_and_5_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_51)
      AND (fsm_output(2))) OR ((or_dcpl_37 OR or_dcpl_54) AND (fsm_output(4)))));
  hist_local_d_and_6_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_33)
      AND (fsm_output(2))) OR ((or_dcpl_37 OR or_dcpl_57) AND (fsm_output(4)))));
  hist_local_d_and_7_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_40)
      AND (fsm_output(2))) OR ((or_dcpl_37 OR or_dcpl_60) AND (fsm_output(4)))));
  hist_local_d_and_8_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_63)
      AND (fsm_output(2))) OR ((or_dcpl_66 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_9_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_68)
      AND (fsm_output(2))) OR ((or_dcpl_66 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_10_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_71)
      AND (fsm_output(2))) OR ((or_dcpl_66 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_11_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_74)
      AND (fsm_output(2))) OR ((or_dcpl_66 OR or_dcpl_42) AND (fsm_output(4)))));
  hist_local_d_and_12_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_77)
      AND (fsm_output(2))) OR ((or_dcpl_23 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_13_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_63)
      AND (fsm_output(2))) OR ((or_dcpl_66 OR or_dcpl_49) AND (fsm_output(4)))));
  hist_local_d_and_14_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_68)
      AND (fsm_output(2))) OR ((or_dcpl_66 OR or_dcpl_54) AND (fsm_output(4)))));
  hist_local_d_and_15_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_71)
      AND (fsm_output(2))) OR ((or_dcpl_66 OR or_dcpl_57) AND (fsm_output(4)))));
  hist_local_d_and_16_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_74)
      AND (fsm_output(2))) OR ((or_dcpl_66 OR or_dcpl_60) AND (fsm_output(4)))));
  hist_local_d_and_17_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_89)
      AND (fsm_output(2))) OR ((or_dcpl_92 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_18_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_94)
      AND (fsm_output(2))) OR ((or_dcpl_92 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_19_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_97)
      AND (fsm_output(2))) OR ((or_dcpl_92 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_20_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_100)
      AND (fsm_output(2))) OR ((or_dcpl_92 OR or_dcpl_42) AND (fsm_output(4)))));
  hist_local_d_and_21_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_89)
      AND (fsm_output(2))) OR ((or_dcpl_92 OR or_dcpl_49) AND (fsm_output(4)))));
  hist_local_d_and_22_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_94)
      AND (fsm_output(2))) OR ((or_dcpl_92 OR or_dcpl_54) AND (fsm_output(4)))));
  hist_local_d_and_23_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_107)
      AND (fsm_output(2))) OR ((or_dcpl_23 OR or_dcpl_42) AND (fsm_output(4)))));
  hist_local_d_and_24_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_97)
      AND (fsm_output(2))) OR ((or_dcpl_92 OR or_dcpl_57) AND (fsm_output(4)))));
  hist_local_d_and_25_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_100)
      AND (fsm_output(2))) OR ((or_dcpl_92 OR or_dcpl_60) AND (fsm_output(4)))));
  hist_local_d_and_26_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_14)
      AND (fsm_output(2))) OR ((or_dcpl_118 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_27_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_26)
      AND (fsm_output(2))) OR ((or_dcpl_118 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_28_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_77)
      AND (fsm_output(2))) OR ((or_dcpl_118 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_29_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_107)
      AND (fsm_output(2))) OR ((or_dcpl_118 OR or_dcpl_42) AND (fsm_output(4)))));
  hist_local_d_and_30_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_14)
      AND (fsm_output(2))) OR ((or_dcpl_118 OR or_dcpl_49) AND (fsm_output(4)))));
  hist_local_d_and_31_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_26)
      AND (fsm_output(2))) OR ((or_dcpl_118 OR or_dcpl_54) AND (fsm_output(4)))));
  hist_local_d_and_32_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_77)
      AND (fsm_output(2))) OR ((or_dcpl_118 OR or_dcpl_57) AND (fsm_output(4)))));
  hist_local_d_and_33_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_107)
      AND (fsm_output(2))) OR ((or_dcpl_118 OR or_dcpl_60) AND (fsm_output(4)))));
  hist_local_d_and_34_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_14)
      AND (fsm_output(2))) OR ((or_dcpl_23 OR or_dcpl_49) AND (fsm_output(4)))));
  hist_local_d_and_35_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_44)
      AND (fsm_output(2))) OR ((or_dcpl_138 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_36_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_51)
      AND (fsm_output(2))) OR ((or_dcpl_138 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_37_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_33)
      AND (fsm_output(2))) OR ((or_dcpl_138 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_38_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_40)
      AND (fsm_output(2))) OR ((or_dcpl_138 OR or_dcpl_42) AND (fsm_output(4)))));
  hist_local_d_and_39_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_44)
      AND (fsm_output(2))) OR ((or_dcpl_138 OR or_dcpl_49) AND (fsm_output(4)))));
  hist_local_d_and_40_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_51)
      AND (fsm_output(2))) OR ((or_dcpl_138 OR or_dcpl_54) AND (fsm_output(4)))));
  hist_local_d_and_41_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_33)
      AND (fsm_output(2))) OR ((or_dcpl_138 OR or_dcpl_57) AND (fsm_output(4)))));
  hist_local_d_and_42_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_40)
      AND (fsm_output(2))) OR ((or_dcpl_138 OR or_dcpl_60) AND (fsm_output(4)))));
  hist_local_d_and_43_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_63)
      AND (fsm_output(2))) OR ((or_dcpl_155 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_44_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_68)
      AND (fsm_output(2))) OR ((or_dcpl_155 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_45_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_26)
      AND (fsm_output(2))) OR ((or_dcpl_23 OR or_dcpl_54) AND (fsm_output(4)))));
  hist_local_d_and_46_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_71)
      AND (fsm_output(2))) OR ((or_dcpl_155 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_47_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_74)
      AND (fsm_output(2))) OR ((or_dcpl_155 OR or_dcpl_42) AND (fsm_output(4)))));
  hist_local_d_and_48_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_63)
      AND (fsm_output(2))) OR ((or_dcpl_155 OR or_dcpl_49) AND (fsm_output(4)))));
  hist_local_d_and_49_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_68)
      AND (fsm_output(2))) OR ((or_dcpl_155 OR or_dcpl_54) AND (fsm_output(4)))));
  hist_local_d_and_50_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_71)
      AND (fsm_output(2))) OR ((or_dcpl_155 OR or_dcpl_57) AND (fsm_output(4)))));
  hist_local_d_and_51_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_74)
      AND (fsm_output(2))) OR ((or_dcpl_155 OR or_dcpl_60) AND (fsm_output(4)))));
  hist_local_d_and_52_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_89)
      AND (fsm_output(2))) OR ((or_dcpl_174 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_53_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_94)
      AND (fsm_output(2))) OR ((or_dcpl_174 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_54_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_97)
      AND (fsm_output(2))) OR ((or_dcpl_174 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_55_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_115 OR or_dcpl_100)
      AND (fsm_output(2))) OR ((or_dcpl_174 OR or_dcpl_42) AND (fsm_output(4)))));
  hist_local_d_and_56_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_77)
      AND (fsm_output(2))) OR ((or_dcpl_23 OR or_dcpl_57) AND (fsm_output(4)))));
  hist_local_d_and_57_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_89)
      AND (fsm_output(2))) OR ((or_dcpl_174 OR or_dcpl_49) AND (fsm_output(4)))));
  hist_local_d_and_58_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_94)
      AND (fsm_output(2))) OR ((or_dcpl_174 OR or_dcpl_54) AND (fsm_output(4)))));
  hist_local_d_and_59_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_97)
      AND (fsm_output(2))) OR ((or_dcpl_174 OR or_dcpl_57) AND (fsm_output(4)))));
  hist_local_d_and_60_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_126 OR or_dcpl_100)
      AND (fsm_output(2))) OR ((or_dcpl_174 OR or_dcpl_60) AND (fsm_output(4)))));
  hist_local_d_and_61_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_14)
      AND (fsm_output(2))) OR ((or_dcpl_196 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_62_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_26)
      AND (fsm_output(2))) OR ((or_dcpl_196 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_63_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_77)
      AND (fsm_output(2))) OR ((or_dcpl_196 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_64_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_107)
      AND (fsm_output(2))) OR ((or_dcpl_196 OR or_dcpl_42) AND (fsm_output(4)))));
  hist_local_d_and_65_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_14)
      AND (fsm_output(2))) OR ((or_dcpl_196 OR or_dcpl_49) AND (fsm_output(4)))));
  hist_local_d_and_66_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_26)
      AND (fsm_output(2))) OR ((or_dcpl_196 OR or_dcpl_54) AND (fsm_output(4)))));
  hist_local_d_and_67_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_46 OR or_dcpl_107)
      AND (fsm_output(2))) OR ((or_dcpl_23 OR or_dcpl_60) AND (fsm_output(4)))));
  hist_local_d_and_68_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_77)
      AND (fsm_output(2))) OR ((or_dcpl_196 OR or_dcpl_57) AND (fsm_output(4)))));
  hist_local_d_and_69_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_107)
      AND (fsm_output(2))) OR ((or_dcpl_196 OR or_dcpl_60) AND (fsm_output(4)))));
  hist_local_d_and_70_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_44)
      AND (fsm_output(2))) OR ((or_dcpl_216 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_71_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_51)
      AND (fsm_output(2))) OR ((or_dcpl_216 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_72_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_33)
      AND (fsm_output(2))) OR ((or_dcpl_216 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_73_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_40)
      AND (fsm_output(2))) OR ((or_dcpl_216 OR or_dcpl_42) AND (fsm_output(4)))));
  hist_local_d_and_74_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_44)
      AND (fsm_output(2))) OR ((or_dcpl_216 OR or_dcpl_49) AND (fsm_output(4)))));
  hist_local_d_and_75_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_51)
      AND (fsm_output(2))) OR ((or_dcpl_216 OR or_dcpl_54) AND (fsm_output(4)))));
  hist_local_d_and_76_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_33)
      AND (fsm_output(2))) OR ((or_dcpl_216 OR or_dcpl_57) AND (fsm_output(4)))));
  hist_local_d_and_77_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_40)
      AND (fsm_output(2))) OR ((or_dcpl_216 OR or_dcpl_60) AND (fsm_output(4)))));
  hist_local_d_and_78_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_44)
      AND (fsm_output(2))) OR ((or_dcpl_37 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_79_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_63)
      AND (fsm_output(2))) OR ((or_dcpl_235 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_80_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_68)
      AND (fsm_output(2))) OR ((or_dcpl_235 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_81_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_71)
      AND (fsm_output(2))) OR ((or_dcpl_235 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_82_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_74)
      AND (fsm_output(2))) OR ((or_dcpl_235 OR or_dcpl_42) AND (fsm_output(4)))));
  hist_local_d_and_83_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_63)
      AND (fsm_output(2))) OR ((or_dcpl_235 OR or_dcpl_49) AND (fsm_output(4)))));
  hist_local_d_and_84_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_68)
      AND (fsm_output(2))) OR ((or_dcpl_235 OR or_dcpl_54) AND (fsm_output(4)))));
  hist_local_d_and_85_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_71)
      AND (fsm_output(2))) OR ((or_dcpl_235 OR or_dcpl_57) AND (fsm_output(4)))));
  hist_local_d_and_86_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_74)
      AND (fsm_output(2))) OR ((or_dcpl_235 OR or_dcpl_60) AND (fsm_output(4)))));
  hist_local_d_and_87_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_89)
      AND (fsm_output(2))) OR ((or_dcpl_252 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_88_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_94)
      AND (fsm_output(2))) OR ((or_dcpl_252 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_89_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_17 OR or_dcpl_51)
      AND (fsm_output(2))) OR ((or_dcpl_37 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_90_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_97)
      AND (fsm_output(2))) OR ((or_dcpl_252 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_91_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_193 OR or_dcpl_100)
      AND (fsm_output(2))) OR ((or_dcpl_252 OR or_dcpl_42) AND (fsm_output(4)))));
  hist_local_d_and_92_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_89)
      AND (fsm_output(2))) OR ((or_dcpl_252 OR or_dcpl_49) AND (fsm_output(4)))));
  hist_local_d_and_93_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_94)
      AND (fsm_output(2))) OR ((or_dcpl_252 OR or_dcpl_54) AND (fsm_output(4)))));
  hist_local_d_and_94_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_97)
      AND (fsm_output(2))) OR ((or_dcpl_252 OR or_dcpl_57) AND (fsm_output(4)))));
  hist_local_d_and_95_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_204 OR or_dcpl_100)
      AND (fsm_output(2))) OR ((or_dcpl_252 OR or_dcpl_60) AND (fsm_output(4)))));
  hist_local_d_and_96_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_271 OR or_dcpl_14)
      AND (fsm_output(2))) OR ((or_dcpl_274 OR or_dcpl_20) AND (fsm_output(4)))));
  hist_local_d_and_97_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_271 OR or_dcpl_26)
      AND (fsm_output(2))) OR ((or_dcpl_274 OR or_dcpl_29) AND (fsm_output(4)))));
  hist_local_d_and_98_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_271 OR or_dcpl_77)
      AND (fsm_output(2))) OR ((or_dcpl_274 OR or_dcpl_35) AND (fsm_output(4)))));
  hist_local_d_and_99_cse <= core_wen AND (NOT(and_1513_cse OR ((or_dcpl_271 OR or_dcpl_107)
      AND (fsm_output(2))) OR ((or_dcpl_274 OR or_dcpl_42) AND (fsm_output(4)))));
  return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_nor_nl
      <= NOT(return_add_generic_AC_RND_CONV_false_r_zero_sva_1 OR (NOT((return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0(23))
      OR return_add_generic_AC_RND_CONV_false_shift_r_sva_1)));
  return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_and_nl
      <= MUX_v_8_2_2(STD_LOGIC_VECTOR'("00000000"), (return_add_generic_AC_RND_CONV_false_acc_psp_sva_1(7
      DOWNTO 0)), return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_nor_nl);
  for_asn_811_mx0w1 <= MUX_v_8_2_2(return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_and_nl,
      STD_LOGIC_VECTOR'("11111111"), return_add_generic_AC_RND_CONV_false_exception_sva_1);
  operator_32_true_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(CONV_SIGNED(SIGNED(z_out_5),
      32), 33) - CONV_UNSIGNED(CONV_SIGNED(SIGNED(n_sva), 32), 33), 33));
  exit_for_sva_mx0 <= MUX_s_1_2_2((NOT (z_out_2(32))), (NOT (operator_32_true_acc_nl(32))),
      fsm_output(4));
  return_extract_return_extract_or_sva_1 <= CONV_SL_1_1(z_out/=STD_LOGIC_VECTOR'("00000000"));
  x_to_helper_t_return_d_sva_22_1 <= MUX_s_1_100_2(hist_local_d_0_22_lpi_3, hist_local_d_1_22_lpi_3,
      hist_local_d_2_22_lpi_3, hist_local_d_3_22_lpi_3, hist_local_d_4_22_lpi_3,
      hist_local_d_5_22_lpi_3, hist_local_d_6_22_lpi_3, hist_local_d_7_22_lpi_3,
      hist_local_d_8_22_lpi_3, hist_local_d_9_22_lpi_3, hist_local_d_10_22_lpi_3,
      hist_local_d_11_22_lpi_3, hist_local_d_12_22_lpi_3, hist_local_d_13_22_lpi_3,
      hist_local_d_14_22_lpi_3, hist_local_d_15_22_lpi_3, hist_local_d_16_22_lpi_3,
      hist_local_d_17_22_lpi_3, hist_local_d_18_22_lpi_3, hist_local_d_19_22_lpi_3,
      hist_local_d_20_22_lpi_3, hist_local_d_21_22_lpi_3, hist_local_d_22_22_lpi_3,
      hist_local_d_23_22_lpi_3, hist_local_d_24_22_lpi_3, hist_local_d_25_22_lpi_3,
      hist_local_d_26_22_lpi_3, hist_local_d_27_22_lpi_3, hist_local_d_28_22_lpi_3,
      hist_local_d_29_22_lpi_3, hist_local_d_30_22_lpi_3, hist_local_d_31_22_lpi_3,
      hist_local_d_32_22_lpi_3, hist_local_d_33_22_lpi_3, hist_local_d_34_22_lpi_3,
      hist_local_d_35_22_lpi_3, hist_local_d_36_22_lpi_3, hist_local_d_37_22_lpi_3,
      hist_local_d_38_22_lpi_3, hist_local_d_39_22_lpi_3, hist_local_d_40_22_lpi_3,
      hist_local_d_41_22_lpi_3, hist_local_d_42_22_lpi_3, hist_local_d_43_22_lpi_3,
      hist_local_d_44_22_lpi_3, hist_local_d_45_22_lpi_3, hist_local_d_46_22_lpi_3,
      hist_local_d_47_22_lpi_3, hist_local_d_48_22_lpi_3, hist_local_d_49_22_lpi_3,
      hist_local_d_50_22_lpi_3, hist_local_d_51_22_lpi_3, hist_local_d_52_22_lpi_3,
      hist_local_d_53_22_lpi_3, hist_local_d_54_22_lpi_3, hist_local_d_55_22_lpi_3,
      hist_local_d_56_22_lpi_3, hist_local_d_57_22_lpi_3, hist_local_d_58_22_lpi_3,
      hist_local_d_59_22_lpi_3, hist_local_d_60_22_lpi_3, hist_local_d_61_22_lpi_3,
      hist_local_d_62_22_lpi_3, hist_local_d_63_22_lpi_3, hist_local_d_64_22_lpi_3,
      hist_local_d_65_22_lpi_3, hist_local_d_66_22_lpi_3, hist_local_d_67_22_lpi_3,
      hist_local_d_68_22_lpi_3, hist_local_d_69_22_lpi_3, hist_local_d_70_22_lpi_3,
      hist_local_d_71_22_lpi_3, hist_local_d_72_22_lpi_3, hist_local_d_73_22_lpi_3,
      hist_local_d_74_22_lpi_3, hist_local_d_75_22_lpi_3, hist_local_d_76_22_lpi_3,
      hist_local_d_77_22_lpi_3, hist_local_d_78_22_lpi_3, hist_local_d_79_22_lpi_3,
      hist_local_d_80_22_lpi_3, hist_local_d_81_22_lpi_3, hist_local_d_82_22_lpi_3,
      hist_local_d_83_22_lpi_3, hist_local_d_84_22_lpi_3, hist_local_d_85_22_lpi_3,
      hist_local_d_86_22_lpi_3, hist_local_d_87_22_lpi_3, hist_local_d_88_22_lpi_3,
      hist_local_d_89_22_lpi_3, hist_local_d_90_22_lpi_3, hist_local_d_91_22_lpi_3,
      hist_local_d_92_22_lpi_3, hist_local_d_93_22_lpi_3, hist_local_d_94_22_lpi_3,
      hist_local_d_95_22_lpi_3, hist_local_d_96_22_lpi_3, hist_local_d_97_22_lpi_3,
      hist_local_d_98_22_lpi_3, hist_local_d_99_22_lpi_3, feature_rsci_idat_mxwt);
  return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_24_23_mx0 <= MUX_v_2_2_2(STD_LOGIC_VECTOR'(
      '0' & return_extract_1_return_extract_1_or_sva_1), (return_add_generic_AC_RND_CONV_false_op2_m_qr_sva_1(24
      DOWNTO 23)), weight_rsci_idat_mxwt(31));
  return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_22_0_mx0 <= MUX_v_23_2_2((weight_rsci_idat_mxwt(22
      DOWNTO 0)), (return_add_generic_AC_RND_CONV_false_op2_m_qr_sva_1(22 DOWNTO
      0)), weight_rsci_idat_mxwt(31));
  return_add_generic_AC_RND_CONV_false_op2_m_qr_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED('1'
      & (NOT return_extract_1_return_extract_1_or_sva_1) & (NOT (weight_rsci_idat_mxwt(22
      DOWNTO 0)))) + SIGNED'( "0000000000000000000000001"), 25));
  return_extract_1_return_extract_1_or_sva_1 <= CONV_SL_1_1(weight_rsci_idat_mxwt(30
      DOWNTO 23)/=STD_LOGIC_VECTOR'("00000000"));
  return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED('1'
      & (NOT return_add_generic_AC_RND_CONV_false_op2_e_b_8_0_sva_1)) + CONV_SIGNED(CONV_UNSIGNED(UNSIGNED(operator_8_false_return_sva_1),
      9), 10) + SIGNED'( "0000000001"), 10));
  xnor_nl <= NOT((z_out_2(24)) XOR return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1);
  return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0 <= MUX_v_24_2_2(z_out_4,
      (z_out_2(23 DOWNTO 0)), xnor_nl);
  nor_7_nl <= NOT((NOT((NOT return_extract_m_zero_return_extract_m_zero_nor_tmp)
      OR CONV_SL_1_1(z_out/=STD_LOGIC_VECTOR'("00000000")))) OR (return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp(9)));
  return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0 <= MUX_v_9_2_2(return_add_generic_AC_RND_CONV_false_op2_e_b_8_0_sva_1,
      operator_8_false_return_sva_1, nor_7_nl);
  return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED('1'
      & (NOT (libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3(4
      DOWNTO 1)))) + SIGNED'( "00001"), 5));
  return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl),
      5)) & (NOT (libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3(0)))),
      6), 10) + CONV_SIGNED(CONV_UNSIGNED(UNSIGNED(return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0),
      9), 10), 10));
  return_add_generic_AC_RND_CONV_false_qif_3_mux_nl <= MUX_v_10_2_2(STD_LOGIC_VECTOR'(
      "0000000001"), STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl),
      10)), return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1);
  return_add_generic_AC_RND_CONV_false_acc_psp_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(return_add_generic_AC_RND_CONV_false_qif_3_mux_nl)
      + CONV_SIGNED(CONV_UNSIGNED(CONV_UNSIGNED(return_add_generic_AC_RND_CONV_false_shift_r_sva_1,
      1), 1), 10), 10));
  return_add_generic_AC_RND_CONV_false_r_zero_sva_1 <= (NOT (return_add_generic_AC_RND_CONV_false_op_lshift_sva_1(0)))
      AND libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2;
  return_add_generic_AC_RND_CONV_false_shift_r_sva_1 <= return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1
      OR (return_add_generic_AC_RND_CONV_false_r_sign_sva_1 AND CONV_SL_1_1(z_out_2(23
      DOWNTO 0)=STD_LOGIC_VECTOR'("000000000000000000000000")));
  return_add_generic_AC_RND_CONV_false_if_1_return_add_generic_AC_RND_CONV_false_if_1_nor_nl
      <= NOT(return_add_generic_AC_RND_CONV_false_exception_sva_1 OR return_add_generic_AC_RND_CONV_false_r_zero_sva_1);
  return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1 <= MUX_v_22_2_2(STD_LOGIC_VECTOR'("0000000000000000000000"),
      (return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0(21 DOWNTO 0)),
      return_add_generic_AC_RND_CONV_false_if_1_return_add_generic_AC_RND_CONV_false_if_1_nor_nl);
  and_4721_cse <= CONV_SL_1_1(weight_rsci_idat_mxwt(30 DOWNTO 23)=STD_LOGIC_VECTOR'("11111111"));
  and_4722_cse <= CONV_SL_1_1(z_out=STD_LOGIC_VECTOR'("11111111"));
  return_add_generic_AC_RND_CONV_false_r_nan_or_1_nl <= return_add_generic_AC_RND_CONV_false_op1_nan_sva_1
      OR return_add_generic_AC_RND_CONV_false_op2_nan_sva_1 OR (return_add_generic_AC_RND_CONV_false_op1_inf_sva_1
      AND return_add_generic_AC_RND_CONV_false_op2_inf_sva_1 AND (x_ac_ieee_float_base_mux_tmp
      XOR (weight_rsci_idat_mxwt(31))));
  and_1482_nl <= (NOT(and_4721_cse OR and_4722_cse)) AND (NOT((NOT((return_add_generic_AC_RND_CONV_false_op_lshift_sva_1(0))
      OR (NOT libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2)))
      OR return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1));
  return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0 <= MUX_s_1_2_2(return_add_generic_AC_RND_CONV_false_r_nan_or_1_nl,
      (return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0(22)), and_1482_nl);
  return_add_generic_AC_RND_CONV_false_r_sign_sva_1 <= (z_out_2(24)) XOR return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1;
  return_add_generic_AC_RND_CONV_false_op1_nan_sva_1 <= and_4722_cse AND (NOT return_extract_m_zero_return_extract_m_zero_nor_tmp);
  return_add_generic_AC_RND_CONV_false_op2_nan_sva_1 <= and_4721_cse AND (NOT return_extract_1_m_zero_sva_1);
  return_add_generic_AC_RND_CONV_false_op1_inf_sva_1 <= and_4722_cse AND return_extract_m_zero_return_extract_m_zero_nor_tmp;
  return_add_generic_AC_RND_CONV_false_op2_inf_sva_1 <= and_4721_cse AND return_extract_1_m_zero_sva_1;
  x_ac_ieee_float_base_mux_tmp <= MUX_s_1_100_2(hist_local_d_0_31_lpi_3, hist_local_d_1_31_lpi_3,
      hist_local_d_2_31_lpi_3, hist_local_d_3_31_lpi_3, hist_local_d_4_31_lpi_3,
      hist_local_d_5_31_lpi_3, hist_local_d_6_31_lpi_3, hist_local_d_7_31_lpi_3,
      hist_local_d_8_31_lpi_3, hist_local_d_9_31_lpi_3, hist_local_d_10_31_lpi_3,
      hist_local_d_11_31_lpi_3, hist_local_d_12_31_lpi_3, hist_local_d_13_31_lpi_3,
      hist_local_d_14_31_lpi_3, hist_local_d_15_31_lpi_3, hist_local_d_16_31_lpi_3,
      hist_local_d_17_31_lpi_3, hist_local_d_18_31_lpi_3, hist_local_d_19_31_lpi_3,
      hist_local_d_20_31_lpi_3, hist_local_d_21_31_lpi_3, hist_local_d_22_31_lpi_3,
      hist_local_d_23_31_lpi_3, hist_local_d_24_31_lpi_3, hist_local_d_25_31_lpi_3,
      hist_local_d_26_31_lpi_3, hist_local_d_27_31_lpi_3, hist_local_d_28_31_lpi_3,
      hist_local_d_29_31_lpi_3, hist_local_d_30_31_lpi_3, hist_local_d_31_31_lpi_3,
      hist_local_d_32_31_lpi_3, hist_local_d_33_31_lpi_3, hist_local_d_34_31_lpi_3,
      hist_local_d_35_31_lpi_3, hist_local_d_36_31_lpi_3, hist_local_d_37_31_lpi_3,
      hist_local_d_38_31_lpi_3, hist_local_d_39_31_lpi_3, hist_local_d_40_31_lpi_3,
      hist_local_d_41_31_lpi_3, hist_local_d_42_31_lpi_3, hist_local_d_43_31_lpi_3,
      hist_local_d_44_31_lpi_3, hist_local_d_45_31_lpi_3, hist_local_d_46_31_lpi_3,
      hist_local_d_47_31_lpi_3, hist_local_d_48_31_lpi_3, hist_local_d_49_31_lpi_3,
      hist_local_d_50_31_lpi_3, hist_local_d_51_31_lpi_3, hist_local_d_52_31_lpi_3,
      hist_local_d_53_31_lpi_3, hist_local_d_54_31_lpi_3, hist_local_d_55_31_lpi_3,
      hist_local_d_56_31_lpi_3, hist_local_d_57_31_lpi_3, hist_local_d_58_31_lpi_3,
      hist_local_d_59_31_lpi_3, hist_local_d_60_31_lpi_3, hist_local_d_61_31_lpi_3,
      hist_local_d_62_31_lpi_3, hist_local_d_63_31_lpi_3, hist_local_d_64_31_lpi_3,
      hist_local_d_65_31_lpi_3, hist_local_d_66_31_lpi_3, hist_local_d_67_31_lpi_3,
      hist_local_d_68_31_lpi_3, hist_local_d_69_31_lpi_3, hist_local_d_70_31_lpi_3,
      hist_local_d_71_31_lpi_3, hist_local_d_72_31_lpi_3, hist_local_d_73_31_lpi_3,
      hist_local_d_74_31_lpi_3, hist_local_d_75_31_lpi_3, hist_local_d_76_31_lpi_3,
      hist_local_d_77_31_lpi_3, hist_local_d_78_31_lpi_3, hist_local_d_79_31_lpi_3,
      hist_local_d_80_31_lpi_3, hist_local_d_81_31_lpi_3, hist_local_d_82_31_lpi_3,
      hist_local_d_83_31_lpi_3, hist_local_d_84_31_lpi_3, hist_local_d_85_31_lpi_3,
      hist_local_d_86_31_lpi_3, hist_local_d_87_31_lpi_3, hist_local_d_88_31_lpi_3,
      hist_local_d_89_31_lpi_3, hist_local_d_90_31_lpi_3, hist_local_d_91_31_lpi_3,
      hist_local_d_92_31_lpi_3, hist_local_d_93_31_lpi_3, hist_local_d_94_31_lpi_3,
      hist_local_d_95_31_lpi_3, hist_local_d_96_31_lpi_3, hist_local_d_97_31_lpi_3,
      hist_local_d_98_31_lpi_3, hist_local_d_99_31_lpi_3, feature_rsci_idat_mxwt);
  return_add_generic_AC_RND_CONV_false_r_inf_acc_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(NOT
      return_add_generic_AC_RND_CONV_false_acc_psp_sva_1) + SIGNED'( "0011111111"),
      10));
  return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1 <= return_add_generic_AC_RND_CONV_false_r_inf_acc_nl(9);
  return_add_generic_AC_RND_CONV_false_exception_sva_1 <= return_add_generic_AC_RND_CONV_false_op1_inf_sva_1
      OR return_add_generic_AC_RND_CONV_false_op2_inf_sva_1 OR return_add_generic_AC_RND_CONV_false_op1_nan_sva_1
      OR return_add_generic_AC_RND_CONV_false_op2_nan_sva_1 OR return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1;
  return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1 <= CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_add_r_1_sva_1(26
      DOWNTO 2)=STD_LOGIC_VECTOR'("1111111111111111111111111"));
  return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_psp_sva_1
      <= NOT(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED((NOT drf_op1_m_smx_24_lpi_2_dfm_mx0)
      & (NOT drf_op1_m_smx_23_0_lpi_2_dfm_23_mx0) & (NOT drf_op1_m_smx_23_0_lpi_2_dfm_22_mx0)
      & (NOT drf_op1_m_smx_23_0_lpi_2_dfm_21_0_mx0)),26)) OR (operator_28_26_true_AC_TRN_AC_WRAP_lshift_itm(27
      DOWNTO 2)));
  operator_8_false_return_sva_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(z_out),
      8), 9) + CONV_UNSIGNED(CONV_UNSIGNED(CONV_UNSIGNED(return_extract_return_extract_nor_cse_sva_1,
      1), 1), 9), 9));
  return_add_generic_AC_RND_CONV_false_op2_e_b_8_0_sva_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(weight_rsci_idat_mxwt(30
      DOWNTO 23)), 8), 9) + CONV_UNSIGNED(CONV_UNSIGNED(CONV_UNSIGNED(return_extract_1_return_extract_1_nor_cse_sva_1,
      1), 1), 9), 9));
  return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0 <= MUX_v_2_2_2(STD_LOGIC_VECTOR'(
      '0' & return_extract_return_extract_or_sva_1), (z_out_3(24 DOWNTO 23)), x_ac_ieee_float_base_mux_tmp);
  return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0 <= MUX_s_1_2_2(x_to_helper_t_return_d_sva_22_1,
      (z_out_3(22)), x_ac_ieee_float_base_mux_tmp);
  return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0 <= MUX_v_22_2_2(z_out_1,
      (z_out_3(21 DOWNTO 0)), x_ac_ieee_float_base_mux_tmp);
  drf_op1_m_smx_24_lpi_2_dfm_mx0 <= MUX_s_1_2_2((return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_24_23_mx0(1)),
      (return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0(1)), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp(9));
  drf_op1_m_smx_23_0_lpi_2_dfm_23_mx0 <= MUX_s_1_2_2((return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_24_23_mx0(0)),
      (return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0(0)), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp(9));
  drf_op1_m_smx_23_0_lpi_2_dfm_22_mx0 <= MUX_s_1_2_2((return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_22_0_mx0(22)),
      return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0, return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp(9));
  drf_op1_m_smx_23_0_lpi_2_dfm_21_0_mx0 <= MUX_v_22_2_2((return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_22_0_mx0(21
      DOWNTO 0)), return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0,
      return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp(9));
  return_extract_1_return_extract_1_nor_cse_sva_1 <= NOT(CONV_SL_1_1(weight_rsci_idat_mxwt(30
      DOWNTO 23)/=STD_LOGIC_VECTOR'("00000000")));
  return_extract_1_m_zero_sva_1 <= NOT(CONV_SL_1_1(weight_rsci_idat_mxwt(22 DOWNTO
      0)/=STD_LOGIC_VECTOR'("00000000000000000000000")));
  return_extract_return_extract_nor_cse_sva_1 <= NOT(CONV_SL_1_1(z_out/=STD_LOGIC_VECTOR'("00000000")));
  return_extract_m_zero_return_extract_m_zero_nor_tmp <= NOT(x_to_helper_t_return_d_sva_22_1
      OR CONV_SL_1_1(z_out_1/=STD_LOGIC_VECTOR'("0000000000000000000000")));
  return_add_generic_AC_RND_CONV_false_op_lshift_mux_nl <= MUX_s_1_2_2((return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0(1)),
      (return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_24_23_mx0(1)), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp(9));
  return_add_generic_AC_RND_CONV_false_op_lshift_mux_1_nl <= MUX_s_1_2_2((return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0(0)),
      (return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_24_23_mx0(0)), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp(9));
  return_add_generic_AC_RND_CONV_false_op_lshift_mux_6_nl <= MUX_s_1_2_2(return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0,
      (return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_22_0_mx0(22)), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp(9));
  return_add_generic_AC_RND_CONV_false_op_lshift_mux_7_nl <= MUX_v_22_2_2(return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0,
      (return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_22_0_mx0(21 DOWNTO
      0)), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp(9));
  operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(return_add_generic_AC_RND_CONV_false_op_lshift_sva_1(27
      DOWNTO 2)) + CONV_SIGNED(CONV_SIGNED(SIGNED(return_add_generic_AC_RND_CONV_false_op_lshift_mux_nl
      & return_add_generic_AC_RND_CONV_false_op_lshift_mux_1_nl & return_add_generic_AC_RND_CONV_false_op_lshift_mux_6_nl
      & return_add_generic_AC_RND_CONV_false_op_lshift_mux_7_nl), 25), 26), 26));
  return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_UNSIGNED(UNSIGNED(NOT
      (return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp(7 DOWNTO 0))), 8), 9) +
      SIGNED'( "000000001"), 9));
  return_add_generic_AC_RND_CONV_false_qelse_2_mux_nl <= MUX_v_9_2_2((return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp(8
      DOWNTO 0)), STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_nl),
      9)), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp(9));
  return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_1_nl
      <= NOT((return_extract_return_extract_nor_cse_sva_1 AND return_extract_m_zero_return_extract_m_zero_nor_tmp)
      OR (return_extract_1_return_extract_1_nor_cse_sva_1 AND return_extract_1_m_zero_sva_1));
  return_add_generic_AC_RND_CONV_false_asn_6 <= MUX_v_9_2_2(STD_LOGIC_VECTOR'("000000000"),
      return_add_generic_AC_RND_CONV_false_qelse_2_mux_nl, return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_1_nl);
  or_dcpl_6 <= NOT(while_slc_while_acc_5_svs AND hist_rsci_ivld_mxwt);
  and_dcpl_10 <= NOT((feature_rsci_idat_mxwt(2)) OR (feature_rsci_idat_mxwt(0)));
  and_dcpl_11 <= and_dcpl_10 AND (NOT (feature_rsci_idat_mxwt(1)));
  and_dcpl_12 <= NOT(CONV_SL_1_1(feature_rsci_idat_mxwt(4 DOWNTO 3)/=STD_LOGIC_VECTOR'("00")));
  and_dcpl_13 <= NOT(CONV_SL_1_1(feature_rsci_idat_mxwt(6 DOWNTO 5)/=STD_LOGIC_VECTOR'("00")));
  and_dcpl_14 <= and_dcpl_13 AND and_dcpl_12;
  or_dcpl_12 <= CONV_SL_1_1(size_6_0_sva(1 DOWNTO 0)/=STD_LOGIC_VECTOR'("00"));
  or_dcpl_13 <= CONV_SL_1_1(size_6_0_sva(4 DOWNTO 3)/=STD_LOGIC_VECTOR'("00"));
  or_dcpl_14 <= or_dcpl_13 OR or_dcpl_12;
  or_dcpl_15 <= CONV_SL_1_1(size_6_0_sva(6 DOWNTO 5)/=STD_LOGIC_VECTOR'("00"));
  or_dcpl_16 <= or_dcpl_6 OR (size_6_0_sva(2));
  or_dcpl_17 <= or_dcpl_16 OR or_dcpl_15;
  or_dcpl_19 <= (feature_rsci_idat_mxwt(2)) OR (feature_rsci_idat_mxwt(0));
  or_dcpl_20 <= or_dcpl_19 OR (feature_rsci_idat_mxwt(1));
  or_dcpl_21 <= CONV_SL_1_1(feature_rsci_idat_mxwt(4 DOWNTO 3)/=STD_LOGIC_VECTOR'("00"));
  or_dcpl_22 <= CONV_SL_1_1(feature_rsci_idat_mxwt(6 DOWNTO 5)/=STD_LOGIC_VECTOR'("00"));
  or_dcpl_23 <= or_dcpl_22 OR or_dcpl_21;
  and_dcpl_21 <= (NOT (feature_rsci_idat_mxwt(2))) AND (feature_rsci_idat_mxwt(0));
  and_dcpl_22 <= and_dcpl_21 AND (NOT (feature_rsci_idat_mxwt(1)));
  or_dcpl_25 <= CONV_SL_1_1(size_6_0_sva(1 DOWNTO 0)/=STD_LOGIC_VECTOR'("01"));
  or_dcpl_26 <= or_dcpl_13 OR or_dcpl_25;
  or_dcpl_28 <= (feature_rsci_idat_mxwt(2)) OR (NOT (feature_rsci_idat_mxwt(0)));
  or_dcpl_29 <= or_dcpl_28 OR (feature_rsci_idat_mxwt(1));
  and_dcpl_28 <= and_dcpl_10 AND (feature_rsci_idat_mxwt(1));
  and_dcpl_29 <= CONV_SL_1_1(feature_rsci_idat_mxwt(4 DOWNTO 3)=STD_LOGIC_VECTOR'("01"));
  and_dcpl_30 <= and_dcpl_13 AND and_dcpl_29;
  or_dcpl_31 <= CONV_SL_1_1(size_6_0_sva(1 DOWNTO 0)/=STD_LOGIC_VECTOR'("10"));
  or_dcpl_32 <= CONV_SL_1_1(size_6_0_sva(4 DOWNTO 3)/=STD_LOGIC_VECTOR'("01"));
  or_dcpl_33 <= or_dcpl_32 OR or_dcpl_31;
  or_dcpl_35 <= or_dcpl_19 OR (NOT (feature_rsci_idat_mxwt(1)));
  or_dcpl_36 <= CONV_SL_1_1(feature_rsci_idat_mxwt(4 DOWNTO 3)/=STD_LOGIC_VECTOR'("01"));
  or_dcpl_37 <= or_dcpl_22 OR or_dcpl_36;
  and_dcpl_35 <= and_dcpl_21 AND (feature_rsci_idat_mxwt(1));
  or_dcpl_39 <= NOT(CONV_SL_1_1(size_6_0_sva(1 DOWNTO 0)=STD_LOGIC_VECTOR'("11")));
  or_dcpl_40 <= or_dcpl_32 OR or_dcpl_39;
  or_dcpl_42 <= or_dcpl_28 OR (NOT (feature_rsci_idat_mxwt(1)));
  and_dcpl_41 <= (feature_rsci_idat_mxwt(2)) AND (NOT (feature_rsci_idat_mxwt(0)));
  and_dcpl_42 <= and_dcpl_41 AND (NOT (feature_rsci_idat_mxwt(1)));
  or_dcpl_44 <= or_dcpl_32 OR or_dcpl_12;
  or_dcpl_45 <= or_dcpl_6 OR (NOT (size_6_0_sva(2)));
  or_dcpl_46 <= or_dcpl_45 OR or_dcpl_15;
  or_dcpl_48 <= (NOT (feature_rsci_idat_mxwt(2))) OR (feature_rsci_idat_mxwt(0));
  or_dcpl_49 <= or_dcpl_48 OR (feature_rsci_idat_mxwt(1));
  and_dcpl_46 <= (feature_rsci_idat_mxwt(2)) AND (feature_rsci_idat_mxwt(0));
  and_dcpl_47 <= and_dcpl_46 AND (NOT (feature_rsci_idat_mxwt(1)));
  or_dcpl_51 <= or_dcpl_32 OR or_dcpl_25;
  or_dcpl_53 <= NOT((feature_rsci_idat_mxwt(2)) AND (feature_rsci_idat_mxwt(0)));
  or_dcpl_54 <= or_dcpl_53 OR (feature_rsci_idat_mxwt(1));
  and_dcpl_50 <= and_dcpl_41 AND (feature_rsci_idat_mxwt(1));
  or_dcpl_57 <= or_dcpl_48 OR (NOT (feature_rsci_idat_mxwt(1)));
  and_dcpl_53 <= and_dcpl_46 AND (feature_rsci_idat_mxwt(1));
  or_dcpl_60 <= or_dcpl_53 OR (NOT (feature_rsci_idat_mxwt(1)));
  and_dcpl_58 <= CONV_SL_1_1(feature_rsci_idat_mxwt(4 DOWNTO 3)=STD_LOGIC_VECTOR'("10"));
  and_dcpl_59 <= and_dcpl_13 AND and_dcpl_58;
  or_dcpl_62 <= CONV_SL_1_1(size_6_0_sva(4 DOWNTO 3)/=STD_LOGIC_VECTOR'("10"));
  or_dcpl_63 <= or_dcpl_62 OR or_dcpl_12;
  or_dcpl_65 <= CONV_SL_1_1(feature_rsci_idat_mxwt(4 DOWNTO 3)/=STD_LOGIC_VECTOR'("10"));
  or_dcpl_66 <= or_dcpl_22 OR or_dcpl_65;
  or_dcpl_68 <= or_dcpl_62 OR or_dcpl_25;
  or_dcpl_71 <= or_dcpl_62 OR or_dcpl_31;
  or_dcpl_74 <= or_dcpl_62 OR or_dcpl_39;
  or_dcpl_77 <= or_dcpl_13 OR or_dcpl_31;
  and_dcpl_84 <= CONV_SL_1_1(feature_rsci_idat_mxwt(4 DOWNTO 3)=STD_LOGIC_VECTOR'("11"));
  and_dcpl_85 <= and_dcpl_13 AND and_dcpl_84;
  or_dcpl_88 <= NOT(CONV_SL_1_1(size_6_0_sva(4 DOWNTO 3)=STD_LOGIC_VECTOR'("11")));
  or_dcpl_89 <= or_dcpl_88 OR or_dcpl_12;
  or_dcpl_91 <= NOT(CONV_SL_1_1(feature_rsci_idat_mxwt(4 DOWNTO 3)=STD_LOGIC_VECTOR'("11")));
  or_dcpl_92 <= or_dcpl_22 OR or_dcpl_91;
  or_dcpl_94 <= or_dcpl_88 OR or_dcpl_25;
  or_dcpl_97 <= or_dcpl_88 OR or_dcpl_31;
  or_dcpl_100 <= or_dcpl_88 OR or_dcpl_39;
  or_dcpl_107 <= or_dcpl_13 OR or_dcpl_39;
  and_dcpl_110 <= CONV_SL_1_1(feature_rsci_idat_mxwt(6 DOWNTO 5)=STD_LOGIC_VECTOR'("01"));
  and_dcpl_111 <= and_dcpl_110 AND and_dcpl_12;
  or_dcpl_114 <= CONV_SL_1_1(size_6_0_sva(6 DOWNTO 5)/=STD_LOGIC_VECTOR'("01"));
  or_dcpl_115 <= or_dcpl_16 OR or_dcpl_114;
  or_dcpl_117 <= CONV_SL_1_1(feature_rsci_idat_mxwt(6 DOWNTO 5)/=STD_LOGIC_VECTOR'("01"));
  or_dcpl_118 <= or_dcpl_117 OR or_dcpl_21;
  or_dcpl_126 <= or_dcpl_45 OR or_dcpl_114;
  and_dcpl_131 <= and_dcpl_110 AND and_dcpl_29;
  or_dcpl_138 <= or_dcpl_117 OR or_dcpl_36;
  and_dcpl_148 <= and_dcpl_110 AND and_dcpl_58;
  or_dcpl_155 <= or_dcpl_117 OR or_dcpl_65;
  and_dcpl_167 <= and_dcpl_110 AND and_dcpl_84;
  or_dcpl_174 <= or_dcpl_117 OR or_dcpl_91;
  and_dcpl_188 <= CONV_SL_1_1(feature_rsci_idat_mxwt(6 DOWNTO 5)=STD_LOGIC_VECTOR'("10"));
  and_dcpl_189 <= and_dcpl_188 AND and_dcpl_12;
  or_dcpl_192 <= CONV_SL_1_1(size_6_0_sva(6 DOWNTO 5)/=STD_LOGIC_VECTOR'("10"));
  or_dcpl_193 <= or_dcpl_16 OR or_dcpl_192;
  or_dcpl_195 <= CONV_SL_1_1(feature_rsci_idat_mxwt(6 DOWNTO 5)/=STD_LOGIC_VECTOR'("10"));
  or_dcpl_196 <= or_dcpl_195 OR or_dcpl_21;
  or_dcpl_204 <= or_dcpl_45 OR or_dcpl_192;
  and_dcpl_209 <= and_dcpl_188 AND and_dcpl_29;
  or_dcpl_216 <= or_dcpl_195 OR or_dcpl_36;
  and_dcpl_228 <= and_dcpl_188 AND and_dcpl_58;
  or_dcpl_235 <= or_dcpl_195 OR or_dcpl_65;
  and_dcpl_245 <= and_dcpl_188 AND and_dcpl_84;
  or_dcpl_252 <= or_dcpl_195 OR or_dcpl_91;
  and_dcpl_267 <= CONV_SL_1_1(feature_rsci_idat_mxwt(6 DOWNTO 5)=STD_LOGIC_VECTOR'("11"))
      AND and_dcpl_12;
  or_dcpl_271 <= or_dcpl_16 OR CONV_SL_1_1(size_6_0_sva(6 DOWNTO 5)/=STD_LOGIC_VECTOR'("11"));
  or_dcpl_274 <= CONV_SL_1_1(feature_rsci_idat_mxwt(6 DOWNTO 5)/=STD_LOGIC_VECTOR'("11"))
      OR or_dcpl_21;
  or_tmp_416 <= and_dcpl_14 AND and_dcpl_11 AND (fsm_output(4));
  and_1513_cse <= nor_15_cse AND (NOT (fsm_output(4))) AND (NOT (fsm_output(2)));
  or_tmp_419 <= and_dcpl_14 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_422 <= and_dcpl_30 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_425 <= and_dcpl_30 AND and_dcpl_35 AND (fsm_output(4));
  or_tmp_428 <= and_dcpl_30 AND and_dcpl_42 AND (fsm_output(4));
  or_tmp_431 <= and_dcpl_30 AND and_dcpl_47 AND (fsm_output(4));
  or_tmp_434 <= and_dcpl_30 AND and_dcpl_50 AND (fsm_output(4));
  or_tmp_437 <= and_dcpl_30 AND and_dcpl_53 AND (fsm_output(4));
  or_tmp_440 <= and_dcpl_59 AND and_dcpl_11 AND (fsm_output(4));
  or_tmp_443 <= and_dcpl_59 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_446 <= and_dcpl_59 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_449 <= and_dcpl_59 AND and_dcpl_35 AND (fsm_output(4));
  or_tmp_452 <= and_dcpl_14 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_455 <= and_dcpl_59 AND and_dcpl_42 AND (fsm_output(4));
  or_tmp_458 <= and_dcpl_59 AND and_dcpl_47 AND (fsm_output(4));
  or_tmp_461 <= and_dcpl_59 AND and_dcpl_50 AND (fsm_output(4));
  or_tmp_464 <= and_dcpl_59 AND and_dcpl_53 AND (fsm_output(4));
  or_tmp_467 <= and_dcpl_85 AND and_dcpl_11 AND (fsm_output(4));
  or_tmp_470 <= and_dcpl_85 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_473 <= and_dcpl_85 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_476 <= and_dcpl_85 AND and_dcpl_35 AND (fsm_output(4));
  or_tmp_479 <= and_dcpl_85 AND and_dcpl_42 AND (fsm_output(4));
  or_tmp_482 <= and_dcpl_85 AND and_dcpl_47 AND (fsm_output(4));
  or_tmp_485 <= and_dcpl_14 AND and_dcpl_35 AND (fsm_output(4));
  or_tmp_488 <= and_dcpl_85 AND and_dcpl_50 AND (fsm_output(4));
  or_tmp_491 <= and_dcpl_85 AND and_dcpl_53 AND (fsm_output(4));
  or_tmp_494 <= and_dcpl_111 AND and_dcpl_11 AND (fsm_output(4));
  or_tmp_497 <= and_dcpl_111 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_500 <= and_dcpl_111 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_503 <= and_dcpl_111 AND and_dcpl_35 AND (fsm_output(4));
  or_tmp_506 <= and_dcpl_111 AND and_dcpl_42 AND (fsm_output(4));
  or_tmp_509 <= and_dcpl_111 AND and_dcpl_47 AND (fsm_output(4));
  or_tmp_512 <= and_dcpl_111 AND and_dcpl_50 AND (fsm_output(4));
  or_tmp_515 <= and_dcpl_111 AND and_dcpl_53 AND (fsm_output(4));
  or_tmp_518 <= and_dcpl_14 AND and_dcpl_42 AND (fsm_output(4));
  or_tmp_521 <= and_dcpl_131 AND and_dcpl_11 AND (fsm_output(4));
  or_tmp_524 <= and_dcpl_131 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_527 <= and_dcpl_131 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_530 <= and_dcpl_131 AND and_dcpl_35 AND (fsm_output(4));
  or_tmp_533 <= and_dcpl_131 AND and_dcpl_42 AND (fsm_output(4));
  or_tmp_536 <= and_dcpl_131 AND and_dcpl_47 AND (fsm_output(4));
  or_tmp_539 <= and_dcpl_131 AND and_dcpl_50 AND (fsm_output(4));
  or_tmp_542 <= and_dcpl_131 AND and_dcpl_53 AND (fsm_output(4));
  or_tmp_545 <= and_dcpl_148 AND and_dcpl_11 AND (fsm_output(4));
  or_tmp_548 <= and_dcpl_148 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_551 <= and_dcpl_14 AND and_dcpl_47 AND (fsm_output(4));
  or_tmp_554 <= and_dcpl_148 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_557 <= and_dcpl_148 AND and_dcpl_35 AND (fsm_output(4));
  or_tmp_560 <= and_dcpl_148 AND and_dcpl_42 AND (fsm_output(4));
  or_tmp_563 <= and_dcpl_148 AND and_dcpl_47 AND (fsm_output(4));
  or_tmp_566 <= and_dcpl_148 AND and_dcpl_50 AND (fsm_output(4));
  or_tmp_569 <= and_dcpl_148 AND and_dcpl_53 AND (fsm_output(4));
  or_tmp_572 <= and_dcpl_167 AND and_dcpl_11 AND (fsm_output(4));
  or_tmp_575 <= and_dcpl_167 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_578 <= and_dcpl_167 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_581 <= and_dcpl_167 AND and_dcpl_35 AND (fsm_output(4));
  or_tmp_584 <= and_dcpl_14 AND and_dcpl_50 AND (fsm_output(4));
  or_tmp_587 <= and_dcpl_167 AND and_dcpl_42 AND (fsm_output(4));
  or_tmp_590 <= and_dcpl_167 AND and_dcpl_47 AND (fsm_output(4));
  or_tmp_593 <= and_dcpl_167 AND and_dcpl_50 AND (fsm_output(4));
  or_tmp_596 <= and_dcpl_167 AND and_dcpl_53 AND (fsm_output(4));
  or_tmp_599 <= and_dcpl_189 AND and_dcpl_11 AND (fsm_output(4));
  or_tmp_602 <= and_dcpl_189 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_605 <= and_dcpl_189 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_608 <= and_dcpl_189 AND and_dcpl_35 AND (fsm_output(4));
  or_tmp_611 <= and_dcpl_189 AND and_dcpl_42 AND (fsm_output(4));
  or_tmp_614 <= and_dcpl_189 AND and_dcpl_47 AND (fsm_output(4));
  or_tmp_617 <= and_dcpl_14 AND and_dcpl_53 AND (fsm_output(4));
  or_tmp_620 <= and_dcpl_189 AND and_dcpl_50 AND (fsm_output(4));
  or_tmp_623 <= and_dcpl_189 AND and_dcpl_53 AND (fsm_output(4));
  or_tmp_626 <= and_dcpl_209 AND and_dcpl_11 AND (fsm_output(4));
  or_tmp_629 <= and_dcpl_209 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_632 <= and_dcpl_209 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_635 <= and_dcpl_209 AND and_dcpl_35 AND (fsm_output(4));
  or_tmp_638 <= and_dcpl_209 AND and_dcpl_42 AND (fsm_output(4));
  or_tmp_641 <= and_dcpl_209 AND and_dcpl_47 AND (fsm_output(4));
  or_tmp_644 <= and_dcpl_209 AND and_dcpl_50 AND (fsm_output(4));
  or_tmp_647 <= and_dcpl_209 AND and_dcpl_53 AND (fsm_output(4));
  or_tmp_650 <= and_dcpl_30 AND and_dcpl_11 AND (fsm_output(4));
  or_tmp_653 <= and_dcpl_228 AND and_dcpl_11 AND (fsm_output(4));
  or_tmp_656 <= and_dcpl_228 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_659 <= and_dcpl_228 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_662 <= and_dcpl_228 AND and_dcpl_35 AND (fsm_output(4));
  or_tmp_665 <= and_dcpl_228 AND and_dcpl_42 AND (fsm_output(4));
  or_tmp_668 <= and_dcpl_228 AND and_dcpl_47 AND (fsm_output(4));
  or_tmp_671 <= and_dcpl_228 AND and_dcpl_50 AND (fsm_output(4));
  or_tmp_674 <= and_dcpl_228 AND and_dcpl_53 AND (fsm_output(4));
  or_tmp_677 <= and_dcpl_245 AND and_dcpl_11 AND (fsm_output(4));
  or_tmp_680 <= and_dcpl_245 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_683 <= and_dcpl_30 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_686 <= and_dcpl_245 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_689 <= and_dcpl_245 AND and_dcpl_35 AND (fsm_output(4));
  or_tmp_692 <= and_dcpl_245 AND and_dcpl_42 AND (fsm_output(4));
  or_tmp_695 <= and_dcpl_245 AND and_dcpl_47 AND (fsm_output(4));
  or_tmp_698 <= and_dcpl_245 AND and_dcpl_50 AND (fsm_output(4));
  or_tmp_701 <= and_dcpl_245 AND and_dcpl_53 AND (fsm_output(4));
  or_tmp_704 <= and_dcpl_267 AND and_dcpl_11 AND (fsm_output(4));
  or_tmp_707 <= and_dcpl_267 AND and_dcpl_22 AND (fsm_output(4));
  or_tmp_710 <= and_dcpl_267 AND and_dcpl_28 AND (fsm_output(4));
  or_tmp_713 <= and_dcpl_267 AND and_dcpl_35 AND (fsm_output(4));
  return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_UNSIGNED(UNSIGNED(libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3),
      5), 9) - SIGNED(return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0),
      9));
  return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1 <= return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl(8);
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out_rsci_idat_21_0 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        out_rsci_idat_22 <= '0';
        out_rsci_idat_30_23 <= STD_LOGIC_VECTOR'( "00000000");
        out_rsci_idat_31 <= '0';
      ELSIF ( for_1_and_cse = '1' ) THEN
        out_rsci_idat_21_0 <= z_out_1;
        out_rsci_idat_22 <= MUX_s_1_100_2(hist_local_d_0_22_lpi_3, hist_local_d_1_22_lpi_3,
            hist_local_d_2_22_lpi_3, hist_local_d_3_22_lpi_3, hist_local_d_4_22_lpi_3,
            hist_local_d_5_22_lpi_3, hist_local_d_6_22_lpi_3, hist_local_d_7_22_lpi_3,
            hist_local_d_8_22_lpi_3, hist_local_d_9_22_lpi_3, hist_local_d_10_22_lpi_3,
            hist_local_d_11_22_lpi_3, hist_local_d_12_22_lpi_3, hist_local_d_13_22_lpi_3,
            hist_local_d_14_22_lpi_3, hist_local_d_15_22_lpi_3, hist_local_d_16_22_lpi_3,
            hist_local_d_17_22_lpi_3, hist_local_d_18_22_lpi_3, hist_local_d_19_22_lpi_3,
            hist_local_d_20_22_lpi_3, hist_local_d_21_22_lpi_3, hist_local_d_22_22_lpi_3,
            hist_local_d_23_22_lpi_3, hist_local_d_24_22_lpi_3, hist_local_d_25_22_lpi_3,
            hist_local_d_26_22_lpi_3, hist_local_d_27_22_lpi_3, hist_local_d_28_22_lpi_3,
            hist_local_d_29_22_lpi_3, hist_local_d_30_22_lpi_3, hist_local_d_31_22_lpi_3,
            hist_local_d_32_22_lpi_3, hist_local_d_33_22_lpi_3, hist_local_d_34_22_lpi_3,
            hist_local_d_35_22_lpi_3, hist_local_d_36_22_lpi_3, hist_local_d_37_22_lpi_3,
            hist_local_d_38_22_lpi_3, hist_local_d_39_22_lpi_3, hist_local_d_40_22_lpi_3,
            hist_local_d_41_22_lpi_3, hist_local_d_42_22_lpi_3, hist_local_d_43_22_lpi_3,
            hist_local_d_44_22_lpi_3, hist_local_d_45_22_lpi_3, hist_local_d_46_22_lpi_3,
            hist_local_d_47_22_lpi_3, hist_local_d_48_22_lpi_3, hist_local_d_49_22_lpi_3,
            hist_local_d_50_22_lpi_3, hist_local_d_51_22_lpi_3, hist_local_d_52_22_lpi_3,
            hist_local_d_53_22_lpi_3, hist_local_d_54_22_lpi_3, hist_local_d_55_22_lpi_3,
            hist_local_d_56_22_lpi_3, hist_local_d_57_22_lpi_3, hist_local_d_58_22_lpi_3,
            hist_local_d_59_22_lpi_3, hist_local_d_60_22_lpi_3, hist_local_d_61_22_lpi_3,
            hist_local_d_62_22_lpi_3, hist_local_d_63_22_lpi_3, hist_local_d_64_22_lpi_3,
            hist_local_d_65_22_lpi_3, hist_local_d_66_22_lpi_3, hist_local_d_67_22_lpi_3,
            hist_local_d_68_22_lpi_3, hist_local_d_69_22_lpi_3, hist_local_d_70_22_lpi_3,
            hist_local_d_71_22_lpi_3, hist_local_d_72_22_lpi_3, hist_local_d_73_22_lpi_3,
            hist_local_d_74_22_lpi_3, hist_local_d_75_22_lpi_3, hist_local_d_76_22_lpi_3,
            hist_local_d_77_22_lpi_3, hist_local_d_78_22_lpi_3, hist_local_d_79_22_lpi_3,
            hist_local_d_80_22_lpi_3, hist_local_d_81_22_lpi_3, hist_local_d_82_22_lpi_3,
            hist_local_d_83_22_lpi_3, hist_local_d_84_22_lpi_3, hist_local_d_85_22_lpi_3,
            hist_local_d_86_22_lpi_3, hist_local_d_87_22_lpi_3, hist_local_d_88_22_lpi_3,
            hist_local_d_89_22_lpi_3, hist_local_d_90_22_lpi_3, hist_local_d_91_22_lpi_3,
            hist_local_d_92_22_lpi_3, hist_local_d_93_22_lpi_3, hist_local_d_94_22_lpi_3,
            hist_local_d_95_22_lpi_3, hist_local_d_96_22_lpi_3, hist_local_d_97_22_lpi_3,
            hist_local_d_98_22_lpi_3, hist_local_d_99_22_lpi_3, i_7_0_sva_6_0);
        out_rsci_idat_30_23 <= z_out;
        out_rsci_idat_31 <= MUX_s_1_100_2(hist_local_d_0_31_lpi_3, hist_local_d_1_31_lpi_3,
            hist_local_d_2_31_lpi_3, hist_local_d_3_31_lpi_3, hist_local_d_4_31_lpi_3,
            hist_local_d_5_31_lpi_3, hist_local_d_6_31_lpi_3, hist_local_d_7_31_lpi_3,
            hist_local_d_8_31_lpi_3, hist_local_d_9_31_lpi_3, hist_local_d_10_31_lpi_3,
            hist_local_d_11_31_lpi_3, hist_local_d_12_31_lpi_3, hist_local_d_13_31_lpi_3,
            hist_local_d_14_31_lpi_3, hist_local_d_15_31_lpi_3, hist_local_d_16_31_lpi_3,
            hist_local_d_17_31_lpi_3, hist_local_d_18_31_lpi_3, hist_local_d_19_31_lpi_3,
            hist_local_d_20_31_lpi_3, hist_local_d_21_31_lpi_3, hist_local_d_22_31_lpi_3,
            hist_local_d_23_31_lpi_3, hist_local_d_24_31_lpi_3, hist_local_d_25_31_lpi_3,
            hist_local_d_26_31_lpi_3, hist_local_d_27_31_lpi_3, hist_local_d_28_31_lpi_3,
            hist_local_d_29_31_lpi_3, hist_local_d_30_31_lpi_3, hist_local_d_31_31_lpi_3,
            hist_local_d_32_31_lpi_3, hist_local_d_33_31_lpi_3, hist_local_d_34_31_lpi_3,
            hist_local_d_35_31_lpi_3, hist_local_d_36_31_lpi_3, hist_local_d_37_31_lpi_3,
            hist_local_d_38_31_lpi_3, hist_local_d_39_31_lpi_3, hist_local_d_40_31_lpi_3,
            hist_local_d_41_31_lpi_3, hist_local_d_42_31_lpi_3, hist_local_d_43_31_lpi_3,
            hist_local_d_44_31_lpi_3, hist_local_d_45_31_lpi_3, hist_local_d_46_31_lpi_3,
            hist_local_d_47_31_lpi_3, hist_local_d_48_31_lpi_3, hist_local_d_49_31_lpi_3,
            hist_local_d_50_31_lpi_3, hist_local_d_51_31_lpi_3, hist_local_d_52_31_lpi_3,
            hist_local_d_53_31_lpi_3, hist_local_d_54_31_lpi_3, hist_local_d_55_31_lpi_3,
            hist_local_d_56_31_lpi_3, hist_local_d_57_31_lpi_3, hist_local_d_58_31_lpi_3,
            hist_local_d_59_31_lpi_3, hist_local_d_60_31_lpi_3, hist_local_d_61_31_lpi_3,
            hist_local_d_62_31_lpi_3, hist_local_d_63_31_lpi_3, hist_local_d_64_31_lpi_3,
            hist_local_d_65_31_lpi_3, hist_local_d_66_31_lpi_3, hist_local_d_67_31_lpi_3,
            hist_local_d_68_31_lpi_3, hist_local_d_69_31_lpi_3, hist_local_d_70_31_lpi_3,
            hist_local_d_71_31_lpi_3, hist_local_d_72_31_lpi_3, hist_local_d_73_31_lpi_3,
            hist_local_d_74_31_lpi_3, hist_local_d_75_31_lpi_3, hist_local_d_76_31_lpi_3,
            hist_local_d_77_31_lpi_3, hist_local_d_78_31_lpi_3, hist_local_d_79_31_lpi_3,
            hist_local_d_80_31_lpi_3, hist_local_d_81_31_lpi_3, hist_local_d_82_31_lpi_3,
            hist_local_d_83_31_lpi_3, hist_local_d_84_31_lpi_3, hist_local_d_85_31_lpi_3,
            hist_local_d_86_31_lpi_3, hist_local_d_87_31_lpi_3, hist_local_d_88_31_lpi_3,
            hist_local_d_89_31_lpi_3, hist_local_d_90_31_lpi_3, hist_local_d_91_31_lpi_3,
            hist_local_d_92_31_lpi_3, hist_local_d_93_31_lpi_3, hist_local_d_94_31_lpi_3,
            hist_local_d_95_31_lpi_3, hist_local_d_96_31_lpi_3, hist_local_d_97_31_lpi_3,
            hist_local_d_98_31_lpi_3, hist_local_d_99_31_lpi_3, i_7_0_sva_6_0);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        size_6_0_sva <= STD_LOGIC_VECTOR'( "0000000");
      ELSIF ( (((while_slc_while_acc_5_svs AND hist_rsci_ivld_mxwt AND (fsm_output(2)))
          OR (fsm_output(0)) OR (fsm_output(8))) AND core_wen) = '1' ) THEN
        size_6_0_sva <= MUX_v_7_2_2(STD_LOGIC_VECTOR'("0000000"), i_7_0_sva_6_0,
            nor_15_cse);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        n_sva <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000");
      ELSIF ( (core_wen AND CONV_SL_1_1(fsm_output(4 DOWNTO 1)=STD_LOGIC_VECTOR'("0000")))
          = '1' ) THEN
        n_sva <= n_rsci_idat;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_n_rsc_triosy_obj_ld_core_psct_cse <= '0';
        reg_out_rsci_ivld_core_psct_cse <= '0';
        reg_hist_rsci_irdy_core_psct_cse <= '0';
        reg_weight_rsci_irdy_core_psct_cse <= '0';
        while_slc_while_acc_5_svs <= '0';
        i_1_sva <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000");
        exit_for_1_sva <= '0';
      ELSIF ( core_wen = '1' ) THEN
        reg_n_rsc_triosy_obj_ld_core_psct_cse <= (exit_for_1_sva AND (fsm_output(7)))
            OR ((NOT (z_out_4(7))) AND (fsm_output(5)));
        reg_out_rsci_ivld_core_psct_cse <= fsm_output(6);
        reg_hist_rsci_irdy_core_psct_cse <= (z_out_3(5)) AND (fsm_output(1));
        reg_weight_rsci_irdy_core_psct_cse <= NOT(exit_for_sva_mx0 OR (NOT(CONV_SL_1_1(fsm_output(4
            DOWNTO 3)/=STD_LOGIC_VECTOR'("00")))));
        while_slc_while_acc_5_svs <= z_out_3(5);
        i_1_sva <= MUX_v_32_2_2(STD_LOGIC_VECTOR'("00000000000000000000000000000000"),
            z_out_5, (fsm_output(4)));
        exit_for_1_sva <= NOT (for_1_acc_nl(8));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_0_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_0_22_lpi_3 <= '0';
        hist_local_d_0_31_lpi_3 <= '0';
        hist_local_d_0_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_cse = '1' ) THEN
        hist_local_d_0_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_416);
        hist_local_d_0_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_416);
        hist_local_d_0_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_416);
        hist_local_d_0_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_416);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_1_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_1_22_lpi_3 <= '0';
        hist_local_d_1_31_lpi_3 <= '0';
        hist_local_d_1_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_1_cse = '1' ) THEN
        hist_local_d_1_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_419);
        hist_local_d_1_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_419);
        hist_local_d_1_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_419);
        hist_local_d_1_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_419);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_10_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_10_22_lpi_3 <= '0';
        hist_local_d_10_31_lpi_3 <= '0';
        hist_local_d_10_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_2_cse = '1' ) THEN
        hist_local_d_10_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_422);
        hist_local_d_10_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_422);
        hist_local_d_10_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_422);
        hist_local_d_10_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_422);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_11_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_11_22_lpi_3 <= '0';
        hist_local_d_11_31_lpi_3 <= '0';
        hist_local_d_11_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_3_cse = '1' ) THEN
        hist_local_d_11_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_425);
        hist_local_d_11_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_425);
        hist_local_d_11_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_425);
        hist_local_d_11_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_425);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_12_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_12_22_lpi_3 <= '0';
        hist_local_d_12_31_lpi_3 <= '0';
        hist_local_d_12_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_4_cse = '1' ) THEN
        hist_local_d_12_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_428);
        hist_local_d_12_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_428);
        hist_local_d_12_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_428);
        hist_local_d_12_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_428);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_13_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_13_22_lpi_3 <= '0';
        hist_local_d_13_31_lpi_3 <= '0';
        hist_local_d_13_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_5_cse = '1' ) THEN
        hist_local_d_13_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_431);
        hist_local_d_13_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_431);
        hist_local_d_13_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_431);
        hist_local_d_13_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_431);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_14_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_14_22_lpi_3 <= '0';
        hist_local_d_14_31_lpi_3 <= '0';
        hist_local_d_14_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_6_cse = '1' ) THEN
        hist_local_d_14_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_434);
        hist_local_d_14_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_434);
        hist_local_d_14_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_434);
        hist_local_d_14_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_434);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_15_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_15_22_lpi_3 <= '0';
        hist_local_d_15_31_lpi_3 <= '0';
        hist_local_d_15_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_7_cse = '1' ) THEN
        hist_local_d_15_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_437);
        hist_local_d_15_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_437);
        hist_local_d_15_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_437);
        hist_local_d_15_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_437);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_16_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_16_22_lpi_3 <= '0';
        hist_local_d_16_31_lpi_3 <= '0';
        hist_local_d_16_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_8_cse = '1' ) THEN
        hist_local_d_16_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_440);
        hist_local_d_16_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_440);
        hist_local_d_16_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_440);
        hist_local_d_16_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_440);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_17_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_17_22_lpi_3 <= '0';
        hist_local_d_17_31_lpi_3 <= '0';
        hist_local_d_17_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_9_cse = '1' ) THEN
        hist_local_d_17_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_443);
        hist_local_d_17_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_443);
        hist_local_d_17_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_443);
        hist_local_d_17_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_443);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_18_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_18_22_lpi_3 <= '0';
        hist_local_d_18_31_lpi_3 <= '0';
        hist_local_d_18_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_10_cse = '1' ) THEN
        hist_local_d_18_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_446);
        hist_local_d_18_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_446);
        hist_local_d_18_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_446);
        hist_local_d_18_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_446);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_19_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_19_22_lpi_3 <= '0';
        hist_local_d_19_31_lpi_3 <= '0';
        hist_local_d_19_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_11_cse = '1' ) THEN
        hist_local_d_19_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_449);
        hist_local_d_19_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_449);
        hist_local_d_19_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_449);
        hist_local_d_19_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_449);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_2_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_2_22_lpi_3 <= '0';
        hist_local_d_2_31_lpi_3 <= '0';
        hist_local_d_2_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_12_cse = '1' ) THEN
        hist_local_d_2_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_452);
        hist_local_d_2_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_452);
        hist_local_d_2_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_452);
        hist_local_d_2_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_452);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_20_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_20_22_lpi_3 <= '0';
        hist_local_d_20_31_lpi_3 <= '0';
        hist_local_d_20_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_13_cse = '1' ) THEN
        hist_local_d_20_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_455);
        hist_local_d_20_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_455);
        hist_local_d_20_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_455);
        hist_local_d_20_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_455);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_21_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_21_22_lpi_3 <= '0';
        hist_local_d_21_31_lpi_3 <= '0';
        hist_local_d_21_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_14_cse = '1' ) THEN
        hist_local_d_21_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_458);
        hist_local_d_21_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_458);
        hist_local_d_21_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_458);
        hist_local_d_21_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_458);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_22_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_22_22_lpi_3 <= '0';
        hist_local_d_22_31_lpi_3 <= '0';
        hist_local_d_22_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_15_cse = '1' ) THEN
        hist_local_d_22_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_461);
        hist_local_d_22_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_461);
        hist_local_d_22_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_461);
        hist_local_d_22_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_461);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_23_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_23_22_lpi_3 <= '0';
        hist_local_d_23_31_lpi_3 <= '0';
        hist_local_d_23_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_16_cse = '1' ) THEN
        hist_local_d_23_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_464);
        hist_local_d_23_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_464);
        hist_local_d_23_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_464);
        hist_local_d_23_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_464);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_24_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_24_22_lpi_3 <= '0';
        hist_local_d_24_31_lpi_3 <= '0';
        hist_local_d_24_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_17_cse = '1' ) THEN
        hist_local_d_24_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_467);
        hist_local_d_24_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_467);
        hist_local_d_24_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_467);
        hist_local_d_24_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_467);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_25_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_25_22_lpi_3 <= '0';
        hist_local_d_25_31_lpi_3 <= '0';
        hist_local_d_25_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_18_cse = '1' ) THEN
        hist_local_d_25_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_470);
        hist_local_d_25_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_470);
        hist_local_d_25_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_470);
        hist_local_d_25_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_470);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_26_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_26_22_lpi_3 <= '0';
        hist_local_d_26_31_lpi_3 <= '0';
        hist_local_d_26_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_19_cse = '1' ) THEN
        hist_local_d_26_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_473);
        hist_local_d_26_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_473);
        hist_local_d_26_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_473);
        hist_local_d_26_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_473);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_27_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_27_22_lpi_3 <= '0';
        hist_local_d_27_31_lpi_3 <= '0';
        hist_local_d_27_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_20_cse = '1' ) THEN
        hist_local_d_27_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_476);
        hist_local_d_27_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_476);
        hist_local_d_27_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_476);
        hist_local_d_27_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_476);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_28_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_28_22_lpi_3 <= '0';
        hist_local_d_28_31_lpi_3 <= '0';
        hist_local_d_28_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_21_cse = '1' ) THEN
        hist_local_d_28_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_479);
        hist_local_d_28_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_479);
        hist_local_d_28_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_479);
        hist_local_d_28_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_479);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_29_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_29_22_lpi_3 <= '0';
        hist_local_d_29_31_lpi_3 <= '0';
        hist_local_d_29_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_22_cse = '1' ) THEN
        hist_local_d_29_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_482);
        hist_local_d_29_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_482);
        hist_local_d_29_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_482);
        hist_local_d_29_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_482);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_3_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_3_22_lpi_3 <= '0';
        hist_local_d_3_31_lpi_3 <= '0';
        hist_local_d_3_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_23_cse = '1' ) THEN
        hist_local_d_3_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_485);
        hist_local_d_3_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_485);
        hist_local_d_3_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_485);
        hist_local_d_3_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_485);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_30_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_30_22_lpi_3 <= '0';
        hist_local_d_30_31_lpi_3 <= '0';
        hist_local_d_30_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_24_cse = '1' ) THEN
        hist_local_d_30_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_488);
        hist_local_d_30_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_488);
        hist_local_d_30_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_488);
        hist_local_d_30_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_488);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_31_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_31_22_lpi_3 <= '0';
        hist_local_d_31_31_lpi_3 <= '0';
        hist_local_d_31_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_25_cse = '1' ) THEN
        hist_local_d_31_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_491);
        hist_local_d_31_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_491);
        hist_local_d_31_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_491);
        hist_local_d_31_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_491);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_32_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_32_22_lpi_3 <= '0';
        hist_local_d_32_31_lpi_3 <= '0';
        hist_local_d_32_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_26_cse = '1' ) THEN
        hist_local_d_32_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_494);
        hist_local_d_32_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_494);
        hist_local_d_32_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_494);
        hist_local_d_32_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_494);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_33_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_33_22_lpi_3 <= '0';
        hist_local_d_33_31_lpi_3 <= '0';
        hist_local_d_33_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_27_cse = '1' ) THEN
        hist_local_d_33_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_497);
        hist_local_d_33_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_497);
        hist_local_d_33_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_497);
        hist_local_d_33_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_497);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_34_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_34_22_lpi_3 <= '0';
        hist_local_d_34_31_lpi_3 <= '0';
        hist_local_d_34_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_28_cse = '1' ) THEN
        hist_local_d_34_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_500);
        hist_local_d_34_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_500);
        hist_local_d_34_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_500);
        hist_local_d_34_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_500);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_35_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_35_22_lpi_3 <= '0';
        hist_local_d_35_31_lpi_3 <= '0';
        hist_local_d_35_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_29_cse = '1' ) THEN
        hist_local_d_35_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_503);
        hist_local_d_35_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_503);
        hist_local_d_35_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_503);
        hist_local_d_35_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_503);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_36_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_36_22_lpi_3 <= '0';
        hist_local_d_36_31_lpi_3 <= '0';
        hist_local_d_36_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_30_cse = '1' ) THEN
        hist_local_d_36_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_506);
        hist_local_d_36_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_506);
        hist_local_d_36_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_506);
        hist_local_d_36_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_506);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_37_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_37_22_lpi_3 <= '0';
        hist_local_d_37_31_lpi_3 <= '0';
        hist_local_d_37_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_31_cse = '1' ) THEN
        hist_local_d_37_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_509);
        hist_local_d_37_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_509);
        hist_local_d_37_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_509);
        hist_local_d_37_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_509);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_38_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_38_22_lpi_3 <= '0';
        hist_local_d_38_31_lpi_3 <= '0';
        hist_local_d_38_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_32_cse = '1' ) THEN
        hist_local_d_38_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_512);
        hist_local_d_38_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_512);
        hist_local_d_38_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_512);
        hist_local_d_38_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_512);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_39_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_39_22_lpi_3 <= '0';
        hist_local_d_39_31_lpi_3 <= '0';
        hist_local_d_39_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_33_cse = '1' ) THEN
        hist_local_d_39_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_515);
        hist_local_d_39_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_515);
        hist_local_d_39_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_515);
        hist_local_d_39_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_515);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_4_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_4_22_lpi_3 <= '0';
        hist_local_d_4_31_lpi_3 <= '0';
        hist_local_d_4_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_34_cse = '1' ) THEN
        hist_local_d_4_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_518);
        hist_local_d_4_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_518);
        hist_local_d_4_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_518);
        hist_local_d_4_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_518);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_40_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_40_22_lpi_3 <= '0';
        hist_local_d_40_31_lpi_3 <= '0';
        hist_local_d_40_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_35_cse = '1' ) THEN
        hist_local_d_40_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_521);
        hist_local_d_40_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_521);
        hist_local_d_40_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_521);
        hist_local_d_40_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_521);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_41_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_41_22_lpi_3 <= '0';
        hist_local_d_41_31_lpi_3 <= '0';
        hist_local_d_41_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_36_cse = '1' ) THEN
        hist_local_d_41_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_524);
        hist_local_d_41_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_524);
        hist_local_d_41_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_524);
        hist_local_d_41_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_524);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_42_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_42_22_lpi_3 <= '0';
        hist_local_d_42_31_lpi_3 <= '0';
        hist_local_d_42_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_37_cse = '1' ) THEN
        hist_local_d_42_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_527);
        hist_local_d_42_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_527);
        hist_local_d_42_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_527);
        hist_local_d_42_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_527);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_43_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_43_22_lpi_3 <= '0';
        hist_local_d_43_31_lpi_3 <= '0';
        hist_local_d_43_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_38_cse = '1' ) THEN
        hist_local_d_43_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_530);
        hist_local_d_43_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_530);
        hist_local_d_43_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_530);
        hist_local_d_43_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_530);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_44_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_44_22_lpi_3 <= '0';
        hist_local_d_44_31_lpi_3 <= '0';
        hist_local_d_44_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_39_cse = '1' ) THEN
        hist_local_d_44_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_533);
        hist_local_d_44_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_533);
        hist_local_d_44_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_533);
        hist_local_d_44_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_533);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_45_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_45_22_lpi_3 <= '0';
        hist_local_d_45_31_lpi_3 <= '0';
        hist_local_d_45_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_40_cse = '1' ) THEN
        hist_local_d_45_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_536);
        hist_local_d_45_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_536);
        hist_local_d_45_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_536);
        hist_local_d_45_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_536);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_46_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_46_22_lpi_3 <= '0';
        hist_local_d_46_31_lpi_3 <= '0';
        hist_local_d_46_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_41_cse = '1' ) THEN
        hist_local_d_46_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_539);
        hist_local_d_46_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_539);
        hist_local_d_46_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_539);
        hist_local_d_46_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_539);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_47_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_47_22_lpi_3 <= '0';
        hist_local_d_47_31_lpi_3 <= '0';
        hist_local_d_47_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_42_cse = '1' ) THEN
        hist_local_d_47_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_542);
        hist_local_d_47_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_542);
        hist_local_d_47_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_542);
        hist_local_d_47_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_542);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_48_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_48_22_lpi_3 <= '0';
        hist_local_d_48_31_lpi_3 <= '0';
        hist_local_d_48_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_43_cse = '1' ) THEN
        hist_local_d_48_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_545);
        hist_local_d_48_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_545);
        hist_local_d_48_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_545);
        hist_local_d_48_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_545);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_49_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_49_22_lpi_3 <= '0';
        hist_local_d_49_31_lpi_3 <= '0';
        hist_local_d_49_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_44_cse = '1' ) THEN
        hist_local_d_49_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_548);
        hist_local_d_49_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_548);
        hist_local_d_49_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_548);
        hist_local_d_49_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_548);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_5_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_5_22_lpi_3 <= '0';
        hist_local_d_5_31_lpi_3 <= '0';
        hist_local_d_5_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_45_cse = '1' ) THEN
        hist_local_d_5_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_551);
        hist_local_d_5_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_551);
        hist_local_d_5_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_551);
        hist_local_d_5_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_551);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_50_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_50_22_lpi_3 <= '0';
        hist_local_d_50_31_lpi_3 <= '0';
        hist_local_d_50_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_46_cse = '1' ) THEN
        hist_local_d_50_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_554);
        hist_local_d_50_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_554);
        hist_local_d_50_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_554);
        hist_local_d_50_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_554);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_51_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_51_22_lpi_3 <= '0';
        hist_local_d_51_31_lpi_3 <= '0';
        hist_local_d_51_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_47_cse = '1' ) THEN
        hist_local_d_51_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_557);
        hist_local_d_51_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_557);
        hist_local_d_51_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_557);
        hist_local_d_51_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_557);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_52_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_52_22_lpi_3 <= '0';
        hist_local_d_52_31_lpi_3 <= '0';
        hist_local_d_52_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_48_cse = '1' ) THEN
        hist_local_d_52_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_560);
        hist_local_d_52_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_560);
        hist_local_d_52_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_560);
        hist_local_d_52_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_560);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_53_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_53_22_lpi_3 <= '0';
        hist_local_d_53_31_lpi_3 <= '0';
        hist_local_d_53_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_49_cse = '1' ) THEN
        hist_local_d_53_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_563);
        hist_local_d_53_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_563);
        hist_local_d_53_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_563);
        hist_local_d_53_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_563);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_54_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_54_22_lpi_3 <= '0';
        hist_local_d_54_31_lpi_3 <= '0';
        hist_local_d_54_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_50_cse = '1' ) THEN
        hist_local_d_54_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_566);
        hist_local_d_54_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_566);
        hist_local_d_54_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_566);
        hist_local_d_54_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_566);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_55_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_55_22_lpi_3 <= '0';
        hist_local_d_55_31_lpi_3 <= '0';
        hist_local_d_55_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_51_cse = '1' ) THEN
        hist_local_d_55_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_569);
        hist_local_d_55_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_569);
        hist_local_d_55_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_569);
        hist_local_d_55_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_569);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_56_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_56_22_lpi_3 <= '0';
        hist_local_d_56_31_lpi_3 <= '0';
        hist_local_d_56_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_52_cse = '1' ) THEN
        hist_local_d_56_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_572);
        hist_local_d_56_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_572);
        hist_local_d_56_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_572);
        hist_local_d_56_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_572);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_57_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_57_22_lpi_3 <= '0';
        hist_local_d_57_31_lpi_3 <= '0';
        hist_local_d_57_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_53_cse = '1' ) THEN
        hist_local_d_57_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_575);
        hist_local_d_57_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_575);
        hist_local_d_57_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_575);
        hist_local_d_57_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_575);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_58_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_58_22_lpi_3 <= '0';
        hist_local_d_58_31_lpi_3 <= '0';
        hist_local_d_58_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_54_cse = '1' ) THEN
        hist_local_d_58_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_578);
        hist_local_d_58_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_578);
        hist_local_d_58_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_578);
        hist_local_d_58_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_578);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_59_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_59_22_lpi_3 <= '0';
        hist_local_d_59_31_lpi_3 <= '0';
        hist_local_d_59_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_55_cse = '1' ) THEN
        hist_local_d_59_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_581);
        hist_local_d_59_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_581);
        hist_local_d_59_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_581);
        hist_local_d_59_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_581);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_6_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_6_22_lpi_3 <= '0';
        hist_local_d_6_31_lpi_3 <= '0';
        hist_local_d_6_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_56_cse = '1' ) THEN
        hist_local_d_6_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_584);
        hist_local_d_6_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_584);
        hist_local_d_6_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_584);
        hist_local_d_6_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_584);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_60_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_60_22_lpi_3 <= '0';
        hist_local_d_60_31_lpi_3 <= '0';
        hist_local_d_60_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_57_cse = '1' ) THEN
        hist_local_d_60_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_587);
        hist_local_d_60_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_587);
        hist_local_d_60_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_587);
        hist_local_d_60_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_587);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_61_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_61_22_lpi_3 <= '0';
        hist_local_d_61_31_lpi_3 <= '0';
        hist_local_d_61_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_58_cse = '1' ) THEN
        hist_local_d_61_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_590);
        hist_local_d_61_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_590);
        hist_local_d_61_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_590);
        hist_local_d_61_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_590);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_62_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_62_22_lpi_3 <= '0';
        hist_local_d_62_31_lpi_3 <= '0';
        hist_local_d_62_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_59_cse = '1' ) THEN
        hist_local_d_62_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_593);
        hist_local_d_62_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_593);
        hist_local_d_62_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_593);
        hist_local_d_62_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_593);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_63_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_63_22_lpi_3 <= '0';
        hist_local_d_63_31_lpi_3 <= '0';
        hist_local_d_63_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_60_cse = '1' ) THEN
        hist_local_d_63_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_596);
        hist_local_d_63_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_596);
        hist_local_d_63_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_596);
        hist_local_d_63_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_596);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_64_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_64_22_lpi_3 <= '0';
        hist_local_d_64_31_lpi_3 <= '0';
        hist_local_d_64_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_61_cse = '1' ) THEN
        hist_local_d_64_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_599);
        hist_local_d_64_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_599);
        hist_local_d_64_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_599);
        hist_local_d_64_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_599);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_65_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_65_22_lpi_3 <= '0';
        hist_local_d_65_31_lpi_3 <= '0';
        hist_local_d_65_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_62_cse = '1' ) THEN
        hist_local_d_65_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_602);
        hist_local_d_65_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_602);
        hist_local_d_65_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_602);
        hist_local_d_65_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_602);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_66_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_66_22_lpi_3 <= '0';
        hist_local_d_66_31_lpi_3 <= '0';
        hist_local_d_66_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_63_cse = '1' ) THEN
        hist_local_d_66_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_605);
        hist_local_d_66_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_605);
        hist_local_d_66_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_605);
        hist_local_d_66_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_605);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_67_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_67_22_lpi_3 <= '0';
        hist_local_d_67_31_lpi_3 <= '0';
        hist_local_d_67_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_64_cse = '1' ) THEN
        hist_local_d_67_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_608);
        hist_local_d_67_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_608);
        hist_local_d_67_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_608);
        hist_local_d_67_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_608);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_68_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_68_22_lpi_3 <= '0';
        hist_local_d_68_31_lpi_3 <= '0';
        hist_local_d_68_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_65_cse = '1' ) THEN
        hist_local_d_68_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_611);
        hist_local_d_68_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_611);
        hist_local_d_68_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_611);
        hist_local_d_68_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_611);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_69_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_69_22_lpi_3 <= '0';
        hist_local_d_69_31_lpi_3 <= '0';
        hist_local_d_69_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_66_cse = '1' ) THEN
        hist_local_d_69_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_614);
        hist_local_d_69_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_614);
        hist_local_d_69_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_614);
        hist_local_d_69_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_614);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_7_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_7_22_lpi_3 <= '0';
        hist_local_d_7_31_lpi_3 <= '0';
        hist_local_d_7_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_67_cse = '1' ) THEN
        hist_local_d_7_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_617);
        hist_local_d_7_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_617);
        hist_local_d_7_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_617);
        hist_local_d_7_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_617);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_70_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_70_22_lpi_3 <= '0';
        hist_local_d_70_31_lpi_3 <= '0';
        hist_local_d_70_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_68_cse = '1' ) THEN
        hist_local_d_70_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_620);
        hist_local_d_70_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_620);
        hist_local_d_70_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_620);
        hist_local_d_70_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_620);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_71_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_71_22_lpi_3 <= '0';
        hist_local_d_71_31_lpi_3 <= '0';
        hist_local_d_71_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_69_cse = '1' ) THEN
        hist_local_d_71_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_623);
        hist_local_d_71_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_623);
        hist_local_d_71_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_623);
        hist_local_d_71_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_623);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_72_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_72_22_lpi_3 <= '0';
        hist_local_d_72_31_lpi_3 <= '0';
        hist_local_d_72_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_70_cse = '1' ) THEN
        hist_local_d_72_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_626);
        hist_local_d_72_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_626);
        hist_local_d_72_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_626);
        hist_local_d_72_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_626);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_73_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_73_22_lpi_3 <= '0';
        hist_local_d_73_31_lpi_3 <= '0';
        hist_local_d_73_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_71_cse = '1' ) THEN
        hist_local_d_73_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_629);
        hist_local_d_73_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_629);
        hist_local_d_73_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_629);
        hist_local_d_73_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_629);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_74_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_74_22_lpi_3 <= '0';
        hist_local_d_74_31_lpi_3 <= '0';
        hist_local_d_74_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_72_cse = '1' ) THEN
        hist_local_d_74_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_632);
        hist_local_d_74_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_632);
        hist_local_d_74_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_632);
        hist_local_d_74_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_632);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_75_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_75_22_lpi_3 <= '0';
        hist_local_d_75_31_lpi_3 <= '0';
        hist_local_d_75_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_73_cse = '1' ) THEN
        hist_local_d_75_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_635);
        hist_local_d_75_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_635);
        hist_local_d_75_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_635);
        hist_local_d_75_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_635);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_76_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_76_22_lpi_3 <= '0';
        hist_local_d_76_31_lpi_3 <= '0';
        hist_local_d_76_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_74_cse = '1' ) THEN
        hist_local_d_76_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_638);
        hist_local_d_76_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_638);
        hist_local_d_76_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_638);
        hist_local_d_76_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_638);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_77_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_77_22_lpi_3 <= '0';
        hist_local_d_77_31_lpi_3 <= '0';
        hist_local_d_77_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_75_cse = '1' ) THEN
        hist_local_d_77_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_641);
        hist_local_d_77_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_641);
        hist_local_d_77_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_641);
        hist_local_d_77_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_641);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_78_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_78_22_lpi_3 <= '0';
        hist_local_d_78_31_lpi_3 <= '0';
        hist_local_d_78_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_76_cse = '1' ) THEN
        hist_local_d_78_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_644);
        hist_local_d_78_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_644);
        hist_local_d_78_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_644);
        hist_local_d_78_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_644);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_79_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_79_22_lpi_3 <= '0';
        hist_local_d_79_31_lpi_3 <= '0';
        hist_local_d_79_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_77_cse = '1' ) THEN
        hist_local_d_79_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_647);
        hist_local_d_79_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_647);
        hist_local_d_79_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_647);
        hist_local_d_79_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_647);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_8_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_8_22_lpi_3 <= '0';
        hist_local_d_8_31_lpi_3 <= '0';
        hist_local_d_8_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_78_cse = '1' ) THEN
        hist_local_d_8_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_650);
        hist_local_d_8_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_650);
        hist_local_d_8_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_650);
        hist_local_d_8_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_650);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_80_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_80_22_lpi_3 <= '0';
        hist_local_d_80_31_lpi_3 <= '0';
        hist_local_d_80_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_79_cse = '1' ) THEN
        hist_local_d_80_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_653);
        hist_local_d_80_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_653);
        hist_local_d_80_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_653);
        hist_local_d_80_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_653);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_81_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_81_22_lpi_3 <= '0';
        hist_local_d_81_31_lpi_3 <= '0';
        hist_local_d_81_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_80_cse = '1' ) THEN
        hist_local_d_81_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_656);
        hist_local_d_81_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_656);
        hist_local_d_81_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_656);
        hist_local_d_81_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_656);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_82_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_82_22_lpi_3 <= '0';
        hist_local_d_82_31_lpi_3 <= '0';
        hist_local_d_82_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_81_cse = '1' ) THEN
        hist_local_d_82_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_659);
        hist_local_d_82_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_659);
        hist_local_d_82_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_659);
        hist_local_d_82_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_659);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_83_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_83_22_lpi_3 <= '0';
        hist_local_d_83_31_lpi_3 <= '0';
        hist_local_d_83_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_82_cse = '1' ) THEN
        hist_local_d_83_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_662);
        hist_local_d_83_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_662);
        hist_local_d_83_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_662);
        hist_local_d_83_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_662);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_84_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_84_22_lpi_3 <= '0';
        hist_local_d_84_31_lpi_3 <= '0';
        hist_local_d_84_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_83_cse = '1' ) THEN
        hist_local_d_84_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_665);
        hist_local_d_84_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_665);
        hist_local_d_84_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_665);
        hist_local_d_84_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_665);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_85_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_85_22_lpi_3 <= '0';
        hist_local_d_85_31_lpi_3 <= '0';
        hist_local_d_85_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_84_cse = '1' ) THEN
        hist_local_d_85_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_668);
        hist_local_d_85_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_668);
        hist_local_d_85_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_668);
        hist_local_d_85_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_668);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_86_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_86_22_lpi_3 <= '0';
        hist_local_d_86_31_lpi_3 <= '0';
        hist_local_d_86_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_85_cse = '1' ) THEN
        hist_local_d_86_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_671);
        hist_local_d_86_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_671);
        hist_local_d_86_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_671);
        hist_local_d_86_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_671);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_87_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_87_22_lpi_3 <= '0';
        hist_local_d_87_31_lpi_3 <= '0';
        hist_local_d_87_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_86_cse = '1' ) THEN
        hist_local_d_87_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_674);
        hist_local_d_87_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_674);
        hist_local_d_87_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_674);
        hist_local_d_87_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_674);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_88_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_88_22_lpi_3 <= '0';
        hist_local_d_88_31_lpi_3 <= '0';
        hist_local_d_88_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_87_cse = '1' ) THEN
        hist_local_d_88_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_677);
        hist_local_d_88_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_677);
        hist_local_d_88_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_677);
        hist_local_d_88_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_677);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_89_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_89_22_lpi_3 <= '0';
        hist_local_d_89_31_lpi_3 <= '0';
        hist_local_d_89_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_88_cse = '1' ) THEN
        hist_local_d_89_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_680);
        hist_local_d_89_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_680);
        hist_local_d_89_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_680);
        hist_local_d_89_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_680);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_9_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_9_22_lpi_3 <= '0';
        hist_local_d_9_31_lpi_3 <= '0';
        hist_local_d_9_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_89_cse = '1' ) THEN
        hist_local_d_9_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_683);
        hist_local_d_9_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_683);
        hist_local_d_9_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_683);
        hist_local_d_9_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_683);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_90_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_90_22_lpi_3 <= '0';
        hist_local_d_90_31_lpi_3 <= '0';
        hist_local_d_90_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_90_cse = '1' ) THEN
        hist_local_d_90_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_686);
        hist_local_d_90_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_686);
        hist_local_d_90_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_686);
        hist_local_d_90_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_686);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_91_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_91_22_lpi_3 <= '0';
        hist_local_d_91_31_lpi_3 <= '0';
        hist_local_d_91_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_91_cse = '1' ) THEN
        hist_local_d_91_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_689);
        hist_local_d_91_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_689);
        hist_local_d_91_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_689);
        hist_local_d_91_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_689);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_92_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_92_22_lpi_3 <= '0';
        hist_local_d_92_31_lpi_3 <= '0';
        hist_local_d_92_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_92_cse = '1' ) THEN
        hist_local_d_92_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_692);
        hist_local_d_92_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_692);
        hist_local_d_92_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_692);
        hist_local_d_92_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_692);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_93_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_93_22_lpi_3 <= '0';
        hist_local_d_93_31_lpi_3 <= '0';
        hist_local_d_93_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_93_cse = '1' ) THEN
        hist_local_d_93_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_695);
        hist_local_d_93_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_695);
        hist_local_d_93_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_695);
        hist_local_d_93_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_695);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_94_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_94_22_lpi_3 <= '0';
        hist_local_d_94_31_lpi_3 <= '0';
        hist_local_d_94_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_94_cse = '1' ) THEN
        hist_local_d_94_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_698);
        hist_local_d_94_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_698);
        hist_local_d_94_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_698);
        hist_local_d_94_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_698);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_95_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_95_22_lpi_3 <= '0';
        hist_local_d_95_31_lpi_3 <= '0';
        hist_local_d_95_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_95_cse = '1' ) THEN
        hist_local_d_95_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_701);
        hist_local_d_95_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_701);
        hist_local_d_95_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_701);
        hist_local_d_95_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_701);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_96_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_96_22_lpi_3 <= '0';
        hist_local_d_96_31_lpi_3 <= '0';
        hist_local_d_96_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_96_cse = '1' ) THEN
        hist_local_d_96_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_704);
        hist_local_d_96_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_704);
        hist_local_d_96_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_704);
        hist_local_d_96_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_704);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_97_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_97_22_lpi_3 <= '0';
        hist_local_d_97_31_lpi_3 <= '0';
        hist_local_d_97_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_97_cse = '1' ) THEN
        hist_local_d_97_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_707);
        hist_local_d_97_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_707);
        hist_local_d_97_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_707);
        hist_local_d_97_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_707);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_98_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_98_22_lpi_3 <= '0';
        hist_local_d_98_31_lpi_3 <= '0';
        hist_local_d_98_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_98_cse = '1' ) THEN
        hist_local_d_98_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_710);
        hist_local_d_98_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_710);
        hist_local_d_98_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_710);
        hist_local_d_98_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_710);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hist_local_d_99_21_0_lpi_3 <= STD_LOGIC_VECTOR'( "0000000000000000000000");
        hist_local_d_99_22_lpi_3 <= '0';
        hist_local_d_99_31_lpi_3 <= '0';
        hist_local_d_99_30_23_lpi_3 <= STD_LOGIC_VECTOR'( "00000000");
      ELSIF ( hist_local_d_and_99_cse = '1' ) THEN
        hist_local_d_99_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt(21 DOWNTO
            0)), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1, or_tmp_713);
        hist_local_d_99_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(22)), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
            or_tmp_713);
        hist_local_d_99_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt(31)), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
            or_tmp_713);
        hist_local_d_99_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt(30 DOWNTO
            23)), for_asn_811_mx0w1, or_tmp_713);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        i_7_0_sva_6_0 <= STD_LOGIC_VECTOR'( "0000000");
      ELSIF ( ((NOT (fsm_output(7))) AND core_wen) = '1' ) THEN
        i_7_0_sva_6_0 <= MUX_v_7_2_2(STD_LOGIC_VECTOR'("0000000"), (z_out_5(6 DOWNTO
            0)), not_nl);
      END IF;
    END IF;
  END PROCESS;
  for_1_acc_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_UNSIGNED(UNSIGNED(z_out_5(7
      DOWNTO 0)), 8), 9) + CONV_SIGNED(CONV_SIGNED(SIGNED('1' & (NOT size_6_0_sva)),
      8), 9) + SIGNED'( "000000001"), 9));
  not_nl <= NOT (fsm_output(5));
  operator_32_true_mux_1_nl <= MUX_v_32_2_2((NOT n_sva), STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(return_add_generic_AC_RND_CONV_false_add_r_1_sva_1(27
      DOWNTO 3)),32)), fsm_output(4));
  operator_32_true_or_1_nl <= ((return_add_generic_AC_RND_CONV_false_add_r_1_sva_1(2))
      AND ((return_add_generic_AC_RND_CONV_false_add_r_1_sva_1(0)) OR CONV_SL_1_1(return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_psp_sva_1/=STD_LOGIC_VECTOR'("00000000000000000000000000"))
      OR (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1(1)) OR (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1(3))))
      OR (fsm_output(3));
  z_out_2 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(SIGNED(operator_32_true_mux_1_nl),
      33) + CONV_UNSIGNED(CONV_UNSIGNED(operator_32_true_or_1_nl, 1), 33), 33));
  while_while_while_nand_2_nl <= NOT(return_extract_return_extract_or_sva_1 AND (fsm_output(4)));
  while_while_while_nand_3_nl <= NOT(x_to_helper_t_return_d_sva_22_1 AND (fsm_output(4)));
  while_mux_2_nl <= MUX_v_22_2_2(STD_LOGIC_VECTOR'( "1111111111111111100111"), (NOT
      z_out_1), fsm_output(4));
  while_mux_3_nl <= MUX_v_5_2_2((size_6_0_sva(6 DOWNTO 2)), STD_LOGIC_VECTOR'( "00001"),
      fsm_output(4));
  z_out_3 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED('1' & while_while_while_nand_2_nl
      & while_while_while_nand_3_nl & while_mux_2_nl) + CONV_UNSIGNED(UNSIGNED(while_mux_3_nl),
      25), 25));
  return_add_generic_AC_RND_CONV_false_r_un_qif_mux_1_nl <= MUX_v_24_2_2((NOT (z_out_2(23
      DOWNTO 0))), (STD_LOGIC_VECTOR'( "11111111111111111") & (NOT size_6_0_sva)),
      fsm_output(5));
  z_out_4 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(return_add_generic_AC_RND_CONV_false_r_un_qif_mux_1_nl)
      + UNSIGNED'( "000000000000000000000001"), 24));
  while_mux1h_401_nl <= MUX1HOT_v_32_3_2(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(size_6_0_sva),32)),
      i_1_sva, (STD_LOGIC_VECTOR'( "0000000000000000000000000") & i_7_0_sva_6_0),
      STD_LOGIC_VECTOR'( (fsm_output(1)) & (fsm_output(4)) & (fsm_output(6))));
  z_out_5 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(while_mux1h_401_nl) + UNSIGNED'(
      "00000000000000000000000000000001"), 32));
  for_1_mux_9_cse <= MUX_v_7_2_2(i_7_0_sva_6_0, feature_rsci_idat_mxwt, fsm_output(4));
  z_out <= MUX_v_8_100_2(hist_local_d_0_30_23_lpi_3, hist_local_d_1_30_23_lpi_3,
      hist_local_d_2_30_23_lpi_3, hist_local_d_3_30_23_lpi_3, hist_local_d_4_30_23_lpi_3,
      hist_local_d_5_30_23_lpi_3, hist_local_d_6_30_23_lpi_3, hist_local_d_7_30_23_lpi_3,
      hist_local_d_8_30_23_lpi_3, hist_local_d_9_30_23_lpi_3, hist_local_d_10_30_23_lpi_3,
      hist_local_d_11_30_23_lpi_3, hist_local_d_12_30_23_lpi_3, hist_local_d_13_30_23_lpi_3,
      hist_local_d_14_30_23_lpi_3, hist_local_d_15_30_23_lpi_3, hist_local_d_16_30_23_lpi_3,
      hist_local_d_17_30_23_lpi_3, hist_local_d_18_30_23_lpi_3, hist_local_d_19_30_23_lpi_3,
      hist_local_d_20_30_23_lpi_3, hist_local_d_21_30_23_lpi_3, hist_local_d_22_30_23_lpi_3,
      hist_local_d_23_30_23_lpi_3, hist_local_d_24_30_23_lpi_3, hist_local_d_25_30_23_lpi_3,
      hist_local_d_26_30_23_lpi_3, hist_local_d_27_30_23_lpi_3, hist_local_d_28_30_23_lpi_3,
      hist_local_d_29_30_23_lpi_3, hist_local_d_30_30_23_lpi_3, hist_local_d_31_30_23_lpi_3,
      hist_local_d_32_30_23_lpi_3, hist_local_d_33_30_23_lpi_3, hist_local_d_34_30_23_lpi_3,
      hist_local_d_35_30_23_lpi_3, hist_local_d_36_30_23_lpi_3, hist_local_d_37_30_23_lpi_3,
      hist_local_d_38_30_23_lpi_3, hist_local_d_39_30_23_lpi_3, hist_local_d_40_30_23_lpi_3,
      hist_local_d_41_30_23_lpi_3, hist_local_d_42_30_23_lpi_3, hist_local_d_43_30_23_lpi_3,
      hist_local_d_44_30_23_lpi_3, hist_local_d_45_30_23_lpi_3, hist_local_d_46_30_23_lpi_3,
      hist_local_d_47_30_23_lpi_3, hist_local_d_48_30_23_lpi_3, hist_local_d_49_30_23_lpi_3,
      hist_local_d_50_30_23_lpi_3, hist_local_d_51_30_23_lpi_3, hist_local_d_52_30_23_lpi_3,
      hist_local_d_53_30_23_lpi_3, hist_local_d_54_30_23_lpi_3, hist_local_d_55_30_23_lpi_3,
      hist_local_d_56_30_23_lpi_3, hist_local_d_57_30_23_lpi_3, hist_local_d_58_30_23_lpi_3,
      hist_local_d_59_30_23_lpi_3, hist_local_d_60_30_23_lpi_3, hist_local_d_61_30_23_lpi_3,
      hist_local_d_62_30_23_lpi_3, hist_local_d_63_30_23_lpi_3, hist_local_d_64_30_23_lpi_3,
      hist_local_d_65_30_23_lpi_3, hist_local_d_66_30_23_lpi_3, hist_local_d_67_30_23_lpi_3,
      hist_local_d_68_30_23_lpi_3, hist_local_d_69_30_23_lpi_3, hist_local_d_70_30_23_lpi_3,
      hist_local_d_71_30_23_lpi_3, hist_local_d_72_30_23_lpi_3, hist_local_d_73_30_23_lpi_3,
      hist_local_d_74_30_23_lpi_3, hist_local_d_75_30_23_lpi_3, hist_local_d_76_30_23_lpi_3,
      hist_local_d_77_30_23_lpi_3, hist_local_d_78_30_23_lpi_3, hist_local_d_79_30_23_lpi_3,
      hist_local_d_80_30_23_lpi_3, hist_local_d_81_30_23_lpi_3, hist_local_d_82_30_23_lpi_3,
      hist_local_d_83_30_23_lpi_3, hist_local_d_84_30_23_lpi_3, hist_local_d_85_30_23_lpi_3,
      hist_local_d_86_30_23_lpi_3, hist_local_d_87_30_23_lpi_3, hist_local_d_88_30_23_lpi_3,
      hist_local_d_89_30_23_lpi_3, hist_local_d_90_30_23_lpi_3, hist_local_d_91_30_23_lpi_3,
      hist_local_d_92_30_23_lpi_3, hist_local_d_93_30_23_lpi_3, hist_local_d_94_30_23_lpi_3,
      hist_local_d_95_30_23_lpi_3, hist_local_d_96_30_23_lpi_3, hist_local_d_97_30_23_lpi_3,
      hist_local_d_98_30_23_lpi_3, hist_local_d_99_30_23_lpi_3, for_1_mux_9_cse);
  z_out_1 <= MUX_v_22_100_2(hist_local_d_0_21_0_lpi_3, hist_local_d_1_21_0_lpi_3,
      hist_local_d_2_21_0_lpi_3, hist_local_d_3_21_0_lpi_3, hist_local_d_4_21_0_lpi_3,
      hist_local_d_5_21_0_lpi_3, hist_local_d_6_21_0_lpi_3, hist_local_d_7_21_0_lpi_3,
      hist_local_d_8_21_0_lpi_3, hist_local_d_9_21_0_lpi_3, hist_local_d_10_21_0_lpi_3,
      hist_local_d_11_21_0_lpi_3, hist_local_d_12_21_0_lpi_3, hist_local_d_13_21_0_lpi_3,
      hist_local_d_14_21_0_lpi_3, hist_local_d_15_21_0_lpi_3, hist_local_d_16_21_0_lpi_3,
      hist_local_d_17_21_0_lpi_3, hist_local_d_18_21_0_lpi_3, hist_local_d_19_21_0_lpi_3,
      hist_local_d_20_21_0_lpi_3, hist_local_d_21_21_0_lpi_3, hist_local_d_22_21_0_lpi_3,
      hist_local_d_23_21_0_lpi_3, hist_local_d_24_21_0_lpi_3, hist_local_d_25_21_0_lpi_3,
      hist_local_d_26_21_0_lpi_3, hist_local_d_27_21_0_lpi_3, hist_local_d_28_21_0_lpi_3,
      hist_local_d_29_21_0_lpi_3, hist_local_d_30_21_0_lpi_3, hist_local_d_31_21_0_lpi_3,
      hist_local_d_32_21_0_lpi_3, hist_local_d_33_21_0_lpi_3, hist_local_d_34_21_0_lpi_3,
      hist_local_d_35_21_0_lpi_3, hist_local_d_36_21_0_lpi_3, hist_local_d_37_21_0_lpi_3,
      hist_local_d_38_21_0_lpi_3, hist_local_d_39_21_0_lpi_3, hist_local_d_40_21_0_lpi_3,
      hist_local_d_41_21_0_lpi_3, hist_local_d_42_21_0_lpi_3, hist_local_d_43_21_0_lpi_3,
      hist_local_d_44_21_0_lpi_3, hist_local_d_45_21_0_lpi_3, hist_local_d_46_21_0_lpi_3,
      hist_local_d_47_21_0_lpi_3, hist_local_d_48_21_0_lpi_3, hist_local_d_49_21_0_lpi_3,
      hist_local_d_50_21_0_lpi_3, hist_local_d_51_21_0_lpi_3, hist_local_d_52_21_0_lpi_3,
      hist_local_d_53_21_0_lpi_3, hist_local_d_54_21_0_lpi_3, hist_local_d_55_21_0_lpi_3,
      hist_local_d_56_21_0_lpi_3, hist_local_d_57_21_0_lpi_3, hist_local_d_58_21_0_lpi_3,
      hist_local_d_59_21_0_lpi_3, hist_local_d_60_21_0_lpi_3, hist_local_d_61_21_0_lpi_3,
      hist_local_d_62_21_0_lpi_3, hist_local_d_63_21_0_lpi_3, hist_local_d_64_21_0_lpi_3,
      hist_local_d_65_21_0_lpi_3, hist_local_d_66_21_0_lpi_3, hist_local_d_67_21_0_lpi_3,
      hist_local_d_68_21_0_lpi_3, hist_local_d_69_21_0_lpi_3, hist_local_d_70_21_0_lpi_3,
      hist_local_d_71_21_0_lpi_3, hist_local_d_72_21_0_lpi_3, hist_local_d_73_21_0_lpi_3,
      hist_local_d_74_21_0_lpi_3, hist_local_d_75_21_0_lpi_3, hist_local_d_76_21_0_lpi_3,
      hist_local_d_77_21_0_lpi_3, hist_local_d_78_21_0_lpi_3, hist_local_d_79_21_0_lpi_3,
      hist_local_d_80_21_0_lpi_3, hist_local_d_81_21_0_lpi_3, hist_local_d_82_21_0_lpi_3,
      hist_local_d_83_21_0_lpi_3, hist_local_d_84_21_0_lpi_3, hist_local_d_85_21_0_lpi_3,
      hist_local_d_86_21_0_lpi_3, hist_local_d_87_21_0_lpi_3, hist_local_d_88_21_0_lpi_3,
      hist_local_d_89_21_0_lpi_3, hist_local_d_90_21_0_lpi_3, hist_local_d_91_21_0_lpi_3,
      hist_local_d_92_21_0_lpi_3, hist_local_d_93_21_0_lpi_3, hist_local_d_94_21_0_lpi_3,
      hist_local_d_95_21_0_lpi_3, hist_local_d_96_21_0_lpi_3, hist_local_d_97_21_0_lpi_3,
      hist_local_d_98_21_0_lpi_3, hist_local_d_99_21_0_lpi_3, for_1_mux_9_cse);
END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main_core
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main_core IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    return_rsc_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    return_rsc_triosy_lz : OUT STD_LOGIC;
    feature_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    feature_cns_vld : OUT STD_LOGIC;
    feature_cns_rdy : IN STD_LOGIC;
    weight_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    weight_cns_vld : OUT STD_LOGIC;
    weight_cns_rdy : IN STD_LOGIC;
    hist_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    hist_cns_vld : OUT STD_LOGIC;
    hist_cns_rdy : IN STD_LOGIC;
    out_cns_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    out_cns_vld : IN STD_LOGIC;
    out_cns_rdy : OUT STD_LOGIC
  );
END main_core;

ARCHITECTURE v6 OF main_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL return_rsci_idat : STD_LOGIC_VECTOR (31 DOWNTO 0);

  SIGNAL return_rsci_idat_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL return_rsci_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);

  COMPONENT main_core_core
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      return_rsc_triosy_lz : OUT STD_LOGIC;
      feature_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      feature_cns_vld : OUT STD_LOGIC;
      feature_cns_rdy : IN STD_LOGIC;
      weight_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      weight_cns_vld : OUT STD_LOGIC;
      weight_cns_rdy : IN STD_LOGIC;
      hist_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      hist_cns_vld : OUT STD_LOGIC;
      hist_cns_rdy : IN STD_LOGIC;
      out_cns_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      out_cns_vld : IN STD_LOGIC;
      out_cns_rdy : OUT STD_LOGIC;
      return_rsci_idat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL main_core_core_inst_feature_cns_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL main_core_core_inst_weight_cns_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL main_core_core_inst_hist_cns_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL main_core_core_inst_out_cns_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL main_core_core_inst_return_rsci_idat : STD_LOGIC_VECTOR (31 DOWNTO 0);

BEGIN
  return_rsci : work.ccs_out_pkg_v1.ccs_out_v1
    GENERIC MAP(
      rscid => 12,
      width => 32
      )
    PORT MAP(
      idat => return_rsci_idat_1,
      dat => return_rsci_dat
    );
  return_rsci_idat_1 <= return_rsci_idat;
  return_rsc_dat <= return_rsci_dat;

  main_core_core_inst : main_core_core
    PORT MAP(
      clk => clk,
      rst => rst,
      return_rsc_triosy_lz => return_rsc_triosy_lz,
      feature_cns_dat => main_core_core_inst_feature_cns_dat,
      feature_cns_vld => feature_cns_vld,
      feature_cns_rdy => feature_cns_rdy,
      weight_cns_dat => main_core_core_inst_weight_cns_dat,
      weight_cns_vld => weight_cns_vld,
      weight_cns_rdy => weight_cns_rdy,
      hist_cns_dat => main_core_core_inst_hist_cns_dat,
      hist_cns_vld => hist_cns_vld,
      hist_cns_rdy => hist_cns_rdy,
      out_cns_dat => main_core_core_inst_out_cns_dat,
      out_cns_vld => out_cns_vld,
      out_cns_rdy => out_cns_rdy,
      return_rsci_idat => main_core_core_inst_return_rsci_idat
    );
  feature_cns_dat <= main_core_core_inst_feature_cns_dat;
  weight_cns_dat <= main_core_core_inst_weight_cns_dat;
  hist_cns_dat <= main_core_core_inst_hist_cns_dat;
  main_core_core_inst_out_cns_dat <= out_cns_dat;
  return_rsci_idat <= main_core_core_inst_return_rsci_idat;

END v6;

-- ------------------------------------------------------------------
--  Design Unit:    histogram
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY histogram IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    feature_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    feature_rsc_vld : IN STD_LOGIC;
    feature_rsc_rdy : OUT STD_LOGIC;
    weight_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    weight_rsc_vld : IN STD_LOGIC;
    weight_rsc_rdy : OUT STD_LOGIC;
    hist_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    hist_rsc_vld : IN STD_LOGIC;
    hist_rsc_rdy : OUT STD_LOGIC;
    n_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    n_rsc_triosy_lz : OUT STD_LOGIC;
    out_rsc_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    out_rsc_vld : OUT STD_LOGIC;
    out_rsc_rdy : IN STD_LOGIC
  );
END histogram;

ARCHITECTURE v6 OF histogram IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL n_rsci_idat : STD_LOGIC_VECTOR (31 DOWNTO 0);

  SIGNAL n_rsci_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL n_rsci_idat_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);

  COMPONENT histogram_core
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      feature_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      feature_rsc_vld : IN STD_LOGIC;
      feature_rsc_rdy : OUT STD_LOGIC;
      weight_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      weight_rsc_vld : IN STD_LOGIC;
      weight_rsc_rdy : OUT STD_LOGIC;
      hist_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      hist_rsc_vld : IN STD_LOGIC;
      hist_rsc_rdy : OUT STD_LOGIC;
      n_rsc_triosy_lz : OUT STD_LOGIC;
      out_rsc_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      out_rsc_vld : OUT STD_LOGIC;
      out_rsc_rdy : IN STD_LOGIC;
      n_rsci_idat : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL histogram_core_inst_feature_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL histogram_core_inst_weight_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL histogram_core_inst_hist_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL histogram_core_inst_out_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL histogram_core_inst_n_rsci_idat : STD_LOGIC_VECTOR (31 DOWNTO 0);

BEGIN
  n_rsci : work.ccs_in_pkg_v1.ccs_in_v1
    GENERIC MAP(
      rscid => 4,
      width => 32
      )
    PORT MAP(
      dat => n_rsci_dat,
      idat => n_rsci_idat_1
    );
  n_rsci_dat <= n_rsc_dat;
  n_rsci_idat <= n_rsci_idat_1;

  histogram_core_inst : histogram_core
    PORT MAP(
      clk => clk,
      rst => rst,
      feature_rsc_dat => histogram_core_inst_feature_rsc_dat,
      feature_rsc_vld => feature_rsc_vld,
      feature_rsc_rdy => feature_rsc_rdy,
      weight_rsc_dat => histogram_core_inst_weight_rsc_dat,
      weight_rsc_vld => weight_rsc_vld,
      weight_rsc_rdy => weight_rsc_rdy,
      hist_rsc_dat => histogram_core_inst_hist_rsc_dat,
      hist_rsc_vld => hist_rsc_vld,
      hist_rsc_rdy => hist_rsc_rdy,
      n_rsc_triosy_lz => n_rsc_triosy_lz,
      out_rsc_dat => histogram_core_inst_out_rsc_dat,
      out_rsc_vld => out_rsc_vld,
      out_rsc_rdy => out_rsc_rdy,
      n_rsci_idat => histogram_core_inst_n_rsci_idat
    );
  histogram_core_inst_feature_rsc_dat <= feature_rsc_dat;
  histogram_core_inst_weight_rsc_dat <= weight_rsc_dat;
  histogram_core_inst_hist_rsc_dat <= hist_rsc_dat;
  out_rsc_dat <= histogram_core_inst_out_rsc_dat;
  histogram_core_inst_n_rsci_idat <= n_rsci_idat;

END v6;

-- ------------------------------------------------------------------
--  Design Unit:    main
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_wait_pkg_v1.ALL;
USE work.ccs_out_wait_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;
USE work.mgc_shift_comps_v5.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.ccs_pipe_pkg_v5.ALL;


ENTITY main IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    return_rsc_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    return_rsc_triosy_lz : OUT STD_LOGIC
  );
END main;

ARCHITECTURE v6 OF main IS
  -- Default Constants
  CONSTANT PWR : STD_LOGIC := '1';
  CONSTANT GND : STD_LOGIC := '0';

  -- Interconnect Declarations
  SIGNAL feature_rsc_dat_nhistogram_inst : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL feature_rsc_vld_nhistogram_inst : STD_LOGIC;
  SIGNAL weight_rsc_dat_nhistogram_inst : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL weight_rsc_vld_nhistogram_inst : STD_LOGIC;
  SIGNAL hist_rsc_dat_nhistogram_inst : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL hist_rsc_vld_nhistogram_inst : STD_LOGIC;
  SIGNAL out_rsc_dat_nhistogram_inst : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL out_rsc_rdy_nhistogram_inst : STD_LOGIC;
  SIGNAL return_rsc_dat_nmain_core_inst : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL feature_cns_dat_nmain_core_inst : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL feature_cns_rdy_nmain_core_inst : STD_LOGIC;
  SIGNAL weight_cns_dat_nmain_core_inst : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL weight_cns_rdy_nmain_core_inst : STD_LOGIC;
  SIGNAL hist_cns_dat_nmain_core_inst : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL hist_cns_rdy_nmain_core_inst : STD_LOGIC;
  SIGNAL out_cns_dat_nmain_core_inst : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL out_cns_vld_nmain_core_inst : STD_LOGIC;
  SIGNAL feature_rsc_rdy_nhistogram_inst_bud : STD_LOGIC;
  SIGNAL feature_cns_vld_nmain_core_inst_bud : STD_LOGIC;
  SIGNAL weight_rsc_rdy_nhistogram_inst_bud : STD_LOGIC;
  SIGNAL weight_cns_vld_nmain_core_inst_bud : STD_LOGIC;
  SIGNAL hist_rsc_rdy_nhistogram_inst_bud : STD_LOGIC;
  SIGNAL hist_cns_vld_nmain_core_inst_bud : STD_LOGIC;
  SIGNAL n_rsc_triosy_lz_nhistogram_inst_bud : STD_LOGIC;
  SIGNAL out_rsc_vld_nhistogram_inst_bud : STD_LOGIC;
  SIGNAL out_cns_rdy_nmain_core_inst_bud : STD_LOGIC;
  SIGNAL return_rsc_triosy_lz_nmain_core_inst_bud : STD_LOGIC;
  SIGNAL feature_unc_2 : STD_LOGIC;
  SIGNAL feature_idle : STD_LOGIC;
  SIGNAL weight_unc_2 : STD_LOGIC;
  SIGNAL weight_idle : STD_LOGIC;
  SIGNAL hist_unc_2 : STD_LOGIC;
  SIGNAL hist_idle : STD_LOGIC;
  SIGNAL out_unc_2 : STD_LOGIC;
  SIGNAL out_idle : STD_LOGIC;

  SIGNAL feature_cns_pipe_din : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL feature_cns_pipe_dout : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL feature_cns_pipe_sz : STD_LOGIC_VECTOR (0 DOWNTO 0);

  SIGNAL weight_cns_pipe_din : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL weight_cns_pipe_dout : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL weight_cns_pipe_sz : STD_LOGIC_VECTOR (0 DOWNTO 0);

  SIGNAL hist_cns_pipe_din : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL hist_cns_pipe_dout : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL hist_cns_pipe_sz : STD_LOGIC_VECTOR (0 DOWNTO 0);

  SIGNAL out_cns_pipe_din : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL out_cns_pipe_dout : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL out_cns_pipe_sz : STD_LOGIC_VECTOR (0 DOWNTO 0);

  COMPONENT histogram
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      feature_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      feature_rsc_vld : IN STD_LOGIC;
      feature_rsc_rdy : OUT STD_LOGIC;
      weight_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      weight_rsc_vld : IN STD_LOGIC;
      weight_rsc_rdy : OUT STD_LOGIC;
      hist_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      hist_rsc_vld : IN STD_LOGIC;
      hist_rsc_rdy : OUT STD_LOGIC;
      n_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      n_rsc_triosy_lz : OUT STD_LOGIC;
      out_rsc_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      out_rsc_vld : OUT STD_LOGIC;
      out_rsc_rdy : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL histogram_inst_feature_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL histogram_inst_weight_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL histogram_inst_hist_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL histogram_inst_n_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL histogram_inst_out_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);

  COMPONENT main_core
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      return_rsc_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      return_rsc_triosy_lz : OUT STD_LOGIC;
      feature_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      feature_cns_vld : OUT STD_LOGIC;
      feature_cns_rdy : IN STD_LOGIC;
      weight_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      weight_cns_vld : OUT STD_LOGIC;
      weight_cns_rdy : IN STD_LOGIC;
      hist_cns_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      hist_cns_vld : OUT STD_LOGIC;
      hist_cns_rdy : IN STD_LOGIC;
      out_cns_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      out_cns_vld : IN STD_LOGIC;
      out_cns_rdy : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL main_core_inst_return_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL main_core_inst_feature_cns_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL main_core_inst_weight_cns_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL main_core_inst_hist_cns_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL main_core_inst_out_cns_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);

BEGIN
  feature_cns_pipe : work.ccs_pipe_pkg_v5.ccs_pipe_v5
    GENERIC MAP(
      rscid => 8,
      width => 32,
      sz_width => 1,
      fifo_sz => 100,
      log2_sz => 7,
      ph_clk => 1,
      ph_en => 0,
      ph_arst => 0,
      ph_srst => 1
      )
    PORT MAP(
      clk => clk,
      en => '0',
      arst => '1',
      srst => rst,
      din_rdy => feature_cns_rdy_nmain_core_inst,
      din_vld => feature_cns_vld_nmain_core_inst_bud,
      din => feature_cns_pipe_din,
      dout_rdy => feature_rsc_rdy_nhistogram_inst_bud,
      dout_vld => feature_rsc_vld_nhistogram_inst,
      dout => feature_cns_pipe_dout,
      sz => feature_cns_pipe_sz,
      sz_req => '0',
      is_idle => feature_idle
    );
  feature_cns_pipe_din <= feature_cns_dat_nmain_core_inst;
  feature_rsc_dat_nhistogram_inst <= feature_cns_pipe_dout;
  feature_unc_2 <= feature_cns_pipe_sz(0);

  weight_cns_pipe : work.ccs_pipe_pkg_v5.ccs_pipe_v5
    GENERIC MAP(
      rscid => 9,
      width => 32,
      sz_width => 1,
      fifo_sz => 100,
      log2_sz => 7,
      ph_clk => 1,
      ph_en => 0,
      ph_arst => 0,
      ph_srst => 1
      )
    PORT MAP(
      clk => clk,
      en => '0',
      arst => '1',
      srst => rst,
      din_rdy => weight_cns_rdy_nmain_core_inst,
      din_vld => weight_cns_vld_nmain_core_inst_bud,
      din => weight_cns_pipe_din,
      dout_rdy => weight_rsc_rdy_nhistogram_inst_bud,
      dout_vld => weight_rsc_vld_nhistogram_inst,
      dout => weight_cns_pipe_dout,
      sz => weight_cns_pipe_sz,
      sz_req => '0',
      is_idle => weight_idle
    );
  weight_cns_pipe_din <= weight_cns_dat_nmain_core_inst;
  weight_rsc_dat_nhistogram_inst <= weight_cns_pipe_dout;
  weight_unc_2 <= weight_cns_pipe_sz(0);

  hist_cns_pipe : work.ccs_pipe_pkg_v5.ccs_pipe_v5
    GENERIC MAP(
      rscid => 10,
      width => 32,
      sz_width => 1,
      fifo_sz => 1,
      log2_sz => 0,
      ph_clk => 1,
      ph_en => 0,
      ph_arst => 0,
      ph_srst => 1
      )
    PORT MAP(
      clk => clk,
      en => '0',
      arst => '1',
      srst => rst,
      din_rdy => hist_cns_rdy_nmain_core_inst,
      din_vld => hist_cns_vld_nmain_core_inst_bud,
      din => hist_cns_pipe_din,
      dout_rdy => hist_rsc_rdy_nhistogram_inst_bud,
      dout_vld => hist_rsc_vld_nhistogram_inst,
      dout => hist_cns_pipe_dout,
      sz => hist_cns_pipe_sz,
      sz_req => '0',
      is_idle => hist_idle
    );
  hist_cns_pipe_din <= hist_cns_dat_nmain_core_inst;
  hist_rsc_dat_nhistogram_inst <= hist_cns_pipe_dout;
  hist_unc_2 <= hist_cns_pipe_sz(0);

  out_cns_pipe : work.ccs_pipe_pkg_v5.ccs_pipe_v5
    GENERIC MAP(
      rscid => 11,
      width => 32,
      sz_width => 1,
      fifo_sz => 1,
      log2_sz => 0,
      ph_clk => 1,
      ph_en => 0,
      ph_arst => 0,
      ph_srst => 1
      )
    PORT MAP(
      clk => clk,
      en => '0',
      arst => '1',
      srst => rst,
      din_rdy => out_rsc_rdy_nhistogram_inst,
      din_vld => out_rsc_vld_nhistogram_inst_bud,
      din => out_cns_pipe_din,
      dout_rdy => out_cns_rdy_nmain_core_inst_bud,
      dout_vld => out_cns_vld_nmain_core_inst,
      dout => out_cns_pipe_dout,
      sz => out_cns_pipe_sz,
      sz_req => '0',
      is_idle => out_idle
    );
  out_cns_pipe_din <= out_rsc_dat_nhistogram_inst;
  out_cns_dat_nmain_core_inst <= out_cns_pipe_dout;
  out_unc_2 <= out_cns_pipe_sz(0);

  histogram_inst : histogram
    PORT MAP(
      clk => clk,
      rst => rst,
      feature_rsc_dat => histogram_inst_feature_rsc_dat,
      feature_rsc_vld => feature_rsc_vld_nhistogram_inst,
      feature_rsc_rdy => feature_rsc_rdy_nhistogram_inst_bud,
      weight_rsc_dat => histogram_inst_weight_rsc_dat,
      weight_rsc_vld => weight_rsc_vld_nhistogram_inst,
      weight_rsc_rdy => weight_rsc_rdy_nhistogram_inst_bud,
      hist_rsc_dat => histogram_inst_hist_rsc_dat,
      hist_rsc_vld => hist_rsc_vld_nhistogram_inst,
      hist_rsc_rdy => hist_rsc_rdy_nhistogram_inst_bud,
      n_rsc_dat => histogram_inst_n_rsc_dat,
      n_rsc_triosy_lz => n_rsc_triosy_lz_nhistogram_inst_bud,
      out_rsc_dat => histogram_inst_out_rsc_dat,
      out_rsc_vld => out_rsc_vld_nhistogram_inst_bud,
      out_rsc_rdy => out_rsc_rdy_nhistogram_inst
    );
  histogram_inst_feature_rsc_dat <= feature_rsc_dat_nhistogram_inst;
  histogram_inst_weight_rsc_dat <= weight_rsc_dat_nhistogram_inst;
  histogram_inst_hist_rsc_dat <= hist_rsc_dat_nhistogram_inst;
  histogram_inst_n_rsc_dat <= STD_LOGIC_VECTOR'( "00000000000000000000000001100100");
  out_rsc_dat_nhistogram_inst <= histogram_inst_out_rsc_dat;

  main_core_inst : main_core
    PORT MAP(
      clk => clk,
      rst => rst,
      return_rsc_dat => main_core_inst_return_rsc_dat,
      return_rsc_triosy_lz => return_rsc_triosy_lz_nmain_core_inst_bud,
      feature_cns_dat => main_core_inst_feature_cns_dat,
      feature_cns_vld => feature_cns_vld_nmain_core_inst_bud,
      feature_cns_rdy => feature_cns_rdy_nmain_core_inst,
      weight_cns_dat => main_core_inst_weight_cns_dat,
      weight_cns_vld => weight_cns_vld_nmain_core_inst_bud,
      weight_cns_rdy => weight_cns_rdy_nmain_core_inst,
      hist_cns_dat => main_core_inst_hist_cns_dat,
      hist_cns_vld => hist_cns_vld_nmain_core_inst_bud,
      hist_cns_rdy => hist_cns_rdy_nmain_core_inst,
      out_cns_dat => main_core_inst_out_cns_dat,
      out_cns_vld => out_cns_vld_nmain_core_inst,
      out_cns_rdy => out_cns_rdy_nmain_core_inst_bud
    );
  return_rsc_dat_nmain_core_inst <= main_core_inst_return_rsc_dat;
  feature_cns_dat_nmain_core_inst <= main_core_inst_feature_cns_dat;
  weight_cns_dat_nmain_core_inst <= main_core_inst_weight_cns_dat;
  hist_cns_dat_nmain_core_inst <= main_core_inst_hist_cns_dat;
  main_core_inst_out_cns_dat <= out_cns_dat_nmain_core_inst;

  return_rsc_dat <= return_rsc_dat_nmain_core_inst;
  return_rsc_triosy_lz <= return_rsc_triosy_lz_nmain_core_inst_bud;
END v6;



