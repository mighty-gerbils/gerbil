(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770313936)
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
       (let ((_%verbosity157835157837%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity157835157837%_
             (let* ((_%verbosity157839%_ _%verbosity157835157837%_)
                    (_%$e157841%_ (string->number _%verbosity157839%_)))
               (if _%$e157841%_ _%$e157841%_ _%verbosity157839%_))
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
      (let ((__tmp157896 (list)) (__tmp157895 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp157896
         '(gensyms bindings)
         __tmp157895
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args157833%_
        (apply make-instance gxc#symbol-table::t _%$args157833%_)))
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
      (lambda (_%self157820%_)
        (let ((_%self157823%_ _%self157820%_))
          (if (let ((__tmp157897
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157823%_))))
                (declare (not safe))
                (##fx< '2 __tmp157897))
              (begin
                (let ((__tmp157898
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157823%_
                   __tmp157898
                   '1
                   '#f
                   '#f))
                (let ((__tmp157899
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157823%_
                   __tmp157899
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp157900
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157823%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self157823%_
                       '2
                       __tmp157900))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message157689%_ _%stx157690%_ . _%details157691%_)
        (let ((_%ctx157696%_
               (let ((_%$e157693%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e157693%_ _%$e157693%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx157696%_
                 _%message157689%_
                 _%stx157690%_
                 _%details157691%_))))
    (define gxc#verbose
      (lambda _%args157686%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp157901
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args157686%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp157901))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id157668%_)
        (let* ((_%str157670%_
                (if (symbol? _%id157668%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id157668%_))
                    _%id157668%_))
               (_%len157672%_ (string-length _%str157670%_))
               (_%res157674%_
                (let () (declare (not safe)) (##make-string _%len157672%_))))
          (let _%lp157677%_ ((_%i157679%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i157679%_ _%len157672%_))
                (let* ((_%char157681%_ (string-ref _%str157670%_ _%i157679%_))
                       (_%xchar157683%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char157681%_))
                            '#\_
                            _%char157681%_)))
                  (string-set! _%res157674%_ _%i157679%_ _%xchar157683%_)
                  (_%lp157677%_
                   (let () (declare (not safe)) (##fx+ _%i157679%_ '1))))
                _%res157674%_)))))
    (define gxc#map*
      (lambda (_%proc157610%_ _%maybe-improper-list157611%_)
        (let _%recur157613%_ ((_%rest157615%_ _%maybe-improper-list157611%_))
          (let* ((_%rest157616157627%_ _%rest157615%_)
                 (_%E157620157631%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest157616157627%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K157623157656%_
                   (lambda (_%rest157653%_ _%hd157654%_)
                     (cons (_%proc157610%_ _%hd157654%_)
                           (_%recur157613%_ _%rest157653%_))))
                  (_%K157622157647%_ (lambda () '()))
                  (_%K157621157637%_
                   (lambda (_%tail157635%_) (_%proc157610%_ _%tail157635%_))))
              (let ((_%try-match157618157650%_
                     (lambda ()
                       (if (null? _%rest157616157627%_)
                           (_%K157622157647%_)
                           (let ((_%tail157640%_ _%rest157616157627%_))
                             (declare (not safe))
                             (_%proc157610%_ _%tail157640%_))))))
                (if (pair? _%rest157616157627%_)
                    (let ((_%tl157625157661%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest157616157627%_)))
                          (_%hd157624157659%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest157616157627%_))))
                      (let ((_%hd157664%_ _%hd157624157659%_)
                            (_%rest157666%_ _%tl157625157661%_))
                        (_%K157623157656%_ _%rest157666%_ _%hd157664%_)))
                    (_%try-match157618157650%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym157605%_)
        (let ((_%$e157607%_ (not (gxc#gensym-reference? _%sym157605%_))))
          (if _%$e157607%_
              _%$e157607%_
              (memq _%sym157605%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym157601%_)
        (let ((_%str157603%_ (symbol->string _%sym157601%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str157603%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str157603%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id157572%_)
        (let ((_%$e157574%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id157572%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id157572%_))
                   '#f)))
          (if _%$e157574%_
              ((lambda (_%bind157577%_)
                 (let ((_%eid157579%_
                        (##structure-ref _%bind157577%_ '1 gx#binding::t '#f))
                       (_%ht157580%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid157579%_))
                       _%eid157579%_
                       (let ((_%$e157583%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht157580%_ _%eid157579%_))))
                         (if _%$e157583%_
                             _%$e157583%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind157577%_
                                    'gx#local-binding::t))
                                 (let ((_%gid157587%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid157579%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht157580%_
                                      _%eid157579%_
                                      _%gid157587%_))
                                   _%gid157587%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind157577%_
                                        'gx#module-binding::t))
                                     (let ((_%gid157596%_
                                            (let ((_%$e157590%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind157577%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e157590%_
                                                  ((lambda (_%ns157593%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns157593%_
                                                        '"#"
                                                        _%eid157579%_)))
                                                   _%$e157590%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid157579%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht157580%_
                                          _%eid157579%_
                                          _%gid157596%_))
                                       _%gid157596%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id157572%_
                                      _%eid157579%_
                                      _%bind157577%_))))))))
               _%$e157574%_)
              (if (let ((__tmp157902
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id157572%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp157902))
                  (let () (declare (not safe)) (gx#stx-e _%id157572%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id157572%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id157570%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id157570%_))
            (gxc#generate-runtime-binding-id _%id157570%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top157557%_)
        (if _%top157557%_
            (let ((_%ns157559%_
                   (##structure-ref
                    (let ((__tmp157903
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp157903))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi157560%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns157559%_
                  (if (fxpositive? _%phi157560%_)
                      (let ((__tmp157905 (number->string _%phi157560%_))
                            (__tmp157904
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns157559%_
                         '"["
                         __tmp157905
                         '"]#_"
                         __tmp157904
                         '"_"))
                      (let ((__tmp157906
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns157559%_ '"#_" __tmp157906 '"_")))
                  (if (fxpositive? _%phi157560%_)
                      (let ((__tmp157908 (number->string _%phi157560%_))
                            (__tmp157907
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp157908
                         '"]#_"
                         __tmp157907
                         '"_"))
                      (let ((__tmp157909
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp157909 '"_")))))
            (let ((__tmp157910 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp157910 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top157566%_ '#f))
          (gxc#generate-runtime-temporary__% _%top157566%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g157911_
        (let ((_g157912_ (let () (declare (not safe)) (##length _g157911_))))
          (cond ((let () (declare (not safe)) (##fx= _g157912_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g157911_))
                ((let () (declare (not safe)) (##fx= _g157912_ 1))
                 (apply gxc#generate-runtime-temporary__% _g157911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g157911_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym157535%_ _%quote?157536%_)
        (let* ((_%ht157538%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e157540%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht157538%_ _%sym157535%_))))
          (if _%$e157540%_
              _%$e157540%_
              (let ((_%g157544%_
                     (if _%quote?157536%_
                         (let ((__tmp157913
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym157535%_
                            '"__"
                            __tmp157913))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym157535%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht157538%_ _%sym157535%_ _%g157544%_))
                _%g157544%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym157549%_)
        (let ((_%quote?157551%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym157549%_
           _%quote?157551%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g157914_
        (let ((_g157915_ (let () (declare (not safe)) (##length _g157914_))))
          (cond ((let () (declare (not safe)) (##fx= _g157915_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g157914_))
                ((let () (declare (not safe)) (##fx= _g157915_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g157914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g157914_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1157527%_ _%id2157528%_)
        (letrec ((_%symbol-e157530%_
                  (lambda (_%id157532%_)
                    (if (symbol? _%id157532%_)
                        _%id157532%_
                        (gxc#generate-runtime-binding-id _%id157532%_)))))
          (eq? (_%symbol-e157530%_ _%id1157527%_)
               (_%symbol-e157530%_ _%id2157528%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx157525%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx157525%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx157525%_)
            (let () (declare (not safe)) (gx#stx-e _%stx157525%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id157447%_)
        (let* ((_%bind157449%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id157447%_)))
               (_%runtime-props157478%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind157449%_
                       'gx#runtime-binding::t))
                    (let* ((_%props157458%_
                            (let ((_%$e157452%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind157449%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e157452%_
                                  ((lambda (_%macro157455%_)
                                     (cons 'macro: (cons _%macro157455%_ '())))
                                   _%$e157452%_)
                                  '())))
                           (_%props157474%_
                            (let ((_%$e157460%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind157449%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e157460%_
                                  ((lambda (_%type157463%_)
                                     (let ((_%$e157465%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type157463%_
                                               ':repr))))
                                       (if _%$e157465%_
                                           ((lambda (_%method157468%_)
                                              (let ((_%repr157470%_
                                                     (_%method157468%_
                                                      _%type157463%_)))
                                                (cons 'type:
                                                      (cons _%repr157470%_
                                                            _%props157458%_))))
                                            _%$e157465%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id157447%_
                                            _%type157463%_))))
                                   _%$e157460%_)
                                  _%props157458%_))))
                      _%props157474%_)
                    '()))
               (_%$e157481%_
                (##structure-ref _%bind157449%_ '4 gx#binding::t '#f)))
          (if _%$e157481%_
              ((lambda (_%props157484%_)
                 (let ((__tmp157916
                        (lambda (_%prop157486%_ _%props157487%_)
                          (let* ((_%prop157488157495%_ _%prop157486%_)
                                 (_%E157490157498%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop157488157495%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K157491157512%_
                                  (lambda (_%value157501%_ _%key157502%_)
                                    (let ((_%$e157504%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value157501%_
                                              ':repr))))
                                      (if _%$e157504%_
                                          ((lambda (_%method157507%_)
                                             (let ((_%repr157509%_
                                                    (_%method157507%_
                                                     _%value157501%_)))
                                               (cons _%key157502%_
                                                     (cons _%repr157509%_
                                                           _%props157487%_))))
                                           _%$e157504%_)
                                          (cons _%key157502%_
                                                (cons (cons 'quote
                                                            (cons _%value157501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props157487%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop157488157495%_)
                                (let ((_%hd157492157515%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop157488157495%_)))
                                      (_%tl157493157517%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop157488157495%_))))
                                  (let* ((_%key157520%_ _%hd157492157515%_)
                                         (_%value157522%_ _%tl157493157517%_))
                                    (_%K157491157512%_
                                     _%value157522%_
                                     _%key157520%_)))
                                (_%E157490157498%_))))))
                   (declare (not safe))
                   (__foldl1
                    __tmp157916
                    _%runtime-props157478%_
                    _%props157484%_)))
               _%$e157481%_)
              _%runtime-props157478%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk157432%_ _%name157433%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job157435%_
               (gxc#make-compile-job _%thunk157432%_ _%name157433%_)))
          (set! gxc#__compile-jobs (cons _%job157435%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk157440%_)
        (let ((_%name157442%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk157440%_ _%name157442%_))))
    (define gxc#add-compile-job!
      (lambda _g157917_
        (let ((_g157918_ (let () (declare (not safe)) (##length _g157917_))))
          (cond ((let () (declare (not safe)) (##fx= _g157918_ 1))
                 (apply gxc#add-compile-job!__0 _g157917_))
                ((let () (declare (not safe)) (##fx= _g157918_ 2))
                 (apply gxc#add-compile-job!__% _g157917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g157917_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result157429%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result157429%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop157423%_ ()
          (let ((_%pending157426%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending157426%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending157426%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending157426%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk157412%_ _%name157413%_)
        (make-thread
         (lambda ()
           (let _%loop157416%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp157919
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name157413%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp157919))
                   (let ((__tmp157921 (lambda () (_%thunk157412%_)))
                         (__tmp157920
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp157921 __tmp157920)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop157416%_)))))
         _%name157413%_)))
    (define gxc#join!
      (lambda (_%thread157407%_)
        (let ((__tmp157923
               (lambda (_%exn157409%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn157409%_))
                     (let ((__tmp157924
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn157409%_))))
                       (declare (not safe))
                       (raise __tmp157924))
                     (let () (declare (not safe)) (raise _%exn157409%_)))))
              (__tmp157922 (lambda () (thread-join! _%thread157407%_))))
          (declare (not safe))
          (__with-catch __tmp157923 __tmp157922))))))
