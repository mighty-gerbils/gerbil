(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1756142920)
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
       (let ((_%verbosity141155141157%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity141155141157%_
             (let* ((_%verbosity141160%_ _%verbosity141155141157%_)
                    (_%$e141162%_ (string->number _%verbosity141160%_)))
               (if _%$e141162%_ _%$e141162%_ _%verbosity141160%_))
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
      (let ((__tmp141217 (list)) (__tmp141216 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp141217
         '(gensyms bindings)
         __tmp141216
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args141153%_
        (apply make-instance gxc#symbol-table::t _%$args141153%_)))
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
      (lambda (_%self141140%_)
        (let ((_%self141143%_ _%self141140%_))
          (if (let ((__tmp141218
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self141143%_))))
                (declare (not safe))
                (##fx< '2 __tmp141218))
              (begin
                (let ((__tmp141219
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self141143%_
                   __tmp141219
                   '1
                   '#f
                   '#f))
                (let ((__tmp141220
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self141143%_
                   __tmp141220
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp141221
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self141143%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self141143%_
                       '2
                       __tmp141221))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message141009%_ _%stx141010%_ . _%details141011%_)
        (let ((_%ctx141016%_
               (let ((_%$e141013%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e141013%_ _%$e141013%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx141016%_
                 _%message141009%_
                 _%stx141010%_
                 _%details141011%_))))
    (define gxc#verbose
      (lambda _%args141006%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp141222
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args141006%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp141222))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id140988%_)
        (let* ((_%str140990%_
                (if (symbol? _%id140988%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id140988%_))
                    _%id140988%_))
               (_%len140992%_ (string-length _%str140990%_))
               (_%res140994%_
                (let () (declare (not safe)) (##make-string _%len140992%_))))
          (let _%lp140997%_ ((_%i140999%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i140999%_ _%len140992%_))
                (let* ((_%char141001%_ (string-ref _%str140990%_ _%i140999%_))
                       (_%xchar141003%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char141001%_))
                            '#\_
                            _%char141001%_)))
                  (string-set! _%res140994%_ _%i140999%_ _%xchar141003%_)
                  (_%lp140997%_
                   (let () (declare (not safe)) (##fx+ _%i140999%_ '1))))
                _%res140994%_)))))
    (define gxc#map*
      (lambda (_%proc140930%_ _%maybe-improper-list140931%_)
        (let _%recur140933%_ ((_%rest140935%_ _%maybe-improper-list140931%_))
          (let* ((_%rest140936140947%_ _%rest140935%_)
                 (_%E140940140951%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest140936140947%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K140943140976%_
                   (lambda (_%rest140973%_ _%hd140974%_)
                     (cons (_%proc140930%_ _%hd140974%_)
                           (_%recur140933%_ _%rest140973%_))))
                  (_%K140942140967%_ (lambda () '()))
                  (_%K140941140957%_
                   (lambda (_%tail140955%_) (_%proc140930%_ _%tail140955%_))))
              (let ((_%try-match140938140970%_
                     (lambda ()
                       (if (null? _%rest140936140947%_)
                           (_%K140942140967%_)
                           (let ((_%tail140960%_ _%rest140936140947%_))
                             (declare (not safe))
                             (_%proc140930%_ _%tail140960%_))))))
                (if (pair? _%rest140936140947%_)
                    (let ((_%tl140945140981%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest140936140947%_)))
                          (_%hd140944140979%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest140936140947%_))))
                      (let ((_%hd140984%_ _%hd140944140979%_)
                            (_%rest140986%_ _%tl140945140981%_))
                        (_%K140943140976%_ _%rest140986%_ _%hd140984%_)))
                    (_%try-match140938140970%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym140925%_)
        (let ((_%$e140927%_ (not (gxc#gensym-reference? _%sym140925%_))))
          (if _%$e140927%_
              _%$e140927%_
              (memq _%sym140925%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym140921%_)
        (let ((_%str140923%_ (symbol->string _%sym140921%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str140923%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str140923%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id140892%_)
        (let ((_%$e140894%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id140892%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id140892%_))
                   '#f)))
          (if _%$e140894%_
              ((lambda (_%bind140897%_)
                 (let ((_%eid140899%_
                        (##structure-ref _%bind140897%_ '1 gx#binding::t '#f))
                       (_%ht140900%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid140899%_))
                       _%eid140899%_
                       (let ((_%$e140903%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht140900%_ _%eid140899%_))))
                         (if _%$e140903%_
                             _%$e140903%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind140897%_
                                    'gx#local-binding::t))
                                 (let ((_%gid140907%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid140899%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht140900%_
                                      _%eid140899%_
                                      _%gid140907%_))
                                   _%gid140907%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind140897%_
                                        'gx#module-binding::t))
                                     (let ((_%gid140916%_
                                            (let ((_%$e140910%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind140897%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e140910%_
                                                  ((lambda (_%ns140913%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns140913%_
                                                        '"#"
                                                        _%eid140899%_)))
                                                   _%$e140910%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid140899%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht140900%_
                                          _%eid140899%_
                                          _%gid140916%_))
                                       _%gid140916%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id140892%_
                                      _%eid140899%_
                                      _%bind140897%_))))))))
               _%$e140894%_)
              (if (let ((__tmp141223
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id140892%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp141223))
                  (let () (declare (not safe)) (gx#stx-e _%id140892%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id140892%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id140890%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id140890%_))
            (gxc#generate-runtime-binding-id _%id140890%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top140877%_)
        (if _%top140877%_
            (let ((_%ns140879%_
                   (##structure-ref
                    (let ((__tmp141224
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp141224))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi140880%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns140879%_
                  (if (fxpositive? _%phi140880%_)
                      (let ((__tmp141226 (number->string _%phi140880%_))
                            (__tmp141225
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns140879%_
                         '"["
                         __tmp141226
                         '"]#_"
                         __tmp141225
                         '"_"))
                      (let ((__tmp141227
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns140879%_ '"#_" __tmp141227 '"_")))
                  (if (fxpositive? _%phi140880%_)
                      (let ((__tmp141229 (number->string _%phi140880%_))
                            (__tmp141228
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp141229
                         '"]#_"
                         __tmp141228
                         '"_"))
                      (let ((__tmp141230
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp141230 '"_")))))
            (let ((__tmp141231 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp141231 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top140886%_ '#f))
          (gxc#generate-runtime-temporary__% _%top140886%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g141232_
        (let ((_g141233_ (let () (declare (not safe)) (##length _g141232_))))
          (cond ((let () (declare (not safe)) (##fx= _g141233_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g141232_))
                ((let () (declare (not safe)) (##fx= _g141233_ 1))
                 (apply gxc#generate-runtime-temporary__% _g141232_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g141232_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym140855%_ _%quote?140856%_)
        (let* ((_%ht140858%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e140860%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht140858%_ _%sym140855%_))))
          (if _%$e140860%_
              _%$e140860%_
              (let ((_%g140864%_
                     (if _%quote?140856%_
                         (let ((__tmp141234
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym140855%_
                            '"__"
                            __tmp141234))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym140855%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht140858%_ _%sym140855%_ _%g140864%_))
                _%g140864%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym140869%_)
        (let ((_%quote?140871%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym140869%_
           _%quote?140871%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g141235_
        (let ((_g141236_ (let () (declare (not safe)) (##length _g141235_))))
          (cond ((let () (declare (not safe)) (##fx= _g141236_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g141235_))
                ((let () (declare (not safe)) (##fx= _g141236_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g141235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g141235_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1140847%_ _%id2140848%_)
        (letrec ((_%symbol-e140850%_
                  (lambda (_%id140852%_)
                    (if (symbol? _%id140852%_)
                        _%id140852%_
                        (gxc#generate-runtime-binding-id _%id140852%_)))))
          (eq? (_%symbol-e140850%_ _%id1140847%_)
               (_%symbol-e140850%_ _%id2140848%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx140845%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx140845%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx140845%_)
            (let () (declare (not safe)) (gx#stx-e _%stx140845%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk140830%_ _%name140831%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job140833%_
               (gxc#make-compile-job _%thunk140830%_ _%name140831%_)))
          (set! gxc#__compile-jobs (cons _%job140833%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk140838%_)
        (let ((_%name140840%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk140838%_ _%name140840%_))))
    (define gxc#add-compile-job!
      (lambda _g141237_
        (let ((_g141238_ (let () (declare (not safe)) (##length _g141237_))))
          (cond ((let () (declare (not safe)) (##fx= _g141238_ 1))
                 (apply gxc#add-compile-job!__0 _g141237_))
                ((let () (declare (not safe)) (##fx= _g141238_ 2))
                 (apply gxc#add-compile-job!__% _g141237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g141237_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result140827%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result140827%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop140821%_ ()
          (let ((_%pending140824%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending140824%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending140824%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending140824%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk140810%_ _%name140811%_)
        (make-thread
         (lambda ()
           (let _%loop140814%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp141239
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name140811%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp141239))
                   (let ((__tmp141241 (lambda () (_%thunk140810%_)))
                         (__tmp141240
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp141241 __tmp141240)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop140814%_)))))
         _%name140811%_)))
    (define gxc#join!
      (lambda (_%thread140805%_)
        (let ((__tmp141243
               (lambda (_%exn140807%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn140807%_))
                     (let ((__tmp141244
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn140807%_))))
                       (declare (not safe))
                       (raise __tmp141244))
                     (let () (declare (not safe)) (raise _%exn140807%_)))))
              (__tmp141242 (lambda () (thread-join! _%thread140805%_))))
          (declare (not safe))
          (__with-catch __tmp141243 __tmp141242))))))
