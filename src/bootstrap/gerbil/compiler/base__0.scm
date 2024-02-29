(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1709229970)
  (begin
    (define gxc#current-compile-symbol-table (make-parameter '#f))
    (define gxc#current-compile-runtime-sections (make-parameter '#f))
    (define gxc#current-compile-runtime-names (make-parameter '#f))
    (define gxc#current-compile-output-dir (make-parameter '#f))
    (define gxc#current-compile-invoke-gsc (make-parameter '#f))
    (define gxc#current-compile-gsc-options (make-parameter '#f))
    (define gxc#current-compile-keep-scm (make-parameter '#f))
    (define gxc#current-compile-verbose (make-parameter '#f))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#symbol-table::t
      (let ((__tmp98235 (list))
            (__tmp98233
             (let ((__tmp98234
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98234 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp98235
         '(gensyms bindings)
         __tmp98233
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args98186_
        (apply make-instance gxc#symbol-table::t _$args98186_)))
    (define gxc#symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table:::init!
      (lambda (_self98184_)
        (if (let ((__tmp98241
                   (let ()
                     (declare (not safe))
                     (##structure-length _self98184_))))
              (declare (not safe))
              (##fx< '2 __tmp98241))
            (begin
              (let ((__tmp98238
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp98237
                     (let ()
                       (declare (not safe))
                       (##structure-type _self98184_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98184_
                 __tmp98238
                 '1
                 __tmp98237
                 '#f))
              (let ((__tmp98240
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp98239
                     (let ()
                       (declare (not safe))
                       (##structure-type _self98184_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98184_
                 __tmp98240
                 '2
                 __tmp98239
                 '#f)))
            (let ((__tmp98236
                   (let ()
                     (declare (not safe))
                     (##vector-length _self98184_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self98184_
                     '2
                     __tmp98236)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message98053_ _stx98054_ . _details98055_)
        (let ((_ctx98060_
               (let ((_$e98057_ (gxc#current-compile-context)))
                 (if _$e98057_ _$e98057_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx98060_
                 _message98053_
                 _stx98054_
                 _details98055_))))
    (define gxc#verbose
      (lambda _args98050_
        (if (gxc#current-compile-verbose)
            (let ((__tmp98242 (lambda () (apply displayln _args98050_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp98242))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id98032_)
        (let* ((_str98034_
                (if (let () (declare (not safe)) (symbol? _id98032_))
                    (symbol->string _id98032_)
                    _id98032_))
               (_len98036_ (string-length _str98034_))
               (_res98038_ (make-string _len98036_)))
          (let _lp98041_ ((_i98043_ '0))
            (if (fx< _i98043_ _len98036_)
                (let* ((_char98045_ (string-ref _str98034_ _i98043_))
                       (_xchar98047_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char98045_))
                            '#\_
                            _char98045_)))
                  (string-set! _res98038_ _i98043_ _xchar98047_)
                  (let ((__tmp98243
                         (let () (declare (not safe)) (fx+ _i98043_ '1))))
                    (declare (not safe))
                    (_lp98041_ __tmp98243)))
                _res98038_)))))))
