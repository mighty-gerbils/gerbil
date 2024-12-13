(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1734131747)
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
       (let ((_%verbosity134039134041%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity134039134041%_
             (let* ((_%verbosity134044%_ _%verbosity134039134041%_)
                    (_%$e134046%_ (string->number _%verbosity134044%_)))
               (if _%$e134046%_ _%$e134046%_ _%verbosity134044%_))
             '#f))))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#current-compile-parallel (make-parameter '#f))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp134101 (list)) (__tmp134100 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp134101
         '(gensyms bindings)
         __tmp134100
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args134037%_
        (apply make-instance gxc#symbol-table::t _%$args134037%_)))
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
      (lambda (_%self133559134022%_)
        (let* ((_%self134025%_ _%self133559134022%_)
               (_%self134027%_ _%self134025%_))
          (if (let ((__tmp134102
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self134027%_))))
                (declare (not safe))
                (##fx< '2 __tmp134102))
              (begin
                (let ((__tmp134103
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134027%_
                   __tmp134103
                   '1
                   '#f
                   '#f))
                (let ((__tmp134104
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134027%_
                   __tmp134104
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp134105
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self134027%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self134027%_
                       '2
                       __tmp134105))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message133891%_ _%stx133892%_ . _%details133893%_)
        (let ((_%ctx133898%_
               (let ((_%$e133895%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e133895%_ _%$e133895%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx133898%_
                 _%message133891%_
                 _%stx133892%_
                 _%details133893%_))))
    (define gxc#verbose
      (lambda _%args133888%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp134106
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args133888%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp134106))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id133870%_)
        (let* ((_%str133872%_
                (if (symbol? _%id133870%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id133870%_))
                    _%id133870%_))
               (_%len133874%_ (string-length _%str133872%_))
               (_%res133876%_
                (let () (declare (not safe)) (##make-string _%len133874%_))))
          (let _%lp133879%_ ((_%i133881%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i133881%_ _%len133874%_))
                (let* ((_%char133883%_ (string-ref _%str133872%_ _%i133881%_))
                       (_%xchar133885%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char133883%_))
                            '#\_
                            _%char133883%_)))
                  (string-set! _%res133876%_ _%i133881%_ _%xchar133885%_)
                  (_%lp133879%_
                   (let () (declare (not safe)) (##fx+ _%i133881%_ '1))))
                _%res133876%_)))))
    (define gxc#map*
      (lambda (_%proc133812%_ _%maybe-improper-list133813%_)
        (let _%recur133815%_ ((_%rest133817%_ _%maybe-improper-list133813%_))
          (let* ((_%rest133818133829%_ _%rest133817%_)
                 (_%E133822133833%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest133818133829%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K133825133858%_
                   (lambda (_%rest133855%_ _%hd133856%_)
                     (cons (_%proc133812%_ _%hd133856%_)
                           (_%recur133815%_ _%rest133855%_))))
                  (_%K133824133849%_ (lambda () '()))
                  (_%K133823133839%_
                   (lambda (_%tail133837%_) (_%proc133812%_ _%tail133837%_))))
              (let ((_%try-match133820133852%_
                     (lambda ()
                       (if (null? _%rest133818133829%_)
                           (_%K133824133849%_)
                           (let ((_%tail133842%_ _%rest133818133829%_))
                             (declare (not safe))
                             (_%proc133812%_ _%tail133842%_))))))
                (if (pair? _%rest133818133829%_)
                    (let ((_%tl133827133863%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest133818133829%_)))
                          (_%hd133826133861%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest133818133829%_))))
                      (let ((_%hd133866%_ _%hd133826133861%_)
                            (_%rest133868%_ _%tl133827133863%_))
                        (_%K133825133858%_ _%rest133868%_ _%hd133866%_)))
                    (_%try-match133820133852%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym133807%_)
        (let ((_%$e133809%_ (not (gxc#gensym-reference? _%sym133807%_))))
          (if _%$e133809%_
              _%$e133809%_
              (memq _%sym133807%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym133803%_)
        (let ((_%str133805%_ (symbol->string _%sym133803%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str133805%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str133805%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id133774%_)
        (let ((_%$e133776%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id133774%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id133774%_))
                   '#f)))
          (if _%$e133776%_
              ((lambda (_%bind133779%_)
                 (let ((_%eid133781%_
                        (##structure-ref _%bind133779%_ '1 gx#binding::t '#f))
                       (_%ht133782%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid133781%_))
                       _%eid133781%_
                       (let ((_%$e133785%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht133782%_ _%eid133781%_))))
                         (if _%$e133785%_
                             _%$e133785%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind133779%_
                                    'gx#local-binding::t))
                                 (let ((_%gid133789%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid133781%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht133782%_
                                      _%eid133781%_
                                      _%gid133789%_))
                                   _%gid133789%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind133779%_
                                        'gx#module-binding::t))
                                     (let ((_%gid133798%_
                                            (let ((_%$e133792%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind133779%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e133792%_
                                                  ((lambda (_%ns133795%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns133795%_
                                                        '"#"
                                                        _%eid133781%_)))
                                                   _%$e133792%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid133781%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht133782%_
                                          _%eid133781%_
                                          _%gid133798%_))
                                       _%gid133798%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id133774%_
                                      _%eid133781%_
                                      _%bind133779%_))))))))
               _%$e133776%_)
              (if (let ((__tmp134107
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id133774%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp134107))
                  (let () (declare (not safe)) (gx#stx-e _%id133774%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id133774%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id133772%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id133772%_))
            (gxc#generate-runtime-binding-id _%id133772%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top133759%_)
        (if _%top133759%_
            (let ((_%ns133761%_
                   (##structure-ref
                    (let ((__tmp134108
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp134108))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi133762%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns133761%_
                  (if (fxpositive? _%phi133762%_)
                      (let ((__tmp134110 (number->string _%phi133762%_))
                            (__tmp134109
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns133761%_
                         '"["
                         __tmp134110
                         '"]#_"
                         __tmp134109
                         '"_"))
                      (let ((__tmp134111
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns133761%_ '"#_" __tmp134111 '"_")))
                  (if (fxpositive? _%phi133762%_)
                      (let ((__tmp134113 (number->string _%phi133762%_))
                            (__tmp134112
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp134113
                         '"]#_"
                         __tmp134112
                         '"_"))
                      (let ((__tmp134114
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp134114 '"_")))))
            (let ((__tmp134115 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp134115 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top133768%_ '#f))
          (gxc#generate-runtime-temporary__% _%top133768%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g134117_
        (let ((_g134116_ (let () (declare (not safe)) (##length _g134117_))))
          (cond ((let () (declare (not safe)) (##fx= _g134116_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g134117_))
                ((let () (declare (not safe)) (##fx= _g134116_ 1))
                 (apply gxc#generate-runtime-temporary__% _g134117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g134117_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym133737%_ _%quote?133738%_)
        (let* ((_%ht133740%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e133742%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht133740%_ _%sym133737%_))))
          (if _%$e133742%_
              _%$e133742%_
              (let ((_%g133746%_
                     (if _%quote?133738%_
                         (let ((__tmp134118
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym133737%_
                            '"__"
                            __tmp134118))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym133737%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht133740%_ _%sym133737%_ _%g133746%_))
                _%g133746%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym133751%_)
        (let ((_%quote?133753%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym133751%_
           _%quote?133753%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g134120_
        (let ((_g134119_ (let () (declare (not safe)) (##length _g134120_))))
          (cond ((let () (declare (not safe)) (##fx= _g134119_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g134120_))
                ((let () (declare (not safe)) (##fx= _g134119_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g134120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g134120_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1133729%_ _%id2133730%_)
        (letrec ((_%symbol-e133732%_
                  (lambda (_%id133734%_)
                    (if (symbol? _%id133734%_)
                        _%id133734%_
                        (gxc#generate-runtime-binding-id _%id133734%_)))))
          (eq? (_%symbol-e133732%_ _%id1133729%_)
               (_%symbol-e133732%_ _%id2133730%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx133727%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx133727%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx133727%_)
            (let () (declare (not safe)) (gx#stx-e _%stx133727%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk133712%_ _%name133713%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job133715%_
               (gxc#make-compile-job _%thunk133712%_ _%name133713%_)))
          (set! gxc#__compile-jobs (cons _%job133715%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk133720%_)
        (let ((_%name133722%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk133720%_ _%name133722%_))))
    (define gxc#add-compile-job!
      (lambda _g134122_
        (let ((_g134121_ (let () (declare (not safe)) (##length _g134122_))))
          (cond ((let () (declare (not safe)) (##fx= _g134121_ 1))
                 (apply gxc#add-compile-job!__0 _g134122_))
                ((let () (declare (not safe)) (##fx= _g134121_ 2))
                 (apply gxc#add-compile-job!__% _g134122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g134122_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result133709%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result133709%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop133703%_ ()
          (let ((_%pending133706%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending133706%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending133706%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending133706%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk133692%_ _%name133693%_)
        (make-thread
         (lambda ()
           (let _%loop133696%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp134123
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name133693%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp134123))
                   (let ((__tmp134125 (lambda () (_%thunk133692%_)))
                         (__tmp134124
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp134125 __tmp134124)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop133696%_)))))
         _%name133693%_)))
    (define gxc#join!
      (lambda (_%thread133687%_)
        (let ((__tmp134127
               (lambda (_%exn133689%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn133689%_))
                     (let ((__tmp134128
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn133689%_))))
                       (declare (not safe))
                       (raise __tmp134128))
                     (let () (declare (not safe)) (raise _%exn133689%_)))))
              (__tmp134126 (lambda () (thread-join! _%thread133687%_))))
          (declare (not safe))
          (__with-catch __tmp134127 __tmp134126))))))
