case POP_TOP:
        printf("%s   ", "POP_TOP");
        break;
case ROT_TWO:
        printf("%s   ", "ROT_TWO");
        break;
case ROT_THREE:
        printf("%s   ", "ROT_THREE");
        break;
case DUP_TOP:
        printf("%s   ", "DUP_TOP");
        break;
case ROT_FOUR:
        printf("%s   ", "ROT_FOUR");
        break;
case NOP:
        printf("%s   ", "NOP");
        break;
case UNARY_POSITIVE:
        printf("%s   ", "UNARY_POSITIVE");
        break;
case UNARY_NEGATIVE:
        printf("%s   ", "UNARY_NEGATIVE");
        break;
case UNARY_NOT:
        printf("%s   ", "UNARY_NOT");
        break;
case UNARY_CONVERT:
        printf("%s   ", "UNARY_CONVERT");
        break;
case UNARY_INVERT:
        printf("%s   ", "UNARY_INVERT");
        break;
case LIST_APPEND:
        printf("%s   ", "LIST_APPEND");
        break;
case BINARY_POWER:
        printf("%s   ", "BINARY_POWER");
        break;
case BINARY_MULTIPLY:
        printf("%s   ", "BINARY_MULTIPLY");
        break;
case BINARY_MODULO:
        printf("%s   ", "BINARY_MODULO");
        break;
case BINARY_ADD:
        printf("%s   ", "BINARY_ADD");
        break;
case BINARY_SUBTRACT:
        printf("%s   ", "BINARY_SUBTRACT");
        break;
case BINARY_SUBSCR:
        printf("%s   ", "BINARY_SUBSCR");
        break;
case BINARY_FLOOR_DIVIDE:
        printf("%s   ", "BINARY_FLOOR_DIVIDE");
        break;
case BINARY_TRUE_DIVIDE:
        printf("%s   ", "BINARY_TRUE_DIVIDE");
        break;
case INPLACE_FLOOR_DIVIDE:
        printf("%s   ", "INPLACE_FLOOR_DIVIDE");
        break;
case INPLACE_TRUE_DIVIDE:
        printf("%s   ", "INPLACE_TRUE_DIVIDE");
        break;
case INPLACE_ADD:
        printf("%s   ", "INPLACE_ADD");
        break;
case INPLACE_SUBTRACT:
        printf("%s   ", "INPLACE_SUBTRACT");
        break;
case INPLACE_MULTIPLY:
        printf("%s   ", "INPLACE_MULTIPLY");
        break;
case INPLACE_MODULO:
        printf("%s   ", "INPLACE_MODULO");
        break;
case STORE_SUBSCR:
        printf("%s   ", "STORE_SUBSCR");
        break;
case DELETE_SUBSCR:
        printf("%s   ", "DELETE_SUBSCR");
        break;
case BINARY_LSHIFT:
        printf("%s   ", "BINARY_LSHIFT");
        break;
case BINARY_RSHIFT:
        printf("%s   ", "BINARY_RSHIFT");
        break;
case BINARY_AND:
        printf("%s   ", "BINARY_AND");
        break;
case BINARY_XOR:
        printf("%s   ", "BINARY_XOR");
        break;
case BINARY_OR:
        printf("%s   ", "BINARY_OR");
        break;
case INPLACE_POWER:
        printf("%s   ", "INPLACE_POWER");
        break;
case GET_ITER:
        printf("%s   ", "GET_ITER");
        break;
case PRINT_EXPR:
        printf("%s   ", "PRINT_EXPR");
        break;
case PRINT_ITEM:
        printf("%s   ", "PRINT_ITEM");
        break;
case PRINT_NEWLINE:
        printf("%s   ", "PRINT_NEWLINE");
        break;
case INPLACE_LSHIFT:
        printf("%s   ", "INPLACE_LSHIFT");
        break;
case INPLACE_RSHIFT:
        printf("%s   ", "INPLACE_RSHIFT");
        break;
case INPLACE_AND:
        printf("%s   ", "INPLACE_AND");
        break;
case INPLACE_XOR:
        printf("%s   ", "INPLACE_XOR");
        break;
case INPLACE_OR:
        printf("%s   ", "INPLACE_OR");
        break;
case BREAK_LOOP:
        printf("%s   ", "BREAK_LOOP");
        break;
case WITH_CLEANUP:
        printf("%s   ", "WITH_CLEANUP");
        break;
case LOAD_LOCALS:
        printf("%s   ", "LOAD_LOCALS");
        break;
case RETURN_VALUE:
        printf("%s   ", "RETURN_VALUE");
        break;
case IMPORT_STAR:
        printf("%s   ", "IMPORT_STAR");
        break;
case EXEC_STMT:
        printf("%s   ", "EXEC_STMT");
        break;
case YIELD_VALUE:
        printf("%s   ", "YIELD_VALUE");
        break;
case POP_BLOCK:
        printf("%s   ", "POP_BLOCK");
        break;
case END_FINALLY:
        printf("%s   ", "END_FINALLY");
        break;
case BUILD_CLASS:
        printf("%s   ", "BUILD_CLASS");
        break;
case STORE_NAME:
        printf("%s   ", "STORE_NAME");
        printf("%d", oparg);
        break;
case DELETE_NAME:
        printf("%s   ", "DELETE_NAME");
        printf("%d", oparg);
        break;
case UNPACK_SEQUENCE:
        printf("%s   ", "UNPACK_SEQUENCE");
        printf("%d", oparg);
        break;
case FOR_ITER:
        printf("%s   ", "FOR_ITER");
        printf("%d", oparg);
        break;
case STORE_ATTR:
        printf("%s   ", "STORE_ATTR");
        printf("%d", oparg);
        break;
case DELETE_ATTR:
        printf("%s   ", "DELETE_ATTR");
        printf("%d", oparg);
        break;
case STORE_GLOBAL:
        printf("%s   ", "STORE_GLOBAL");
        printf("%d", oparg);
        break;
case DELETE_GLOBAL:
        printf("%s   ", "DELETE_GLOBAL");
        printf("%d", oparg);
        break;
case LOAD_CONST:
        printf("%s   ", "LOAD_CONST");
        printf("%d", oparg);
        break;
case LOAD_NAME:
        printf("%s   ", "LOAD_NAME");
        printf("%d", oparg);
        break;
case BUILD_TUPLE:
        printf("%s   ", "BUILD_TUPLE");
        printf("%d", oparg);
        break;
case BUILD_LIST:
        printf("%s   ", "BUILD_LIST");
        printf("%d", oparg);
        break;
case BUILD_MAP:
        printf("%s   ", "BUILD_MAP");
        printf("%d", oparg);
        break;
case LOAD_ATTR:
        printf("%s   ", "LOAD_ATTR");
        printf("%d", oparg);
        break;
case COMPARE_OP:
        printf("%s   ", "COMPARE_OP");
        printf("%d", oparg);
        break;
case IMPORT_NAME:
        printf("%s   ", "IMPORT_NAME");
        printf("%d", oparg);
        break;
case IMPORT_FROM:
        printf("%s   ", "IMPORT_FROM");
        printf("%d", oparg);
        break;
case JUMP_FORWARD:
        printf("%s   ", "JUMP_FORWARD");
        printf("%d", oparg);
        break;
case JUMP_IF_FALSE:
        printf("%s   ", "JUMP_IF_FALSE");
        printf("%d", oparg);
        break;
case JUMP_IF_TRUE:
        printf("%s   ", "JUMP_IF_TRUE");
        printf("%d", oparg);
        break;
case JUMP_ABSOLUTE:
        printf("%s   ", "JUMP_ABSOLUTE");
        printf("%d", oparg);
        break;
case LOAD_GLOBAL:
        printf("%s   ", "LOAD_GLOBAL");
        printf("%d", oparg);
        break;
case CONTINUE_LOOP:
        printf("%s   ", "CONTINUE_LOOP");
        printf("%d", oparg);
        break;
case SETUP_LOOP:
        printf("%s   ", "SETUP_LOOP");
        printf("%d", oparg);
        break;
case SETUP_EXCEPT:
        printf("%s   ", "SETUP_EXCEPT");
        printf("%d", oparg);
        break;
case SETUP_FINALLY:
        printf("%s   ", "SETUP_FINALLY");
        printf("%d", oparg);
        break;
case LOAD_FAST:
        printf("%s   ", "LOAD_FAST");
        printf("%d", oparg);
        break;
case STORE_FAST:
        printf("%s   ", "STORE_FAST");
        printf("%d", oparg);
        break;
case DELETE_FAST:
        printf("%s   ", "DELETE_FAST");
        printf("%d", oparg);
        break;
case CALL_FUNCTION:
        printf("%s   ", "CALL_FUNCTION");
        printf("%d", oparg);
        break;
case MAKE_FUNCTION:
        printf("%s   ", "MAKE_FUNCTION");
        printf("%d", oparg);
        break;
case MAKE_CLOSURE:
        printf("%s   ", "MAKE_CLOSURE");
        printf("%d", oparg);
        break;
case LOAD_CLOSURE:
        printf("%s   ", "LOAD_CLOSURE");
        printf("%d", oparg);
        break;
case LOAD_DEREF:
        printf("%s   ", "LOAD_DEREF");
        printf("%d", oparg);
        break;
case STORE_DEREF:
        printf("%s   ", "STORE_DEREF");
        printf("%d", oparg);
        break;
case STOP_CODE:
        printf("%s   ", "STOP_CODE");
        break;
case BINARY_DIVIDE:
        printf("%s   ", "BINARY_DIVIDE");
        break;
case SLICE:
        printf("%s   ", "SLICE");
        break;
case STORE_SLICE:
        printf("%s   ", "STORE_SLICE");
        break;
case DELETE_SLICE:
        printf("%s   ", "DELETE_SLICE");
        break;
case INPLACE_DIVIDE:
        printf("%s   ", "INPLACE_DIVIDE");
        break;
case PRINT_ITEM_TO:
        printf("%s   ", "PRINT_ITEM_TO");
        break;
case PRINT_NEWLINE_TO:
        printf("%s   ", "PRINT_NEWLINE_TO");
        break;
case DUP_TOPX:
        printf("%s   ", "DUP_TOPX");
        printf("%d", oparg);
        break;
case RAISE_VARARGS:
        printf("%s   ", "RAISE_VARARGS");
        printf("%d", oparg);
        break;
case BUILD_SLICE:
        printf("%s   ", "BUILD_SLICE");
        printf("%d", oparg);
        break;
case CALL_FUNCTION_VAR:
        printf("%s   ", "CALL_FUNCTION_VAR");
        printf("%d", oparg);
        break;
case CALL_FUNCTION_KW:
        printf("%s   ", "CALL_FUNCTION_KW");
        printf("%d", oparg);
        break;
case CALL_FUNCTION_VAR_KW:
        printf("%s   ", "CALL_FUNCTION_VAR_KW");
        printf("%d", oparg);
        break;
