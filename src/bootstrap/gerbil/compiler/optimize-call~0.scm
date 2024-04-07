(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712526096)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp191092 (list gxc#::basic-xform::t))
            (__tmp191091 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp191092
         '()
         __tmp191091
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args190641%_
        (apply make-instance gxc#::optimize-call::t _%$args190641%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp191093
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-promise __tmp191093)))
    (define gxc#apply-optimize-call
      (lambda (_%stx190633%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self190636%_
                (let ((__obj191083
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj191083))
               (__tmp191094
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190636%_ _%stx190633%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191094
           gxc#current-compile-method
           _%self190636%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp191096 (list gxc#::void::t))
            (__tmp191095 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp191096
         '()
         __tmp191095
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args190630%_
        (apply make-instance gxc#::check-return-type::t _%$args190630%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp191097
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-annotation
                  gxc#apply-check-return-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::check-return-type::t)))))
        (declare (not safe))
        (__make-promise __tmp191097)))
    (define gxc#apply-check-return-type
      (lambda (_%stx190622%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self190625%_
                (let ((__obj191085
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj191085))
               (__tmp191098
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190625%_ _%stx190622%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191098
           gxc#current-compile-method
           _%self190625%_))))
    (define gxc#optimize-call%
      (lambda (_%self190232%_ _%stx190233%_)
        (let* ((_%__stx190696190697%_ _%stx190233%_)
               (_%g190236190282%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190696190697%_)))))
          (let ((_%__kont190698190699%_
                 (lambda (_%L190425%_ _%L190426%_)
                   (let* ((_%rator-id190446%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L190426%_)))
                          (_%rator-type190448%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id190446%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type190448%_))
                             (eq? (##structure-ref
                                   _%rator-type190448%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self190232%_ _%stx190233%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type190448%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp191099
                                      (##structure-ref
                                       _%rator-type190448%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id190446%_
                                  '" => "
                                  _%rator-type190448%_
                                  '" "
                                  __tmp191099))
                               (let* ((_%optimized190463%_
                                       (let ((__method191086
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type190448%_
                                                 'optimize-call))))
                                         (if __method191086
                                             (__method191086
                                              _%rator-type190448%_
                                              _%self190232%_
                                              _%stx190233%_
                                              (let ((__tmp191100
                                                     (lambda (_%g190455190458%_
                                                              _%g190456190460%_)
                                                       (cons _%g190455190458%_
                                                             _%g190456190460%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp191100
                                                 '()
                                                 _%L190425%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type190448%_
                                                      'optimize-call)))))
                                      (_%__stx190644190645%_
                                       _%optimized190463%_)
                                      (_%g190466190495%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx190644190645%_)))))
                                 (let ((_%__kont190646190647%_
                                        (lambda (_%L190563%_ _%L190564%_)
                                          (let ((_%optimized-rator-id190591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L190564%_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _%rator-type190448%_))
                                                         (eq? _%optimized-rator-id190591%_
                                                              _%rator-id190446%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id190591%_
                                                              gxc#checked-primitives)))
                                                _%optimized190463%_
                                                (let ((__tmp191101
                                                       (let ((__tmp191102
                                                              (let ((__tmp191105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L190564%_ '())))
                            (__tmp191103
                             (let ((__tmp191104
                                    (lambda (_%g190595190598%_
                                             _%g190596190600%_)
                                      (cons _%g190595190598%_
                                            _%g190596190600%_))))
                               (declare (not safe))
                               (__foldr1 __tmp191104 '() _%L190563%_))))
                        (declare (not safe))
                        (cons __tmp191105 __tmp191103))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp191102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp191101
                                                   _%stx190233%_))))))
                                       (_%__kont190650190651%_
                                        (lambda () _%optimized190463%_)))
                                   (let ((_%__match190693190694%_
                                          (lambda (_%e190472190507%_
                                                   _%hd190471190510%_
                                                   _%tl190470190512%_
                                                   _%e190475190515%_
                                                   _%hd190474190518%_
                                                   _%tl190473190520%_
                                                   _%e190478190523%_
                                                   _%hd190477190526%_
                                                   _%tl190476190528%_
                                                   _%e190481190531%_
                                                   _%hd190480190534%_
                                                   _%tl190479190536%_
                                                   _%__splice190648190649%_
                                                   _%target190482190539%_
                                                   _%tl190484190541%_)
                                            (letrec ((_%loop190485190544%_
                                                      (lambda (_%hd190483190547%_
                                                               _%arg190489190549%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd190483190547%_))
                                                            (let ((_%e190486190552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd190483190547%_))))
                      (let ((_%lp-tl190488190557%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190486190552%_)))
                            (_%lp-hd190487190555%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190486190552%_))))
                        (let ((__tmp191106
                               (cons _%lp-hd190487190555%_
                                     _%arg190489190549%_)))
                          (declare (not safe))
                          (_%loop190485190544%_
                           _%lp-tl190488190557%_
                           __tmp191106))))
                    (let ((_%arg190490190560%_ (reverse _%arg190489190549%_)))
                      (_%__kont190646190647%_
                       _%arg190490190560%_
                       _%hd190480190534%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop190485190544%_
                                                 _%target190482190539%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx190644190645%_))
                                         (let ((_%e190472190507%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx190644190645%_))))
                                           (let ((_%tl190470190512%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190472190507%_)))
                                                 (_%hd190471190510%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190472190507%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd190471190510%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd190471190510%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl190470190512%_))
                                                         (let ((_%e190475190515%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl190470190512%_))))
                   (let ((_%tl190473190520%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e190475190515%_)))
                         (_%hd190474190518%_
                          (let ()
                            (declare (not safe))
                            (##car _%e190475190515%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd190474190518%_))
                         (let ((_%e190478190523%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd190474190518%_))))
                           (let ((_%tl190476190528%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e190478190523%_)))
                                 (_%hd190477190526%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e190478190523%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd190477190526%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd190477190526%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl190476190528%_))
                                         (let ((_%e190481190531%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl190476190528%_))))
                                           (let ((_%tl190479190536%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190481190531%_)))
                                                 (_%hd190480190534%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190481190531%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl190479190536%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl190473190520%_))
                                                     (let ((_%__splice190648190649%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl190473190520%_
                                                               '0))))
                                                       (let ((_%tl190484190541%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice190648190649%_ '1)))
                     (_%target190482190539%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice190648190649%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl190484190541%_))
                     (_%__match190693190694%_
                      _%e190472190507%_
                      _%hd190471190510%_
                      _%tl190470190512%_
                      _%e190475190515%_
                      _%hd190474190518%_
                      _%tl190473190520%_
                      _%e190478190523%_
                      _%hd190477190526%_
                      _%tl190476190528%_
                      _%e190481190531%_
                      _%hd190480190534%_
                      _%tl190479190536%_
                      _%__splice190648190649%_
                      _%target190482190539%_
                      _%tl190484190541%_)
                     (_%__kont190650190651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190650190651%_))
                                                 (_%__kont190650190651%_))))
                                         (_%__kont190650190651%_))
                                     (_%__kont190650190651%_))
                                 (_%__kont190650190651%_))))
                         (_%__kont190650190651%_))))
                 (_%__kont190650190651%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190650190651%_))
                                                 (_%__kont190650190651%_))))
                                         (_%__kont190650190651%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type190448%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type190448%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp191107
                                        (let ((__tmp191108
                                               (let ((__tmp191111
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%L190426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191109
                                                      (map (lambda (_%g190606190608%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self190232%_ _%g190606190608%_)))
                   (let ((__tmp191110
                          (lambda (_%g190610190613%_ _%g190611190615%_)
                            (cons _%g190610190613%_ _%g190611190615%_))))
                     (declare (not safe))
                     (__foldr1 __tmp191110 '() _%L190425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp191111
                                                       __tmp191109))))
                                          (declare (not safe))
                                          (cons '%#call-unchecked
                                                __tmp191108))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191107
                                    _%stx190233%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx190233%_
                                    _%rator-type190448%_))))))))
                (_%__kont190702190703%_
                 (lambda (_%L190327%_ _%L190328%_)
                   (let ((_%rator-type190345%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L190328%_))))
                     (if (and _%rator-type190345%_
                              (eq? (##structure-ref
                                    _%rator-type190345%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp191112
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type190345%_))))
                                (declare (not safe))
                                (not __tmp191112)))
                         (let ((__tmp191113
                                (let ((__tmp191114
                                       (let ((__tmp191117
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self190232%_
                                                 _%L190328%_)))
                                             (__tmp191115
                                              (map (lambda (_%g190347190349%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self190232%_
                                                        _%g190347190349%_)))
                                                   (let ((__tmp191116
                                                          (lambda (_%g190351190354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g190352190356%_)
                    (cons _%g190351190354%_ _%g190352190356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp191116
                                                      '()
                                                      _%L190327%_)))))
                                         (declare (not safe))
                                         (cons __tmp191117 __tmp191115))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp191114))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp191113 _%stx190233%_))
                         (if (or (let ()
                                   (declare (not safe))
                                   (not _%rator-type190345%_))
                                 (let ((__tmp191118
                                        (##structure-ref
                                         _%rator-type190345%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp191118 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self190232%_ _%stx190233%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx190233%_
                                _%rator-type190345%_))))))))
            (let* ((_%__match190763190764%_
                    (lambda (_%e190265190287%_
                             _%hd190264190290%_
                             _%tl190263190292%_
                             _%e190268190295%_
                             _%hd190267190298%_
                             _%tl190266190300%_
                             _%__splice190704190705%_
                             _%target190269190303%_
                             _%tl190271190305%_)
                      (letrec ((_%loop190272190308%_
                                (lambda (_%hd190270190311%_
                                         _%rand190276190313%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190270190311%_))
                                      (let ((_%e190273190316%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190270190311%_))))
                                        (let ((_%lp-tl190275190321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190273190316%_)))
                                              (_%lp-hd190274190319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190273190316%_))))
                                          (let ((__tmp191119
                                                 (cons _%lp-hd190274190319%_
                                                       _%rand190276190313%_)))
                                            (declare (not safe))
                                            (_%loop190272190308%_
                                             _%lp-tl190275190321%_
                                             __tmp191119))))
                                      (let ((_%rand190277190324%_
                                             (reverse _%rand190276190313%_)))
                                        (_%__kont190702190703%_
                                         _%rand190277190324%_
                                         _%hd190267190298%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop190272190308%_ _%target190269190303%_ '())))))
                   (_%__match190743190744%_
                    (lambda (_%e190242190369%_
                             _%hd190241190372%_
                             _%tl190240190374%_
                             _%e190245190377%_
                             _%hd190244190380%_
                             _%tl190243190382%_
                             _%e190248190385%_
                             _%hd190247190388%_
                             _%tl190246190390%_
                             _%e190251190393%_
                             _%hd190250190396%_
                             _%tl190249190398%_
                             _%__splice190700190701%_
                             _%target190252190401%_
                             _%tl190254190403%_)
                      (letrec ((_%loop190255190406%_
                                (lambda (_%hd190253190409%_
                                         _%rand190259190411%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190253190409%_))
                                      (let ((_%e190256190414%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190253190409%_))))
                                        (let ((_%lp-tl190258190419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190256190414%_)))
                                              (_%lp-hd190257190417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190256190414%_))))
                                          (let ((__tmp191120
                                                 (cons _%lp-hd190257190417%_
                                                       _%rand190259190411%_)))
                                            (declare (not safe))
                                            (_%loop190255190406%_
                                             _%lp-tl190258190419%_
                                             __tmp191120))))
                                      (let ((_%rand190260190422%_
                                             (reverse _%rand190259190411%_)))
                                        (_%__kont190698190699%_
                                         _%rand190260190422%_
                                         _%hd190250190396%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop190255190406%_
                           _%target190252190401%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190696190697%_))
                  (let ((_%e190242190369%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190696190697%_))))
                    (let ((_%tl190240190374%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190242190369%_)))
                          (_%hd190241190372%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190242190369%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190240190374%_))
                          (let ((_%e190245190377%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190240190374%_))))
                            (let ((_%tl190243190382%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190245190377%_)))
                                  (_%hd190244190380%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190245190377%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190244190380%_))
                                  (let ((_%e190248190385%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190244190380%_))))
                                    (let ((_%tl190246190390%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190248190385%_)))
                                          (_%hd190247190388%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190248190385%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190247190388%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd190247190388%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190246190390%_))
                                                  (let ((_%e190251190393%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190246190390%_))))
                                                    (let ((_%tl190249190398%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190251190393%_)))
                                                          (_%hd190250190396%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190251190393%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190249190398%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl190243190382%_))
                      (let ((_%__splice190700190701%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190243190382%_
                                '0))))
                        (let ((_%tl190254190403%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190700190701%_ '1)))
                              (_%target190252190401%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190700190701%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190254190403%_))
                              (_%__match190743190744%_
                               _%e190242190369%_
                               _%hd190241190372%_
                               _%tl190240190374%_
                               _%e190245190377%_
                               _%hd190244190380%_
                               _%tl190243190382%_
                               _%e190248190385%_
                               _%hd190247190388%_
                               _%tl190246190390%_
                               _%e190251190393%_
                               _%hd190250190396%_
                               _%tl190249190398%_
                               _%__splice190700190701%_
                               _%target190252190401%_
                               _%tl190254190403%_)
                              (let ()
                                (declare (not safe))
                                (_%g190236190282%_)))))
                      (let () (declare (not safe)) (_%g190236190282%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl190243190382%_))
                      (let ((_%__splice190704190705%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190243190382%_
                                '0))))
                        (let ((_%tl190271190305%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190704190705%_ '1)))
                              (_%target190269190303%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190704190705%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190271190305%_))
                              (_%__match190763190764%_
                               _%e190242190369%_
                               _%hd190241190372%_
                               _%tl190240190374%_
                               _%e190245190377%_
                               _%hd190244190380%_
                               _%tl190243190382%_
                               _%__splice190704190705%_
                               _%target190269190303%_
                               _%tl190271190305%_)
                              (let ()
                                (declare (not safe))
                                (_%g190236190282%_)))))
                      (let () (declare (not safe)) (_%g190236190282%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl190243190382%_))
                                                      (let ((_%__splice190704190705%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl190243190382%_ '0))))
                (let ((_%tl190271190305%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190704190705%_ '1)))
                      (_%target190269190303%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190704190705%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190271190305%_))
                      (_%__match190763190764%_
                       _%e190242190369%_
                       _%hd190241190372%_
                       _%tl190240190374%_
                       _%e190245190377%_
                       _%hd190244190380%_
                       _%tl190243190382%_
                       _%__splice190704190705%_
                       _%target190269190303%_
                       _%tl190271190305%_)
                      (let () (declare (not safe)) (_%g190236190282%_)))))
              (let () (declare (not safe)) (_%g190236190282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl190243190382%_))
                                                  (let ((_%__splice190704190705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl190243190382%_
                                                            '0))))
                                                    (let ((_%tl190271190305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190704190705%_
                                                              '1)))
                                                          (_%target190269190303%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190704190705%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190271190305%_))
                                                          (_%__match190763190764%_
                                                           _%e190242190369%_
                                                           _%hd190241190372%_
                                                           _%tl190240190374%_
                                                           _%e190245190377%_
                                                           _%hd190244190380%_
                                                           _%tl190243190382%_
                                                           _%__splice190704190705%_
                                                           _%target190269190303%_
                                                           _%tl190271190305%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190236190282%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190236190282%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl190243190382%_))
                                              (let ((_%__splice190704190705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl190243190382%_
                                                        '0))))
                                                (let ((_%tl190271190305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190704190705%_
                                                          '1)))
                                                      (_%target190269190303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190704190705%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190271190305%_))
                                                      (_%__match190763190764%_
                                                       _%e190242190369%_
                                                       _%hd190241190372%_
                                                       _%tl190240190374%_
                                                       _%e190245190377%_
                                                       _%hd190244190380%_
                                                       _%tl190243190382%_
                                                       _%__splice190704190705%_
                                                       _%target190269190303%_
                                                       _%tl190271190305%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190236190282%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190236190282%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190243190382%_))
                                      (let ((_%__splice190704190705%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190243190382%_
                                                '0))))
                                        (let ((_%tl190271190305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190704190705%_
                                                  '1)))
                                              (_%target190269190303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190704190705%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190271190305%_))
                                              (_%__match190763190764%_
                                               _%e190242190369%_
                                               _%hd190241190372%_
                                               _%tl190240190374%_
                                               _%e190245190377%_
                                               _%hd190244190380%_
                                               _%tl190243190382%_
                                               _%__splice190704190705%_
                                               _%target190269190303%_
                                               _%tl190271190305%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g190236190282%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190236190282%_))))))
                          (let () (declare (not safe)) (_%g190236190282%_)))))
                  (let () (declare (not safe)) (_%g190236190282%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self190194%_ _%ctx190195%_ _%stx190196%_ _%args190197%_)
        (let ((_%self190200%_ _%self190194%_))
          (if (let ((__method191087
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self190200%_ 'check-arguments))))
                (if __method191087
                    (__method191087
                     _%self190200%_
                     _%ctx190195%_
                     _%stx190196%_
                     _%args190197%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self190200%_
                             'check-arguments))))
              (let* ((_%signature190210%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190200%_ '2 '#f '#f)))
                     (_%signature190212%_ _%signature190210%_)
                     (_%$e190222%_
                      (if _%signature190212%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature190212%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e190222%_
                    ((lambda (_%unchecked190225%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked190225%_))
                           (let ((__tmp191121
                                  (let ((__tmp191122
                                         (let ((__tmp191124
                                                (cons '%#ref
                                                      (cons _%unchecked190225%_
                                                            '())))
                                               (__tmp191123
                                                (map (lambda (_%g190226190228%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%ctx190195%_
                                                          _%g190226190228%_)))
                                                     _%args190197%_)))
                                           (declare (not safe))
                                           (cons __tmp191124 __tmp191123))))
                                    (declare (not safe))
                                    (cons '%#call __tmp191122))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp191121 _%stx190196%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx190195%_ _%stx190196%_))))
                     _%$e190222%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx190195%_ _%stx190196%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx190195%_ _%stx190196%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self189945%_ _%ctx189946%_ _%stx189947%_ _%args189948%_)
        (let ()
          (let* ((_%self189951%_ _%self189945%_)
                 (_%signature189960189962%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self189951%_ '2 '#f '#f))))
            (if _%signature189960189962%_
                (let* ((_%signature189965%_ _%signature189960189962%_)
                       (_%argument-types189966189968%_
                        (##direct-structure-ref
                         _%signature189965%_
                         '3
                         gxc#!signature::t
                         '#f)))
                  (if _%argument-types189966189968%_
                      (let* ((_%argument-types189971%_
                              _%argument-types189966189968%_)
                             (_%argument-types189976%_
                              (let ((__tmp191125
                                     (lambda (_%t189974%_)
                                       (if _%t189974%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189947%_
                                              _%t189974%_))
                                           '#f))))
                                (declare (not safe))
                                (gxc#map*
                                 __tmp191125
                                 _%argument-types189971%_))))
                        (let _%loop189978%_ ((_%rest-args189980%_
                                              _%args189948%_)
                                             (_%rest-types189981%_
                                              _%argument-types189976%_)
                                             (_%result189982%_ '#t))
                          (let* ((_%rest-args189983189991%_
                                  _%rest-args189980%_)
                                 (_%else189985189999%_
                                  (lambda () _%result189982%_))
                                 (_%K189987190060%_
                                  (lambda (_%rest-args190002%_ _%arg190003%_)
                                    (let* ((_%rest-types190004190015%_
                                            _%rest-types189981%_)
                                           (_%E190008190019%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%rest-types190004190015%_
                                                       '([type . rest-types])
                                                       '([])
                                                       '(tail-type)))
                                              '#!void)))
                                      (let ((_%K190011190048%_
                                             (lambda (_%rest-types190045%_
                                                      _%type190046%_)
                                               (let ((__tmp191126
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#check-expression-type!
                                                             _%stx189947%_
                                                             _%arg190003%_
                                                             _%type190046%_))
                                                          _%result189982%_
                                                          '#f)))
                                                 (declare (not safe))
                                                 (_%loop189978%_
                                                  _%rest-args190002%_
                                                  _%rest-types190045%_
                                                  __tmp191126))))
                                            (_%K190010190039%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"signature arity mismatch"
                                                  _%stx189947%_
                                                  _%argument-types189976%_))))
                                            (_%K190009190029%_
                                             (lambda (_%tail-type190023%_)
                                               (if (let ((__tmp191127
                                                          (lambda (_%g190024190026%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#check-expression-type!
                                                               _%stx189947%_
                                                               _%g190024190026%_
                                                               _%tail-type190023%_)))))
                                                     (declare (not safe))
                                                     (__andmap1
                                                      __tmp191127
                                                      _%rest-args190002%_))
                                                   _%result189982%_
                                                   '#f))))
                                        (let ((_%try-match190006190042%_
                                               (lambda ()
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _%rest-types190004190015%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K190010190039%_))
                                                     (let ((_%tail-type190032%_
                                                            _%rest-types190004190015%_))
                                                       (declare (not safe))
                                                       (_%K190009190029%_
                                                        _%tail-type190032%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%rest-types190004190015%_))
                                              (let ((_%tl190013190053%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%rest-types190004190015%_)))
                                                    (_%hd190012190051%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%rest-types190004190015%_))))
                                                (let ((_%type190056%_
                                                       _%hd190012190051%_)
                                                      (_%rest-types190058%_
                                                       _%tl190013190053%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%K190011190048%_
                                                     _%rest-types190058%_
                                                     _%type190056%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%try-match190006190042%_)))))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest-args189983189991%_))
                                (let ((_%hd189988190063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest-args189983189991%_)))
                                      (_%tl189989190065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest-args189983189991%_))))
                                  (let* ((_%arg190068%_ _%hd189988190063%_)
                                         (_%rest-args190070%_
                                          _%tl189989190065%_))
                                    (declare (not safe))
                                    (_%K189987190060%_
                                     _%rest-args190070%_
                                     _%arg190068%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else189985189999%_))))))
                      '#f))
                '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self189756%_ _%ctx189757%_ _%stx189758%_ _%args189759%_)
        (let ((_%self189762%_ _%self189756%_))
          (let* ((_%g189772189782%_
                  (lambda (_%g189773189779%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189773189779%_))))
                 (_%g189771189820%_
                  (lambda (_%g189773189785%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189773189785%_))
                        (let ((_%e189777189787%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189773189785%_))))
                          (let ((_%hd189776189790%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189777189787%_)))
                                (_%tl189775189792%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189777189787%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189775189792%_))
                                ((lambda (_%L189795%_)
                                   (let* ((_%klass189807%_
                                           (let ((__tmp191128
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189762%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189758%_
                                              __tmp191128)))
                                          (_%object189809%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189757%_
                                              _%L189795%_)))
                                          (_%instance?189814%_
                                           (let ((_%$e189811%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object189809%_
                                                     _%klass189807%_))))
                                             (if _%$e189811%_
                                                 _%$e189811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L189795%_
                                                    _%klass189807%_))))))
                                     (if _%instance?189814%_
                                         (let ((__tmp191129
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object189809%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L189795%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object189809%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191129
                                            _%stx189758%_))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#xform-call%
                                            _%ctx189757%_
                                            _%stx189758%_)))))
                                 _%hd189776189790%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189772189782%_ _%g189773189785%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189772189782%_ _%g189773189785%_))))))
            (declare (not safe))
            (_%g189771189820%_ _%args189759%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self189552%_ _%ctx189553%_ _%stx189554%_ _%args189555%_)
        (let ((_%self189558%_ _%self189552%_))
          (let* ((_%g189568189578%_
                  (lambda (_%g189569189575%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189569189575%_))))
                 (_%g189567189631%_
                  (lambda (_%g189569189581%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189569189581%_))
                        (let ((_%e189573189583%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189569189581%_))))
                          (let ((_%hd189572189586%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189573189583%_)))
                                (_%tl189571189588%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189573189583%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189571189588%_))
                                ((lambda (_%L189591%_)
                                   (let* ((_%klass189603%_
                                           (let ((__tmp191130
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189558%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189554%_
                                              __tmp191130)))
                                          (_%object189605%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189553%_
                                              _%L189591%_)))
                                          (_%instance?189610%_
                                           (let ((_%$e189607%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object189605%_
                                                     _%klass189603%_))))
                                             (if _%$e189607%_
                                                 _%$e189607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L189591%_
                                                    _%klass189603%_)))))
                                          (_%klass189613%_ _%klass189603%_))
                                     (if _%instance?189610%_
                                         (let ((__tmp191131
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object189605%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L189591%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object189605%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191131
                                            _%stx189554%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass189613%_
                                                '8
                                                '#f
                                                '#f))
                                             (let ((__tmp191132
                                                    (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass189613%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%object189605%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp191132
                                                _%stx189554%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass189613%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp191133
                                                        (cons '%#struct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass189613%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%object189605%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191133
                                                    _%stx189554%_))
                                                 (let ((__tmp191134
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'class-instance? '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189558%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons _%object189605%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191134
                                                    _%stx189554%_)))))))
                                 _%hd189572189586%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189568189578%_ _%g189569189581%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189568189578%_ _%g189569189581%_))))))
            (declare (not safe))
            (_%g189567189631%_ _%args189555%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx189215%_)
        (let* ((_%__stx190773190774%_ _%stx189215%_)
               (_%g189220189261%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190773190774%_)))))
          (let ((_%__kont190775190776%_ (lambda () '#t))
                (_%__kont190777190778%_ (lambda () '#t))
                (_%__kont190779190780%_
                 (lambda (_%L189329%_ _%L189330%_)
                   (let ((_%rator-type189351189353%_
                          (let ((__tmp191135
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L189330%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp191135))))
                     (if _%rator-type189351189353%_
                         (let* ((_%rator-type189356%_
                                 _%rator-type189351189353%_)
                                (_%rator-signature189357189359%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type189356%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type189356%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature189357189359%_
                               (let* ((_%rator-signature189362%_
                                       _%rator-signature189357189359%_)
                                      (_%rator-effect189363189365%_
                                       (if _%rator-signature189362%_
                                           (##direct-structure-ref
                                            _%rator-signature189362%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect189363189365%_
                                     (let ((_%rator-effect189368%_
                                            _%rator-effect189363189365%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect189368%_)
                                               (equal? '(alloc)
                                                       _%rator-effect189368%_))
                                           (let ((__tmp191136
                                                  (let ((__tmp191137
                                                         (lambda (_%g189373189376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g189374189378%_)
                   (cons _%g189373189376%_ _%g189374189378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp191137
                                                     '()
                                                     _%L189329%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp191136))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont190783190784%_ (lambda () '#f)))
            (let ((_%__match190862190863%_
                   (lambda (_%e189238189273%_
                            _%hd189237189276%_
                            _%tl189236189278%_
                            _%e189241189281%_
                            _%hd189240189284%_
                            _%tl189239189286%_
                            _%e189244189289%_
                            _%hd189243189292%_
                            _%tl189242189294%_
                            _%e189247189297%_
                            _%hd189246189300%_
                            _%tl189245189302%_
                            _%__splice190781190782%_
                            _%target189248189305%_
                            _%tl189250189307%_)
                     (letrec ((_%loop189251189310%_
                               (lambda (_%hd189249189313%_
                                        _%rand189255189315%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd189249189313%_))
                                     (let ((_%e189252189318%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd189249189313%_))))
                                       (let ((_%lp-tl189254189323%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e189252189318%_)))
                                             (_%lp-hd189253189321%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e189252189318%_))))
                                         (let ((__tmp191138
                                                (cons _%lp-hd189253189321%_
                                                      _%rand189255189315%_)))
                                           (declare (not safe))
                                           (_%loop189251189310%_
                                            _%lp-tl189254189323%_
                                            __tmp191138))))
                                     (let ((_%rand189256189326%_
                                            (reverse _%rand189255189315%_)))
                                       (_%__kont190779190780%_
                                        _%rand189256189326%_
                                        _%hd189246189300%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop189251189310%_ _%target189248189305%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190773190774%_))
                  (let ((_%e189224189409%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190773190774%_))))
                    (let ((_%tl189222189414%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189224189409%_)))
                          (_%hd189223189412%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189224189409%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd189223189412%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd189223189412%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189222189414%_))
                                  (let ((_%e189227189417%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189222189414%_))))
                                    (let ((_%tl189225189422%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189227189417%_)))
                                          (_%hd189226189420%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189227189417%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189225189422%_))
                                          (_%__kont190775190776%_)
                                          (_%__kont190783190784%_))))
                                  (_%__kont190783190784%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd189223189412%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189222189414%_))
                                      (let ((_%e189233189394%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189222189414%_))))
                                        (let ((_%tl189231189399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189233189394%_)))
                                              (_%hd189232189397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189233189394%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189231189399%_))
                                              (_%__kont190777190778%_)
                                              (_%__kont190783190784%_))))
                                      (_%__kont190783190784%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd189223189412%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189222189414%_))
                                          (let ((_%e189241189281%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189222189414%_))))
                                            (let ((_%tl189239189286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189241189281%_)))
                                                  (_%hd189240189284%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189241189281%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189240189284%_))
                                                  (let ((_%e189244189289%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189240189284%_))))
                                                    (let ((_%tl189242189294%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189244189289%_)))
                                                          (_%hd189243189292%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189244189289%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189243189292%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd189243189292%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189242189294%_))
                          (let ((_%e189247189297%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189242189294%_))))
                            (let ((_%tl189245189302%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189247189297%_)))
                                  (_%hd189246189300%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189247189297%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189245189302%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189239189286%_))
                                      (let ((_%__splice190781190782%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189239189286%_
                                                '0))))
                                        (let ((_%tl189250189307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190781190782%_
                                                  '1)))
                                              (_%target189248189305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190781190782%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189250189307%_))
                                              (_%__match190862190863%_
                                               _%e189224189409%_
                                               _%hd189223189412%_
                                               _%tl189222189414%_
                                               _%e189241189281%_
                                               _%hd189240189284%_
                                               _%tl189239189286%_
                                               _%e189244189289%_
                                               _%hd189243189292%_
                                               _%tl189242189294%_
                                               _%e189247189297%_
                                               _%hd189246189300%_
                                               _%tl189245189302%_
                                               _%__splice190781190782%_
                                               _%target189248189305%_
                                               _%tl189250189307%_)
                                              (_%__kont190783190784%_))))
                                      (_%__kont190783190784%_))
                                  (_%__kont190783190784%_))))
                          (_%__kont190783190784%_))
                      (_%__kont190783190784%_))
                  (_%__kont190783190784%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190783190784%_))))
                                          (_%__kont190783190784%_))
                                      (_%__kont190783190784%_))))
                          (_%__kont190783190784%_))))
                  (_%__kont190783190784%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx189210%_ _%klass189211%_)
        (let ((_%expr-type189213%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx189210%_))))
          (if _%expr-type189213%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type189213%_ _%klass189211%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx189188%_ _%expr189189%_ _%type189190%_)
        (if (let () (declare (not safe)) (not _%type189190%_))
            (let () '#f)
            (let ((_%$e189193%_
                   (eq? (##structure-ref _%type189190%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e189193%_
                  _%$e189193%_
                  (let ((_%expr-type189197%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr189189%_))))
                    (if (let () (declare (not safe)) (not _%expr-type189197%_))
                        (let () '#f)
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type189197%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            (let () '#f)
                            (let ((_%$e189201%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type189197%_
                                      'gxc#!abort::t))))
                              (if _%$e189201%_
                                  _%$e189201%_
                                  (let ((_%$e189204%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type189197%_
                                            _%type189190%_))))
                                    (if _%$e189204%_
                                        _%$e189204%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type189190%_))
                                            (let () '#f)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type189190%_
                                                   _%expr-type189197%_))
                                                (let () '#f)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx189188%_
                                                   _%expr189189%_
                                                   _%expr-type189197%_
                                                   _%type189190%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self189002%_ _%ctx189003%_ _%stx189004%_ _%args189005%_)
        (let ((_%self189008%_ _%self189002%_))
          (let* ((_%klass189018%_
                  (let ((__tmp191139
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189008%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#optimizer-resolve-class _%stx189004%_ __tmp191139)))
                 (_%fields189020%_
                  (length (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass189018%_
                             '5
                             '#f
                             '#f))))
                 (_%args189026%_
                  (map (lambda (_%g189021189023%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%ctx189003%_ _%g189021189023%_)))
                       _%args189005%_))
                 (_%inline-make-object189028%_
                  (cons '%#begin-annotation
                        (cons (cons '@type
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189008%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '##structure '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self189008%_
                             '1
                             '#f
                             '#f))
                          '()))
              (make-list _%fields189020%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
            (let* ((_%klass189031%_ _%klass189018%_)
                   (_%$e189045%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass189031%_ '6 '#f '#f))))
              (if _%$e189045%_
                  ((lambda (_%ctor189048%_)
                     (let ((_%$obj189050%_
                            (let ((__tmp191140
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp191140)))
                           (_%ctor-impl189051%_
                            (let ()
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               _%klass189031%_
                               _%ctor189048%_))))
                       (let ((__tmp191141
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj189050%_ '())
                                                      (cons _%inline-make-object189028%_
                                                            '()))
                                                '())
                                          (cons (cons '%#begin
                                                      (cons (if _%ctor-impl189051%_
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl189051%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj189050%_ '()))
                                          _%args189026%_)))
                        (let ((_%$ctor189053%_
                               (let ((__tmp191142
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__constructor))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp191142))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$ctor189053%_ '())
                                                  (cons (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'direct-method-ref '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189008%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj189050%_ '()))
                                        (cons (cons '%#quote
                                                    (cons _%ctor189048%_ '()))
                                              '())))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#ref
                                                              (cons _%$ctor189053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#call
                            (cons (cons '%#ref (cons _%$ctor189053%_ '()))
                                  (cons (cons '%#ref (cons _%$obj189050%_ '()))
                                        _%args189026%_)))
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'error '()))
                                        (cons (cons '%#quote
                                                    (cons '"missing constructor method implementation"
                                                          '()))
                                              (cons (cons '%#quote
                                                          (cons 'class: '()))
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self189008%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons 'method: '()))
                        (cons (cons '%#quote (cons _%ctor189048%_ '()))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                    (cons (cons '%#ref (cons _%$obj189050%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191141 _%stx189004%_))))
                   _%$e189045%_)
                  (let ((_%$e189055%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass189031%_
                            '10
                            '#f
                            '#f))))
                    (if _%$e189055%_
                        ((lambda (_%metaclass189058%_)
                           (let* ((_%$obj189060%_
                                   (let ((__tmp191143
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191143)))
                                  (_%metakons189062%_
                                   (let ((__tmp191144
                                          (let ()
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx189004%_
                                             _%metaclass189058%_))))
                                     (declare (not safe))
                                     (gxc#!class-lookup-method
                                      __tmp191144
                                      'instance-init!)))
                                  (__tmp191145
                                   (cons '%#let-values
                                         (cons (cons (cons (cons _%$obj189060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons _%inline-make-object189028%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (cons '%#begin
                                                           (cons (if _%metakons189062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons189062%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189008%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj189060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args189026%_))))
                             (cons '%#call
                                   (cons (cons '%#ref (cons 'call-method '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189008%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons 'instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj189060%_ '()))
                   _%args189026%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (cons '%#ref (cons _%$obj189060%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp191145
                              _%stx189004%_)))
                         _%$e189055%_)
                        (if (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass189031%_
                               '7
                               '#f
                               '#f))
                            (let ()
                              (if (let ((__tmp191146
                                         (let ()
                                           (declare (not safe))
                                           (##length _%args189026%_))))
                                    (declare (not safe))
                                    (##fx= __tmp191146 _%fields189020%_))
                                  (let ((__tmp191147
                                         (cons '%#begin-annotation
                                               (cons (cons '@type
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189008%_
                            '1
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '##structure '()))
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self189008%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     _%args189026%_)))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp191147
                                     _%stx189004%_))
                                  (let ((__tmp191149
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self189008%_
                                            '1
                                            '#f
                                            '#f)))
                                        (__tmp191148
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass189031%_
                                            '5
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _%stx189004%_
                                     __tmp191149
                                     __tmp191148))))
                            (let ((_%$obj189067%_
                                   (let ((__tmp191150
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191150))))
                              (let _%lp189069%_ ((_%rest189071%_
                                                  _%args189026%_)
                                                 (_%initializers189072%_ '()))
                                (let* ((_%__stx190865190866%_ _%rest189071%_)
                                       (_%g189076189097%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx190865190866%_)))))
                                  (let ((_%__kont190867190868%_
                                         (lambda (_%L189151%_
                                                  _%L189152%_
                                                  _%L189153%_)
                                           (let* ((_%slot189180%_
                                                   (let ((__tmp191151
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%L189153%_))))
                                                     (declare (not safe))
                                                     (keyword->symbol
                                                      __tmp191151)))
                                                  (_%off189182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass189031%_
                                                      _%slot189180%_))))
                                             (if _%off189182%_
                                                 (let ((__tmp191152
                                                        (cons (cons _%off189182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L189152%_)
                      _%initializers189072%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp189069%_
                                                    _%L189151%_
                                                    __tmp191152))
                                                 (let ((__tmp191153
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189008%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"unknown slot"
                                                    _%stx189004%_
                                                    __tmp191153
                                                    _%slot189180%_))))))
                                        (_%__kont190869190870%_
                                         (lambda ()
                                           (let ((__tmp191154
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj189067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object189028%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (let ((__tmp191157
                                         (cons (cons '%#ref
                                                     (cons _%$obj189067%_ '()))
                                               '()))
                                        (__tmp191155
                                         (let ((__tmp191156
                                                (lambda (_%i189111%_
                                                         _%r189112%_)
                                                  (cons (cons '%#struct-unchecked-set!
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self189008%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons (car _%i189111%_) '()))
                                  (cons (cons '%#ref (cons _%$obj189067%_ '()))
                                        (cons (cdr _%i189111%_) '())))))
                _%r189112%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            __tmp191156
                                            '()
                                            _%initializers189072%_))))
                                    (declare (not safe))
                                    (__foldr1 cons __tmp191157 __tmp191155)))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191154
                                              _%stx189004%_))))
                                        (_%__kont190871190872%_
                                         (lambda ()
                                           (let ((__tmp191158
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj189067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object189028%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-instance-init!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj189067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%args189026%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons '%#ref
                                                    (cons _%$obj189067%_ '()))
                                              '())))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191158
                                              _%stx189004%_)))))
                                    (let* ((_%g189074189114%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%__stx190865190866%_))
                                                  (_%__kont190869190870%_)
                                                  (_%__kont190871190872%_))))
                                           (_%__match190902190903%_
                                            (lambda (_%e189083189119%_
                                                     _%hd189082189122%_
                                                     _%tl189081189124%_
                                                     _%e189086189127%_
                                                     _%hd189085189130%_
                                                     _%tl189084189132%_
                                                     _%e189089189135%_
                                                     _%hd189088189138%_
                                                     _%tl189087189140%_
                                                     _%e189092189143%_
                                                     _%hd189091189146%_
                                                     _%tl189090189148%_)
                                              (let ((_%L189151%_
                                                     _%tl189090189148%_)
                                                    (_%L189152%_
                                                     _%hd189091189146%_)
                                                    (_%L189153%_
                                                     _%hd189088189138%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-keyword?
                                                       _%L189153%_))
                                                    (_%__kont190867190868%_
                                                     _%L189151%_
                                                     _%L189152%_
                                                     _%L189153%_)
                                                    (_%__kont190871190872%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%__stx190865190866%_))
                                          (let ((_%e189083189119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%__stx190865190866%_))))
                                            (let ((_%tl189081189124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189083189119%_)))
                                                  (_%hd189082189122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189083189119%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189082189122%_))
                                                  (let ((_%e189086189127%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189082189122%_))))
                                                    (let ((_%tl189084189132%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189086189127%_)))
                                                          (_%hd189085189130%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189086189127%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189085189130%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd189085189130%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189084189132%_))
                          (let ((_%e189089189135%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189084189132%_))))
                            (let ((_%tl189087189140%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189089189135%_)))
                                  (_%hd189088189138%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189089189135%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189087189140%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189081189124%_))
                                      (let ((_%e189092189143%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189081189124%_))))
                                        (let ((_%tl189090189148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189092189143%_)))
                                              (_%hd189091189146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189092189143%_))))
                                          (_%__match190902190903%_
                                           _%e189083189119%_
                                           _%hd189082189122%_
                                           _%tl189081189124%_
                                           _%e189086189127%_
                                           _%hd189085189130%_
                                           _%tl189084189132%_
                                           _%e189089189135%_
                                           _%hd189088189138%_
                                           _%tl189087189140%_
                                           _%e189092189143%_
                                           _%hd189091189146%_
                                           _%tl189090189148%_)))
                                      (_%__kont190871190872%_))
                                  (_%__kont190871190872%_))))
                          (_%__kont190871190872%_))
                      (_%__kont190871190872%_))
                  (_%__kont190871190872%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190871190872%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189074189114%_)))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self188785%_ _%ctx188786%_ _%stx188787%_ _%args188788%_)
        (let ((_%self188791%_ _%self188785%_))
          (let* ((_%arguments-ok?188801%_
                  (let ((__method191088
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188791%_ 'check-arguments))))
                    (if __method191088
                        (__method191088
                         _%self188791%_
                         _%ctx188786%_
                         _%stx188787%_
                         _%args188788%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188791%_
                                 'check-arguments)))))
                 (_%g188803188813%_
                  (lambda (_%g188804188810%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188804188810%_))))
                 (_%g188802188877%_
                  (lambda (_%g188804188816%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188804188816%_))
                        (let ((_%e188808188818%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188804188816%_))))
                          (let ((_%hd188807188821%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188808188818%_)))
                                (_%tl188806188823%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188808188818%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl188806188823%_))
                                ((lambda (_%L188826%_)
                                   (let* ((_%klass188839%_
                                           (let ((__tmp191159
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188791%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188787%_
                                              __tmp191159)))
                                          (_%field188841%_
                                           (let ((__tmp191160
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188791%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _%klass188839%_
                                              __tmp191160)))
                                          (_%object188843%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx188786%_
                                              _%L188826%_)))
                                          (_%klass188846%_ _%klass188839%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass188846%_
                                            '8
                                            '#f
                                            '#f))
                                         (let ((__tmp191161
                                                (cons (if (or _%arguments-ok?188801%_
                                                              (let ((__tmp191162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self188791%_
                                '4
                                '#f
                                '#f))))
                        (declare (not safe))
                        (not __tmp191162)))
                  '%#struct-unchecked-ref
                  '%#struct-direct-ref)
              (cons (cons '%#ref
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188791%_
                                   '1
                                   '#f
                                   '#f))
                                '()))
                    (cons (cons '%#quote (cons _%field188841%_ '()))
                          (cons _%object188843%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191161
                                            _%stx188787%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass188846%_
                                                '7
                                                '#f
                                                '#f))
                                             (let ((__tmp191163
                                                    (cons (if (or _%arguments-ok?188801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp191164
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self188791%_
                                    '4
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (not __tmp191164)))
                      '%#struct-unchecked-ref
                      '%#struct-ref)
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188791%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons _%field188841%_ '()))
                              (cons _%object188843%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp191163
                                                _%stx188787%_))
                                             (let ((_%$e188865%_
                                                    (let ((__tmp191165
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188791%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (gxc#!class-slot-find-struct
                                                       _%klass188846%_
                                                       __tmp191165))))
                                               (if _%$e188865%_
                                                   ((lambda (_%klass188868%_)
                                                      (let ((__tmp191166
                                                             (cons (if (or _%arguments-ok?188801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp191167
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188791%_
                                             '4
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (not __tmp191167)))
                               '%#struct-unchecked-ref
                               '%#struct-ref)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self188791%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field188841%_ '()))
                                       (cons _%object188843%_ '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp191166 _%stx188787%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$e188865%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188791%_
                                                          '4
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp191168
                                                              (let ((_%$obj188874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp191169
                                    (let ()
                                      (declare (not safe))
                                      (##gensym '__obj))))
                               (declare (not safe))
                               (make-symbol__0 __tmp191169))))
                        (cons '%#let-values
                              (cons (cons (cons (cons _%$obj188874%_ '())
                                                (cons _%object188843%_ '()))
                                          '())
                                    (cons (cons '%#if
                                                (cons (cons '%#struct-direct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass188846%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#ref (cons _%$obj188874%_ '())) '())))
              (cons (cons '%#struct-unchecked-ref
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188791%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field188841%_ '()))
                                      (cons (cons '%#ref
                                                  (cons _%$obj188874%_ '()))
                                            '()))))
                    (cons (if _%arguments-ok?188801%_
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj188874%_
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188791%_
                             '3
                             '#f
                             '#f))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'class-slot-ref '()))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self188791%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188791%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191168 _%stx188787%_))
               (let ((__tmp191170
                      (cons '%#call
                            (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                  (cons _%object188843%_
                                        (cons (cons '%#quote
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188791%_
                                                             '3
                                                             '#f
                                                             '#f))
                                                          '()))
                                              '()))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191170 _%stx188787%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%hd188807188821%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g188803188813%_ _%g188804188816%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188803188813%_ _%g188804188816%_))))))
            (declare (not safe))
            (_%g188802188877%_ _%args188788%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self188549%_ _%ctx188550%_ _%stx188551%_ _%args188552%_)
        (let ((_%self188555%_ _%self188549%_))
          (let* ((_%arguments-ok?188565%_
                  (let ((__method191089
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188555%_ 'check-arguments))))
                    (if __method191089
                        (__method191089
                         _%self188555%_
                         _%ctx188550%_
                         _%stx188551%_
                         _%args188552%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188555%_
                                 'check-arguments)))))
                 (_%g188567188581%_
                  (lambda (_%g188568188578%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188568188578%_))))
                 (_%g188566188660%_
                  (lambda (_%g188568188584%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188568188584%_))
                        (let ((_%e188573188586%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188568188584%_))))
                          (let ((_%hd188572188589%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188573188586%_)))
                                (_%tl188571188591%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188573188586%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188571188591%_))
                                (let ((_%e188576188594%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl188571188591%_))))
                                  (let ((_%hd188575188597%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188576188594%_)))
                                        (_%tl188574188599%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188576188594%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl188574188599%_))
                                        ((lambda (_%L188602%_ _%L188603%_)
                                           (let* ((_%klass188619%_
                                                   (let ((__tmp191171
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188555%_
                                                             '1
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#optimizer-resolve-class
                                                      _%stx188551%_
                                                      __tmp191171)))
                                                  (_%field188621%_
                                                   (let ((__tmp191172
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188555%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass188619%_
                                                      __tmp191172)))
                                                  (_%object188623%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx188550%_
                                                      _%L188603%_)))
                                                  (_%value188625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx188550%_
                                                      _%L188602%_)))
                                                  (_%klass188628%_
                                                   _%klass188619%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass188628%_
                                                    '8
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp191173
                                                        (cons (if (or _%arguments-ok?188565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp191174
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self188555%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp191174)))
                          '%#struct-unchecked-set!
                          '%#struct-direct-set!)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188555%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field188621%_ '()))
                                  (cons _%object188623%_
                                        (cons _%value188625%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191173
                                                    _%stx188551%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%klass188628%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp191175
                                                            (cons (if (or _%arguments-ok?188565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp191176
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self188555%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp191176)))
                              '%#struct-unchecked-set!
                              '%#struct-set!)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188555%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field188621%_ '()))
                                      (cons _%object188623%_
                                            (cons _%value188625%_ '())))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp191175 _%stx188551%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e188648%_
                                                            (let ((__tmp191177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self188555%_
                              '3
                              '#f
                              '#f))))
                      (declare (not safe))
                      (gxc#!class-slot-find-struct
                       _%klass188628%_
                       __tmp191177))))
               (if _%$e188648%_
                   ((lambda (_%klass188651%_)
                      (let ((__tmp191178
                             (cons (if (or _%arguments-ok?188565%_
                                           (let ((__tmp191179
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188555%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (not __tmp191179)))
                                       '%#struct-unchecked-set!
                                       '%#struct-set!)
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self188555%_
                                                        '1
                                                        '#f
                                                        '#f))
                                                     '()))
                                         (cons (cons '%#quote
                                                     (cons _%field188621%_
                                                           '()))
                                               (cons _%object188623%_
                                                     (cons _%value188625%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp191178 _%stx188551%_)))
                    _%$e188648%_)
                   (if (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%self188555%_ '4 '#f '#f))
                       (let ((__tmp191180
                              (let ((_%$obj188657%_
                                     (let ((__tmp191181
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp191181))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj188657%_
                                                              '())
                                                        (cons _%object188623%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass188628%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj188657%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-set!
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188555%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field188621%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj188657%_
                                                                '()))
                                                    (cons _%value188625%_
                                                          '())))))
                            (cons (if _%arguments-ok?188565%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj188657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self188555%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value188625%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'class-slot-set!
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self188555%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj188657%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188555%_
                                           '3
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%value188625%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191180 _%stx188551%_))
                       (let ((__tmp191182
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-set!
                                                      '()))
                                          (cons _%object188623%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188555%_
                             '3
                             '#f
                             '#f))
                          '()))
              (cons _%value188625%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp191182
                          _%stx188551%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd188575188597%_
                                         _%hd188572188589%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g188567188581%_
                                           _%g188568188584%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g188567188581%_ _%g188568188584%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188567188581%_ _%g188568188584%_))))))
            (declare (not safe))
            (_%g188566188660%_ _%args188552%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self188364%_ _%ctx188365%_ _%stx188366%_ _%args188367%_)
        (let ((_%self188370%_ _%self188364%_))
          (let* ((_%self188379188389%_ _%self188370%_)
                 (_%E188381188393%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self188379188389%_
                             '((!lambda _ _ arity dispatch inline))))
                    '#!void))
                 (_%K188382188403%_
                  (lambda (_%inline188396%_ _%dispatch188397%_ _%arity188398%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#!lambda-arity-match?
                           _%self188370%_
                           _%args188367%_))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal lambda application; arity mismatch"
                           _%stx188366%_
                           _%arity188398%_)))
                    (if _%inline188396%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose '"inline lambda"))
                          (let ((__tmp191183
                                 (let ((__tmp191184
                                        (_%inline188396%_ _%stx188366%_)))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191184
                                    _%stx188366%_))))
                            (declare (not safe))
                            (gxc#compile-e__1 _%ctx188365%_ __tmp191183)))
                        (if (and _%dispatch188397%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%dispatch188397%_)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose
                                 '"dispatch lambda => "
                                 _%dispatch188397%_))
                              (let ((__tmp191185
                                     (let ((__tmp191186
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _%dispatch188397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args188367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp191186
                                        _%stx188366%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx188365%_ __tmp191185)))
                            (let ()
                              (declare (not safe))
                              (gxc#!procedure::optimize-call
                               _%self188370%_
                               _%ctx188365%_
                               _%stx188366%_
                               _%args188367%_)))))))
            (if '#t
                (let* ((_%e188383188406%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188379188389%_
                           '1
                           '#f
                           '#f)))
                       (_%e188384188409%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188379188389%_
                           '2
                           '#f
                           '#f)))
                       (_%e188385188412%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188379188389%_
                           '3
                           '#f
                           '#f)))
                       (_%arity188415%_ _%e188385188412%_)
                       (_%e188386188417%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188379188389%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch188420%_ _%e188386188417%_)
                       (_%e188387188422%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188379188389%_
                           '5
                           '#f
                           '#f)))
                       (_%inline188425%_ _%e188387188422%_))
                  (declare (not safe))
                  (_%K188382188403%_
                   _%inline188425%_
                   _%dispatch188420%_
                   _%arity188415%_))
                (let () (declare (not safe)) (_%E188381188393%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self188216%_ _%ctx188217%_ _%stx188218%_ _%args188219%_)
        (let ()
          (let* ((_%self188222%_ _%self188216%_)
                 (_%$e188236%_
                  (let ((__tmp191188
                         (lambda (_%g188231188233%_)
                           (let ()
                             (declare (not safe))
                             (gxc#!lambda-arity-match?
                              _%g188231188233%_
                              _%args188219%_))))
                        (__tmp191187
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188222%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__find __tmp191188 __tmp191187))))
            (if _%$e188236%_
                ((lambda (_%clause188239%_)
                   (let ((__method191090
                          (let ()
                            (declare (not safe))
                            (__method-ref _%clause188239%_ 'optimize-call))))
                     (if __method191090
                         (__method191090
                          _%clause188239%_
                          _%ctx188217%_
                          _%stx188218%_
                          _%args188219%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause188239%_
                                  'optimize-call)))))
                 _%$e188236%_)
                (let ((__tmp191189
                       (map gxc#!lambda-arity
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self188222%_
                               '3
                               '#f
                               '#f)))))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Illegal case-lambda application; arity mismatch"
                   _%stx188218%_
                   __tmp191189)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self187956%_ _%ctx187957%_ _%stx187958%_ _%args187959%_)
        (let ((_%self187962%_ _%self187956%_))
          (let* ((_%self187971187980%_ _%self187962%_)
                 (_%E187973187984%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self187971187980%_
                             '((!kw-lambda _ _ table dispatch))))
                    '#!void))
                 (_%K187974188075%_
                  (lambda (_%dispatch187987%_ _%table187988%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%dispatch187987%_))
                        (let* ((_%g187989187999%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type
                                   _%dispatch187987%_)))
                               (_%else187991188007%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"unknown keyword dispatch lambda "
                                     _%dispatch187987%_))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#xform-call%
                                     _%ctx187957%_
                                     _%stx187958%_))))
                               (_%K187993188056%_
                                (lambda (_%main188010%_ _%keys188011%_)
                                  (let ((_g191190_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!kw-lambda-split-args
                                            _%stx187958%_
                                            _%args187959%_))))
                                    (begin
                                      (let ((_g191191_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g191190_)
                                                   (##vector-length _g191190_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g191191_ 2)))
                                            (error "Context expects 2 values"
                                                   _g191191_)))
                                      (let ((_%pargs188013%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g191190_ 0)))
                                            (_%kwargs188014%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g191190_ 1))))
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (gxc#verbose
                                             '"dispatch kw-lambda => "
                                             _%main188010%_))
                                          (if _%table187988%_
                                              (let ((_%xargs188022%_
                                                     (map (lambda (_%key188016%_)
                                                            (let ((_%$e188018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (agetq__0 _%key188016%_ _%kwargs188014%_))))
                      (if _%$e188018%_
                          _%$e188018%_
                          (let () '(%#ref absent-value)))))
                  _%keys188011%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 (lambda (_%kw188024%_)
                                                   (if (memq (car _%kw188024%_)
                                                             _%keys188011%_)
                                                       '#!void
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#raise-compile-error
                                                          '"Illegal keyword lambda application; unexpected keyword"
                                                          _%stx187958%_
                                                          _%keys188011%_
                                                          _%kw188024%_))))
                                                 _%kwargs188014%_)
                                                (let ((__tmp191192
                                                       (let ((__tmp191193
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _%main188010%_ '()))
                                  (cons (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (__foldr1
                                           cons
                                           _%pargs188013%_
                                           _%xargs188022%_)))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191193 _%stx187958%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%ctx187957%_
                                                   __tmp191192)))
                                              (let* ((_%kwt188026%_
                                                      (let ((__tmp191194
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__kwt))))
                (declare (not safe))
                (make-symbol__0 __tmp191194)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwvars188030%_
                                                      (map (lambda (_%_188028%_)
                                                             (let ((__tmp191195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (##gensym '__kw))))
                       (declare (not safe))
                       (make-symbol__0 __tmp191195)))
                   _%kwargs188014%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwbind188035%_
                                                      (map (lambda (_%kw188032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188033%_)
                     (cons (cons _%kwvar188033%_ '())
                           (cons (cdr _%kw188032%_) '())))
                   _%kwargs188014%_
                   _%kwvars188030%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwset188040%_
                                                      (map (lambda (_%kw188037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188038%_)
                     (cons '%#call
                           (cons '(%#ref symbolic-table-set!)
                                 (cons (cons '%#ref (cons _%kwt188026%_ '()))
                                       (cons (cons '%#quote
                                                   (cons (car _%kw188037%_)
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%kwvar188038%_
                                                               '()))
                                                   '()))))))
                   _%kwargs188014%_
                   _%kwvars188030%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xkwargs188045%_
                                                      (map (lambda (_%kw188042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188043%_)
                     (cons (car _%kw188042%_)
                           (cons '%#ref (cons _%kwvar188043%_ '()))))
                   _%kwargs188014%_
                   _%kwvars188030%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xargs188053%_
                                                      (map (lambda (_%key188047%_)
                                                             (let ((_%$e188049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (agetq__0 _%key188047%_ _%xkwargs188045%_))))
                       (if _%$e188049%_
                           _%$e188049%_
                           (let () '(%#ref absent-value)))))
                   _%keys188011%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191196
                                                      (let ((__tmp191197
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%kwbind188035%_
                                 (cons (cons '%#let-values
                                             (cons (cons (cons (cons _%kwt188026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (let ((__tmp191198
                                    (cons '%#call
                                          (cons '(%#ref make-symbolic-table)
                                                (cons (cons '%#quote
                                                            (cons (length _%kwargs188014%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons '(%#quote (length kwvars)) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp191198
                                _%stx187958%_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#begin
                                                               (let ((__tmp191199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ((__tmp191200
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons _%main188010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _%kwt188026%_ '()))
                     (let ()
                       (declare (not safe))
                       (__foldr1 cons _%pargs188013%_ _%xargs188053%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp191200
                                       _%stx187958%_))
                                    '())))
                         (declare (not safe))
                         (__foldr1 cons __tmp191199 _%kwset188040%_)))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp191197 _%stx187958%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx187957%_
                                                 __tmp191196))))))))))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%g187989187999%_
                                 'gxc#!kw-lambda-primary::t))
                              (let* ((_%e187994188059%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g187989187999%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e187995188062%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g187989187999%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e187996188065%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g187989187999%_
                                         '3
                                         '#f
                                         '#f)))
                                     (_%keys188068%_ _%e187996188065%_)
                                     (_%e187997188070%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g187989187999%_
                                         '4
                                         '#f
                                         '#f)))
                                     (_%main188073%_ _%e187997188070%_))
                                (declare (not safe))
                                (_%K187993188056%_
                                 _%main188073%_
                                 _%keys188068%_))
                              (let ()
                                (declare (not safe))
                                (_%else187991188007%_))))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx187957%_ _%stx187958%_))))))
            (if '#t
                (let* ((_%e187975188078%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187971187980%_
                           '1
                           '#f
                           '#f)))
                       (_%e187976188081%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187971187980%_
                           '2
                           '#f
                           '#f)))
                       (_%e187977188084%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187971187980%_
                           '3
                           '#f
                           '#f)))
                       (_%table188087%_ _%e187977188084%_)
                       (_%e187978188089%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187971187980%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch188092%_ _%e187978188089%_))
                  (declare (not safe))
                  (_%K187974188075%_ _%dispatch188092%_ _%table188087%_))
                (let () (declare (not safe)) (_%E187973187984%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx187569%_ _%args187570%_)
        (let _%lp187572%_ ((_%rest187574%_ _%args187570%_)
                           (_%pargs187575%_ '())
                           (_%kwargs187576%_ '()))
          (let* ((_%__stx190907190908%_ _%rest187574%_)
                 (_%g187582187634%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx190907190908%_)))))
            (let ((_%__kont190909190910%_
                   (lambda (_%L187813%_ _%L187814%_)
                     (let ((__tmp191201 (cons _%L187814%_ _%pargs187575%_)))
                       (declare (not safe))
                       (_%lp187572%_
                        _%L187813%_
                        __tmp191201
                        _%kwargs187576%_))))
                  (_%__kont190911190912%_
                   (lambda (_%L187759%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L187759%_ _%pargs187575%_))
                             (reverse _%kwargs187576%_))))
                  (_%__kont190913190914%_
                   (lambda (_%L187706%_ _%L187707%_ _%L187708%_)
                     (let ((_%kw187725%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L187708%_))))
                       (if (assq _%kw187725%_ _%kwargs187576%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx187569%_
                              _%kw187725%_))
                           (let ((__tmp191202
                                  (cons (cons _%kw187725%_ _%L187707%_)
                                        _%kwargs187576%_)))
                             (declare (not safe))
                             (_%lp187572%_
                              _%L187706%_
                              _%pargs187575%_
                              __tmp191202))))))
                  (_%__kont190915190916%_
                   (lambda (_%L187654%_ _%L187655%_)
                     (let ((__tmp191203 (cons _%L187655%_ _%pargs187575%_)))
                       (declare (not safe))
                       (_%lp187572%_
                        _%L187654%_
                        __tmp191203
                        _%kwargs187576%_))))
                  (_%__kont190917190918%_
                   (lambda ()
                     (values (reverse _%pargs187575%_)
                             (reverse _%kwargs187576%_)))))
              (let ((_%__match191014191015%_
                     (lambda (_%e187615187674%_
                              _%hd187614187677%_
                              _%tl187613187679%_
                              _%e187618187682%_
                              _%hd187617187685%_
                              _%tl187616187687%_
                              _%e187621187690%_
                              _%hd187620187693%_
                              _%tl187619187695%_
                              _%e187624187698%_
                              _%hd187623187701%_
                              _%tl187622187703%_)
                       (let ((_%L187706%_ _%tl187622187703%_)
                             (_%L187707%_ _%hd187623187701%_)
                             (_%L187708%_ _%hd187620187693%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L187708%_))
                             (_%__kont190913190914%_
                              _%L187706%_
                              _%L187707%_
                              _%L187708%_)
                             (_%__kont190915190916%_
                              _%tl187613187679%_
                              _%hd187614187677%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx190907190908%_))
                    (let ((_%e187588187778%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx190907190908%_))))
                      (let ((_%tl187586187783%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187588187778%_)))
                            (_%hd187587187781%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187588187778%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd187587187781%_))
                            (let ((_%e187591187786%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd187587187781%_))))
                              (let ((_%tl187589187791%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187591187786%_)))
                                    (_%hd187590187789%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187591187786%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187590187789%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd187590187789%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl187589187791%_))
                                            (let ((_%e187594187794%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl187589187791%_))))
                                              (let ((_%tl187592187799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187594187794%_)))
                                                    (_%hd187593187797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187594187794%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd187593187797%_))
                                                    (let ((_%e187595187802%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd187593187797%_))))
                                                      (if (equal? _%e187595187802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187592187799%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187586187783%_))
                          (let ((_%e187598187805%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187586187783%_))))
                            (let ((_%tl187596187810%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187598187805%_)))
                                  (_%hd187597187808%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187598187805%_))))
                              (_%__kont190909190910%_
                               _%tl187596187810%_
                               _%hd187597187808%_)))
                          (_%__kont190915190916%_
                           _%tl187586187783%_
                           _%hd187587187781%_))
                      (_%__kont190915190916%_
                       _%tl187586187783%_
                       _%hd187587187781%_))
                  (if (equal? _%e187595187802%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187592187799%_))
                          (_%__kont190911190912%_ _%tl187586187783%_)
                          (_%__kont190915190916%_
                           _%tl187586187783%_
                           _%hd187587187781%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187592187799%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187586187783%_))
                              (let ((_%e187624187698%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187586187783%_))))
                                (let ((_%tl187622187703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187624187698%_)))
                                      (_%hd187623187701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187624187698%_))))
                                  (_%__match191014191015%_
                                   _%e187588187778%_
                                   _%hd187587187781%_
                                   _%tl187586187783%_
                                   _%e187591187786%_
                                   _%hd187590187789%_
                                   _%tl187589187791%_
                                   _%e187594187794%_
                                   _%hd187593187797%_
                                   _%tl187592187799%_
                                   _%e187624187698%_
                                   _%hd187623187701%_
                                   _%tl187622187703%_)))
                              (_%__kont190915190916%_
                               _%tl187586187783%_
                               _%hd187587187781%_))
                          (_%__kont190915190916%_
                           _%tl187586187783%_
                           _%hd187587187781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl187592187799%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187586187783%_))
                                                            (let ((_%e187624187698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187586187783%_))))
                      (let ((_%tl187622187703%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187624187698%_)))
                            (_%hd187623187701%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187624187698%_))))
                        (_%__match191014191015%_
                         _%e187588187778%_
                         _%hd187587187781%_
                         _%tl187586187783%_
                         _%e187591187786%_
                         _%hd187590187789%_
                         _%tl187589187791%_
                         _%e187594187794%_
                         _%hd187593187797%_
                         _%tl187592187799%_
                         _%e187624187698%_
                         _%hd187623187701%_
                         _%tl187622187703%_)))
                    (_%__kont190915190916%_
                     _%tl187586187783%_
                     _%hd187587187781%_))
                (_%__kont190915190916%_
                 _%tl187586187783%_
                 _%hd187587187781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont190915190916%_
                                             _%tl187586187783%_
                                             _%hd187587187781%_))
                                        (_%__kont190915190916%_
                                         _%tl187586187783%_
                                         _%hd187587187781%_))
                                    (_%__kont190915190916%_
                                     _%tl187586187783%_
                                     _%hd187587187781%_))))
                            (_%__kont190915190916%_
                             _%tl187586187783%_
                             _%hd187587187781%_))))
                    (_%__kont190917190918%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self187553%_ _%ctx187554%_ _%stx187555%_ _%args187556%_)
        (let ((_%self187559%_ _%self187553%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx187554%_ _%stx187555%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self187241%_ _%stx187242%_)
        (let* ((_%__stx191023191024%_ _%stx187242%_)
               (_%g187245187285%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191023191024%_)))))
          (let ((_%__kont191025191026%_
                 (lambda (_%L187391%_ _%L187392%_)
                   (let ((_%$e187419%_
                          (member 'return:
                                  (let ((__tmp191204
                                         (lambda (_%g187411187414%_
                                                  _%g187412187416%_)
                                           (cons _%g187411187414%_
                                                 _%g187412187416%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp191204 '() _%L187392%_))
                                  gx#stx-eq?)))
                     (if _%$e187419%_
                         ((lambda (_%tail187422%_)
                            (let ((_%type187424%_
                                   (let ((__tmp191205
                                          (let ((__tmp191206
                                                 (cadr _%tail187422%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp191206))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx187242%_
                                      __tmp191205))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx187242%_
                                 _%L187391%_
                                 _%type187424%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self187241%_
                                 _%L187391%_))))
                          _%$e187419%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self187241%_ _%L187391%_))))))
                (_%__kont191029191030%_
                 (lambda (_%L187314%_ _%L187315%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self187241%_ _%L187314%_)))))
            (let ((_%__match191060191061%_
                   (lambda (_%e187251187335%_
                            _%hd187250187338%_
                            _%tl187249187340%_
                            _%e187254187343%_
                            _%hd187253187346%_
                            _%tl187252187348%_
                            _%e187257187351%_
                            _%hd187256187354%_
                            _%tl187255187356%_
                            _%__splice191027191028%_
                            _%target187258187359%_
                            _%tl187260187361%_)
                     (letrec ((_%loop187261187364%_
                               (lambda (_%hd187259187367%_
                                        _%signature187265187369%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187259187367%_))
                                     (let ((_%e187262187372%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187259187367%_))))
                                       (let ((_%lp-tl187264187377%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187262187372%_)))
                                             (_%lp-hd187263187375%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187262187372%_))))
                                         (let ((__tmp191207
                                                (cons _%lp-hd187263187375%_
                                                      _%signature187265187369%_)))
                                           (declare (not safe))
                                           (_%loop187261187364%_
                                            _%lp-tl187264187377%_
                                            __tmp191207))))
                                     (let ((_%signature187266187380%_
                                            (reverse _%signature187265187369%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187252187348%_))
                                           (let ((_%e187269187383%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187252187348%_))))
                                             (let ((_%tl187267187388%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187269187383%_)))
                                                   (_%hd187268187386%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187269187383%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187267187388%_))
                                                   (_%__kont191025191026%_
                                                    _%hd187268187386%_
                                                    _%signature187266187380%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g187245187285%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g187245187285%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop187261187364%_ _%target187258187359%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191023191024%_))
                  (let ((_%e187251187335%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191023191024%_))))
                    (let ((_%tl187249187340%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187251187335%_)))
                          (_%hd187250187338%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187251187335%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187249187340%_))
                          (let ((_%e187254187343%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187249187340%_))))
                            (let ((_%tl187252187348%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187254187343%_)))
                                  (_%hd187253187346%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187254187343%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd187253187346%_))
                                  (let ((_%e187257187351%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd187253187346%_))))
                                    (let ((_%tl187255187356%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187257187351%_)))
                                          (_%hd187256187354%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187257187351%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd187256187354%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd187256187354%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl187255187356%_))
                                                  (let ((_%__splice191027191028%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl187255187356%_
                                                            '0))))
                                                    (let ((_%tl187260187361%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191027191028%_
                                                              '1)))
                                                          (_%target187258187359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191027191028%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187260187361%_))
                                                          (_%__match191060191061%_
                                                           _%e187251187335%_
                                                           _%hd187250187338%_
                                                           _%tl187249187340%_
                                                           _%e187254187343%_
                                                           _%hd187253187346%_
                                                           _%tl187252187348%_
                                                           _%e187257187351%_
                                                           _%hd187256187354%_
                                                           _%tl187255187356%_
                                                           _%__splice191027191028%_
                                                           _%target187258187359%_
                                                           _%tl187260187361%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl187252187348%_))
                      (let ((_%e187280187306%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl187252187348%_))))
                        (let ((_%tl187278187311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187280187306%_)))
                              (_%hd187279187309%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187280187306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187278187311%_))
                              (_%__kont191029191030%_
                               _%hd187279187309%_
                               _%hd187253187346%_)
                              (let ()
                                (declare (not safe))
                                (_%g187245187285%_)))))
                      (let () (declare (not safe)) (_%g187245187285%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl187252187348%_))
                                                      (let ((_%e187280187306%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl187252187348%_))))
                (let ((_%tl187278187311%_
                       (let () (declare (not safe)) (##cdr _%e187280187306%_)))
                      (_%hd187279187309%_
                       (let ()
                         (declare (not safe))
                         (##car _%e187280187306%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187278187311%_))
                      (_%__kont191029191030%_
                       _%hd187279187309%_
                       _%hd187253187346%_)
                      (let () (declare (not safe)) (_%g187245187285%_)))))
              (let () (declare (not safe)) (_%g187245187285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl187252187348%_))
                                                  (let ((_%e187280187306%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl187252187348%_))))
                                                    (let ((_%tl187278187311%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187280187306%_)))
                                                          (_%hd187279187309%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187280187306%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187278187311%_))
                                                          (_%__kont191029191030%_
                                                           _%hd187279187309%_
                                                           _%hd187253187346%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g187245187285%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g187245187285%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187252187348%_))
                                              (let ((_%e187280187306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187252187348%_))))
                                                (let ((_%tl187278187311%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187280187306%_)))
                                                      (_%hd187279187309%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187280187306%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl187278187311%_))
                                                      (_%__kont191029191030%_
                                                       _%hd187279187309%_
                                                       _%hd187253187346%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g187245187285%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g187245187285%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187252187348%_))
                                      (let ((_%e187280187306%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187252187348%_))))
                                        (let ((_%tl187278187311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187280187306%_)))
                                              (_%hd187279187309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187280187306%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187278187311%_))
                                              (_%__kont191029191030%_
                                               _%hd187279187309%_
                                               _%hd187253187346%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g187245187285%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g187245187285%_))))))
                          (let () (declare (not safe)) (_%g187245187285%_)))))
                  (let () (declare (not safe)) (_%g187245187285%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx187219%_ _%expr187220%_ _%type187221%_)
        (let ((_%$e187223%_
               (let () (declare (not safe)) (not _%type187221%_))))
          (if _%$e187223%_
              _%$e187223%_
              (let ((_%$e187226%_
                     (eq? (##structure-ref _%type187221%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e187226%_
                    _%$e187226%_
                    (let ((_%expr-type187230%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr187220%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type187230%_))
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx187219%_
                             _%type187221%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type187230%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx187219%_
                                 _%type187221%_
                                 _%expr-type187230%_))
                              (let ((_%$e187234%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type187230%_
                                        'gxc#!abort::t))))
                                (if _%$e187234%_
                                    _%$e187234%_
                                    (let ((_%$e187237%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type187230%_
                                              _%type187221%_))))
                                      (if _%$e187237%_
                                          _%$e187237%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx187219%_
                                             _%type187221%_
                                             _%expr-type187230%_)))))))))))))))))
