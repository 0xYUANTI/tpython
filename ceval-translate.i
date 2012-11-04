case POP_TOP:
        gen_pop_top(ctp);
        break;
case ROT_TWO:
        gen_rot_two(ctp);
        break;
case ROT_THREE:
        gen_rot_three(ctp);
        break;
case DUP_TOP:
        gen_dup_top(ctp);
        break;
case ROT_FOUR:
        gen_rot_four(ctp);
        break;
case NOP:
        gen_nop(ctp);
        break;
case UNARY_POSITIVE:
        gen_unary_positive(ctp);
        break;
case UNARY_NEGATIVE:
        gen_unary_negative(ctp);
        break;
case UNARY_NOT:
        gen_unary_not(ctp);
        break;
case UNARY_CONVERT:
        gen_unary_convert(ctp);
        break;
case UNARY_INVERT:
        gen_unary_invert(ctp);
        break;
case LIST_APPEND:
        gen_list_append(ctp);
        break;
case BINARY_POWER:
        gen_binary_power(ctp);
        break;
case BINARY_MULTIPLY:
        gen_binary_multiply(ctp);
        break;
case BINARY_MODULO:
        gen_binary_modulo(ctp);
        break;
case BINARY_ADD:
        gen_binary_add(ctp);
        break;
case BINARY_SUBTRACT:
        gen_binary_subtract(ctp);
        break;
case BINARY_SUBSCR:
        gen_binary_subscr(ctp);
        break;
case BINARY_FLOOR_DIVIDE:
        gen_binary_floor_divide(ctp);
        break;
case BINARY_TRUE_DIVIDE:
        gen_binary_true_divide(ctp);
        break;
case INPLACE_FLOOR_DIVIDE:
        gen_inplace_floor_divide(ctp);
        break;
case INPLACE_TRUE_DIVIDE:
        gen_inplace_true_divide(ctp);
        break;
case INPLACE_ADD:
        gen_inplace_add(ctp);
        break;
case INPLACE_SUBTRACT:
        gen_inplace_subtract(ctp);
        break;
case INPLACE_MULTIPLY:
        gen_inplace_multiply(ctp);
        break;
case INPLACE_MODULO:
        gen_inplace_modulo(ctp);
        break;
case STORE_SUBSCR:
        gen_store_subscr(ctp);
        break;
case DELETE_SUBSCR:
        gen_delete_subscr(ctp);
        break;
case BINARY_LSHIFT:
        gen_binary_lshift(ctp);
        break;
case BINARY_RSHIFT:
        gen_binary_rshift(ctp);
        break;
case BINARY_AND:
        gen_binary_and(ctp);
        break;
case BINARY_XOR:
        gen_binary_xor(ctp);
        break;
case BINARY_OR:
        gen_binary_or(ctp);
        break;
case INPLACE_POWER:
        gen_inplace_power(ctp);
        break;
case GET_ITER:
        gen_get_iter(ctp);
        break;
case PRINT_EXPR:
        gen_print_expr(ctp);
        break;
case PRINT_ITEM:
        gen_print_item(ctp);
        break;
case PRINT_NEWLINE:
        gen_print_newline(ctp);
        break;
case INPLACE_LSHIFT:
        gen_inplace_lshift(ctp);
        break;
case INPLACE_RSHIFT:
        gen_inplace_rshift(ctp);
        break;
case INPLACE_AND:
        gen_inplace_and(ctp);
        break;
case INPLACE_XOR:
        gen_inplace_xor(ctp);
        break;
case INPLACE_OR:
        gen_inplace_or(ctp);
        break;
case BREAK_LOOP:
        gen_break_loop(ctp);
        break;
case WITH_CLEANUP:
        gen_with_cleanup(ctp);
        break;
case LOAD_LOCALS:
        gen_load_locals(ctp);
        break;
case RETURN_VALUE:
        gen_return_value(ctp);
        break;
case IMPORT_STAR:
        gen_import_star(ctp);
        break;
case EXEC_STMT:
        gen_exec_stmt(ctp);
        break;
case YIELD_VALUE:
        gen_yield_value(ctp);
        break;
case POP_BLOCK:
        gen_pop_block(ctp);
        break;
case END_FINALLY:
        gen_end_finally(ctp);
        break;
case BUILD_CLASS:
        gen_build_class(ctp);
        break;
case STORE_NAME:
        gen_store_name(ctp, oparg);
        blanks++;
        break;
case DELETE_NAME:
        gen_delete_name(ctp, oparg);
        blanks++;
        break;
case UNPACK_SEQUENCE:
        gen_unpack_sequence(ctp, oparg);
        blanks++;
        break;
case FOR_ITER:
        gen_for_iter(ctp, oparg);
        blanks++;
        break;
case STORE_ATTR:
        gen_store_attr(ctp, oparg);
        blanks++;
        break;
case DELETE_ATTR:
        gen_delete_attr(ctp, oparg);
        blanks++;
        break;
case STORE_GLOBAL:
        gen_store_global(ctp, oparg);
        blanks++;
        break;
case DELETE_GLOBAL:
        gen_delete_global(ctp, oparg);
        blanks++;
        break;
case LOAD_CONST:
        gen_load_const(ctp, oparg);
        blanks++;
        break;
case LOAD_NAME:
        gen_load_name(ctp, oparg);
        blanks++;
        break;
case BUILD_TUPLE:
        gen_build_tuple(ctp, oparg);
        blanks++;
        break;
case BUILD_LIST:
        gen_build_list(ctp, oparg);
        blanks++;
        break;
case BUILD_MAP:
        gen_build_map(ctp, oparg);
        blanks++;
        break;
case LOAD_ATTR:
        gen_load_attr(ctp, oparg);
        blanks++;
        break;
case COMPARE_OP:
        gen_compare_op(ctp, oparg);
        blanks++;
        break;
case IMPORT_NAME:
        gen_import_name(ctp, oparg);
        blanks++;
        break;
case IMPORT_FROM:
        gen_import_from(ctp, oparg);
        blanks++;
        break;
case JUMP_FORWARD:
        gen_jump_forward(ctp, oparg);
        blanks++;
        break;
case JUMP_IF_FALSE:
        gen_jump_if_false(ctp, oparg);
        blanks++;
        break;
case JUMP_IF_TRUE:
        gen_jump_if_true(ctp, oparg);
        blanks++;
        break;
case JUMP_ABSOLUTE:
        gen_jump_absolute(ctp, oparg);
        blanks++;
        break;
case LOAD_GLOBAL:
        gen_load_global(ctp, oparg);
        blanks++;
        break;
case CONTINUE_LOOP:
        gen_continue_loop(ctp, oparg);
        blanks++;
        break;
case SETUP_LOOP:
        gen_setup_loop(ctp, oparg);
        blanks++;
        break;
case SETUP_EXCEPT:
        gen_setup_except(ctp, oparg);
        blanks++;
        break;
case SETUP_FINALLY:
        gen_setup_finally(ctp, oparg);
        blanks++;
        break;
case LOAD_FAST:
        gen_load_fast(ctp, oparg);
        blanks++;
        break;
case STORE_FAST:
        gen_store_fast(ctp, oparg);
        blanks++;
        break;
case DELETE_FAST:
        gen_delete_fast(ctp, oparg);
        blanks++;
        break;
case CALL_FUNCTION:
        gen_call_function(ctp, oparg);
        blanks++;
        break;
case MAKE_FUNCTION:
        gen_make_function(ctp, oparg);
        blanks++;
        break;
case MAKE_CLOSURE:
        gen_make_closure(ctp, oparg);
        blanks++;
        break;
case LOAD_CLOSURE:
        gen_load_closure(ctp, oparg);
        blanks++;
        break;
case LOAD_DEREF:
        gen_load_deref(ctp, oparg);
        blanks++;
        break;
case STORE_DEREF:
        gen_store_deref(ctp, oparg);
        blanks++;
        break;
