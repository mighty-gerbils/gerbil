(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710833425)
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
      (let ((__tmp99564 (list))
            (__tmp99562
             (let ((__tmp99563
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp99563 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp99564
         '(gensyms bindings)
         __tmp99562
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args99515_
        (apply make-instance gxc#symbol-table::t _$args99515_)))
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
      (lambda (_self99513_)
        (if (let ((__tmp99570
                   (let ()
                     (declare (not safe))
                     (##structure-length _self99513_))))
              (declare (not safe))
              (##fx< '2 __tmp99570))
            (begin
              (let ((__tmp99567
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99566
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99513_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99513_
                 __tmp99567
                 '1
                 __tmp99566
                 '#f))
              (let ((__tmp99569
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99568
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99513_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99513_
                 __tmp99569
                 '2
                 __tmp99568
                 '#f)))
            (let ((__tmp99565
                   (let ()
                     (declare (not safe))
                     (##vector-length _self99513_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self99513_
                     '2
                     __tmp99565)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message99382_ _stx99383_ . _details99384_)
        (let ((_ctx99389_
               (let ((_$e99386_ (gxc#current-compile-context)))
                 (if _$e99386_ _$e99386_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx99389_
                 _message99382_
                 _stx99383_
                 _details99384_))))
    (define gxc#verbose
      (lambda _args99379_
        (if (gxc#current-compile-verbose)
            (let ((__tmp99571 (lambda () (apply displayln _args99379_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp99571))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id99361_)
        (let* ((_str99363_
                (if (let () (declare (not safe)) (symbol? _id99361_))
                    (symbol->string _id99361_)
                    _id99361_))
               (_len99365_ (string-length _str99363_))
               (_res99367_ (make-string _len99365_)))
          (let _lp99370_ ((_i99372_ '0))
            (if (fx< _i99372_ _len99365_)
                (let* ((_char99374_ (string-ref _str99363_ _i99372_))
                       (_xchar99376_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char99374_))
                            '#\_
                            _char99374_)))
                  (string-set! _res99367_ _i99372_ _xchar99376_)
                  (let ((__tmp99572
                         (let () (declare (not safe)) (fx+ _i99372_ '1))))
                    (declare (not safe))
                    (_lp99370_ __tmp99572)))
                _res99367_)))))))
