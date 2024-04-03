(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712161246)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp190345 (list gxc#::basic-xform::t))
            (__tmp190344 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp190345
         '()
         __tmp190344
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189894%_
        (apply make-instance gxc#::optimize-call::t _%$args189894%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp190346
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
        (__make-promise __tmp190346)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189886%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189889%_
                (let ((__obj190336
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj190336))
               (__tmp190347
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189889%_ _%stx189886%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190347
           gxc#current-compile-method
           _%self189889%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp190349 (list gxc#::void::t))
            (__tmp190348 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp190349
         '()
         __tmp190348
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189883%_
        (apply make-instance gxc#::check-return-type::t _%$args189883%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp190350
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
        (__make-promise __tmp190350)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189875%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189878%_
                (let ((__obj190338
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj190338))
               (__tmp190351
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189878%_ _%stx189875%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190351
           gxc#current-compile-method
           _%self189878%_))))
    (define gxc#optimize-call%
      (lambda (_%self189485%_ _%stx189486%_)
        (let* ((_%__stx189949189950%_ _%stx189486%_)
               (_%g189489189535%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189949189950%_)))))
          (let ((_%__kont189951189952%_
                 (lambda (_%L189678%_ _%L189679%_)
                   (let* ((_%rator-id189699%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L189679%_)))
                          (_%rator-type189701%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id189699%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type189701%_))
                             (eq? (##structure-ref
                                   _%rator-type189701%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self189485%_ _%stx189486%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type189701%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp190352
                                      (##structure-ref
                                       _%rator-type189701%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id189699%_
                                  '" => "
                                  _%rator-type189701%_
                                  '" "
                                  __tmp190352))
                               (let* ((_%optimized189716%_
                                       (let ((__method190339
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type189701%_
                                                 'optimize-call))))
                                         (if __method190339
                                             (__method190339
                                              _%rator-type189701%_
                                              _%self189485%_
                                              _%stx189486%_
                                              (let ((__tmp190353
                                                     (lambda (_%g189708189711%_
                                                              _%g189709189713%_)
                                                       (cons _%g189708189711%_
                                                             _%g189709189713%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp190353
                                                 '()
                                                 _%L189678%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type189701%_
                                                      'optimize-call)))))
                                      (_%__stx189897189898%_
                                       _%optimized189716%_)
                                      (_%g189719189748%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189897189898%_)))))
                                 (let ((_%__kont189899189900%_
                                        (lambda (_%L189816%_ _%L189817%_)
                                          (let ((_%optimized-rator-id189844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L189817%_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _%rator-type189701%_))
                                                         (eq? _%optimized-rator-id189844%_
                                                              _%rator-id189699%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id189844%_
                                                              gxc#checked-primitives)))
                                                _%optimized189716%_
                                                (let ((__tmp190354
                                                       (let ((__tmp190355
                                                              (let ((__tmp190358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L189817%_ '())))
                            (__tmp190356
                             (let ((__tmp190357
                                    (lambda (_%g189848189851%_
                                             _%g189849189853%_)
                                      (cons _%g189848189851%_
                                            _%g189849189853%_))))
                               (declare (not safe))
                               (__foldr1 __tmp190357 '() _%L189816%_))))
                        (declare (not safe))
                        (cons __tmp190358 __tmp190356))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp190355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp190354
                                                   _%stx189486%_))))))
                                       (_%__kont189903189904%_
                                        (lambda () _%optimized189716%_)))
                                   (let ((_%__match189946189947%_
                                          (lambda (_%e189725189760%_
                                                   _%hd189724189763%_
                                                   _%tl189723189765%_
                                                   _%e189728189768%_
                                                   _%hd189727189771%_
                                                   _%tl189726189773%_
                                                   _%e189731189776%_
                                                   _%hd189730189779%_
                                                   _%tl189729189781%_
                                                   _%e189734189784%_
                                                   _%hd189733189787%_
                                                   _%tl189732189789%_
                                                   _%__splice189901189902%_
                                                   _%target189735189792%_
                                                   _%tl189737189794%_)
                                            (letrec ((_%loop189738189797%_
                                                      (lambda (_%hd189736189800%_
                                                               _%arg189742189802%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd189736189800%_))
                                                            (let ((_%e189739189805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd189736189800%_))))
                      (let ((_%lp-tl189741189810%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189739189805%_)))
                            (_%lp-hd189740189808%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189739189805%_))))
                        (let ((__tmp190359
                               (cons _%lp-hd189740189808%_
                                     _%arg189742189802%_)))
                          (declare (not safe))
                          (_%loop189738189797%_
                           _%lp-tl189741189810%_
                           __tmp190359))))
                    (let ((_%arg189743189813%_ (reverse _%arg189742189802%_)))
                      (_%__kont189899189900%_
                       _%arg189743189813%_
                       _%hd189733189787%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop189738189797%_
                                                 _%target189735189792%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189897189898%_))
                                         (let ((_%e189725189760%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189897189898%_))))
                                           (let ((_%tl189723189765%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189725189760%_)))
                                                 (_%hd189724189763%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189725189760%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd189724189763%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd189724189763%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl189723189765%_))
                                                         (let ((_%e189728189768%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl189723189765%_))))
                   (let ((_%tl189726189773%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e189728189768%_)))
                         (_%hd189727189771%_
                          (let ()
                            (declare (not safe))
                            (##car _%e189728189768%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd189727189771%_))
                         (let ((_%e189731189776%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd189727189771%_))))
                           (let ((_%tl189729189781%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e189731189776%_)))
                                 (_%hd189730189779%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e189731189776%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd189730189779%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd189730189779%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl189729189781%_))
                                         (let ((_%e189734189784%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl189729189781%_))))
                                           (let ((_%tl189732189789%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189734189784%_)))
                                                 (_%hd189733189787%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189734189784%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl189732189789%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl189726189773%_))
                                                     (let ((_%__splice189901189902%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl189726189773%_
                                                               '0))))
                                                       (let ((_%tl189737189794%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189901189902%_ '1)))
                     (_%target189735189792%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189901189902%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl189737189794%_))
                     (_%__match189946189947%_
                      _%e189725189760%_
                      _%hd189724189763%_
                      _%tl189723189765%_
                      _%e189728189768%_
                      _%hd189727189771%_
                      _%tl189726189773%_
                      _%e189731189776%_
                      _%hd189730189779%_
                      _%tl189729189781%_
                      _%e189734189784%_
                      _%hd189733189787%_
                      _%tl189732189789%_
                      _%__splice189901189902%_
                      _%target189735189792%_
                      _%tl189737189794%_)
                     (_%__kont189903189904%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189903189904%_))
                                                 (_%__kont189903189904%_))))
                                         (_%__kont189903189904%_))
                                     (_%__kont189903189904%_))
                                 (_%__kont189903189904%_))))
                         (_%__kont189903189904%_))))
                 (_%__kont189903189904%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189903189904%_))
                                                 (_%__kont189903189904%_))))
                                         (_%__kont189903189904%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type189701%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type189701%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp190360
                                        (let ((__tmp190361
                                               (let ((__tmp190364
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%L189679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190362
                                                      (map (lambda (_%g189859189861%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self189485%_ _%g189859189861%_)))
                   (let ((__tmp190363
                          (lambda (_%g189863189866%_ _%g189864189868%_)
                            (cons _%g189863189866%_ _%g189864189868%_))))
                     (declare (not safe))
                     (__foldr1 __tmp190363 '() _%L189678%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp190364
                                                       __tmp190362))))
                                          (declare (not safe))
                                          (cons '%#call-unchecked
                                                __tmp190361))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp190360
                                    _%stx189486%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx189486%_
                                    _%rator-type189701%_))))))))
                (_%__kont189955189956%_
                 (lambda (_%L189580%_ _%L189581%_)
                   (let ((_%rator-type189598%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L189581%_))))
                     (if (and _%rator-type189598%_
                              (eq? (##structure-ref
                                    _%rator-type189598%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp190365
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type189598%_))))
                                (declare (not safe))
                                (not __tmp190365)))
                         (let ((__tmp190366
                                (let ((__tmp190367
                                       (let ((__tmp190370
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self189485%_
                                                 _%L189581%_)))
                                             (__tmp190368
                                              (map (lambda (_%g189600189602%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self189485%_
                                                        _%g189600189602%_)))
                                                   (let ((__tmp190369
                                                          (lambda (_%g189604189607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g189605189609%_)
                    (cons _%g189604189607%_ _%g189605189609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp190369
                                                      '()
                                                      _%L189580%_)))))
                                         (declare (not safe))
                                         (cons __tmp190370 __tmp190368))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp190367))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp190366 _%stx189486%_))
                         (if (or (let ()
                                   (declare (not safe))
                                   (not _%rator-type189598%_))
                                 (let ((__tmp190371
                                        (##structure-ref
                                         _%rator-type189598%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp190371 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self189485%_ _%stx189486%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx189486%_
                                _%rator-type189598%_))))))))
            (let* ((_%__match190016190017%_
                    (lambda (_%e189518189540%_
                             _%hd189517189543%_
                             _%tl189516189545%_
                             _%e189521189548%_
                             _%hd189520189551%_
                             _%tl189519189553%_
                             _%__splice189957189958%_
                             _%target189522189556%_
                             _%tl189524189558%_)
                      (letrec ((_%loop189525189561%_
                                (lambda (_%hd189523189564%_
                                         _%rand189529189566%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189523189564%_))
                                      (let ((_%e189526189569%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189523189564%_))))
                                        (let ((_%lp-tl189528189574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189526189569%_)))
                                              (_%lp-hd189527189572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189526189569%_))))
                                          (let ((__tmp190372
                                                 (cons _%lp-hd189527189572%_
                                                       _%rand189529189566%_)))
                                            (declare (not safe))
                                            (_%loop189525189561%_
                                             _%lp-tl189528189574%_
                                             __tmp190372))))
                                      (let ((_%rand189530189577%_
                                             (reverse _%rand189529189566%_)))
                                        (_%__kont189955189956%_
                                         _%rand189530189577%_
                                         _%hd189520189551%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop189525189561%_ _%target189522189556%_ '())))))
                   (_%__match189996189997%_
                    (lambda (_%e189495189622%_
                             _%hd189494189625%_
                             _%tl189493189627%_
                             _%e189498189630%_
                             _%hd189497189633%_
                             _%tl189496189635%_
                             _%e189501189638%_
                             _%hd189500189641%_
                             _%tl189499189643%_
                             _%e189504189646%_
                             _%hd189503189649%_
                             _%tl189502189651%_
                             _%__splice189953189954%_
                             _%target189505189654%_
                             _%tl189507189656%_)
                      (letrec ((_%loop189508189659%_
                                (lambda (_%hd189506189662%_
                                         _%rand189512189664%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189506189662%_))
                                      (let ((_%e189509189667%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189506189662%_))))
                                        (let ((_%lp-tl189511189672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189509189667%_)))
                                              (_%lp-hd189510189670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189509189667%_))))
                                          (let ((__tmp190373
                                                 (cons _%lp-hd189510189670%_
                                                       _%rand189512189664%_)))
                                            (declare (not safe))
                                            (_%loop189508189659%_
                                             _%lp-tl189511189672%_
                                             __tmp190373))))
                                      (let ((_%rand189513189675%_
                                             (reverse _%rand189512189664%_)))
                                        (_%__kont189951189952%_
                                         _%rand189513189675%_
                                         _%hd189503189649%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop189508189659%_
                           _%target189505189654%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189949189950%_))
                  (let ((_%e189495189622%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189949189950%_))))
                    (let ((_%tl189493189627%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189495189622%_)))
                          (_%hd189494189625%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189495189622%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189493189627%_))
                          (let ((_%e189498189630%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189493189627%_))))
                            (let ((_%tl189496189635%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189498189630%_)))
                                  (_%hd189497189633%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189498189630%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd189497189633%_))
                                  (let ((_%e189501189638%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd189497189633%_))))
                                    (let ((_%tl189499189643%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189501189638%_)))
                                          (_%hd189500189641%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189501189638%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd189500189641%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd189500189641%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189499189643%_))
                                                  (let ((_%e189504189646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189499189643%_))))
                                                    (let ((_%tl189502189651%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189504189646%_)))
                                                          (_%hd189503189649%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189504189646%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189502189651%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl189496189635%_))
                      (let ((_%__splice189953189954%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189496189635%_
                                '0))))
                        (let ((_%tl189507189656%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189953189954%_ '1)))
                              (_%target189505189654%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189953189954%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189507189656%_))
                              (_%__match189996189997%_
                               _%e189495189622%_
                               _%hd189494189625%_
                               _%tl189493189627%_
                               _%e189498189630%_
                               _%hd189497189633%_
                               _%tl189496189635%_
                               _%e189501189638%_
                               _%hd189500189641%_
                               _%tl189499189643%_
                               _%e189504189646%_
                               _%hd189503189649%_
                               _%tl189502189651%_
                               _%__splice189953189954%_
                               _%target189505189654%_
                               _%tl189507189656%_)
                              (let ()
                                (declare (not safe))
                                (_%g189489189535%_)))))
                      (let () (declare (not safe)) (_%g189489189535%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl189496189635%_))
                      (let ((_%__splice189957189958%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189496189635%_
                                '0))))
                        (let ((_%tl189524189558%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189957189958%_ '1)))
                              (_%target189522189556%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189957189958%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189524189558%_))
                              (_%__match190016190017%_
                               _%e189495189622%_
                               _%hd189494189625%_
                               _%tl189493189627%_
                               _%e189498189630%_
                               _%hd189497189633%_
                               _%tl189496189635%_
                               _%__splice189957189958%_
                               _%target189522189556%_
                               _%tl189524189558%_)
                              (let ()
                                (declare (not safe))
                                (_%g189489189535%_)))))
                      (let () (declare (not safe)) (_%g189489189535%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl189496189635%_))
                                                      (let ((_%__splice189957189958%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl189496189635%_ '0))))
                (let ((_%tl189524189558%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189957189958%_ '1)))
                      (_%target189522189556%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189957189958%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189524189558%_))
                      (_%__match190016190017%_
                       _%e189495189622%_
                       _%hd189494189625%_
                       _%tl189493189627%_
                       _%e189498189630%_
                       _%hd189497189633%_
                       _%tl189496189635%_
                       _%__splice189957189958%_
                       _%target189522189556%_
                       _%tl189524189558%_)
                      (let () (declare (not safe)) (_%g189489189535%_)))))
              (let () (declare (not safe)) (_%g189489189535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl189496189635%_))
                                                  (let ((_%__splice189957189958%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl189496189635%_
                                                            '0))))
                                                    (let ((_%tl189524189558%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189957189958%_
                                                              '1)))
                                                          (_%target189522189556%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189957189958%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189524189558%_))
                                                          (_%__match190016190017%_
                                                           _%e189495189622%_
                                                           _%hd189494189625%_
                                                           _%tl189493189627%_
                                                           _%e189498189630%_
                                                           _%hd189497189633%_
                                                           _%tl189496189635%_
                                                           _%__splice189957189958%_
                                                           _%target189522189556%_
                                                           _%tl189524189558%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189489189535%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189489189535%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl189496189635%_))
                                              (let ((_%__splice189957189958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl189496189635%_
                                                        '0))))
                                                (let ((_%tl189524189558%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189957189958%_
                                                          '1)))
                                                      (_%target189522189556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189957189958%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189524189558%_))
                                                      (_%__match190016190017%_
                                                       _%e189495189622%_
                                                       _%hd189494189625%_
                                                       _%tl189493189627%_
                                                       _%e189498189630%_
                                                       _%hd189497189633%_
                                                       _%tl189496189635%_
                                                       _%__splice189957189958%_
                                                       _%target189522189556%_
                                                       _%tl189524189558%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189489189535%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189489189535%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189496189635%_))
                                      (let ((_%__splice189957189958%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189496189635%_
                                                '0))))
                                        (let ((_%tl189524189558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189957189958%_
                                                  '1)))
                                              (_%target189522189556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189957189958%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189524189558%_))
                                              (_%__match190016190017%_
                                               _%e189495189622%_
                                               _%hd189494189625%_
                                               _%tl189493189627%_
                                               _%e189498189630%_
                                               _%hd189497189633%_
                                               _%tl189496189635%_
                                               _%__splice189957189958%_
                                               _%target189522189556%_
                                               _%tl189524189558%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g189489189535%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189489189535%_))))))
                          (let () (declare (not safe)) (_%g189489189535%_)))))
                  (let () (declare (not safe)) (_%g189489189535%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self189447%_ _%ctx189448%_ _%stx189449%_ _%args189450%_)
        (let ((_%self189453%_ _%self189447%_))
          (if (let ((__method190340
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self189453%_ 'check-arguments))))
                (if __method190340
                    (__method190340
                     _%self189453%_
                     _%ctx189448%_
                     _%stx189449%_
                     _%args189450%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self189453%_
                             'check-arguments))))
              (let* ((_%signature189463%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self189453%_ '2 '#f '#f)))
                     (_%signature189465%_ _%signature189463%_)
                     (_%$e189475%_
                      (if _%signature189465%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature189465%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e189475%_
                    ((lambda (_%unchecked189478%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked189478%_))
                           (let ((__tmp190374
                                  (let ((__tmp190375
                                         (let ((__tmp190377
                                                (cons '%#ref
                                                      (cons _%unchecked189478%_
                                                            '())))
                                               (__tmp190376
                                                (map (lambda (_%g189479189481%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%ctx189448%_
                                                          _%g189479189481%_)))
                                                     _%args189450%_)))
                                           (declare (not safe))
                                           (cons __tmp190377 __tmp190376))))
                                    (declare (not safe))
                                    (cons '%#call __tmp190375))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190374 _%stx189449%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx189448%_ _%stx189449%_))))
                     _%$e189475%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx189448%_ _%stx189449%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx189448%_ _%stx189449%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self189198%_ _%ctx189199%_ _%stx189200%_ _%args189201%_)
        (let ()
          (let* ((_%self189204%_ _%self189198%_)
                 (_%signature189213189215%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self189204%_ '2 '#f '#f))))
            (if _%signature189213189215%_
                (let* ((_%signature189218%_ _%signature189213189215%_)
                       (_%argument-types189219189221%_
                        (##direct-structure-ref
                         _%signature189218%_
                         '3
                         gxc#!signature::t
                         '#f)))
                  (if _%argument-types189219189221%_
                      (let* ((_%argument-types189224%_
                              _%argument-types189219189221%_)
                             (_%argument-types189229%_
                              (let ((__tmp190378
                                     (lambda (_%t189227%_)
                                       (if _%t189227%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189200%_
                                              _%t189227%_))
                                           '#f))))
                                (declare (not safe))
                                (gxc#map*
                                 __tmp190378
                                 _%argument-types189224%_))))
                        (let _%loop189231%_ ((_%rest-args189233%_
                                              _%args189201%_)
                                             (_%rest-types189234%_
                                              _%argument-types189229%_)
                                             (_%result189235%_ '#t))
                          (let* ((_%rest-args189236189244%_
                                  _%rest-args189233%_)
                                 (_%else189238189252%_
                                  (lambda () _%result189235%_))
                                 (_%K189240189313%_
                                  (lambda (_%rest-args189255%_ _%arg189256%_)
                                    (let* ((_%rest-types189257189268%_
                                            _%rest-types189234%_)
                                           (_%E189261189272%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%rest-types189257189268%_
                                                       '([type . rest-types])
                                                       '([])
                                                       '(tail-type)))
                                              '#!void)))
                                      (let ((_%K189264189301%_
                                             (lambda (_%rest-types189298%_
                                                      _%type189299%_)
                                               (let ((__tmp190379
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#check-expression-type!
                                                             _%stx189200%_
                                                             _%arg189256%_
                                                             _%type189299%_))
                                                          _%result189235%_
                                                          '#f)))
                                                 (declare (not safe))
                                                 (_%loop189231%_
                                                  _%rest-args189255%_
                                                  _%rest-types189298%_
                                                  __tmp190379))))
                                            (_%K189263189292%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"signature arity mismatch"
                                                  _%stx189200%_
                                                  _%argument-types189229%_))))
                                            (_%K189262189282%_
                                             (lambda (_%tail-type189276%_)
                                               (if (let ((__tmp190380
                                                          (lambda (_%g189277189279%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#check-expression-type!
                                                               _%stx189200%_
                                                               _%g189277189279%_
                                                               _%tail-type189276%_)))))
                                                     (declare (not safe))
                                                     (__andmap1
                                                      __tmp190380
                                                      _%rest-args189255%_))
                                                   _%result189235%_
                                                   '#f))))
                                        (let ((_%try-match189259189295%_
                                               (lambda ()
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _%rest-types189257189268%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K189263189292%_))
                                                     (let ((_%tail-type189285%_
                                                            _%rest-types189257189268%_))
                                                       (declare (not safe))
                                                       (_%K189262189282%_
                                                        _%tail-type189285%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%rest-types189257189268%_))
                                              (let ((_%tl189266189306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%rest-types189257189268%_)))
                                                    (_%hd189265189304%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%rest-types189257189268%_))))
                                                (let ((_%type189309%_
                                                       _%hd189265189304%_)
                                                      (_%rest-types189311%_
                                                       _%tl189266189306%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%K189264189301%_
                                                     _%rest-types189311%_
                                                     _%type189309%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%try-match189259189295%_)))))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest-args189236189244%_))
                                (let ((_%hd189241189316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest-args189236189244%_)))
                                      (_%tl189242189318%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest-args189236189244%_))))
                                  (let* ((_%arg189321%_ _%hd189241189316%_)
                                         (_%rest-args189323%_
                                          _%tl189242189318%_))
                                    (declare (not safe))
                                    (_%K189240189313%_
                                     _%rest-args189323%_
                                     _%arg189321%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else189238189252%_))))))
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
      (lambda (_%self189009%_ _%ctx189010%_ _%stx189011%_ _%args189012%_)
        (let ((_%self189015%_ _%self189009%_))
          (let* ((_%g189025189035%_
                  (lambda (_%g189026189032%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189026189032%_))))
                 (_%g189024189073%_
                  (lambda (_%g189026189038%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189026189038%_))
                        (let ((_%e189030189040%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189026189038%_))))
                          (let ((_%hd189029189043%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189030189040%_)))
                                (_%tl189028189045%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189030189040%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189028189045%_))
                                ((lambda (_%L189048%_)
                                   (let* ((_%klass189060%_
                                           (let ((__tmp190381
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189015%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189011%_
                                              __tmp190381)))
                                          (_%object189062%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189010%_
                                              _%L189048%_)))
                                          (_%instance?189067%_
                                           (let ((_%$e189064%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object189062%_
                                                     _%klass189060%_))))
                                             (if _%$e189064%_
                                                 _%$e189064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L189048%_
                                                    _%klass189060%_))))))
                                     (if _%instance?189067%_
                                         (let ((__tmp190382
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object189062%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L189048%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object189062%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp190382
                                            _%stx189011%_))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#xform-call%
                                            _%ctx189010%_
                                            _%stx189011%_)))))
                                 _%hd189029189043%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189025189035%_ _%g189026189038%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189025189035%_ _%g189026189038%_))))))
            (declare (not safe))
            (_%g189024189073%_ _%args189012%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188805%_ _%ctx188806%_ _%stx188807%_ _%args188808%_)
        (let ((_%self188811%_ _%self188805%_))
          (let* ((_%g188821188831%_
                  (lambda (_%g188822188828%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188822188828%_))))
                 (_%g188820188884%_
                  (lambda (_%g188822188834%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188822188834%_))
                        (let ((_%e188826188836%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188822188834%_))))
                          (let ((_%hd188825188839%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188826188836%_)))
                                (_%tl188824188841%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188826188836%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl188824188841%_))
                                ((lambda (_%L188844%_)
                                   (let* ((_%klass188856%_
                                           (let ((__tmp190383
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188811%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188807%_
                                              __tmp190383)))
                                          (_%object188858%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx188806%_
                                              _%L188844%_)))
                                          (_%instance?188863%_
                                           (let ((_%$e188860%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object188858%_
                                                     _%klass188856%_))))
                                             (if _%$e188860%_
                                                 _%$e188860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L188844%_
                                                    _%klass188856%_)))))
                                          (_%klass188866%_ _%klass188856%_))
                                     (if _%instance?188863%_
                                         (let ((__tmp190384
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object188858%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L188844%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object188858%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp190384
                                            _%stx188807%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass188866%_
                                                '8
                                                '#f
                                                '#f))
                                             (let ((__tmp190385
                                                    (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass188866%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%object188858%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp190385
                                                _%stx188807%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass188866%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp190386
                                                        (cons '%#struct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass188866%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%object188858%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp190386
                                                    _%stx188807%_))
                                                 (let ((__tmp190387
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'class-instance? '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self188811%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons _%object188858%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp190387
                                                    _%stx188807%_)))))))
                                 _%hd188825188839%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g188821188831%_ _%g188822188834%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188821188831%_ _%g188822188834%_))))))
            (declare (not safe))
            (_%g188820188884%_ _%args188808%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx188468%_)
        (let* ((_%__stx190026190027%_ _%stx188468%_)
               (_%g188473188514%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190026190027%_)))))
          (let ((_%__kont190028190029%_ (lambda () '#t))
                (_%__kont190030190031%_ (lambda () '#t))
                (_%__kont190032190033%_
                 (lambda (_%L188582%_ _%L188583%_)
                   (let ((_%rator-type188604188606%_
                          (let ((__tmp190388
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L188583%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp190388))))
                     (if _%rator-type188604188606%_
                         (let* ((_%rator-type188609%_
                                 _%rator-type188604188606%_)
                                (_%rator-signature188610188612%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type188609%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type188609%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature188610188612%_
                               (let* ((_%rator-signature188615%_
                                       _%rator-signature188610188612%_)
                                      (_%rator-effect188616188618%_
                                       (if _%rator-signature188615%_
                                           (##direct-structure-ref
                                            _%rator-signature188615%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect188616188618%_
                                     (let ((_%rator-effect188621%_
                                            _%rator-effect188616188618%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect188621%_)
                                               (equal? '(alloc)
                                                       _%rator-effect188621%_))
                                           (let ((__tmp190389
                                                  (let ((__tmp190390
                                                         (lambda (_%g188626188629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g188627188631%_)
                   (cons _%g188626188629%_ _%g188627188631%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp190390
                                                     '()
                                                     _%L188582%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp190389))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont190036190037%_ (lambda () '#f)))
            (let ((_%__match190115190116%_
                   (lambda (_%e188491188526%_
                            _%hd188490188529%_
                            _%tl188489188531%_
                            _%e188494188534%_
                            _%hd188493188537%_
                            _%tl188492188539%_
                            _%e188497188542%_
                            _%hd188496188545%_
                            _%tl188495188547%_
                            _%e188500188550%_
                            _%hd188499188553%_
                            _%tl188498188555%_
                            _%__splice190034190035%_
                            _%target188501188558%_
                            _%tl188503188560%_)
                     (letrec ((_%loop188504188563%_
                               (lambda (_%hd188502188566%_
                                        _%rand188508188568%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd188502188566%_))
                                     (let ((_%e188505188571%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd188502188566%_))))
                                       (let ((_%lp-tl188507188576%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e188505188571%_)))
                                             (_%lp-hd188506188574%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e188505188571%_))))
                                         (let ((__tmp190391
                                                (cons _%lp-hd188506188574%_
                                                      _%rand188508188568%_)))
                                           (declare (not safe))
                                           (_%loop188504188563%_
                                            _%lp-tl188507188576%_
                                            __tmp190391))))
                                     (let ((_%rand188509188579%_
                                            (reverse _%rand188508188568%_)))
                                       (_%__kont190032190033%_
                                        _%rand188509188579%_
                                        _%hd188499188553%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop188504188563%_ _%target188501188558%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190026190027%_))
                  (let ((_%e188477188662%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190026190027%_))))
                    (let ((_%tl188475188667%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188477188662%_)))
                          (_%hd188476188665%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188477188662%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd188476188665%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd188476188665%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188475188667%_))
                                  (let ((_%e188480188670%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188475188667%_))))
                                    (let ((_%tl188478188675%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188480188670%_)))
                                          (_%hd188479188673%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188480188670%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl188478188675%_))
                                          (_%__kont190028190029%_)
                                          (_%__kont190036190037%_))))
                                  (_%__kont190036190037%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd188476188665%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188475188667%_))
                                      (let ((_%e188486188647%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188475188667%_))))
                                        (let ((_%tl188484188652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188486188647%_)))
                                              (_%hd188485188650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188486188647%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188484188652%_))
                                              (_%__kont190030190031%_)
                                              (_%__kont190036190037%_))))
                                      (_%__kont190036190037%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd188476188665%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188475188667%_))
                                          (let ((_%e188494188534%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl188475188667%_))))
                                            (let ((_%tl188492188539%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188494188534%_)))
                                                  (_%hd188493188537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188494188534%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd188493188537%_))
                                                  (let ((_%e188497188542%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd188493188537%_))))
                                                    (let ((_%tl188495188547%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188497188542%_)))
                                                          (_%hd188496188545%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188497188542%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd188496188545%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd188496188545%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188495188547%_))
                          (let ((_%e188500188550%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188495188547%_))))
                            (let ((_%tl188498188555%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188500188550%_)))
                                  (_%hd188499188553%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188500188550%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl188498188555%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188492188539%_))
                                      (let ((_%__splice190034190035%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188492188539%_
                                                '0))))
                                        (let ((_%tl188503188560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190034190035%_
                                                  '1)))
                                              (_%target188501188558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190034190035%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188503188560%_))
                                              (_%__match190115190116%_
                                               _%e188477188662%_
                                               _%hd188476188665%_
                                               _%tl188475188667%_
                                               _%e188494188534%_
                                               _%hd188493188537%_
                                               _%tl188492188539%_
                                               _%e188497188542%_
                                               _%hd188496188545%_
                                               _%tl188495188547%_
                                               _%e188500188550%_
                                               _%hd188499188553%_
                                               _%tl188498188555%_
                                               _%__splice190034190035%_
                                               _%target188501188558%_
                                               _%tl188503188560%_)
                                              (_%__kont190036190037%_))))
                                      (_%__kont190036190037%_))
                                  (_%__kont190036190037%_))))
                          (_%__kont190036190037%_))
                      (_%__kont190036190037%_))
                  (_%__kont190036190037%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190036190037%_))))
                                          (_%__kont190036190037%_))
                                      (_%__kont190036190037%_))))
                          (_%__kont190036190037%_))))
                  (_%__kont190036190037%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx188463%_ _%klass188464%_)
        (let ((_%expr-type188466%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx188463%_))))
          (if _%expr-type188466%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type188466%_ _%klass188464%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx188441%_ _%expr188442%_ _%type188443%_)
        (if (let () (declare (not safe)) (not _%type188443%_))
            (let () '#f)
            (let ((_%$e188446%_
                   (eq? (##structure-ref _%type188443%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e188446%_
                  _%$e188446%_
                  (let ((_%expr-type188450%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr188442%_))))
                    (if (let () (declare (not safe)) (not _%expr-type188450%_))
                        (let () '#f)
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type188450%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            (let () '#f)
                            (let ((_%$e188454%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type188450%_
                                      'gxc#!abort::t))))
                              (if _%$e188454%_
                                  _%$e188454%_
                                  (let ((_%$e188457%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type188450%_
                                            _%type188443%_))))
                                    (if _%$e188457%_
                                        _%$e188457%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type188443%_))
                                            (let () '#f)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type188443%_
                                                   _%expr-type188450%_))
                                                (let () '#f)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx188441%_
                                                   _%expr188442%_
                                                   _%expr-type188450%_
                                                   _%type188443%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self188255%_ _%ctx188256%_ _%stx188257%_ _%args188258%_)
        (let ((_%self188261%_ _%self188255%_))
          (let* ((_%klass188271%_
                  (let ((__tmp190392
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188261%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#optimizer-resolve-class _%stx188257%_ __tmp190392)))
                 (_%fields188273%_
                  (length (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass188271%_
                             '5
                             '#f
                             '#f))))
                 (_%args188279%_
                  (map (lambda (_%g188274188276%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%ctx188256%_ _%g188274188276%_)))
                       _%args188258%_))
                 (_%inline-make-object188281%_
                  (cons '%#begin-annotation
                        (cons (cons '@type
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188261%_
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
                             _%self188261%_
                             '1
                             '#f
                             '#f))
                          '()))
              (make-list _%fields188273%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
            (let* ((_%klass188284%_ _%klass188271%_)
                   (_%$e188298%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass188284%_ '6 '#f '#f))))
              (if _%$e188298%_
                  ((lambda (_%ctor188301%_)
                     (let ((_%$obj188303%_
                            (let ((__tmp190393
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp190393)))
                           (_%ctor-impl188304%_
                            (let ()
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               _%klass188284%_
                               _%ctor188301%_))))
                       (let ((__tmp190394
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj188303%_ '())
                                                      (cons _%inline-make-object188281%_
                                                            '()))
                                                '())
                                          (cons (cons '%#begin
                                                      (cons (if _%ctor-impl188304%_
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl188304%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj188303%_ '()))
                                          _%args188279%_)))
                        (let ((_%$ctor188306%_
                               (let ((__tmp190395
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__constructor))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190395))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$ctor188306%_ '())
                                                  (cons (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'direct-method-ref '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self188261%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj188303%_ '()))
                                        (cons (cons '%#quote
                                                    (cons _%ctor188301%_ '()))
                                              '())))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#ref
                                                              (cons _%$ctor188306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#call
                            (cons (cons '%#ref (cons _%$ctor188306%_ '()))
                                  (cons (cons '%#ref (cons _%$obj188303%_ '()))
                                        _%args188279%_)))
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
                                 _%self188261%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons 'method: '()))
                        (cons (cons '%#quote (cons _%ctor188301%_ '()))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                    (cons (cons '%#ref (cons _%$obj188303%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190394 _%stx188257%_))))
                   _%$e188298%_)
                  (let ((_%$e188308%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass188284%_
                            '10
                            '#f
                            '#f))))
                    (if _%$e188308%_
                        ((lambda (_%metaclass188311%_)
                           (let* ((_%$obj188313%_
                                   (let ((__tmp190396
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp190396)))
                                  (_%metakons188315%_
                                   (let ((__tmp190397
                                          (let ()
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx188257%_
                                             _%metaclass188311%_))))
                                     (declare (not safe))
                                     (gxc#!class-lookup-method
                                      __tmp190397
                                      'instance-init!)))
                                  (__tmp190398
                                   (cons '%#let-values
                                         (cons (cons (cons (cons _%$obj188313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons _%inline-make-object188281%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (cons '%#begin
                                                           (cons (if _%metakons188315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons188315%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188261%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj188313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args188279%_))))
                             (cons '%#call
                                   (cons (cons '%#ref (cons 'call-method '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188261%_
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
                         (cons _%$obj188313%_ '()))
                   _%args188279%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (cons '%#ref (cons _%$obj188313%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190398
                              _%stx188257%_)))
                         _%$e188308%_)
                        (if (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass188284%_
                               '7
                               '#f
                               '#f))
                            (let ()
                              (if (let ((__tmp190399
                                         (let ()
                                           (declare (not safe))
                                           (##length _%args188279%_))))
                                    (declare (not safe))
                                    (##fx= __tmp190399 _%fields188273%_))
                                  (let ((__tmp190400
                                         (cons '%#begin-annotation
                                               (cons (cons '@type
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188261%_
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
                                                    _%self188261%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     _%args188279%_)))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp190400
                                     _%stx188257%_))
                                  (let ((__tmp190402
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self188261%_
                                            '1
                                            '#f
                                            '#f)))
                                        (__tmp190401
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass188284%_
                                            '5
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _%stx188257%_
                                     __tmp190402
                                     __tmp190401))))
                            (let ((_%$obj188320%_
                                   (let ((__tmp190403
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp190403))))
                              (let _%lp188322%_ ((_%rest188324%_
                                                  _%args188279%_)
                                                 (_%initializers188325%_ '()))
                                (let* ((_%__stx190118190119%_ _%rest188324%_)
                                       (_%g188329188350%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx190118190119%_)))))
                                  (let ((_%__kont190120190121%_
                                         (lambda (_%L188404%_
                                                  _%L188405%_
                                                  _%L188406%_)
                                           (let* ((_%slot188433%_
                                                   (let ((__tmp190404
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%L188406%_))))
                                                     (declare (not safe))
                                                     (keyword->symbol
                                                      __tmp190404)))
                                                  (_%off188435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass188284%_
                                                      _%slot188433%_))))
                                             (if _%off188435%_
                                                 (let ((__tmp190405
                                                        (cons (cons _%off188435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L188405%_)
                      _%initializers188325%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp188322%_
                                                    _%L188404%_
                                                    __tmp190405))
                                                 (let ((__tmp190406
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self188261%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"unknown slot"
                                                    _%stx188257%_
                                                    __tmp190406
                                                    _%slot188433%_))))))
                                        (_%__kont190122190123%_
                                         (lambda ()
                                           (let ((__tmp190407
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj188320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object188281%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (let ((__tmp190410
                                         (cons (cons '%#ref
                                                     (cons _%$obj188320%_ '()))
                                               '()))
                                        (__tmp190408
                                         (let ((__tmp190409
                                                (lambda (_%i188364%_
                                                         _%r188365%_)
                                                  (cons (cons '%#struct-unchecked-set!
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188261%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons (car _%i188364%_) '()))
                                  (cons (cons '%#ref (cons _%$obj188320%_ '()))
                                        (cons (cdr _%i188364%_) '())))))
                _%r188365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            __tmp190409
                                            '()
                                            _%initializers188325%_))))
                                    (declare (not safe))
                                    (__foldr1 cons __tmp190410 __tmp190408)))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190407
                                              _%stx188257%_))))
                                        (_%__kont190124190125%_
                                         (lambda ()
                                           (let ((__tmp190411
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj188320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object188281%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-instance-init!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj188320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%args188279%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons '%#ref
                                                    (cons _%$obj188320%_ '()))
                                              '())))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190411
                                              _%stx188257%_)))))
                                    (let* ((_%g188327188367%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%__stx190118190119%_))
                                                  (_%__kont190122190123%_)
                                                  (_%__kont190124190125%_))))
                                           (_%__match190155190156%_
                                            (lambda (_%e188336188372%_
                                                     _%hd188335188375%_
                                                     _%tl188334188377%_
                                                     _%e188339188380%_
                                                     _%hd188338188383%_
                                                     _%tl188337188385%_
                                                     _%e188342188388%_
                                                     _%hd188341188391%_
                                                     _%tl188340188393%_
                                                     _%e188345188396%_
                                                     _%hd188344188399%_
                                                     _%tl188343188401%_)
                                              (let ((_%L188404%_
                                                     _%tl188343188401%_)
                                                    (_%L188405%_
                                                     _%hd188344188399%_)
                                                    (_%L188406%_
                                                     _%hd188341188391%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-keyword?
                                                       _%L188406%_))
                                                    (_%__kont190120190121%_
                                                     _%L188404%_
                                                     _%L188405%_
                                                     _%L188406%_)
                                                    (_%__kont190124190125%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%__stx190118190119%_))
                                          (let ((_%e188336188372%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%__stx190118190119%_))))
                                            (let ((_%tl188334188377%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188336188372%_)))
                                                  (_%hd188335188375%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188336188372%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd188335188375%_))
                                                  (let ((_%e188339188380%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd188335188375%_))))
                                                    (let ((_%tl188337188385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188339188380%_)))
                                                          (_%hd188338188383%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188339188380%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd188338188383%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd188338188383%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188337188385%_))
                          (let ((_%e188342188388%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188337188385%_))))
                            (let ((_%tl188340188393%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188342188388%_)))
                                  (_%hd188341188391%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188342188388%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl188340188393%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188334188377%_))
                                      (let ((_%e188345188396%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188334188377%_))))
                                        (let ((_%tl188343188401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188345188396%_)))
                                              (_%hd188344188399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188345188396%_))))
                                          (_%__match190155190156%_
                                           _%e188336188372%_
                                           _%hd188335188375%_
                                           _%tl188334188377%_
                                           _%e188339188380%_
                                           _%hd188338188383%_
                                           _%tl188337188385%_
                                           _%e188342188388%_
                                           _%hd188341188391%_
                                           _%tl188340188393%_
                                           _%e188345188396%_
                                           _%hd188344188399%_
                                           _%tl188343188401%_)))
                                      (_%__kont190124190125%_))
                                  (_%__kont190124190125%_))))
                          (_%__kont190124190125%_))
                      (_%__kont190124190125%_))
                  (_%__kont190124190125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190124190125%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g188327188367%_)))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self188038%_ _%ctx188039%_ _%stx188040%_ _%args188041%_)
        (let ((_%self188044%_ _%self188038%_))
          (let* ((_%arguments-ok?188054%_
                  (let ((__method190341
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188044%_ 'check-arguments))))
                    (if __method190341
                        (__method190341
                         _%self188044%_
                         _%ctx188039%_
                         _%stx188040%_
                         _%args188041%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188044%_
                                 'check-arguments)))))
                 (_%g188056188066%_
                  (lambda (_%g188057188063%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188057188063%_))))
                 (_%g188055188130%_
                  (lambda (_%g188057188069%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188057188069%_))
                        (let ((_%e188061188071%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188057188069%_))))
                          (let ((_%hd188060188074%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188061188071%_)))
                                (_%tl188059188076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188061188071%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl188059188076%_))
                                ((lambda (_%L188079%_)
                                   (let* ((_%klass188092%_
                                           (let ((__tmp190412
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188044%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188040%_
                                              __tmp190412)))
                                          (_%field188094%_
                                           (let ((__tmp190413
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188044%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _%klass188092%_
                                              __tmp190413)))
                                          (_%object188096%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx188039%_
                                              _%L188079%_)))
                                          (_%klass188099%_ _%klass188092%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass188099%_
                                            '8
                                            '#f
                                            '#f))
                                         (let ((__tmp190414
                                                (cons (if (or _%arguments-ok?188054%_
                                                              (let ((__tmp190415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self188044%_
                                '4
                                '#f
                                '#f))))
                        (declare (not safe))
                        (not __tmp190415)))
                  '%#struct-unchecked-ref
                  '%#struct-direct-ref)
              (cons (cons '%#ref
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188044%_
                                   '1
                                   '#f
                                   '#f))
                                '()))
                    (cons (cons '%#quote (cons _%field188094%_ '()))
                          (cons _%object188096%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp190414
                                            _%stx188040%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass188099%_
                                                '7
                                                '#f
                                                '#f))
                                             (let ((__tmp190416
                                                    (cons (if (or _%arguments-ok?188054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190417
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self188044%_
                                    '4
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (not __tmp190417)))
                      '%#struct-unchecked-ref
                      '%#struct-ref)
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188044%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons _%field188094%_ '()))
                              (cons _%object188096%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp190416
                                                _%stx188040%_))
                                             (let ((_%$e188118%_
                                                    (let ((__tmp190418
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188044%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (gxc#!class-slot-find-struct
                                                       _%klass188099%_
                                                       __tmp190418))))
                                               (if _%$e188118%_
                                                   ((lambda (_%klass188121%_)
                                                      (let ((__tmp190419
                                                             (cons (if (or _%arguments-ok?188054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp190420
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188044%_
                                             '4
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (not __tmp190420)))
                               '%#struct-unchecked-ref
                               '%#struct-ref)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self188044%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field188094%_ '()))
                                       (cons _%object188096%_ '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190419 _%stx188040%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$e188118%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188044%_
                                                          '4
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp190421
                                                              (let ((_%$obj188127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp190422
                                    (let ()
                                      (declare (not safe))
                                      (##gensym '__obj))))
                               (declare (not safe))
                               (make-symbol__0 __tmp190422))))
                        (cons '%#let-values
                              (cons (cons (cons (cons _%$obj188127%_ '())
                                                (cons _%object188096%_ '()))
                                          '())
                                    (cons (cons '%#if
                                                (cons (cons '%#struct-direct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass188099%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#ref (cons _%$obj188127%_ '())) '())))
              (cons (cons '%#struct-unchecked-ref
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188044%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field188094%_ '()))
                                      (cons (cons '%#ref
                                                  (cons _%$obj188127%_ '()))
                                            '()))))
                    (cons (if _%arguments-ok?188054%_
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj188127%_
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188044%_
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
                                                               _%self188044%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188044%_
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
                 (gxc#xform-wrap-source __tmp190421 _%stx188040%_))
               (let ((__tmp190423
                      (cons '%#call
                            (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                  (cons _%object188096%_
                                        (cons (cons '%#quote
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188044%_
                                                             '3
                                                             '#f
                                                             '#f))
                                                          '()))
                                              '()))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp190423 _%stx188040%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%hd188060188074%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g188056188066%_ _%g188057188069%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188056188066%_ _%g188057188069%_))))))
            (declare (not safe))
            (_%g188055188130%_ _%args188041%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187802%_ _%ctx187803%_ _%stx187804%_ _%args187805%_)
        (let ((_%self187808%_ _%self187802%_))
          (let* ((_%arguments-ok?187818%_
                  (let ((__method190342
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self187808%_ 'check-arguments))))
                    (if __method190342
                        (__method190342
                         _%self187808%_
                         _%ctx187803%_
                         _%stx187804%_
                         _%args187805%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self187808%_
                                 'check-arguments)))))
                 (_%g187820187834%_
                  (lambda (_%g187821187831%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g187821187831%_))))
                 (_%g187819187913%_
                  (lambda (_%g187821187837%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g187821187837%_))
                        (let ((_%e187826187839%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g187821187837%_))))
                          (let ((_%hd187825187842%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e187826187839%_)))
                                (_%tl187824187844%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e187826187839%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl187824187844%_))
                                (let ((_%e187829187847%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl187824187844%_))))
                                  (let ((_%hd187828187850%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187829187847%_)))
                                        (_%tl187827187852%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187829187847%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl187827187852%_))
                                        ((lambda (_%L187855%_ _%L187856%_)
                                           (let* ((_%klass187872%_
                                                   (let ((__tmp190424
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self187808%_
                                                             '1
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#optimizer-resolve-class
                                                      _%stx187804%_
                                                      __tmp190424)))
                                                  (_%field187874%_
                                                   (let ((__tmp190425
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self187808%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass187872%_
                                                      __tmp190425)))
                                                  (_%object187876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx187803%_
                                                      _%L187856%_)))
                                                  (_%value187878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx187803%_
                                                      _%L187855%_)))
                                                  (_%klass187881%_
                                                   _%klass187872%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass187881%_
                                                    '8
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp190426
                                                        (cons (if (or _%arguments-ok?187818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp190427
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187808%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp190427)))
                          '%#struct-unchecked-set!
                          '%#struct-direct-set!)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187808%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field187874%_ '()))
                                  (cons _%object187876%_
                                        (cons _%value187878%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp190426
                                                    _%stx187804%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%klass187881%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp190428
                                                            (cons (if (or _%arguments-ok?187818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp190429
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self187808%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp190429)))
                              '%#struct-unchecked-set!
                              '%#struct-set!)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self187808%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field187874%_ '()))
                                      (cons _%object187876%_
                                            (cons _%value187878%_ '())))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190428 _%stx187804%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e187901%_
                                                            (let ((__tmp190430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self187808%_
                              '3
                              '#f
                              '#f))))
                      (declare (not safe))
                      (gxc#!class-slot-find-struct
                       _%klass187881%_
                       __tmp190430))))
               (if _%$e187901%_
                   ((lambda (_%klass187904%_)
                      (let ((__tmp190431
                             (cons (if (or _%arguments-ok?187818%_
                                           (let ((__tmp190432
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187808%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (not __tmp190432)))
                                       '%#struct-unchecked-set!
                                       '%#struct-set!)
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self187808%_
                                                        '1
                                                        '#f
                                                        '#f))
                                                     '()))
                                         (cons (cons '%#quote
                                                     (cons _%field187874%_
                                                           '()))
                                               (cons _%object187876%_
                                                     (cons _%value187878%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp190431 _%stx187804%_)))
                    _%$e187901%_)
                   (if (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%self187808%_ '4 '#f '#f))
                       (let ((__tmp190433
                              (let ((_%$obj187910%_
                                     (let ((__tmp190434
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp190434))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj187910%_
                                                              '())
                                                        (cons _%object187876%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass187881%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj187910%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-set!
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187808%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field187874%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187910%_
                                                                '()))
                                                    (cons _%value187878%_
                                                          '())))))
                            (cons (if _%arguments-ok?187818%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj187910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187808%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value187878%_ '())))))
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
                               _%self187808%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj187910%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187808%_
                                           '3
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%value187878%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190433 _%stx187804%_))
                       (let ((__tmp190435
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-set!
                                                      '()))
                                          (cons _%object187876%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187808%_
                             '3
                             '#f
                             '#f))
                          '()))
              (cons _%value187878%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp190435
                          _%stx187804%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd187828187850%_
                                         _%hd187825187842%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g187820187834%_
                                           _%g187821187837%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g187820187834%_ _%g187821187837%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g187820187834%_ _%g187821187837%_))))))
            (declare (not safe))
            (_%g187819187913%_ _%args187805%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self187617%_ _%ctx187618%_ _%stx187619%_ _%args187620%_)
        (let ((_%self187623%_ _%self187617%_))
          (let* ((_%self187632187642%_ _%self187623%_)
                 (_%E187634187646%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self187632187642%_
                             '((!lambda _ _ arity dispatch inline))))
                    '#!void))
                 (_%K187635187656%_
                  (lambda (_%inline187649%_ _%dispatch187650%_ _%arity187651%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#!lambda-arity-match?
                           _%self187623%_
                           _%args187620%_))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal lambda application; arity mismatch"
                           _%stx187619%_
                           _%arity187651%_)))
                    (if _%inline187649%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose '"inline lambda"))
                          (let ((__tmp190436
                                 (let ((__tmp190437
                                        (_%inline187649%_ _%stx187619%_)))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp190437
                                    _%stx187619%_))))
                            (declare (not safe))
                            (gxc#compile-e__1 _%ctx187618%_ __tmp190436)))
                        (if (and _%dispatch187650%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%dispatch187650%_)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose
                                 '"dispatch lambda => "
                                 _%dispatch187650%_))
                              (let ((__tmp190438
                                     (let ((__tmp190439
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _%dispatch187650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args187620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp190439
                                        _%stx187619%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx187618%_ __tmp190438)))
                            (let ()
                              (declare (not safe))
                              (gxc#!procedure::optimize-call
                               _%self187623%_
                               _%ctx187618%_
                               _%stx187619%_
                               _%args187620%_)))))))
            (if '#t
                (let* ((_%e187636187659%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187632187642%_
                           '1
                           '#f
                           '#f)))
                       (_%e187637187662%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187632187642%_
                           '2
                           '#f
                           '#f)))
                       (_%e187638187665%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187632187642%_
                           '3
                           '#f
                           '#f)))
                       (_%arity187668%_ _%e187638187665%_)
                       (_%e187639187670%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187632187642%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch187673%_ _%e187639187670%_)
                       (_%e187640187675%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187632187642%_
                           '5
                           '#f
                           '#f)))
                       (_%inline187678%_ _%e187640187675%_))
                  (declare (not safe))
                  (_%K187635187656%_
                   _%inline187678%_
                   _%dispatch187673%_
                   _%arity187668%_))
                (let () (declare (not safe)) (_%E187634187646%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self187469%_ _%ctx187470%_ _%stx187471%_ _%args187472%_)
        (let ()
          (let* ((_%self187475%_ _%self187469%_)
                 (_%$e187489%_
                  (let ((__tmp190441
                         (lambda (_%g187484187486%_)
                           (let ()
                             (declare (not safe))
                             (gxc#!lambda-arity-match?
                              _%g187484187486%_
                              _%args187472%_))))
                        (__tmp190440
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187475%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__find __tmp190441 __tmp190440))))
            (if _%$e187489%_
                ((lambda (_%clause187492%_)
                   (let ((__method190343
                          (let ()
                            (declare (not safe))
                            (__method-ref _%clause187492%_ 'optimize-call))))
                     (if __method190343
                         (__method190343
                          _%clause187492%_
                          _%ctx187470%_
                          _%stx187471%_
                          _%args187472%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause187492%_
                                  'optimize-call)))))
                 _%$e187489%_)
                (let ((__tmp190442
                       (map gxc#!lambda-arity
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self187475%_
                               '3
                               '#f
                               '#f)))))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Illegal case-lambda application; arity mismatch"
                   _%stx187471%_
                   __tmp190442)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self187209%_ _%ctx187210%_ _%stx187211%_ _%args187212%_)
        (let ((_%self187215%_ _%self187209%_))
          (let* ((_%self187224187233%_ _%self187215%_)
                 (_%E187226187237%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self187224187233%_
                             '((!kw-lambda _ _ table dispatch))))
                    '#!void))
                 (_%K187227187328%_
                  (lambda (_%dispatch187240%_ _%table187241%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%dispatch187240%_))
                        (let* ((_%g187242187252%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type
                                   _%dispatch187240%_)))
                               (_%else187244187260%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"unknown keyword dispatch lambda "
                                     _%dispatch187240%_))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#xform-call%
                                     _%ctx187210%_
                                     _%stx187211%_))))
                               (_%K187246187309%_
                                (lambda (_%main187263%_ _%keys187264%_)
                                  (let ((_g190443_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!kw-lambda-split-args
                                            _%stx187211%_
                                            _%args187212%_))))
                                    (begin
                                      (let ((_g190444_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g190443_)
                                                   (##vector-length _g190443_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g190444_ 2)))
                                            (error "Context expects 2 values"
                                                   _g190444_)))
                                      (let ((_%pargs187266%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g190443_ 0)))
                                            (_%kwargs187267%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g190443_ 1))))
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (gxc#verbose
                                             '"dispatch kw-lambda => "
                                             _%main187263%_))
                                          (if _%table187241%_
                                              (let ((_%xargs187275%_
                                                     (map (lambda (_%key187269%_)
                                                            (let ((_%$e187271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (agetq__0 _%key187269%_ _%kwargs187267%_))))
                      (if _%$e187271%_
                          _%$e187271%_
                          (let () '(%#ref absent-value)))))
                  _%keys187264%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 (lambda (_%kw187277%_)
                                                   (if (memq (car _%kw187277%_)
                                                             _%keys187264%_)
                                                       '#!void
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#raise-compile-error
                                                          '"Illegal keyword lambda application; unexpected keyword"
                                                          _%stx187211%_
                                                          _%keys187264%_
                                                          _%kw187277%_))))
                                                 _%kwargs187267%_)
                                                (let ((__tmp190445
                                                       (let ((__tmp190446
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _%main187263%_ '()))
                                  (cons (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (__foldr1
                                           cons
                                           _%pargs187266%_
                                           _%xargs187275%_)))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp190446 _%stx187211%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%ctx187210%_
                                                   __tmp190445)))
                                              (let* ((_%kwt187279%_
                                                      (let ((__tmp190447
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__kwt))))
                (declare (not safe))
                (make-symbol__0 __tmp190447)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwvars187283%_
                                                      (map (lambda (_%_187281%_)
                                                             (let ((__tmp190448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (##gensym '__kw))))
                       (declare (not safe))
                       (make-symbol__0 __tmp190448)))
                   _%kwargs187267%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwbind187288%_
                                                      (map (lambda (_%kw187285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar187286%_)
                     (cons (cons _%kwvar187286%_ '())
                           (cons (cdr _%kw187285%_) '())))
                   _%kwargs187267%_
                   _%kwvars187283%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwset187293%_
                                                      (map (lambda (_%kw187290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar187291%_)
                     (cons '%#call
                           (cons '(%#ref symbolic-table-set!)
                                 (cons (cons '%#ref (cons _%kwt187279%_ '()))
                                       (cons (cons '%#quote
                                                   (cons (car _%kw187290%_)
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%kwvar187291%_
                                                               '()))
                                                   '()))))))
                   _%kwargs187267%_
                   _%kwvars187283%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xkwargs187298%_
                                                      (map (lambda (_%kw187295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar187296%_)
                     (cons (car _%kw187295%_)
                           (cons '%#ref (cons _%kwvar187296%_ '()))))
                   _%kwargs187267%_
                   _%kwvars187283%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xargs187306%_
                                                      (map (lambda (_%key187300%_)
                                                             (let ((_%$e187302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (agetq__0 _%key187300%_ _%xkwargs187298%_))))
                       (if _%$e187302%_
                           _%$e187302%_
                           (let () '(%#ref absent-value)))))
                   _%keys187264%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190449
                                                      (let ((__tmp190450
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%kwbind187288%_
                                 (cons (cons '%#let-values
                                             (cons (cons (cons (cons _%kwt187279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (let ((__tmp190451
                                    (cons '%#call
                                          (cons '(%#ref make-symbolic-table)
                                                (cons (cons '%#quote
                                                            (cons (length _%kwargs187267%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons '(%#quote (length kwvars)) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp190451
                                _%stx187211%_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#begin
                                                               (let ((__tmp190452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ((__tmp190453
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons _%main187263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _%kwt187279%_ '()))
                     (let ()
                       (declare (not safe))
                       (__foldr1 cons _%pargs187266%_ _%xargs187306%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp190453
                                       _%stx187211%_))
                                    '())))
                         (declare (not safe))
                         (__foldr1 cons __tmp190452 _%kwset187293%_)))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190450 _%stx187211%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx187210%_
                                                 __tmp190449))))))))))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%g187242187252%_
                                 'gxc#!kw-lambda-primary::t))
                              (let* ((_%e187247187312%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g187242187252%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e187248187315%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g187242187252%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e187249187318%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g187242187252%_
                                         '3
                                         '#f
                                         '#f)))
                                     (_%keys187321%_ _%e187249187318%_)
                                     (_%e187250187323%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g187242187252%_
                                         '4
                                         '#f
                                         '#f)))
                                     (_%main187326%_ _%e187250187323%_))
                                (declare (not safe))
                                (_%K187246187309%_
                                 _%main187326%_
                                 _%keys187321%_))
                              (let ()
                                (declare (not safe))
                                (_%else187244187260%_))))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx187210%_ _%stx187211%_))))))
            (if '#t
                (let* ((_%e187228187331%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187224187233%_
                           '1
                           '#f
                           '#f)))
                       (_%e187229187334%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187224187233%_
                           '2
                           '#f
                           '#f)))
                       (_%e187230187337%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187224187233%_
                           '3
                           '#f
                           '#f)))
                       (_%table187340%_ _%e187230187337%_)
                       (_%e187231187342%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187224187233%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch187345%_ _%e187231187342%_))
                  (declare (not safe))
                  (_%K187227187328%_ _%dispatch187345%_ _%table187340%_))
                (let () (declare (not safe)) (_%E187226187237%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx186822%_ _%args186823%_)
        (let _%lp186825%_ ((_%rest186827%_ _%args186823%_)
                           (_%pargs186828%_ '())
                           (_%kwargs186829%_ '()))
          (let* ((_%__stx190160190161%_ _%rest186827%_)
                 (_%g186835186887%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx190160190161%_)))))
            (let ((_%__kont190162190163%_
                   (lambda (_%L187066%_ _%L187067%_)
                     (let ((__tmp190454 (cons _%L187067%_ _%pargs186828%_)))
                       (declare (not safe))
                       (_%lp186825%_
                        _%L187066%_
                        __tmp190454
                        _%kwargs186829%_))))
                  (_%__kont190164190165%_
                   (lambda (_%L187012%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L187012%_ _%pargs186828%_))
                             (reverse _%kwargs186829%_))))
                  (_%__kont190166190167%_
                   (lambda (_%L186959%_ _%L186960%_ _%L186961%_)
                     (let ((_%kw186978%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186961%_))))
                       (if (assq _%kw186978%_ _%kwargs186829%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx186822%_
                              _%kw186978%_))
                           (let ((__tmp190455
                                  (cons (cons _%kw186978%_ _%L186960%_)
                                        _%kwargs186829%_)))
                             (declare (not safe))
                             (_%lp186825%_
                              _%L186959%_
                              _%pargs186828%_
                              __tmp190455))))))
                  (_%__kont190168190169%_
                   (lambda (_%L186907%_ _%L186908%_)
                     (let ((__tmp190456 (cons _%L186908%_ _%pargs186828%_)))
                       (declare (not safe))
                       (_%lp186825%_
                        _%L186907%_
                        __tmp190456
                        _%kwargs186829%_))))
                  (_%__kont190170190171%_
                   (lambda ()
                     (values (reverse _%pargs186828%_)
                             (reverse _%kwargs186829%_)))))
              (let ((_%__match190267190268%_
                     (lambda (_%e186868186927%_
                              _%hd186867186930%_
                              _%tl186866186932%_
                              _%e186871186935%_
                              _%hd186870186938%_
                              _%tl186869186940%_
                              _%e186874186943%_
                              _%hd186873186946%_
                              _%tl186872186948%_
                              _%e186877186951%_
                              _%hd186876186954%_
                              _%tl186875186956%_)
                       (let ((_%L186959%_ _%tl186875186956%_)
                             (_%L186960%_ _%hd186876186954%_)
                             (_%L186961%_ _%hd186873186946%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186961%_))
                             (_%__kont190166190167%_
                              _%L186959%_
                              _%L186960%_
                              _%L186961%_)
                             (_%__kont190168190169%_
                              _%tl186866186932%_
                              _%hd186867186930%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx190160190161%_))
                    (let ((_%e186841187031%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx190160190161%_))))
                      (let ((_%tl186839187036%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186841187031%_)))
                            (_%hd186840187034%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186841187031%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd186840187034%_))
                            (let ((_%e186844187039%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd186840187034%_))))
                              (let ((_%tl186842187044%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186844187039%_)))
                                    (_%hd186843187042%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186844187039%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd186843187042%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd186843187042%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl186842187044%_))
                                            (let ((_%e186847187047%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl186842187044%_))))
                                              (let ((_%tl186845187052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186847187047%_)))
                                                    (_%hd186846187050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186847187047%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd186846187050%_))
                                                    (let ((_%e186848187055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd186846187050%_))))
                                                      (if (equal? _%e186848187055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186845187052%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186839187036%_))
                          (let ((_%e186851187058%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186839187036%_))))
                            (let ((_%tl186849187063%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186851187058%_)))
                                  (_%hd186850187061%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186851187058%_))))
                              (_%__kont190162190163%_
                               _%tl186849187063%_
                               _%hd186850187061%_)))
                          (_%__kont190168190169%_
                           _%tl186839187036%_
                           _%hd186840187034%_))
                      (_%__kont190168190169%_
                       _%tl186839187036%_
                       _%hd186840187034%_))
                  (if (equal? _%e186848187055%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186845187052%_))
                          (_%__kont190164190165%_ _%tl186839187036%_)
                          (_%__kont190168190169%_
                           _%tl186839187036%_
                           _%hd186840187034%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186845187052%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186839187036%_))
                              (let ((_%e186877186951%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186839187036%_))))
                                (let ((_%tl186875186956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186877186951%_)))
                                      (_%hd186876186954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186877186951%_))))
                                  (_%__match190267190268%_
                                   _%e186841187031%_
                                   _%hd186840187034%_
                                   _%tl186839187036%_
                                   _%e186844187039%_
                                   _%hd186843187042%_
                                   _%tl186842187044%_
                                   _%e186847187047%_
                                   _%hd186846187050%_
                                   _%tl186845187052%_
                                   _%e186877186951%_
                                   _%hd186876186954%_
                                   _%tl186875186956%_)))
                              (_%__kont190168190169%_
                               _%tl186839187036%_
                               _%hd186840187034%_))
                          (_%__kont190168190169%_
                           _%tl186839187036%_
                           _%hd186840187034%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186845187052%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl186839187036%_))
                                                            (let ((_%e186877186951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl186839187036%_))))
                      (let ((_%tl186875186956%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186877186951%_)))
                            (_%hd186876186954%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186877186951%_))))
                        (_%__match190267190268%_
                         _%e186841187031%_
                         _%hd186840187034%_
                         _%tl186839187036%_
                         _%e186844187039%_
                         _%hd186843187042%_
                         _%tl186842187044%_
                         _%e186847187047%_
                         _%hd186846187050%_
                         _%tl186845187052%_
                         _%e186877186951%_
                         _%hd186876186954%_
                         _%tl186875186956%_)))
                    (_%__kont190168190169%_
                     _%tl186839187036%_
                     _%hd186840187034%_))
                (_%__kont190168190169%_
                 _%tl186839187036%_
                 _%hd186840187034%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont190168190169%_
                                             _%tl186839187036%_
                                             _%hd186840187034%_))
                                        (_%__kont190168190169%_
                                         _%tl186839187036%_
                                         _%hd186840187034%_))
                                    (_%__kont190168190169%_
                                     _%tl186839187036%_
                                     _%hd186840187034%_))))
                            (_%__kont190168190169%_
                             _%tl186839187036%_
                             _%hd186840187034%_))))
                    (_%__kont190170190171%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self186806%_ _%ctx186807%_ _%stx186808%_ _%args186809%_)
        (let ((_%self186812%_ _%self186806%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx186807%_ _%stx186808%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self186494%_ _%stx186495%_)
        (let* ((_%__stx190276190277%_ _%stx186495%_)
               (_%g186498186538%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190276190277%_)))))
          (let ((_%__kont190278190279%_
                 (lambda (_%L186644%_ _%L186645%_)
                   (let ((_%$e186672%_
                          (member 'return:
                                  (let ((__tmp190457
                                         (lambda (_%g186664186667%_
                                                  _%g186665186669%_)
                                           (cons _%g186664186667%_
                                                 _%g186665186669%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp190457 '() _%L186645%_))
                                  gx#stx-eq?)))
                     (if _%$e186672%_
                         ((lambda (_%tail186675%_)
                            (let ((_%type186677%_
                                   (let ((__tmp190458
                                          (let ((__tmp190459
                                                 (cadr _%tail186675%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp190459))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx186495%_
                                      __tmp190458))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx186495%_
                                 _%L186644%_
                                 _%type186677%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self186494%_
                                 _%L186644%_))))
                          _%$e186672%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self186494%_ _%L186644%_))))))
                (_%__kont190282190283%_
                 (lambda (_%L186567%_ _%L186568%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self186494%_ _%L186567%_)))))
            (let ((_%__match190313190314%_
                   (lambda (_%e186504186588%_
                            _%hd186503186591%_
                            _%tl186502186593%_
                            _%e186507186596%_
                            _%hd186506186599%_
                            _%tl186505186601%_
                            _%e186510186604%_
                            _%hd186509186607%_
                            _%tl186508186609%_
                            _%__splice190280190281%_
                            _%target186511186612%_
                            _%tl186513186614%_)
                     (letrec ((_%loop186514186617%_
                               (lambda (_%hd186512186620%_
                                        _%signature186518186622%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd186512186620%_))
                                     (let ((_%e186515186625%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd186512186620%_))))
                                       (let ((_%lp-tl186517186630%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186515186625%_)))
                                             (_%lp-hd186516186628%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186515186625%_))))
                                         (let ((__tmp190460
                                                (cons _%lp-hd186516186628%_
                                                      _%signature186518186622%_)))
                                           (declare (not safe))
                                           (_%loop186514186617%_
                                            _%lp-tl186517186630%_
                                            __tmp190460))))
                                     (let ((_%signature186519186633%_
                                            (reverse _%signature186518186622%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl186505186601%_))
                                           (let ((_%e186522186636%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl186505186601%_))))
                                             (let ((_%tl186520186641%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186522186636%_)))
                                                   (_%hd186521186639%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186522186636%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186520186641%_))
                                                   (_%__kont190278190279%_
                                                    _%hd186521186639%_
                                                    _%signature186519186633%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g186498186538%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g186498186538%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop186514186617%_ _%target186511186612%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190276190277%_))
                  (let ((_%e186504186588%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190276190277%_))))
                    (let ((_%tl186502186593%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e186504186588%_)))
                          (_%hd186503186591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e186504186588%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186502186593%_))
                          (let ((_%e186507186596%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186502186593%_))))
                            (let ((_%tl186505186601%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186507186596%_)))
                                  (_%hd186506186599%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186507186596%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd186506186599%_))
                                  (let ((_%e186510186604%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd186506186599%_))))
                                    (let ((_%tl186508186609%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e186510186604%_)))
                                          (_%hd186509186607%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e186510186604%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd186509186607%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd186509186607%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl186508186609%_))
                                                  (let ((_%__splice190280190281%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl186508186609%_
                                                            '0))))
                                                    (let ((_%tl186513186614%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190280190281%_
                                                              '1)))
                                                          (_%target186511186612%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190280190281%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186513186614%_))
                                                          (_%__match190313190314%_
                                                           _%e186504186588%_
                                                           _%hd186503186591%_
                                                           _%tl186502186593%_
                                                           _%e186507186596%_
                                                           _%hd186506186599%_
                                                           _%tl186505186601%_
                                                           _%e186510186604%_
                                                           _%hd186509186607%_
                                                           _%tl186508186609%_
                                                           _%__splice190280190281%_
                                                           _%target186511186612%_
                                                           _%tl186513186614%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl186505186601%_))
                      (let ((_%e186533186559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl186505186601%_))))
                        (let ((_%tl186531186564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186533186559%_)))
                              (_%hd186532186562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186533186559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl186531186564%_))
                              (_%__kont190282190283%_
                               _%hd186532186562%_
                               _%hd186506186599%_)
                              (let ()
                                (declare (not safe))
                                (_%g186498186538%_)))))
                      (let () (declare (not safe)) (_%g186498186538%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl186505186601%_))
                                                      (let ((_%e186533186559%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl186505186601%_))))
                (let ((_%tl186531186564%_
                       (let () (declare (not safe)) (##cdr _%e186533186559%_)))
                      (_%hd186532186562%_
                       (let ()
                         (declare (not safe))
                         (##car _%e186533186559%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186531186564%_))
                      (_%__kont190282190283%_
                       _%hd186532186562%_
                       _%hd186506186599%_)
                      (let () (declare (not safe)) (_%g186498186538%_)))))
              (let () (declare (not safe)) (_%g186498186538%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl186505186601%_))
                                                  (let ((_%e186533186559%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl186505186601%_))))
                                                    (let ((_%tl186531186564%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e186533186559%_)))
                                                          (_%hd186532186562%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e186533186559%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186531186564%_))
                                                          (_%__kont190282190283%_
                                                           _%hd186532186562%_
                                                           _%hd186506186599%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g186498186538%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g186498186538%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186505186601%_))
                                              (let ((_%e186533186559%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl186505186601%_))))
                                                (let ((_%tl186531186564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186533186559%_)))
                                                      (_%hd186532186562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186533186559%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl186531186564%_))
                                                      (_%__kont190282190283%_
                                                       _%hd186532186562%_
                                                       _%hd186506186599%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g186498186538%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g186498186538%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl186505186601%_))
                                      (let ((_%e186533186559%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl186505186601%_))))
                                        (let ((_%tl186531186564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186533186559%_)))
                                              (_%hd186532186562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186533186559%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl186531186564%_))
                                              (_%__kont190282190283%_
                                               _%hd186532186562%_
                                               _%hd186506186599%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g186498186538%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g186498186538%_))))))
                          (let () (declare (not safe)) (_%g186498186538%_)))))
                  (let () (declare (not safe)) (_%g186498186538%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx186472%_ _%expr186473%_ _%type186474%_)
        (let ((_%$e186476%_
               (let () (declare (not safe)) (not _%type186474%_))))
          (if _%$e186476%_
              _%$e186476%_
              (let ((_%$e186479%_
                     (eq? (##structure-ref _%type186474%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e186479%_
                    _%$e186479%_
                    (let ((_%expr-type186483%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr186473%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type186483%_))
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx186472%_
                             _%type186474%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type186483%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx186472%_
                                 _%type186474%_
                                 _%expr-type186483%_))
                              (let ((_%$e186487%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type186483%_
                                        'gxc#!abort::t))))
                                (if _%$e186487%_
                                    _%$e186487%_
                                    (let ((_%$e186490%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type186483%_
                                              _%type186474%_))))
                                      (if _%$e186490%_
                                          _%$e186490%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx186472%_
                                             _%type186474%_
                                             _%expr-type186483%_)))))))))))))))))
