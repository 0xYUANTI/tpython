LABEL(nop) /* nop ( -- ) */
NAME("nop")
{
DEF_CA
NEXT_P0;
{
}

NEXT_P1;
LABEL2(nop)
NEXT_P2;
}

LABEL(load_fast) /* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
DEF_CA
Oparg i;
Obj a;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
vm_Cell2i(IMM_ARG(IPTOS,305397760 ),i);
INC_IP(1);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2incref(a,__none__TOS);
LABEL2(load_fast)
NEXT_P2;
}

LABEL(load_const) /* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
DEF_CA
Oparg i;
Obj a;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
vm_Cell2i(IMM_ARG(IPTOS,305397761 ),i);
INC_IP(1);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2incref(a,__none__TOS);
LABEL2(load_const)
NEXT_P2;
}

LABEL(store_fast) /* store_fast ( #i a -- ) */
NAME("store_fast")
{
DEF_CA
Oparg i;
Obj a;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397762 ),i);
vm_Obj2a(stack_pointerTOS,a);
INC_IP(1);
stack_pointer += -1;
{
SETLOCAL(i, a);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
LABEL2(store_fast)
NEXT_P2;
}

LABEL(pop_top) /* pop_top ( a -- dec:a ) */
NAME("pop_top")
{
DEF_CA
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a);
stack_pointer += -1;
{
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a,__none__TOS);
LABEL2(pop_top)
NEXT_P2;
}

LABEL(rot_two) /* rot_two ( a1 a2 -- a2 a1 ) */
NAME("rot_two")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
{
}

NEXT_P1;
vm_a2Obj(a2,stack_pointer[-2]);
vm_a2Obj(a1,stack_pointerTOS);
LABEL2(rot_two)
NEXT_P2;
}

LABEL(rot_three) /* rot_three ( a1 a2 a3 -- a3 a1 a2 ) */
NAME("rot_three")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
NEXT_P0;
vm_Obj2a(stack_pointer[-3],a1);
vm_Obj2a(stack_pointer[-2],a2);
vm_Obj2a(stack_pointerTOS,a3);
{
}

NEXT_P1;
vm_a2Obj(a3,stack_pointer[-3]);
vm_a2Obj(a1,stack_pointer[-2]);
vm_a2Obj(a2,stack_pointerTOS);
LABEL2(rot_three)
NEXT_P2;
}

LABEL(rot_four) /* rot_four ( a1 a2 a3 a4 -- a4 a1 a2 a3 ) */
NAME("rot_four")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
Obj a4;
NEXT_P0;
vm_Obj2a(stack_pointer[-4],a1);
vm_Obj2a(stack_pointer[-3],a2);
vm_Obj2a(stack_pointer[-2],a3);
vm_Obj2a(stack_pointerTOS,a4);
{
}

NEXT_P1;
vm_a2Obj(a4,stack_pointer[-4]);
vm_a2Obj(a1,stack_pointer[-3]);
vm_a2Obj(a2,stack_pointer[-2]);
vm_a2Obj(a3,stack_pointerTOS);
LABEL2(rot_four)
NEXT_P2;
}

LABEL(dup_top) /* dup_top ( a -- a a  inc:a ) */
NAME("dup_top")
{
DEF_CA
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a);
stack_pointer += 1;
{
}

NEXT_P1;
IF_stack_pointerTOS(vm_a2Obj(a,stack_pointer[-2]););
vm_a2Obj(a,stack_pointerTOS);
vm_a2incref(a,__none__TOS);
LABEL2(dup_top)
NEXT_P2;
}

LABEL(dup_top_two) /* dup_top_two ( a1 a2 -- a1 a2 a1 a2  inc:a1 inc:a2 ) */
NAME("dup_top_two")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += 2;
{
}

NEXT_P1;
IF_stack_pointerTOS(vm_a2Obj(a2,stack_pointer[-3]););
vm_a2Obj(a1,stack_pointer[-2]);
vm_a2Obj(a2,stack_pointerTOS);
vm_a2incref(a1,__none__[1]);
vm_a2incref(a2,__none__TOS);
LABEL2(dup_top_two)
NEXT_P2;
}

LABEL(dup_top_three) /* dup_top_three ( a1 a2 a3 -- a1 a2 a3 a1 a2 a3  inc:a1 inc:a2 inc:a3 ) */
NAME("dup_top_three")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
NEXT_P0;
vm_Obj2a(stack_pointer[-3],a1);
vm_Obj2a(stack_pointer[-2],a2);
vm_Obj2a(stack_pointerTOS,a3);
stack_pointer += 3;
{
}

NEXT_P1;
IF_stack_pointerTOS(vm_a2Obj(a3,stack_pointer[-4]););
vm_a2Obj(a1,stack_pointer[-3]);
vm_a2Obj(a2,stack_pointer[-2]);
vm_a2Obj(a3,stack_pointerTOS);
vm_a2incref(a1,__none__[2]);
vm_a2incref(a2,__none__[1]);
vm_a2incref(a3,__none__TOS);
LABEL2(dup_top_three)
NEXT_P2;
}

LABEL(unary_positive) /* unary_positive ( a1 -- a2   dec:a1  next:a2 ) */
NAME("unary_positive")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a1);
{
a2 = PyNumber_Positive(a1);
}

NEXT_P1;
vm_a2Obj(a2,stack_pointerTOS);
vm_a2decref(a1,__none__TOS);
vm_a2next(a2,__none__TOS);
LABEL2(unary_positive)
NEXT_P2;
}

LABEL(unary_negative) /* unary_negative ( a1 -- a2  dec:a1  next:a2 ) */
NAME("unary_negative")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a1);
{
a2 = PyNumber_Negative(a1);
}

NEXT_P1;
vm_a2Obj(a2,stack_pointerTOS);
vm_a2decref(a1,__none__TOS);
vm_a2next(a2,__none__TOS);
LABEL2(unary_negative)
NEXT_P2;
}

LABEL(unary_not) /* unary_not ( -- ) */
NAME("unary_not")
{
DEF_CA
NEXT_P0;
{
a1 = TOP();
err = PyObject_IsTrue(a1);
Py_DECREF(a1);
if (err == 0) {
        Py_INCREF(Py_True);
        SET_TOP(Py_True);
        NEXT();
} else if (err > 0) {
        Py_INCREF(Py_False);
        SET_TOP(Py_False);
        err = 0;
        NEXT();
}
STACKADJ(-1);
ERROR();
}

NEXT_P1;
LABEL2(unary_not)
NEXT_P2;
}

LABEL(unary_convert) /* unary_convert ( a1 -- a2  dec:a1  next:a2 ) */
NAME("unary_convert")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a1);
{
a2 = PyObject_Repr(a1);
}

NEXT_P1;
vm_a2Obj(a2,stack_pointerTOS);
vm_a2decref(a1,__none__TOS);
vm_a2next(a2,__none__TOS);
LABEL2(unary_convert)
NEXT_P2;
}

LABEL(unary_invert) /* unary_invert ( a1 -- a2  dec:a1  next:a2 ) */
NAME("unary_invert")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a1);
{
a2 = PyNumber_Invert(a1);
}

NEXT_P1;
vm_a2Obj(a2,stack_pointerTOS);
vm_a2decref(a1,__none__TOS);
vm_a2next(a2,__none__TOS);
LABEL2(unary_invert)
NEXT_P2;
}

LABEL(binary_power) /* binary_power ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_power")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_Power(a1, a2, Py_None);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_power)
NEXT_P2;
}

LABEL(binary_multiply) /* binary_multiply ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_multiply")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_Multiply(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_multiply)
NEXT_P2;
}

LABEL(binary_divide) /* binary_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_divide")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_Divide(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_divide)
NEXT_P2;
}

LABEL(binary_true_divide) /* binary_true_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_true_divide")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_TrueDivide(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_true_divide)
NEXT_P2;
}

LABEL(binary_floor_divide) /* binary_floor_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_floor_divide")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_FloorDivide(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_floor_divide)
NEXT_P2;
}

LABEL(binary_modulo) /* binary_modulo ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_modulo")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_Remainder(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_modulo)
NEXT_P2;
}

LABEL(binary_add) /* binary_add ( a1 a2 -- a   next:a ) */
NAME("binary_add")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int + int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u + v;
        if ((i^u) < 0 && (i^v) < 0)
                a = PyNumber_Add(a1, a2);
        else
                a = PyInt_FromLong(i);
        Py_DECREF(a1);
} else if (PyString_CheckExact(a1) && PyString_CheckExact(a2)) {
        int opcode;
        ADDR2OP(next_instr->opcode, opcode);
        a = string_concatenate(a1, a2, f, opcode, (next_instr+1)->oparg);
        /* string_concatenate consumed the ref to v */
} else {
        a = PyNumber_Add(a1, a2);
        Py_DECREF(a1);
}
Py_DECREF(a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_add)
NEXT_P2;
}

LABEL(binary_subtract) /* binary_subtract ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_subtract")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int - int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u - v;
        if ((i^u) < 0 && (i^~v) < 0)
                a = PyNumber_Subtract(a1, a2);
        else
                a = PyInt_FromLong(i);
} else
        a = PyNumber_Subtract(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_subtract)
NEXT_P2;
}

LABEL(binary_subscr) /* binary_subscr ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_subscr")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
if (PyList_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: list[int] */
        Py_ssize_t i = PyInt_AsSsize_t(a2);
        if (i < 0)
                i += PyList_GET_SIZE(a1);
        if (i >= 0 && i < PyList_GET_SIZE(a1)) {
                a = PyList_GET_ITEM(a1, i);
                Py_INCREF(a);
        } else
                a = PyObject_GetItem(a1, a2);
} else
        a = PyObject_GetItem(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_subscr)
NEXT_P2;
}

LABEL(binary_lshift) /* binary_lshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_lshift")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_Lshift(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_lshift)
NEXT_P2;
}

LABEL(binary_rshift) /* binary_rshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_rshift")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_Rshift(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_rshift)
NEXT_P2;
}

LABEL(binary_and) /* binary_and ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_and")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_And(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_and)
NEXT_P2;
}

LABEL(binary_xor) /* binary_xor ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_xor")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_Xor(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_xor)
NEXT_P2;
}

LABEL(binary_or) /* binary_or ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_or")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_Or(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(binary_or)
NEXT_P2;
}

LABEL(list_append) /* list_append ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("list_append")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -2;
{
err = PyList_Append(a1, a2);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(list_append)
NEXT_P2;
}

LABEL(inplace_power) /* inplace_power ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_power")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_InPlacePower(a1, a2, Py_None);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_power)
NEXT_P2;
}

LABEL(inplace_multiply) /* inplace_multiply ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_multiply")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_InPlaceMultiply(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_multiply)
NEXT_P2;
}

LABEL(inplace_divide) /* inplace_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_divide")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_InPlaceDivide(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_divide)
NEXT_P2;
}

LABEL(inplace_true_divide) /* inplace_true_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_true_divide")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_InPlaceTrueDivide(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_true_divide)
NEXT_P2;
}

LABEL(inplace_floor_divide) /* inplace_floor_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_floor_divide")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_InPlaceFloorDivide(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_floor_divide)
NEXT_P2;
}

LABEL(inplace_modulo) /* inplace_modulo ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_modulo")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_InPlaceRemainder(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_modulo)
NEXT_P2;
}

LABEL(inplace_add) /* inplace_add ( a1 a2 -- a   next:a ) */
NAME("inplace_add")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int + int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u + v;
        if ((i^u) < 0 && (i^v) < 0)
                a = PyNumber_InPlaceAdd(a1, a2);
        else
                a = PyInt_FromLong(i);
        Py_DECREF(a1);
} else if (PyString_CheckExact(a1) && PyString_CheckExact(a2)) {
        int opcode;
        ADDR2OP(next_instr->opcode, opcode);
        a = string_concatenate(a1, a2, f, opcode, (next_instr+1)->oparg);
        /* string_concatenate consumed the ref to v */
} else {
        a = PyNumber_InPlaceAdd(a1, a2);
        Py_DECREF(a1);
}
Py_DECREF(a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_add)
NEXT_P2;
}

LABEL(inplace_subtract) /* inplace_subtract ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_subtract")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int - int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u - v;
        if ((i^u) < 0 && (i^~v) < 0)
                a = PyNumber_InPlaceSubtract(a1, a2);
        else
                a = PyInt_FromLong(i);
} else
        a = PyNumber_InPlaceSubtract(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_subtract)
NEXT_P2;
}

LABEL(inplace_lshift) /* inplace_lshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_lshift")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_InPlaceLshift(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_lshift)
NEXT_P2;
}

LABEL(inplace_rshift) /* inplace_rshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_rshift")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_InPlaceRshift(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_rshift)
NEXT_P2;
}

LABEL(inplace_and) /* inplace_and ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_and")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_InPlaceAnd(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_and)
NEXT_P2;
}

LABEL(inplace_xor) /* inplace_xor ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_xor")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_InPlaceXor(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_xor)
NEXT_P2;
}

LABEL(inplace_or) /* inplace_or ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_or")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PyNumber_InPlaceOr(a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(inplace_or)
NEXT_P2;
}

LABEL(slice_none) /* slice_none ( a1 -- a2  dec:a1  next:a2 ) */
NAME("slice_none")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a1);
{
a2 = apply_slice(a1, NULL, NULL);
}

NEXT_P1;
vm_a2Obj(a2,stack_pointerTOS);
vm_a2decref(a1,__none__TOS);
vm_a2next(a2,__none__TOS);
LABEL2(slice_none)
NEXT_P2;
}

LABEL(slice_left) /* slice_left ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("slice_left")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = apply_slice(a1, a2, NULL);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(slice_left)
NEXT_P2;
}

LABEL(slice_right) /* slice_right ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("slice_right")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = apply_slice(a1, NULL, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(slice_right)
NEXT_P2;
}

LABEL(slice_both) /* slice_both ( a1 a2 a3 -- a  dec:a1 dec:a2 dec:a3  next:a ) */
NAME("slice_both")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-3],a1);
vm_Obj2a(stack_pointer[-2],a2);
vm_Obj2a(stack_pointerTOS,a3);
stack_pointer += -2;
{
a = apply_slice(a1, a2, a3);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[2]);
vm_a2decref(a2,__none__[1]);
vm_a2decref(a3,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(slice_both)
NEXT_P2;
}

LABEL(store_slice_none) /* store_slice_none ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("store_slice_none")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -2;
{
err = assign_slice(a2, NULL, NULL, a1);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(store_slice_none)
NEXT_P2;
}

LABEL(store_slice_left) /* store_slice_left ( a1 a2 a3 -- dec:a1 dec:a2 dec:a3  next:error ) */
NAME("store_slice_left")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
NEXT_P0;
vm_Obj2a(stack_pointer[-3],a1);
vm_Obj2a(stack_pointer[-2],a2);
vm_Obj2a(stack_pointerTOS,a3);
stack_pointer += -3;
{
err = assign_slice(a2, a3, NULL, a1);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__[2]);
vm_a2decref(a2,__none__[1]);
vm_a2decref(a3,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(store_slice_left)
NEXT_P2;
}

LABEL(store_slice_right) /* store_slice_right ( a1 a2 a3 -- dec:a1 dec:a2 dec:a3  next:error ) */
NAME("store_slice_right")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
NEXT_P0;
vm_Obj2a(stack_pointer[-3],a1);
vm_Obj2a(stack_pointer[-2],a2);
vm_Obj2a(stack_pointerTOS,a3);
stack_pointer += -3;
{
err = assign_slice(a2, NULL, a3, a1);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__[2]);
vm_a2decref(a2,__none__[1]);
vm_a2decref(a3,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(store_slice_right)
NEXT_P2;
}

LABEL(store_slice_both) /* store_slice_both ( a1 a2 a3 a4 -- dec:a1 dec:a2 dec:a3 dec:a4  next:error ) */
NAME("store_slice_both")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
Obj a4;
NEXT_P0;
vm_Obj2a(stack_pointer[-4],a1);
vm_Obj2a(stack_pointer[-3],a2);
vm_Obj2a(stack_pointer[-2],a3);
vm_Obj2a(stack_pointerTOS,a4);
stack_pointer += -4;
{
err = assign_slice(a2, a3, a4, a1); /* a2[a3:a4] = a1 */
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__[3]);
vm_a2decref(a2,__none__[2]);
vm_a2decref(a3,__none__[1]);
vm_a2decref(a4,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(store_slice_both)
NEXT_P2;
}

LABEL(delete_slice_none) /* delete_slice_none ( a1 -- dec:a1  next:error ) */
NAME("delete_slice_none")
{
DEF_CA
Obj a1;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a1);
stack_pointer += -1;
{
err = assign_slice(a1, NULL, NULL, (PyObject *) NULL);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(delete_slice_none)
NEXT_P2;
}

LABEL(delete_slice_left) /* delete_slice_left ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_slice_left")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -2;
{
err = assign_slice(a1, a2, NULL, (PyObject *) NULL);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(delete_slice_left)
NEXT_P2;
}

LABEL(delete_slice_right) /* delete_slice_right ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_slice_right")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -2;
{
err = assign_slice(a1, NULL, a2, (PyObject *) NULL);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(delete_slice_right)
NEXT_P2;
}

LABEL(delete_slice_both) /* delete_slice_both ( a1 a2 a3 -- dec:a1 dec:a2 dec:a3  next:error ) */
NAME("delete_slice_both")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
NEXT_P0;
vm_Obj2a(stack_pointer[-3],a1);
vm_Obj2a(stack_pointer[-2],a2);
vm_Obj2a(stack_pointerTOS,a3);
stack_pointer += -3;
{
err = assign_slice(a1, a2, a3, (PyObject *) NULL); /* del a1[a2:a3] */
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__[2]);
vm_a2decref(a2,__none__[1]);
vm_a2decref(a3,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(delete_slice_both)
NEXT_P2;
}

LABEL(store_subscr) /* store_subscr ( a1 a2 a3 -- dec:a1 dec:a2 dec:a3  next:error ) */
NAME("store_subscr")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
NEXT_P0;
vm_Obj2a(stack_pointer[-3],a1);
vm_Obj2a(stack_pointer[-2],a2);
vm_Obj2a(stack_pointerTOS,a3);
stack_pointer += -3;
{
err = PyObject_SetItem(a2, a3, a1);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__[2]);
vm_a2decref(a2,__none__[1]);
vm_a2decref(a3,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(store_subscr)
NEXT_P2;
}

LABEL(delete_subscr) /* delete_subscr ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_subscr")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -2;
{
err = PyObject_DelItem(a1, a2);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(delete_subscr)
NEXT_P2;
}

LABEL(print_expr) /* print_expr ( a1 -- dec:a1  next:on_error ) */
NAME("print_expr")
{
DEF_CA
Obj a1;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a1);
stack_pointer += -1;
{
a2 = PySys_GetObject("displayhook");
if (a2 == NULL) {
        PyErr_SetString(PyExc_RuntimeError, "lost sys.displayhook");
        err = -1;
        x = NULL;
}
if (err == 0) {
        x = PyTuple_Pack(1, a1);
        if (x == NULL)
                err = -1;
}
if (err == 0) {
        a2 = PyEval_CallObject(a2, x);
        Py_XDECREF(a2);
        if (a2 == NULL)
                err = -1;
}
Py_XDECREF(x);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__TOS);
vm_on_error2next(on_error,__none__TOS);
LABEL2(print_expr)
NEXT_P2;
}

LABEL(print_item_to) /* print_item_to ( a1 -- ) */
NAME("print_item_to")
{
DEF_CA
Obj a1;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a1);
stack_pointer += -1;
{
a2 = stream = a1;
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
LABEL2(print_item_to)
NEXT_P2;
}

LABEL(print_item) /* print_item ( a1 -- dec:a1  next:error ) */
NAME("print_item")
{
DEF_CA
Obj a1;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a1);
stack_pointer += -1;
{
if (stream == NULL || stream == Py_None) {
        a2 = PySys_GetObject("stdout");
        if (a2 == NULL) {
                PyErr_SetString(PyExc_RuntimeError,
                                "lost sys.stdout");
                err = -1;
        }
}
/* PyFile_SoftSpace() can exececute arbitrary code
   if sys.stdout is an instance with a __getattr__.
   If __getattr__ raises an exception, w will
   be freed, so we need to prevent that temporarily. */
Py_XINCREF(a2);
if (a2 != NULL && PyFile_SoftSpace(a2, 0))
        err = PyFile_WriteString(" ", a2);
if (err == 0)
        err = PyFile_WriteObject(a1, a2, Py_PRINT_RAW);
if (err == 0) {
        /* XXX move into writeobject() ? */
        if (PyString_Check(a1)) {
                char *s = PyString_AS_STRING(a1);
                Py_ssize_t len = PyString_GET_SIZE(a1);
                if (len == 0 ||
                    !isspace(Py_CHARMASK(s[len-1])) ||
                    s[len-1] == ' ')
                        PyFile_SoftSpace(a2, 1);
        } else
                PyFile_SoftSpace(a2, 1);
}
Py_XDECREF(a2);
Py_XDECREF(stream);
stream = NULL;
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(print_item)
NEXT_P2;
}

LABEL(print_newline) /* print_newline ( -- next:on_error ) */
NAME("print_newline")
{
DEF_CA
NEXT_P0;
{
if (stream == NULL || stream == Py_None) {
        a2 = PySys_GetObject("stdout");
        if (a2 == NULL)
                PyErr_SetString(PyExc_RuntimeError,
                                "lost sys.stdout");
}
if (a2 != NULL) {
        err = PyFile_WriteString("\n", a2);
        if (err == 0)
                PyFile_SoftSpace(a2, 0);
}
Py_XDECREF(stream);
stream = NULL;
}

NEXT_P1;
vm_on_error2next(on_error,__none__TOS);
LABEL2(print_newline)
NEXT_P2;
}

LABEL(raise_varargs_zero) /* raise_varargs_zero ( -- next:on_error ) */
NAME("raise_varargs_zero")
{
DEF_CA
NEXT_P0;
{
why = do_raise(NULL, NULL, NULL);
}

NEXT_P1;
vm_on_error2next(on_error,__none__TOS);
LABEL2(raise_varargs_zero)
NEXT_P2;
}

LABEL(raise_varargs_one) /* raise_varargs_one ( a1 -- next:on_error ) */
NAME("raise_varargs_one")
{
DEF_CA
Obj a1;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a1);
stack_pointer += -1;
{
why = do_raise(a1, NULL, NULL);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_on_error2next(on_error,__none__TOS);
LABEL2(raise_varargs_one)
NEXT_P2;
}

LABEL(raise_varargs_two) /* raise_varargs_two ( a1 a2 -- next:on_error ) */
NAME("raise_varargs_two")
{
DEF_CA
Obj a1;
Obj a2;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -2;
{
why = do_raise(a1, a2, NULL);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_on_error2next(on_error,__none__TOS);
LABEL2(raise_varargs_two)
NEXT_P2;
}

LABEL(raise_varargs_three) /* raise_varargs_three ( a1 a2 a3 -- next:on_error ) */
NAME("raise_varargs_three")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
NEXT_P0;
vm_Obj2a(stack_pointer[-3],a1);
vm_Obj2a(stack_pointer[-2],a2);
vm_Obj2a(stack_pointerTOS,a3);
stack_pointer += -3;
{
why = do_raise(a1, a2, a3);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_on_error2next(on_error,__none__TOS);
LABEL2(raise_varargs_three)
NEXT_P2;
}

LABEL(load_locals) /* load_locals ( -- ) */
NAME("load_locals")
{
DEF_CA
NEXT_P0;
{
if ((x = f->f_locals) != NULL) {
        Py_INCREF(x);
        PUSH(x);
        NEXT();
}
PyErr_SetString(PyExc_SystemError, "no locals");
ERROR();
}

NEXT_P1;
LABEL2(load_locals)
NEXT_P2;
}

LABEL(load_name) /* load_name ( #i -- ) */
NAME("load_name")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397763 ),i);
INC_IP(1);
{
a2 = GETITEM(names, i);
if ((a1 = f->f_locals) == NULL) {
        PyErr_Format(PyExc_SystemError,
                     "no locals when loading %s",
                     PyObject_REPR(a2));
        ERROR();
}
if (PyDict_CheckExact(a1)) {
        x = PyDict_GetItem(a1, a2);
        Py_XINCREF(x);
} else {
        x = PyObject_GetItem(a1, a2);
        if (x == NULL && PyErr_Occurred()) {
                if (!PyErr_ExceptionMatches(PyExc_KeyError))
                        ERROR();
                PyErr_Clear();
        }
}
if (x == NULL) {
        x = PyDict_GetItem(f->f_globals, a2);
        if (x == NULL) {
                x = PyDict_GetItem(f->f_builtins, a2);
                if (x == NULL) {
                        format_exc_check_arg(PyExc_NameError, NAME_ERROR_MSG, a2);
                        ERROR();
                }
        }
        Py_INCREF(x);
}
PUSH(x);
NEXT();
}

NEXT_P1;
LABEL2(load_name)
NEXT_P2;
}

LABEL(load_global) /* load_global ( #i -- ) */
NAME("load_global")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397764 ),i);
INC_IP(1);
{
a1 = GETITEM(names, i);
if (PyString_CheckExact(a1)) {
        /* Inline the PyDict_GetItem() calls.
	   WARNING: this is an extreme speed hack.
	   Do not try this at home. */
        long hash = ((PyStringObject *)a1)->ob_shash;
        if (hash != -1) {
                PyDictObject *d = (PyDictObject *)(f->f_globals);
                PyDictEntry  *e = d->ma_lookup(d, a1, hash);
                if (e == NULL) {
                        x = NULL;
                        ERROR();
                }
                x = e->me_value;
                if (x != NULL) {
                        Py_INCREF(x);
                        PUSH(x);
                        NEXT();
                }
                d = (PyDictObject *)(f->f_builtins);
                e = d->ma_lookup(d, a1, hash);
                if (e == NULL) {
                        x = NULL;
                        ERROR();
                }
                x = e->me_value;
                if (x != NULL) {
                        Py_INCREF(x);
                        PUSH(x);
                        NEXT();
                }
                goto load_global_error;
        }
}
/* This is the un-inlined version of the code above */
x = PyDict_GetItem(f->f_globals, a1);
if (x == NULL) {
        x = PyDict_GetItem(f->f_builtins, a1);
        if (x == NULL) {
        load_global_error:
                format_exc_check_arg(
                        PyExc_NameError,
                        GLOBAL_NAME_ERROR_MSG,
                        a1);
                ERROR();
        }
}
Py_INCREF(x);
PUSH(x);
NEXT();
}

NEXT_P1;
LABEL2(load_global)
NEXT_P2;
}

LABEL(load_closure) /* load_closure ( #i -- a  inc:a  next:a ) */
NAME("load_closure")
{
DEF_CA
Oparg i;
Obj a;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
vm_Cell2i(IMM_ARG(IPTOS,305397765 ),i);
INC_IP(1);
stack_pointer += 1;
{
a = freevars[i];
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2incref(a,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(load_closure)
NEXT_P2;
}

LABEL(load_deref) /* load_deref ( #i -- ) */
NAME("load_deref")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397766 ),i);
INC_IP(1);
{
x = freevars[i];
a2 = PyCell_Get(x);
if (a2 != NULL) {
        PUSH(a2);
        NEXT();
}
err = -1;
/* Don't stomp existing exception */
if (PyErr_Occurred())
        ERROR();
if (i < PyTuple_GET_SIZE(co->co_cellvars)) {
        a1 = PyTuple_GET_ITEM(co->co_cellvars, i);
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                a1);
} else {
        a1 = PyTuple_GET_ITEM(
                co->co_freevars,
                i - PyTuple_GET_SIZE(co->co_cellvars));
        format_exc_check_arg(
                PyExc_NameError,
                UNBOUNDFREE_ERROR_MSG,
                a1);
}
ERROR();
}

NEXT_P1;
LABEL2(load_deref)
NEXT_P2;
}

LABEL(load_attr) /* load_attr ( #i a1 -- a3  dec:a1  next:a3 ) */
NAME("load_attr")
{
DEF_CA
Oparg i;
Obj a1;
Obj a3;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397767 ),i);
vm_Obj2a(stack_pointerTOS,a1);
INC_IP(1);
{
a2 = GETITEM(names, i);
a3 = PyObject_GetAttr(a1, a2);
}

NEXT_P1;
vm_a2Obj(a3,stack_pointerTOS);
vm_a2decref(a1,__none__TOS);
vm_a2next(a3,__none__TOS);
LABEL2(load_attr)
NEXT_P2;
}

LABEL(return_value) /* return_value ( a -- next:fast_block_end ) */
NAME("return_value")
{
DEF_CA
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a);
stack_pointer += -1;
{
retval = a;
why = WHY_RETURN;
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_fast_block_end2next(fast_block_end,__none__TOS);
LABEL2(return_value)
NEXT_P2;
}

LABEL(yield_value) /* yield_value ( a -- next:fast_yield ) */
NAME("yield_value")
{
DEF_CA
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a);
stack_pointer += -1;
{
retval = a;
f->f_stacktop = stack_pointer;
why = WHY_YIELD;
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_fast_yield2next(fast_yield,__none__TOS);
LABEL2(yield_value)
NEXT_P2;
}

LABEL(exec_stmt) /* exec_stmt ( a1 a2 a3 -- dec:a1 dec:a2 dec:a3  next:on_error ) */
NAME("exec_stmt")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
NEXT_P0;
vm_Obj2a(stack_pointer[-3],a1);
vm_Obj2a(stack_pointer[-2],a2);
vm_Obj2a(stack_pointerTOS,a3);
stack_pointer += -3;
{
err = exec_statement(f, a1, a2, a3);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__[2]);
vm_a2decref(a2,__none__[1]);
vm_a2decref(a3,__none__TOS);
vm_on_error2next(on_error,__none__TOS);
LABEL2(exec_stmt)
NEXT_P2;
}

LABEL(pop_block) /* pop_block ( -- next:next_opcode ) */
NAME("pop_block")
{
DEF_CA
NEXT_P0;
{
PyTryBlock *b = PyFrame_BlockPop(f);
while (STACK_LEVEL() > b->b_level) {
        a1 = POP();
        Py_DECREF(a1);
}
}

NEXT_P1;
vm_next_opcode2next(next_opcode,__none__TOS);
LABEL2(pop_block)
NEXT_P2;
}

LABEL(end_finally) /* end_finally ( a1 -- next:on_error ) */
NAME("end_finally")
{
DEF_CA
Obj a1;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a1);
stack_pointer += -1;
{
if (PyInt_Check(a1)) {
        why = (enum why_code) PyInt_AS_LONG(a1);
        assert(why != WHY_YIELD);
        if (why == WHY_RETURN || why == WHY_CONTINUE)
                retval = POP();
} else if (PyExceptionClass_Check(a1) || PyString_Check(a1)) {
        a2 = POP();
        a3 = POP();
        PyErr_Restore(a1, a2, a3);
        why = WHY_RERAISE;
        ERROR();
} else if (a1 != Py_None) {
        PyErr_SetString(PyExc_SystemError, "'finally' pops bad exception");
        why = WHY_EXCEPTION;
}
Py_DECREF(a1);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_on_error2next(on_error,__none__TOS);
LABEL2(end_finally)
NEXT_P2;
}

LABEL(build_class) /* build_class ( a1 a2 a3 -- a  dec:a1 dec:a2 dec:a3  next:on_error ) */
NAME("build_class")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-3],a1);
vm_Obj2a(stack_pointer[-2],a2);
vm_Obj2a(stack_pointerTOS,a3);
stack_pointer += -2;
{
x = a = build_class(a3, a2, a1);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[2]);
vm_a2decref(a2,__none__[1]);
vm_a2decref(a3,__none__TOS);
vm_on_error2next(on_error,__none__TOS);
LABEL2(build_class)
NEXT_P2;
}

LABEL(build_tuple) /* build_tuple ( #i -- ) */
NAME("build_tuple")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397768 ),i);
INC_IP(1);
{
x = PyTuple_New(i);
if (x != NULL) {
        for (; --i >= 0;) {
                a1 = POP();
                PyTuple_SET_ITEM(x, i, a1);
        }
        PUSH(x);
        NEXT();
}
ERROR();
}

NEXT_P1;
LABEL2(build_tuple)
NEXT_P2;
}

LABEL(build_list) /* build_list ( #i -- ) */
NAME("build_list")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397769 ),i);
INC_IP(1);
{
x = PyList_New(i);
if (x != NULL) {
        for (; --i >= 0;) {
                a1 = POP();
                PyList_SET_ITEM(x, i, a1);
        }
        PUSH(x);
        NEXT();
}
ERROR();
}

NEXT_P1;
LABEL2(build_list)
NEXT_P2;
}

LABEL(build_map) /* build_map ( #i -- a  next:a ) */
NAME("build_map")
{
DEF_CA
Oparg i;
Obj a;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
vm_Cell2i(IMM_ARG(IPTOS,305397770 ),i);
INC_IP(1);
stack_pointer += 1;
{
a = PyDict_New(); /* oparg not used */
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2next(a,__none__TOS);
LABEL2(build_map)
NEXT_P2;
}

LABEL(build_slice_two) /* build_slice_two ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("build_slice_two")
{
DEF_CA
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
stack_pointer += -1;
{
a = PySlice_New(a1, a2, NULL);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(build_slice_two)
NEXT_P2;
}

LABEL(build_slice_three) /* build_slice_three ( a1 a2 a3 -- a  dec:a1 dec:a2 dec:a3  next:a ) */
NAME("build_slice_three")
{
DEF_CA
Obj a1;
Obj a2;
Obj a3;
Obj a;
NEXT_P0;
vm_Obj2a(stack_pointer[-3],a1);
vm_Obj2a(stack_pointer[-2],a2);
vm_Obj2a(stack_pointerTOS,a3);
stack_pointer += -2;
{
a = PySlice_New(a1, a2, a3);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[2]);
vm_a2decref(a2,__none__[1]);
vm_a2decref(a3,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(build_slice_three)
NEXT_P2;
}

LABEL(store_name) /* store_name ( #i -- ) */
NAME("store_name")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397771 ),i);
INC_IP(1);
{
a2 = GETITEM(names, i);
a1 = POP();
if ((x = f->f_locals) != NULL) {
        if (PyDict_CheckExact(x))
                err = PyDict_SetItem(x, a2, a1);
        else
                err = PyObject_SetItem(x, a2, a1);
        Py_DECREF(a1);
        if (err == 0) NEXT();
        ERROR();
}
PyErr_Format(PyExc_SystemError,
             "no locals found when storing %s",
             PyObject_REPR(a2));
ERROR();
}

NEXT_P1;
LABEL2(store_name)
NEXT_P2;
}

LABEL(store_attr) /* store_attr ( #i a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("store_attr")
{
DEF_CA
Oparg i;
Obj a1;
Obj a2;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397772 ),i);
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
INC_IP(1);
stack_pointer += -2;
{
a3 = GETITEM(names, i);
err = PyObject_SetAttr(a2, a3, a1); /* a2.a3 = a1 */
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(store_attr)
NEXT_P2;
}

LABEL(store_global) /* store_global ( #i a1 -- dec:a1  next:error ) */
NAME("store_global")
{
DEF_CA
Oparg i;
Obj a1;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397773 ),i);
vm_Obj2a(stack_pointerTOS,a1);
INC_IP(1);
stack_pointer += -1;
{
a2 = GETITEM(names, i);
err = PyDict_SetItem(f->f_globals, a2, a1);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__TOS);
vm_error2next(error,__none__TOS);
LABEL2(store_global)
NEXT_P2;
}

LABEL(store_deref) /* store_deref ( #i a -- dec:a  next:next_opcode ) */
NAME("store_deref")
{
DEF_CA
Oparg i;
Obj a;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397774 ),i);
vm_Obj2a(stack_pointerTOS,a);
INC_IP(1);
stack_pointer += -1;
{
x = freevars[i];
PyCell_Set(x, a);
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a,__none__TOS);
vm_next_opcode2next(next_opcode,__none__TOS);
LABEL2(store_deref)
NEXT_P2;
}

LABEL(delete_name) /* delete_name ( #i -- ) */
NAME("delete_name")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397775 ),i);
INC_IP(1);
{
a1 = GETITEM(names, i);
if ((x = f->f_locals) != NULL) {
        if ((err = PyObject_DelItem(x, a1)) != 0)
                format_exc_check_arg(PyExc_NameError, NAME_ERROR_MSG, a1);
        ERROR();
}
PyErr_Format(PyExc_SystemError,
             "no locals when deleting %s",
             PyObject_REPR(a1));
ERROR();
}

NEXT_P1;
LABEL2(delete_name)
NEXT_P2;
}

LABEL(delete_attr) /* delete_attr ( #i a1 -- dec:a1  next:on_error ) */
NAME("delete_attr")
{
DEF_CA
Oparg i;
Obj a1;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397776 ),i);
vm_Obj2a(stack_pointerTOS,a1);
INC_IP(1);
stack_pointer += -1;
{
a2 = GETITEM(names, i);
err = PyObject_SetAttr(a1, a2, (PyObject *) NULL); /* del a1.a2 */
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
vm_a2decref(a1,__none__TOS);
vm_on_error2next(on_error,__none__TOS);
LABEL2(delete_attr)
NEXT_P2;
}

LABEL(delete_global) /* delete_global ( #i -- next:on_error ) */
NAME("delete_global")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397777 ),i);
INC_IP(1);
{
a1 = GETITEM(names, i);
if ((err = PyDict_DelItem(f->f_globals, a1)) != 0)
        format_exc_check_arg(PyExc_NameError, GLOBAL_NAME_ERROR_MSG, a1);
}

NEXT_P1;
vm_on_error2next(on_error,__none__TOS);
LABEL2(delete_global)
NEXT_P2;
}

LABEL(delete_fast) /* delete_fast ( #i -- ) */
NAME("delete_fast")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397778 ),i);
INC_IP(1);
{
x = GETLOCAL(i);
if (x != NULL) {
        SETLOCAL(i, NULL);
        NEXT();
}
format_exc_check_arg(
        PyExc_UnboundLocalError,
        UNBOUNDLOCAL_ERROR_MSG,
        PyTuple_GetItem(co->co_varnames, i));
ERROR();
}

NEXT_P1;
LABEL2(delete_fast)
NEXT_P2;
}

LABEL(unpack_sequence) /* unpack_sequence ( #i a1 -- ) */
NAME("unpack_sequence")
{
DEF_CA
Oparg i;
Obj a1;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397779 ),i);
vm_Obj2a(stack_pointerTOS,a1);
INC_IP(1);
stack_pointer += -1;
{
if (PyTuple_CheckExact(a1) && PyTuple_GET_SIZE(a1) == i) {
        PyObject **items = ((PyTupleObject *)a1)->ob_item;
        while (i--) {
                a2 = items[i];
                Py_INCREF(a2);
                PUSH(a2);
        }
        Py_DECREF(a1);
        NEXT();
} else if (PyList_CheckExact(a1) && PyList_GET_SIZE(a1) == i) {
        PyObject **items = ((PyListObject *)a1)->ob_item;
        while (i--) {
                a2 = items[i];
                Py_INCREF(a2);
                PUSH(a2);
        }
} else if (unpack_iterable(a1, i, stack_pointer + i)) {
        stack_pointer += i;
} else {
        /* unpack_iterable() raised an exception */
        why = WHY_EXCEPTION;
}
Py_DECREF(a1);
ERROR();
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
LABEL2(unpack_sequence)
NEXT_P2;
}

LABEL(compare_op) /* compare_op ( #i a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("compare_op")
{
DEF_CA
Oparg i;
Obj a1;
Obj a2;
Obj a;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397780 ),i);
vm_Obj2a(stack_pointer[-2],a1);
vm_Obj2a(stack_pointerTOS,a2);
INC_IP(1);
stack_pointer += -1;
{
if (PyInt_CheckExact(a2) && PyInt_CheckExact(a1)) {
        /* INLINE: cmp(int, int) */
        register long u, v;
        register int res;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        switch (i) {
        case PyCmp_LT: res = u <  v; break;
        case PyCmp_LE: res = u <= v; break;
        case PyCmp_EQ: res = u == v; break;
        case PyCmp_NE: res = u != v; break;
        case PyCmp_GT: res = u >  v; break;
        case PyCmp_GE: res = u >= v; break;
        case PyCmp_IS: res = a1 == a2; break;
        case PyCmp_IS_NOT: res = a1 != a2; break;
        default: res = -1;
        }
        if (res < 0)
                a = cmp_outcome(i, a1, a2);
        else {
                a = res ? Py_True : Py_False;
                Py_INCREF(a);
        }
} else
        a = cmp_outcome(i, a1, a2);
}

NEXT_P1;
vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
LABEL2(compare_op)
NEXT_P2;
}

LABEL(import_name) /* import_name ( #i -- ) */
NAME("import_name")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397781 ),i);
INC_IP(1);
{
a3 = GETITEM(names, i);
x = PyDict_GetItemString(f->f_builtins, "__import__");
if (x == NULL) {
        PyErr_SetString(PyExc_ImportError, "__import__ not found");
        ERROR();
}
Py_INCREF(x);
a2 = POP();
a1 = TOP();
if (PyInt_AsLong(a1) != -1 || PyErr_Occurred())
        a3 = PyTuple_Pack(5,
                          a3,
                          f->f_globals,
                          f->f_locals == NULL ? Py_None : f->f_locals,
                          a2,
                          a1);
else
        a3 = PyTuple_Pack(4,
                          a3,
                          f->f_globals,
                          f->f_locals == NULL ? Py_None : f->f_locals,
                          a2);
Py_DECREF(a2);
Py_DECREF(a1);
if (a3 == NULL) {
        a1 = POP();
        Py_DECREF(x);
        x = NULL;
        ERROR();
}
a2 = x;
x = PyEval_CallObject(a2, a3);
Py_DECREF(a2);
Py_DECREF(a3);
SET_TOP(x);
if (x != NULL) NEXT();
ERROR();
}

NEXT_P1;
LABEL2(import_name)
NEXT_P2;
}

LABEL(import_star) /* import_star ( a1 -- ) */
NAME("import_star")
{
DEF_CA
Obj a1;
NEXT_P0;
vm_Obj2a(stack_pointerTOS,a1);
stack_pointer += -1;
{
PyFrame_FastToLocals(f);
if ((x = f->f_locals) == NULL) {
        PyErr_SetString(PyExc_SystemError, "no locals found during 'import *'");
        ERROR();
}
err = import_all_from(x, a1);
PyFrame_LocalsToFast(f, 0);
Py_DECREF(a1);
if (err == 0) NEXT();
ERROR();
}

NEXT_P1;
IF_stack_pointerTOS(stack_pointerTOS = stack_pointer[-1]);
LABEL2(import_star)
NEXT_P2;
}

LABEL(import_from) /* import_from ( #i a1 -- a1 a3  next:a3 ) */
NAME("import_from")
{
DEF_CA
Oparg i;
Obj a1;
Obj a3;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397782 ),i);
vm_Obj2a(stack_pointerTOS,a1);
INC_IP(1);
stack_pointer += 1;
{
a2 = GETITEM(names, i);
a3 = import_from(a1, a2);
}

NEXT_P1;
IF_stack_pointerTOS(vm_a2Obj(a1,stack_pointer[-2]););
vm_a2Obj(a3,stack_pointerTOS);
vm_a2next(a3,__none__TOS);
LABEL2(import_from)
NEXT_P2;
}

LABEL(jump_forward) /* jump_forward ( #i -- ) */
NAME("jump_forward")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397783 ),i);
INC_IP(1);
{
JUMPBY(i);
}

NEXT_P1;
LABEL2(jump_forward)
NEXT_P2;
}

LABEL(jump_if_false) /* jump_if_false ( #i a1 -- a1 ) */
NAME("jump_if_false")
{
DEF_CA
Oparg i;
Obj a1;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397784 ),i);
vm_Obj2a(stack_pointerTOS,a1);
INC_IP(1);
{
if (a1 == Py_True)
        ;
else if (a1 == Py_False)
        JUMPBY(i);
else {
        err = PyObject_IsTrue(a1);
        if (err > 0)
                err = 0;
        else if (err == 0)
                JUMPBY(i);
        else
                ERROR();
        NEXT();
}
}

NEXT_P1;
LABEL2(jump_if_false)
NEXT_P2;
}

LABEL(jump_if_true) /* jump_if_true ( #i a1 -- a1 ) */
NAME("jump_if_true")
{
DEF_CA
Oparg i;
Obj a1;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397785 ),i);
vm_Obj2a(stack_pointerTOS,a1);
INC_IP(1);
{
if (a1 == Py_False)
        ;
else if (a1 == Py_True)
        JUMPBY(i);
else {
        err = PyObject_IsTrue(a1);
        if (err > 0) {
                err = 0;
                JUMPBY(i);
        } else if (err == 0)
                ;
        else
                ERROR();
        NEXT();
}
}

NEXT_P1;
LABEL2(jump_if_true)
NEXT_P2;
}

LABEL(jump_absolute) /* jump_absolute ( #i -- next:next_opcode ) */
NAME("jump_absolute")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397786 ),i);
INC_IP(1);
{
JUMPTO(i);
}

NEXT_P1;
vm_next_opcode2next(next_opcode,__none__TOS);
LABEL2(jump_absolute)
NEXT_P2;
}

LABEL(get_iter) /* get_iter ( -- ) */
NAME("get_iter")
{
DEF_CA
NEXT_P0;
{
/* before: [obj]; after [getiter(obj)] */
a1 = TOP();
x = PyObject_GetIter(a1);
Py_DECREF(a1);
if (x != NULL) {
        SET_TOP(x);
        NEXT();
}
STACKADJ(-1);
ERROR();
}

NEXT_P1;
LABEL2(get_iter)
NEXT_P2;
}

LABEL(for_iter) /* for_iter ( #i -- ) */
NAME("for_iter")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397787 ),i);
INC_IP(1);
{
/* before: [iter]; after: [iter, iter()] *or* [] */
a1 = TOP();
x = (*a1->ob_type->tp_iternext)(a1);
if (x != NULL) {
        PUSH(x);
        NEXT();
}
if (PyErr_Occurred()) {
        if (!PyErr_ExceptionMatches(PyExc_StopIteration))
                ERROR();
        PyErr_Clear();
}
/* iterator ended normally */
x = a1 = POP();
Py_DECREF(a1);
JUMPBY(i);
NEXT();
}

NEXT_P1;
LABEL2(for_iter)
NEXT_P2;
}

LABEL(break_loop) /* break_loop ( -- next:fast_block_end ) */
NAME("break_loop")
{
DEF_CA
NEXT_P0;
{
why = WHY_BREAK;
}

NEXT_P1;
vm_fast_block_end2next(fast_block_end,__none__TOS);
LABEL2(break_loop)
NEXT_P2;
}

LABEL(continue_loop) /* continue_loop ( #i -- ) */
NAME("continue_loop")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397788 ),i);
INC_IP(1);
{
retval = PyInt_FromLong(i);
if (!retval) {
        x = NULL;
        ERROR();
}
why = WHY_CONTINUE;
goto fast_block_end;
}

NEXT_P1;
LABEL2(continue_loop)
NEXT_P2;
}

LABEL(setup_loop) /* setup_loop ( #i -- next:next_opcode ) */
NAME("setup_loop")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397789 ),i);
INC_IP(1);
{
PyFrame_BlockSetup(f, SETUP_LOOP, INSTR_OFFSET() + i, STACK_LEVEL());
}

NEXT_P1;
vm_next_opcode2next(next_opcode,__none__TOS);
LABEL2(setup_loop)
NEXT_P2;
}

LABEL(setup_except) /* setup_except ( #i -- next:next_opcode ) */
NAME("setup_except")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397790 ),i);
INC_IP(1);
{
PyFrame_BlockSetup(f, SETUP_EXCEPT, INSTR_OFFSET() + i, STACK_LEVEL());
}

NEXT_P1;
vm_next_opcode2next(next_opcode,__none__TOS);
LABEL2(setup_except)
NEXT_P2;
}

LABEL(setup_finally) /* setup_finally ( #i -- next:next_opcode ) */
NAME("setup_finally")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397791 ),i);
INC_IP(1);
{
PyFrame_BlockSetup(f, SETUP_FINALLY, INSTR_OFFSET() + i, STACK_LEVEL());
}

NEXT_P1;
vm_next_opcode2next(next_opcode,__none__TOS);
LABEL2(setup_finally)
NEXT_P2;
}

LABEL(with_cleanup) /* with_cleanup ( -- ) */
NAME("with_cleanup")
{
DEF_CA
NEXT_P0;
{
/* TOP is the context.__exit__ bound method.
   Below that are 1-3 values indicating how/why
   we entered the finally clause:
   - SECOND = None
   - (SECOND, THIRD) = (WHY_{RETURN,CONTINUE}), retval
   - SECOND = WHY_*; no retval below it
   - (SECOND, THIRD, FOURTH) = exc_info()
   In the last case, we must call
     TOP(SECOND, THIRD, FOURTH)
   otherwise we must call
     TOP(None, None, None)
   In addition, if the stack represents an exception,
   *and* the function call returns a 'true' value, we
   "zap" this information, to prevent END_FINALLY from
   re-raising the exception.  (But non-local gotos
   should still be resumed.)
*/
x = TOP();
a1 = SECOND();
if (PyInt_Check(a1) || a1 == Py_None) {
        a1 = a2 = a3 = Py_None;
} else {
        a2 = THIRD();
        a3 = FOURTH();
}
/* XXX Not the fastest way to call it... */
x = PyObject_CallFunctionObjArgs(x, a1, a2, a3, NULL);
if (x == NULL) {
        ERROR();
}
if (a1 != Py_None && PyObject_IsTrue(x)) {
        /* There was an exception and a true return */
        Py_DECREF(x);
        x = TOP(); /* Again */
        STACKADJ(-3);
        Py_INCREF(Py_None);
        SET_TOP(Py_None);
        Py_DECREF(x);
        Py_DECREF(a1);
        Py_DECREF(a2);
        Py_DECREF(a3);
} else {
        /* Let END_FINALLY do its thing */
        Py_DECREF(x);
        x = POP();
        Py_DECREF(x);
}
ERROR();
}

NEXT_P1;
LABEL2(with_cleanup)
NEXT_P2;
}

LABEL(call_function) /* call_function ( #i -- ) */
NAME("call_function")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397792 ),i);
INC_IP(1);
{
PyObject **sp = stack_pointer;
x = call_function(&sp, i);
stack_pointer = sp;
PUSH(x);
if (x != NULL) NEXT();
ERROR();
}

NEXT_P1;
LABEL2(call_function)
NEXT_P2;
}

LABEL(call_function_var_kw) /* call_function_var_kw ( #i -- ) */
NAME("call_function_var_kw")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397793 ),i);
INC_IP(1);
{
int opcode = i & 0x0000FFFF;
int oparg  = i>>16;
int na     = oparg & 0xff;
int nk     = (oparg>>8) & 0xff;
int flags  = (opcode - CALL_FUNCTION) & 3;
int n      = na + 2 * nk;
PyObject **pfunc, *func, **sp;
if (flags & CALL_FLAG_VAR)
        n++;
if (flags & CALL_FLAG_KW)
        n++;
pfunc = stack_pointer - n - 1;
func  = *pfunc;
if (PyMethod_Check(func) && PyMethod_GET_SELF(func) != NULL) {
        PyObject *self = PyMethod_GET_SELF(func);
        Py_INCREF(self);
        func = PyMethod_GET_FUNCTION(func);
        Py_INCREF(func);
        Py_DECREF(*pfunc);
        *pfunc = self;
        na++;
        n++;
} else
        Py_INCREF(func);
sp = stack_pointer;
x = ext_do_call(func, &sp, flags, na, nk);
stack_pointer = sp;
Py_DECREF(func);
while (stack_pointer > pfunc) {
        a1 = POP();
        Py_DECREF(a1);
}
PUSH(x);
if (x != NULL) NEXT();
ERROR();
}

NEXT_P1;
LABEL2(call_function_var_kw)
NEXT_P2;
}

LABEL(make_function) /* make_function ( #i -- ) */
NAME("make_function")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397794 ),i);
INC_IP(1);
{
a1 = POP(); /* code object */
x = PyFunction_New(a1, f->f_globals);
Py_DECREF(a1);
/* XXX Maybe this should be a separate opcode? */
if (x != NULL && i > 0) {
        a1 = PyTuple_New(i);
        if (a1 == NULL) {
                Py_DECREF(x);
                x = NULL;
                ERROR();
        }
        while (--i >= 0) {
                a2 = POP();
                PyTuple_SET_ITEM(a1, i, a2);
        }
        err = PyFunction_SetDefaults(x, a1);
        Py_DECREF(a1);
}
PUSH(x);
ERROR();
}

NEXT_P1;
LABEL2(make_function)
NEXT_P2;
}

LABEL(make_closure) /* make_closure ( #i -- ) */
NAME("make_closure")
{
DEF_CA
Oparg i;
NEXT_P0;
vm_Cell2i(IMM_ARG(IPTOS,305397795 ),i);
INC_IP(1);
{
a1 = POP(); /* code object */
x = PyFunction_New(a1, f->f_globals);
Py_DECREF(a1);
if (x != NULL) {
        a1 = POP();
        err = PyFunction_SetClosure(x, a1);
        Py_DECREF(a1);
}
if (x != NULL && i > 0) {
        a1 = PyTuple_New(i);
        if (a1 == NULL) {
                Py_DECREF(x);
                x = NULL;
                ERROR();
        }
        while (--i >= 0) {
                a2 = POP();
                PyTuple_SET_ITEM(a1, i, a2);
        }
        err = PyFunction_SetDefaults(x, a1);
        Py_DECREF(a1);
}
PUSH(x);
ERROR();
}

NEXT_P1;
LABEL2(make_closure)
NEXT_P2;
}

LABEL(ff)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397796 ),i);
stack_pointer += 2;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,stack_pointer[-2]);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397797 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2incref(a,__none__TOS);
}
NEXT_P1;
LABEL2(ff)
NEXT_P2;
}

LABEL(fc)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397798 ),i);
stack_pointer += 2;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,stack_pointer[-2]);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397799 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2incref(a,__none__TOS);
}
NEXT_P1;
LABEL2(fc)
NEXT_P2;
}

LABEL(cf)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397800 ),i);
stack_pointer += 2;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,stack_pointer[-2]);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397801 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2incref(a,__none__TOS);
}
NEXT_P1;
LABEL2(cf)
NEXT_P2;
}

LABEL(cc)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397802 ),i);
stack_pointer += 2;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,stack_pointer[-2]);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397803 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2incref(a,__none__TOS);
}
NEXT_P1;
LABEL2(cc)
NEXT_P2;
}

LABEL(ffbinary_power)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397804 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397805 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_power ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_power")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Power(a1, a2, Py_None);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_power)
NEXT_P2;
}

LABEL(fcbinary_power)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397806 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397807 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_power ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_power")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Power(a1, a2, Py_None);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_power)
NEXT_P2;
}

LABEL(cfbinary_power)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397808 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397809 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_power ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_power")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Power(a1, a2, Py_None);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_power)
NEXT_P2;
}

LABEL(ccbinary_power)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397810 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397811 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_power ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_power")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Power(a1, a2, Py_None);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_power)
NEXT_P2;
}

LABEL(ffbinary_multiply)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397812 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397813 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_multiply ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_multiply")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Multiply(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_multiply)
NEXT_P2;
}

LABEL(fcbinary_multiply)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397814 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397815 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_multiply ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_multiply")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Multiply(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_multiply)
NEXT_P2;
}

LABEL(cfbinary_multiply)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397816 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397817 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_multiply ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_multiply")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Multiply(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_multiply)
NEXT_P2;
}

LABEL(ccbinary_multiply)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397818 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397819 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_multiply ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_multiply")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Multiply(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_multiply)
NEXT_P2;
}

LABEL(ffbinary_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397820 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397821 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Divide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_divide)
NEXT_P2;
}

LABEL(fcbinary_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397822 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397823 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Divide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_divide)
NEXT_P2;
}

LABEL(cfbinary_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397824 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397825 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Divide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_divide)
NEXT_P2;
}

LABEL(ccbinary_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397826 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397827 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Divide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_divide)
NEXT_P2;
}

LABEL(ffbinary_true_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397828 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397829 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_true_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_true_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_TrueDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_true_divide)
NEXT_P2;
}

LABEL(fcbinary_true_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397830 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397831 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_true_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_true_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_TrueDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_true_divide)
NEXT_P2;
}

LABEL(cfbinary_true_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397832 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397833 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_true_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_true_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_TrueDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_true_divide)
NEXT_P2;
}

LABEL(ccbinary_true_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397834 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397835 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_true_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_true_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_TrueDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_true_divide)
NEXT_P2;
}

LABEL(ffbinary_floor_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397836 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397837 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_floor_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_floor_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_FloorDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_floor_divide)
NEXT_P2;
}

LABEL(fcbinary_floor_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397838 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397839 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_floor_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_floor_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_FloorDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_floor_divide)
NEXT_P2;
}

LABEL(cfbinary_floor_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397840 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397841 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_floor_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_floor_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_FloorDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_floor_divide)
NEXT_P2;
}

LABEL(ccbinary_floor_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397842 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397843 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_floor_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_floor_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_FloorDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_floor_divide)
NEXT_P2;
}

LABEL(ffbinary_modulo)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397844 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397845 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_modulo ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_modulo")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Remainder(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_modulo)
NEXT_P2;
}

LABEL(fcbinary_modulo)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397846 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397847 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_modulo ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_modulo")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Remainder(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_modulo)
NEXT_P2;
}

LABEL(cfbinary_modulo)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397848 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397849 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_modulo ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_modulo")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Remainder(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_modulo)
NEXT_P2;
}

LABEL(ccbinary_modulo)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397850 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397851 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_modulo ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_modulo")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Remainder(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_modulo)
NEXT_P2;
}

LABEL(ffbinary_add)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397852 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397853 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_add ( a1 a2 -- a   next:a ) */
NAME("binary_add")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int + int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u + v;
        if ((i^u) < 0 && (i^v) < 0)
                a = PyNumber_Add(a1, a2);
        else
                a = PyInt_FromLong(i);
        Py_DECREF(a1);
} else if (PyString_CheckExact(a1) && PyString_CheckExact(a2)) {
        int opcode;
        ADDR2OP(next_instr->opcode, opcode);
        a = string_concatenate(a1, a2, f, opcode, (next_instr+1)->oparg);
        /* string_concatenate consumed the ref to v */
} else {
        a = PyNumber_Add(a1, a2);
        Py_DECREF(a1);
}
Py_DECREF(a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_add)
NEXT_P2;
}

LABEL(fcbinary_add)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397854 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397855 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_add ( a1 a2 -- a   next:a ) */
NAME("binary_add")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int + int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u + v;
        if ((i^u) < 0 && (i^v) < 0)
                a = PyNumber_Add(a1, a2);
        else
                a = PyInt_FromLong(i);
        Py_DECREF(a1);
} else if (PyString_CheckExact(a1) && PyString_CheckExact(a2)) {
        int opcode;
        ADDR2OP(next_instr->opcode, opcode);
        a = string_concatenate(a1, a2, f, opcode, (next_instr+1)->oparg);
        /* string_concatenate consumed the ref to v */
} else {
        a = PyNumber_Add(a1, a2);
        Py_DECREF(a1);
}
Py_DECREF(a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_add)
NEXT_P2;
}

LABEL(cfbinary_add)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397856 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397857 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_add ( a1 a2 -- a   next:a ) */
NAME("binary_add")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int + int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u + v;
        if ((i^u) < 0 && (i^v) < 0)
                a = PyNumber_Add(a1, a2);
        else
                a = PyInt_FromLong(i);
        Py_DECREF(a1);
} else if (PyString_CheckExact(a1) && PyString_CheckExact(a2)) {
        int opcode;
        ADDR2OP(next_instr->opcode, opcode);
        a = string_concatenate(a1, a2, f, opcode, (next_instr+1)->oparg);
        /* string_concatenate consumed the ref to v */
} else {
        a = PyNumber_Add(a1, a2);
        Py_DECREF(a1);
}
Py_DECREF(a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_add)
NEXT_P2;
}

LABEL(ccbinary_add)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397858 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397859 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_add ( a1 a2 -- a   next:a ) */
NAME("binary_add")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int + int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u + v;
        if ((i^u) < 0 && (i^v) < 0)
                a = PyNumber_Add(a1, a2);
        else
                a = PyInt_FromLong(i);
        Py_DECREF(a1);
} else if (PyString_CheckExact(a1) && PyString_CheckExact(a2)) {
        int opcode;
        ADDR2OP(next_instr->opcode, opcode);
        a = string_concatenate(a1, a2, f, opcode, (next_instr+1)->oparg);
        /* string_concatenate consumed the ref to v */
} else {
        a = PyNumber_Add(a1, a2);
        Py_DECREF(a1);
}
Py_DECREF(a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_add)
NEXT_P2;
}

LABEL(ffbinary_subtract)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397860 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397861 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_subtract ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_subtract")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int - int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u - v;
        if ((i^u) < 0 && (i^~v) < 0)
                a = PyNumber_Subtract(a1, a2);
        else
                a = PyInt_FromLong(i);
} else
        a = PyNumber_Subtract(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_subtract)
NEXT_P2;
}

LABEL(fcbinary_subtract)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397862 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397863 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_subtract ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_subtract")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int - int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u - v;
        if ((i^u) < 0 && (i^~v) < 0)
                a = PyNumber_Subtract(a1, a2);
        else
                a = PyInt_FromLong(i);
} else
        a = PyNumber_Subtract(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_subtract)
NEXT_P2;
}

LABEL(cfbinary_subtract)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397864 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397865 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_subtract ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_subtract")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int - int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u - v;
        if ((i^u) < 0 && (i^~v) < 0)
                a = PyNumber_Subtract(a1, a2);
        else
                a = PyInt_FromLong(i);
} else
        a = PyNumber_Subtract(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_subtract)
NEXT_P2;
}

LABEL(ccbinary_subtract)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397866 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397867 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_subtract ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_subtract")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int - int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u - v;
        if ((i^u) < 0 && (i^~v) < 0)
                a = PyNumber_Subtract(a1, a2);
        else
                a = PyInt_FromLong(i);
} else
        a = PyNumber_Subtract(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_subtract)
NEXT_P2;
}

LABEL(ffbinary_subscr)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397868 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397869 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_subscr ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_subscr")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyList_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: list[int] */
        Py_ssize_t i = PyInt_AsSsize_t(a2);
        if (i < 0)
                i += PyList_GET_SIZE(a1);
        if (i >= 0 && i < PyList_GET_SIZE(a1)) {
                a = PyList_GET_ITEM(a1, i);
                Py_INCREF(a);
        } else
                a = PyObject_GetItem(a1, a2);
} else
        a = PyObject_GetItem(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_subscr)
NEXT_P2;
}

LABEL(fcbinary_subscr)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397870 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397871 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_subscr ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_subscr")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyList_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: list[int] */
        Py_ssize_t i = PyInt_AsSsize_t(a2);
        if (i < 0)
                i += PyList_GET_SIZE(a1);
        if (i >= 0 && i < PyList_GET_SIZE(a1)) {
                a = PyList_GET_ITEM(a1, i);
                Py_INCREF(a);
        } else
                a = PyObject_GetItem(a1, a2);
} else
        a = PyObject_GetItem(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_subscr)
NEXT_P2;
}

LABEL(cfbinary_subscr)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397872 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397873 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_subscr ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_subscr")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyList_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: list[int] */
        Py_ssize_t i = PyInt_AsSsize_t(a2);
        if (i < 0)
                i += PyList_GET_SIZE(a1);
        if (i >= 0 && i < PyList_GET_SIZE(a1)) {
                a = PyList_GET_ITEM(a1, i);
                Py_INCREF(a);
        } else
                a = PyObject_GetItem(a1, a2);
} else
        a = PyObject_GetItem(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_subscr)
NEXT_P2;
}

LABEL(ccbinary_subscr)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397874 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397875 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_subscr ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_subscr")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyList_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: list[int] */
        Py_ssize_t i = PyInt_AsSsize_t(a2);
        if (i < 0)
                i += PyList_GET_SIZE(a1);
        if (i >= 0 && i < PyList_GET_SIZE(a1)) {
                a = PyList_GET_ITEM(a1, i);
                Py_INCREF(a);
        } else
                a = PyObject_GetItem(a1, a2);
} else
        a = PyObject_GetItem(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_subscr)
NEXT_P2;
}

LABEL(ffbinary_lshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397876 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397877 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_lshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_lshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Lshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_lshift)
NEXT_P2;
}

LABEL(fcbinary_lshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397878 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397879 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_lshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_lshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Lshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_lshift)
NEXT_P2;
}

LABEL(cfbinary_lshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397880 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397881 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_lshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_lshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Lshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_lshift)
NEXT_P2;
}

LABEL(ccbinary_lshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397882 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397883 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_lshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_lshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Lshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_lshift)
NEXT_P2;
}

LABEL(ffbinary_rshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397884 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397885 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_rshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_rshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Rshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_rshift)
NEXT_P2;
}

LABEL(fcbinary_rshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397886 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397887 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_rshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_rshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Rshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_rshift)
NEXT_P2;
}

LABEL(cfbinary_rshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397888 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397889 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_rshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_rshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Rshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_rshift)
NEXT_P2;
}

LABEL(ccbinary_rshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397890 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397891 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_rshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_rshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Rshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_rshift)
NEXT_P2;
}

LABEL(ffbinary_and)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397892 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397893 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_and ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_and")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_And(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_and)
NEXT_P2;
}

LABEL(fcbinary_and)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397894 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397895 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_and ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_and")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_And(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_and)
NEXT_P2;
}

LABEL(cfbinary_and)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397896 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397897 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_and ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_and")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_And(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_and)
NEXT_P2;
}

LABEL(ccbinary_and)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397898 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397899 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_and ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_and")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_And(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_and)
NEXT_P2;
}

LABEL(ffbinary_xor)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397900 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397901 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_xor ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_xor")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Xor(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_xor)
NEXT_P2;
}

LABEL(fcbinary_xor)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397902 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397903 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_xor ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_xor")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Xor(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_xor)
NEXT_P2;
}

LABEL(cfbinary_xor)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397904 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397905 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_xor ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_xor")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Xor(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_xor)
NEXT_P2;
}

LABEL(ccbinary_xor)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397906 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397907 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_xor ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_xor")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Xor(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_xor)
NEXT_P2;
}

LABEL(ffbinary_or)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397908 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397909 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_or ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_or")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Or(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffbinary_or)
NEXT_P2;
}

LABEL(fcbinary_or)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397910 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397911 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_or ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_or")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Or(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcbinary_or)
NEXT_P2;
}

LABEL(cfbinary_or)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397912 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397913 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_or ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_or")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Or(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfbinary_or)
NEXT_P2;
}

LABEL(ccbinary_or)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397914 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397915 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* binary_or ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("binary_or")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_Or(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccbinary_or)
NEXT_P2;
}

LABEL(fflist_append)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397916 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397917 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* list_append ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("list_append")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = PyList_Append(a1, a2);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(fflist_append)
NEXT_P2;
}

LABEL(fclist_append)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397918 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397919 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* list_append ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("list_append")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = PyList_Append(a1, a2);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(fclist_append)
NEXT_P2;
}

LABEL(cflist_append)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397920 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397921 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* list_append ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("list_append")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = PyList_Append(a1, a2);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(cflist_append)
NEXT_P2;
}

LABEL(cclist_append)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397922 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397923 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* list_append ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("list_append")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = PyList_Append(a1, a2);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(cclist_append)
NEXT_P2;
}

LABEL(ffinplace_power)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397924 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397925 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_power ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_power")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlacePower(a1, a2, Py_None);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_power)
NEXT_P2;
}

LABEL(fcinplace_power)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397926 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397927 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_power ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_power")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlacePower(a1, a2, Py_None);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_power)
NEXT_P2;
}

LABEL(cfinplace_power)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397928 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397929 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_power ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_power")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlacePower(a1, a2, Py_None);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_power)
NEXT_P2;
}

LABEL(ccinplace_power)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397930 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397931 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_power ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_power")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlacePower(a1, a2, Py_None);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_power)
NEXT_P2;
}

LABEL(ffinplace_multiply)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397932 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397933 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_multiply ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_multiply")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceMultiply(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_multiply)
NEXT_P2;
}

LABEL(fcinplace_multiply)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397934 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397935 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_multiply ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_multiply")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceMultiply(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_multiply)
NEXT_P2;
}

LABEL(cfinplace_multiply)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397936 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397937 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_multiply ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_multiply")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceMultiply(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_multiply)
NEXT_P2;
}

LABEL(ccinplace_multiply)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397938 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397939 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_multiply ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_multiply")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceMultiply(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_multiply)
NEXT_P2;
}

LABEL(ffinplace_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397940 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397941 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_divide)
NEXT_P2;
}

LABEL(fcinplace_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397942 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397943 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_divide)
NEXT_P2;
}

LABEL(cfinplace_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397944 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397945 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_divide)
NEXT_P2;
}

LABEL(ccinplace_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397946 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397947 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_divide)
NEXT_P2;
}

LABEL(ffinplace_true_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397948 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397949 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_true_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_true_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceTrueDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_true_divide)
NEXT_P2;
}

LABEL(fcinplace_true_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397950 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397951 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_true_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_true_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceTrueDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_true_divide)
NEXT_P2;
}

LABEL(cfinplace_true_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397952 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397953 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_true_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_true_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceTrueDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_true_divide)
NEXT_P2;
}

LABEL(ccinplace_true_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397954 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397955 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_true_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_true_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceTrueDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_true_divide)
NEXT_P2;
}

LABEL(ffinplace_floor_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397956 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397957 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_floor_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_floor_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceFloorDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_floor_divide)
NEXT_P2;
}

LABEL(fcinplace_floor_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397958 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397959 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_floor_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_floor_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceFloorDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_floor_divide)
NEXT_P2;
}

LABEL(cfinplace_floor_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397960 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397961 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_floor_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_floor_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceFloorDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_floor_divide)
NEXT_P2;
}

LABEL(ccinplace_floor_divide)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397962 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397963 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_floor_divide ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_floor_divide")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceFloorDivide(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_floor_divide)
NEXT_P2;
}

LABEL(ffinplace_modulo)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397964 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397965 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_modulo ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_modulo")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceRemainder(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_modulo)
NEXT_P2;
}

LABEL(fcinplace_modulo)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397966 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397967 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_modulo ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_modulo")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceRemainder(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_modulo)
NEXT_P2;
}

LABEL(cfinplace_modulo)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397968 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397969 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_modulo ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_modulo")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceRemainder(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_modulo)
NEXT_P2;
}

LABEL(ccinplace_modulo)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397970 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397971 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_modulo ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_modulo")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceRemainder(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_modulo)
NEXT_P2;
}

LABEL(ffinplace_add)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397972 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397973 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_add ( a1 a2 -- a   next:a ) */
NAME("inplace_add")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int + int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u + v;
        if ((i^u) < 0 && (i^v) < 0)
                a = PyNumber_InPlaceAdd(a1, a2);
        else
                a = PyInt_FromLong(i);
        Py_DECREF(a1);
} else if (PyString_CheckExact(a1) && PyString_CheckExact(a2)) {
        int opcode;
        ADDR2OP(next_instr->opcode, opcode);
        a = string_concatenate(a1, a2, f, opcode, (next_instr+1)->oparg);
        /* string_concatenate consumed the ref to v */
} else {
        a = PyNumber_InPlaceAdd(a1, a2);
        Py_DECREF(a1);
}
Py_DECREF(a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_add)
NEXT_P2;
}

LABEL(fcinplace_add)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397974 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397975 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_add ( a1 a2 -- a   next:a ) */
NAME("inplace_add")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int + int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u + v;
        if ((i^u) < 0 && (i^v) < 0)
                a = PyNumber_InPlaceAdd(a1, a2);
        else
                a = PyInt_FromLong(i);
        Py_DECREF(a1);
} else if (PyString_CheckExact(a1) && PyString_CheckExact(a2)) {
        int opcode;
        ADDR2OP(next_instr->opcode, opcode);
        a = string_concatenate(a1, a2, f, opcode, (next_instr+1)->oparg);
        /* string_concatenate consumed the ref to v */
} else {
        a = PyNumber_InPlaceAdd(a1, a2);
        Py_DECREF(a1);
}
Py_DECREF(a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_add)
NEXT_P2;
}

LABEL(cfinplace_add)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397976 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397977 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_add ( a1 a2 -- a   next:a ) */
NAME("inplace_add")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int + int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u + v;
        if ((i^u) < 0 && (i^v) < 0)
                a = PyNumber_InPlaceAdd(a1, a2);
        else
                a = PyInt_FromLong(i);
        Py_DECREF(a1);
} else if (PyString_CheckExact(a1) && PyString_CheckExact(a2)) {
        int opcode;
        ADDR2OP(next_instr->opcode, opcode);
        a = string_concatenate(a1, a2, f, opcode, (next_instr+1)->oparg);
        /* string_concatenate consumed the ref to v */
} else {
        a = PyNumber_InPlaceAdd(a1, a2);
        Py_DECREF(a1);
}
Py_DECREF(a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_add)
NEXT_P2;
}

LABEL(ccinplace_add)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397978 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397979 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_add ( a1 a2 -- a   next:a ) */
NAME("inplace_add")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int + int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u + v;
        if ((i^u) < 0 && (i^v) < 0)
                a = PyNumber_InPlaceAdd(a1, a2);
        else
                a = PyInt_FromLong(i);
        Py_DECREF(a1);
} else if (PyString_CheckExact(a1) && PyString_CheckExact(a2)) {
        int opcode;
        ADDR2OP(next_instr->opcode, opcode);
        a = string_concatenate(a1, a2, f, opcode, (next_instr+1)->oparg);
        /* string_concatenate consumed the ref to v */
} else {
        a = PyNumber_InPlaceAdd(a1, a2);
        Py_DECREF(a1);
}
Py_DECREF(a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_add)
NEXT_P2;
}

LABEL(ffinplace_subtract)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397980 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397981 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_subtract ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_subtract")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int - int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u - v;
        if ((i^u) < 0 && (i^~v) < 0)
                a = PyNumber_InPlaceSubtract(a1, a2);
        else
                a = PyInt_FromLong(i);
} else
        a = PyNumber_InPlaceSubtract(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_subtract)
NEXT_P2;
}

LABEL(fcinplace_subtract)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397982 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397983 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_subtract ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_subtract")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int - int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u - v;
        if ((i^u) < 0 && (i^~v) < 0)
                a = PyNumber_InPlaceSubtract(a1, a2);
        else
                a = PyInt_FromLong(i);
} else
        a = PyNumber_InPlaceSubtract(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_subtract)
NEXT_P2;
}

LABEL(cfinplace_subtract)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397984 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397985 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_subtract ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_subtract")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int - int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u - v;
        if ((i^u) < 0 && (i^~v) < 0)
                a = PyNumber_InPlaceSubtract(a1, a2);
        else
                a = PyInt_FromLong(i);
} else
        a = PyNumber_InPlaceSubtract(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_subtract)
NEXT_P2;
}

LABEL(ccinplace_subtract)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397986 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397987 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_subtract ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_subtract")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
if (PyInt_CheckExact(a1) && PyInt_CheckExact(a2)) {
        /* INLINE: int - int */
        register long u, v, i;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        i = u - v;
        if ((i^u) < 0 && (i^~v) < 0)
                a = PyNumber_InPlaceSubtract(a1, a2);
        else
                a = PyInt_FromLong(i);
} else
        a = PyNumber_InPlaceSubtract(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_subtract)
NEXT_P2;
}

LABEL(ffinplace_lshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397988 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397989 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_lshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_lshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceLshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_lshift)
NEXT_P2;
}

LABEL(fcinplace_lshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397990 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397991 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_lshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_lshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceLshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_lshift)
NEXT_P2;
}

LABEL(cfinplace_lshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397992 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397993 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_lshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_lshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceLshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_lshift)
NEXT_P2;
}

LABEL(ccinplace_lshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397994 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397995 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_lshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_lshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceLshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_lshift)
NEXT_P2;
}

LABEL(ffinplace_rshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397996 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397997 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_rshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_rshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceRshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_rshift)
NEXT_P2;
}

LABEL(fcinplace_rshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305397998 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305397999 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_rshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_rshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceRshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_rshift)
NEXT_P2;
}

LABEL(cfinplace_rshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398000 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398001 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_rshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_rshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceRshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_rshift)
NEXT_P2;
}

LABEL(ccinplace_rshift)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398002 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398003 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_rshift ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_rshift")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceRshift(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_rshift)
NEXT_P2;
}

LABEL(ffinplace_and)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398004 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398005 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_and ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_and")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceAnd(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_and)
NEXT_P2;
}

LABEL(fcinplace_and)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398006 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398007 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_and ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_and")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceAnd(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_and)
NEXT_P2;
}

LABEL(cfinplace_and)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398008 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398009 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_and ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_and")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceAnd(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_and)
NEXT_P2;
}

LABEL(ccinplace_and)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398010 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398011 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_and ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_and")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceAnd(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_and)
NEXT_P2;
}

LABEL(ffinplace_xor)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398012 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398013 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_xor ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_xor")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceXor(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_xor)
NEXT_P2;
}

LABEL(fcinplace_xor)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398014 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398015 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_xor ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_xor")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceXor(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_xor)
NEXT_P2;
}

LABEL(cfinplace_xor)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398016 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398017 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_xor ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_xor")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceXor(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_xor)
NEXT_P2;
}

LABEL(ccinplace_xor)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398018 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398019 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_xor ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_xor")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceXor(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_xor)
NEXT_P2;
}

LABEL(ffinplace_or)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398020 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398021 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_or ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_or")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceOr(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffinplace_or)
NEXT_P2;
}

LABEL(fcinplace_or)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398022 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398023 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_or ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_or")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceOr(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcinplace_or)
NEXT_P2;
}

LABEL(cfinplace_or)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398024 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398025 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_or ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_or")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceOr(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfinplace_or)
NEXT_P2;
}

LABEL(ccinplace_or)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398026 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398027 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* inplace_or ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("inplace_or")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = PyNumber_InPlaceOr(a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccinplace_or)
NEXT_P2;
}

LABEL(ffslice_left)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398028 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398029 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* slice_left ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("slice_left")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = apply_slice(a1, a2, NULL);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffslice_left)
NEXT_P2;
}

LABEL(fcslice_left)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398030 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398031 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* slice_left ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("slice_left")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = apply_slice(a1, a2, NULL);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcslice_left)
NEXT_P2;
}

LABEL(cfslice_left)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398032 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398033 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* slice_left ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("slice_left")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = apply_slice(a1, a2, NULL);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfslice_left)
NEXT_P2;
}

LABEL(ccslice_left)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398034 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398035 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* slice_left ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("slice_left")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = apply_slice(a1, a2, NULL);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccslice_left)
NEXT_P2;
}

LABEL(ffslice_right)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398036 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398037 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* slice_right ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("slice_right")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = apply_slice(a1, NULL, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffslice_right)
NEXT_P2;
}

LABEL(fcslice_right)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398038 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398039 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* slice_right ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("slice_right")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = apply_slice(a1, NULL, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fcslice_right)
NEXT_P2;
}

LABEL(cfslice_right)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398040 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398041 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* slice_right ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("slice_right")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = apply_slice(a1, NULL, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfslice_right)
NEXT_P2;
}

LABEL(ccslice_right)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398042 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398043 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* slice_right ( a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("slice_right")
{
Obj a1;
Obj a2;
Obj a;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
a = apply_slice(a1, NULL, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ccslice_right)
NEXT_P2;
}

LABEL(ffdelete_slice_left)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398044 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398045 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* delete_slice_left ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_slice_left")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = assign_slice(a1, a2, NULL, (PyObject *) NULL);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(ffdelete_slice_left)
NEXT_P2;
}

LABEL(fcdelete_slice_left)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398046 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398047 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* delete_slice_left ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_slice_left")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = assign_slice(a1, a2, NULL, (PyObject *) NULL);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(fcdelete_slice_left)
NEXT_P2;
}

LABEL(cfdelete_slice_left)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398048 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398049 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* delete_slice_left ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_slice_left")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = assign_slice(a1, a2, NULL, (PyObject *) NULL);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(cfdelete_slice_left)
NEXT_P2;
}

LABEL(ccdelete_slice_left)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398050 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398051 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* delete_slice_left ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_slice_left")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = assign_slice(a1, a2, NULL, (PyObject *) NULL);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(ccdelete_slice_left)
NEXT_P2;
}

LABEL(ffdelete_slice_right)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398052 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398053 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* delete_slice_right ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_slice_right")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = assign_slice(a1, NULL, a2, (PyObject *) NULL);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(ffdelete_slice_right)
NEXT_P2;
}

LABEL(fcdelete_slice_right)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398054 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398055 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* delete_slice_right ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_slice_right")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = assign_slice(a1, NULL, a2, (PyObject *) NULL);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(fcdelete_slice_right)
NEXT_P2;
}

LABEL(cfdelete_slice_right)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398056 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398057 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* delete_slice_right ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_slice_right")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = assign_slice(a1, NULL, a2, (PyObject *) NULL);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(cfdelete_slice_right)
NEXT_P2;
}

LABEL(ccdelete_slice_right)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398058 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398059 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* delete_slice_right ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_slice_right")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = assign_slice(a1, NULL, a2, (PyObject *) NULL);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(ccdelete_slice_right)
NEXT_P2;
}

LABEL(ffdelete_subscr)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398060 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398061 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* delete_subscr ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_subscr")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = PyObject_DelItem(a1, a2);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(ffdelete_subscr)
NEXT_P2;
}

LABEL(fcdelete_subscr)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398062 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398063 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* delete_subscr ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_subscr")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = PyObject_DelItem(a1, a2);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(fcdelete_subscr)
NEXT_P2;
}

LABEL(cfdelete_subscr)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398064 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398065 ),i);
INC_IP(2);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* delete_subscr ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_subscr")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = PyObject_DelItem(a1, a2);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(cfdelete_subscr)
NEXT_P2;
}

LABEL(ccdelete_subscr)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398066 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398067 ),i);
INC_IP(2);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* delete_subscr ( a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("delete_subscr")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
{
err = PyObject_DelItem(a1, a2);
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(ccdelete_subscr)
NEXT_P2;
}

LABEL(ffstore_attr)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Cell MAYBE_UNUSED _IP2;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398068 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398069 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* store_attr ( #i a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("store_attr")
{
Oparg i;
Obj a1;
Obj a2;
vm_Cell2i(IMM_ARG(IP[2],305398070 ),i);
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
INC_IP(3);
{
a3 = GETITEM(names, i);
err = PyObject_SetAttr(a2, a3, a1); /* a2.a3 = a1 */
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(ffstore_attr)
NEXT_P2;
}

LABEL(fcstore_attr)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Cell MAYBE_UNUSED _IP2;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398071 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398072 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* store_attr ( #i a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("store_attr")
{
Oparg i;
Obj a1;
Obj a2;
vm_Cell2i(IMM_ARG(IP[2],305398073 ),i);
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
INC_IP(3);
{
a3 = GETITEM(names, i);
err = PyObject_SetAttr(a2, a3, a1); /* a2.a3 = a1 */
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(fcstore_attr)
NEXT_P2;
}

LABEL(cfstore_attr)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Cell MAYBE_UNUSED _IP2;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398074 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398075 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* store_attr ( #i a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("store_attr")
{
Oparg i;
Obj a1;
Obj a2;
vm_Cell2i(IMM_ARG(IP[2],305398076 ),i);
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
INC_IP(3);
{
a3 = GETITEM(names, i);
err = PyObject_SetAttr(a2, a3, a1); /* a2.a3 = a1 */
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(cfstore_attr)
NEXT_P2;
}

LABEL(ccstore_attr)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Cell MAYBE_UNUSED _IP2;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398077 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398078 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* store_attr ( #i a1 a2 -- dec:a1 dec:a2  next:error ) */
NAME("store_attr")
{
Oparg i;
Obj a1;
Obj a2;
vm_Cell2i(IMM_ARG(IP[2],305398079 ),i);
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
INC_IP(3);
{
a3 = GETITEM(names, i);
err = PyObject_SetAttr(a2, a3, a1); /* a2.a3 = a1 */
}

vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_error2next(error,__none__TOS);
}
NEXT_P1;
LABEL2(ccstore_attr)
NEXT_P2;
}

LABEL(ffcompare_op)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Cell MAYBE_UNUSED _IP2;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398080 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398081 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* compare_op ( #i a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("compare_op")
{
Oparg i;
Obj a1;
Obj a2;
Obj a;
vm_Cell2i(IMM_ARG(IP[2],305398082 ),i);
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
INC_IP(3);
{
if (PyInt_CheckExact(a2) && PyInt_CheckExact(a1)) {
        /* INLINE: cmp(int, int) */
        register long u, v;
        register int res;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        switch (i) {
        case PyCmp_LT: res = u <  v; break;
        case PyCmp_LE: res = u <= v; break;
        case PyCmp_EQ: res = u == v; break;
        case PyCmp_NE: res = u != v; break;
        case PyCmp_GT: res = u >  v; break;
        case PyCmp_GE: res = u >= v; break;
        case PyCmp_IS: res = a1 == a2; break;
        case PyCmp_IS_NOT: res = a1 != a2; break;
        default: res = -1;
        }
        if (res < 0)
                a = cmp_outcome(i, a1, a2);
        else {
                a = res ? Py_True : Py_False;
                Py_INCREF(a);
        }
} else
        a = cmp_outcome(i, a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(ffcompare_op)
NEXT_P2;
}

LABEL(fccompare_op)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Cell MAYBE_UNUSED _IP2;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398083 ),i);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398084 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* compare_op ( #i a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("compare_op")
{
Oparg i;
Obj a1;
Obj a2;
Obj a;
vm_Cell2i(IMM_ARG(IP[2],305398085 ),i);
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
INC_IP(3);
{
if (PyInt_CheckExact(a2) && PyInt_CheckExact(a1)) {
        /* INLINE: cmp(int, int) */
        register long u, v;
        register int res;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        switch (i) {
        case PyCmp_LT: res = u <  v; break;
        case PyCmp_LE: res = u <= v; break;
        case PyCmp_EQ: res = u == v; break;
        case PyCmp_NE: res = u != v; break;
        case PyCmp_GT: res = u >  v; break;
        case PyCmp_GE: res = u >= v; break;
        case PyCmp_IS: res = a1 == a2; break;
        case PyCmp_IS_NOT: res = a1 != a2; break;
        default: res = -1;
        }
        if (res < 0)
                a = cmp_outcome(i, a1, a2);
        else {
                a = res ? Py_True : Py_False;
                Py_INCREF(a);
        }
} else
        a = cmp_outcome(i, a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(fccompare_op)
NEXT_P2;
}

LABEL(cfcompare_op)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Cell MAYBE_UNUSED _IP2;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398086 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398087 ),i);
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* compare_op ( #i a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("compare_op")
{
Oparg i;
Obj a1;
Obj a2;
Obj a;
vm_Cell2i(IMM_ARG(IP[2],305398088 ),i);
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
INC_IP(3);
{
if (PyInt_CheckExact(a2) && PyInt_CheckExact(a1)) {
        /* INLINE: cmp(int, int) */
        register long u, v;
        register int res;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        switch (i) {
        case PyCmp_LT: res = u <  v; break;
        case PyCmp_LE: res = u <= v; break;
        case PyCmp_EQ: res = u == v; break;
        case PyCmp_NE: res = u != v; break;
        case PyCmp_GT: res = u >  v; break;
        case PyCmp_GE: res = u >= v; break;
        case PyCmp_IS: res = a1 == a2; break;
        case PyCmp_IS_NOT: res = a1 != a2; break;
        default: res = -1;
        }
        if (res < 0)
                a = cmp_outcome(i, a1, a2);
        else {
                a = res ? Py_True : Py_False;
                Py_INCREF(a);
        }
} else
        a = cmp_outcome(i, a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cfcompare_op)
NEXT_P2;
}

LABEL(cccompare_op)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Cell MAYBE_UNUSED _IP1;
Cell MAYBE_UNUSED _IP2;
Obj MAYBE_UNUSED _stack_pointer0;
Obj MAYBE_UNUSED _stack_pointer1;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398089 ),i);
stack_pointer += 1;
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__[1]);
}
/* load_const ( #i -- a  inc:a ) */
NAME("load_const")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IP[1],305398090 ),i);
{
x = a = GETITEM(consts, i);
}

vm_a2Obj(a,_stack_pointer1);
vm_a2incref(a,__none__TOS);
}
/* compare_op ( #i a1 a2 -- a  dec:a1 dec:a2  next:a ) */
NAME("compare_op")
{
Oparg i;
Obj a1;
Obj a2;
Obj a;
vm_Cell2i(IMM_ARG(IP[2],305398091 ),i);
vm_Obj2a(_stack_pointer0,a1);
vm_Obj2a(_stack_pointer1,a2);
INC_IP(3);
{
if (PyInt_CheckExact(a2) && PyInt_CheckExact(a1)) {
        /* INLINE: cmp(int, int) */
        register long u, v;
        register int res;
        u = PyInt_AS_LONG(a1);
        v = PyInt_AS_LONG(a2);
        switch (i) {
        case PyCmp_LT: res = u <  v; break;
        case PyCmp_LE: res = u <= v; break;
        case PyCmp_EQ: res = u == v; break;
        case PyCmp_NE: res = u != v; break;
        case PyCmp_GT: res = u >  v; break;
        case PyCmp_GE: res = u >= v; break;
        case PyCmp_IS: res = a1 == a2; break;
        case PyCmp_IS_NOT: res = a1 != a2; break;
        default: res = -1;
        }
        if (res < 0)
                a = cmp_outcome(i, a1, a2);
        else {
                a = res ? Py_True : Py_False;
                Py_INCREF(a);
        }
} else
        a = cmp_outcome(i, a1, a2);
}

vm_a2Obj(a,stack_pointerTOS);
vm_a2decref(a1,__none__[1]);
vm_a2decref(a2,__none__TOS);
vm_a2next(a,__none__TOS);
}
NEXT_P1;
LABEL2(cccompare_op)
NEXT_P2;
}

LABEL(funary_positive)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Obj MAYBE_UNUSED _stack_pointer0;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398092 ),i);
INC_IP(1);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__TOS);
}
/* unary_positive ( a1 -- a2   dec:a1  next:a2 ) */
NAME("unary_positive")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
{
a2 = PyNumber_Positive(a1);
}

vm_a2Obj(a2,stack_pointerTOS);
vm_a2decref(a1,__none__TOS);
vm_a2next(a2,__none__TOS);
}
NEXT_P1;
LABEL2(funary_positive)
NEXT_P2;
}

LABEL(funary_negative)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Obj MAYBE_UNUSED _stack_pointer0;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398093 ),i);
INC_IP(1);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__TOS);
}
/* unary_negative ( a1 -- a2  dec:a1  next:a2 ) */
NAME("unary_negative")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
{
a2 = PyNumber_Negative(a1);
}

vm_a2Obj(a2,stack_pointerTOS);
vm_a2decref(a1,__none__TOS);
vm_a2next(a2,__none__TOS);
}
NEXT_P1;
LABEL2(funary_negative)
NEXT_P2;
}

LABEL(funary_convert)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Obj MAYBE_UNUSED _stack_pointer0;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398094 ),i);
INC_IP(1);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__TOS);
}
/* unary_convert ( a1 -- a2  dec:a1  next:a2 ) */
NAME("unary_convert")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
{
a2 = PyObject_Repr(a1);
}

vm_a2Obj(a2,stack_pointerTOS);
vm_a2decref(a1,__none__TOS);
vm_a2next(a2,__none__TOS);
}
NEXT_P1;
LABEL2(funary_convert)
NEXT_P2;
}

LABEL(funary_invert)
{
DEF_CA
Cell MAYBE_UNUSED _IP0;
Obj MAYBE_UNUSED _stack_pointer0;
NEXT_P0;
IF_stack_pointerTOS(stack_pointer[-1] = stack_pointerTOS);
/* load_fast ( #i -- a  inc:a ) */
NAME("load_fast")
{
Oparg i;
Obj a;
vm_Cell2i(IMM_ARG(IPTOS,305398095 ),i);
INC_IP(1);
stack_pointer += 1;
{
x = a = GETLOCAL(i);
if (x == NULL) {
        format_exc_check_arg(
                PyExc_UnboundLocalError,
                UNBOUNDLOCAL_ERROR_MSG,
                PyTuple_GetItem(co->co_varnames, i));
        ERROR();
}
}

vm_a2Obj(a,_stack_pointer0);
vm_a2incref(a,__none__TOS);
}
/* unary_invert ( a1 -- a2  dec:a1  next:a2 ) */
NAME("unary_invert")
{
Obj a1;
Obj a2;
vm_Obj2a(_stack_pointer0,a1);
{
a2 = PyNumber_Invert(a1);
}

vm_a2Obj(a2,stack_pointerTOS);
vm_a2decref(a1,__none__TOS);
vm_a2next(a2,__none__TOS);
}
NEXT_P1;
LABEL2(funary_invert)
NEXT_P2;
}

