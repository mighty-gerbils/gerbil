(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707601717)
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
      (let ((__tmp192760
             (let ((__tmp192761
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp192761 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#symbol-table::t
         'symbol-table
         '#f
         '(gensyms bindings)
         __tmp192760
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args188245_
        (apply make-struct-instance gxc#symbol-table::t _$args188245_)))
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
      (lambda (_self188243_)
        (if (let ((__tmp192766
                   (let ()
                     (declare (not safe))
                     (##structure-length _self188243_))))
              (declare (not safe))
              (##fx< '2 __tmp192766))
            (begin
              (let ((__tmp192763
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192762
                     (let ()
                       (declare (not safe))
                       (##structure-type _self188243_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self188243_
                 __tmp192763
                 '1
                 __tmp192762
                 '#f))
              (let ((__tmp192765
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192764
                     (let ()
                       (declare (not safe))
                       (##structure-type _self188243_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self188243_
                 __tmp192765
                 '2
                 __tmp192764
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self188243_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self188243_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message188112_ _stx188113_ . _details188114_)
        (let ((_ctx188119_
               (let ((_$e188116_ (gxc#current-compile-context)))
                 (if _$e188116_ _$e188116_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx188119_
                 _message188112_
                 _stx188113_
                 _details188114_))))
    (define gxc#verbose
      (lambda _args188109_
        (if (gxc#current-compile-verbose)
            (let ((__tmp192767 (lambda () (apply displayln _args188109_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp192767))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id188091_)
        (let* ((_str188093_
                (if (let () (declare (not safe)) (symbol? _id188091_))
                    (symbol->string _id188091_)
                    _id188091_))
               (_len188095_ (string-length _str188093_))
               (_res188097_ (make-string _len188095_)))
          (let _lp188100_ ((_i188102_ '0))
            (if (fx< _i188102_ _len188095_)
                (let* ((_char188104_ (string-ref _str188093_ _i188102_))
                       (_xchar188106_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char188104_))
                            '#\_
                            _char188104_)))
                  (string-set! _res188097_ _i188102_ _xchar188106_)
                  (let ((__tmp192768
                         (let () (declare (not safe)) (fx+ _i188102_ '1))))
                    (declare (not safe))
                    (_lp188100_ __tmp192768)))
                _res188097_)))))))
