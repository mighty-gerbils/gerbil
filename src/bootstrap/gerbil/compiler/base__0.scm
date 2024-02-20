(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708451994)
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
      (let ((__tmp94817 (list))
            (__tmp94815
             (let ((__tmp94816
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp94816 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp94817
         '(gensyms bindings)
         __tmp94815
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args94768_
        (apply make-instance gxc#symbol-table::t _$args94768_)))
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
      (lambda (_self94766_)
        (if (let ((__tmp94818
                   (let ()
                     (declare (not safe))
                     (##structure-length _self94766_))))
              (declare (not safe))
              (##fx< '2 __tmp94818))
            (begin
              (let ((__tmp94820
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp94819
                     (let ()
                       (declare (not safe))
                       (##structure-type _self94766_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self94766_
                 __tmp94820
                 '1
                 __tmp94819
                 '#f))
              (let ((__tmp94822
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp94821
                     (let ()
                       (declare (not safe))
                       (##structure-type _self94766_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self94766_
                 __tmp94822
                 '2
                 __tmp94821
                 '#f)))
            (let ((__tmp94823
                   (let ()
                     (declare (not safe))
                     (##vector-length _self94766_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self94766_
                     '2
                     __tmp94823)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message94635_ _stx94636_ . _details94637_)
        (let ((_ctx94642_
               (let ((_$e94639_ (gxc#current-compile-context)))
                 (if _$e94639_ _$e94639_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx94642_
                 _message94635_
                 _stx94636_
                 _details94637_))))
    (define gxc#verbose
      (lambda _args94632_
        (if (gxc#current-compile-verbose)
            (let ((__tmp94824 (lambda () (apply displayln _args94632_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp94824))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id94614_)
        (let* ((_str94616_
                (if (let () (declare (not safe)) (symbol? _id94614_))
                    (symbol->string _id94614_)
                    _id94614_))
               (_len94618_ (string-length _str94616_))
               (_res94620_ (make-string _len94618_)))
          (let _lp94623_ ((_i94625_ '0))
            (if (fx< _i94625_ _len94618_)
                (let* ((_char94627_ (string-ref _str94616_ _i94625_))
                       (_xchar94629_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char94627_))
                            '#\_
                            _char94627_)))
                  (string-set! _res94620_ _i94625_ _xchar94629_)
                  (let ((__tmp94825
                         (let () (declare (not safe)) (fx+ _i94625_ '1))))
                    (declare (not safe))
                    (_lp94623_ __tmp94825)))
                _res94620_)))))))
