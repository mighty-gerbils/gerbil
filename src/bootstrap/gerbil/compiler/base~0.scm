(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710776832)
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
      (let ((__tmp99513 (list))
            (__tmp99511
             (let ((__tmp99512
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp99512 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp99513
         '(gensyms bindings)
         __tmp99511
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args99464_
        (apply make-instance gxc#symbol-table::t _$args99464_)))
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
      (lambda (_self99462_)
        (if (let ((__tmp99519
                   (let ()
                     (declare (not safe))
                     (##structure-length _self99462_))))
              (declare (not safe))
              (##fx< '2 __tmp99519))
            (begin
              (let ((__tmp99516
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99515
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99462_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99462_
                 __tmp99516
                 '1
                 __tmp99515
                 '#f))
              (let ((__tmp99518
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99517
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99462_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99462_
                 __tmp99518
                 '2
                 __tmp99517
                 '#f)))
            (let ((__tmp99514
                   (let ()
                     (declare (not safe))
                     (##vector-length _self99462_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self99462_
                     '2
                     __tmp99514)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message99331_ _stx99332_ . _details99333_)
        (let ((_ctx99338_
               (let ((_$e99335_ (gxc#current-compile-context)))
                 (if _$e99335_ _$e99335_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx99338_
                 _message99331_
                 _stx99332_
                 _details99333_))))
    (define gxc#verbose
      (lambda _args99328_
        (if (gxc#current-compile-verbose)
            (let ((__tmp99520 (lambda () (apply displayln _args99328_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp99520))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id99310_)
        (let* ((_str99312_
                (if (let () (declare (not safe)) (symbol? _id99310_))
                    (symbol->string _id99310_)
                    _id99310_))
               (_len99314_ (string-length _str99312_))
               (_res99316_ (make-string _len99314_)))
          (let _lp99319_ ((_i99321_ '0))
            (if (fx< _i99321_ _len99314_)
                (let* ((_char99323_ (string-ref _str99312_ _i99321_))
                       (_xchar99325_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char99323_))
                            '#\_
                            _char99323_)))
                  (string-set! _res99316_ _i99321_ _xchar99325_)
                  (let ((__tmp99521
                         (let () (declare (not safe)) (fx+ _i99321_ '1))))
                    (declare (not safe))
                    (_lp99319_ __tmp99521)))
                _res99316_)))))))
