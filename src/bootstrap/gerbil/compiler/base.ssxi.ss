prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#current-compile-symbol-table
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-symbol-table)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-runtime-sections
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-runtime-sections)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-runtime-names
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-runtime-names)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-output-dir
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-output-dir)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-invoke-gsc
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-invoke-gsc)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-gsc-options
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-gsc-options)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-keep-scm
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-keep-scm)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-verbose
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-verbose)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-optimize
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-optimize)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-debug
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-debug)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-generate-ssxi
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-generate-ssxi)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-static
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-static)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-timestamp
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-timestamp)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-decls
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-decls)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-context
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-context)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   gxc#current-compile-local-env
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-local-env)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-class
   gxc#symbol-table::t
   (@class gxc#symbol-table::t
           ()
           (object::t t::t)
           (gensyms bindings)
           (gensyms bindings)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#symbol-table:::init!))))
  (declare-type
   gxc#symbol-table::t
   (optimizer-resolve-class '(typedecl gxc#symbol-table::t) 'class::t))
  (declare-type gxc#symbol-table? (@predicate gxc#symbol-table::t))
  (declare-type gxc#make-symbol-table (@constructor gxc#symbol-table::t))
  (declare-type
   gxc#symbol-table-gensyms
   (@accessor gxc#symbol-table::t gensyms #t))
  (declare-type
   gxc#symbol-table-bindings
   (@accessor gxc#symbol-table::t bindings #t))
  (declare-type
   gxc#symbol-table-gensyms-set!
   (@mutator gxc#symbol-table::t gensyms #t))
  (declare-type
   gxc#symbol-table-bindings-set!
   (@mutator gxc#symbol-table::t bindings #t))
  (declare-type
   gxc#&symbol-table-gensyms
   (@accessor gxc#symbol-table::t gensyms #f))
  (declare-type
   gxc#&symbol-table-bindings
   (@accessor gxc#symbol-table::t bindings #f))
  (declare-type
   gxc#&symbol-table-gensyms-set!
   (@mutator gxc#symbol-table::t gensyms #f))
  (declare-type
   gxc#&symbol-table-bindings-set!
   (@mutator gxc#symbol-table::t bindings #f))
  (declare-type
   gxc#symbol-table:::init!
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t) unchecked: #f)))
  (declare-type gxc#raise-compile-error (@lambda (2) #f))
  (declare-type
   gxc#verbose
   (@lambda (0)
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#+verbose-mutex+
   (optimizer-resolve-class
    '(typedecl gxc#+verbose-mutex+)
    '#<!class #13507 id: mutex::t super: () precedence-list: (t::t)>))
  (declare-type
   gxc#module-path-reserved-chars
   (optimizer-resolve-class
    '(typedecl gxc#module-path-reserved-chars)
    '#<!class #15902
              id: string
              super: (sequence::t)
              precedence-list: (sequence::t t::t)>))
  (declare-type gxc#module-id->path-string (@lambda 1 #f))
  (declare-type gxc#map* (@lambda 2 #f))
  (declare-type
   gxc#symbol-in-local-scope?
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#gensym-reference?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#generate-runtime-binding-id (@lambda 1 #f))
  (declare-type gxc#generate-runtime-binding-id* (@lambda 1 #f))
  (declare-type
   gxc#generate-runtime-temporary__%
   (@lambda 1
            #f
            signature:
            (return: symbol::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#generate-runtime-temporary__0
   (@lambda 0
            #f
            signature:
            (return: symbol::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#generate-runtime-temporary
   (@case-lambda
    (0
     gxc#generate-runtime-temporary__0
     signature:
     (return: symbol::t effect: #f arguments: #f unchecked: #f))
    (1
     gxc#generate-runtime-temporary__%
     signature:
     (return: symbol::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   gxc#generate-runtime-gensym-reference__%
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#generate-runtime-gensym-reference__0
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#generate-runtime-gensym-reference
   (@case-lambda
    (1
     gxc#generate-runtime-gensym-reference__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (2
     gxc#generate-runtime-gensym-reference__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   gxc#runtime-identifier=?
   (@lambda 2
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#identifier-symbol (@lambda 1 #f)))
