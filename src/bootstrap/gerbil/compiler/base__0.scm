(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707674932)
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
      (let ((__tmp194835 (list))
            (__tmp194833
             (let ((__tmp194834
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp194834 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp194835
         '(gensyms bindings)
         __tmp194833
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args190218_
        (apply make-instance gxc#symbol-table::t _$args190218_)))
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
      (lambda (_self190216_)
        (if (let ((__tmp194840
                   (let ()
                     (declare (not safe))
                     (##structure-length _self190216_))))
              (declare (not safe))
              (##fx< '2 __tmp194840))
            (begin
              (let ((__tmp194837
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp194836
                     (let ()
                       (declare (not safe))
                       (##structure-type _self190216_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self190216_
                 __tmp194837
                 '1
                 __tmp194836
                 '#f))
              (let ((__tmp194839
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp194838
                     (let ()
                       (declare (not safe))
                       (##structure-type _self190216_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self190216_
                 __tmp194839
                 '2
                 __tmp194838
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self190216_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self190216_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message190085_ _stx190086_ . _details190087_)
        (let ((_ctx190092_
               (let ((_$e190089_ (gxc#current-compile-context)))
                 (if _$e190089_ _$e190089_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx190092_
                 _message190085_
                 _stx190086_
                 _details190087_))))
    (define gxc#verbose
      (lambda _args190082_
        (if (gxc#current-compile-verbose)
            (let ((__tmp194841 (lambda () (apply displayln _args190082_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp194841))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id190064_)
        (let* ((_str190066_
                (if (let () (declare (not safe)) (symbol? _id190064_))
                    (symbol->string _id190064_)
                    _id190064_))
               (_len190068_ (string-length _str190066_))
               (_res190070_ (make-string _len190068_)))
          (let _lp190073_ ((_i190075_ '0))
            (if (fx< _i190075_ _len190068_)
                (let* ((_char190077_ (string-ref _str190066_ _i190075_))
                       (_xchar190079_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char190077_))
                            '#\_
                            _char190077_)))
                  (string-set! _res190070_ _i190075_ _xchar190079_)
                  (let ((__tmp194842
                         (let () (declare (not safe)) (fx+ _i190075_ '1))))
                    (declare (not safe))
                    (_lp190073_ __tmp194842)))
                _res190070_)))))))
