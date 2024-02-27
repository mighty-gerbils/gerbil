(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1709038442)
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
      (let ((__tmp97578 (list))
            (__tmp97576
             (let ((__tmp97577
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97577 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp97578
         '(gensyms bindings)
         __tmp97576
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args97529_
        (apply make-instance gxc#symbol-table::t _$args97529_)))
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
      (lambda (_self97527_)
        (if (let ((__tmp97584
                   (let ()
                     (declare (not safe))
                     (##structure-length _self97527_))))
              (declare (not safe))
              (##fx< '2 __tmp97584))
            (begin
              (let ((__tmp97581
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97580
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97527_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97527_
                 __tmp97581
                 '1
                 __tmp97580
                 '#f))
              (let ((__tmp97583
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97582
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97527_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97527_
                 __tmp97583
                 '2
                 __tmp97582
                 '#f)))
            (let ((__tmp97579
                   (let ()
                     (declare (not safe))
                     (##vector-length _self97527_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97527_
                     '2
                     __tmp97579)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message97396_ _stx97397_ . _details97398_)
        (let ((_ctx97403_
               (let ((_$e97400_ (gxc#current-compile-context)))
                 (if _$e97400_ _$e97400_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx97403_
                 _message97396_
                 _stx97397_
                 _details97398_))))
    (define gxc#verbose
      (lambda _args97393_
        (if (gxc#current-compile-verbose)
            (let ((__tmp97585 (lambda () (apply displayln _args97393_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp97585))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id97375_)
        (let* ((_str97377_
                (if (let () (declare (not safe)) (symbol? _id97375_))
                    (symbol->string _id97375_)
                    _id97375_))
               (_len97379_ (string-length _str97377_))
               (_res97381_ (make-string _len97379_)))
          (let _lp97384_ ((_i97386_ '0))
            (if (fx< _i97386_ _len97379_)
                (let* ((_char97388_ (string-ref _str97377_ _i97386_))
                       (_xchar97390_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char97388_))
                            '#\_
                            _char97388_)))
                  (string-set! _res97381_ _i97386_ _xchar97390_)
                  (let ((__tmp97586
                         (let () (declare (not safe)) (fx+ _i97386_ '1))))
                    (declare (not safe))
                    (_lp97384_ __tmp97586)))
                _res97381_)))))))
