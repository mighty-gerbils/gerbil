(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708370114)
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
      (let ((__tmp97168 (list))
            (__tmp97166
             (let ((__tmp97167
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97167 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp97168
         '(gensyms bindings)
         __tmp97166
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args97119_
        (apply make-instance gxc#symbol-table::t _$args97119_)))
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
      (lambda (_self97117_)
        (if (let ((__tmp97174
                   (let ()
                     (declare (not safe))
                     (##structure-length _self97117_))))
              (declare (not safe))
              (##fx< '2 __tmp97174))
            (begin
              (let ((__tmp97171
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97170
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97117_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97117_
                 __tmp97171
                 '1
                 __tmp97170
                 '#f))
              (let ((__tmp97173
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97172
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97117_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97117_
                 __tmp97173
                 '2
                 __tmp97172
                 '#f)))
            (let ((__tmp97169
                   (let ()
                     (declare (not safe))
                     (##vector-length _self97117_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97117_
                     '2
                     __tmp97169)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message96986_ _stx96987_ . _details96988_)
        (let ((_ctx96993_
               (let ((_$e96990_ (gxc#current-compile-context)))
                 (if _$e96990_ _$e96990_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx96993_
                 _message96986_
                 _stx96987_
                 _details96988_))))
    (define gxc#verbose
      (lambda _args96983_
        (if (gxc#current-compile-verbose)
            (let ((__tmp97175 (lambda () (apply displayln _args96983_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp97175))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id96965_)
        (let* ((_str96967_
                (if (let () (declare (not safe)) (symbol? _id96965_))
                    (symbol->string _id96965_)
                    _id96965_))
               (_len96969_ (string-length _str96967_))
               (_res96971_ (make-string _len96969_)))
          (let _lp96974_ ((_i96976_ '0))
            (if (fx< _i96976_ _len96969_)
                (let* ((_char96978_ (string-ref _str96967_ _i96976_))
                       (_xchar96980_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char96978_))
                            '#\_
                            _char96978_)))
                  (string-set! _res96971_ _i96976_ _xchar96980_)
                  (let ((__tmp97176
                         (let () (declare (not safe)) (fx+ _i96976_ '1))))
                    (declare (not safe))
                    (_lp96974_ __tmp97176)))
                _res96971_)))))))
