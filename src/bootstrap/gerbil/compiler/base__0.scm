(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707738033)
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
      (let ((__tmp194844 (list))
            (__tmp194842
             (let ((__tmp194843
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp194843 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp194844
         '(gensyms bindings)
         __tmp194842
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args190227_
        (apply make-instance gxc#symbol-table::t _$args190227_)))
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
      (lambda (_self190225_)
        (if (let ((__tmp194849
                   (let ()
                     (declare (not safe))
                     (##structure-length _self190225_))))
              (declare (not safe))
              (##fx< '2 __tmp194849))
            (begin
              (let ((__tmp194846
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp194845
                     (let ()
                       (declare (not safe))
                       (##structure-type _self190225_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self190225_
                 __tmp194846
                 '1
                 __tmp194845
                 '#f))
              (let ((__tmp194848
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp194847
                     (let ()
                       (declare (not safe))
                       (##structure-type _self190225_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self190225_
                 __tmp194848
                 '2
                 __tmp194847
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self190225_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self190225_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message190094_ _stx190095_ . _details190096_)
        (let ((_ctx190101_
               (let ((_$e190098_ (gxc#current-compile-context)))
                 (if _$e190098_ _$e190098_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx190101_
                 _message190094_
                 _stx190095_
                 _details190096_))))
    (define gxc#verbose
      (lambda _args190091_
        (if (gxc#current-compile-verbose)
            (let ((__tmp194850 (lambda () (apply displayln _args190091_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp194850))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id190073_)
        (let* ((_str190075_
                (if (let () (declare (not safe)) (symbol? _id190073_))
                    (symbol->string _id190073_)
                    _id190073_))
               (_len190077_ (string-length _str190075_))
               (_res190079_ (make-string _len190077_)))
          (let _lp190082_ ((_i190084_ '0))
            (if (fx< _i190084_ _len190077_)
                (let* ((_char190086_ (string-ref _str190075_ _i190084_))
                       (_xchar190088_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char190086_))
                            '#\_
                            _char190086_)))
                  (string-set! _res190079_ _i190084_ _xchar190088_)
                  (let ((__tmp194851
                         (let () (declare (not safe)) (fx+ _i190084_ '1))))
                    (declare (not safe))
                    (_lp190082_ __tmp194851)))
                _res190079_)))))))
