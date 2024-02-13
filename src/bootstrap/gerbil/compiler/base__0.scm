(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707842373)
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
      (let ((__tmp196224 (list))
            (__tmp196222
             (let ((__tmp196223
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp196223 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp196224
         '(gensyms bindings)
         __tmp196222
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args191607_
        (apply make-instance gxc#symbol-table::t _$args191607_)))
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
      (lambda (_self191605_)
        (if (let ((__tmp196229
                   (let ()
                     (declare (not safe))
                     (##structure-length _self191605_))))
              (declare (not safe))
              (##fx< '2 __tmp196229))
            (begin
              (let ((__tmp196226
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp196225
                     (let ()
                       (declare (not safe))
                       (##structure-type _self191605_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self191605_
                 __tmp196226
                 '1
                 __tmp196225
                 '#f))
              (let ((__tmp196228
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp196227
                     (let ()
                       (declare (not safe))
                       (##structure-type _self191605_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self191605_
                 __tmp196228
                 '2
                 __tmp196227
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self191605_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self191605_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message191474_ _stx191475_ . _details191476_)
        (let ((_ctx191481_
               (let ((_$e191478_ (gxc#current-compile-context)))
                 (if _$e191478_ _$e191478_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx191481_
                 _message191474_
                 _stx191475_
                 _details191476_))))
    (define gxc#verbose
      (lambda _args191471_
        (if (gxc#current-compile-verbose)
            (let ((__tmp196230 (lambda () (apply displayln _args191471_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp196230))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id191453_)
        (let* ((_str191455_
                (if (let () (declare (not safe)) (symbol? _id191453_))
                    (symbol->string _id191453_)
                    _id191453_))
               (_len191457_ (string-length _str191455_))
               (_res191459_ (make-string _len191457_)))
          (let _lp191462_ ((_i191464_ '0))
            (if (fx< _i191464_ _len191457_)
                (let* ((_char191466_ (string-ref _str191455_ _i191464_))
                       (_xchar191468_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char191466_))
                            '#\_
                            _char191466_)))
                  (string-set! _res191459_ _i191464_ _xchar191468_)
                  (let ((__tmp196231
                         (let () (declare (not safe)) (fx+ _i191464_ '1))))
                    (declare (not safe))
                    (_lp191462_ __tmp196231)))
                _res191459_)))))))
