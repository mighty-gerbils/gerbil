prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#current-compile-symbol-table
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-symbol-table)
    'procedure::t))
  (declare-type
   gxc#current-compile-runtime-sections
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-runtime-sections)
    'procedure::t))
  (declare-type
   gxc#current-compile-runtime-names
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-runtime-names)
    'procedure::t))
  (declare-type
   gxc#current-compile-output-dir
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-output-dir)
    'procedure::t))
  (declare-type
   gxc#current-compile-invoke-gsc
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-invoke-gsc)
    'procedure::t))
  (declare-type
   gxc#current-compile-gsc-options
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-gsc-options)
    'procedure::t))
  (declare-type
   gxc#current-compile-keep-scm
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-keep-scm)
    'procedure::t))
  (declare-type
   gxc#current-compile-verbose
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-verbose)
    'procedure::t))
  (declare-type
   gxc#current-compile-optimize
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-optimize)
    'procedure::t))
  (declare-type
   gxc#current-compile-debug
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-debug)
    'procedure::t))
  (declare-type
   gxc#current-compile-generate-ssxi
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-generate-ssxi)
    'procedure::t))
  (declare-type
   gxc#current-compile-static
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-static)
    'procedure::t))
  (declare-type
   gxc#current-compile-timestamp
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-timestamp)
    'procedure::t))
  (declare-type
   gxc#current-compile-decls
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-decls)
    'procedure::t))
  (declare-type
   gxc#current-compile-context
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-context)
    'procedure::t))
  (declare-type
   gxc#current-compile-parallel
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-parallel)
    'procedure::t))
  (declare-type
   gxc#current-compile-local-env
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-local-env)
    'procedure::t))
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
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#raise-compile-error
   (@lambda (2)
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#verbose
   (@lambda (0)
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#__verbose-mutex
   (optimizer-resolve-class '(typedecl gxc#__verbose-mutex) 'mutex::t))
  (declare-type
   gxc#module-path-reserved-chars
   (optimizer-resolve-class
    '(typedecl gxc#module-path-reserved-chars)
    'string::t))
  (declare-type
   gxc#module-id->path-string
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#map*
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#symbol-in-local-scope?
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#gensym-reference?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#generate-runtime-binding-id
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#generate-runtime-binding-id*
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#generate-runtime-temporary__%
   (@lambda 1
            #f
            signature:
            (return:
             symbol::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#generate-runtime-temporary__0
   (@lambda 0
            #f
            signature:
            (return:
             symbol::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#generate-runtime-temporary
   (@case-lambda
    (0
     gxc#generate-runtime-temporary__0
     signature:
     (return:
      symbol::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/compiler/base))
    (1
     gxc#generate-runtime-temporary__%
     signature:
     (return:
      symbol::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/compiler/base))))
  (declare-type
   gxc#generate-runtime-gensym-reference__%
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#generate-runtime-gensym-reference__0
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#generate-runtime-gensym-reference
   (@case-lambda
    (1
     gxc#generate-runtime-gensym-reference__0
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/compiler/base))
    (2
     gxc#generate-runtime-gensym-reference__%
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/compiler/base))))
  (declare-type
   gxc#runtime-identifier=?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#identifier-symbol
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#__compile-jobs
   (optimizer-resolve-class '(typedecl gxc#__compile-jobs) 'list::t))
  (declare-type
   gxc#__available-cores
   (optimizer-resolve-class '(typedecl gxc#__available-cores) 'number::t))
  (declare-type
   gxc#__jobs-mx
   (optimizer-resolve-class '(typedecl gxc#__jobs-mx) 'mutex::t))
  (declare-type
   gxc#__jobs-cv
   (optimizer-resolve-class '(typedecl gxc#__jobs-cv) 'condvar::t))
  (declare-type
   gxc#add-compile-job!__%
   (@lambda 2
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#add-compile-job!__0
   (@lambda 1
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#add-compile-job!
   (@case-lambda
    (1
     gxc#add-compile-job!__0
     signature:
     (return:
      void::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/compiler/base))
    (2
     gxc#add-compile-job!__%
     signature:
     (return:
      void::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/compiler/base))))
  (declare-type
   gxc#pending-compile-jobs
   (@lambda 0
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#execute-pending-compile-jobs!
   (@lambda 0
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#make-compile-job
   (@lambda 2
            #f
            signature:
            (return:
             thread::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base)))
  (declare-type
   gxc#join!
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/base))))
