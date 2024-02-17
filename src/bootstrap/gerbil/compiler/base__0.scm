(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708194426)
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
      (let ((__tmp189800 (list))
            (__tmp189798
             (let ((__tmp189799
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp189799 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp189800
         '(gensyms bindings)
         __tmp189798
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args185684_
        (apply make-instance gxc#symbol-table::t _$args185684_)))
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
      (lambda (_self185682_)
        (if (let ((__tmp189801
                   (let ()
                     (declare (not safe))
                     (##structure-length _self185682_))))
              (declare (not safe))
              (##fx< '2 __tmp189801))
            (begin
              (let ((__tmp189803
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp189802
                     (let ()
                       (declare (not safe))
                       (##structure-type _self185682_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self185682_
                 __tmp189803
                 '1
                 __tmp189802
                 '#f))
              (let ((__tmp189805
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp189804
                     (let ()
                       (declare (not safe))
                       (##structure-type _self185682_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self185682_
                 __tmp189805
                 '2
                 __tmp189804
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self185682_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self185682_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message185551_ _stx185552_ . _details185553_)
        (let ((_ctx185558_
               (let ((_$e185555_ (gxc#current-compile-context)))
                 (if _$e185555_ _$e185555_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx185558_
                 _message185551_
                 _stx185552_
                 _details185553_))))
    (define gxc#verbose
      (lambda _args185548_
        (if (gxc#current-compile-verbose)
            (let ((__tmp189806 (lambda () (apply displayln _args185548_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp189806))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id185530_)
        (let* ((_str185532_
                (if (let () (declare (not safe)) (symbol? _id185530_))
                    (symbol->string _id185530_)
                    _id185530_))
               (_len185534_ (string-length _str185532_))
               (_res185536_ (make-string _len185534_)))
          (let _lp185539_ ((_i185541_ '0))
            (if (fx< _i185541_ _len185534_)
                (let* ((_char185543_ (string-ref _str185532_ _i185541_))
                       (_xchar185545_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char185543_))
                            '#\_
                            _char185543_)))
                  (string-set! _res185536_ _i185541_ _xchar185545_)
                  (let ((__tmp189807
                         (let () (declare (not safe)) (fx+ _i185541_ '1))))
                    (declare (not safe))
                    (_lp185539_ __tmp189807)))
                _res185536_)))))))
