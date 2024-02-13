(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707847729)
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
      (let ((__tmp196229 (list))
            (__tmp196227
             (let ((__tmp196228
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp196228 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp196229
         '(gensyms bindings)
         __tmp196227
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args191612_
        (apply make-instance gxc#symbol-table::t _$args191612_)))
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
      (lambda (_self191610_)
        (if (let ((__tmp196234
                   (let ()
                     (declare (not safe))
                     (##structure-length _self191610_))))
              (declare (not safe))
              (##fx< '2 __tmp196234))
            (begin
              (let ((__tmp196231
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp196230
                     (let ()
                       (declare (not safe))
                       (##structure-type _self191610_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self191610_
                 __tmp196231
                 '1
                 __tmp196230
                 '#f))
              (let ((__tmp196233
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp196232
                     (let ()
                       (declare (not safe))
                       (##structure-type _self191610_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self191610_
                 __tmp196233
                 '2
                 __tmp196232
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self191610_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self191610_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message191479_ _stx191480_ . _details191481_)
        (let ((_ctx191486_
               (let ((_$e191483_ (gxc#current-compile-context)))
                 (if _$e191483_ _$e191483_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx191486_
                 _message191479_
                 _stx191480_
                 _details191481_))))
    (define gxc#verbose
      (lambda _args191476_
        (if (gxc#current-compile-verbose)
            (let ((__tmp196235 (lambda () (apply displayln _args191476_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp196235))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id191458_)
        (let* ((_str191460_
                (if (let () (declare (not safe)) (symbol? _id191458_))
                    (symbol->string _id191458_)
                    _id191458_))
               (_len191462_ (string-length _str191460_))
               (_res191464_ (make-string _len191462_)))
          (let _lp191467_ ((_i191469_ '0))
            (if (fx< _i191469_ _len191462_)
                (let* ((_char191471_ (string-ref _str191460_ _i191469_))
                       (_xchar191473_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char191471_))
                            '#\_
                            _char191471_)))
                  (string-set! _res191464_ _i191469_ _xchar191473_)
                  (let ((__tmp196236
                         (let () (declare (not safe)) (fx+ _i191469_ '1))))
                    (declare (not safe))
                    (_lp191467_ __tmp196236)))
                _res191464_)))))))
