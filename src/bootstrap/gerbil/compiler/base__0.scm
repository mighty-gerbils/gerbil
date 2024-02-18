(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708247275)
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
      (let ((__tmp195645 (list))
            (__tmp195643
             (let ((__tmp195644
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp195644 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp195645
         '(gensyms bindings)
         __tmp195643
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args191529_
        (apply make-instance gxc#symbol-table::t _$args191529_)))
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
      (lambda (_self191527_)
        (if (let ((__tmp195650
                   (let ()
                     (declare (not safe))
                     (##structure-length _self191527_))))
              (declare (not safe))
              (##fx< '2 __tmp195650))
            (begin
              (let ((__tmp195647
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp195646
                     (let ()
                       (declare (not safe))
                       (##structure-type _self191527_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self191527_
                 __tmp195647
                 '1
                 __tmp195646
                 '#f))
              (let ((__tmp195649
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp195648
                     (let ()
                       (declare (not safe))
                       (##structure-type _self191527_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self191527_
                 __tmp195649
                 '2
                 __tmp195648
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self191527_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self191527_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message191396_ _stx191397_ . _details191398_)
        (let ((_ctx191403_
               (let ((_$e191400_ (gxc#current-compile-context)))
                 (if _$e191400_ _$e191400_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx191403_
                 _message191396_
                 _stx191397_
                 _details191398_))))
    (define gxc#verbose
      (lambda _args191393_
        (if (gxc#current-compile-verbose)
            (let ((__tmp195651 (lambda () (apply displayln _args191393_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp195651))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id191375_)
        (let* ((_str191377_
                (if (let () (declare (not safe)) (symbol? _id191375_))
                    (symbol->string _id191375_)
                    _id191375_))
               (_len191379_ (string-length _str191377_))
               (_res191381_ (make-string _len191379_)))
          (let _lp191384_ ((_i191386_ '0))
            (if (fx< _i191386_ _len191379_)
                (let* ((_char191388_ (string-ref _str191377_ _i191386_))
                       (_xchar191390_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char191388_))
                            '#\_
                            _char191388_)))
                  (string-set! _res191381_ _i191386_ _xchar191390_)
                  (let ((__tmp195652
                         (let () (declare (not safe)) (fx+ _i191386_ '1))))
                    (declare (not safe))
                    (_lp191384_ __tmp195652)))
                _res191381_)))))))
