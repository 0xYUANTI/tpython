if (VM_IS_INST(*ip, 0)) {
  fputs("nop", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 1)) {
  fputs("load_fast", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397760 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 2)) {
  fputs("load_const", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397761 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 3)) {
  fputs("store_fast", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397762 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 4)) {
  fputs("pop_top", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 5)) {
  fputs("rot_two", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 6)) {
  fputs("rot_three", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 7)) {
  fputs("rot_four", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 8)) {
  fputs("dup_top", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 9)) {
  fputs("dup_top_two", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 10)) {
  fputs("dup_top_three", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 11)) {
  fputs("unary_positive", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 12)) {
  fputs("unary_negative", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 13)) {
  fputs("unary_not", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 14)) {
  fputs("unary_convert", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 15)) {
  fputs("unary_invert", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 16)) {
  fputs("binary_power", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 17)) {
  fputs("binary_multiply", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 18)) {
  fputs("binary_divide", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 19)) {
  fputs("binary_true_divide", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 20)) {
  fputs("binary_floor_divide", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 21)) {
  fputs("binary_modulo", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 22)) {
  fputs("binary_add", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 23)) {
  fputs("binary_subtract", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 24)) {
  fputs("binary_subscr", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 25)) {
  fputs("binary_lshift", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 26)) {
  fputs("binary_rshift", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 27)) {
  fputs("binary_and", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 28)) {
  fputs("binary_xor", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 29)) {
  fputs("binary_or", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 30)) {
  fputs("list_append", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 31)) {
  fputs("inplace_power", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 32)) {
  fputs("inplace_multiply", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 33)) {
  fputs("inplace_divide", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 34)) {
  fputs("inplace_true_divide", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 35)) {
  fputs("inplace_floor_divide", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 36)) {
  fputs("inplace_modulo", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 37)) {
  fputs("inplace_add", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 38)) {
  fputs("inplace_subtract", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 39)) {
  fputs("inplace_lshift", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 40)) {
  fputs("inplace_rshift", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 41)) {
  fputs("inplace_and", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 42)) {
  fputs("inplace_xor", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 43)) {
  fputs("inplace_or", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 44)) {
  fputs("slice_none", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 45)) {
  fputs("slice_left", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 46)) {
  fputs("slice_right", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 47)) {
  fputs("slice_both", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 48)) {
  fputs("store_slice_none", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 49)) {
  fputs("store_slice_left", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 50)) {
  fputs("store_slice_right", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 51)) {
  fputs("store_slice_both", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 52)) {
  fputs("delete_slice_none", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 53)) {
  fputs("delete_slice_left", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 54)) {
  fputs("delete_slice_right", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 55)) {
  fputs("delete_slice_both", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 56)) {
  fputs("store_subscr", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 57)) {
  fputs("delete_subscr", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 58)) {
  fputs("print_expr", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 59)) {
  fputs("print_item_to", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 60)) {
  fputs("print_item", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 61)) {
  fputs("print_newline", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 62)) {
  fputs("raise_varargs_zero", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 63)) {
  fputs("raise_varargs_one", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 64)) {
  fputs("raise_varargs_two", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 65)) {
  fputs("raise_varargs_three", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 66)) {
  fputs("load_locals", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 67)) {
  fputs("load_name", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397763 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 68)) {
  fputs("load_global", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397764 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 69)) {
  fputs("load_closure", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397765 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 70)) {
  fputs("load_deref", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397766 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 71)) {
  fputs("load_attr", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397767 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 72)) {
  fputs("return_value", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 73)) {
  fputs("yield_value", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 74)) {
  fputs("exec_stmt", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 75)) {
  fputs("pop_block", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 76)) {
  fputs("end_finally", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 77)) {
  fputs("build_class", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 78)) {
  fputs("build_tuple", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397768 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 79)) {
  fputs("build_list", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397769 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 80)) {
  fputs("build_map", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397770 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 81)) {
  fputs("build_slice_two", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 82)) {
  fputs("build_slice_three", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 83)) {
  fputs("store_name", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397771 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 84)) {
  fputs("store_attr", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397772 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 85)) {
  fputs("store_global", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397773 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 86)) {
  fputs("store_deref", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397774 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 87)) {
  fputs("delete_name", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397775 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 88)) {
  fputs("delete_attr", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397776 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 89)) {
  fputs("delete_global", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397777 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 90)) {
  fputs("delete_fast", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397778 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 91)) {
  fputs("unpack_sequence", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397779 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 92)) {
  fputs("compare_op", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397780 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 93)) {
  fputs("import_name", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397781 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 94)) {
  fputs("import_star", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 95)) {
  fputs("import_from", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397782 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 96)) {
  fputs("jump_forward", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397783 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 97)) {
  fputs("jump_if_false", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397784 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 98)) {
  fputs("jump_if_true", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397785 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 99)) {
  fputs("jump_absolute", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397786 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 100)) {
  fputs("get_iter", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 101)) {
  fputs("for_iter", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397787 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 102)) {
  fputs("break_loop", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 103)) {
  fputs("continue_loop", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397788 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 104)) {
  fputs("setup_loop", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397789 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 105)) {
  fputs("setup_except", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397790 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 106)) {
  fputs("setup_finally", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397791 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 107)) {
  fputs("with_cleanup", vm_out);
  ip += 1;
  goto _endif_;
}
if (VM_IS_INST(*ip, 108)) {
  fputs("call_function", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397792 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 109)) {
  fputs("call_function_var_kw", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397793 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 110)) {
  fputs("make_function", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397794 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 111)) {
  fputs("make_closure", vm_out);
{
Oparg i;
vm_Cell2i(IMM_ARG(IPTOS,305397795 ),i);
fputs(" i=", vm_out); printarg_i(i);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 112)) {
  fputs("ff", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397796 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397797 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 113)) {
  fputs("fc", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397798 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397799 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 114)) {
  fputs("cf", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397800 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397801 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 115)) {
  fputs("cc", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397802 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397803 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 116)) {
  fputs("ffbinary_power", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397804 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397805 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 117)) {
  fputs("fcbinary_power", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397806 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397807 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 118)) {
  fputs("cfbinary_power", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397808 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397809 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 119)) {
  fputs("ccbinary_power", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397810 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397811 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 120)) {
  fputs("ffbinary_multiply", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397812 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397813 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 121)) {
  fputs("fcbinary_multiply", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397814 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397815 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 122)) {
  fputs("cfbinary_multiply", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397816 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397817 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 123)) {
  fputs("ccbinary_multiply", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397818 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397819 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 124)) {
  fputs("ffbinary_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397820 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397821 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 125)) {
  fputs("fcbinary_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397822 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397823 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 126)) {
  fputs("cfbinary_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397824 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397825 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 127)) {
  fputs("ccbinary_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397826 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397827 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 128)) {
  fputs("ffbinary_true_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397828 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397829 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 129)) {
  fputs("fcbinary_true_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397830 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397831 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 130)) {
  fputs("cfbinary_true_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397832 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397833 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 131)) {
  fputs("ccbinary_true_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397834 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397835 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 132)) {
  fputs("ffbinary_floor_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397836 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397837 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 133)) {
  fputs("fcbinary_floor_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397838 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397839 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 134)) {
  fputs("cfbinary_floor_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397840 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397841 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 135)) {
  fputs("ccbinary_floor_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397842 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397843 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 136)) {
  fputs("ffbinary_modulo", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397844 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397845 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 137)) {
  fputs("fcbinary_modulo", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397846 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397847 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 138)) {
  fputs("cfbinary_modulo", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397848 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397849 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 139)) {
  fputs("ccbinary_modulo", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397850 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397851 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 140)) {
  fputs("ffbinary_add", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397852 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397853 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 141)) {
  fputs("fcbinary_add", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397854 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397855 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 142)) {
  fputs("cfbinary_add", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397856 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397857 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 143)) {
  fputs("ccbinary_add", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397858 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397859 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 144)) {
  fputs("ffbinary_subtract", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397860 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397861 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 145)) {
  fputs("fcbinary_subtract", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397862 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397863 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 146)) {
  fputs("cfbinary_subtract", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397864 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397865 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 147)) {
  fputs("ccbinary_subtract", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397866 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397867 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 148)) {
  fputs("ffbinary_subscr", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397868 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397869 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 149)) {
  fputs("fcbinary_subscr", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397870 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397871 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 150)) {
  fputs("cfbinary_subscr", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397872 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397873 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 151)) {
  fputs("ccbinary_subscr", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397874 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397875 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 152)) {
  fputs("ffbinary_lshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397876 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397877 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 153)) {
  fputs("fcbinary_lshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397878 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397879 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 154)) {
  fputs("cfbinary_lshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397880 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397881 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 155)) {
  fputs("ccbinary_lshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397882 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397883 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 156)) {
  fputs("ffbinary_rshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397884 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397885 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 157)) {
  fputs("fcbinary_rshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397886 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397887 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 158)) {
  fputs("cfbinary_rshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397888 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397889 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 159)) {
  fputs("ccbinary_rshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397890 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397891 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 160)) {
  fputs("ffbinary_and", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397892 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397893 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 161)) {
  fputs("fcbinary_and", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397894 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397895 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 162)) {
  fputs("cfbinary_and", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397896 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397897 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 163)) {
  fputs("ccbinary_and", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397898 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397899 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 164)) {
  fputs("ffbinary_xor", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397900 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397901 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 165)) {
  fputs("fcbinary_xor", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397902 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397903 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 166)) {
  fputs("cfbinary_xor", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397904 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397905 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 167)) {
  fputs("ccbinary_xor", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397906 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397907 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 168)) {
  fputs("ffbinary_or", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397908 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397909 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 169)) {
  fputs("fcbinary_or", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397910 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397911 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 170)) {
  fputs("cfbinary_or", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397912 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397913 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 171)) {
  fputs("ccbinary_or", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397914 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397915 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 172)) {
  fputs("fflist_append", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397916 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397917 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 173)) {
  fputs("fclist_append", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397918 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397919 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 174)) {
  fputs("cflist_append", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397920 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397921 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 175)) {
  fputs("cclist_append", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397922 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397923 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 176)) {
  fputs("ffinplace_power", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397924 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397925 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 177)) {
  fputs("fcinplace_power", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397926 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397927 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 178)) {
  fputs("cfinplace_power", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397928 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397929 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 179)) {
  fputs("ccinplace_power", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397930 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397931 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 180)) {
  fputs("ffinplace_multiply", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397932 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397933 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 181)) {
  fputs("fcinplace_multiply", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397934 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397935 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 182)) {
  fputs("cfinplace_multiply", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397936 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397937 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 183)) {
  fputs("ccinplace_multiply", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397938 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397939 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 184)) {
  fputs("ffinplace_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397940 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397941 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 185)) {
  fputs("fcinplace_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397942 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397943 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 186)) {
  fputs("cfinplace_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397944 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397945 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 187)) {
  fputs("ccinplace_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397946 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397947 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 188)) {
  fputs("ffinplace_true_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397948 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397949 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 189)) {
  fputs("fcinplace_true_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397950 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397951 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 190)) {
  fputs("cfinplace_true_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397952 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397953 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 191)) {
  fputs("ccinplace_true_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397954 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397955 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 192)) {
  fputs("ffinplace_floor_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397956 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397957 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 193)) {
  fputs("fcinplace_floor_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397958 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397959 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 194)) {
  fputs("cfinplace_floor_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397960 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397961 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 195)) {
  fputs("ccinplace_floor_divide", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397962 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397963 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 196)) {
  fputs("ffinplace_modulo", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397964 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397965 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 197)) {
  fputs("fcinplace_modulo", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397966 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397967 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 198)) {
  fputs("cfinplace_modulo", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397968 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397969 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 199)) {
  fputs("ccinplace_modulo", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397970 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397971 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 200)) {
  fputs("ffinplace_add", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397972 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397973 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 201)) {
  fputs("fcinplace_add", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397974 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397975 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 202)) {
  fputs("cfinplace_add", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397976 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397977 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 203)) {
  fputs("ccinplace_add", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397978 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397979 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 204)) {
  fputs("ffinplace_subtract", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397980 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397981 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 205)) {
  fputs("fcinplace_subtract", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397982 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397983 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 206)) {
  fputs("cfinplace_subtract", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397984 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397985 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 207)) {
  fputs("ccinplace_subtract", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397986 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397987 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 208)) {
  fputs("ffinplace_lshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397988 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397989 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 209)) {
  fputs("fcinplace_lshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397990 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397991 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 210)) {
  fputs("cfinplace_lshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397992 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397993 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 211)) {
  fputs("ccinplace_lshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397994 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397995 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 212)) {
  fputs("ffinplace_rshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397996 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397997 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 213)) {
  fputs("fcinplace_rshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305397998 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305397999 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 214)) {
  fputs("cfinplace_rshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398000 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398001 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 215)) {
  fputs("ccinplace_rshift", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398002 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398003 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 216)) {
  fputs("ffinplace_and", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398004 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398005 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 217)) {
  fputs("fcinplace_and", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398006 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398007 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 218)) {
  fputs("cfinplace_and", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398008 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398009 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 219)) {
  fputs("ccinplace_and", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398010 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398011 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 220)) {
  fputs("ffinplace_xor", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398012 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398013 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 221)) {
  fputs("fcinplace_xor", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398014 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398015 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 222)) {
  fputs("cfinplace_xor", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398016 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398017 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 223)) {
  fputs("ccinplace_xor", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398018 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398019 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 224)) {
  fputs("ffinplace_or", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398020 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398021 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 225)) {
  fputs("fcinplace_or", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398022 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398023 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 226)) {
  fputs("cfinplace_or", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398024 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398025 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 227)) {
  fputs("ccinplace_or", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398026 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398027 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 228)) {
  fputs("ffslice_left", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398028 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398029 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 229)) {
  fputs("fcslice_left", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398030 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398031 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 230)) {
  fputs("cfslice_left", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398032 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398033 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 231)) {
  fputs("ccslice_left", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398034 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398035 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 232)) {
  fputs("ffslice_right", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398036 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398037 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 233)) {
  fputs("fcslice_right", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398038 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398039 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 234)) {
  fputs("cfslice_right", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398040 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398041 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 235)) {
  fputs("ccslice_right", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398042 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398043 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 236)) {
  fputs("ffdelete_slice_left", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398044 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398045 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 237)) {
  fputs("fcdelete_slice_left", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398046 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398047 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 238)) {
  fputs("cfdelete_slice_left", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398048 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398049 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 239)) {
  fputs("ccdelete_slice_left", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398050 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398051 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 240)) {
  fputs("ffdelete_slice_right", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398052 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398053 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 241)) {
  fputs("fcdelete_slice_right", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398054 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398055 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 242)) {
  fputs("cfdelete_slice_right", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398056 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398057 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 243)) {
  fputs("ccdelete_slice_right", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398058 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398059 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 244)) {
  fputs("ffdelete_subscr", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398060 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398061 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 245)) {
  fputs("fcdelete_subscr", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398062 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398063 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 246)) {
  fputs("cfdelete_subscr", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398064 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398065 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 247)) {
  fputs("ccdelete_subscr", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398066 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398067 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
  ip += 3;
  goto _endif_;
}
if (VM_IS_INST(*ip, 248)) {
  fputs("ffstore_attr", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398068 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398069 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
{
Cell _IP2;
vm_Cell2Cell(IMM_ARG(IP[2],305398070 ),_IP2);
fputs(" _IP2=", vm_out); printarg_Cell(_IP2);
}
  ip += 4;
  goto _endif_;
}
if (VM_IS_INST(*ip, 249)) {
  fputs("fcstore_attr", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398071 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398072 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
{
Cell _IP2;
vm_Cell2Cell(IMM_ARG(IP[2],305398073 ),_IP2);
fputs(" _IP2=", vm_out); printarg_Cell(_IP2);
}
  ip += 4;
  goto _endif_;
}
if (VM_IS_INST(*ip, 250)) {
  fputs("cfstore_attr", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398074 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398075 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
{
Cell _IP2;
vm_Cell2Cell(IMM_ARG(IP[2],305398076 ),_IP2);
fputs(" _IP2=", vm_out); printarg_Cell(_IP2);
}
  ip += 4;
  goto _endif_;
}
if (VM_IS_INST(*ip, 251)) {
  fputs("ccstore_attr", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398077 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398078 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
{
Cell _IP2;
vm_Cell2Cell(IMM_ARG(IP[2],305398079 ),_IP2);
fputs(" _IP2=", vm_out); printarg_Cell(_IP2);
}
  ip += 4;
  goto _endif_;
}
if (VM_IS_INST(*ip, 252)) {
  fputs("ffcompare_op", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398080 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398081 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
{
Cell _IP2;
vm_Cell2Cell(IMM_ARG(IP[2],305398082 ),_IP2);
fputs(" _IP2=", vm_out); printarg_Cell(_IP2);
}
  ip += 4;
  goto _endif_;
}
if (VM_IS_INST(*ip, 253)) {
  fputs("fccompare_op", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398083 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398084 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
{
Cell _IP2;
vm_Cell2Cell(IMM_ARG(IP[2],305398085 ),_IP2);
fputs(" _IP2=", vm_out); printarg_Cell(_IP2);
}
  ip += 4;
  goto _endif_;
}
if (VM_IS_INST(*ip, 254)) {
  fputs("cfcompare_op", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398086 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398087 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
{
Cell _IP2;
vm_Cell2Cell(IMM_ARG(IP[2],305398088 ),_IP2);
fputs(" _IP2=", vm_out); printarg_Cell(_IP2);
}
  ip += 4;
  goto _endif_;
}
if (VM_IS_INST(*ip, 255)) {
  fputs("cccompare_op", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398089 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
{
Cell _IP1;
vm_Cell2Cell(IMM_ARG(IP[1],305398090 ),_IP1);
fputs(" _IP1=", vm_out); printarg_Cell(_IP1);
}
{
Cell _IP2;
vm_Cell2Cell(IMM_ARG(IP[2],305398091 ),_IP2);
fputs(" _IP2=", vm_out); printarg_Cell(_IP2);
}
  ip += 4;
  goto _endif_;
}
if (VM_IS_INST(*ip, 256)) {
  fputs("funary_positive", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398092 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 257)) {
  fputs("funary_negative", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398093 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 258)) {
  fputs("funary_convert", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398094 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
  ip += 2;
  goto _endif_;
}
if (VM_IS_INST(*ip, 259)) {
  fputs("funary_invert", vm_out);
{
Cell _IP0;
vm_Cell2Cell(IMM_ARG(IPTOS,305398095 ),_IP0);
fputs(" _IP0=", vm_out); printarg_Cell(_IP0);
}
  ip += 2;
  goto _endif_;
}
