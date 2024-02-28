(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1709125255)
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
      (let ((__tmp98228 (list))
            (__tmp98226
             (let ((__tmp98227
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98227 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp98228
         '(gensyms bindings)
         __tmp98226
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args98179_
        (apply make-instance gxc#symbol-table::t _$args98179_)))
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
      (lambda (_self98177_)
        (if (let ((__tmp98234
                   (let ()
                     (declare (not safe))
                     (##structure-length _self98177_))))
              (declare (not safe))
              (##fx< '2 __tmp98234))
            (begin
              (let ((__tmp98231
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp98230
                     (let ()
                       (declare (not safe))
                       (##structure-type _self98177_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98177_
                 __tmp98231
                 '1
                 __tmp98230
                 '#f))
              (let ((__tmp98233
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp98232
                     (let ()
                       (declare (not safe))
                       (##structure-type _self98177_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98177_
                 __tmp98233
                 '2
                 __tmp98232
                 '#f)))
            (let ((__tmp98229
                   (let ()
                     (declare (not safe))
                     (##vector-length _self98177_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self98177_
                     '2
                     __tmp98229)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message98046_ _stx98047_ . _details98048_)
        (let ((_ctx98053_
               (let ((_$e98050_ (gxc#current-compile-context)))
                 (if _$e98050_ _$e98050_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx98053_
                 _message98046_
                 _stx98047_
                 _details98048_))))
    (define gxc#verbose
      (lambda _args98043_
        (if (gxc#current-compile-verbose)
            (let ((__tmp98235 (lambda () (apply displayln _args98043_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp98235))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id98025_)
        (let* ((_str98027_
                (if (let () (declare (not safe)) (symbol? _id98025_))
                    (symbol->string _id98025_)
                    _id98025_))
               (_len98029_ (string-length _str98027_))
               (_res98031_ (make-string _len98029_)))
          (let _lp98034_ ((_i98036_ '0))
            (if (fx< _i98036_ _len98029_)
                (let* ((_char98038_ (string-ref _str98027_ _i98036_))
                       (_xchar98040_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char98038_))
                            '#\_
                            _char98038_)))
                  (string-set! _res98031_ _i98036_ _xchar98040_)
                  (let ((__tmp98236
                         (let () (declare (not safe)) (fx+ _i98036_ '1))))
                    (declare (not safe))
                    (_lp98034_ __tmp98236)))
                _res98031_)))))))
