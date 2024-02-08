(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707415537)
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
      (let ((__tmp185795
             (let ((__tmp185796
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp185796 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#symbol-table::t
         'symbol-table
         '#f
         '(gensyms bindings)
         __tmp185795
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args181554_
        (apply make-struct-instance gxc#symbol-table::t _$args181554_)))
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
      (lambda (_self181552_)
        (if (let ((__tmp185801
                   (let ()
                     (declare (not safe))
                     (##structure-length _self181552_))))
              (declare (not safe))
              (##fx< '2 __tmp185801))
            (begin
              (let ((__tmp185798
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp185797
                     (let ()
                       (declare (not safe))
                       (##structure-type _self181552_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self181552_
                 __tmp185798
                 '1
                 __tmp185797
                 '#f))
              (let ((__tmp185800
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp185799
                     (let ()
                       (declare (not safe))
                       (##structure-type _self181552_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self181552_
                 __tmp185800
                 '2
                 __tmp185799
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self181552_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self181552_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message181421_ _stx181422_ . _details181423_)
        (let ((_ctx181428_
               (let ((_$e181425_ (gxc#current-compile-context)))
                 (if _$e181425_ _$e181425_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx181428_
                 _message181421_
                 _stx181422_
                 _details181423_))))
    (define gxc#verbose
      (lambda _args181418_
        (if (gxc#current-compile-verbose)
            (let ((__tmp185802 (lambda () (apply displayln _args181418_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp185802))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id181400_)
        (let* ((_str181402_
                (if (let () (declare (not safe)) (symbol? _id181400_))
                    (symbol->string _id181400_)
                    _id181400_))
               (_len181404_ (string-length _str181402_))
               (_res181406_ (make-string _len181404_)))
          (let _lp181409_ ((_i181411_ '0))
            (if (fx< _i181411_ _len181404_)
                (let* ((_char181413_ (string-ref _str181402_ _i181411_))
                       (_xchar181415_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char181413_))
                            '#\_
                            _char181413_)))
                  (string-set! _res181406_ _i181411_ _xchar181415_)
                  (let ((__tmp185803
                         (let () (declare (not safe)) (fx+ _i181411_ '1))))
                    (declare (not safe))
                    (_lp181409_ __tmp185803)))
                _res181406_)))))))
