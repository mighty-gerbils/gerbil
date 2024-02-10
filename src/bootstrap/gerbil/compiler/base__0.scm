(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707573213)
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
      (let ((__tmp192585
             (let ((__tmp192586
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp192586 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#symbol-table::t
         'symbol-table
         '#f
         '(gensyms bindings)
         __tmp192585
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args188070_
        (apply make-struct-instance gxc#symbol-table::t _$args188070_)))
    (define gxc#symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table:::init!
      (lambda (_self188068_)
        (if (let ((__tmp192591
                   (let ()
                     (declare (not safe))
                     (##structure-length _self188068_))))
              (declare (not safe))
              (##fx< '2 __tmp192591))
            (begin
              (let ((__tmp192588
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192587
                     (let ()
                       (declare (not safe))
                       (##structure-type _self188068_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self188068_
                 __tmp192588
                 '1
                 __tmp192587
                 '#f))
              (let ((__tmp192590
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192589
                     (let ()
                       (declare (not safe))
                       (##structure-type _self188068_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self188068_
                 __tmp192590
                 '2
                 __tmp192589
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self188068_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self188068_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message187937_ _stx187938_ . _details187939_)
        (let ((_ctx187944_
               (let ((_$e187941_ (gxc#current-compile-context)))
                 (if _$e187941_ _$e187941_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx187944_
                 _message187937_
                 _stx187938_
                 _details187939_))))
    (define gxc#verbose
      (lambda _args187934_
        (if (gxc#current-compile-verbose)
            (let ((__tmp192592 (lambda () (apply displayln _args187934_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp192592))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id187916_)
        (let* ((_str187918_
                (if (let () (declare (not safe)) (symbol? _id187916_))
                    (symbol->string _id187916_)
                    _id187916_))
               (_len187920_ (string-length _str187918_))
               (_res187922_ (make-string _len187920_)))
          (let _lp187925_ ((_i187927_ '0))
            (if (fx< _i187927_ _len187920_)
                (let* ((_char187929_ (string-ref _str187918_ _i187927_))
                       (_xchar187931_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char187929_))
                            '#\_
                            _char187929_)))
                  (string-set! _res187922_ _i187927_ _xchar187931_)
                  (let ((__tmp192593
                         (let () (declare (not safe)) (fx+ _i187927_ '1))))
                    (declare (not safe))
                    (_lp187925_ __tmp192593)))
                _res187922_)))))))
