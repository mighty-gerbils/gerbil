(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707840756)
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
      (let ((__tmp196330 (list))
            (__tmp196328
             (let ((__tmp196329
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp196329 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp196330
         '(gensyms bindings)
         __tmp196328
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args191713_
        (apply make-instance gxc#symbol-table::t _$args191713_)))
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
      (lambda (_self191711_)
        (if (let ((__tmp196335
                   (let ()
                     (declare (not safe))
                     (##structure-length _self191711_))))
              (declare (not safe))
              (##fx< '2 __tmp196335))
            (begin
              (let ((__tmp196332
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp196331
                     (let ()
                       (declare (not safe))
                       (##structure-type _self191711_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self191711_
                 __tmp196332
                 '1
                 __tmp196331
                 '#f))
              (let ((__tmp196334
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp196333
                     (let ()
                       (declare (not safe))
                       (##structure-type _self191711_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self191711_
                 __tmp196334
                 '2
                 __tmp196333
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self191711_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self191711_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message191580_ _stx191581_ . _details191582_)
        (let ((_ctx191587_
               (let ((_$e191584_ (gxc#current-compile-context)))
                 (if _$e191584_ _$e191584_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx191587_
                 _message191580_
                 _stx191581_
                 _details191582_))))
    (define gxc#verbose
      (lambda _args191577_
        (if (gxc#current-compile-verbose)
            (let ((__tmp196336 (lambda () (apply displayln _args191577_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp196336))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id191559_)
        (let* ((_str191561_
                (if (let () (declare (not safe)) (symbol? _id191559_))
                    (symbol->string _id191559_)
                    _id191559_))
               (_len191563_ (string-length _str191561_))
               (_res191565_ (make-string _len191563_)))
          (let _lp191568_ ((_i191570_ '0))
            (if (fx< _i191570_ _len191563_)
                (let* ((_char191572_ (string-ref _str191561_ _i191570_))
                       (_xchar191574_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char191572_))
                            '#\_
                            _char191572_)))
                  (string-set! _res191565_ _i191570_ _xchar191574_)
                  (let ((__tmp196337
                         (let () (declare (not safe)) (fx+ _i191570_ '1))))
                    (declare (not safe))
                    (_lp191568_ __tmp196337)))
                _res191565_)))))))
