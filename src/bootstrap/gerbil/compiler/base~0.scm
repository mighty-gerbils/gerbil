(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710781149)
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
      (let ((__tmp99560 (list))
            (__tmp99558
             (let ((__tmp99559
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp99559 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp99560
         '(gensyms bindings)
         __tmp99558
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args99511_
        (apply make-instance gxc#symbol-table::t _$args99511_)))
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
      (lambda (_self99509_)
        (if (let ((__tmp99566
                   (let ()
                     (declare (not safe))
                     (##structure-length _self99509_))))
              (declare (not safe))
              (##fx< '2 __tmp99566))
            (begin
              (let ((__tmp99563
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99562
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99509_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99509_
                 __tmp99563
                 '1
                 __tmp99562
                 '#f))
              (let ((__tmp99565
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99564
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99509_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99509_
                 __tmp99565
                 '2
                 __tmp99564
                 '#f)))
            (let ((__tmp99561
                   (let ()
                     (declare (not safe))
                     (##vector-length _self99509_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self99509_
                     '2
                     __tmp99561)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message99378_ _stx99379_ . _details99380_)
        (let ((_ctx99385_
               (let ((_$e99382_ (gxc#current-compile-context)))
                 (if _$e99382_ _$e99382_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx99385_
                 _message99378_
                 _stx99379_
                 _details99380_))))
    (define gxc#verbose
      (lambda _args99375_
        (if (gxc#current-compile-verbose)
            (let ((__tmp99567 (lambda () (apply displayln _args99375_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp99567))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id99357_)
        (let* ((_str99359_
                (if (let () (declare (not safe)) (symbol? _id99357_))
                    (symbol->string _id99357_)
                    _id99357_))
               (_len99361_ (string-length _str99359_))
               (_res99363_ (make-string _len99361_)))
          (let _lp99366_ ((_i99368_ '0))
            (if (fx< _i99368_ _len99361_)
                (let* ((_char99370_ (string-ref _str99359_ _i99368_))
                       (_xchar99372_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char99370_))
                            '#\_
                            _char99370_)))
                  (string-set! _res99363_ _i99368_ _xchar99372_)
                  (let ((__tmp99568
                         (let () (declare (not safe)) (fx+ _i99368_ '1))))
                    (declare (not safe))
                    (_lp99366_ __tmp99568)))
                _res99363_)))))))
