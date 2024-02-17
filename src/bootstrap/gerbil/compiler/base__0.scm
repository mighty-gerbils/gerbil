(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708203247)
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
      (let ((__tmp189972 (list))
            (__tmp189970
             (let ((__tmp189971
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp189971 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp189972
         '(gensyms bindings)
         __tmp189970
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args185856_
        (apply make-instance gxc#symbol-table::t _$args185856_)))
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
      (lambda (_self185854_)
        (if (let ((__tmp189977
                   (let ()
                     (declare (not safe))
                     (##structure-length _self185854_))))
              (declare (not safe))
              (##fx< '2 __tmp189977))
            (begin
              (let ((__tmp189974
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp189973
                     (let ()
                       (declare (not safe))
                       (##structure-type _self185854_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self185854_
                 __tmp189974
                 '1
                 __tmp189973
                 '#f))
              (let ((__tmp189976
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp189975
                     (let ()
                       (declare (not safe))
                       (##structure-type _self185854_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self185854_
                 __tmp189976
                 '2
                 __tmp189975
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self185854_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self185854_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message185723_ _stx185724_ . _details185725_)
        (let ((_ctx185730_
               (let ((_$e185727_ (gxc#current-compile-context)))
                 (if _$e185727_ _$e185727_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx185730_
                 _message185723_
                 _stx185724_
                 _details185725_))))
    (define gxc#verbose
      (lambda _args185720_
        (if (gxc#current-compile-verbose)
            (let ((__tmp189978 (lambda () (apply displayln _args185720_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp189978))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id185702_)
        (let* ((_str185704_
                (if (let () (declare (not safe)) (symbol? _id185702_))
                    (symbol->string _id185702_)
                    _id185702_))
               (_len185706_ (string-length _str185704_))
               (_res185708_ (make-string _len185706_)))
          (let _lp185711_ ((_i185713_ '0))
            (if (fx< _i185713_ _len185706_)
                (let* ((_char185715_ (string-ref _str185704_ _i185713_))
                       (_xchar185717_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char185715_))
                            '#\_
                            _char185715_)))
                  (string-set! _res185708_ _i185713_ _xchar185717_)
                  (let ((__tmp189979
                         (let () (declare (not safe)) (fx+ _i185713_ '1))))
                    (declare (not safe))
                    (_lp185711_ __tmp189979)))
                _res185708_)))))))
