(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710064748)
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
      (let ((__tmp95125 (list))
            (__tmp95123
             (let ((__tmp95124
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp95124 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp95125
         '(gensyms bindings)
         __tmp95123
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args95076_
        (apply make-instance gxc#symbol-table::t _$args95076_)))
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
      (lambda (_self95074_)
        (if (let ((__tmp95126
                   (let ()
                     (declare (not safe))
                     (##structure-length _self95074_))))
              (declare (not safe))
              (##fx< '2 __tmp95126))
            (begin
              (let ((__tmp95128
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp95127
                     (let ()
                       (declare (not safe))
                       (##structure-type _self95074_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self95074_
                 __tmp95128
                 '1
                 __tmp95127
                 '#f))
              (let ((__tmp95130
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp95129
                     (let ()
                       (declare (not safe))
                       (##structure-type _self95074_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self95074_
                 __tmp95130
                 '2
                 __tmp95129
                 '#f)))
            (let ((__tmp95131
                   (let ()
                     (declare (not safe))
                     (##vector-length _self95074_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self95074_
                     '2
                     __tmp95131)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message94943_ _stx94944_ . _details94945_)
        (let ((_ctx94950_
               (let ((_$e94947_ (gxc#current-compile-context)))
                 (if _$e94947_ _$e94947_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx94950_
                 _message94943_
                 _stx94944_
                 _details94945_))))
    (define gxc#verbose
      (lambda _args94940_
        (if (gxc#current-compile-verbose)
            (let ((__tmp95132 (lambda () (apply displayln _args94940_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp95132))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id94922_)
        (let* ((_str94924_
                (if (let () (declare (not safe)) (symbol? _id94922_))
                    (symbol->string _id94922_)
                    _id94922_))
               (_len94926_ (string-length _str94924_))
               (_res94928_ (make-string _len94926_)))
          (let _lp94931_ ((_i94933_ '0))
            (if (fx< _i94933_ _len94926_)
                (let* ((_char94935_ (string-ref _str94924_ _i94933_))
                       (_xchar94937_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char94935_))
                            '#\_
                            _char94935_)))
                  (string-set! _res94928_ _i94933_ _xchar94937_)
                  (let ((__tmp95133
                         (let () (declare (not safe)) (fx+ _i94933_ '1))))
                    (declare (not safe))
                    (_lp94931_ __tmp95133)))
                _res94928_)))))))
