(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710488241)
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
      (let ((__tmp97809 (list))
            (__tmp97807
             (let ((__tmp97808
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97808 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp97809
         '(gensyms bindings)
         __tmp97807
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args97760_
        (apply make-instance gxc#symbol-table::t _$args97760_)))
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
      (lambda (_self97758_)
        (if (let ((__tmp97815
                   (let ()
                     (declare (not safe))
                     (##structure-length _self97758_))))
              (declare (not safe))
              (##fx< '2 __tmp97815))
            (begin
              (let ((__tmp97812
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97811
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97758_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97758_
                 __tmp97812
                 '1
                 __tmp97811
                 '#f))
              (let ((__tmp97814
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97813
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97758_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97758_
                 __tmp97814
                 '2
                 __tmp97813
                 '#f)))
            (let ((__tmp97810
                   (let ()
                     (declare (not safe))
                     (##vector-length _self97758_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97758_
                     '2
                     __tmp97810)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message97627_ _stx97628_ . _details97629_)
        (let ((_ctx97634_
               (let ((_$e97631_ (gxc#current-compile-context)))
                 (if _$e97631_ _$e97631_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx97634_
                 _message97627_
                 _stx97628_
                 _details97629_))))
    (define gxc#verbose
      (lambda _args97624_
        (if (gxc#current-compile-verbose)
            (let ((__tmp97816 (lambda () (apply displayln _args97624_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp97816))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id97606_)
        (let* ((_str97608_
                (if (let () (declare (not safe)) (symbol? _id97606_))
                    (symbol->string _id97606_)
                    _id97606_))
               (_len97610_ (string-length _str97608_))
               (_res97612_ (make-string _len97610_)))
          (let _lp97615_ ((_i97617_ '0))
            (if (fx< _i97617_ _len97610_)
                (let* ((_char97619_ (string-ref _str97608_ _i97617_))
                       (_xchar97621_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char97619_))
                            '#\_
                            _char97619_)))
                  (string-set! _res97612_ _i97617_ _xchar97621_)
                  (let ((__tmp97817
                         (let () (declare (not safe)) (fx+ _i97617_ '1))))
                    (declare (not safe))
                    (_lp97615_ __tmp97817)))
                _res97612_)))))))
