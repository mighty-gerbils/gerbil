(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707657571)
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
      (let ((__tmp192457 (list))
            (__tmp192455
             (let ((__tmp192456
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp192456 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp192457
         '(gensyms bindings)
         __tmp192455
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args187940_
        (apply make-class-instance gxc#symbol-table::t _$args187940_)))
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
      (lambda (_self187938_)
        (if (let ((__tmp192462
                   (let ()
                     (declare (not safe))
                     (##structure-length _self187938_))))
              (declare (not safe))
              (##fx< '2 __tmp192462))
            (begin
              (let ((__tmp192459
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192458
                     (let ()
                       (declare (not safe))
                       (##structure-type _self187938_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self187938_
                 __tmp192459
                 '1
                 __tmp192458
                 '#f))
              (let ((__tmp192461
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192460
                     (let ()
                       (declare (not safe))
                       (##structure-type _self187938_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self187938_
                 __tmp192461
                 '2
                 __tmp192460
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self187938_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self187938_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message187807_ _stx187808_ . _details187809_)
        (let ((_ctx187814_
               (let ((_$e187811_ (gxc#current-compile-context)))
                 (if _$e187811_ _$e187811_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx187814_
                 _message187807_
                 _stx187808_
                 _details187809_))))
    (define gxc#verbose
      (lambda _args187804_
        (if (gxc#current-compile-verbose)
            (let ((__tmp192463 (lambda () (apply displayln _args187804_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp192463))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id187786_)
        (let* ((_str187788_
                (if (let () (declare (not safe)) (symbol? _id187786_))
                    (symbol->string _id187786_)
                    _id187786_))
               (_len187790_ (string-length _str187788_))
               (_res187792_ (make-string _len187790_)))
          (let _lp187795_ ((_i187797_ '0))
            (if (fx< _i187797_ _len187790_)
                (let* ((_char187799_ (string-ref _str187788_ _i187797_))
                       (_xchar187801_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char187799_))
                            '#\_
                            _char187799_)))
                  (string-set! _res187792_ _i187797_ _xchar187801_)
                  (let ((__tmp192464
                         (let () (declare (not safe)) (fx+ _i187797_ '1))))
                    (declare (not safe))
                    (_lp187795_ __tmp192464)))
                _res187792_)))))))
