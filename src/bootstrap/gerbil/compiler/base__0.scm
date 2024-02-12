(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707742541)
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
      (let ((__tmp194843 (list))
            (__tmp194841
             (let ((__tmp194842
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp194842 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp194843
         '(gensyms bindings)
         __tmp194841
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args190226_
        (apply make-instance gxc#symbol-table::t _$args190226_)))
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
      (lambda (_self190224_)
        (if (let ((__tmp194848
                   (let ()
                     (declare (not safe))
                     (##structure-length _self190224_))))
              (declare (not safe))
              (##fx< '2 __tmp194848))
            (begin
              (let ((__tmp194845
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp194844
                     (let ()
                       (declare (not safe))
                       (##structure-type _self190224_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self190224_
                 __tmp194845
                 '1
                 __tmp194844
                 '#f))
              (let ((__tmp194847
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp194846
                     (let ()
                       (declare (not safe))
                       (##structure-type _self190224_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self190224_
                 __tmp194847
                 '2
                 __tmp194846
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self190224_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self190224_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message190093_ _stx190094_ . _details190095_)
        (let ((_ctx190100_
               (let ((_$e190097_ (gxc#current-compile-context)))
                 (if _$e190097_ _$e190097_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx190100_
                 _message190093_
                 _stx190094_
                 _details190095_))))
    (define gxc#verbose
      (lambda _args190090_
        (if (gxc#current-compile-verbose)
            (let ((__tmp194849 (lambda () (apply displayln _args190090_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp194849))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id190072_)
        (let* ((_str190074_
                (if (let () (declare (not safe)) (symbol? _id190072_))
                    (symbol->string _id190072_)
                    _id190072_))
               (_len190076_ (string-length _str190074_))
               (_res190078_ (make-string _len190076_)))
          (let _lp190081_ ((_i190083_ '0))
            (if (fx< _i190083_ _len190076_)
                (let* ((_char190085_ (string-ref _str190074_ _i190083_))
                       (_xchar190087_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char190085_))
                            '#\_
                            _char190085_)))
                  (string-set! _res190078_ _i190083_ _xchar190087_)
                  (let ((__tmp194850
                         (let () (declare (not safe)) (fx+ _i190083_ '1))))
                    (declare (not safe))
                    (_lp190081_ __tmp194850)))
                _res190078_)))))))
