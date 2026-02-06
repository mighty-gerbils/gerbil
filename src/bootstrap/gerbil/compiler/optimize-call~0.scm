(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770342556)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp243960 (list gxc#::basic-xform::t))
            (__tmp243959 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp243960
         '()
         __tmp243959
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args243237%_
        (apply make-instance gxc#::optimize-call::t _%$args243237%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp243961
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
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#if
                  gxc#optimize-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp243961)))
    (define gxc#apply-optimize-call
      (lambda (_%stx243229%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self243232%_
                (let ((__obj243951
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj243951))
               (__tmp243962
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self243232%_ _%stx243229%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp243962
           gxc#current-compile-method
           _%self243232%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp243964 (list gxc#::void::t))
            (__tmp243963 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp243964
         '()
         __tmp243963
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args243226%_
        (apply make-instance gxc#::check-return-type::t _%$args243226%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp243965
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
                  gxc#apply-path-type-if%))
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
        (__make-atomic-promise __tmp243965)))
    (define gxc#apply-check-return-type
      (lambda (_%stx243218%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self243221%_
                (let ((__obj243953
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj243953))
               (__tmp243966
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self243221%_ _%stx243218%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp243966
           gxc#current-compile-method
           _%self243221%_))))
    (define gxc#optimize-call%
      (lambda (_%self242825%_ _%stx242826%_)
        (let* ((_%__stx243306243307%_ _%stx242826%_)
               (_%g242829242875%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx243306243307%_)))))
          (let ((_%__kont243308243309%_
                 (lambda (_%g242831243014%_ _%g242832243015%_)
                   (let* ((_%rator-id243035%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g242832243015%_)))
                          (_%rator-type243037%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id243035%_))))
                     (if (or (not _%rator-type243037%_)
                             (eq? (##structure-ref
                                   _%rator-type243037%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self242825%_ _%stx242826%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type243037%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp243967
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type243037%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id243035%_
                                  '" => "
                                  _%rator-type243037%_
                                  '" "
                                  __tmp243967))
                               (let* ((_%optimized243052%_
                                       (let ((__method243954
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type243037%_
                                                 'optimize-call))))
                                         (if __method243954
                                             (let ((__tmp243968
                                                    (let ((__tmp243969
                                                           (lambda (_%g243044243047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g243045243049%_)
                     (cons _%g243044243047%_ _%g243045243049%_))))
              (declare (not safe))
              (__foldr1 __tmp243969 '() _%g242831243014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method243954
                                                _%rator-type243037%_
                                                _%self242825%_
                                                _%stx242826%_
                                                __tmp243968))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type243037%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx243254243255%_
                                       _%optimized243052%_)
                                      (_%g243055243084%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx243254243255%_)))))
                                 (let ((_%__kont243256243257%_
                                        (lambda (_%g243057243150%_
                                                 _%g243058243151%_)
                                          (let* ((_%optimized-rator-id243178%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g243058243151%_)))
                                                 (_%rator-type243183%_
                                                  (let ((_%$e243180%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id243178%_))))
                                                    (if _%$e243180%_
                                                        _%$e243180%_
                                                        _%rator-type243037%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type243183%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id243178%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type243183%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type243183%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized243052%_
                                                (let ((__tmp243970
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g243058243151%_ '()))
                           (let ((__tmp243971
                                  (lambda (_%g243191243194%_ _%g243192243196%_)
                                    (cons _%g243191243194%_
                                          _%g243192243196%_))))
                             (declare (not safe))
                             (__foldr1 __tmp243971 '() _%g243057243150%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243970
                                                   _%stx242826%_))))))
                                       (_%__kont243260243261%_
                                        (lambda () _%optimized243052%_)))
                                   (let ((_%__match243303243304%_
                                          (lambda (_%e243059243096%_
                                                   _%hd243060243099%_
                                                   _%tl243061243101%_
                                                   _%e243062243104%_
                                                   _%hd243063243107%_
                                                   _%tl243064243109%_
                                                   _%e243065243112%_
                                                   _%hd243066243115%_
                                                   _%tl243067243117%_
                                                   _%e243068243120%_
                                                   _%hd243069243123%_
                                                   _%tl243070243125%_
                                                   _%__splice243258243259%_
                                                   _%target243071243128%_
                                                   _%tl243073243130%_)
                                            (letrec ((_%loop243074243133%_
                                                      (lambda (_%hd243072243136%_
                                                               _%arg243078243138%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd243072243136%_))
                                                            (let ((_%e243075243140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd243072243136%_))))
                      (let ((_%lp-tl243077243145%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e243075243140%_)))
                            (_%lp-hd243076243143%_
                             (let ()
                               (declare (not safe))
                               (##car _%e243075243140%_))))
                        (_%loop243074243133%_
                         _%lp-tl243077243145%_
                         (cons _%lp-hd243076243143%_ _%arg243078243138%_))))
                    (let ((_%arg243079243148%_ (reverse _%arg243078243138%_)))
                      (_%__kont243256243257%_
                       _%arg243079243148%_
                       _%hd243069243123%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop243074243133%_
                                               _%target243071243128%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx243254243255%_))
                                         (let ((_%e243059243096%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx243254243255%_))))
                                           (let ((_%tl243061243101%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e243059243096%_)))
                                                 (_%hd243060243099%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e243059243096%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd243060243099%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd243060243099%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl243061243101%_))
                                                         (let ((_%e243062243104%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl243061243101%_))))
                   (let ((_%tl243064243109%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e243062243104%_)))
                         (_%hd243063243107%_
                          (let ()
                            (declare (not safe))
                            (##car _%e243062243104%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd243063243107%_))
                         (let ((_%e243065243112%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd243063243107%_))))
                           (let ((_%tl243067243117%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e243065243112%_)))
                                 (_%hd243066243115%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e243065243112%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd243066243115%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd243066243115%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl243067243117%_))
                                         (let ((_%e243068243120%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl243067243117%_))))
                                           (let ((_%tl243070243125%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e243068243120%_)))
                                                 (_%hd243069243123%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e243068243120%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl243070243125%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl243064243109%_))
                                                     (let ((_%__splice243258243259%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl243064243109%_
                                                               '0))))
                                                       (let ((_%tl243073243130%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice243258243259%_ '1)))
                     (_%target243071243128%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice243258243259%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl243073243130%_))
                     (_%__match243303243304%_
                      _%e243059243096%_
                      _%hd243060243099%_
                      _%tl243061243101%_
                      _%e243062243104%_
                      _%hd243063243107%_
                      _%tl243064243109%_
                      _%e243065243112%_
                      _%hd243066243115%_
                      _%tl243067243117%_
                      _%e243068243120%_
                      _%hd243069243123%_
                      _%tl243070243125%_
                      _%__splice243258243259%_
                      _%target243071243128%_
                      _%tl243073243130%_)
                     (_%__kont243260243261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont243260243261%_))
                                                 (_%__kont243260243261%_))))
                                         (_%__kont243260243261%_))
                                     (_%__kont243260243261%_))
                                 (_%__kont243260243261%_))))
                         (_%__kont243260243261%_))))
                 (_%__kont243260243261%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont243260243261%_))
                                                 (_%__kont243260243261%_))))
                                         (_%__kont243260243261%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type243037%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type243037%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp243972
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g242832243015%_
                                                                '()))
                                                    (map (lambda (_%g243202243204%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self242825%_
                                                              _%g243202243204%_)))
                                                         (let ((__tmp243973
                                                                (lambda (_%g243206243209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g243207243211%_)
                          (cons _%g243206243209%_ _%g243207243211%_))))
                   (declare (not safe))
                   (__foldr1 __tmp243973 '() _%g242831243014%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp243972
                                    _%stx242826%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx242826%_
                                    _%rator-type243037%_))))))))
                (_%__kont243312243313%_
                 (lambda (_%g242854242918%_ _%g242855242919%_)
                   (let ((_%rator-type242936%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g242855242919%_))))
                     (if (and _%rator-type242936%_
                              (eq? (##structure-ref
                                    _%rator-type242936%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type242936%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type242936%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type242936%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp243974
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self242825%_
                                               _%g242855242919%_))
                                            (map (lambda (_%g242938242940%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self242825%_
                                                      _%g242938242940%_)))
                                                 (let ((__tmp243975
                                                        (lambda (_%g242942242945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g242943242947%_)
                  (cons _%g242942242945%_ _%g242943242947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp243975
                                                    '()
                                                    _%g242854242918%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp243974 _%stx242826%_))
                         (if (or (not _%rator-type242936%_)
                                 (let ((__tmp243976
                                        (##structure-ref
                                         _%rator-type242936%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp243976 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self242825%_ _%stx242826%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx242826%_
                                _%rator-type242936%_))))))))
            (let* ((_%__match243373243374%_
                    (lambda (_%e242856242880%_
                             _%hd242857242883%_
                             _%tl242858242885%_
                             _%e242859242888%_
                             _%hd242860242891%_
                             _%tl242861242893%_
                             _%__splice243314243315%_
                             _%target242862242896%_
                             _%tl242864242898%_)
                      (letrec ((_%loop242865242901%_
                                (lambda (_%hd242863242904%_
                                         _%rand242869242906%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd242863242904%_))
                                      (let ((_%e242866242908%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd242863242904%_))))
                                        (let ((_%lp-tl242868242913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e242866242908%_)))
                                              (_%lp-hd242867242911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e242866242908%_))))
                                          (_%loop242865242901%_
                                           _%lp-tl242868242913%_
                                           (cons _%lp-hd242867242911%_
                                                 _%rand242869242906%_))))
                                      (let ((_%rand242870242916%_
                                             (reverse _%rand242869242906%_)))
                                        (_%__kont243312243313%_
                                         _%rand242870242916%_
                                         _%hd242860242891%_))))))
                        (_%loop242865242901%_ _%target242862242896%_ '()))))
                   (_%__match243353243354%_
                    (lambda (_%e242833242960%_
                             _%hd242834242963%_
                             _%tl242835242965%_
                             _%e242836242968%_
                             _%hd242837242971%_
                             _%tl242838242973%_
                             _%e242839242976%_
                             _%hd242840242979%_
                             _%tl242841242981%_
                             _%e242842242984%_
                             _%hd242843242987%_
                             _%tl242844242989%_
                             _%__splice243310243311%_
                             _%target242845242992%_
                             _%tl242847242994%_)
                      (letrec ((_%loop242848242997%_
                                (lambda (_%hd242846243000%_
                                         _%rand242852243002%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd242846243000%_))
                                      (let ((_%e242849243004%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd242846243000%_))))
                                        (let ((_%lp-tl242851243009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e242849243004%_)))
                                              (_%lp-hd242850243007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e242849243004%_))))
                                          (_%loop242848242997%_
                                           _%lp-tl242851243009%_
                                           (cons _%lp-hd242850243007%_
                                                 _%rand242852243002%_))))
                                      (let ((_%rand242853243012%_
                                             (reverse _%rand242852243002%_)))
                                        (_%__kont243308243309%_
                                         _%rand242853243012%_
                                         _%hd242843242987%_))))))
                        (_%loop242848242997%_ _%target242845242992%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx243306243307%_))
                  (let ((_%e242833242960%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx243306243307%_))))
                    (let ((_%tl242835242965%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e242833242960%_)))
                          (_%hd242834242963%_
                           (let ()
                             (declare (not safe))
                             (##car _%e242833242960%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl242835242965%_))
                          (let ((_%e242836242968%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl242835242965%_))))
                            (let ((_%tl242838242973%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e242836242968%_)))
                                  (_%hd242837242971%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e242836242968%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd242837242971%_))
                                  (let ((_%e242839242976%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd242837242971%_))))
                                    (let ((_%tl242841242981%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e242839242976%_)))
                                          (_%hd242840242979%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e242839242976%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd242840242979%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd242840242979%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl242841242981%_))
                                                  (let ((_%e242842242984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl242841242981%_))))
                                                    (let ((_%tl242844242989%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e242842242984%_)))
                                                          (_%hd242843242987%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e242842242984%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl242844242989%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl242838242973%_))
                      (let ((_%__splice243310243311%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl242838242973%_
                                '0))))
                        (let ((_%tl242847242994%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice243310243311%_ '1)))
                              (_%target242845242992%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice243310243311%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl242847242994%_))
                              (_%__match243353243354%_
                               _%e242833242960%_
                               _%hd242834242963%_
                               _%tl242835242965%_
                               _%e242836242968%_
                               _%hd242837242971%_
                               _%tl242838242973%_
                               _%e242839242976%_
                               _%hd242840242979%_
                               _%tl242841242981%_
                               _%e242842242984%_
                               _%hd242843242987%_
                               _%tl242844242989%_
                               _%__splice243310243311%_
                               _%target242845242992%_
                               _%tl242847242994%_)
                              (let ()
                                (declare (not safe))
                                (_%g242829242875%_)))))
                      (let () (declare (not safe)) (_%g242829242875%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl242838242973%_))
                      (let ((_%__splice243314243315%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl242838242973%_
                                '0))))
                        (let ((_%tl242864242898%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice243314243315%_ '1)))
                              (_%target242862242896%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice243314243315%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl242864242898%_))
                              (_%__match243373243374%_
                               _%e242833242960%_
                               _%hd242834242963%_
                               _%tl242835242965%_
                               _%e242836242968%_
                               _%hd242837242971%_
                               _%tl242838242973%_
                               _%__splice243314243315%_
                               _%target242862242896%_
                               _%tl242864242898%_)
                              (let ()
                                (declare (not safe))
                                (_%g242829242875%_)))))
                      (let () (declare (not safe)) (_%g242829242875%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl242838242973%_))
                                                      (let ((_%__splice243314243315%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl242838242973%_
                        '0))))
                (let ((_%tl242864242898%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice243314243315%_ '1)))
                      (_%target242862242896%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice243314243315%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl242864242898%_))
                      (_%__match243373243374%_
                       _%e242833242960%_
                       _%hd242834242963%_
                       _%tl242835242965%_
                       _%e242836242968%_
                       _%hd242837242971%_
                       _%tl242838242973%_
                       _%__splice243314243315%_
                       _%target242862242896%_
                       _%tl242864242898%_)
                      (let () (declare (not safe)) (_%g242829242875%_)))))
              (let () (declare (not safe)) (_%g242829242875%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl242838242973%_))
                                                  (let ((_%__splice243314243315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl242838242973%_
                                                            '0))))
                                                    (let ((_%tl242864242898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice243314243315%_
                                                              '1)))
                                                          (_%target242862242896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice243314243315%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl242864242898%_))
                                                          (_%__match243373243374%_
                                                           _%e242833242960%_
                                                           _%hd242834242963%_
                                                           _%tl242835242965%_
                                                           _%e242836242968%_
                                                           _%hd242837242971%_
                                                           _%tl242838242973%_
                                                           _%__splice243314243315%_
                                                           _%target242862242896%_
                                                           _%tl242864242898%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g242829242875%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g242829242875%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl242838242973%_))
                                              (let ((_%__splice243314243315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl242838242973%_
                                                        '0))))
                                                (let ((_%tl242864242898%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice243314243315%_
                                                          '1)))
                                                      (_%target242862242896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice243314243315%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl242864242898%_))
                                                      (_%__match243373243374%_
                                                       _%e242833242960%_
                                                       _%hd242834242963%_
                                                       _%tl242835242965%_
                                                       _%e242836242968%_
                                                       _%hd242837242971%_
                                                       _%tl242838242973%_
                                                       _%__splice243314243315%_
                                                       _%target242862242896%_
                                                       _%tl242864242898%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g242829242875%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g242829242875%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl242838242973%_))
                                      (let ((_%__splice243314243315%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl242838242973%_
                                                '0))))
                                        (let ((_%tl242864242898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice243314243315%_
                                                  '1)))
                                              (_%target242862242896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice243314243315%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl242864242898%_))
                                              (_%__match243373243374%_
                                               _%e242833242960%_
                                               _%hd242834242963%_
                                               _%tl242835242965%_
                                               _%e242836242968%_
                                               _%hd242837242971%_
                                               _%tl242838242973%_
                                               _%__splice243314243315%_
                                               _%target242862242896%_
                                               _%tl242864242898%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g242829242875%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g242829242875%_))))))
                          (let () (declare (not safe)) (_%g242829242875%_)))))
                  (let () (declare (not safe)) (_%g242829242875%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self242787%_ _%ctx242788%_ _%stx242789%_ _%args242790%_)
        (let ((_%self242793%_ _%self242787%_))
          (if (let ((__method243955
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self242793%_ 'check-arguments))))
                (if __method243955
                    (let ()
                      (declare (not safe))
                      (__method243955
                       _%self242793%_
                       _%ctx242788%_
                       _%stx242789%_
                       _%args242790%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self242793%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature242803%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self242793%_ '2 '#f '#f)))
                     (_%signature242805%_ _%signature242803%_)
                     (_%$e242815%_
                      (if _%signature242805%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature242805%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e242815%_
                    ((lambda (_%unchecked242818%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked242818%_))
                           (let ((__tmp243977
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked242818%_
                                                          '()))
                                              (map (lambda (_%g242819242821%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx242788%_
                                                        _%g242819242821%_)))
                                                   _%args242790%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp243977
                              _%stx242789%_
                              _%ctx242788%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx242788%_ _%stx242789%_))))
                     _%$e242815%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx242788%_ _%stx242789%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx242788%_ _%stx242789%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass243239 __method-table243240)
        (let ((__check-arguments243241
               (let ((__tmp243978
                      (lambda ()
                        (let ((__method243242
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table243240
                                  'check-arguments
                                  '#f))))
                          (if __method243242
                              __method243242
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp243978))))
          (lambda (_%self242787%_ _%ctx242788%_ _%stx242789%_ _%args242790%_)
            (let ((_%self242793%_ _%self242787%_))
              (if ((force __check-arguments243241)
                   _%self242793%_
                   _%ctx242788%_
                   _%stx242789%_
                   _%args242790%_)
                  (let* ((_%signature242803%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self242793%_
                             '2
                             '#f
                             '#f)))
                         (_%signature242805%_ _%signature242803%_)
                         (_%$e242815%_
                          (if _%signature242805%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature242805%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e242815%_
                        ((lambda (_%unchecked242818%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked242818%_))
                               (let ((__tmp243979
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked242818%_
                                                              '()))
                                                  (map (lambda (_%g242819242821%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx242788%_
                                                            _%g242819242821%_)))
                                                       _%args242790%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp243979
                                  _%stx242789%_
                                  _%ctx242788%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx242788%_
                                  _%stx242789%_))))
                         _%$e242815%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx242788%_ _%stx242789%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx242788%_ _%stx242789%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!procedure::optimize-call
       gxc#!procedure::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self242540%_ _%ctx242541%_ _%stx242542%_ _%args242543%_)
        (let* ((_%self242546%_ _%self242540%_)
               (_%signature242555242557%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self242546%_ '2 '#f '#f))))
          (if _%signature242555242557%_
              (let* ((_%signature242559%_ _%signature242555242557%_)
                     (_%argument-types242560242562%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature242559%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types242560242562%_
                    (let* ((_%argument-types242564%_
                            _%argument-types242560242562%_)
                           (_%argument-types242569%_
                            (let ((__tmp243980
                                   (lambda (_%t242567%_)
                                     (if _%t242567%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx242542%_
                                            _%t242567%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp243980
                               _%argument-types242564%_))))
                      (let _%loop242571%_ ((_%rest-args242573%_ _%args242543%_)
                                           (_%rest-types242574%_
                                            _%argument-types242569%_)
                                           (_%result242575%_ '#t))
                        (let* ((_%rest-args242576242584%_ _%rest-args242573%_)
                               (_%else242578242592%_
                                (lambda () _%result242575%_))
                               (_%K242580242653%_
                                (lambda (_%rest-args242595%_ _%arg242596%_)
                                  (let* ((_%rest-types242597242608%_
                                          _%rest-types242574%_)
                                         (_%E242601242612%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types242597242608%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K242604242641%_
                                           (lambda (_%rest-types242638%_
                                                    _%type242639%_)
                                             (_%loop242571%_
                                              _%rest-args242595%_
                                              _%rest-types242638%_
                                              (if (gxc#check-expression-type!
                                                   _%stx242542%_
                                                   _%arg242596%_
                                                   _%type242639%_)
                                                  _%result242575%_
                                                  '#f))))
                                          (_%K242603242632%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx242542%_
                                                _%argument-types242569%_))))
                                          (_%K242602242622%_
                                           (lambda (_%tail-type242616%_)
                                             (if (let ((__tmp243981
                                                        (lambda (_%g242617242619%_)
                                                          (gxc#check-expression-type!
                                                           _%stx242542%_
                                                           _%g242617242619%_
                                                           _%tail-type242616%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp243981
                                                    _%rest-args242595%_))
                                                 _%result242575%_
                                                 '#f))))
                                      (let ((_%try-match242599242635%_
                                             (lambda ()
                                               (if (null? _%rest-types242597242608%_)
                                                   (_%K242603242632%_)
                                                   (let ((_%tail-type242625%_
                                                          _%rest-types242597242608%_))
                                                     (_%K242602242622%_
                                                      _%tail-type242625%_))))))
                                        (if (pair? _%rest-types242597242608%_)
                                            (let ((_%tl242606242646%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types242597242608%_)))
                                                  (_%hd242605242644%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types242597242608%_))))
                                              (let ((_%type242649%_
                                                     _%hd242605242644%_)
                                                    (_%rest-types242651%_
                                                     _%tl242606242646%_))
                                                (_%K242604242641%_
                                                 _%rest-types242651%_
                                                 _%type242649%_)))
                                            (_%try-match242599242635%_))))))))
                          (if (pair? _%rest-args242576242584%_)
                              (let ((_%hd242581242656%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args242576242584%_)))
                                    (_%tl242582242658%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args242576242584%_))))
                                (let* ((_%arg242661%_ _%hd242581242656%_)
                                       (_%rest-args242663%_
                                        _%tl242582242658%_))
                                  (_%K242580242653%_
                                   _%rest-args242663%_
                                   _%arg242661%_)))
                              (_%else242578242592%_)))))
                    '#f))
              '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self242351%_ _%ctx242352%_ _%stx242353%_ _%args242354%_)
        (let* ((_%self242357%_ _%self242351%_)
               (_%g242367242377%_
                (lambda (_%g242368242374%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g242368242374%_))))
               (_%g242366242415%_
                (lambda (_%g242368242380%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g242368242380%_))
                      (let ((_%e242370242382%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g242368242380%_))))
                        (let ((_%hd242371242385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e242370242382%_)))
                              (_%tl242372242387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e242370242382%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl242372242387%_))
                              ((lambda (_%g242369242390%_)
                                 (let* ((_%klass242402%_
                                         (let ((__tmp243982
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self242357%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx242353%_
                                            __tmp243982)))
                                        (_%object242404%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx242352%_
                                            _%g242369242390%_)))
                                        (_%instance?242409%_
                                         (let ((_%$e242406%_
                                                (gxc#expression-type?
                                                 _%object242404%_
                                                 _%klass242402%_)))
                                           (if _%$e242406%_
                                               _%$e242406%_
                                               (gxc#expression-type?
                                                _%g242369242390%_
                                                _%klass242402%_)))))
                                   (if _%instance?242409%_
                                       (let ((__tmp243983
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object242404%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g242369242390%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object242404%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp243983
                                          _%stx242353%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx242352%_
                                          _%stx242353%_)))))
                               _%hd242371242385%_)
                              (_%g242367242377%_ _%g242368242380%_))))
                      (_%g242367242377%_ _%g242368242380%_)))))
          (_%g242366242415%_ _%args242354%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self242147%_ _%ctx242148%_ _%stx242149%_ _%args242150%_)
        (let* ((_%self242153%_ _%self242147%_)
               (_%g242163242173%_
                (lambda (_%g242164242170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g242164242170%_))))
               (_%g242162242226%_
                (lambda (_%g242164242176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g242164242176%_))
                      (let ((_%e242166242178%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g242164242176%_))))
                        (let ((_%hd242167242181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e242166242178%_)))
                              (_%tl242168242183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e242166242178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl242168242183%_))
                              ((lambda (_%g242165242186%_)
                                 (let* ((_%klass242198%_
                                         (let ((__tmp243984
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self242153%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx242149%_
                                            __tmp243984)))
                                        (_%object242200%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx242148%_
                                            _%g242165242186%_)))
                                        (_%instance?242205%_
                                         (let ((_%$e242202%_
                                                (gxc#expression-type?
                                                 _%object242200%_
                                                 _%klass242198%_)))
                                           (if _%$e242202%_
                                               _%$e242202%_
                                               (gxc#expression-type?
                                                _%g242165242186%_
                                                _%klass242198%_))))
                                        (_%klass242208%_ _%klass242198%_))
                                   (if _%instance?242205%_
                                       (let ((__tmp243985
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object242200%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g242165242186%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object242200%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp243985
                                          _%stx242149%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass242208%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp243986
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass242208%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object242200%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp243986
                                              _%stx242149%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass242208%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp243987
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass242208%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object242200%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp243987
                                                  _%stx242149%_))
                                               (let ((__tmp243988
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self242153%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object242200%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp243988
                                                  _%stx242149%_)))))))
                               _%hd242167242181%_)
                              (_%g242163242173%_ _%g242164242176%_))))
                      (_%g242163242173%_ _%g242164242176%_)))))
          (_%g242162242226%_ _%args242150%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx241815%_)
        (let* ((_%__stx243383243384%_ _%stx241815%_)
               (_%g241820241861%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx243383243384%_)))))
          (let ((_%__kont243385243386%_ (lambda () '#t))
                (_%__kont243387243388%_ (lambda () '#t))
                (_%__kont243389243390%_
                 (lambda (_%g241834241927%_ _%g241835241928%_)
                   (let ((_%rator-type241949241951%_
                          (let ((__tmp243989
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g241835241928%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp243989))))
                     (if _%rator-type241949241951%_
                         (let* ((_%rator-type241953%_
                                 _%rator-type241949241951%_)
                                (_%rator-signature241954241956%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type241953%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type241953%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature241954241956%_
                               (let* ((_%rator-signature241958%_
                                       _%rator-signature241954241956%_)
                                      (_%rator-effect241959241961%_
                                       (if _%rator-signature241958%_
                                           (##direct-structure-ref
                                            _%rator-signature241958%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect241959241961%_
                                     (let ((_%rator-effect241963%_
                                            _%rator-effect241959241961%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect241963%_)
                                               (equal? '(alloc)
                                                       _%rator-effect241963%_))
                                           (let ((__tmp243990
                                                  (let ((__tmp243991
                                                         (lambda (_%g241968241971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g241969241973%_)
                   (cons _%g241968241971%_ _%g241969241973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp243991
                                                     '()
                                                     _%g241834241927%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp243990))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont243393243394%_ (lambda () '#f)))
            (let ((_%__match243472243473%_
                   (lambda (_%e241836241873%_
                            _%hd241837241876%_
                            _%tl241838241878%_
                            _%e241839241881%_
                            _%hd241840241884%_
                            _%tl241841241886%_
                            _%e241842241889%_
                            _%hd241843241892%_
                            _%tl241844241894%_
                            _%e241845241897%_
                            _%hd241846241900%_
                            _%tl241847241902%_
                            _%__splice243391243392%_
                            _%target241848241905%_
                            _%tl241850241907%_)
                     (letrec ((_%loop241851241910%_
                               (lambda (_%hd241849241913%_
                                        _%rand241855241915%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd241849241913%_))
                                     (let ((_%e241852241917%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd241849241913%_))))
                                       (let ((_%lp-tl241854241922%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e241852241917%_)))
                                             (_%lp-hd241853241920%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e241852241917%_))))
                                         (_%loop241851241910%_
                                          _%lp-tl241854241922%_
                                          (cons _%lp-hd241853241920%_
                                                _%rand241855241915%_))))
                                     (let ((_%rand241856241925%_
                                            (reverse _%rand241855241915%_)))
                                       (_%__kont243389243390%_
                                        _%rand241856241925%_
                                        _%hd241846241900%_))))))
                       (_%loop241851241910%_ _%target241848241905%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx243383243384%_))
                  (let ((_%e241822242004%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx243383243384%_))))
                    (let ((_%tl241824242009%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e241822242004%_)))
                          (_%hd241823242007%_
                           (let ()
                             (declare (not safe))
                             (##car _%e241822242004%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd241823242007%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd241823242007%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl241824242009%_))
                                  (let ((_%e241825242012%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl241824242009%_))))
                                    (let ((_%tl241827242017%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e241825242012%_)))
                                          (_%hd241826242015%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e241825242012%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl241827242017%_))
                                          (_%__kont243385243386%_)
                                          (_%__kont243393243394%_))))
                                  (_%__kont243393243394%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd241823242007%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl241824242009%_))
                                      (let ((_%e241831241989%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl241824242009%_))))
                                        (let ((_%tl241833241994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e241831241989%_)))
                                              (_%hd241832241992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e241831241989%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl241833241994%_))
                                              (_%__kont243387243388%_)
                                              (_%__kont243393243394%_))))
                                      (_%__kont243393243394%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd241823242007%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl241824242009%_))
                                          (let ((_%e241839241881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl241824242009%_))))
                                            (let ((_%tl241841241886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e241839241881%_)))
                                                  (_%hd241840241884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e241839241881%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd241840241884%_))
                                                  (let ((_%e241842241889%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd241840241884%_))))
                                                    (let ((_%tl241844241894%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e241842241889%_)))
                                                          (_%hd241843241892%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e241842241889%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd241843241892%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd241843241892%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl241844241894%_))
                          (let ((_%e241845241897%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl241844241894%_))))
                            (let ((_%tl241847241902%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e241845241897%_)))
                                  (_%hd241846241900%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e241845241897%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl241847241902%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl241841241886%_))
                                      (let ((_%__splice243391243392%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl241841241886%_
                                                '0))))
                                        (let ((_%tl241850241907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice243391243392%_
                                                  '1)))
                                              (_%target241848241905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice243391243392%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl241850241907%_))
                                              (_%__match243472243473%_
                                               _%e241822242004%_
                                               _%hd241823242007%_
                                               _%tl241824242009%_
                                               _%e241839241881%_
                                               _%hd241840241884%_
                                               _%tl241841241886%_
                                               _%e241842241889%_
                                               _%hd241843241892%_
                                               _%tl241844241894%_
                                               _%e241845241897%_
                                               _%hd241846241900%_
                                               _%tl241847241902%_
                                               _%__splice243391243392%_
                                               _%target241848241905%_
                                               _%tl241850241907%_)
                                              (_%__kont243393243394%_))))
                                      (_%__kont243393243394%_))
                                  (_%__kont243393243394%_))))
                          (_%__kont243393243394%_))
                      (_%__kont243393243394%_))
                  (_%__kont243393243394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont243393243394%_))))
                                          (_%__kont243393243394%_))
                                      (_%__kont243393243394%_))))
                          (_%__kont243393243394%_))))
                  (_%__kont243393243394%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx241810%_ _%klass241811%_)
        (let ((_%expr-type241813%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx241810%_))))
          (if _%expr-type241813%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type241813%_ _%klass241811%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx241788%_ _%expr241789%_ _%type241790%_)
        (if (not _%type241790%_)
            '#f
            (let ((_%$e241793%_
                   (eq? (##structure-ref _%type241790%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e241793%_
                  _%$e241793%_
                  (let ((_%expr-type241797%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr241789%_))))
                    (if (not _%expr-type241797%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type241797%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e241801%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type241797%_
                                      'gxc#!abort::t))))
                              (if _%$e241801%_
                                  _%$e241801%_
                                  (let ((_%$e241804%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type241797%_
                                            _%type241790%_))))
                                    (if _%$e241804%_
                                        _%$e241804%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type241790%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type241790%_
                                                   _%expr-type241797%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx241788%_
                                                   _%expr241789%_
                                                   _%expr-type241797%_
                                                   _%type241790%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self241602%_ _%ctx241603%_ _%stx241604%_ _%args241605%_)
        (let* ((_%self241608%_ _%self241602%_)
               (_%klass241618%_
                (let ((__tmp243992
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self241608%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx241604%_ __tmp243992)))
               (_%fields241620%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass241618%_
                           '5
                           '#f
                           '#f))))
               (_%args241626%_
                (map (lambda (_%g241621241623%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx241603%_ _%g241621241623%_)))
                     _%args241605%_))
               (_%inline-make-object241628%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self241608%_
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
                           _%self241608%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields241620%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass241631%_ _%klass241618%_)
               (_%$e241645%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass241631%_ '6 '#f '#f))))
          (if _%$e241645%_
              ((lambda (_%ctor241648%_)
                 (let ((_%$obj241650%_
                        (let ((__tmp243993
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp243993)))
                       (_%ctor-impl241651%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass241631%_
                           _%ctor241648%_))))
                   (let ((__tmp243994
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj241650%_ '())
                                                  (cons _%inline-make-object241628%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl241651%_
                                                            (let ((__tmp243995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl241651%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj241650%_ '()))
                                             _%args241626%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp243995
                       _%stx241604%_
                       _%ctx241603%_))
                    (let ((_%$ctor241653%_
                           (let ((__tmp243996
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp243996))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor241653%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self241608%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj241650%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor241648%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor241653%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor241653%_ '()))
                              (cons (cons '%#ref (cons _%$obj241650%_ '()))
                                    _%args241626%_)))
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
                             _%self241608%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor241648%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj241650%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp243994 _%stx241604%_))))
               _%$e241645%_)
              (let ((_%$e241655%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass241631%_
                        '10
                        '#f
                        '#f))))
                (if _%$e241655%_
                    ((lambda (_%metaclass241658%_)
                       (let* ((_%$obj241660%_
                               (let ((__tmp243997
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp243997)))
                              (_%metakons241662%_
                               (let ((__tmp243998
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx241604%_
                                         _%metaclass241658%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp243998
                                  'instance-init!)))
                              (__tmp243999
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj241660%_
                                                             '())
                                                       (cons _%inline-make-object241628%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons241662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244000
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons241662%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self241608%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj241660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args241626%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp244000
                            _%stx241604%_
                            _%ctx241603%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self241608%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj241660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args241626%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj241660%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp243999 _%stx241604%_)))
                     _%$e241655%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass241631%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp244001
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args241626%_))))
                              (declare (not safe))
                              (##fx= __tmp244001 _%fields241620%_))
                            (let ((__tmp244002
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self241608%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '##structure '()))
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self241608%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args241626%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp244002
                               _%stx241604%_))
                            (let ((__tmp244004
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self241608%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp244003
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass241631%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx241604%_
                               __tmp244004
                               __tmp244003)))
                        (let ((_%$obj241667%_
                               (let ((__tmp244005
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp244005))))
                          (let _%lp241669%_ ((_%rest241671%_ _%args241626%_)
                                             (_%initializers241672%_ '()))
                            (let* ((_%__stx243475243476%_ _%rest241671%_)
                                   (_%g241676241697%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx243475243476%_)))))
                              (let ((_%__kont243477243478%_
                                     (lambda (_%g241678241751%_
                                              _%g241679241752%_
                                              _%g241680241753%_)
                                       (let* ((_%slot241780%_
                                               (let ((__tmp244006
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g241680241753%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp244006)))
                                              (_%off241782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass241631%_
                                                  _%slot241780%_))))
                                         (if _%off241782%_
                                             (_%lp241669%_
                                              _%g241678241751%_
                                              (cons (cons _%off241782%_
                                                          _%g241679241752%_)
                                                    _%initializers241672%_))
                                             (let ((__tmp244007
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self241608%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx241604%_
                                                __tmp244007
                                                _%slot241780%_))))))
                                    (_%__kont243479243480%_
                                     (lambda ()
                                       (let ((__tmp244008
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj241667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object241628%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp244011
                                     (cons (cons '%#ref
                                                 (cons _%$obj241667%_ '()))
                                           '()))
                                    (__tmp244009
                                     (let ((__tmp244010
                                            (lambda (_%i241711%_ _%r241712%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self241608%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i241711%_) '()))
                              (cons (cons '%#ref (cons _%$obj241667%_ '()))
                                    (cons (cdr _%i241711%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r241712%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp244010
                                        '()
                                        _%initializers241672%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp244011 __tmp244009)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp244008
                                          _%stx241604%_))))
                                    (_%__kont243481243482%_
                                     (lambda ()
                                       (let ((__tmp244012
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj241667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object241628%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj241667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args241626%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj241667%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp244012
                                          _%stx241604%_)))))
                                (let* ((_%g241674241714%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx243475243476%_))
                                              (_%__kont243479243480%_)
                                              (_%__kont243481243482%_))))
                                       (_%__match243512243513%_
                                        (lambda (_%e241681241719%_
                                                 _%hd241682241722%_
                                                 _%tl241683241724%_
                                                 _%e241684241727%_
                                                 _%hd241685241730%_
                                                 _%tl241686241732%_
                                                 _%e241687241735%_
                                                 _%hd241688241738%_
                                                 _%tl241689241740%_
                                                 _%e241690241743%_
                                                 _%hd241691241746%_
                                                 _%tl241692241748%_)
                                          (let ((_%g241678241751%_
                                                 _%tl241692241748%_)
                                                (_%g241679241752%_
                                                 _%hd241691241746%_)
                                                (_%g241680241753%_
                                                 _%hd241688241738%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g241680241753%_))
                                                (_%__kont243477243478%_
                                                 _%g241678241751%_
                                                 _%g241679241752%_
                                                 _%g241680241753%_)
                                                (_%__kont243481243482%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx243475243476%_))
                                      (let ((_%e241681241719%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx243475243476%_))))
                                        (let ((_%tl241683241724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e241681241719%_)))
                                              (_%hd241682241722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e241681241719%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd241682241722%_))
                                              (let ((_%e241684241727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd241682241722%_))))
                                                (let ((_%tl241686241732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e241684241727%_)))
                                                      (_%hd241685241730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e241684241727%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd241685241730%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd241685241730%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl241686241732%_))
                      (let ((_%e241687241735%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl241686241732%_))))
                        (let ((_%tl241689241740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e241687241735%_)))
                              (_%hd241688241738%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e241687241735%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl241689241740%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl241683241724%_))
                                  (let ((_%e241690241743%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl241683241724%_))))
                                    (let ((_%tl241692241748%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e241690241743%_)))
                                          (_%hd241691241746%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e241690241743%_))))
                                      (_%__match243512243513%_
                                       _%e241681241719%_
                                       _%hd241682241722%_
                                       _%tl241683241724%_
                                       _%e241684241727%_
                                       _%hd241685241730%_
                                       _%tl241686241732%_
                                       _%e241687241735%_
                                       _%hd241688241738%_
                                       _%tl241689241740%_
                                       _%e241690241743%_
                                       _%hd241691241746%_
                                       _%tl241692241748%_)))
                                  (_%__kont243481243482%_))
                              (_%__kont243481243482%_))))
                      (_%__kont243481243482%_))
                  (_%__kont243481243482%_))
              (_%__kont243481243482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont243481243482%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g241674241714%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self241385%_ _%ctx241386%_ _%stx241387%_ _%args241388%_)
        (let* ((_%self241391%_ _%self241385%_)
               (_%arguments-ok?241401%_
                (let ((__method243956
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self241391%_ 'check-arguments))))
                  (if __method243956
                      (let ()
                        (declare (not safe))
                        (__method243956
                         _%self241391%_
                         _%ctx241386%_
                         _%stx241387%_
                         _%args241388%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self241391%_
                                 'check-arguments))
                        '#!void))))
               (_%g241403241413%_
                (lambda (_%g241404241410%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g241404241410%_))))
               (_%g241402241477%_
                (lambda (_%g241404241416%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g241404241416%_))
                      (let ((_%e241406241418%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g241404241416%_))))
                        (let ((_%hd241407241421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e241406241418%_)))
                              (_%tl241408241423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e241406241418%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl241408241423%_))
                              ((lambda (_%g241405241426%_)
                                 (let* ((_%klass241439%_
                                         (let ((__tmp244013
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self241391%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx241387%_
                                            __tmp244013)))
                                        (_%field241441%_
                                         (let ((__tmp244014
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self241391%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass241439%_
                                            __tmp244014)))
                                        (_%object241443%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx241386%_
                                            _%g241405241426%_)))
                                        (_%klass241446%_ _%klass241439%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass241446%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp244015
                                              (cons (if (or _%arguments-ok?241401%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self241391%_
                            '4
                            '#f
                            '#f))))
                '%#struct-unchecked-ref
                '%#struct-direct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self241391%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field241441%_ '()))
                        (cons _%object241443%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp244015
                                          _%stx241387%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass241446%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp244016
                                                  (cons (if (or _%arguments-ok?241401%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self241391%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self241391%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field241441%_ '()))
                            (cons _%object241443%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp244016
                                              _%stx241387%_))
                                           (let ((_%$e241465%_
                                                  (let ((__tmp244017
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self241391%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass241446%_
                                                     __tmp244017))))
                                             (if _%$e241465%_
                                                 ((lambda (_%klass241468%_)
                                                    (let ((__tmp244018
                                                           (cons (if (or _%arguments-ok?241401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self241391%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self241391%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field241441%_ '()))
                                     (cons _%object241443%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp244018 _%stx241387%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e241465%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self241391%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp244019
                                                            (let ((_%$obj241474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp244020
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp244020))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj241474%_ '())
                                              (cons _%object241443%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass241446%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj241474%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self241391%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field241441%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj241474%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?241401%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj241474%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self241391%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'class-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self241391%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj241474%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self241391%_
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
               (gxc#xform-wrap-source __tmp244019 _%stx241387%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp244021
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object241443%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self241391%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp244021 _%stx241387%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd241407241421%_)
                              (_%g241403241413%_ _%g241404241416%_))))
                      (_%g241403241413%_ _%g241404241416%_)))))
          (_%g241402241477%_ _%args241388%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass243243 __method-table243244)
        (let ((__check-arguments243245
               (let ((__tmp244022
                      (lambda ()
                        (let ((__method243246
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table243244
                                  'check-arguments
                                  '#f))))
                          (if __method243246
                              __method243246
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp244022)))
              (__slot243247
               (let ((__slot243248
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass243243 'slot))))
                 (if __slot243248
                     __slot243248
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self241385%_ _%ctx241386%_ _%stx241387%_ _%args241388%_)
            (let* ((_%self241391%_ _%self241385%_)
                   (_%arguments-ok?241401%_
                    ((force __check-arguments243245)
                     _%self241391%_
                     _%ctx241386%_
                     _%stx241387%_
                     _%args241388%_))
                   (_%g241403241413%_
                    (lambda (_%g241404241410%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g241404241410%_))))
                   (_%g241402241477%_
                    (lambda (_%g241404241416%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g241404241416%_))
                          (let ((_%e241406241418%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g241404241416%_))))
                            (let ((_%hd241407241421%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e241406241418%_)))
                                  (_%tl241408241423%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e241406241418%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl241408241423%_))
                                  ((lambda (_%g241405241426%_)
                                     (let* ((_%klass241439%_
                                             (let ((__tmp244023
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self241391%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx241387%_
                                                __tmp244023)))
                                            (_%field241441%_
                                             (let ((__tmp244024
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self241391%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass241439%_
                                                __tmp244024)))
                                            (_%object241443%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx241386%_
                                                _%g241405241426%_)))
                                            (_%klass241446%_ _%klass241439%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass241446%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp244025
                                                  (cons (if (or _%arguments-ok?241401%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self241391%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self241391%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field241441%_ '()))
                            (cons _%object241443%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp244025
                                              _%stx241387%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass241446%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp244026
                                                      (cons (if (or _%arguments-ok?241401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self241391%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self241391%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field241441%_ '()))
                                (cons _%object241443%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp244026
                                                  _%stx241387%_))
                                               (let ((_%$e241465%_
                                                      (let ((__tmp244027
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self241391%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass241446%_ __tmp244027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e241465%_
                                                     ((lambda (_%klass241468%_)
                                                        (let ((__tmp244028
                                                               (cons (if (or _%arguments-ok?241401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self241391%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self241391%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field241441%_ '()))
                                         (cons _%object241443%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp244028 _%stx241387%_)))
              _%$e241465%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self241391%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp244029
                                                                (let ((_%$obj241474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244030
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp244030))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj241474%_ '())
                                                  (cons _%object241443%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass241446%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj241474%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self241391%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field241441%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj241474%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?241401%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj241474%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self241391%_
                               __slot243247
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self241391%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj241474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self241391%_
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
                   (gxc#xform-wrap-source __tmp244029 _%stx241387%_))
                 (let ((__tmp244031
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object241443%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self241391%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp244031 _%stx241387%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd241407241421%_)
                                  (_%g241403241413%_ _%g241404241416%_))))
                          (_%g241403241413%_ _%g241404241416%_)))))
              (_%g241402241477%_ _%args241388%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self241149%_ _%ctx241150%_ _%stx241151%_ _%args241152%_)
        (let* ((_%self241155%_ _%self241149%_)
               (_%arguments-ok?241165%_
                (let ((__method243957
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self241155%_ 'check-arguments))))
                  (if __method243957
                      (let ()
                        (declare (not safe))
                        (__method243957
                         _%self241155%_
                         _%ctx241150%_
                         _%stx241151%_
                         _%args241152%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self241155%_
                                 'check-arguments))
                        '#!void))))
               (_%g241167241181%_
                (lambda (_%g241168241178%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g241168241178%_))))
               (_%g241166241260%_
                (lambda (_%g241168241184%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g241168241184%_))
                      (let ((_%e241171241186%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g241168241184%_))))
                        (let ((_%hd241172241189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e241171241186%_)))
                              (_%tl241173241191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e241171241186%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl241173241191%_))
                              (let ((_%e241174241194%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl241173241191%_))))
                                (let ((_%hd241175241197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e241174241194%_)))
                                      (_%tl241176241199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e241174241194%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl241176241199%_))
                                      ((lambda (_%g241169241202%_
                                                _%g241170241203%_)
                                         (let* ((_%klass241219%_
                                                 (let ((__tmp244032
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self241155%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx241151%_
                                                    __tmp244032)))
                                                (_%field241221%_
                                                 (let ((__tmp244033
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self241155%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass241219%_
                                                    __tmp244033)))
                                                (_%object241223%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx241150%_
                                                    _%g241170241203%_)))
                                                (_%value241225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx241150%_
                                                    _%g241169241202%_)))
                                                (_%klass241228%_
                                                 _%klass241219%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass241228%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp244034
                                                      (cons (if (or _%arguments-ok?241165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self241155%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self241155%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field241221%_ '()))
                                (cons _%object241223%_
                                      (cons _%value241225%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp244034
                                                  _%stx241151%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass241228%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp244035
                                                          (cons (if (or _%arguments-ok?241165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self241155%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self241155%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field241221%_ '()))
                                    (cons _%object241223%_
                                          (cons _%value241225%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp244035
                                                      _%stx241151%_))
                                                   (let ((_%$e241248%_
                                                          (let ((__tmp244036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self241155%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass241228%_
                     __tmp244036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e241248%_
                                                         ((lambda (_%klass241251%_)
                                                            (let ((__tmp244037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?241165%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self241155%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self241155%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field241221%_ '()))
                                             (cons _%object241223%_
                                                   (cons _%value241225%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244037 _%stx241151%_)))
                  _%$e241248%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self241155%_ '4 '#f '#f))
                     (let ((__tmp244038
                            (let ((_%$obj241257%_
                                   (let ((__tmp244039
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp244039))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj241257%_ '())
                                                      (cons _%object241223%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass241228%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj241257%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self241155%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field241221%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj241257%_
                                                              '()))
                                                  (cons _%value241225%_
                                                        '())))))
                          (cons (if _%arguments-ok?241165%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj241257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self241155%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value241225%_ '())))))
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
                             _%self241155%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj241257%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self241155%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value241225%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp244038 _%stx241151%_))
                     (let ((__tmp244040
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object241223%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self241155%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value241225%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp244040
                        _%stx241151%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd241175241197%_
                                       _%hd241172241189%_)
                                      (_%g241167241181%_ _%g241168241184%_))))
                              (_%g241167241181%_ _%g241168241184%_))))
                      (_%g241167241181%_ _%g241168241184%_)))))
          (_%g241166241260%_ _%args241152%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass243249 __method-table243250)
        (let ((__check-arguments243251
               (let ((__tmp244041
                      (lambda ()
                        (let ((__method243252
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table243250
                                  'check-arguments
                                  '#f))))
                          (if __method243252
                              __method243252
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp244041))))
          (lambda (_%self241149%_ _%ctx241150%_ _%stx241151%_ _%args241152%_)
            (let* ((_%self241155%_ _%self241149%_)
                   (_%arguments-ok?241165%_
                    ((force __check-arguments243251)
                     _%self241155%_
                     _%ctx241150%_
                     _%stx241151%_
                     _%args241152%_))
                   (_%g241167241181%_
                    (lambda (_%g241168241178%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g241168241178%_))))
                   (_%g241166241260%_
                    (lambda (_%g241168241184%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g241168241184%_))
                          (let ((_%e241171241186%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g241168241184%_))))
                            (let ((_%hd241172241189%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e241171241186%_)))
                                  (_%tl241173241191%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e241171241186%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl241173241191%_))
                                  (let ((_%e241174241194%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl241173241191%_))))
                                    (let ((_%hd241175241197%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e241174241194%_)))
                                          (_%tl241176241199%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e241174241194%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl241176241199%_))
                                          ((lambda (_%g241169241202%_
                                                    _%g241170241203%_)
                                             (let* ((_%klass241219%_
                                                     (let ((__tmp244042
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self241155%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx241151%_
                                                        __tmp244042)))
                                                    (_%field241221%_
                                                     (let ((__tmp244043
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self241155%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass241219%_
                                                        __tmp244043)))
                                                    (_%object241223%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx241150%_
                                                        _%g241170241203%_)))
                                                    (_%value241225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx241150%_
                                                        _%g241169241202%_)))
                                                    (_%klass241228%_
                                                     _%klass241219%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass241228%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp244044
                                                          (cons (if (or _%arguments-ok?241165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self241155%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self241155%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field241221%_ '()))
                                    (cons _%object241223%_
                                          (cons _%value241225%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp244044
                                                      _%stx241151%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass241228%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp244045
                                                              (cons (if (or _%arguments-ok?241165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self241155%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self241155%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field241221%_ '()))
                                        (cons _%object241223%_
                                              (cons _%value241225%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp244045 _%stx241151%_))
               (let ((_%$e241248%_
                      (let ((__tmp244046
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self241155%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass241228%_
                         __tmp244046))))
                 (if _%$e241248%_
                     ((lambda (_%klass241251%_)
                        (let ((__tmp244047
                               (cons (if (or _%arguments-ok?241165%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self241155%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self241155%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field241221%_
                                                             '()))
                                                 (cons _%object241223%_
                                                       (cons _%value241225%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp244047 _%stx241151%_)))
                      _%$e241248%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self241155%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp244048
                                (let ((_%$obj241257%_
                                       (let ((__tmp244049
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp244049))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj241257%_
                                                                '())
                                                          (cons _%object241223%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass241228%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj241257%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self241155%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field241221%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj241257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value241225%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?241165%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj241257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self241155%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value241225%_ '())))))
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
                                 _%self241155%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj241257%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self241155%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value241225%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp244048 _%stx241151%_))
                         (let ((__tmp244050
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object241223%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self241155%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value241225%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp244050
                            _%stx241151%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd241175241197%_
                                           _%hd241172241189%_)
                                          (_%g241167241181%_
                                           _%g241168241184%_))))
                                  (_%g241167241181%_ _%g241168241184%_))))
                          (_%g241167241181%_ _%g241168241184%_)))))
              (_%g241166241260%_ _%args241152%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self240965%_ _%ctx240966%_ _%stx240967%_ _%args240968%_)
        (let* ((_%self240971%_ _%self240965%_)
               (_%self240980240990%_ _%self240971%_)
               (_%E240982240993%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self240980240990%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K240983241003%_
                (lambda (_%inline240996%_ _%dispatch240997%_ _%arity240998%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self240971%_
                         _%args240968%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx240967%_
                         _%arity240998%_)))
                  (if _%inline240996%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp244051 (_%inline240996%_ _%stx240967%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp244051
                           _%stx240967%_
                           _%ctx240966%_)))
                      (if (and _%dispatch240997%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch240997%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch240997%_))
                            (let ((__tmp244052
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch240997%_
                                                           '()))
                                               _%args240968%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp244052
                               _%stx240967%_
                               _%ctx240966%_)))
                          (gxc#!procedure::optimize-call
                           _%self240971%_
                           _%ctx240966%_
                           _%stx240967%_
                           _%args240968%_)))))
               (_%e240984241006%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self240980240990%_ '1 '#f '#f)))
               (_%e240985241009%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self240980240990%_ '2 '#f '#f)))
               (_%e240986241012%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self240980240990%_ '3 '#f '#f)))
               (_%arity241015%_ _%e240986241012%_)
               (_%e240987241017%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self240980240990%_ '4 '#f '#f)))
               (_%dispatch241020%_ _%e240987241017%_)
               (_%e240988241022%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self240980240990%_ '5 '#f '#f)))
               (_%inline241025%_ _%e240988241022%_))
          (_%K240983241003%_
           _%inline241025%_
           _%dispatch241020%_
           _%arity241015%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self240817%_ _%ctx240818%_ _%stx240819%_ _%args240820%_)
        (let* ((_%self240823%_ _%self240817%_)
               (_%$e240837%_
                (let ((__tmp244054
                       (lambda (_%g240832240834%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g240832240834%_
                            _%args240820%_))))
                      (__tmp244053
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self240823%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp244054 __tmp244053))))
          (if _%$e240837%_
              ((lambda (_%clause240840%_)
                 (let ((__method243958
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause240840%_ 'optimize-call))))
                   (if __method243958
                       (let ()
                         (declare (not safe))
                         (__method243958
                          _%clause240840%_
                          _%ctx240818%_
                          _%stx240819%_
                          _%args240820%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause240840%_
                                  'optimize-call))
                         '#!void))))
               _%$e240837%_)
              (let ((__tmp244055
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self240823%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx240819%_
                 __tmp244055))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self240558%_ _%ctx240559%_ _%stx240560%_ _%args240561%_)
        (let* ((_%self240564%_ _%self240558%_)
               (_%self240573240582%_ _%self240564%_)
               (_%E240575240585%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self240573240582%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K240576240676%_
                (lambda (_%dispatch240588%_ _%table240589%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch240588%_))
                      (let* ((_%g240590240600%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch240588%_)))
                             (_%else240592240608%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch240588%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx240559%_
                                   _%stx240560%_))))
                             (_%K240594240657%_
                              (lambda (_%main240611%_ _%keys240612%_)
                                (let ((_g244056_
                                       (gxc#!kw-lambda-split-args
                                        _%stx240560%_
                                        _%args240561%_)))
                                  (begin
                                    (let ((_g244057_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g244056_)
                                                 (##values-length _g244056_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g244057_ 2)))
                                          (error "Context expects 2 values"
                                                 _g244057_)))
                                    (let ((_%pargs240614%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g244056_ 0)))
                                          (_%kwargs240615%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g244056_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main240611%_))
                                        (if _%table240589%_
                                            (let ((_%xargs240623%_
                                                   (map (lambda (_%key240617%_)
                                                          (let ((_%$e240619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key240617%_ _%kwargs240615%_))))
                    (if _%$e240619%_ _%$e240619%_ '(%#ref absent-value))))
                _%keys240612%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw240625%_)
                                                 (if (memq (car _%kw240625%_)
                                                           _%keys240612%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx240560%_
                                                        _%keys240612%_
                                                        _%kw240625%_))))
                                               _%kwargs240615%_)
                                              (let ((__tmp244058
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main240611%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs240614%_
                                  _%xargs240623%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp244058
                                                 _%stx240560%_
                                                 _%ctx240559%_)))
                                            (let* ((_%kwt240627%_
                                                    (let ((__tmp244059
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp244059)))
                                                   (_%kwvars240631%_
                                                    (map (lambda (_%_240629%_)
                                                           (let ((__tmp244060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp244060)))
                 _%kwargs240615%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind240636%_
                                                    (map (lambda (_%kw240633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar240634%_)
                   (cons (cons _%kwvar240634%_ '())
                         (cons (cdr _%kw240633%_) '())))
                 _%kwargs240615%_
                 _%kwvars240631%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset240641%_
                                                    (map (lambda (_%kw240638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar240639%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt240627%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw240638%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar240639%_
                                                             '()))
                                                 '()))))))
                 _%kwargs240615%_
                 _%kwvars240631%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs240646%_
                                                    (map (lambda (_%kw240643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar240644%_)
                   (cons (car _%kw240643%_)
                         (cons '%#ref (cons _%kwvar240644%_ '()))))
                 _%kwargs240615%_
                 _%kwvars240631%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs240654%_
                                                    (map (lambda (_%key240648%_)
                                                           (let ((_%$e240650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key240648%_ _%xkwargs240646%_))))
                     (if _%$e240650%_ _%$e240650%_ '(%#ref absent-value))))
                 _%keys240612%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp244061
                                                    (cons '%#let-values
                                                          (cons _%kwbind240636%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt240627%_ '())
                                                      (cons (let ((__tmp244062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs240615%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244062 _%stx240560%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp244063
                                                             (cons (let ((__tmp244064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main240611%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt240627%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs240614%_
                                                       _%xargs240654%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp244064 _%stx240560%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp244063 _%kwset240641%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp244061
                                               _%stx240560%_
                                               _%ctx240559%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g240590240600%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e240595240660%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g240590240600%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e240596240663%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g240590240600%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e240597240666%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g240590240600%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys240669%_ _%e240597240666%_)
                                   (_%e240598240671%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g240590240600%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main240674%_ _%e240598240671%_))
                              (_%K240594240657%_
                               _%main240674%_
                               _%keys240669%_))
                            (_%else240592240608%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx240559%_ _%stx240560%_)))))
               (_%e240577240679%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self240573240582%_ '1 '#f '#f)))
               (_%e240578240682%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self240573240582%_ '2 '#f '#f)))
               (_%e240579240685%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self240573240582%_ '3 '#f '#f)))
               (_%table240688%_ _%e240579240685%_)
               (_%e240580240690%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self240573240582%_ '4 '#f '#f)))
               (_%dispatch240693%_ _%e240580240690%_))
          (_%K240576240676%_ _%dispatch240693%_ _%table240688%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx240171%_ _%args240172%_)
        (let _%lp240174%_ ((_%rest240176%_ _%args240172%_)
                           (_%pargs240177%_ '())
                           (_%kwargs240178%_ '()))
          (let* ((_%__stx243517243518%_ _%rest240176%_)
                 (_%g240184240236%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx243517243518%_)))))
            (let ((_%__kont243519243520%_
                   (lambda (_%g240186240415%_ _%g240187240416%_)
                     (_%lp240174%_
                      _%g240186240415%_
                      (cons _%g240187240416%_ _%pargs240177%_)
                      _%kwargs240178%_)))
                  (_%__kont243521243522%_
                   (lambda (_%g240201240361%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1
                                cons
                                _%g240201240361%_
                                _%pargs240177%_))
                             (reverse _%kwargs240178%_))))
                  (_%__kont243523243524%_
                   (lambda (_%g240212240308%_
                            _%g240213240309%_
                            _%g240214240310%_)
                     (let ((_%kw240327%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g240214240310%_))))
                       (if (assq _%kw240327%_ _%kwargs240178%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx240171%_
                              _%kw240327%_))
                           (_%lp240174%_
                            _%g240212240308%_
                            _%pargs240177%_
                            (cons (cons _%kw240327%_ _%g240213240309%_)
                                  _%kwargs240178%_))))))
                  (_%__kont243525243526%_
                   (lambda (_%g240227240256%_ _%g240228240257%_)
                     (_%lp240174%_
                      _%g240227240256%_
                      (cons _%g240228240257%_ _%pargs240177%_)
                      _%kwargs240178%_)))
                  (_%__kont243527243528%_
                   (lambda ()
                     (values (reverse _%pargs240177%_)
                             (reverse _%kwargs240178%_)))))
              (let ((_%__match243624243625%_
                     (lambda (_%e240215240276%_
                              _%hd240216240279%_
                              _%tl240217240281%_
                              _%e240218240284%_
                              _%hd240219240287%_
                              _%tl240220240289%_
                              _%e240221240292%_
                              _%hd240222240295%_
                              _%tl240223240297%_
                              _%e240224240300%_
                              _%hd240225240303%_
                              _%tl240226240305%_)
                       (let ((_%g240212240308%_ _%tl240226240305%_)
                             (_%g240213240309%_ _%hd240225240303%_)
                             (_%g240214240310%_ _%hd240222240295%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g240214240310%_))
                             (_%__kont243523243524%_
                              _%g240212240308%_
                              _%g240213240309%_
                              _%g240214240310%_)
                             (_%__kont243525243526%_
                              _%tl240217240281%_
                              _%hd240216240279%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx243517243518%_))
                    (let ((_%e240188240380%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx243517243518%_))))
                      (let ((_%tl240190240385%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e240188240380%_)))
                            (_%hd240189240383%_
                             (let ()
                               (declare (not safe))
                               (##car _%e240188240380%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd240189240383%_))
                            (let ((_%e240191240388%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd240189240383%_))))
                              (let ((_%tl240193240393%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e240191240388%_)))
                                    (_%hd240192240391%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e240191240388%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd240192240391%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd240192240391%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl240193240393%_))
                                            (let ((_%e240194240396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl240193240393%_))))
                                              (let ((_%tl240196240401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e240194240396%_)))
                                                    (_%hd240195240399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e240194240396%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd240195240399%_))
                                                    (let ((_%e240197240404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd240195240399%_))))
                                                      (if (equal? _%e240197240404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl240196240401%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl240190240385%_))
                          (let ((_%e240198240407%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl240190240385%_))))
                            (let ((_%tl240200240412%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e240198240407%_)))
                                  (_%hd240199240410%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e240198240407%_))))
                              (_%__kont243519243520%_
                               _%tl240200240412%_
                               _%hd240199240410%_)))
                          (_%__kont243525243526%_
                           _%tl240190240385%_
                           _%hd240189240383%_))
                      (_%__kont243525243526%_
                       _%tl240190240385%_
                       _%hd240189240383%_))
                  (if (equal? _%e240197240404%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl240196240401%_))
                          (_%__kont243521243522%_ _%tl240190240385%_)
                          (_%__kont243525243526%_
                           _%tl240190240385%_
                           _%hd240189240383%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl240196240401%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl240190240385%_))
                              (let ((_%e240224240300%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl240190240385%_))))
                                (let ((_%tl240226240305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e240224240300%_)))
                                      (_%hd240225240303%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e240224240300%_))))
                                  (_%__match243624243625%_
                                   _%e240188240380%_
                                   _%hd240189240383%_
                                   _%tl240190240385%_
                                   _%e240191240388%_
                                   _%hd240192240391%_
                                   _%tl240193240393%_
                                   _%e240194240396%_
                                   _%hd240195240399%_
                                   _%tl240196240401%_
                                   _%e240224240300%_
                                   _%hd240225240303%_
                                   _%tl240226240305%_)))
                              (_%__kont243525243526%_
                               _%tl240190240385%_
                               _%hd240189240383%_))
                          (_%__kont243525243526%_
                           _%tl240190240385%_
                           _%hd240189240383%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl240196240401%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl240190240385%_))
                                                            (let ((_%e240224240300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl240190240385%_))))
                      (let ((_%tl240226240305%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e240224240300%_)))
                            (_%hd240225240303%_
                             (let ()
                               (declare (not safe))
                               (##car _%e240224240300%_))))
                        (_%__match243624243625%_
                         _%e240188240380%_
                         _%hd240189240383%_
                         _%tl240190240385%_
                         _%e240191240388%_
                         _%hd240192240391%_
                         _%tl240193240393%_
                         _%e240194240396%_
                         _%hd240195240399%_
                         _%tl240196240401%_
                         _%e240224240300%_
                         _%hd240225240303%_
                         _%tl240226240305%_)))
                    (_%__kont243525243526%_
                     _%tl240190240385%_
                     _%hd240189240383%_))
                (_%__kont243525243526%_
                 _%tl240190240385%_
                 _%hd240189240383%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont243525243526%_
                                             _%tl240190240385%_
                                             _%hd240189240383%_))
                                        (_%__kont243525243526%_
                                         _%tl240190240385%_
                                         _%hd240189240383%_))
                                    (_%__kont243525243526%_
                                     _%tl240190240385%_
                                     _%hd240189240383%_))))
                            (_%__kont243525243526%_
                             _%tl240190240385%_
                             _%hd240189240383%_))))
                    (_%__kont243527243528%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self240155%_ _%ctx240156%_ _%stx240157%_ _%args240158%_)
        (let ((_%self240161%_ _%self240155%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx240156%_ _%stx240157%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self239845%_ _%stx239846%_)
        (let* ((_%__stx243633243634%_ _%stx239846%_)
               (_%g239849239889%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx243633243634%_)))))
          (let ((_%__kont243635243636%_
                 (lambda (_%g239851239993%_ _%g239852239994%_)
                   (let ((_%$e240021%_
                          (member 'return:
                                  (let ((__tmp244065
                                         (lambda (_%g240013240016%_
                                                  _%g240014240018%_)
                                           (cons _%g240013240016%_
                                                 _%g240014240018%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp244065
                                     '()
                                     _%g239852239994%_))
                                  gx#stx-eq?)))
                     (if _%$e240021%_
                         ((lambda (_%tail240024%_)
                            (let ((_%type240026%_
                                   (let ((__tmp244066
                                          (let ((__tmp244067
                                                 (cadr _%tail240024%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp244067))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx239846%_
                                      __tmp244066))))
                              (gxc#check-return-type!
                               _%stx239846%_
                               _%g239851239993%_
                               _%type240026%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self239845%_
                                 _%g239851239993%_))))
                          _%$e240021%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self239845%_
                            _%g239851239993%_))))))
                (_%__kont243639243640%_
                 (lambda (_%g239874239918%_ _%g239875239919%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self239845%_ _%g239874239918%_)))))
            (let ((_%__match243670243671%_
                   (lambda (_%e239853239939%_
                            _%hd239854239942%_
                            _%tl239855239944%_
                            _%e239856239947%_
                            _%hd239857239950%_
                            _%tl239858239952%_
                            _%e239859239955%_
                            _%hd239860239958%_
                            _%tl239861239960%_
                            _%__splice243637243638%_
                            _%target239862239963%_
                            _%tl239864239965%_)
                     (letrec ((_%loop239865239968%_
                               (lambda (_%hd239863239971%_
                                        _%signature239869239973%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd239863239971%_))
                                     (let ((_%e239866239975%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd239863239971%_))))
                                       (let ((_%lp-tl239868239980%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e239866239975%_)))
                                             (_%lp-hd239867239978%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e239866239975%_))))
                                         (_%loop239865239968%_
                                          _%lp-tl239868239980%_
                                          (cons _%lp-hd239867239978%_
                                                _%signature239869239973%_))))
                                     (let ((_%signature239870239983%_
                                            (reverse _%signature239869239973%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl239858239952%_))
                                           (let ((_%e239871239985%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl239858239952%_))))
                                             (let ((_%tl239873239990%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e239871239985%_)))
                                                   (_%hd239872239988%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e239871239985%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl239873239990%_))
                                                   (_%__kont243635243636%_
                                                    _%hd239872239988%_
                                                    _%signature239870239983%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g239849239889%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g239849239889%_))))))))
                       (_%loop239865239968%_ _%target239862239963%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx243633243634%_))
                  (let ((_%e239853239939%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx243633243634%_))))
                    (let ((_%tl239855239944%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e239853239939%_)))
                          (_%hd239854239942%_
                           (let ()
                             (declare (not safe))
                             (##car _%e239853239939%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl239855239944%_))
                          (let ((_%e239856239947%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl239855239944%_))))
                            (let ((_%tl239858239952%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e239856239947%_)))
                                  (_%hd239857239950%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e239856239947%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd239857239950%_))
                                  (let ((_%e239859239955%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd239857239950%_))))
                                    (let ((_%tl239861239960%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e239859239955%_)))
                                          (_%hd239860239958%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e239859239955%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd239860239958%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd239860239958%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl239861239960%_))
                                                  (let ((_%__splice243637243638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl239861239960%_
                                                            '0))))
                                                    (let ((_%tl239864239965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice243637243638%_
                                                              '1)))
                                                          (_%target239862239963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice243637243638%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl239864239965%_))
                                                          (_%__match243670243671%_
                                                           _%e239853239939%_
                                                           _%hd239854239942%_
                                                           _%tl239855239944%_
                                                           _%e239856239947%_
                                                           _%hd239857239950%_
                                                           _%tl239858239952%_
                                                           _%e239859239955%_
                                                           _%hd239860239958%_
                                                           _%tl239861239960%_
                                                           _%__splice243637243638%_
                                                           _%target239862239963%_
                                                           _%tl239864239965%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl239858239952%_))
                      (let ((_%e239882239910%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl239858239952%_))))
                        (let ((_%tl239884239915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e239882239910%_)))
                              (_%hd239883239913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e239882239910%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl239884239915%_))
                              (_%__kont243639243640%_
                               _%hd239883239913%_
                               _%hd239857239950%_)
                              (let ()
                                (declare (not safe))
                                (_%g239849239889%_)))))
                      (let () (declare (not safe)) (_%g239849239889%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl239858239952%_))
                                                      (let ((_%e239882239910%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl239858239952%_))))
                (let ((_%tl239884239915%_
                       (let () (declare (not safe)) (##cdr _%e239882239910%_)))
                      (_%hd239883239913%_
                       (let ()
                         (declare (not safe))
                         (##car _%e239882239910%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl239884239915%_))
                      (_%__kont243639243640%_
                       _%hd239883239913%_
                       _%hd239857239950%_)
                      (let () (declare (not safe)) (_%g239849239889%_)))))
              (let () (declare (not safe)) (_%g239849239889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl239858239952%_))
                                                  (let ((_%e239882239910%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl239858239952%_))))
                                                    (let ((_%tl239884239915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e239882239910%_)))
                                                          (_%hd239883239913%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e239882239910%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl239884239915%_))
                                                          (_%__kont243639243640%_
                                                           _%hd239883239913%_
                                                           _%hd239857239950%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g239849239889%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g239849239889%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl239858239952%_))
                                              (let ((_%e239882239910%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl239858239952%_))))
                                                (let ((_%tl239884239915%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e239882239910%_)))
                                                      (_%hd239883239913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e239882239910%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl239884239915%_))
                                                      (_%__kont243639243640%_
                                                       _%hd239883239913%_
                                                       _%hd239857239950%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g239849239889%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g239849239889%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl239858239952%_))
                                      (let ((_%e239882239910%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl239858239952%_))))
                                        (let ((_%tl239884239915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e239882239910%_)))
                                              (_%hd239883239913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e239882239910%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl239884239915%_))
                                              (_%__kont243639243640%_
                                               _%hd239883239913%_
                                               _%hd239857239950%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g239849239889%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g239849239889%_))))))
                          (let () (declare (not safe)) (_%g239849239889%_)))))
                  (let () (declare (not safe)) (_%g239849239889%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx239820%_ _%expr239821%_ _%type239822%_)
        (let ((_%$e239824%_ (not _%type239822%_)))
          (if _%$e239824%_
              _%$e239824%_
              (let ((_%$e239827%_
                     (eq? (##structure-ref _%type239822%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e239827%_
                    _%$e239827%_
                    (let ((_%$e239830%_
                           (eq? (##structure-ref
                                 _%type239822%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e239830%_
                          _%$e239830%_
                          (let ((_%expr-type239834%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr239821%_))))
                            (if (not _%expr-type239834%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx239820%_
                                   _%type239822%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type239834%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx239820%_
                                       _%type239822%_
                                       _%expr-type239834%_))
                                    (let ((_%$e239838%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type239834%_
                                              'gxc#!abort::t))))
                                      (if _%$e239838%_
                                          _%$e239838%_
                                          (let ((_%$e239841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type239834%_
                                                    _%type239822%_))))
                                            (if _%$e239841%_
                                                _%$e239841%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx239820%_
                                                   _%type239822%_
                                                   _%expr-type239834%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self239246%_ _%stx239247%_)
        (let* ((_%__stx243715243716%_ _%stx239247%_)
               (_%g239252239362%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx243715243716%_)))))
          (let ((_%__kont243717243718%_
                 (lambda (_%g239254239794%_
                          _%g239255239795%_
                          _%g239256239796%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g239256239796%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self239246%_ _%g239255239795%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self239246%_
                          _%g239254239794%_)))))
                (_%__kont243719243720%_
                 (lambda (_%g239275239620%_
                          _%g239276239621%_
                          _%g239277239622%_
                          _%g239278239623%_)
                   (let ((_%$e239655%_
                          (let ((__tmp244068
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g239278239623%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp244068))))
                     (if _%$e239655%_
                         ((lambda (_%pred-type239658%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type239658%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type239658%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test239663%_
                                        (let ((__tmp244069
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g239278239623%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g239277239622%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp244069
                                           _%stx239247%_
                                           _%self239246%_)))
                                       (_%K239667%_
                                        (let ((__tmp244070
                                               (lambda ()
                                                 (let ((__tmp244073
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self239246%_
                                                             _%g239276239621%_))))
                                                       (__tmp244071
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g239277239622%_))
                            (let ((__tmp244072
                                   (##structure-ref
                                    _%pred-type239658%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx239247%_
                               __tmp244072)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp244073
                                                    gxc#current-compile-path-type
                                                    __tmp244071)))))
                                          (declare (not safe))
                                          (__make-promise __tmp244070)))
                                       (_%E239670%_
                                        (let ((__tmp244074
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self239246%_
                                                    _%g239275239620%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp244074)))
                                       (_%__stx243693243694%_ _%test239663%_)
                                       (_%g239674239688%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx243693243694%_)))))
                                  (let ((_%__kont243695243696%_
                                         (lambda (_%g239676239716%_
                                                  _%g239677239717%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g239676239716%_))
                                               (force _%K239667%_)
                                               (force _%E239670%_))))
                                        (_%__kont243697243698%_
                                         (lambda ()
                                           (let ((__tmp244075
                                                  (cons '%#if
                                                        (cons _%test239663%_
                                                              (cons (force _%K239667%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E239670%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp244075
                                              _%stx239247%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx243693243694%_))
                                        (let ((_%e239678239700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx243693243694%_))))
                                          (let ((_%tl239680239705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e239678239700%_)))
                                                (_%hd239679239703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e239678239700%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl239680239705%_))
                                                (let ((_%e239681239708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl239680239705%_))))
                                                  (let ((_%tl239683239713%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e239681239708%_)))
                                                        (_%hd239682239711%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e239681239708%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl239683239713%_))
                                                        (_%__kont243695243696%_
                                                         _%hd239682239711%_
                                                         _%hd239679239703%_)
                                                        (_%__kont243697243698%_))))
                                                (_%__kont243697243698%_))))
                                        (_%__kont243697243698%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self239246%_
                                   _%stx239247%_))))
                          _%$e239655%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self239246%_
                            _%stx239247%_))))))
                (_%__kont243721243722%_
                 (lambda (_%g239312239496%_
                          _%g239313239497%_
                          _%g239314239498%_
                          _%g239315239499%_)
                   (gxc#optimize-if%
                    _%self239246%_
                    (let ((__tmp244076
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g239314239498%_
                                       (cons _%g239312239496%_
                                             (cons _%g239313239497%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244076 _%stx239247%_)))))
                (_%__kont243723243724%_
                 (lambda (_%g239343239399%_
                          _%g239344239400%_
                          _%g239345239401%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self239246%_ _%stx239247%_)))))
            (let ((_%__match243922243923%_
                   (lambda (_%e239316239424%_
                            _%hd239317239427%_
                            _%tl239318239429%_
                            _%e239319239432%_
                            _%hd239320239435%_
                            _%tl239321239437%_
                            _%e239322239440%_
                            _%hd239323239443%_
                            _%tl239324239445%_
                            _%e239325239448%_
                            _%hd239326239451%_
                            _%tl239327239453%_
                            _%e239328239456%_
                            _%hd239329239459%_
                            _%tl239330239461%_
                            _%e239331239464%_
                            _%hd239332239467%_
                            _%tl239333239469%_
                            _%e239334239472%_
                            _%hd239335239475%_
                            _%tl239336239477%_
                            _%e239337239480%_
                            _%hd239338239483%_
                            _%tl239339239485%_
                            _%e239340239488%_
                            _%hd239341239491%_
                            _%tl239342239493%_)
                     (let ((_%g239312239496%_ _%hd239341239491%_)
                           (_%g239313239497%_ _%hd239338239483%_)
                           (_%g239314239498%_ _%hd239335239475%_)
                           (_%g239315239499%_ _%hd239332239467%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g239315239499%_ 'not))
                           (_%__kont243721243722%_
                            _%g239312239496%_
                            _%g239313239497%_
                            _%g239314239498%_
                            _%g239315239499%_)
                           (_%__kont243723243724%_
                            _%hd239341239491%_
                            _%hd239338239483%_
                            _%hd239320239435%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx243715243716%_))
                  (let ((_%e239257239746%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx243715243716%_))))
                    (let ((_%tl239259239751%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e239257239746%_)))
                          (_%hd239258239749%_
                           (let ()
                             (declare (not safe))
                             (##car _%e239257239746%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl239259239751%_))
                          (let ((_%e239260239754%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl239259239751%_))))
                            (let ((_%tl239262239759%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e239260239754%_)))
                                  (_%hd239261239757%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e239260239754%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd239261239757%_))
                                  (let ((_%e239263239762%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd239261239757%_))))
                                    (let ((_%tl239265239767%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e239263239762%_)))
                                          (_%hd239264239765%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e239263239762%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd239264239765%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd239264239765%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl239265239767%_))
                                                  (let ((_%e239266239770%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl239265239767%_))))
                                                    (let ((_%tl239268239775%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e239266239770%_)))
                                                          (_%hd239267239773%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e239266239770%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl239268239775%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl239262239759%_))
                      (let ((_%e239269239778%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl239262239759%_))))
                        (let ((_%tl239271239783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e239269239778%_)))
                              (_%hd239270239781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e239269239778%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl239271239783%_))
                              (let ((_%e239272239786%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl239271239783%_))))
                                (let ((_%tl239274239791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e239272239786%_)))
                                      (_%hd239273239789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e239272239786%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl239274239791%_))
                                      (_%__kont243717243718%_
                                       _%hd239273239789%_
                                       _%hd239270239781%_
                                       _%hd239267239773%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g239252239362%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g239252239362%_)))))
                      (let () (declare (not safe)) (_%g239252239362%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl239262239759%_))
                      (let ((_%e239352239383%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl239262239759%_))))
                        (let ((_%tl239354239388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e239352239383%_)))
                              (_%hd239353239386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e239352239383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl239354239388%_))
                              (let ((_%e239355239391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl239354239388%_))))
                                (let ((_%tl239357239396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e239355239391%_)))
                                      (_%hd239356239394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e239355239391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl239357239396%_))
                                      (_%__kont243723243724%_
                                       _%hd239356239394%_
                                       _%hd239353239386%_
                                       _%hd239261239757%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g239252239362%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g239252239362%_)))))
                      (let () (declare (not safe)) (_%g239252239362%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl239262239759%_))
                                                      (let ((_%e239352239383%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl239262239759%_))))
                (let ((_%tl239354239388%_
                       (let () (declare (not safe)) (##cdr _%e239352239383%_)))
                      (_%hd239353239386%_
                       (let ()
                         (declare (not safe))
                         (##car _%e239352239383%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl239354239388%_))
                      (let ((_%e239355239391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl239354239388%_))))
                        (let ((_%tl239357239396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e239355239391%_)))
                              (_%hd239356239394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e239355239391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl239357239396%_))
                              (_%__kont243723243724%_
                               _%hd239356239394%_
                               _%hd239353239386%_
                               _%hd239261239757%_)
                              (let ()
                                (declare (not safe))
                                (_%g239252239362%_)))))
                      (let () (declare (not safe)) (_%g239252239362%_)))))
              (let () (declare (not safe)) (_%g239252239362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd239264239765%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl239265239767%_))
                                                      (let ((_%e239288239556%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl239265239767%_))))
                (let ((_%tl239290239561%_
                       (let () (declare (not safe)) (##cdr _%e239288239556%_)))
                      (_%hd239289239559%_
                       (let ()
                         (declare (not safe))
                         (##car _%e239288239556%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd239289239559%_))
                      (let ((_%e239291239564%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd239289239559%_))))
                        (let ((_%tl239293239569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e239291239564%_)))
                              (_%hd239292239567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e239291239564%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd239292239567%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd239292239567%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl239293239569%_))
                                      (let ((_%e239294239572%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl239293239569%_))))
                                        (let ((_%tl239296239577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e239294239572%_)))
                                              (_%hd239295239575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e239294239572%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl239296239577%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl239290239561%_))
                                                  (let ((_%e239297239580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl239290239561%_))))
                                                    (let ((_%tl239299239585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e239297239580%_)))
                                                          (_%hd239298239583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e239297239580%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd239298239583%_))
                                                          (let ((_%e239300239588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd239298239583%_))))
                    (let ((_%tl239302239593%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e239300239588%_)))
                          (_%hd239301239591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e239300239588%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd239301239591%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd239301239591%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl239302239593%_))
                                  (let ((_%e239303239596%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl239302239593%_))))
                                    (let ((_%tl239305239601%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e239303239596%_)))
                                          (_%hd239304239599%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e239303239596%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl239305239601%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl239299239585%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl239262239759%_))
                                                  (let ((_%e239306239604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl239262239759%_))))
                                                    (let ((_%tl239308239609%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e239306239604%_)))
                                                          (_%hd239307239607%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e239306239604%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl239308239609%_))
                                                          (let ((_%e239309239612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl239308239609%_))))
                    (let ((_%tl239311239617%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e239309239612%_)))
                          (_%hd239310239615%_
                           (let ()
                             (declare (not safe))
                             (##car _%e239309239612%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl239311239617%_))
                          (_%__kont243719243720%_
                           _%hd239310239615%_
                           _%hd239307239607%_
                           _%hd239304239599%_
                           _%hd239295239575%_)
                          (let () (declare (not safe)) (_%g239252239362%_)))))
                  (let () (declare (not safe)) (_%g239252239362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g239252239362%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl239262239759%_))
                                                  (let ((_%e239352239383%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl239262239759%_))))
                                                    (let ((_%tl239354239388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e239352239383%_)))
                                                          (_%hd239353239386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e239352239383%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl239354239388%_))
                                                          (let ((_%e239355239391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl239354239388%_))))
                    (let ((_%tl239357239396%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e239355239391%_)))
                          (_%hd239356239394%_
                           (let ()
                             (declare (not safe))
                             (##car _%e239355239391%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl239357239396%_))
                          (_%__kont243723243724%_
                           _%hd239356239394%_
                           _%hd239353239386%_
                           _%hd239261239757%_)
                          (let () (declare (not safe)) (_%g239252239362%_)))))
                  (let () (declare (not safe)) (_%g239252239362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g239252239362%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl239299239585%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl239262239759%_))
                                                  (let ((_%e239337239480%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl239262239759%_))))
                                                    (let ((_%tl239339239485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e239337239480%_)))
                                                          (_%hd239338239483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e239337239480%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl239339239485%_))
                                                          (let ((_%e239340239488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl239339239485%_))))
                    (let ((_%tl239342239493%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e239340239488%_)))
                          (_%hd239341239491%_
                           (let ()
                             (declare (not safe))
                             (##car _%e239340239488%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl239342239493%_))
                          (_%__match243922243923%_
                           _%e239257239746%_
                           _%hd239258239749%_
                           _%tl239259239751%_
                           _%e239260239754%_
                           _%hd239261239757%_
                           _%tl239262239759%_
                           _%e239263239762%_
                           _%hd239264239765%_
                           _%tl239265239767%_
                           _%e239288239556%_
                           _%hd239289239559%_
                           _%tl239290239561%_
                           _%e239291239564%_
                           _%hd239292239567%_
                           _%tl239293239569%_
                           _%e239294239572%_
                           _%hd239295239575%_
                           _%tl239296239577%_
                           _%e239297239580%_
                           _%hd239298239583%_
                           _%tl239299239585%_
                           _%e239337239480%_
                           _%hd239338239483%_
                           _%tl239339239485%_
                           _%e239340239488%_
                           _%hd239341239491%_
                           _%tl239342239493%_)
                          (let () (declare (not safe)) (_%g239252239362%_)))))
                  (let () (declare (not safe)) (_%g239252239362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g239252239362%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl239262239759%_))
                                                  (let ((_%e239352239383%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl239262239759%_))))
                                                    (let ((_%tl239354239388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e239352239383%_)))
                                                          (_%hd239353239386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e239352239383%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl239354239388%_))
                                                          (let ((_%e239355239391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl239354239388%_))))
                    (let ((_%tl239357239396%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e239355239391%_)))
                          (_%hd239356239394%_
                           (let ()
                             (declare (not safe))
                             (##car _%e239355239391%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl239357239396%_))
                          (_%__kont243723243724%_
                           _%hd239356239394%_
                           _%hd239353239386%_
                           _%hd239261239757%_)
                          (let () (declare (not safe)) (_%g239252239362%_)))))
                  (let () (declare (not safe)) (_%g239252239362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g239252239362%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl239299239585%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl239262239759%_))
                                          (let ((_%e239337239480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl239262239759%_))))
                                            (let ((_%tl239339239485%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e239337239480%_)))
                                                  (_%hd239338239483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e239337239480%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl239339239485%_))
                                                  (let ((_%e239340239488%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl239339239485%_))))
                                                    (let ((_%tl239342239493%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e239340239488%_)))
                                                          (_%hd239341239491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e239340239488%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl239342239493%_))
                                                          (_%__match243922243923%_
                                                           _%e239257239746%_
                                                           _%hd239258239749%_
                                                           _%tl239259239751%_
                                                           _%e239260239754%_
                                                           _%hd239261239757%_
                                                           _%tl239262239759%_
                                                           _%e239263239762%_
                                                           _%hd239264239765%_
                                                           _%tl239265239767%_
                                                           _%e239288239556%_
                                                           _%hd239289239559%_
                                                           _%tl239290239561%_
                                                           _%e239291239564%_
                                                           _%hd239292239567%_
                                                           _%tl239293239569%_
                                                           _%e239294239572%_
                                                           _%hd239295239575%_
                                                           _%tl239296239577%_
                                                           _%e239297239580%_
                                                           _%hd239298239583%_
                                                           _%tl239299239585%_
                                                           _%e239337239480%_
                                                           _%hd239338239483%_
                                                           _%tl239339239485%_
                                                           _%e239340239488%_
                                                           _%hd239341239491%_
                                                           _%tl239342239493%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g239252239362%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g239252239362%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g239252239362%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl239262239759%_))
                                          (let ((_%e239352239383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl239262239759%_))))
                                            (let ((_%tl239354239388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e239352239383%_)))
                                                  (_%hd239353239386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e239352239383%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl239354239388%_))
                                                  (let ((_%e239355239391%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl239354239388%_))))
                                                    (let ((_%tl239357239396%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e239355239391%_)))
                                                          (_%hd239356239394%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e239355239391%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl239357239396%_))
                                                          (_%__kont243723243724%_
                                                           _%hd239356239394%_
                                                           _%hd239353239386%_
                                                           _%hd239261239757%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g239252239362%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g239252239362%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g239252239362%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl239299239585%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl239262239759%_))
                                      (let ((_%e239337239480%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl239262239759%_))))
                                        (let ((_%tl239339239485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e239337239480%_)))
                                              (_%hd239338239483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e239337239480%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl239339239485%_))
                                              (let ((_%e239340239488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl239339239485%_))))
                                                (let ((_%tl239342239493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e239340239488%_)))
                                                      (_%hd239341239491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e239340239488%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl239342239493%_))
                                                      (_%__match243922243923%_
                                                       _%e239257239746%_
                                                       _%hd239258239749%_
                                                       _%tl239259239751%_
                                                       _%e239260239754%_
                                                       _%hd239261239757%_
                                                       _%tl239262239759%_
                                                       _%e239263239762%_
                                                       _%hd239264239765%_
                                                       _%tl239265239767%_
                                                       _%e239288239556%_
                                                       _%hd239289239559%_
                                                       _%tl239290239561%_
                                                       _%e239291239564%_
                                                       _%hd239292239567%_
                                                       _%tl239293239569%_
                                                       _%e239294239572%_
                                                       _%hd239295239575%_
                                                       _%tl239296239577%_
                                                       _%e239297239580%_
                                                       _%hd239298239583%_
                                                       _%tl239299239585%_
                                                       _%e239337239480%_
                                                       _%hd239338239483%_
                                                       _%tl239339239485%_
                                                       _%e239340239488%_
                                                       _%hd239341239491%_
                                                       _%tl239342239493%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g239252239362%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g239252239362%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g239252239362%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl239262239759%_))
                                      (let ((_%e239352239383%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl239262239759%_))))
                                        (let ((_%tl239354239388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e239352239383%_)))
                                              (_%hd239353239386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e239352239383%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl239354239388%_))
                                              (let ((_%e239355239391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl239354239388%_))))
                                                (let ((_%tl239357239396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e239355239391%_)))
                                                      (_%hd239356239394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e239355239391%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl239357239396%_))
                                                      (_%__kont243723243724%_
                                                       _%hd239356239394%_
                                                       _%hd239353239386%_
                                                       _%hd239261239757%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g239252239362%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g239252239362%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g239252239362%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl239299239585%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl239262239759%_))
                                  (let ((_%e239337239480%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl239262239759%_))))
                                    (let ((_%tl239339239485%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e239337239480%_)))
                                          (_%hd239338239483%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e239337239480%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl239339239485%_))
                                          (let ((_%e239340239488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl239339239485%_))))
                                            (let ((_%tl239342239493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e239340239488%_)))
                                                  (_%hd239341239491%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e239340239488%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl239342239493%_))
                                                  (_%__match243922243923%_
                                                   _%e239257239746%_
                                                   _%hd239258239749%_
                                                   _%tl239259239751%_
                                                   _%e239260239754%_
                                                   _%hd239261239757%_
                                                   _%tl239262239759%_
                                                   _%e239263239762%_
                                                   _%hd239264239765%_
                                                   _%tl239265239767%_
                                                   _%e239288239556%_
                                                   _%hd239289239559%_
                                                   _%tl239290239561%_
                                                   _%e239291239564%_
                                                   _%hd239292239567%_
                                                   _%tl239293239569%_
                                                   _%e239294239572%_
                                                   _%hd239295239575%_
                                                   _%tl239296239577%_
                                                   _%e239297239580%_
                                                   _%hd239298239583%_
                                                   _%tl239299239585%_
                                                   _%e239337239480%_
                                                   _%hd239338239483%_
                                                   _%tl239339239485%_
                                                   _%e239340239488%_
                                                   _%hd239341239491%_
                                                   _%tl239342239493%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g239252239362%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g239252239362%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g239252239362%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl239262239759%_))
                                  (let ((_%e239352239383%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl239262239759%_))))
                                    (let ((_%tl239354239388%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e239352239383%_)))
                                          (_%hd239353239386%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e239352239383%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl239354239388%_))
                                          (let ((_%e239355239391%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl239354239388%_))))
                                            (let ((_%tl239357239396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e239355239391%_)))
                                                  (_%hd239356239394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e239355239391%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl239357239396%_))
                                                  (_%__kont243723243724%_
                                                   _%hd239356239394%_
                                                   _%hd239353239386%_
                                                   _%hd239261239757%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g239252239362%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g239252239362%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g239252239362%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl239299239585%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl239262239759%_))
                          (let ((_%e239337239480%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl239262239759%_))))
                            (let ((_%tl239339239485%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e239337239480%_)))
                                  (_%hd239338239483%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e239337239480%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl239339239485%_))
                                  (let ((_%e239340239488%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl239339239485%_))))
                                    (let ((_%tl239342239493%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e239340239488%_)))
                                          (_%hd239341239491%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e239340239488%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl239342239493%_))
                                          (_%__match243922243923%_
                                           _%e239257239746%_
                                           _%hd239258239749%_
                                           _%tl239259239751%_
                                           _%e239260239754%_
                                           _%hd239261239757%_
                                           _%tl239262239759%_
                                           _%e239263239762%_
                                           _%hd239264239765%_
                                           _%tl239265239767%_
                                           _%e239288239556%_
                                           _%hd239289239559%_
                                           _%tl239290239561%_
                                           _%e239291239564%_
                                           _%hd239292239567%_
                                           _%tl239293239569%_
                                           _%e239294239572%_
                                           _%hd239295239575%_
                                           _%tl239296239577%_
                                           _%e239297239580%_
                                           _%hd239298239583%_
                                           _%tl239299239585%_
                                           _%e239337239480%_
                                           _%hd239338239483%_
                                           _%tl239339239485%_
                                           _%e239340239488%_
                                           _%hd239341239491%_
                                           _%tl239342239493%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g239252239362%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g239252239362%_)))))
                          (let () (declare (not safe)) (_%g239252239362%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl239262239759%_))
                          (let ((_%e239352239383%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl239262239759%_))))
                            (let ((_%tl239354239388%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e239352239383%_)))
                                  (_%hd239353239386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e239352239383%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl239354239388%_))
                                  (let ((_%e239355239391%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl239354239388%_))))
                                    (let ((_%tl239357239396%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e239355239391%_)))
                                          (_%hd239356239394%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e239355239391%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl239357239396%_))
                                          (_%__kont243723243724%_
                                           _%hd239356239394%_
                                           _%hd239353239386%_
                                           _%hd239261239757%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g239252239362%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g239252239362%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g239252239362%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl239262239759%_))
                                                      (let ((_%e239352239383%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl239262239759%_))))
                (let ((_%tl239354239388%_
                       (let () (declare (not safe)) (##cdr _%e239352239383%_)))
                      (_%hd239353239386%_
                       (let ()
                         (declare (not safe))
                         (##car _%e239352239383%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl239354239388%_))
                      (let ((_%e239355239391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl239354239388%_))))
                        (let ((_%tl239357239396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e239355239391%_)))
                              (_%hd239356239394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e239355239391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl239357239396%_))
                              (_%__kont243723243724%_
                               _%hd239356239394%_
                               _%hd239353239386%_
                               _%hd239261239757%_)
                              (let ()
                                (declare (not safe))
                                (_%g239252239362%_)))))
                      (let () (declare (not safe)) (_%g239252239362%_)))))
              (let () (declare (not safe)) (_%g239252239362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl239262239759%_))
                                                  (let ((_%e239352239383%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl239262239759%_))))
                                                    (let ((_%tl239354239388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e239352239383%_)))
                                                          (_%hd239353239386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e239352239383%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl239354239388%_))
                                                          (let ((_%e239355239391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl239354239388%_))))
                    (let ((_%tl239357239396%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e239355239391%_)))
                          (_%hd239356239394%_
                           (let ()
                             (declare (not safe))
                             (##car _%e239355239391%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl239357239396%_))
                          (_%__kont243723243724%_
                           _%hd239356239394%_
                           _%hd239353239386%_
                           _%hd239261239757%_)
                          (let () (declare (not safe)) (_%g239252239362%_)))))
                  (let () (declare (not safe)) (_%g239252239362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g239252239362%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl239262239759%_))
                                          (let ((_%e239352239383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl239262239759%_))))
                                            (let ((_%tl239354239388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e239352239383%_)))
                                                  (_%hd239353239386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e239352239383%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl239354239388%_))
                                                  (let ((_%e239355239391%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl239354239388%_))))
                                                    (let ((_%tl239357239396%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e239355239391%_)))
                                                          (_%hd239356239394%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e239355239391%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl239357239396%_))
                                                          (_%__kont243723243724%_
                                                           _%hd239356239394%_
                                                           _%hd239353239386%_
                                                           _%hd239261239757%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g239252239362%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g239252239362%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g239252239362%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl239262239759%_))
                                      (let ((_%e239352239383%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl239262239759%_))))
                                        (let ((_%tl239354239388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e239352239383%_)))
                                              (_%hd239353239386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e239352239383%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl239354239388%_))
                                              (let ((_%e239355239391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl239354239388%_))))
                                                (let ((_%tl239357239396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e239355239391%_)))
                                                      (_%hd239356239394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e239355239391%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl239357239396%_))
                                                      (_%__kont243723243724%_
                                                       _%hd239356239394%_
                                                       _%hd239353239386%_
                                                       _%hd239261239757%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g239252239362%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g239252239362%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g239252239362%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl239262239759%_))
                                  (let ((_%e239352239383%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl239262239759%_))))
                                    (let ((_%tl239354239388%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e239352239383%_)))
                                          (_%hd239353239386%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e239352239383%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl239354239388%_))
                                          (let ((_%e239355239391%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl239354239388%_))))
                                            (let ((_%tl239357239396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e239355239391%_)))
                                                  (_%hd239356239394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e239355239391%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl239357239396%_))
                                                  (_%__kont243723243724%_
                                                   _%hd239356239394%_
                                                   _%hd239353239386%_
                                                   _%hd239261239757%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g239252239362%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g239252239362%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g239252239362%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl239262239759%_))
                          (let ((_%e239352239383%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl239262239759%_))))
                            (let ((_%tl239354239388%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e239352239383%_)))
                                  (_%hd239353239386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e239352239383%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl239354239388%_))
                                  (let ((_%e239355239391%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl239354239388%_))))
                                    (let ((_%tl239357239396%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e239355239391%_)))
                                          (_%hd239356239394%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e239355239391%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl239357239396%_))
                                          (_%__kont243723243724%_
                                           _%hd239356239394%_
                                           _%hd239353239386%_
                                           _%hd239261239757%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g239252239362%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g239252239362%_)))))
                          (let () (declare (not safe)) (_%g239252239362%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl239262239759%_))
                  (let ((_%e239352239383%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl239262239759%_))))
                    (let ((_%tl239354239388%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e239352239383%_)))
                          (_%hd239353239386%_
                           (let ()
                             (declare (not safe))
                             (##car _%e239352239383%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl239354239388%_))
                          (let ((_%e239355239391%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl239354239388%_))))
                            (let ((_%tl239357239396%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e239355239391%_)))
                                  (_%hd239356239394%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e239355239391%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl239357239396%_))
                                  (_%__kont243723243724%_
                                   _%hd239356239394%_
                                   _%hd239353239386%_
                                   _%hd239261239757%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g239252239362%_)))))
                          (let () (declare (not safe)) (_%g239252239362%_)))))
                  (let () (declare (not safe)) (_%g239252239362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl239262239759%_))
                                                      (let ((_%e239352239383%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl239262239759%_))))
                (let ((_%tl239354239388%_
                       (let () (declare (not safe)) (##cdr _%e239352239383%_)))
                      (_%hd239353239386%_
                       (let ()
                         (declare (not safe))
                         (##car _%e239352239383%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl239354239388%_))
                      (let ((_%e239355239391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl239354239388%_))))
                        (let ((_%tl239357239396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e239355239391%_)))
                              (_%hd239356239394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e239355239391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl239357239396%_))
                              (_%__kont243723243724%_
                               _%hd239356239394%_
                               _%hd239353239386%_
                               _%hd239261239757%_)
                              (let ()
                                (declare (not safe))
                                (_%g239252239362%_)))))
                      (let () (declare (not safe)) (_%g239252239362%_)))))
              (let () (declare (not safe)) (_%g239252239362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl239262239759%_))
                                              (let ((_%e239352239383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl239262239759%_))))
                                                (let ((_%tl239354239388%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e239352239383%_)))
                                                      (_%hd239353239386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e239352239383%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl239354239388%_))
                                                      (let ((_%e239355239391%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl239354239388%_))))
                (let ((_%tl239357239396%_
                       (let () (declare (not safe)) (##cdr _%e239355239391%_)))
                      (_%hd239356239394%_
                       (let ()
                         (declare (not safe))
                         (##car _%e239355239391%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl239357239396%_))
                      (_%__kont243723243724%_
                       _%hd239356239394%_
                       _%hd239353239386%_
                       _%hd239261239757%_)
                      (let () (declare (not safe)) (_%g239252239362%_)))))
              (let () (declare (not safe)) (_%g239252239362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g239252239362%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl239262239759%_))
                                      (let ((_%e239352239383%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl239262239759%_))))
                                        (let ((_%tl239354239388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e239352239383%_)))
                                              (_%hd239353239386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e239352239383%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl239354239388%_))
                                              (let ((_%e239355239391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl239354239388%_))))
                                                (let ((_%tl239357239396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e239355239391%_)))
                                                      (_%hd239356239394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e239355239391%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl239357239396%_))
                                                      (_%__kont243723243724%_
                                                       _%hd239356239394%_
                                                       _%hd239353239386%_
                                                       _%hd239261239757%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g239252239362%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g239252239362%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g239252239362%_))))))
                          (let () (declare (not safe)) (_%g239252239362%_)))))
                  (let () (declare (not safe)) (_%g239252239362%_))))))))))
