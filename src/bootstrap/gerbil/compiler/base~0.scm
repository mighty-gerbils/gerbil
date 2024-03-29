(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1711709197)
  (begin
    (define gxc#current-compile-symbol-table (make-parameter '#f))
    (define gxc#current-compile-runtime-sections (make-parameter '#f))
    (define gxc#current-compile-runtime-names (make-parameter '#f))
    (define gxc#current-compile-output-dir (make-parameter '#f))
    (define gxc#current-compile-invoke-gsc (make-parameter '#f))
    (define gxc#current-compile-gsc-options (make-parameter '#f))
    (define gxc#current-compile-keep-scm (make-parameter '#f))
    (define gxc#current-compile-verbose
      (make-parameter
       (let ((_verbosity9600396005_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _verbosity9600396005_
             (let* ((_verbosity96008_ _verbosity9600396005_)
                    (_$e96010_ (string->number _verbosity96008_)))
               (if _$e96010_ _$e96010_ _verbosity96008_))
             '#f))))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#symbol-table::t
      (let ((__tmp96065 (list)) (__tmp96064 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp96065
         '(gensyms bindings)
         __tmp96064
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args96001_
        (apply make-instance gxc#symbol-table::t _$args96001_)))
    (define gxc#symbol-table-gensyms
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table:::init!
      (lambda (_self95999_)
        (if (let ((__tmp96066
                   (let ()
                     (declare (not safe))
                     (##structure-length _self95999_))))
              (declare (not safe))
              (##fx< '2 __tmp96066))
            (begin
              (let ((__tmp96067
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (declare (not safe))
                (##unchecked-structure-set! _self95999_ __tmp96067 '1 '#f '#f))
              (let ((__tmp96068
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (declare (not safe))
                (##unchecked-structure-set! _self95999_ __tmp96068 '2 '#f '#f))
              '#!void)
            (let ((__tmp96069
                   (let ()
                     (declare (not safe))
                     (##vector-length _self95999_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self95999_
                     '2
                     __tmp96069)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message95868_ _stx95869_ . _details95870_)
        (let ((_ctx95875_
               (let ((_$e95872_ (gxc#current-compile-context)))
                 (if _$e95872_ _$e95872_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx95875_
                 _message95868_
                 _stx95869_
                 _details95870_))))
    (define gxc#verbose
      (lambda _args95865_
        (if (gxc#current-compile-verbose)
            (let ((__tmp96070 (lambda () (apply displayln _args95865_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp96070))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id95847_)
        (let* ((_str95849_
                (if (let () (declare (not safe)) (symbol? _id95847_))
                    (symbol->string _id95847_)
                    _id95847_))
               (_len95851_ (string-length _str95849_))
               (_res95853_
                (let () (declare (not safe)) (##make-string _len95851_))))
          (let _lp95856_ ((_i95858_ '0))
            (if (let () (declare (not safe)) (##fx< _i95858_ _len95851_))
                (let* ((_char95860_ (string-ref _str95849_ _i95858_))
                       (_xchar95862_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char95860_))
                            '#\_
                            _char95860_)))
                  (string-set! _res95853_ _i95858_ _xchar95862_)
                  (let ((__tmp96071
                         (let () (declare (not safe)) (##fx+ _i95858_ '1))))
                    (declare (not safe))
                    (_lp95856_ __tmp96071)))
                _res95853_)))))
    (define gxc#map*
      (lambda (_proc95789_ _maybe-improper-list95790_)
        (let _recur95792_ ((_rest95794_ _maybe-improper-list95790_))
          (let* ((_rest9579595806_ _rest95794_)
                 (_E9579995810_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _rest9579595806_)))))
            (let ((_K9580295835_
                   (lambda (_rest95832_ _hd95833_)
                     (cons (_proc95789_ _hd95833_)
                           (let ()
                             (declare (not safe))
                             (_recur95792_ _rest95832_)))))
                  (_K9580195826_ (lambda () '()))
                  (_K9580095816_
                   (lambda (_tail95814_) (_proc95789_ _tail95814_))))
              (let ((_try-match9579795829_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest9579595806_))
                           (let () (declare (not safe)) (_K9580195826_))
                           (let ((_tail95819_ _rest9579595806_))
                             (declare (not safe))
                             (_proc95789_ _tail95819_))))))
                (if (let () (declare (not safe)) (##pair? _rest9579595806_))
                    (let ((_tl9580495840_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest9579595806_)))
                          (_hd9580395838_
                           (let ()
                             (declare (not safe))
                             (##car _rest9579595806_))))
                      (let ((_hd95843_ _hd9580395838_)
                            (_rest95845_ _tl9580495840_))
                        (let ()
                          (declare (not safe))
                          (_K9580295835_ _rest95845_ _hd95843_))))
                    (let ()
                      (declare (not safe))
                      (_try-match9579795829_)))))))))))
