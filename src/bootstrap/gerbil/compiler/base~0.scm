(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712696214)
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
       (let ((_%verbosity130668130670%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity130668130670%_
             (let* ((_%verbosity130673%_ _%verbosity130668130670%_)
                    (_%$e130675%_ (string->number _%verbosity130673%_)))
               (if _%$e130675%_ _%$e130675%_ _%verbosity130673%_))
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
      (let ((__tmp130730 (list)) (__tmp130729 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp130730
         '(gensyms bindings)
         __tmp130729
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args130666%_
        (apply make-instance gxc#symbol-table::t _%$args130666%_)))
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
      (lambda (_%self130653%_)
        (let ((_%self130656%_ _%self130653%_))
          (if (let ((__tmp130731
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self130656%_))))
                (declare (not safe))
                (##fx< '2 __tmp130731))
              (begin
                (let ((__tmp130732
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130656%_
                   __tmp130732
                   '1
                   '#f
                   '#f))
                (let ((__tmp130733
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130656%_
                   __tmp130733
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp130734
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self130656%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self130656%_
                       '2
                       __tmp130734))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message130522%_ _%stx130523%_ . _%details130524%_)
        (let ((_%ctx130529%_
               (let ((_%$e130526%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e130526%_ _%$e130526%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx130529%_
                 _%message130522%_
                 _%stx130523%_
                 _%details130524%_))))
    (define gxc#verbose
      (lambda _%args130519%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp130735 (lambda () (apply displayln _%args130519%_))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp130735))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id130501%_)
        (let* ((_%str130503%_
                (if (let () (declare (not safe)) (symbol? _%id130501%_))
                    (symbol->string _%id130501%_)
                    _%id130501%_))
               (_%len130505%_ (string-length _%str130503%_))
               (_%res130507%_
                (let () (declare (not safe)) (##make-string _%len130505%_))))
          (let _%lp130510%_ ((_%i130512%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i130512%_ _%len130505%_))
                (let* ((_%char130514%_ (string-ref _%str130503%_ _%i130512%_))
                       (_%xchar130516%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char130514%_))
                            '#\_
                            _%char130514%_)))
                  (string-set! _%res130507%_ _%i130512%_ _%xchar130516%_)
                  (let ((__tmp130736
                         (let () (declare (not safe)) (##fx+ _%i130512%_ '1))))
                    (declare (not safe))
                    (_%lp130510%_ __tmp130736)))
                _%res130507%_)))))
    (define gxc#map*
      (lambda (_%proc130443%_ _%maybe-improper-list130444%_)
        (let _%recur130446%_ ((_%rest130448%_ _%maybe-improper-list130444%_))
          (let* ((_%rest130449130460%_ _%rest130448%_)
                 (_%E130453130464%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest130449130460%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K130456130489%_
                   (lambda (_%rest130486%_ _%hd130487%_)
                     (cons (_%proc130443%_ _%hd130487%_)
                           (let ()
                             (declare (not safe))
                             (_%recur130446%_ _%rest130486%_)))))
                  (_%K130455130480%_ (lambda () '()))
                  (_%K130454130470%_
                   (lambda (_%tail130468%_) (_%proc130443%_ _%tail130468%_))))
              (let ((_%try-match130451130483%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest130449130460%_))
                           (let () (declare (not safe)) (_%K130455130480%_))
                           (let ((_%tail130473%_ _%rest130449130460%_))
                             (declare (not safe))
                             (_%proc130443%_ _%tail130473%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest130449130460%_))
                    (let ((_%tl130458130494%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest130449130460%_)))
                          (_%hd130457130492%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest130449130460%_))))
                      (let ((_%hd130497%_ _%hd130457130492%_)
                            (_%rest130499%_ _%tl130458130494%_))
                        (let ()
                          (declare (not safe))
                          (_%K130456130489%_ _%rest130499%_ _%hd130497%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match130451130483%_)))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym130438%_)
        (let ((_%$e130440%_
               (let ((__tmp130737
                      (let ()
                        (declare (not safe))
                        (gxc#gensym-reference? _%sym130438%_))))
                 (declare (not safe))
                 (not __tmp130737))))
          (if _%$e130440%_
              _%$e130440%_
              (memq _%sym130438%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym130434%_)
        (let ((_%str130436%_ (symbol->string _%sym130434%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str130436%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str130436%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id130405%_)
        (let ((_%$e130407%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id130405%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id130405%_))
                   '#f)))
          (if _%$e130407%_
              ((lambda (_%bind130410%_)
                 (let ((_%eid130412%_
                        (##structure-ref _%bind130410%_ '1 gx#binding::t '#f))
                       (_%ht130413%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid130412%_))
                       (let () _%eid130412%_)
                       (let ((_%$e130416%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht130413%_ _%eid130412%_))))
                         (if _%$e130416%_
                             _%$e130416%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind130410%_
                                    'gx#local-binding::t))
                                 (let ((_%gid130420%_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%eid130412%_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht130413%_
                                      _%eid130412%_
                                      _%gid130420%_))
                                   _%gid130420%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind130410%_
                                        'gx#module-binding::t))
                                     (let ((_%gid130429%_
                                            (let ((_%$e130423%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind130410%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e130423%_
                                                  ((lambda (_%ns130426%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns130426%_
                                                        '"#"
                                                        _%eid130412%_)))
                                                   _%$e130423%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%eid130412%_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht130413%_
                                          _%eid130412%_
                                          _%gid130429%_))
                                       _%gid130429%_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _%id130405%_
                                        _%eid130412%_
                                        _%bind130410%_)))))))))
               _%$e130407%_)
              (if (let ((__tmp130738
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id130405%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp130738))
                  (let () (declare (not safe)) (gx#stx-e _%id130405%_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _%id130405%_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id130403%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id130403%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%id130403%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top130390%_)
        (if _%top130390%_
            (let ((_%ns130392%_
                   (##structure-ref
                    (let ((__tmp130739
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp130739))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi130393%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns130392%_
                  (if (fxpositive? _%phi130393%_)
                      (let ((__tmp130741 (number->string _%phi130393%_))
                            (__tmp130740
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns130392%_
                         '"["
                         __tmp130741
                         '"]#_"
                         __tmp130740
                         '"_"))
                      (let ((__tmp130742
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns130392%_ '"#_" __tmp130742 '"_")))
                  (if (fxpositive? _%phi130393%_)
                      (let ((__tmp130744 (number->string _%phi130393%_))
                            (__tmp130743
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp130744
                         '"]#_"
                         __tmp130743
                         '"_"))
                      (let ((__tmp130745
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp130745 '"_")))))
            (let ((__tmp130746 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp130746 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top130399%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _%top130399%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g130748_
        (let ((_g130747_ (let () (declare (not safe)) (##length _g130748_))))
          (cond ((let () (declare (not safe)) (##fx= _g130747_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g130748_))
                ((let () (declare (not safe)) (##fx= _g130747_ 1))
                 (apply (lambda (_%top130401%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _%top130401%_)))
                        _g130748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g130748_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym130368%_ _%quote?130369%_)
        (let* ((_%ht130371%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e130373%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht130371%_ _%sym130368%_))))
          (if _%$e130373%_
              _%$e130373%_
              (let ((_%g130377%_
                     (if _%quote?130369%_
                         (let ((__tmp130749
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym130368%_
                            '"__"
                            __tmp130749))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym130368%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht130371%_ _%sym130368%_ _%g130377%_))
                _%g130377%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym130382%_)
        (let ((_%quote?130384%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _%sym130382%_
           _%quote?130384%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g130751_
        (let ((_g130750_ (let () (declare (not safe)) (##length _g130751_))))
          (cond ((let () (declare (not safe)) (##fx= _g130750_ 1))
                 (apply (lambda (_%sym130382%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _%sym130382%_)))
                        _g130751_))
                ((let () (declare (not safe)) (##fx= _g130750_ 2))
                 (apply (lambda (_%sym130386%_ _%quote?130387%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _%sym130386%_
                             _%quote?130387%_)))
                        _g130751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g130751_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1130360%_ _%id2130361%_)
        (letrec ((_%symbol-e130363%_
                  (lambda (_%id130365%_)
                    (if (let () (declare (not safe)) (symbol? _%id130365%_))
                        _%id130365%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _%id130365%_))))))
          (eq? (let () (declare (not safe)) (_%symbol-e130363%_ _%id1130360%_))
               (let ()
                 (declare (not safe))
                 (_%symbol-e130363%_ _%id2130361%_))))))
    (define gxc#identifier-symbol
      (lambda (_%stx130358%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx130358%_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%stx130358%_))
            (let () (declare (not safe)) (gx#stx-e _%stx130358%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk130343%_ _%name130344%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job130346%_
               (let ()
                 (declare (not safe))
                 (gxc#make-compile-job _%thunk130343%_ _%name130344%_))))
          (set! gxc#__compile-jobs (cons _%job130346%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk130351%_)
        (let ((_%name130353%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (declare (not safe))
          (gxc#add-compile-job!__% _%thunk130351%_ _%name130353%_))))
    (define gxc#add-compile-job!
      (lambda _g130753_
        (let ((_g130752_ (let () (declare (not safe)) (##length _g130753_))))
          (cond ((let () (declare (not safe)) (##fx= _g130752_ 1))
                 (apply (lambda (_%thunk130351%_)
                          (let ()
                            (declare (not safe))
                            (gxc#add-compile-job!__0 _%thunk130351%_)))
                        _g130753_))
                ((let () (declare (not safe)) (##fx= _g130752_ 2))
                 (apply (lambda (_%thunk130355%_ _%name130356%_)
                          (let ()
                            (declare (not safe))
                            (gxc#add-compile-job!__%
                             _%thunk130355%_
                             _%name130356%_)))
                        _g130753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g130753_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result130340%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result130340%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop130334%_ ()
          (let ((_%pending130337%_
                 (let () (declare (not safe)) (gxc#pending-compile-jobs))))
            (if (let () (declare (not safe)) (null? _%pending130337%_))
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending130337%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending130337%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk130323%_ _%name130324%_)
        (make-thread
         (lambda ()
           (let _%loop130327%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores
                         (let ()
                           (declare (not safe))
                           (- gxc#__available-cores '1)))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp130754
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name130324%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp130754))
                   (let ((__tmp130756 (lambda () (_%thunk130323%_)))
                         (__tmp130755
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp130756 __tmp130755)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (let () (declare (not safe)) (_%loop130327%_))))))
         _%name130324%_)))
    (define gxc#join!
      (lambda (_%thread130318%_)
        (let ((__tmp130758
               (lambda (_%exn130320%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn130320%_))
                     (let ((__tmp130759
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn130320%_))))
                       (declare (not safe))
                       (raise __tmp130759))
                     (let () (declare (not safe)) (raise _%exn130320%_)))))
              (__tmp130757 (lambda () (thread-join! _%thread130318%_))))
          (declare (not safe))
          (__with-catch __tmp130758 __tmp130757))))))
