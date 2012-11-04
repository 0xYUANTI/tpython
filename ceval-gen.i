void gen_nop(Inst **ctp)
{
  gen_inst(ctp, vm_prim[0]);
}
void gen_load_fast(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[1]);
  genarg_i(ctp, i);
}
void gen_load_const(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[2]);
  genarg_i(ctp, i);
}
void gen_store_fast(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[3]);
  genarg_i(ctp, i);
}
void gen_pop_top(Inst **ctp)
{
  gen_inst(ctp, vm_prim[4]);
}
void gen_rot_two(Inst **ctp)
{
  gen_inst(ctp, vm_prim[5]);
}
void gen_rot_three(Inst **ctp)
{
  gen_inst(ctp, vm_prim[6]);
}
void gen_rot_four(Inst **ctp)
{
  gen_inst(ctp, vm_prim[7]);
}
void gen_dup_top(Inst **ctp)
{
  gen_inst(ctp, vm_prim[8]);
}
void gen_dup_top_two(Inst **ctp)
{
  gen_inst(ctp, vm_prim[9]);
}
void gen_dup_top_three(Inst **ctp)
{
  gen_inst(ctp, vm_prim[10]);
}
void gen_unary_positive(Inst **ctp)
{
  gen_inst(ctp, vm_prim[11]);
}
void gen_unary_negative(Inst **ctp)
{
  gen_inst(ctp, vm_prim[12]);
}
void gen_unary_not(Inst **ctp)
{
  gen_inst(ctp, vm_prim[13]);
}
void gen_unary_convert(Inst **ctp)
{
  gen_inst(ctp, vm_prim[14]);
}
void gen_unary_invert(Inst **ctp)
{
  gen_inst(ctp, vm_prim[15]);
}
void gen_binary_power(Inst **ctp)
{
  gen_inst(ctp, vm_prim[16]);
}
void gen_binary_multiply(Inst **ctp)
{
  gen_inst(ctp, vm_prim[17]);
}
void gen_binary_divide(Inst **ctp)
{
  gen_inst(ctp, vm_prim[18]);
}
void gen_binary_true_divide(Inst **ctp)
{
  gen_inst(ctp, vm_prim[19]);
}
void gen_binary_floor_divide(Inst **ctp)
{
  gen_inst(ctp, vm_prim[20]);
}
void gen_binary_modulo(Inst **ctp)
{
  gen_inst(ctp, vm_prim[21]);
}
void gen_binary_add(Inst **ctp)
{
  gen_inst(ctp, vm_prim[22]);
}
void gen_binary_subtract(Inst **ctp)
{
  gen_inst(ctp, vm_prim[23]);
}
void gen_binary_subscr(Inst **ctp)
{
  gen_inst(ctp, vm_prim[24]);
}
void gen_binary_lshift(Inst **ctp)
{
  gen_inst(ctp, vm_prim[25]);
}
void gen_binary_rshift(Inst **ctp)
{
  gen_inst(ctp, vm_prim[26]);
}
void gen_binary_and(Inst **ctp)
{
  gen_inst(ctp, vm_prim[27]);
}
void gen_binary_xor(Inst **ctp)
{
  gen_inst(ctp, vm_prim[28]);
}
void gen_binary_or(Inst **ctp)
{
  gen_inst(ctp, vm_prim[29]);
}
void gen_list_append(Inst **ctp)
{
  gen_inst(ctp, vm_prim[30]);
}
void gen_inplace_power(Inst **ctp)
{
  gen_inst(ctp, vm_prim[31]);
}
void gen_inplace_multiply(Inst **ctp)
{
  gen_inst(ctp, vm_prim[32]);
}
void gen_inplace_divide(Inst **ctp)
{
  gen_inst(ctp, vm_prim[33]);
}
void gen_inplace_true_divide(Inst **ctp)
{
  gen_inst(ctp, vm_prim[34]);
}
void gen_inplace_floor_divide(Inst **ctp)
{
  gen_inst(ctp, vm_prim[35]);
}
void gen_inplace_modulo(Inst **ctp)
{
  gen_inst(ctp, vm_prim[36]);
}
void gen_inplace_add(Inst **ctp)
{
  gen_inst(ctp, vm_prim[37]);
}
void gen_inplace_subtract(Inst **ctp)
{
  gen_inst(ctp, vm_prim[38]);
}
void gen_inplace_lshift(Inst **ctp)
{
  gen_inst(ctp, vm_prim[39]);
}
void gen_inplace_rshift(Inst **ctp)
{
  gen_inst(ctp, vm_prim[40]);
}
void gen_inplace_and(Inst **ctp)
{
  gen_inst(ctp, vm_prim[41]);
}
void gen_inplace_xor(Inst **ctp)
{
  gen_inst(ctp, vm_prim[42]);
}
void gen_inplace_or(Inst **ctp)
{
  gen_inst(ctp, vm_prim[43]);
}
void gen_slice_none(Inst **ctp)
{
  gen_inst(ctp, vm_prim[44]);
}
void gen_slice_left(Inst **ctp)
{
  gen_inst(ctp, vm_prim[45]);
}
void gen_slice_right(Inst **ctp)
{
  gen_inst(ctp, vm_prim[46]);
}
void gen_slice_both(Inst **ctp)
{
  gen_inst(ctp, vm_prim[47]);
}
void gen_store_slice_none(Inst **ctp)
{
  gen_inst(ctp, vm_prim[48]);
}
void gen_store_slice_left(Inst **ctp)
{
  gen_inst(ctp, vm_prim[49]);
}
void gen_store_slice_right(Inst **ctp)
{
  gen_inst(ctp, vm_prim[50]);
}
void gen_store_slice_both(Inst **ctp)
{
  gen_inst(ctp, vm_prim[51]);
}
void gen_delete_slice_none(Inst **ctp)
{
  gen_inst(ctp, vm_prim[52]);
}
void gen_delete_slice_left(Inst **ctp)
{
  gen_inst(ctp, vm_prim[53]);
}
void gen_delete_slice_right(Inst **ctp)
{
  gen_inst(ctp, vm_prim[54]);
}
void gen_delete_slice_both(Inst **ctp)
{
  gen_inst(ctp, vm_prim[55]);
}
void gen_store_subscr(Inst **ctp)
{
  gen_inst(ctp, vm_prim[56]);
}
void gen_delete_subscr(Inst **ctp)
{
  gen_inst(ctp, vm_prim[57]);
}
void gen_print_expr(Inst **ctp)
{
  gen_inst(ctp, vm_prim[58]);
}
void gen_print_item_to(Inst **ctp)
{
  gen_inst(ctp, vm_prim[59]);
}
void gen_print_item(Inst **ctp)
{
  gen_inst(ctp, vm_prim[60]);
}
void gen_print_newline(Inst **ctp)
{
  gen_inst(ctp, vm_prim[61]);
}
void gen_raise_varargs_zero(Inst **ctp)
{
  gen_inst(ctp, vm_prim[62]);
}
void gen_raise_varargs_one(Inst **ctp)
{
  gen_inst(ctp, vm_prim[63]);
}
void gen_raise_varargs_two(Inst **ctp)
{
  gen_inst(ctp, vm_prim[64]);
}
void gen_raise_varargs_three(Inst **ctp)
{
  gen_inst(ctp, vm_prim[65]);
}
void gen_load_locals(Inst **ctp)
{
  gen_inst(ctp, vm_prim[66]);
}
void gen_load_name(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[67]);
  genarg_i(ctp, i);
}
void gen_load_global(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[68]);
  genarg_i(ctp, i);
}
void gen_load_closure(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[69]);
  genarg_i(ctp, i);
}
void gen_load_deref(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[70]);
  genarg_i(ctp, i);
}
void gen_load_attr(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[71]);
  genarg_i(ctp, i);
}
void gen_return_value(Inst **ctp)
{
  gen_inst(ctp, vm_prim[72]);
}
void gen_yield_value(Inst **ctp)
{
  gen_inst(ctp, vm_prim[73]);
}
void gen_exec_stmt(Inst **ctp)
{
  gen_inst(ctp, vm_prim[74]);
}
void gen_pop_block(Inst **ctp)
{
  gen_inst(ctp, vm_prim[75]);
}
void gen_end_finally(Inst **ctp)
{
  gen_inst(ctp, vm_prim[76]);
}
void gen_build_class(Inst **ctp)
{
  gen_inst(ctp, vm_prim[77]);
}
void gen_build_tuple(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[78]);
  genarg_i(ctp, i);
}
void gen_build_list(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[79]);
  genarg_i(ctp, i);
}
void gen_build_map(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[80]);
  genarg_i(ctp, i);
}
void gen_build_slice_two(Inst **ctp)
{
  gen_inst(ctp, vm_prim[81]);
}
void gen_build_slice_three(Inst **ctp)
{
  gen_inst(ctp, vm_prim[82]);
}
void gen_store_name(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[83]);
  genarg_i(ctp, i);
}
void gen_store_attr(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[84]);
  genarg_i(ctp, i);
}
void gen_store_global(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[85]);
  genarg_i(ctp, i);
}
void gen_store_deref(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[86]);
  genarg_i(ctp, i);
}
void gen_delete_name(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[87]);
  genarg_i(ctp, i);
}
void gen_delete_attr(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[88]);
  genarg_i(ctp, i);
}
void gen_delete_global(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[89]);
  genarg_i(ctp, i);
}
void gen_delete_fast(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[90]);
  genarg_i(ctp, i);
}
void gen_unpack_sequence(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[91]);
  genarg_i(ctp, i);
}
void gen_compare_op(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[92]);
  genarg_i(ctp, i);
}
void gen_import_name(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[93]);
  genarg_i(ctp, i);
}
void gen_import_star(Inst **ctp)
{
  gen_inst(ctp, vm_prim[94]);
}
void gen_import_from(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[95]);
  genarg_i(ctp, i);
}
void gen_jump_forward(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[96]);
  genarg_i(ctp, i);
}
void gen_jump_if_false(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[97]);
  genarg_i(ctp, i);
}
void gen_jump_if_true(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[98]);
  genarg_i(ctp, i);
}
void gen_jump_absolute(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[99]);
  genarg_i(ctp, i);
}
void gen_get_iter(Inst **ctp)
{
  gen_inst(ctp, vm_prim[100]);
}
void gen_for_iter(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[101]);
  genarg_i(ctp, i);
}
void gen_break_loop(Inst **ctp)
{
  gen_inst(ctp, vm_prim[102]);
}
void gen_continue_loop(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[103]);
  genarg_i(ctp, i);
}
void gen_setup_loop(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[104]);
  genarg_i(ctp, i);
}
void gen_setup_except(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[105]);
  genarg_i(ctp, i);
}
void gen_setup_finally(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[106]);
  genarg_i(ctp, i);
}
void gen_with_cleanup(Inst **ctp)
{
  gen_inst(ctp, vm_prim[107]);
}
void gen_call_function(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[108]);
  genarg_i(ctp, i);
}
void gen_call_function_var_kw(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[109]);
  genarg_i(ctp, i);
}
void gen_make_function(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[110]);
  genarg_i(ctp, i);
}
void gen_make_closure(Inst **ctp, Oparg i)
{
  gen_inst(ctp, vm_prim[111]);
  genarg_i(ctp, i);
}
