(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707740668)
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
      (let ((__tmp194845 (list))
            (__tmp194843
             (let ((__tmp194844
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp194844 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp194845
         '(gensyms bindings)
         __tmp194843
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args190228_
        (apply make-instance gxc#symbol-table::t _$args190228_)))
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
      (lambda (_self190226_)
        (if (let ((__tmp194850
                   (let ()
                     (declare (not safe))
                     (##structure-length _self190226_))))
              (declare (not safe))
              (##fx< '2 __tmp194850))
            (begin
              (let ((__tmp194847
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp194846
                     (let ()
                       (declare (not safe))
                       (##structure-type _self190226_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self190226_
                 __tmp194847
                 '1
                 __tmp194846
                 '#f))
              (let ((__tmp194849
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp194848
                     (let ()
                       (declare (not safe))
                       (##structure-type _self190226_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self190226_
                 __tmp194849
                 '2
                 __tmp194848
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self190226_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self190226_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message190095_ _stx190096_ . _details190097_)
        (let ((_ctx190102_
               (let ((_$e190099_ (gxc#current-compile-context)))
                 (if _$e190099_ _$e190099_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx190102_
                 _message190095_
                 _stx190096_
                 _details190097_))))
    (define gxc#verbose
      (lambda _args190092_
        (if (gxc#current-compile-verbose)
            (let ((__tmp194851 (lambda () (apply displayln _args190092_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp194851))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id190074_)
        (let* ((_str190076_
                (if (let () (declare (not safe)) (symbol? _id190074_))
                    (symbol->string _id190074_)
                    _id190074_))
               (_len190078_ (string-length _str190076_))
               (_res190080_ (make-string _len190078_)))
          (let _lp190083_ ((_i190085_ '0))
            (if (fx< _i190085_ _len190078_)
                (let* ((_char190087_ (string-ref _str190076_ _i190085_))
                       (_xchar190089_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char190087_))
                            '#\_
                            _char190087_)))
                  (string-set! _res190080_ _i190085_ _xchar190089_)
                  (let ((__tmp194852
                         (let () (declare (not safe)) (fx+ _i190085_ '1))))
                    (declare (not safe))
                    (_lp190083_ __tmp194852)))
                _res190080_)))))))
