(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Postiats - Unleashing the Potential of Types!
** Copyright (C) 2011-20?? Hongwei Xi, ATS Trustful Software, Inc.
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of  the GNU GENERAL PUBLIC LICENSE (GPL) as published by the
** Free Software Foundation; either version 3, or (at  your  option)  any
** later version.
** 
** ATS is distributed in the hope that it will be useful, but WITHOUT ANY
** WARRANTY; without  even  the  implied  warranty  of MERCHANTABILITY or
** FITNESS FOR A PARTICULAR PURPOSE.  See the  GNU General Public License
** for more details.
** 
** You  should  have  received  a  copy of the GNU General Public License
** along  with  ATS;  see the  file COPYING.  If not, please write to the
** Free Software Foundation,  51 Franklin Street, Fifth Floor, Boston, MA
** 02110-1301, USA.
*)

(* ****** ****** *)
//
// Author: Hongwei Xi (hwxi AT cs DOT bu DOT edu)
// Start Time: May, 2011
//
(* ****** ****** *)

staload "pats_staexp2.sats"
staload "pats_staexp2_util.sats"

(* ****** ****** *)

abstype s2cstref_type // boxed type
typedef s2cstref = s2cstref_type

fun s2cstref_make (name: string): s2cstref

fun s2cstref_get_cst (r: s2cstref): s2cst
fun s2cstref_get_exp (r: s2cstref, arg: Option_vt s2explst): s2exp
fun s2cstref_unget_exp (r: s2cstref, s2e: s2exp): Option_vt (s2explst)
fun s2cstref_equ_cst (r: s2cstref, s2c: s2cst): bool
fun s2cstref_equ_exp (r: s2cstref, s2e: s2exp): bool

(* ****** ****** *)
//
val the_true_bool : s2cstref
val the_false_bool : s2cstref
//
val the_bool_t0ype : s2cstref
val the_bool_bool_t0ype : s2cstref
//
val the_int_kind : s2cstref
val the_lint_kind : s2cstref
val the_llint_kind : s2cstref
val the_size_kind : s2cstref
val the_g0int_t0ype : s2cstref
val the_g1int_int_t0ype : s2cstref
val the_g0uint_t0ype : s2cstref
val the_g1uint_int_t0ype : s2cstref
//
val the_char_t0ype : s2cstref
val the_char_char_t0ype : s2cstref
//
val the_string_type : s2cstref
val the_string_int_type : s2cstref
//
val the_float_kind : s2cstref
val the_double_kind : s2cstref
val the_ldouble_kind : s2cstref
val the_g0float_t0ype : s2cstref
//
val the_void_t0ype : s2cstref
//
val the_exception_viewtype : s2cstref
//
val the_list0_t0ype_type : s2cstref
val the_list_t0ype_int_type : s2cstref
val the_list_viewt0ype_int_viewtype : s2cstref
//
val the_at_viewt0ype_addr_view: s2cstref
//
val the_sizeof_viewt0ype_int: s2cstref
//
val the_invar_t0ype_t0ype: s2cstref
val the_invar_viewt0ype_viewt0ype: s2cstref
//
(* ****** ****** *)
//
fun s2exp_bool
  (b: bool): s2exp (* static boolean terms *)
// end of [s2exp_bool]
//
fun s2exp_bool_t0ype (): s2exp // bool0
fun s2exp_bool_bool_t0ype (b: bool): s2exp // bool1(b)
//
(* ****** ****** *)
//
fun s2exp_int_t0ype (): s2exp // int0
fun s2exp_uint_t0ype (): s2exp // uint0
fun s2exp_lint_t0ype (): s2exp // int0
fun s2exp_ulint_t0ype (): s2exp // uint0
fun s2exp_llint_t0ype (): s2exp // lint0
fun s2exp_ullint_t0ype (): s2exp // ulint0
//
fun s2exp_int_intinf_t0ype (inf: intinf): s2exp // int1(i)
fun s2exp_uint_intinf_t0ype (inf: intinf): s2exp // uint1(i)
fun s2exp_lint_intinf_t0ype (inf: intinf): s2exp // lint1(i)
fun s2exp_ulint_intinf_t0ype (inf: intinf): s2exp // ulint1(i)
fun s2exp_llint_intinf_t0ype (inf: intinf): s2exp // llint1(i)
fun s2exp_ullint_intinf_t0ype (inf: intinf): s2exp // ullint1(i)
//
(* ****** ****** *)

fun s2exp_char_t0ype (): s2exp // char0
fun s2exp_char_char_t0ype (c: char): s2exp // char1(c)

(* ****** ****** *)
//
fun s2exp_string_type (): s2exp // string0
fun s2exp_string_int_type (n: size_t): s2exp // string1
//
(* ****** ****** *)
//
fun s2exp_float_t0ype (): s2exp // float
fun s2exp_double_t0ype (): s2exp // double
fun s2exp_ldouble_t0ype (): s2exp // ldouble
//
(* ****** ****** *)

fun s2exp_void_t0ype (): s2exp // void

(* ****** ****** *)
//
fun s2exp_list0_t0ype_type (s2e: s2exp): s2exp
//
fun s2exp_list_t0ype_int_type (s2e: s2exp, n: int): s2exp
fun s2exp_list_viewt0ype_int_viewtype (s2e: s2exp, n: int): s2exp
//
(* ****** ****** *)

fun stacst2_initialize (): void

(* ****** ****** *)

(* end of [pats_stacst2.sats] *)
