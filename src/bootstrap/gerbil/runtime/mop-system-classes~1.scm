(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g141656_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx141139%_)
        (let* ((_%$%g141142141180%_
                (lambda (_%$%g141143141176%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g141143141176%_)))
               (_%$%g141141141347%_
                (lambda (_%$%g141143141184%_)
                  (if (gx#stx-pair? _%$%g141143141184%_)
                      (let ((_%$%e141148141187%_
                             (gx#syntax-e _%$%g141143141184%_)))
                        (let ((_%$%hd141149141191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e141148141187%_)))
                              (_%$%tl141150141194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e141148141187%_))))
                          (if (gx#stx-pair? _%$%tl141150141194%_)
                              (let ((_%$%e141151141197%_
                                     (gx#syntax-e _%$%tl141150141194%_)))
                                (let ((_%$%hd141152141201%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e141151141197%_)))
                                      (_%$%tl141153141204%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e141151141197%_))))
                                  (if (gx#stx-pair? _%$%hd141152141201%_)
                                      (let ((_%$%e141154141207%_
                                             (gx#syntax-e
                                              _%$%hd141152141201%_)))
                                        (let ((_%$%hd141155141211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e141154141207%_)))
                                              (_%$%tl141156141214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e141154141207%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl141156141214%_)
                                              (let ((_%$%e141157141217%_
                                                     (gx#syntax-e
                                                      _%$%tl141156141214%_)))
                                                (let ((_%$%hd141158141221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e141157141217%_)))
                                                      (_%$%tl141159141224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e141157141217%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl141159141224%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl141153141204%_)
                                                          (let ((_%$%e141160141227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl141153141204%_)))
                    (let ((_%$%hd141161141231%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e141160141227%_)))
                          (_%$%tl141162141234%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e141160141227%_))))
                      (if (gx#identifier? _%$%hd141161141231%_)
                          (if (gx#free-identifier=?
                               |[1]#_g141656_|
                               _%$%hd141161141231%_)
                              (if (gx#stx-pair? _%$%tl141162141234%_)
                                  (let ((_%$%e141163141237%_
                                         (gx#syntax-e _%$%tl141162141234%_)))
                                    (let ((_%$%hd141164141241%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e141163141237%_)))
                                          (_%$%tl141165141244%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e141163141237%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl141165141244%_)
                                          (let ((_g141657_
                                                 (gx#syntax-split-splice
                                                  _%$%tl141165141244%_
                                                  '0)))
                                            (begin
                                              (let ((_g141658_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g141657_)
                                                           (##values-length
                                                            _g141657_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g141658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g141658_)))
                                              (let ((_%$%target141166141247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141657_
                                                        0)))
                                                    (_%$%tl141168141250%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141657_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl141168141250%_)
                                                    (letrec ((_%$%loop141169141253%_
                                                              (lambda (_%$%hd141167141257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body141173141260%_)
                        (if (gx#stx-pair? _%$%hd141167141257%_)
                            (let ((_%$%e141170141262%_
                                   (gx#syntax-e _%$%hd141167141257%_)))
                              (let ((_%$%lp-hd141171141266%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e141170141262%_)))
                                    (_%$%lp-tl141172141269%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e141170141262%_))))
                                (_%$%loop141169141253%_
                                 _%$%lp-tl141172141269%_
                                 (cons _%$%lp-hd141171141266%_
                                       _%$%body141173141260%_))))
                            (let* ((_%$%body141174141272%_
                                    (reverse _%$%body141173141260%_))
                                   (_%$%g141308141316%_
                                    (lambda (_%$%g141309141312%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g141309141312%_)))
                                   (_%$%g141307141343%_
                                    (lambda (_%$%g141309141320%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%hd141155141211%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%$%g141309141320%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%$%hd141158141221%_ '())
                                              (let ((__tmp141659
                                                     (lambda (_%$%g141334141337%_
                                                              _%$%g141335141340%_)
                                                       (cons _%$%g141334141337%_
                                                             _%$%g141335141340%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp141659
                                                 '()
                                                 _%$%body141174141272%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g141307141343%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx141139%_
                                  _%$%hd141164141241%_))))))))
              (_%$%loop141169141253%_ _%$%target141166141247%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g141142141180%_
                                                     _%$%g141143141184%_)))))
                                          (_%$%g141142141180%_
                                           _%$%g141143141184%_))))
                                  (_%$%g141142141180%_ _%$%g141143141184%_))
                              (_%$%g141142141180%_ _%$%g141143141184%_))
                          (_%$%g141142141180%_ _%$%g141143141184%_))))
                  (_%$%g141142141180%_ _%$%g141143141184%_))
              (_%$%g141142141180%_ _%$%g141143141184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g141142141180%_
                                               _%$%g141143141184%_))))
                                      (_%$%g141142141180%_
                                       _%$%g141143141184%_))))
                              (_%$%g141142141180%_ _%$%g141143141184%_))))
                      (_%$%g141142141180%_ _%$%g141143141184%_)))))
          (_%$%g141141141347%_ _%stx141139%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx141352%_)
        (let* ((_%$%g141356141376%_
                (lambda (_%$%g141357141372%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g141357141372%_)))
               (_%$%g141355141445%_
                (lambda (_%$%g141357141380%_)
                  (if (gx#stx-pair? _%$%g141357141380%_)
                      (let ((_%$%e141359141383%_
                             (gx#syntax-e _%$%g141357141380%_)))
                        (let ((_%$%hd141360141387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e141359141383%_)))
                              (_%$%tl141361141390%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e141359141383%_))))
                          (if (gx#stx-pair/null? _%$%tl141361141390%_)
                              (let ((_g141660_
                                     (gx#syntax-split-splice
                                      _%$%tl141361141390%_
                                      '0)))
                                (begin
                                  (let ((_g141661_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g141660_)
                                               (##values-length _g141660_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g141661_ 2)))
                                        (error "Context expects 2 values"
                                               _g141661_)))
                                  (let ((_%$%target141362141393%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g141660_ 0)))
                                        (_%$%tl141364141396%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g141660_ 1))))
                                    (if (gx#stx-null? _%$%tl141364141396%_)
                                        (letrec ((_%$%loop141365141399%_
                                                  (lambda (_%$%hd141363141403%_
                                                           _%$%t141369141406%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd141363141403%_)
                                                        (let ((_%$%e141366141408%_
                                                               (gx#syntax-e
                                                                _%$%hd141363141403%_)))
                                                          (let ((_%$%lp-hd141367141412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e141366141408%_)))
                        (_%$%lp-tl141368141415%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e141366141408%_))))
                    (_%$%loop141365141399%_
                     _%$%lp-tl141368141415%_
                     (cons _%$%lp-hd141367141412%_ _%$%t141369141406%_))))
                (let ((_%$%t141370141418%_ (reverse _%$%t141369141406%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp141663
                                     (lambda (_%$%g141436141439%_
                                              _%$%g141437141442%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%$%g141436141439%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g141437141442%_)))
                                    (__tmp141662
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp141663
                                 __tmp141662
                                 _%$%t141370141418%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop141365141399%_
                                           _%$%target141362141393%_
                                           '()))
                                        (_%$%g141356141376%_
                                         _%$%g141357141380%_)))))
                              (_%$%g141356141376%_ _%$%g141357141380%_))))
                      (_%$%g141356141376%_ _%$%g141357141380%_)))))
          (_%$%g141355141445%_ _%$stx141352%_))))))
