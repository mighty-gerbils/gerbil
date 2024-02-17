(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708168070)
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
      (let ((__tmp202920 (list))
            (__tmp202918
             (let ((__tmp202919
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp202919 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp202920
         '(gensyms bindings)
         __tmp202918
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args198303_
        (apply make-instance gxc#symbol-table::t _$args198303_)))
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
      (lambda (_self198301_)
        (if (let ((__tmp202925
                   (let ()
                     (declare (not safe))
                     (##structure-length _self198301_))))
              (declare (not safe))
              (##fx< '2 __tmp202925))
            (begin
              (let ((__tmp202922
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp202921
                     (let ()
                       (declare (not safe))
                       (##structure-type _self198301_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self198301_
                 __tmp202922
                 '1
                 __tmp202921
                 '#f))
              (let ((__tmp202924
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp202923
                     (let ()
                       (declare (not safe))
                       (##structure-type _self198301_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self198301_
                 __tmp202924
                 '2
                 __tmp202923
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self198301_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self198301_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message198170_ _stx198171_ . _details198172_)
        (let ((_ctx198177_
               (let ((_$e198174_ (gxc#current-compile-context)))
                 (if _$e198174_ _$e198174_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx198177_
                 _message198170_
                 _stx198171_
                 _details198172_))))
    (define gxc#verbose
      (lambda _args198167_
        (if (gxc#current-compile-verbose)
            (let ((__tmp202926 (lambda () (apply displayln _args198167_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp202926))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id198149_)
        (let* ((_str198151_
                (if (let () (declare (not safe)) (symbol? _id198149_))
                    (symbol->string _id198149_)
                    _id198149_))
               (_len198153_ (string-length _str198151_))
               (_res198155_ (make-string _len198153_)))
          (let _lp198158_ ((_i198160_ '0))
            (if (fx< _i198160_ _len198153_)
                (let* ((_char198162_ (string-ref _str198151_ _i198160_))
                       (_xchar198164_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char198162_))
                            '#\_
                            _char198162_)))
                  (string-set! _res198155_ _i198160_ _xchar198164_)
                  (let ((__tmp202927
                         (let () (declare (not safe)) (fx+ _i198160_ '1))))
                    (declare (not safe))
                    (_lp198158_ __tmp202927)))
                _res198155_)))))))
