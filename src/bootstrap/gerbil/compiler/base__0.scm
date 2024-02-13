(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707846531)
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
      (let ((__tmp196228 (list))
            (__tmp196226
             (let ((__tmp196227
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp196227 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp196228
         '(gensyms bindings)
         __tmp196226
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args191611_
        (apply make-instance gxc#symbol-table::t _$args191611_)))
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
      (lambda (_self191609_)
        (if (let ((__tmp196233
                   (let ()
                     (declare (not safe))
                     (##structure-length _self191609_))))
              (declare (not safe))
              (##fx< '2 __tmp196233))
            (begin
              (let ((__tmp196230
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp196229
                     (let ()
                       (declare (not safe))
                       (##structure-type _self191609_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self191609_
                 __tmp196230
                 '1
                 __tmp196229
                 '#f))
              (let ((__tmp196232
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp196231
                     (let ()
                       (declare (not safe))
                       (##structure-type _self191609_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self191609_
                 __tmp196232
                 '2
                 __tmp196231
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self191609_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self191609_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message191478_ _stx191479_ . _details191480_)
        (let ((_ctx191485_
               (let ((_$e191482_ (gxc#current-compile-context)))
                 (if _$e191482_ _$e191482_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx191485_
                 _message191478_
                 _stx191479_
                 _details191480_))))
    (define gxc#verbose
      (lambda _args191475_
        (if (gxc#current-compile-verbose)
            (let ((__tmp196234 (lambda () (apply displayln _args191475_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp196234))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id191457_)
        (let* ((_str191459_
                (if (let () (declare (not safe)) (symbol? _id191457_))
                    (symbol->string _id191457_)
                    _id191457_))
               (_len191461_ (string-length _str191459_))
               (_res191463_ (make-string _len191461_)))
          (let _lp191466_ ((_i191468_ '0))
            (if (fx< _i191468_ _len191461_)
                (let* ((_char191470_ (string-ref _str191459_ _i191468_))
                       (_xchar191472_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char191470_))
                            '#\_
                            _char191470_)))
                  (string-set! _res191463_ _i191468_ _xchar191472_)
                  (let ((__tmp196235
                         (let () (declare (not safe)) (fx+ _i191468_ '1))))
                    (declare (not safe))
                    (_lp191466_ __tmp196235)))
                _res191463_)))))))
