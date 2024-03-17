(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710687285)
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
      (let ((__tmp99262 (list))
            (__tmp99260
             (let ((__tmp99261
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp99261 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp99262
         '(gensyms bindings)
         __tmp99260
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args99213_
        (apply make-instance gxc#symbol-table::t _$args99213_)))
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
      (lambda (_self99211_)
        (if (let ((__tmp99268
                   (let ()
                     (declare (not safe))
                     (##structure-length _self99211_))))
              (declare (not safe))
              (##fx< '2 __tmp99268))
            (begin
              (let ((__tmp99265
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99264
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99211_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99211_
                 __tmp99265
                 '1
                 __tmp99264
                 '#f))
              (let ((__tmp99267
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99266
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99211_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99211_
                 __tmp99267
                 '2
                 __tmp99266
                 '#f)))
            (let ((__tmp99263
                   (let ()
                     (declare (not safe))
                     (##vector-length _self99211_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self99211_
                     '2
                     __tmp99263)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message99080_ _stx99081_ . _details99082_)
        (let ((_ctx99087_
               (let ((_$e99084_ (gxc#current-compile-context)))
                 (if _$e99084_ _$e99084_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx99087_
                 _message99080_
                 _stx99081_
                 _details99082_))))
    (define gxc#verbose
      (lambda _args99077_
        (if (gxc#current-compile-verbose)
            (let ((__tmp99269 (lambda () (apply displayln _args99077_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp99269))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id99059_)
        (let* ((_str99061_
                (if (let () (declare (not safe)) (symbol? _id99059_))
                    (symbol->string _id99059_)
                    _id99059_))
               (_len99063_ (string-length _str99061_))
               (_res99065_ (make-string _len99063_)))
          (let _lp99068_ ((_i99070_ '0))
            (if (fx< _i99070_ _len99063_)
                (let* ((_char99072_ (string-ref _str99061_ _i99070_))
                       (_xchar99074_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char99072_))
                            '#\_
                            _char99072_)))
                  (string-set! _res99065_ _i99070_ _xchar99074_)
                  (let ((__tmp99270
                         (let () (declare (not safe)) (fx+ _i99070_ '1))))
                    (declare (not safe))
                    (_lp99068_ __tmp99270)))
                _res99065_)))))))
