(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707773928)
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
      (let ((__tmp195068 (list))
            (__tmp195066
             (let ((__tmp195067
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp195067 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp195068
         '(gensyms bindings)
         __tmp195066
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args190451_
        (apply make-instance gxc#symbol-table::t _$args190451_)))
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
      (lambda (_self190449_)
        (if (let ((__tmp195073
                   (let ()
                     (declare (not safe))
                     (##structure-length _self190449_))))
              (declare (not safe))
              (##fx< '2 __tmp195073))
            (begin
              (let ((__tmp195070
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp195069
                     (let ()
                       (declare (not safe))
                       (##structure-type _self190449_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self190449_
                 __tmp195070
                 '1
                 __tmp195069
                 '#f))
              (let ((__tmp195072
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp195071
                     (let ()
                       (declare (not safe))
                       (##structure-type _self190449_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self190449_
                 __tmp195072
                 '2
                 __tmp195071
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self190449_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self190449_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message190318_ _stx190319_ . _details190320_)
        (let ((_ctx190325_
               (let ((_$e190322_ (gxc#current-compile-context)))
                 (if _$e190322_ _$e190322_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx190325_
                 _message190318_
                 _stx190319_
                 _details190320_))))
    (define gxc#verbose
      (lambda _args190315_
        (if (gxc#current-compile-verbose)
            (let ((__tmp195074 (lambda () (apply displayln _args190315_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp195074))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id190297_)
        (let* ((_str190299_
                (if (let () (declare (not safe)) (symbol? _id190297_))
                    (symbol->string _id190297_)
                    _id190297_))
               (_len190301_ (string-length _str190299_))
               (_res190303_ (make-string _len190301_)))
          (let _lp190306_ ((_i190308_ '0))
            (if (fx< _i190308_ _len190301_)
                (let* ((_char190310_ (string-ref _str190299_ _i190308_))
                       (_xchar190312_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char190310_))
                            '#\_
                            _char190310_)))
                  (string-set! _res190303_ _i190308_ _xchar190312_)
                  (let ((__tmp195075
                         (let () (declare (not safe)) (fx+ _i190308_ '1))))
                    (declare (not safe))
                    (_lp190306_ __tmp195075)))
                _res190303_)))))))
