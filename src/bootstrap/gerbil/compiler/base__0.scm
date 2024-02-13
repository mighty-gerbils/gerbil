(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707831901)
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
      (let ((__tmp195577 (list))
            (__tmp195575
             (let ((__tmp195576
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp195576 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp195577
         '(gensyms bindings)
         __tmp195575
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args190960_
        (apply make-instance gxc#symbol-table::t _$args190960_)))
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
      (lambda (_self190958_)
        (if (let ((__tmp195578
                   (let ()
                     (declare (not safe))
                     (##structure-length _self190958_))))
              (declare (not safe))
              (##fx< '2 __tmp195578))
            (begin
              (let ((__tmp195580
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp195579
                     (let ()
                       (declare (not safe))
                       (##structure-type _self190958_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self190958_
                 __tmp195580
                 '1
                 __tmp195579
                 '#f))
              (let ((__tmp195582
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp195581
                     (let ()
                       (declare (not safe))
                       (##structure-type _self190958_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self190958_
                 __tmp195582
                 '2
                 __tmp195581
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self190958_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self190958_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message190827_ _stx190828_ . _details190829_)
        (let ((_ctx190834_
               (let ((_$e190831_ (gxc#current-compile-context)))
                 (if _$e190831_ _$e190831_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx190834_
                 _message190827_
                 _stx190828_
                 _details190829_))))
    (define gxc#verbose
      (lambda _args190824_
        (if (gxc#current-compile-verbose)
            (let ((__tmp195583 (lambda () (apply displayln _args190824_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp195583))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id190806_)
        (let* ((_str190808_
                (if (let () (declare (not safe)) (symbol? _id190806_))
                    (symbol->string _id190806_)
                    _id190806_))
               (_len190810_ (string-length _str190808_))
               (_res190812_ (make-string _len190810_)))
          (let _lp190815_ ((_i190817_ '0))
            (if (fx< _i190817_ _len190810_)
                (let* ((_char190819_ (string-ref _str190808_ _i190817_))
                       (_xchar190821_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char190819_))
                            '#\_
                            _char190819_)))
                  (string-set! _res190812_ _i190817_ _xchar190821_)
                  (let ((__tmp195584
                         (let () (declare (not safe)) (fx+ _i190817_ '1))))
                    (declare (not safe))
                    (_lp190815_ __tmp195584)))
                _res190812_)))))))
