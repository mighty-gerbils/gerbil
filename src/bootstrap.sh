#!/usr/bin/env bash
set -e
cd $(dirname "$0")

gerbil_opt="-O"
if [ ! -z "$GERBIL_BUILD_NOOPT" ]; then
    gerbil_opt=""
fi

gerbil_core=$(echo gerbil/core/{runtime,expander,sugar,mop,macro-object,match,more-sugar,more-syntax-sugar,module-sugar,contract}.ss gerbil/core.ss)
gerbil_runtime=$(echo gerbil/runtime/{gambit,util,table,control,system,c3,mop,mop-system-classes,error,interface,hash,thread,syntax,eval,repl,loader,init}.ss gerbil/runtime.ss)
gerbil_expander=$(echo gerbil/expander/{common,stx,core,top,module,compile,root,stxcase,init}.ss gerbil/expander.ss)
gerbil_compiler=$(echo gerbil/compiler/{base,method,compile,optimize-base,optimize-xform,optimize-top,optimize-spec,optimize-ann,optimize-call,optimize,driver,ssxi}.ss gerbil/compiler.ss)

prepare() {
    rm -rf bootstrap/*
    mkdir -p bootstrap/gerbil
    cp gerbil/builtin.ssxi.ss gerbil/builtin-inline-rules.ssxi.ss bootstrap/gerbil
}

build() {
    gxc $gerbil_opt -d bootstrap -s -S $*
}

build_all() {
    prepare
    build $gerbil_core $gerbil_runtime $gerbil_expander $gerbil_compiler
}

build_noopt() {
    gerbil_opt=""
    build_all
}

build_core() {
    build $gerbil_core
}

build_runtime() {
    build $gerbil_runtime
}

build_expander() {
   build $gerbil_expander
}

build_compiler() {
    build $gerbil_compiler
}

die() {
  local exitcode=$?
  echo "bootstrap failed"
  exit $exitcode
}


if [ "$#" -eq 0 ]; then
    build_all
else
    case "$1" in
        "prepare")
            prepare || die
            ;;
        "core")
            build_core || die
            ;;
        "runtime")
            build_runtime || die
            ;;
        "expander")
            build_expander || die
            ;;
        "compiler")
            build_compiler || die
            ;;
        "noopt")
            build_noopt || die
            ;;
        *)
            echo "unexpected argument $1"
            die
            ;;
    esac
fi
