(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27408_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24878%_)
        (letrec ((_%body-opt?24881%_
                  (lambda (_%key24884%_)
                    (let ((__tmp27330 (gx#stx-e _%key24884%_)))
                      (declare (not safe))
                      (##memq __tmp27330
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:))))))
          (gx#stx-plist? _%stx24878%_ _%body-opt?24881%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22644%_
               _%id22646%_
               _%super-ref22647%_
               _%slots22648%_
               _%body22649%_)
        (letrec ((_%wrap22651%_
                  (lambda (_%e-stx24875%_)
                    (gx#stx-wrap-source
                     _%e-stx24875%_
                     (gx#stx-source _%stx22644%_))))
                 (_%make-id22653%_
                  (lambda _%args24872%_
                    (apply gx#stx-identifier _%id22646%_ _%args24872%_)))
                 (_%get-mixin-slots22654%_
                  (lambda (_%super24842%_ _%slots24844%_)
                    (letrec* ((_%tab24846%_ (make-hash-table-eq))
                              (_%dedup24848%_
                               (lambda (_%mixins24859%_)
                                 (let _%lp24862%_ ((_%rest24865%_
                                                    _%mixins24859%_)
                                                   (_%r24867%_ '()))
                                   (if (let ()
                                         (declare (not safe))
                                         (pair? _%rest24865%_))
                                       (let ((_%slot24869%_
                                              (car _%rest24865%_)))
                                         (if (hash-get
                                              _%tab24846%_
                                              _%slot24869%_)
                                             (let ((__tmp27331
                                                    (cdr _%rest24865%_)))
                                               (declare (not safe))
                                               (_%lp24862%_
                                                __tmp27331
                                                _%r24867%_))
                                             (begin
                                               (hash-put!
                                                _%tab24846%_
                                                _%slot24869%_
                                                '#t)
                                               (let ((__tmp27333
                                                      (cdr _%rest24865%_))
                                                     (__tmp27332
                                                      (cons _%slot24869%_
                                                            _%r24867%_)))
                                                 (declare (not safe))
                                                 (_%lp24862%_
                                                  __tmp27333
                                                  __tmp27332)))))
                                       (reverse _%r24867%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24850%_)
                         (hash-put! _%tab24846%_ (gx#stx-e _%slot24850%_) '#t))
                       _%slots24844%_)
                      (if (let () (declare (not safe)) (not _%super24842%_))
                          (let () '())
                          (if (gx#identifier? _%super24842%_)
                              (let ((__tmp27334
                                     (let ()
                                       (declare (not safe))
                                       (_%get-mixin-slots-r22655%_
                                        _%super24842%_))))
                                (declare (not safe))
                                (_%dedup24848%_ __tmp27334))
                              (let ((__tmp27335
                                     (concatenate
                                      (map _%get-mixin-slots-r22655%_
                                           _%super24842%_))))
                                (declare (not safe))
                                (_%dedup24848%_ __tmp27335)))))))
                 (_%get-mixin-slots-r22655%_
                  (lambda (_%type-id24836%_)
                    (let ((_%info24839%_
                           (gx#syntax-local-value _%type-id24836%_)))
                      (let ((__tmp27337
                             (let ((__obj27113 _%info24839%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27113
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27113
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27113
                                    'slots))))
                            (__tmp27336
                             (concatenate
                              (map _%get-mixin-slots-r22655%_
                                   (let ((__obj27114 _%info24839%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27114
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27114
                                            '3
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27114
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27337 __tmp27336))))))
          (gx#check-duplicate-identifiers _%slots22648%_ _%stx22644%_)
          (let* ((_%name22657%_ (symbol->string (gx#stx-e _%id22646%_)))
                 (_%super22660%_
                  (map gx#syntax-local-value _%super-ref22647%_))
                 (_%struct?22663%_ (gx#stx-getq 'struct: _%body22649%_))
                 (_%g2266622674%_
                  (lambda (_%g2266722670%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2266722670%_)))
                 (_%g2266524832%_
                  (lambda (_%g2266722678%_)
                    ((lambda (_%L22681%_)
                       (let ()
                         (let* ((_%g2269722705%_
                                 (lambda (_%g2269822701%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2269822701%_)))
                                (_%g2269624828%_
                                 (lambda (_%g2269822709%_)
                                   ((lambda (_%L22712%_)
                                      (let ()
                                        (let* ((_%g2272522733%_
                                                (lambda (_%g2272622729%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2272622729%_)))
                                               (_%g2272424824%_
                                                (lambda (_%g2272622737%_)
                                                  ((lambda (_%L22740%_)
                                                     (let ()
                                                       (let* ((_%g2275322761%_
                                                               (lambda (_%g2275422757%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2275422757%_)))
                      (_%g2275224820%_
                       (lambda (_%g2275422765%_)
                         ((lambda (_%L22768%_)
                            (let ()
                              (let* ((_%g2278122789%_
                                      (lambda (_%g2278222785%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2278222785%_)))
                                     (_%g2278024816%_
                                      (lambda (_%g2278222793%_)
                                        ((lambda (_%L22796%_)
                                           (let ()
                                             (let* ((_%g2280922826%_
                                                     (lambda (_%g2281022822%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2281022822%_)))
                                                    (_%g2280824812%_
                                                     (lambda (_%g2281022830%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2281022830%_)
                                                           (let ((_g27338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2281022830%_ '0)))
                     (begin
                       (let ((_g27339_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27338_)
                                    (##vector-length _g27338_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27339_ 2)))
                             (error "Context expects 2 values" _g27339_)))
                       (let ((_%target2281222833%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27338_ 0)))
                             (_%tl2281422836%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27338_ 1))))
                         (if (gx#stx-null? _%tl2281422836%_)
                             (letrec ((_%loop2281522839%_
                                       (lambda (_%hd2281322843%_
                                                _%slot2281922846%_)
                                         (if (gx#stx-pair? _%hd2281322843%_)
                                             (let ((_%e2281622849%_
                                                    (gx#syntax-e
                                                     _%hd2281322843%_)))
                                               (let ((_%lp-hd2281722853%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2281622849%_)))
                                                     (_%lp-tl2281822856%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2281622849%_))))
                                                 (let ((__tmp27340
                                                        (cons _%lp-hd2281722853%_
                                                              _%slot2281922846%_)))
                                                   (declare (not safe))
                                                   (_%loop2281522839%_
                                                    _%lp-tl2281822856%_
                                                    __tmp27340))))
                                             (let ((_%slot2282022859%_
                                                    (reverse _%slot2281922846%_)))
                                               ((lambda (_%L22863%_)
                                                  (let ()
                                                    (let* ((_%g2288022897%_
                                                            (lambda (_%g2288122893%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2288122893%_)))
                                                           (_%g2287924803%_
                                                            (lambda (_%g2288122901%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2288122901%_)
                          (let ((_g27341_
                                 (gx#syntax-split-splice _%g2288122901%_ '0)))
                            (begin
                              (let ((_g27342_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27341_)
                                           (##vector-length _g27341_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27342_ 2)))
                                    (error "Context expects 2 values"
                                           _g27342_)))
                              (let ((_%target2288322904%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27341_ 0)))
                                    (_%tl2288522907%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27341_ 1))))
                                (if (gx#stx-null? _%tl2288522907%_)
                                    (letrec ((_%loop2288622910%_
                                              (lambda (_%hd2288422914%_
                                                       _%getf2289022917%_)
                                                (if (gx#stx-pair?
                                                     _%hd2288422914%_)
                                                    (let ((_%e2288722920%_
                                                           (gx#syntax-e
                                                            _%hd2288422914%_)))
                                                      (let ((_%lp-hd2288822924%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2288722920%_)))
                    (_%lp-tl2288922927%_
                     (let () (declare (not safe)) (##cdr _%e2288722920%_))))
                (let ((__tmp27343
                       (cons _%lp-hd2288822924%_ _%getf2289022917%_)))
                  (declare (not safe))
                  (_%loop2288622910%_ _%lp-tl2288922927%_ __tmp27343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%getf2289122930%_
                                                           (reverse _%getf2289022917%_)))
                                                      ((lambda (_%L22934%_)
                                                         (let ()
                                                           (let* ((_%g2295122968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2295222964%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2295222964%_)))
                          (_%g2295024794%_
                           (lambda (_%g2295222972%_)
                             (if (gx#stx-pair/null? _%g2295222972%_)
                                 (let ((_g27344_
                                        (gx#syntax-split-splice
                                         _%g2295222972%_
                                         '0)))
                                   (begin
                                     (let ((_g27345_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g27344_)
                                                  (##vector-length _g27344_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g27345_ 2)))
                                           (error "Context expects 2 values"
                                                  _g27345_)))
                                     (let ((_%target2295422975%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g27344_ 0)))
                                           (_%tl2295622978%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g27344_ 1))))
                                       (if (gx#stx-null? _%tl2295622978%_)
                                           (letrec ((_%loop2295722981%_
                                                     (lambda (_%hd2295522985%_
                                                              _%setf2296122988%_)
                                                       (if (gx#stx-pair?
                                                            _%hd2295522985%_)
                                                           (let ((_%e2295822991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%hd2295522985%_)))
                     (let ((_%lp-hd2295922995%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2295822991%_)))
                           (_%lp-tl2296022998%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2295822991%_))))
                       (let ((__tmp27346
                              (cons _%lp-hd2295922995%_ _%setf2296122988%_)))
                         (declare (not safe))
                         (_%loop2295722981%_ _%lp-tl2296022998%_ __tmp27346))))
                   (let ((_%setf2296223001%_ (reverse _%setf2296122988%_)))
                     ((lambda (_%L23005%_)
                        (let ()
                          (let* ((_%mixin-slots23022%_
                                  (let ()
                                    (declare (not safe))
                                    (_%get-mixin-slots22654%_
                                     _%super-ref22647%_
                                     _%slots22648%_)))
                                 (_%g2302523042%_
                                  (lambda (_%g2302623038%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2302623038%_)))
                                 (_%g2302424790%_
                                  (lambda (_%g2302623046%_)
                                    (if (gx#stx-pair/null? _%g2302623046%_)
                                        (let ((_g27347_
                                               (gx#syntax-split-splice
                                                _%g2302623046%_
                                                '0)))
                                          (begin
                                            (let ((_g27348_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g27347_)
                                                         (##vector-length
                                                          _g27347_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g27348_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g27348_)))
                                            (let ((_%target2302823049%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g27347_
                                                      0)))
                                                  (_%tl2303023052%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g27347_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl2303023052%_)
                                                  (letrec ((_%loop2303123055%_
                                                            (lambda (_%hd2302923059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%mixin-slot2303523062%_)
                      (if (gx#stx-pair? _%hd2302923059%_)
                          (let ((_%e2303223065%_
                                 (gx#syntax-e _%hd2302923059%_)))
                            (let ((_%lp-hd2303323069%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2303223065%_)))
                                  (_%lp-tl2303423072%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2303223065%_))))
                              (let ((__tmp27349
                                     (cons _%lp-hd2303323069%_
                                           _%mixin-slot2303523062%_)))
                                (declare (not safe))
                                (_%loop2303123055%_
                                 _%lp-tl2303423072%_
                                 __tmp27349))))
                          (let ((_%mixin-slot2303623075%_
                                 (reverse _%mixin-slot2303523062%_)))
                            ((lambda (_%L23079%_)
                               (let ()
                                 (let* ((_%g2309723114%_
                                         (lambda (_%g2309823110%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2309823110%_)))
                                        (_%g2309624781%_
                                         (lambda (_%g2309823118%_)
                                           (if (gx#stx-pair/null?
                                                _%g2309823118%_)
                                               (let ((_g27350_
                                                      (gx#syntax-split-splice
                                                       _%g2309823118%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g27351_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g27350_)
                        (##vector-length _g27350_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g27351_ 2)))
                 (error "Context expects 2 values" _g27351_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2310023121%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g27350_
                                                             0)))
                                                         (_%tl2310223124%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g27350_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2310223124%_)
                                                         (letrec ((_%loop2310323127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2310123131%_ _%mixin-getf2310723134%_)
                             (if (gx#stx-pair? _%hd2310123131%_)
                                 (let ((_%e2310423137%_
                                        (gx#syntax-e _%hd2310123131%_)))
                                   (let ((_%lp-hd2310523141%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2310423137%_)))
                                         (_%lp-tl2310623144%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2310423137%_))))
                                     (let ((__tmp27352
                                            (cons _%lp-hd2310523141%_
                                                  _%mixin-getf2310723134%_)))
                                       (declare (not safe))
                                       (_%loop2310323127%_
                                        _%lp-tl2310623144%_
                                        __tmp27352))))
                                 (let ((_%mixin-getf2310823147%_
                                        (reverse _%mixin-getf2310723134%_)))
                                   ((lambda (_%L23151%_)
                                      (let ()
                                        (let* ((_%g2316823185%_
                                                (lambda (_%g2316923181%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2316923181%_)))
                                               (_%g2316724772%_
                                                (lambda (_%g2316923189%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2316923189%_)
                                                      (let ((_g27353_
                                                             (gx#syntax-split-splice
                                                              _%g2316923189%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27353_)
                               (##vector-length _g27353_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27354_ 2)))
                        (error "Context expects 2 values" _g27354_)))
                  (let ((_%target2317123192%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27353_ 0)))
                        (_%tl2317323195%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27353_ 1))))
                    (if (gx#stx-null? _%tl2317323195%_)
                        (letrec ((_%loop2317423198%_
                                  (lambda (_%hd2317223202%_
                                           _%mixin-setf2317823205%_)
                                    (if (gx#stx-pair? _%hd2317223202%_)
                                        (let ((_%e2317523208%_
                                               (gx#syntax-e _%hd2317223202%_)))
                                          (let ((_%lp-hd2317623212%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2317523208%_)))
                                                (_%lp-tl2317723215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2317523208%_))))
                                            (let ((__tmp27355
                                                   (cons _%lp-hd2317623212%_
                                                         _%mixin-setf2317823205%_)))
                                              (declare (not safe))
                                              (_%loop2317423198%_
                                               _%lp-tl2317723215%_
                                               __tmp27355))))
                                        (let ((_%mixin-setf2317923218%_
                                               (reverse _%mixin-setf2317823205%_)))
                                          ((lambda (_%L23222%_)
                                             (let ()
                                               (let* ((_%g2323923256%_
                                                       (lambda (_%g2324023252%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2324023252%_)))
                                                      (_%g2323824755%_
                                                       (lambda (_%g2324023260%_)
                                                         (if (gx#stx-pair/null?
                                                              _%g2324023260%_)
                                                             (let ((_g27356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _%g2324023260%_ '0)))
                       (begin
                         (let ((_g27357_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g27356_)
                                      (##vector-length _g27356_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g27357_ 2)))
                               (error "Context expects 2 values" _g27357_)))
                         (let ((_%target2324223263%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27356_ 0)))
                               (_%tl2324423266%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27356_ 1))))
                           (if (gx#stx-null? _%tl2324423266%_)
                               (letrec ((_%loop2324523269%_
                                         (lambda (_%hd2324323273%_
                                                  _%ugetf2324923276%_)
                                           (if (gx#stx-pair? _%hd2324323273%_)
                                               (let ((_%e2324623279%_
                                                      (gx#syntax-e
                                                       _%hd2324323273%_)))
                                                 (let ((_%lp-hd2324723283%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2324623279%_)))
                                                       (_%lp-tl2324823286%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2324623279%_))))
                                                   (let ((__tmp27358
                                                          (cons _%lp-hd2324723283%_
                                                                _%ugetf2324923276%_)))
                                                     (declare (not safe))
                                                     (_%loop2324523269%_
                                                      _%lp-tl2324823286%_
                                                      __tmp27358))))
                                               (let ((_%ugetf2325023289%_
                                                      (reverse _%ugetf2324923276%_)))
                                                 ((lambda (_%L23293%_)
                                                    (let ()
                                                      (let* ((_%g2331023327%_
                                                              (lambda (_%g2331123323%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2331123323%_)))
                     (_%g2330924738%_
                      (lambda (_%g2331123331%_)
                        (if (gx#stx-pair/null? _%g2331123331%_)
                            (let ((_g27359_
                                   (gx#syntax-split-splice
                                    _%g2331123331%_
                                    '0)))
                              (begin
                                (let ((_g27360_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g27359_)
                                             (##vector-length _g27359_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g27360_ 2)))
                                      (error "Context expects 2 values"
                                             _g27360_)))
                                (let ((_%target2331323334%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g27359_ 0)))
                                      (_%tl2331523337%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g27359_ 1))))
                                  (if (gx#stx-null? _%tl2331523337%_)
                                      (letrec ((_%loop2331623340%_
                                                (lambda (_%hd2331423344%_
                                                         _%usetf2332023347%_)
                                                  (if (gx#stx-pair?
                                                       _%hd2331423344%_)
                                                      (let ((_%e2331723350%_
                                                             (gx#syntax-e
                                                              _%hd2331423344%_)))
                                                        (let ((_%lp-hd2331823354%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2331723350%_)))
                      (_%lp-tl2331923357%_
                       (let () (declare (not safe)) (##cdr _%e2331723350%_))))
                  (let ((__tmp27361
                         (cons _%lp-hd2331823354%_ _%usetf2332023347%_)))
                    (declare (not safe))
                    (_%loop2331623340%_ _%lp-tl2331923357%_ __tmp27361))))
              (let ((_%usetf2332123360%_ (reverse _%usetf2332023347%_)))
                ((lambda (_%L23364%_)
                   (let ()
                     (let* ((_%g2338123398%_
                             (lambda (_%g2338223394%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2338223394%_)))
                            (_%g2338024721%_
                             (lambda (_%g2338223402%_)
                               (if (gx#stx-pair/null? _%g2338223402%_)
                                   (let ((_g27362_
                                          (gx#syntax-split-splice
                                           _%g2338223402%_
                                           '0)))
                                     (begin
                                       (let ((_g27363_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g27362_)
                                                    (##vector-length _g27362_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g27363_ 2)))
                                             (error "Context expects 2 values"
                                                    _g27363_)))
                                       (let ((_%target2338423405%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g27362_ 0)))
                                             (_%tl2338623408%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g27362_ 1))))
                                         (if (gx#stx-null? _%tl2338623408%_)
                                             (letrec ((_%loop2338723411%_
                                                       (lambda (_%hd2338523415%_
                                                                _%mixin-ugetf2339123418%_)
                                                         (if (gx#stx-pair?
                                                              _%hd2338523415%_)
                                                             (let ((_%e2338823421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd2338523415%_)))
                       (let ((_%lp-hd2338923425%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2338823421%_)))
                             (_%lp-tl2339023428%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2338823421%_))))
                         (let ((__tmp27364
                                (cons _%lp-hd2338923425%_
                                      _%mixin-ugetf2339123418%_)))
                           (declare (not safe))
                           (_%loop2338723411%_
                            _%lp-tl2339023428%_
                            __tmp27364))))
                     (let ((_%mixin-ugetf2339223431%_
                            (reverse _%mixin-ugetf2339123418%_)))
                       ((lambda (_%L23435%_)
                          (let ()
                            (let* ((_%g2345223469%_
                                    (lambda (_%g2345323465%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2345323465%_)))
                                   (_%g2345124704%_
                                    (lambda (_%g2345323473%_)
                                      (if (gx#stx-pair/null? _%g2345323473%_)
                                          (let ((_g27365_
                                                 (gx#syntax-split-splice
                                                  _%g2345323473%_
                                                  '0)))
                                            (begin
                                              (let ((_g27366_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g27365_)
                                                           (##vector-length
                                                            _g27365_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g27366_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g27366_)))
                                              (let ((_%target2345523476%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g27365_
                                                        0)))
                                                    (_%tl2345723479%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g27365_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl2345723479%_)
                                                    (letrec ((_%loop2345823482%_
                                                              (lambda (_%hd2345623486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%mixin-usetf2346223489%_)
                        (if (gx#stx-pair? _%hd2345623486%_)
                            (let ((_%e2345923492%_
                                   (gx#syntax-e _%hd2345623486%_)))
                              (let ((_%lp-hd2346023496%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2345923492%_)))
                                    (_%lp-tl2346123499%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2345923492%_))))
                                (let ((__tmp27367
                                       (cons _%lp-hd2346023496%_
                                             _%mixin-usetf2346223489%_)))
                                  (declare (not safe))
                                  (_%loop2345823482%_
                                   _%lp-tl2346123499%_
                                   __tmp27367))))
                            (let ((_%mixin-usetf2346323502%_
                                   (reverse _%mixin-usetf2346223489%_)))
                              ((lambda (_%L23506%_)
                                 (let ()
                                   (let* ((_%type-slots23541%_
                                           (if (gx#stx-null? _%slots22648%_)
                                               (let () '())
                                               (let ()
                                                 (cons 'slots:
                                                       (cons (begin
                                                               (gx#syntax-check-splice-targets
                                                                _%L23005%_
                                                                _%L22934%_
                                                                _%L22863%_)
                                                               (foldr (lambda (_%g2352623531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2352723534%_
                                       _%g2352823536%_
                                       _%g2352923538%_)
                                (cons (cons _%g2352823536%_
                                            (cons _%g2352723534%_
                                                  (cons _%g2352623531%_ '())))
                                      _%g2352923538%_))
                              '()
                              _%L23005%_
                              _%L22934%_
                              _%L22863%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%type-mixin-slots23562%_
                                           (if (gx#stx-null?
                                                _%mixin-slots23022%_)
                                               (let () '())
                                               (let ()
                                                 (cons 'mixin:
                                                       (cons (begin
                                                               (gx#syntax-check-splice-targets
                                                                _%L23222%_
                                                                _%L23151%_
                                                                _%L23079%_)
                                                               (foldr (lambda (_%g2354723552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2354823555%_
                                       _%g2354923557%_
                                       _%g2355023559%_)
                                (cons (cons _%g2354923557%_
                                            (cons _%g2354823555%_
                                                  (cons _%g2354723552%_ '())))
                                      _%g2355023559%_))
                              '()
                              _%L23222%_
                              _%L23151%_
                              _%L23079%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%type-name23569%_
                                           (cons 'name:
                                                 (cons (let ((_%$e23565%_
                                                              (gx#stx-getq
                                                               'name:
                                                               _%body22649%_)))
                                                         (if _%$e23565%_
                                                             _%$e23565%_
                                                             _%id22646%_))
                                                       '())))
                                          (_%type-id23576%_
                                           (cons 'id:
                                                 (cons (let ((_%$e23572%_
                                                              (gx#stx-getq
                                                               'id:
                                                               _%body22649%_)))
                                                         (if _%$e23572%_
                                                             _%$e23572%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                        _%L22681%_))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%type-constructor23591%_
                                           (let ((_%$e23587%_
                                                  (let ((_%e2357823580%_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _%body22649%_)))
                                                    (if _%e2357823580%_
                                                        (let ((_%e23584%_
                                                               _%e2357823580%_))
                                                          (cons 'constructor:
                                                                (cons _%e23584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _%$e23587%_ _%$e23587%_ '())))
                                          (_%properties23629%_
                                           (let* ((_%properties23594%_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _%body22649%_))
                                                       (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#t)
                     '())
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%properties23609%_
                                                   (let ((_%$e23597%_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'print:
                                                            _%body22649%_))))
                                                     (if _%$e23597%_
                                                         ((lambda (_%print23601%_)
                                                            (let ((_%print23604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (eq? _%print23601%_ '#t)
                               _%slots22648%_
                               _%print23601%_)))
                      (cons (cons 'print: _%print23604%_)
                            _%properties23594%_)))
                  _%$e23597%_)
                 (let () _%properties23594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%properties23624%_
                                                   (let ((_%$e23612%_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'equal:
                                                            _%body22649%_))))
                                                     (if _%$e23612%_
                                                         ((lambda (_%equal23616%_)
                                                            (let ((_%equal23619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (eq? _%equal23616%_ '#t)
                               _%slots22648%_
                               _%equal23616%_)))
                      (cons (cons 'equal: _%equal23619%_)
                            _%properties23609%_)))
                  _%$e23612%_)
                 (let () _%properties23609%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%properties23624%_))
                                          (_%type-properties23670%_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%properties23629%_))
                                               '()
                                               (let* ((_%g2363223640%_
                                                       (lambda (_%g2363323636%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2363323636%_)))
                                                      (_%g2363123666%_
                                                       (lambda (_%g2363323644%_)
                                                         ((lambda (_%L23647%_)
                                                            (let ()
                                                              (cons 'properties:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L23647%_ '()))
                                  '()))))
                  _%g2363323644%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2363123666%_
                                                  _%properties23629%_))))
                                          (_%metaclass23682%_
                                           (let ((_%$e23673%_
                                                  (gx#stx-getq
                                                   'metaclass:
                                                   _%body22649%_)))
                                             (if _%$e23673%_
                                                 ((lambda (_%metaclass23677%_)
                                                    (if (gx#identifier?
                                                         _%metaclass23677%_)
                                                        _%metaclass23677%_
                                                        '#f))
                                                  _%$e23673%_)
                                                 (let () '#f))))
                                          (_%type-metaclass23685%_
                                           (if _%metaclass23682%_
                                               (cons 'metaclass:
                                                     (cons _%metaclass23682%_
                                                           '()))
                                               '()))
                                          (_%final?23688%_
                                           (gx#stx-e
                                            (gx#stx-getq
                                             'final:
                                             _%body22649%_)))
                                          (_%type-struct23691%_
                                           (cons 'struct:
                                                 (cons _%struct?22663%_ '())))
                                          (_%type-final23694%_
                                           (cons 'final:
                                                 (cons _%final?23688%_ '())))
                                          (_%g2369723714%_
                                           (lambda (_%g2369823710%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2369823710%_)))
                                          (_%g2369624700%_
                                           (lambda (_%g2369823718%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2369823718%_)
                                                 (let ((_g27368_
                                                        (gx#syntax-split-splice
                                                         _%g2369823718%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27369_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27368_)
                          (##vector-length _g27368_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27369_ 2)))
                   (error "Context expects 2 values" _g27369_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2370023721%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27368_
                                                               0)))
                                                           (_%tl2370223724%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27368_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2370223724%_)
                                                           (letrec ((_%loop2370323727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2370123731%_ _%type-body2370723734%_)
                               (if (gx#stx-pair? _%hd2370123731%_)
                                   (let ((_%e2370423737%_
                                          (gx#syntax-e _%hd2370123731%_)))
                                     (let ((_%lp-hd2370523741%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2370423737%_)))
                                           (_%lp-tl2370623744%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2370423737%_))))
                                       (let ((__tmp27370
                                              (cons _%lp-hd2370523741%_
                                                    _%type-body2370723734%_)))
                                         (declare (not safe))
                                         (_%loop2370323727%_
                                          _%lp-tl2370623744%_
                                          __tmp27370))))
                                   (let ((_%type-body2370823747%_
                                          (reverse _%type-body2370723734%_)))
                                     ((lambda (_%L23751%_)
                                        (let ()
                                          (let* ((_%g2377223780%_
                                                  (lambda (_%g2377323776%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2377323776%_)))
                                                 (_%g2377124688%_
                                                  (lambda (_%g2377323784%_)
                                                    ((lambda (_%L23787%_)
                                                       (let ()
                                                         (let* ((_%g2380023808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2380123804%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2380123804%_)))
                        (_%g2379924617%_
                         (lambda (_%g2380123812%_)
                           ((lambda (_%L23815%_)
                              (let ()
                                (let* ((_%g2382823836%_
                                        (lambda (_%g2382923832%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2382923832%_)))
                                       (_%g2382724582%_
                                        (lambda (_%g2382923840%_)
                                          ((lambda (_%L23843%_)
                                             (let ()
                                               (let* ((_%g2385623864%_
                                                       (lambda (_%g2385723860%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2385723860%_)))
                                                      (_%g2385524496%_
                                                       (lambda (_%g2385723868%_)
                                                         ((lambda (_%L23871%_)
                                                            (let ()
                                                              (let* ((_%g2388423892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2388523888%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2388523888%_)))
                             (_%g2388324484%_
                              (lambda (_%g2388523896%_)
                                ((lambda (_%L23899%_)
                                   (let ()
                                     (let* ((_%g2391223920%_
                                             (lambda (_%g2391323916%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g2391323916%_)))
                                            (_%g2391124480%_
                                             (lambda (_%g2391323924%_)
                                               ((lambda (_%L23927%_)
                                                  (let ()
                                                    (let* ((_%g2394023948%_
                                                            (lambda (_%g2394123944%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2394123944%_)))
                                                           (_%g2393924476%_
                                                            (lambda (_%g2394123952%_)
                                                              ((lambda (_%L23955%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_%g2396823976%_
                                   (lambda (_%g2396923972%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2396923972%_)))
                                  (_%g2396724441%_
                                   (lambda (_%g2396923980%_)
                                     ((lambda (_%L23983%_)
                                        (let ()
                                          (let* ((_%g2399624004%_
                                                  (lambda (_%g2399724000%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2399724000%_)))
                                                 (_%g2399524370%_
                                                  (lambda (_%g2399724008%_)
                                                    ((lambda (_%L24011%_)
                                                       (let ()
                                                         (let* ((_%g2402424032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2402524028%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2402524028%_)))
                        (_%g2402324366%_
                         (lambda (_%g2402524036%_)
                           ((lambda (_%L24039%_)
                              (let ()
                                (let* ((_%g2405224060%_
                                        (lambda (_%g2405324056%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2405324056%_)))
                                       (_%g2405124362%_
                                        (lambda (_%g2405324064%_)
                                          ((lambda (_%L24067%_)
                                             (let ()
                                               (let* ((_%g2408024088%_
                                                       (lambda (_%g2408124084%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2408124084%_)))
                                                      (_%g2407924358%_
                                                       (lambda (_%g2408124092%_)
                                                         ((lambda (_%L24095%_)
                                                            (let ()
                                                              (let* ((_%g2410824116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2410924112%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2410924112%_)))
                             (_%g2410724332%_
                              (lambda (_%g2410924120%_)
                                ((lambda (_%L24123%_)
                                   (let ()
                                     (let* ((_%g2413624144%_
                                             (lambda (_%g2413724140%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g2413724140%_)))
                                            (_%g2413524306%_
                                             (lambda (_%g2413724148%_)
                                               ((lambda (_%L24151%_)
                                                  (let ()
                                                    (let* ((_%g2416424172%_
                                                            (lambda (_%g2416524168%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2416524168%_)))
                                                           (_%g2416324280%_
                                                            (lambda (_%g2416524176%_)
                                                              ((lambda (_%L24179%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_%g2419224200%_
                                   (lambda (_%g2419324196%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2419324196%_)))
                                  (_%g2419124254%_
                                   (lambda (_%g2419324204%_)
                                     ((lambda (_%L24207%_)
                                        (let ()
                                          (let* ((_%g2422024228%_
                                                  (lambda (_%g2422124224%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2422124224%_)))
                                                 (_%g2421924250%_
                                                  (lambda (_%g2422124232%_)
                                                    ((lambda (_%L24235%_)
                                                       (let ((__tmp27371
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin)
                            (cons _%L23787%_ (cons _%L24235%_ '())))))
                 (declare (not safe))
                 (_%wrap22651%_ __tmp27371)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2422124232%_)))
                                                 (__tmp27372
                                                  (let ((__tmp27373
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'defsyntax)
                                                               (cons _%L22681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-class-type-info)
                                         (cons 'id:
                                               (cons _%L23815%_
                                                     (cons 'name:
                                                           (cons _%L23843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'slots:
                               (cons _%L23899%_
                                     (cons 'super:
                                           (cons _%L23871%_
                                                 (cons 'struct?:
                                                       (cons _%L23927%_
                                                             (cons 'final?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L23955%_
                                 (cons 'metaclass:
                                       (cons _%L23983%_
                                             (cons 'constructor-method:
                                                   (cons _%L24011%_
                                                         (cons 'type-descriptor:
                                                               (cons _%L24039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'constructor:
                                   (cons _%L24067%_
                                         (cons 'predicate:
                                               (cons _%L24095%_
                                                     (cons 'accessors:
                                                           (cons _%L24123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'mutators:
                               (cons _%L24151%_
                                     (cons 'unchecked-accessors:
                                           (cons _%L24179%_
                                                 (cons 'unchecked-mutators:
                                                       (cons _%L24207%_
                                                             '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%wrap22651%_
                                                     __tmp27373))))
                                            (declare (not safe))
                                            (_%g2421924250%_ __tmp27372))))
                                      _%g2419324204%_)))
                                  (__tmp27374
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%L23364%_
                                            _%L22863%_)
                                           (foldr (lambda (_%g2425724264%_
                                                           _%g2425824267%_
                                                           _%g2425924269%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2425824267%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2425724264%_ '()))
                                          '()))))
                  _%g2425924269%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L23506%_
                                                     _%L23079%_)
                                                    (foldr (lambda (_%g2426024272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2426124275%_
                            _%g2426224277%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2426124275%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2426024272%_
                                                               '()))
                                                   '()))))
                           _%g2426224277%_))
                   '()
                   _%L23506%_
                   _%L23079%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%L23364%_
                                                  _%L22863%_)))))
                             (declare (not safe))
                             (_%g2419124254%_ __tmp27374))))
                       _%g2416524176%_)))
                   (__tmp27375
                    (cons (gx#datum->syntax '#f '@list)
                          (begin
                            (gx#syntax-check-splice-targets
                             _%L23293%_
                             _%L22863%_)
                            (foldr (lambda (_%g2428324290%_
                                            _%g2428424293%_
                                            _%g2428524295%_)
                                     (cons (cons (gx#datum->syntax '#f '@list)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%g2428424293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons '::
                     (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _%g2428324290%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2428524295%_))
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _%L23435%_
                                      _%L23079%_)
                                     (foldr (lambda (_%g2428624298%_
                                                     _%g2428724301%_
                                                     _%g2428824303%_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%g2428724301%_ '()))
                        (cons '::
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g2428624298%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2428824303%_))
                                            '()
                                            _%L23435%_
                                            _%L23079%_))
                                   _%L23293%_
                                   _%L22863%_)))))
              (declare (not safe))
              (_%g2416324280%_ __tmp27375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g2413724148%_)))
                                            (__tmp27376
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L23005%_
                                                      _%L22863%_)
                                                     (foldr (lambda (_%g2430924316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2431024319%_
                             _%g2431124321%_)
                      (cons (cons (gx#datum->syntax '#f '@list)
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%g2431024319%_ '()))
                                        (cons '::
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _%g2430924316%_
                                                                '()))
                                                    '()))))
                            _%g2431124321%_))
                    (begin
                      (gx#syntax-check-splice-targets _%L23222%_ _%L23079%_)
                      (foldr (lambda (_%g2431224324%_
                                      _%g2431324327%_
                                      _%g2431424329%_)
                               (cons (cons (gx#datum->syntax '#f '@list)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _%g2431324327%_
                                                             '()))
                                                 (cons '::
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote-syntax)
                           (cons _%g2431224324%_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2431424329%_))
                             '()
                             _%L23222%_
                             _%L23079%_))
                    _%L23005%_
                    _%L22863%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (_%g2413524306%_ __tmp27376))))
                                 _%g2410924120%_)))
                             (__tmp27377
                              (cons (gx#datum->syntax '#f '@list)
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _%L22934%_
                                       _%L22863%_)
                                      (foldr (lambda (_%g2433524342%_
                                                      _%g2433624345%_
                                                      _%g2433724347%_)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%g2433624345%_ '()))
                         (cons '::
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _%g2433524342%_ '()))
                                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2433724347%_))
                                             (begin
                                               (gx#syntax-check-splice-targets
                                                _%L23151%_
                                                _%L23079%_)
                                               (foldr (lambda (_%g2433824350%_
                                                               _%g2433924353%_
                                                               _%g2434024355%_)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@list)
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%g2433924353%_ '()))
                                  (cons '::
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax)
                                                    (cons _%g2433824350%_ '()))
                                              '()))))
                      _%g2434024355%_))
              '()
              _%L23151%_
              _%L23079%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%L22934%_
                                             _%L22863%_)))))
                        (declare (not safe))
                        (_%g2410724332%_ __tmp27377))))
                  _%g2408124092%_)))
              (__tmp27378
               (cons (gx#datum->syntax '#f 'quote-syntax)
                     (cons _%L22768%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2407924358%_
                                                  __tmp27378))))
                                           _%g2405324064%_)))
                                       (__tmp27379
                                        (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _%L22740%_ '()))))
                                  (declare (not safe))
                                  (_%g2405124362%_ __tmp27379))))
                            _%g2402524036%_)))
                        (__tmp27380
                         (cons (gx#datum->syntax '#f 'quote-syntax)
                               (cons _%L22712%_ '()))))
                   (declare (not safe))
                   (_%g2402324366%_ __tmp27380))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2399724008%_)))
                                                 (__tmp27381
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (null? _%type-constructor23591%_))
                                                      '#f
                                                      (let* ((_%g2437424389%_
                                                              (lambda (_%g2437524385%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2437524385%_)))
                     (_%g2437324437%_
                      (lambda (_%g2437524393%_)
                        (if (gx#stx-pair? _%g2437524393%_)
                            (let ((_%e2437924396%_
                                   (gx#syntax-e _%g2437524393%_)))
                              (let ((_%hd2437824400%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2437924396%_)))
                                    (_%tl2437724403%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2437924396%_))))
                                (if (gx#stx-datum? _%hd2437824400%_)
                                    (let ((_%e2438024406%_
                                           (gx#stx-e _%hd2437824400%_)))
                                      (if (equal? _%e2438024406%_
                                                  'constructor:)
                                          (if (gx#stx-pair? _%tl2437724403%_)
                                              (let ((_%e2438324410%_
                                                     (gx#syntax-e
                                                      _%tl2437724403%_)))
                                                (let ((_%hd2438224414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2438324410%_)))
                                                      (_%tl2438124417%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2438324410%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2438124417%_)
                                                      ((lambda (_%L24420%_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%L24420%_ '()))))
               _%hd2438224414%_)
              (let ()
                (declare (not safe))
                (_%g2437424389%_ _%g2437524393%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g2437424389%_
                                                 _%g2437524393%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g2437424389%_
                                             _%g2437524393%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2437424389%_ _%g2437524393%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2437424389%_ _%g2437524393%_))))))
                (declare (not safe))
                (_%g2437324437%_ _%type-constructor23591%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_%g2399524370%_ __tmp27381))))
                                      _%g2396923980%_)))
                                  (__tmp27382
                                   (if _%metaclass23682%_
                                       (let* ((_%g2444524453%_
                                               (lambda (_%g2444624449%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2444624449%_)))
                                              (_%g2444424472%_
                                               (lambda (_%g2444624457%_)
                                                 ((lambda (_%L24460%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quote-syntax)
                                                            (cons _%L24460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2444624457%_))))
                                         (declare (not safe))
                                         (_%g2444424472%_ _%metaclass23682%_))
                                       '#f)))
                             (declare (not safe))
                             (_%g2396724441%_ __tmp27382))))
                       _%g2394123952%_))))
              (declare (not safe))
              (_%g2393924476%_ _%final?23688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g2391323924%_))))
                                       (declare (not safe))
                                       (_%g2391124480%_ _%struct?22663%_))))
                                 _%g2388523896%_)))
                             (__tmp27383
                              (cons (gx#datum->syntax '#f 'quote)
                                    (cons (foldr (lambda (_%g2448724490%_
                                                          _%g2448824493%_)
                                                   (cons _%g2448724490%_
                                                         _%g2448824493%_))
                                                 '()
                                                 _%L22863%_)
                                          '()))))
                        (declare (not safe))
                        (_%g2388324484%_ __tmp27383))))
                  _%g2385723868%_)))
              (__tmp27384
               (let* ((_%g2450024517%_
                       (lambda (_%g2450124513%_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2450124513%_)))
                      (_%g2449924578%_
                       (lambda (_%g2450124521%_)
                         (if (gx#stx-pair/null? _%g2450124521%_)
                             (let ((_g27385_
                                    (gx#syntax-split-splice
                                     _%g2450124521%_
                                     '0)))
                               (begin
                                 (let ((_g27386_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27385_)
                                              (##vector-length _g27385_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27386_ 2)))
                                       (error "Context expects 2 values"
                                              _g27386_)))
                                 (let ((_%target2450324524%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27385_ 0)))
                                       (_%tl2450524527%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27385_ 1))))
                                   (if (gx#stx-null? _%tl2450524527%_)
                                       (letrec ((_%loop2450624530%_
                                                 (lambda (_%hd2450424534%_
                                                          _%super-id2451024537%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2450424534%_)
                                                       (let ((_%e2450724540%_
                                                              (gx#syntax-e
                                                               _%hd2450424534%_)))
                                                         (let ((_%lp-hd2450824544%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2450724540%_)))
                       (_%lp-tl2450924547%_
                        (let () (declare (not safe)) (##cdr _%e2450724540%_))))
                   (let ((__tmp27387
                          (cons _%lp-hd2450824544%_ _%super-id2451024537%_)))
                     (declare (not safe))
                     (_%loop2450624530%_ _%lp-tl2450924547%_ __tmp27387))))
               (let ((_%super-id2451124550%_ (reverse _%super-id2451024537%_)))
                 ((lambda (_%L24554%_)
                    (let ()
                      (cons (gx#datum->syntax '#f '@list)
                            (foldr (lambda (_%g2456924572%_ _%g2457024575%_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _%g2456924572%_ '()))
                                           _%g2457024575%_))
                                   '()
                                   _%L24554%_))))
                  _%super-id2451124550%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_%loop2450624530%_
                                            _%target2450324524%_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_%g2450024517%_ _%g2450124521%_))))))
                             (let ()
                               (declare (not safe))
                               (_%g2450024517%_ _%g2450124521%_))))))
                 (declare (not safe))
                 (_%g2449924578%_ _%super-ref22647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2385524496%_
                                                  __tmp27384))))
                                           _%g2382923840%_)))
                                       (__tmp27388
                                        (let* ((_%g2458624594%_
                                                (lambda (_%g2458724590%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2458724590%_)))
                                               (_%g2458524613%_
                                                (lambda (_%g2458724598%_)
                                                  ((lambda (_%L24601%_)
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L24601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2458724598%_)))
                                               (__tmp27389
                                                (cadr _%type-name23569%_)))
                                          (declare (not safe))
                                          (_%g2458524613%_ __tmp27389))))
                                  (declare (not safe))
                                  (_%g2382724582%_ __tmp27388))))
                            _%g2380123812%_)))
                        (__tmp27390
                         (let* ((_%g2462124636%_
                                 (lambda (_%g2462224632%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2462224632%_)))
                                (_%g2462024684%_
                                 (lambda (_%g2462224640%_)
                                   (if (gx#stx-pair? _%g2462224640%_)
                                       (let ((_%e2462624643%_
                                              (gx#syntax-e _%g2462224640%_)))
                                         (let ((_%hd2462524647%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2462624643%_)))
                                               (_%tl2462424650%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2462624643%_))))
                                           (if (gx#stx-datum? _%hd2462524647%_)
                                               (let ((_%e2462724653%_
                                                      (gx#stx-e
                                                       _%hd2462524647%_)))
                                                 (if (equal? _%e2462724653%_
                                                             'id:)
                                                     (if (gx#stx-pair?
                                                          _%tl2462424650%_)
                                                         (let ((_%e2463024657%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl2462424650%_)))
                   (let ((_%hd2462924661%_
                          (let ()
                            (declare (not safe))
                            (##car _%e2463024657%_)))
                         (_%tl2462824664%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e2463024657%_))))
                     (if (gx#stx-null? _%tl2462824664%_)
                         ((lambda (_%L24667%_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%L24667%_ '()))))
                          _%hd2462924661%_)
                         (let ()
                           (declare (not safe))
                           (_%g2462124636%_ _%g2462224640%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g2462124636%_ _%g2462224640%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g2462124636%_
                                                        _%g2462224640%_))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g2462124636%_
                                                  _%g2462224640%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g2462124636%_ _%g2462224640%_))))))
                           (declare (not safe))
                           (_%g2462024684%_ _%type-id23576%_))))
                   (declare (not safe))
                   (_%g2379924617%_ __tmp27390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2377323784%_)))
                                                 (__tmp27391
                                                  (let ((__tmp27392
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'defclass-type)
                                                               (cons _%L22712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L22796%_
                                   (cons _%L22740%_
                                         (cons _%L22768%_
                                               (foldr (lambda (_%g2469124694%_
                                                               _%g2469224697%_)
                                                        (cons _%g2469124694%_
                                                              _%g2469224697%_))
                                                      '()
                                                      _%L23751%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%wrap22651%_
                                                     __tmp27392))))
                                            (declare (not safe))
                                            (_%g2377124688%_ __tmp27391))))
                                      _%type-body2370823747%_))))))
                     (let ()
                       (declare (not safe))
                       (_%loop2370323727%_ _%target2370023721%_ '())))
                   (let ()
                     (declare (not safe))
                     (_%g2369723714%_ _%g2369823718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g2369723714%_
                                                    _%g2369823718%_)))))
                                          (__tmp27393
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (foldr cons
                                             (foldr cons
                                                    (foldr cons
                                                           _%type-mixin-slots23562%_
                                                           _%type-slots23541%_)
                                                    _%type-properties23670%_)
                                             _%type-metaclass23685%_)
                                      _%type-final23694%_)
                               _%type-struct23691%_)
                        _%type-constructor23591%_)
                 _%type-name23569%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%type-id23576%_)))
                                     (declare (not safe))
                                     (_%g2369624700%_ __tmp27393))))
                               _%mixin-usetf2346323502%_))))))
              (let ()
                (declare (not safe))
                (_%loop2345823482%_ _%target2345523476%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2345223469%_
                                                       _%g2345323473%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g2345223469%_
                                             _%g2345323473%_)))))
                                   (__tmp27394
                                    (gx#stx-map
                                     (lambda (_%g2470724709%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%make-id22653%_
                                          '"&"
                                          _%g2470724709%_)))
                                     (foldr (lambda (_%g2471224715%_
                                                     _%g2471324718%_)
                                              (cons _%g2471224715%_
                                                    _%g2471324718%_))
                                            '()
                                            _%L23222%_))))
                              (declare (not safe))
                              (_%g2345124704%_ __tmp27394))))
                        _%mixin-ugetf2339223431%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%loop2338723411%_
                                                  _%target2338423405%_
                                                  '())))
                                             (let ()
                                               (declare (not safe))
                                               (_%g2338123398%_
                                                _%g2338223402%_))))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g2338123398%_ _%g2338223402%_)))))
                            (__tmp27395
                             (gx#stx-map
                              (lambda (_%g2472424726%_)
                                (let ()
                                  (declare (not safe))
                                  (_%make-id22653%_ '"&" _%g2472424726%_)))
                              (foldr (lambda (_%g2472924732%_ _%g2473024735%_)
                                       (cons _%g2472924732%_ _%g2473024735%_))
                                     '()
                                     _%L23151%_))))
                       (declare (not safe))
                       (_%g2338024721%_ __tmp27395))))
                 _%usetf2332123360%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_%loop2331623340%_
                                           _%target2331323334%_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_%g2331023327%_ _%g2331123331%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g2331023327%_ _%g2331123331%_)))))
                     (__tmp27396
                      (gx#stx-map
                       (lambda (_%g2474124743%_)
                         (let ()
                           (declare (not safe))
                           (_%make-id22653%_ '"&" _%g2474124743%_)))
                       (foldr (lambda (_%g2474624749%_ _%g2474724752%_)
                                (cons _%g2474624749%_ _%g2474724752%_))
                              '()
                              _%L23005%_))))
                (declare (not safe))
                (_%g2330924738%_ __tmp27396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%ugetf2325023289%_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_%loop2324523269%_
                                    _%target2324223263%_
                                    '())))
                               (let ()
                                 (declare (not safe))
                                 (_%g2323923256%_ _%g2324023260%_))))))
                     (let ()
                       (declare (not safe))
                       (_%g2323923256%_ _%g2324023260%_)))))
              (__tmp27397
               (gx#stx-map
                (lambda (_%g2475824760%_)
                  (let ()
                    (declare (not safe))
                    (_%make-id22653%_ '"&" _%g2475824760%_)))
                (foldr (lambda (_%g2476324766%_ _%g2476424769%_)
                         (cons _%g2476324766%_ _%g2476424769%_))
                       '()
                       _%L22934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2323824755%_
                                                  __tmp27397))))
                                           _%mixin-setf2317923218%_))))))
                          (let ()
                            (declare (not safe))
                            (_%loop2317423198%_ _%target2317123192%_ '())))
                        (let ()
                          (declare (not safe))
                          (_%g2316823185%_ _%g2316923189%_))))))
              (let ()
                (declare (not safe))
                (_%g2316823185%_ _%g2316923189%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp27398
                                                (gx#stx-map
                                                 (lambda (_%g2477524777%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%make-id22653%_
                                                      _%name22657%_
                                                      '"-"
                                                      _%g2477524777%_
                                                      '"-set!")))
                                                 _%mixin-slots23022%_)))
                                          (declare (not safe))
                                          (_%g2316724772%_ __tmp27398))))
                                    _%mixin-getf2310823147%_))))))
                   (let ()
                     (declare (not safe))
                     (_%loop2310323127%_ _%target2310023121%_ '())))
                 (let ()
                   (declare (not safe))
                   (_%g2309723114%_ _%g2309823118%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g2309723114%_
                                                  _%g2309823118%_)))))
                                        (__tmp27399
                                         (gx#stx-map
                                          (lambda (_%g2478424786%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%make-id22653%_
                                               _%name22657%_
                                               '"-"
                                               _%g2478424786%_)))
                                          _%mixin-slots23022%_)))
                                   (declare (not safe))
                                   (_%g2309624781%_ __tmp27399))))
                             _%mixin-slot2303623075%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop2303123055%_
                                                       _%target2302823049%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2302523042%_
                                                     _%g2302623046%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2302523042%_
                                           _%g2302623046%_))))))
                            (declare (not safe))
                            (_%g2302424790%_ _%mixin-slots23022%_))))
                      _%setf2296223001%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_%loop2295722981%_
                                                _%target2295422975%_
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_%g2295122968%_
                                              _%g2295222972%_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g2295122968%_ _%g2295222972%_)))))
                          (__tmp27400
                           (gx#stx-map
                            (lambda (_%g2479724799%_)
                              (let ()
                                (declare (not safe))
                                (_%make-id22653%_
                                 _%name22657%_
                                 '"-"
                                 _%g2479724799%_
                                 '"-set!")))
                            _%slots22648%_)))
                     (declare (not safe))
                     (_%g2295024794%_ __tmp27400))))
               _%getf2289122930%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop2288622910%_
                                         _%target2288322904%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2288022897%_ _%g2288122901%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g2288022897%_ _%g2288122901%_)))))
                   (__tmp27401
                    (gx#stx-map
                     (lambda (_%g2480624808%_)
                       (let ()
                         (declare (not safe))
                         (_%make-id22653%_
                          _%name22657%_
                          '"-"
                          _%g2480624808%_)))
                     _%slots22648%_)))
              (declare (not safe))
              (_%g2287924803%_ __tmp27401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%slot2282022859%_))))))
                               (let ()
                                 (declare (not safe))
                                 (_%loop2281522839%_
                                  _%target2281222833%_
                                  '())))
                             (let ()
                               (declare (not safe))
                               (_%g2280922826%_ _%g2281022830%_))))))
                   (let ()
                     (declare (not safe))
                     (_%g2280922826%_ _%g2281022830%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g2280824812%_
                                                _%slots22648%_))))
                                         _%g2278222793%_)))
                                     (__tmp27402
                                      (let ()
                                        (declare (not safe))
                                        (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                               _%super22660%_))))
                                (declare (not safe))
                                (_%g2278024816%_ __tmp27402))))
                          _%g2275422765%_)))
                      (__tmp27403
                       (let ()
                         (declare (not safe))
                         (_%make-id22653%_ _%name22657%_ '"?"))))
                 (declare (not safe))
                 (_%g2275224820%_ __tmp27403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2272622737%_)))
                                               (__tmp27404
                                                (let ()
                                                  (declare (not safe))
                                                  (_%make-id22653%_
                                                   '"make-"
                                                   _%name22657%_))))
                                          (declare (not safe))
                                          (_%g2272424824%_ __tmp27404))))
                                    _%g2269822709%_)))
                                (__tmp27405
                                 (let ()
                                   (declare (not safe))
                                   (_%make-id22653%_ _%name22657%_ '"::t"))))
                           (declare (not safe))
                           (_%g2269624828%_ __tmp27405))))
                     _%g2266722678%_))))
            (declare (not safe))
            (_%g2266524832%_ _%id22646%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24899%_)
        (let* ((_%g2490324922%_
                (lambda (_%g2490424918%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2490424918%_)))
               (_%g2490224979%_
                (lambda (_%g2490424926%_)
                  (if (gx#stx-pair? _%g2490424926%_)
                      (let ((_%e2491024929%_ (gx#syntax-e _%g2490424926%_)))
                        (let ((_%hd2490924933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2491024929%_)))
                              (_%tl2490824936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2491024929%_))))
                          (if (gx#stx-pair? _%tl2490824936%_)
                              (let ((_%e2491324939%_
                                     (gx#syntax-e _%tl2490824936%_)))
                                (let ((_%hd2491224943%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2491324939%_)))
                                      (_%tl2491124946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2491324939%_))))
                                  (if (gx#stx-pair? _%tl2491124946%_)
                                      (let ((_%e2491624949%_
                                             (gx#syntax-e _%tl2491124946%_)))
                                        (let ((_%hd2491524953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2491624949%_)))
                                              (_%tl2491424956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2491624949%_))))
                                          ((lambda (_%L24959%_
                                                    _%L24961%_
                                                    _%L24962%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%L24962%_
                                                         (cons _%L24961%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L24959%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2491424956%_
                                           _%hd2491524953%_
                                           _%hd2491224943%_)))
                                      (_%g2490324922%_ _%g2490424926%_))))
                              (_%g2490324922%_ _%g2490424926%_))))
                      (_%g2490324922%_ _%g2490424926%_)))))
          (_%g2490224979%_ _%$stx24899%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24983%_)
        (letrec ((_%generate24986%_
                  (lambda (_%hd25070%_ _%slots25072%_ _%body25073%_)
                    (let* ((_%__stx2683826839%_ _%hd25070%_)
                           (_%g2507625088%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2683826839%_))))
                      (let ((_%__kont2684126842%_
                             (lambda (_%L25116%_ _%L25118%_)
                               (let ((__tmp27406 (gx#syntax->list _%L25116%_)))
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                  _%stx24983%_
                                  _%L25118%_
                                  __tmp27406
                                  _%slots25072%_
                                  _%body25073%_))))
                            (_%__kont2684326844%_
                             (lambda ()
                               (if (gx#identifier? _%hd25070%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                      _%stx24983%_
                                      _%hd25070%_
                                      '()
                                      _%slots25072%_
                                      _%body25073%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _%stx24983%_
                                    _%hd25070%_)))))
                        (let ((_%__match2685126852%_
                               (lambda (_%e2508225106%_
                                        _%hd2508125110%_
                                        _%tl2508025113%_)
                                 (let ((_%L25116%_ _%tl2508025113%_)
                                       (_%L25118%_ _%hd2508125110%_))
                                   (if (and (gx#stx-list? _%L25116%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%L25116%_))
                                       (_%__kont2684126842%_
                                        _%L25116%_
                                        _%L25118%_)
                                       (_%__kont2684326844%_))))))
                          (if (gx#stx-pair? _%__stx2683826839%_)
                              (let ((_%e2508225106%_
                                     (gx#syntax-e _%__stx2683826839%_)))
                                (let ((_%tl2508025113%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2508225106%_)))
                                      (_%hd2508125110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2508225106%_))))
                                  (_%__match2685126852%_
                                   _%e2508225106%_
                                   _%hd2508125110%_
                                   _%tl2508025113%_)))
                              (_%__kont2684326844%_))))))))
          (let* ((_%g2498925008%_
                  (lambda (_%g2499025004%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2499025004%_)))
                 (_%g2498825066%_
                  (lambda (_%g2499025012%_)
                    (if (gx#stx-pair? _%g2499025012%_)
                        (let ((_%e2499625015%_ (gx#syntax-e _%g2499025012%_)))
                          (let ((_%hd2499525019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2499625015%_)))
                                (_%tl2499425022%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2499625015%_))))
                            (if (gx#stx-pair? _%tl2499425022%_)
                                (let ((_%e2499925025%_
                                       (gx#syntax-e _%tl2499425022%_)))
                                  (let ((_%hd2499825029%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2499925025%_)))
                                        (_%tl2499725032%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2499925025%_))))
                                    (if (gx#stx-pair? _%tl2499725032%_)
                                        (let ((_%e2500225035%_
                                               (gx#syntax-e _%tl2499725032%_)))
                                          (let ((_%hd2500125039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2500225035%_)))
                                                (_%tl2500025042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2500225035%_))))
                                            ((lambda (_%L25045%_
                                                      _%L25047%_
                                                      _%L25048%_)
                                               (if (and (gx#identifier-list?
                                                         _%L25047%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                           _%L25045%_)))
                                                   (_%generate24986%_
                                                    _%L25048%_
                                                    _%L25047%_
                                                    _%L25045%_)
                                                   (_%g2498925008%_
                                                    _%g2499025012%_)))
                                             _%tl2500025042%_
                                             _%hd2500125039%_
                                             _%hd2499825029%_)))
                                        (_%g2498925008%_ _%g2499025012%_))))
                                (_%g2498925008%_ _%g2499025012%_))))
                        (_%g2498925008%_ _%g2499025012%_)))))
            (_%g2498825066%_ _%stx24983%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25135%_)
        (letrec ((_%wrap25138%_
                  (lambda (_%e-stx25484%_)
                    (gx#stx-wrap-source
                     _%e-stx25484%_
                     (gx#stx-source _%stx25135%_))))
                 (_%method-opt?25140%_
                  (lambda (_%x25481%_)
                    (let ((__tmp27407 (gx#stx-e _%x25481%_)))
                      (declare (not safe))
                      (##memq __tmp27407 '(rebind:))))))
          (let* ((_%g2514225171%_
                  (lambda (_%g2514325167%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2514325167%_)))
                 (_%g2514125477%_
                  (lambda (_%g2514325175%_)
                    (if (gx#stx-pair? _%g2514325175%_)
                        (let ((_%e2515025178%_ (gx#syntax-e _%g2514325175%_)))
                          (let ((_%hd2514925182%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2515025178%_)))
                                (_%tl2514825185%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2515025178%_))))
                            (if (gx#stx-pair? _%tl2514825185%_)
                                (let ((_%e2515325188%_
                                       (gx#syntax-e _%tl2514825185%_)))
                                  (let ((_%hd2515225192%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2515325188%_)))
                                        (_%tl2515125195%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2515325188%_))))
                                    (if (gx#stx-pair? _%hd2515225192%_)
                                        (let ((_%e2515625198%_
                                               (gx#syntax-e _%hd2515225192%_)))
                                          (let ((_%hd2515525202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2515625198%_)))
                                                (_%tl2515425205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2515625198%_))))
                                            (if (gx#identifier?
                                                 _%hd2515525202%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27408_|
                                                     _%hd2515525202%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2515425205%_)
                                                        (let ((_%e2515925208%_
                                                               (gx#syntax-e
                                                                _%tl2515425205%_)))
                                                          (let ((_%hd2515825212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2515925208%_)))
                        (_%tl2515725215%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2515925208%_))))
                    (if (gx#stx-pair? _%tl2515725215%_)
                        (let ((_%e2516225218%_ (gx#syntax-e _%tl2515725215%_)))
                          (let ((_%hd2516125222%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2516225218%_)))
                                (_%tl2516025225%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2516225218%_))))
                            (if (gx#stx-null? _%tl2516025225%_)
                                (if (gx#stx-pair? _%tl2515125195%_)
                                    (let ((_%e2516525228%_
                                           (gx#syntax-e _%tl2515125195%_)))
                                      (let ((_%hd2516425232%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2516525228%_)))
                                            (_%tl2516325235%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2516525228%_))))
                                        ((lambda (_%L25238%_
                                                  _%L25240%_
                                                  _%L25241%_
                                                  _%L25242%_)
                                           (if (and (gx#identifier? _%L25242%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                       _%L25241%_))
                                                    (gx#stx-plist?
                                                     _%L25238%_
                                                     _%method-opt?25140%_))
                                               (let ()
                                                 (let* ((_%klass25269%_
                                                         (gx#syntax-local-value
                                                          _%L25241%_))
                                                        (_%rebind?25272%_
                                                         (gx#stx-e
                                                          (gx#stx-getq
                                                           'rebind:
                                                           _%L25238%_)))
                                                        (_%g2527525283%_
                                                         (lambda (_%g2527625279%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2527625279%_)))
                                                        (_%g2527425467%_
                                                         (lambda (_%g2527625287%_)
                                                           ((lambda (_%L25290%_)
                                                              (let ()
                                                                (let* ((_%g2530525313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g2530625309%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g2530625309%_)))
                               (_%g2530425463%_
                                (lambda (_%g2530625317%_)
                                  ((lambda (_%L25320%_)
                                     (let ()
                                       (let* ((_%g2533325341%_
                                               (lambda (_%g2533425337%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2533425337%_)))
                                              (_%g2533225459%_
                                               (lambda (_%g2533425345%_)
                                                 ((lambda (_%L25348%_)
                                                    (let ()
                                                      (let* ((_%g2536125369%_
                                                              (lambda (_%g2536225365%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2536225365%_)))
                     (_%g2536025455%_
                      (lambda (_%g2536225373%_)
                        ((lambda (_%L25376%_)
                           (let ()
                             (let* ((_%g2538925397%_
                                     (lambda (_%g2539025393%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2539025393%_)))
                                    (_%g2538825451%_
                                     (lambda (_%g2539025401%_)
                                       ((lambda (_%L25404%_)
                                          (let ()
                                            (let* ((_%g2541725425%_
                                                    (lambda (_%g2541825421%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g2541825421%_)))
                                                   (_%g2541625447%_
                                                    (lambda (_%g2541825429%_)
                                                      ((lambda (_%L25432%_)
                                                         (let ()
                                                           (_%wrap25138%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _%L25376%_ (cons _%L25432%_ '()))))))
               _%g2541825429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2541625447%_
                                               (_%wrap25138%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'bind-method!)
                                                      (cons _%L25290%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L25242%_ '()))
                          (cons _%L25320%_ (cons _%L25404%_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2539025401%_))))
                               (_%g2538825451%_ _%rebind?25272%_))))
                         _%g2536225373%_))))
                (_%g2536025455%_
                 (_%wrap25138%_
                  (cons (gx#datum->syntax '#f 'def)
                        (cons _%L25320%_
                              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                          (cons (cons (cons _%L25348%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax-rules)
                                (cons '()
                                      (cons (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'obj)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'arg)
                            (cons (gx#datum->syntax '#f '...) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'call-next-method)
                                                              (cons _%L25290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'obj)
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%L25242%_ '()))
                                        (cons (gx#datum->syntax '#f 'arg)
                                              (cons (gx#datum->syntax '#f '...)
                                                    '()))))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L25240%_ '())))
                                    '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2533425345%_))))
                                         (_%g2533225459%_
                                          (gx#stx-identifier
                                           _%L25241%_
                                           '@next-method)))))
                                   _%g2530625317%_))))
                          (_%g2530425463%_
                           (gx#stx-identifier
                            _%L25241%_
                            _%L25241%_
                            '"::"
                            _%L25242%_)))))
                    _%g2527625287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2527425467%_
                                                    (let ((__obj27115
                                                           _%klass25269%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj27115
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj27115
                                                             '12
                                                             '#f
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj27115
                                                           'type-descriptor))))))
                                               (if (let ((__tmp27409
                                                          (gx#identifier?
                                                           _%L25242%_)))
                                                     (declare (not safe))
                                                     (not __tmp27409))
                                                   (let ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"bad syntax; expected method identifier"
                                                      _%stx25135%_
                                                      _%L25242%_))
                                                   (if (let ((__tmp27410
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                         _%L25241%_))))
                 (declare (not safe))
                 (not __tmp27410))
               (let ()
                 (gx#raise-syntax-error
                  '#f
                  '"bad syntax; expected type identifier"
                  _%stx25135%_
                  _%L25241%_))
               (let ()
                 (gx#raise-syntax-error
                  '#f
                  '"bad syntax; illegal method options"
                  _%stx25135%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%tl2516325235%_
                                         _%hd2516425232%_
                                         _%hd2516125222%_
                                         _%hd2515825212%_)))
                                    (_%g2514225171%_ _%g2514325175%_))
                                (_%g2514225171%_ _%g2514325175%_))))
                        (_%g2514225171%_ _%g2514325175%_))))
                (_%g2514225171%_ _%g2514325175%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2514225171%_
                                                     _%g2514325175%_))
                                                (_%g2514225171%_
                                                 _%g2514325175%_))))
                                        (_%g2514225171%_ _%g2514325175%_))))
                                (_%g2514225171%_ _%g2514325175%_))))
                        (_%g2514225171%_ _%g2514325175%_)))))
            (_%g2514125477%_ _%stx25135%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25487%_)
        (letrec ((_%dotted-identifier?25490%_
                  (lambda (_%id26123%_)
                    (if (gx#identifier? _%id26123%_)
                        (let ((_%id-str26126%_
                               (symbol->string (gx#stx-e _%id26123%_))))
                          (if (string-index _%id-str26126%_ '#\.)
                              (let* ((_%split26129%_
                                      (string-split _%id-str26126%_ '#\.))
                                     (__tmp27411 (length _%split26129%_)))
                                (declare (not safe))
                                (##fx= __tmp27411 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25492%_
                  (lambda (_%id26112%_)
                    (let* ((_%id-str26115%_
                            (symbol->string (gx#stx-e _%id26112%_)))
                           (_%split26118%_
                            (string-split _%id-str26115%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26112%_
                             (car _%split26118%_))
                            (cons (gx#stx-identifier
                                   _%id26112%_
                                   (cadr _%split26118%_))
                                  '()))))))
          (let* ((_%__stx2685426855%_ _%stx25487%_)
                 (_%g2549725584%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2685426855%_))))
            (let ((_%__kont2685726858%_
                   (lambda (_%L26005%_ _%L26007%_ _%L26008%_)
                     (let* ((_%g2603626051%_
                             (lambda (_%g2603726047%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2603726047%_)))
                            (_%g2603526104%_
                             (lambda (_%g2603726055%_)
                               (if (gx#stx-pair? _%g2603726055%_)
                                   (let ((_%e2604226058%_
                                          (gx#syntax-e _%g2603726055%_)))
                                     (let ((_%hd2604126062%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2604226058%_)))
                                           (_%tl2604026065%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2604226058%_))))
                                       (if (gx#stx-pair? _%tl2604026065%_)
                                           (let ((_%e2604526068%_
                                                  (gx#syntax-e
                                                   _%tl2604026065%_)))
                                             (let ((_%hd2604426072%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2604526068%_)))
                                                   (_%tl2604326075%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2604526068%_))))
                                               (if (gx#stx-null?
                                                    _%tl2604326075%_)
                                                   ((lambda (_%L26078%_
                                                             _%L26080%_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'apply)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'call-method)
                            (cons _%L26080%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%L26078%_ '()))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (foldr (lambda (_%g2609526098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2609626101%_)
                     (cons _%g2609526098%_ _%g2609626101%_))
                   '()
                   _%L26007%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2604426072%_
                                                    _%hd2604126062%_)
                                                   (_%g2603626051%_
                                                    _%g2603726055%_))))
                                           (_%g2603626051%_ _%g2603726055%_))))
                                   (_%g2603626051%_ _%g2603726055%_)))))
                       (_%g2603526104%_ (_%split-dotted25492%_ _%L26008%_)))))
                  (_%__kont2686126862%_
                   (lambda (_%L25847%_ _%L25849%_)
                     (let* ((_%g2586625881%_
                             (lambda (_%g2586725877%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2586725877%_)))
                            (_%g2586525934%_
                             (lambda (_%g2586725885%_)
                               (if (gx#stx-pair? _%g2586725885%_)
                                   (let ((_%e2587225888%_
                                          (gx#syntax-e _%g2586725885%_)))
                                     (let ((_%hd2587125892%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2587225888%_)))
                                           (_%tl2587025895%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2587225888%_))))
                                       (if (gx#stx-pair? _%tl2587025895%_)
                                           (let ((_%e2587525898%_
                                                  (gx#syntax-e
                                                   _%tl2587025895%_)))
                                             (let ((_%hd2587425902%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2587525898%_)))
                                                   (_%tl2587325905%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2587525898%_))))
                                               (if (gx#stx-null?
                                                    _%tl2587325905%_)
                                                   ((lambda (_%L25908%_
                                                             _%L25910%_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'call-method)
                                                              (cons _%L25910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L25908%_ '()))
                                  (foldr (lambda (_%g2592525928%_
                                                  _%g2592625931%_)
                                           (cons _%g2592525928%_
                                                 _%g2592625931%_))
                                         '()
                                         _%L25847%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2587425902%_
                                                    _%hd2587125892%_)
                                                   (_%g2586625881%_
                                                    _%g2586725885%_))))
                                           (_%g2586625881%_ _%g2586725885%_))))
                                   (_%g2586625881%_ _%g2586725885%_)))))
                       (_%g2586525934%_ (_%split-dotted25492%_ _%L25849%_)))))
                  (_%__kont2686526866%_
                   (lambda (_%L25751%_ _%L25753%_ _%L25754%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%L25753%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L25754%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2578125784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2578225787%_)
                          (cons _%g2578125784%_ _%g2578225787%_))
                        '()
                        _%L25751%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2686926870%_
                   (lambda (_%L25651%_ _%L25653%_ _%L25654%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%L25653%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L25654%_ '()))
                                       (foldr (lambda (_%g2567525678%_
                                                       _%g2567625681%_)
                                                (cons _%g2567525678%_
                                                      _%g2567625681%_))
                                              '()
                                              _%L25651%_)))))))
              (let* ((_%__match2697326974%_
                      (lambda (_%e2556325591%_
                               _%hd2556225595%_
                               _%tl2556125598%_
                               _%e2556625601%_
                               _%hd2556525605%_
                               _%tl2556425608%_
                               _%e2556925611%_
                               _%hd2556825615%_
                               _%tl2556725618%_
                               _%__splice2687126872%_
                               _%target2557025621%_
                               _%tl2557225624%_)
                        (letrec ((_%loop2557325627%_
                                  (lambda (_%hd2557125631%_ _%arg2557725634%_)
                                    (if (gx#stx-pair? _%hd2557125631%_)
                                        (let ((_%e2557425637%_
                                               (gx#syntax-e _%hd2557125631%_)))
                                          (let ((_%lp-tl2557625644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2557425637%_)))
                                                (_%lp-hd2557525641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2557425637%_))))
                                            (_%loop2557325627%_
                                             _%lp-tl2557625644%_
                                             (cons _%lp-hd2557525641%_
                                                   _%arg2557725634%_))))
                                        (let ((_%arg2557825647%_
                                               (reverse _%arg2557725634%_)))
                                          (let ((_%L25651%_ _%arg2557825647%_)
                                                (_%L25653%_ _%hd2556825615%_)
                                                (_%L25654%_ _%hd2556525605%_))
                                            (if (gx#identifier? _%L25654%_)
                                                (_%__kont2686926870%_
                                                 _%L25651%_
                                                 _%L25653%_
                                                 _%L25654%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2549725584%_)))))))))
                          (_%loop2557325627%_ _%target2557025621%_ '()))))
                     (_%__match2694726948%_
                      (lambda (_%e2554225691%_
                               _%hd2554125695%_
                               _%tl2554025698%_
                               _%e2554525701%_
                               _%hd2554425705%_
                               _%tl2554325708%_
                               _%e2554825711%_
                               _%hd2554725715%_
                               _%tl2554625718%_
                               _%__splice2686726868%_
                               _%target2554925721%_
                               _%tl2555125724%_)
                        (letrec ((_%loop2555225727%_
                                  (lambda (_%hd2555025731%_ _%arg2555625734%_)
                                    (if (gx#stx-pair? _%hd2555025731%_)
                                        (let ((_%e2555325737%_
                                               (gx#syntax-e _%hd2555025731%_)))
                                          (let ((_%lp-tl2555525744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2555325737%_)))
                                                (_%lp-hd2555425741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2555325737%_))))
                                            (_%loop2555225727%_
                                             _%lp-tl2555525744%_
                                             (cons _%lp-hd2555425741%_
                                                   _%arg2555625734%_))))
                                        (let ((_%arg2555725747%_
                                               (reverse _%arg2555625734%_)))
                                          (let ((_%L25751%_ _%arg2555725747%_)
                                                (_%L25753%_ _%hd2554725715%_)
                                                (_%L25754%_ _%hd2554425705%_))
                                            (if (and (gx#identifier?
                                                      _%L25754%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2577325776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2577425779%_)
                       (cons _%g2577325776%_ _%g2577425779%_))
                     '()
                     _%L25751%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2686526866%_
                                                 _%L25751%_
                                                 _%L25753%_
                                                 _%L25754%_)
                                                (_%__match2697326974%_
                                                 _%e2554225691%_
                                                 _%hd2554125695%_
                                                 _%tl2554025698%_
                                                 _%e2554525701%_
                                                 _%hd2554425705%_
                                                 _%tl2554325708%_
                                                 _%e2554825711%_
                                                 _%hd2554725715%_
                                                 _%tl2554625718%_
                                                 _%__splice2686726868%_
                                                 _%target2554925721%_
                                                 _%tl2555125724%_))))))))
                          (_%loop2555225727%_ _%target2554925721%_ '()))))
                     (_%__match2693326934%_
                      (lambda (_%e2554225691%_
                               _%hd2554125695%_
                               _%tl2554025698%_
                               _%e2554525701%_
                               _%hd2554425705%_
                               _%tl2554325708%_)
                        (if (gx#stx-pair? _%tl2554325708%_)
                            (let ((_%e2554825711%_
                                   (gx#syntax-e _%tl2554325708%_)))
                              (let ((_%tl2554625718%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2554825711%_)))
                                    (_%hd2554725715%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2554825711%_))))
                                (if (gx#stx-pair/null? _%tl2554625718%_)
                                    (let ((_%__splice2686726868%_
                                           (gx#syntax-split-splice
                                            _%tl2554625718%_
                                            '0)))
                                      (let ((_%tl2555125724%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2686726868%_
                                                '1)))
                                            (_%target2554925721%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2686726868%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2555125724%_)
                                            (_%__match2694726948%_
                                             _%e2554225691%_
                                             _%hd2554125695%_
                                             _%tl2554025698%_
                                             _%e2554525701%_
                                             _%hd2554425705%_
                                             _%tl2554325708%_
                                             _%e2554825711%_
                                             _%hd2554725715%_
                                             _%tl2554625718%_
                                             _%__splice2686726868%_
                                             _%target2554925721%_
                                             _%tl2555125724%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2549725584%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2549725584%_)))))
                            (let () (declare (not safe)) (_%g2549725584%_)))))
                     (_%__match2692126922%_
                      (lambda (_%e2552425797%_
                               _%hd2552325801%_
                               _%tl2552225804%_
                               _%e2552725807%_
                               _%hd2552625811%_
                               _%tl2552525814%_
                               _%__splice2686326864%_
                               _%target2552825817%_
                               _%tl2553025820%_)
                        (letrec ((_%loop2553125823%_
                                  (lambda (_%hd2552925827%_ _%arg2553525830%_)
                                    (if (gx#stx-pair? _%hd2552925827%_)
                                        (let ((_%e2553225833%_
                                               (gx#syntax-e _%hd2552925827%_)))
                                          (let ((_%lp-tl2553425840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2553225833%_)))
                                                (_%lp-hd2553325837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2553225833%_))))
                                            (_%loop2553125823%_
                                             _%lp-tl2553425840%_
                                             (cons _%lp-hd2553325837%_
                                                   _%arg2553525830%_))))
                                        (let ((_%arg2553625843%_
                                               (reverse _%arg2553525830%_)))
                                          (let ((_%L25847%_ _%arg2553625843%_)
                                                (_%L25849%_ _%hd2552625811%_))
                                            (if (_%dotted-identifier?25490%_
                                                 _%L25849%_)
                                                (_%__kont2686126862%_
                                                 _%L25847%_
                                                 _%L25849%_)
                                                (_%__match2693326934%_
                                                 _%e2552425797%_
                                                 _%hd2552325801%_
                                                 _%tl2552225804%_
                                                 _%e2552725807%_
                                                 _%hd2552625811%_
                                                 _%tl2552525814%_))))))))
                          (_%loop2553125823%_ _%target2552825817%_ '()))))
                     (_%__match2691926920%_
                      (lambda (_%e2552425797%_
                               _%hd2552325801%_
                               _%tl2552225804%_
                               _%e2552725807%_
                               _%hd2552625811%_
                               _%tl2552525814%_
                               _%__splice2686326864%_
                               _%target2552825817%_
                               _%tl2553025820%_)
                        (if (gx#stx-null? _%tl2553025820%_)
                            (_%__match2692126922%_
                             _%e2552425797%_
                             _%hd2552325801%_
                             _%tl2552225804%_
                             _%e2552725807%_
                             _%hd2552625811%_
                             _%tl2552525814%_
                             _%__splice2686326864%_
                             _%target2552825817%_
                             _%tl2553025820%_)
                            (if (gx#stx-pair? _%tl2552525814%_)
                                (let ((_%e2554825711%_
                                       (gx#syntax-e _%tl2552525814%_)))
                                  (let ((_%tl2554625718%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2554825711%_)))
                                        (_%hd2554725715%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2554825711%_))))
                                    (if (gx#stx-pair/null? _%tl2554625718%_)
                                        (let ((_%__splice2686726868%_
                                               (gx#syntax-split-splice
                                                _%tl2554625718%_
                                                '0)))
                                          (let ((_%tl2555125724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686726868%_
                                                    '1)))
                                                (_%target2554925721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686726868%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2555125724%_)
                                                (_%__match2694726948%_
                                                 _%e2552425797%_
                                                 _%hd2552325801%_
                                                 _%tl2552225804%_
                                                 _%e2552725807%_
                                                 _%hd2552625811%_
                                                 _%tl2552525814%_
                                                 _%e2554825711%_
                                                 _%hd2554725715%_
                                                 _%tl2554625718%_
                                                 _%__splice2686726868%_
                                                 _%target2554925721%_
                                                 _%tl2555125724%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2549725584%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2549725584%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2549725584%_))))))
                     (_%__match2690126902%_
                      (lambda (_%e2550425945%_
                               _%hd2550325949%_
                               _%tl2550225952%_
                               _%e2550725955%_
                               _%hd2550625959%_
                               _%tl2550525962%_
                               _%__splice2685926860%_
                               _%target2550825965%_
                               _%tl2551025968%_
                               _%e2551925971%_
                               _%hd2551825975%_
                               _%tl2551725978%_)
                        (letrec ((_%loop2551125981%_
                                  (lambda (_%hd2550925985%_ _%arg2551525988%_)
                                    (if (gx#stx-pair? _%hd2550925985%_)
                                        (let ((_%e2551225991%_
                                               (gx#syntax-e _%hd2550925985%_)))
                                          (let ((_%lp-tl2551425998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2551225991%_)))
                                                (_%lp-hd2551325995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2551225991%_))))
                                            (_%loop2551125981%_
                                             _%lp-tl2551425998%_
                                             (cons _%lp-hd2551325995%_
                                                   _%arg2551525988%_))))
                                        (let ((_%arg2551626001%_
                                               (reverse _%arg2551525988%_)))
                                          (let ((_%L26005%_ _%hd2551825975%_)
                                                (_%L26007%_ _%arg2551626001%_)
                                                (_%L26008%_ _%hd2550625959%_))
                                            (if (and (_%dotted-identifier?25490%_
                                                      _%L26008%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2602726030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2602826033%_)
                       (cons _%g2602726030%_ _%g2602826033%_))
                     '()
                     _%L26007%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2685726858%_
                                                 _%L26005%_
                                                 _%L26007%_
                                                 _%L26008%_)
                                                (let ((_%__splice2686326864%_
                                                       (gx#syntax-split-splice
                                                        _%tl2550525962%_
                                                        '0)))
                                                  (let ((_%tl2553025820%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686326864%_
                                                            '1)))
                                                        (_%target2552825817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686326864%_
                                                            '0))))
                                                    (_%__match2691926920%_
                                                     _%e2550425945%_
                                                     _%hd2550325949%_
                                                     _%tl2550225952%_
                                                     _%e2550725955%_
                                                     _%hd2550625959%_
                                                     _%tl2550525962%_
                                                     _%__splice2686326864%_
                                                     _%target2552825817%_
                                                     _%tl2553025820%_))))))))))
                          (_%loop2551125981%_ _%target2550825965%_ '())))))
                (if (gx#stx-pair? _%__stx2685426855%_)
                    (let ((_%e2550425945%_ (gx#syntax-e _%__stx2685426855%_)))
                      (let ((_%tl2550225952%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2550425945%_)))
                            (_%hd2550325949%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2550425945%_))))
                        (if (gx#stx-pair? _%tl2550225952%_)
                            (let ((_%e2550725955%_
                                   (gx#syntax-e _%tl2550225952%_)))
                              (let ((_%tl2550525962%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2550725955%_)))
                                    (_%hd2550625959%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2550725955%_))))
                                (if (gx#stx-pair/null? _%tl2550525962%_)
                                    (if (let ((__tmp27412
                                               (gx#stx-length
                                                _%tl2550525962%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27412 '1))
                                        (let ((_%__splice2685926860%_
                                               (gx#syntax-split-splice
                                                _%tl2550525962%_
                                                '1)))
                                          (let ((_%tl2551025968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2685926860%_
                                                    '1)))
                                                (_%target2550825965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2685926860%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2551025968%_)
                                                (let ((_%e2551925971%_
                                                       (gx#syntax-e
                                                        _%tl2551025968%_)))
                                                  (let ((_%tl2551725978%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2551925971%_)))
                                                        (_%hd2551825975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2551925971%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2551725978%_)
                                                        (_%__match2690126902%_
                                                         _%e2550425945%_
                                                         _%hd2550325949%_
                                                         _%tl2550225952%_
                                                         _%e2550725955%_
                                                         _%hd2550625959%_
                                                         _%tl2550525962%_
                                                         _%__splice2685926860%_
                                                         _%target2550825965%_
                                                         _%tl2551025968%_
                                                         _%e2551925971%_
                                                         _%hd2551825975%_
                                                         _%tl2551725978%_)
                                                        (let ((_%__splice2686326864%_
                                                               (gx#syntax-split-splice
                                                                _%tl2550525962%_
                                                                '0)))
                                                          (let ((_%tl2553025820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2686326864%_ '1)))
                        (_%target2552825817%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2686326864%_ '0))))
                    (if (gx#stx-null? _%tl2553025820%_)
                        (_%__match2692126922%_
                         _%e2550425945%_
                         _%hd2550325949%_
                         _%tl2550225952%_
                         _%e2550725955%_
                         _%hd2550625959%_
                         _%tl2550525962%_
                         _%__splice2686326864%_
                         _%target2552825817%_
                         _%tl2553025820%_)
                        (if (gx#stx-pair? _%tl2550525962%_)
                            (let ((_%e2554825711%_
                                   (gx#syntax-e _%tl2550525962%_)))
                              (let ((_%tl2554625718%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2554825711%_)))
                                    (_%hd2554725715%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2554825711%_))))
                                (if (gx#stx-pair/null? _%tl2554625718%_)
                                    (let ((_%__splice2686726868%_
                                           (gx#syntax-split-splice
                                            _%tl2554625718%_
                                            '0)))
                                      (let ((_%tl2555125724%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2686726868%_
                                                '1)))
                                            (_%target2554925721%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2686726868%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2555125724%_)
                                            (_%__match2694726948%_
                                             _%e2550425945%_
                                             _%hd2550325949%_
                                             _%tl2550225952%_
                                             _%e2550725955%_
                                             _%hd2550625959%_
                                             _%tl2550525962%_
                                             _%e2554825711%_
                                             _%hd2554725715%_
                                             _%tl2554625718%_
                                             _%__splice2686726868%_
                                             _%target2554925721%_
                                             _%tl2555125724%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2549725584%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2549725584%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2549725584%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2686326864%_
                                                       (gx#syntax-split-splice
                                                        _%tl2550525962%_
                                                        '0)))
                                                  (let ((_%tl2553025820%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686326864%_
                                                            '1)))
                                                        (_%target2552825817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686326864%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2553025820%_)
                                                        (_%__match2692126922%_
                                                         _%e2550425945%_
                                                         _%hd2550325949%_
                                                         _%tl2550225952%_
                                                         _%e2550725955%_
                                                         _%hd2550625959%_
                                                         _%tl2550525962%_
                                                         _%__splice2686326864%_
                                                         _%target2552825817%_
                                                         _%tl2553025820%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2550525962%_)
                                                            (let ((_%e2554825711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2550525962%_)))
                      (let ((_%tl2554625718%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2554825711%_)))
                            (_%hd2554725715%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2554825711%_))))
                        (if (gx#stx-pair/null? _%tl2554625718%_)
                            (let ((_%__splice2686726868%_
                                   (gx#syntax-split-splice
                                    _%tl2554625718%_
                                    '0)))
                              (let ((_%tl2555125724%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2686726868%_
                                        '1)))
                                    (_%target2554925721%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2686726868%_
                                        '0))))
                                (if (gx#stx-null? _%tl2555125724%_)
                                    (_%__match2694726948%_
                                     _%e2550425945%_
                                     _%hd2550325949%_
                                     _%tl2550225952%_
                                     _%e2550725955%_
                                     _%hd2550625959%_
                                     _%tl2550525962%_
                                     _%e2554825711%_
                                     _%hd2554725715%_
                                     _%tl2554625718%_
                                     _%__splice2686726868%_
                                     _%target2554925721%_
                                     _%tl2555125724%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2549725584%_)))))
                            (let () (declare (not safe)) (_%g2549725584%_)))))
                    (let () (declare (not safe)) (_%g2549725584%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2686326864%_
                                               (gx#syntax-split-splice
                                                _%tl2550525962%_
                                                '0)))
                                          (let ((_%tl2553025820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686326864%_
                                                    '1)))
                                                (_%target2552825817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686326864%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2553025820%_)
                                                (_%__match2692126922%_
                                                 _%e2550425945%_
                                                 _%hd2550325949%_
                                                 _%tl2550225952%_
                                                 _%e2550725955%_
                                                 _%hd2550625959%_
                                                 _%tl2550525962%_
                                                 _%__splice2686326864%_
                                                 _%target2552825817%_
                                                 _%tl2553025820%_)
                                                (if (gx#stx-pair?
                                                     _%tl2550525962%_)
                                                    (let ((_%e2554825711%_
                                                           (gx#syntax-e
                                                            _%tl2550525962%_)))
                                                      (let ((_%tl2554625718%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2554825711%_)))
                    (_%hd2554725715%_
                     (let () (declare (not safe)) (##car _%e2554825711%_))))
                (if (gx#stx-pair/null? _%tl2554625718%_)
                    (let ((_%__splice2686726868%_
                           (gx#syntax-split-splice _%tl2554625718%_ '0)))
                      (let ((_%tl2555125724%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2686726868%_ '1)))
                            (_%target2554925721%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2686726868%_ '0))))
                        (if (gx#stx-null? _%tl2555125724%_)
                            (_%__match2694726948%_
                             _%e2550425945%_
                             _%hd2550325949%_
                             _%tl2550225952%_
                             _%e2550725955%_
                             _%hd2550625959%_
                             _%tl2550525962%_
                             _%e2554825711%_
                             _%hd2554725715%_
                             _%tl2554625718%_
                             _%__splice2686726868%_
                             _%target2554925721%_
                             _%tl2555125724%_)
                            (let () (declare (not safe)) (_%g2549725584%_)))))
                    (let () (declare (not safe)) (_%g2549725584%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2549725584%_)))))))
                                    (if (gx#stx-pair? _%tl2550525962%_)
                                        (let ((_%e2554825711%_
                                               (gx#syntax-e _%tl2550525962%_)))
                                          (let ((_%tl2554625718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2554825711%_)))
                                                (_%hd2554725715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2554825711%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2554625718%_)
                                                (let ((_%__splice2686726868%_
                                                       (gx#syntax-split-splice
                                                        _%tl2554625718%_
                                                        '0)))
                                                  (let ((_%tl2555125724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686726868%_
                                                            '1)))
                                                        (_%target2554925721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686726868%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2555125724%_)
                                                        (_%__match2694726948%_
                                                         _%e2550425945%_
                                                         _%hd2550325949%_
                                                         _%tl2550225952%_
                                                         _%e2550725955%_
                                                         _%hd2550625959%_
                                                         _%tl2550525962%_
                                                         _%e2554825711%_
                                                         _%hd2554725715%_
                                                         _%tl2554625718%_
                                                         _%__splice2686726868%_
                                                         _%target2554925721%_
                                                         _%tl2555125724%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2549725584%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2549725584%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2549725584%_))))))
                            (let () (declare (not safe)) (_%g2549725584%_)))))
                    (let () (declare (not safe)) (_%g2549725584%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26136%_)
        (let* ((_%__stx2697626977%_ _%$stx26136%_)
               (_%g2614126181%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2697626977%_))))
          (let ((_%__kont2697926980%_
                 (lambda (_%L26319%_ _%L26321%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%L26321%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26319%_ '()))
                                     '())))))
                (_%__kont2698126982%_
                 (lambda (_%L26248%_ _%L26250%_ _%L26251%_ _%L26252%_)
                   (cons _%L26252%_
                         (cons (cons _%L26252%_
                                     (cons _%L26251%_ (cons _%L26250%_ '())))
                               (foldr (lambda (_%g2627326276%_ _%g2627426279%_)
                                        (cons _%g2627326276%_ _%g2627426279%_))
                                      '()
                                      _%L26248%_))))))
            (let* ((_%__match2703127032%_
                    (lambda (_%e2616026188%_
                             _%hd2615926192%_
                             _%tl2615826195%_
                             _%e2616326198%_
                             _%hd2616226202%_
                             _%tl2616126205%_
                             _%e2616626208%_
                             _%hd2616526212%_
                             _%tl2616426215%_
                             _%__splice2698326984%_
                             _%target2616726218%_
                             _%tl2616926221%_)
                      (letrec ((_%loop2617026224%_
                                (lambda (_%hd2616826228%_ _%rest2617426231%_)
                                  (if (gx#stx-pair? _%hd2616826228%_)
                                      (let ((_%e2617126234%_
                                             (gx#syntax-e _%hd2616826228%_)))
                                        (let ((_%lp-tl2617326241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2617126234%_)))
                                              (_%lp-hd2617226238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2617126234%_))))
                                          (_%loop2617026224%_
                                           _%lp-tl2617326241%_
                                           (cons _%lp-hd2617226238%_
                                                 _%rest2617426231%_))))
                                      (let ((_%rest2617526244%_
                                             (reverse _%rest2617426231%_)))
                                        (_%__kont2698126982%_
                                         _%rest2617526244%_
                                         _%hd2616526212%_
                                         _%hd2616226202%_
                                         _%hd2615926192%_))))))
                        (_%loop2617026224%_ _%target2616726218%_ '()))))
                   (_%__match2700527006%_
                    (lambda (_%e2614726289%_
                             _%hd2614626293%_
                             _%tl2614526296%_
                             _%e2615026299%_
                             _%hd2614926303%_
                             _%tl2614826306%_
                             _%e2615326309%_
                             _%hd2615226313%_
                             _%tl2615126316%_)
                      (let ((_%L26319%_ _%hd2615226313%_)
                            (_%L26321%_ _%hd2614926303%_))
                        (if (gx#identifier? _%L26319%_)
                            (_%__kont2697926980%_ _%L26319%_ _%L26321%_)
                            (if (gx#stx-pair/null? _%tl2615126316%_)
                                (let ((_%__splice2698326984%_
                                       (gx#syntax-split-splice
                                        _%tl2615126316%_
                                        '0)))
                                  (let ((_%tl2616926221%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2698326984%_
                                            '1)))
                                        (_%target2616726218%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2698326984%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2616926221%_)
                                        (_%__match2703127032%_
                                         _%e2614726289%_
                                         _%hd2614626293%_
                                         _%tl2614526296%_
                                         _%e2615026299%_
                                         _%hd2614926303%_
                                         _%tl2614826306%_
                                         _%e2615326309%_
                                         _%hd2615226313%_
                                         _%tl2615126316%_
                                         _%__splice2698326984%_
                                         _%target2616726218%_
                                         _%tl2616926221%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2614126181%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2614126181%_))))))))
              (if (gx#stx-pair? _%__stx2697626977%_)
                  (let ((_%e2614726289%_ (gx#syntax-e _%__stx2697626977%_)))
                    (let ((_%tl2614526296%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2614726289%_)))
                          (_%hd2614626293%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2614726289%_))))
                      (if (gx#stx-pair? _%tl2614526296%_)
                          (let ((_%e2615026299%_
                                 (gx#syntax-e _%tl2614526296%_)))
                            (let ((_%tl2614826306%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2615026299%_)))
                                  (_%hd2614926303%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2615026299%_))))
                              (if (gx#stx-pair? _%tl2614826306%_)
                                  (let ((_%e2615326309%_
                                         (gx#syntax-e _%tl2614826306%_)))
                                    (let ((_%tl2615126316%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2615326309%_)))
                                          (_%hd2615226313%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2615326309%_))))
                                      (if (gx#stx-null? _%tl2615126316%_)
                                          (_%__match2700527006%_
                                           _%e2614726289%_
                                           _%hd2614626293%_
                                           _%tl2614526296%_
                                           _%e2615026299%_
                                           _%hd2614926303%_
                                           _%tl2614826306%_
                                           _%e2615326309%_
                                           _%hd2615226313%_
                                           _%tl2615126316%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2615126316%_)
                                              (let ((_%__splice2698326984%_
                                                     (gx#syntax-split-splice
                                                      _%tl2615126316%_
                                                      '0)))
                                                (let ((_%tl2616926221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2698326984%_
                                                          '1)))
                                                      (_%target2616726218%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2698326984%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2616926221%_)
                                                      (_%__match2703127032%_
                                                       _%e2614726289%_
                                                       _%hd2614626293%_
                                                       _%tl2614526296%_
                                                       _%e2615026299%_
                                                       _%hd2614926303%_
                                                       _%tl2614826306%_
                                                       _%e2615326309%_
                                                       _%hd2615226313%_
                                                       _%tl2615126316%_
                                                       _%__splice2698326984%_
                                                       _%target2616726218%_
                                                       _%tl2616926221%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2614126181%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2614126181%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2614126181%_)))))
                          (let () (declare (not safe)) (_%g2614126181%_)))))
                  (let () (declare (not safe)) (_%g2614126181%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26341%_)
        (let* ((_%__stx2703427035%_ _%$stx26341%_)
               (_%g2634626398%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2703427035%_))))
          (let ((_%__kont2703727038%_
                 (lambda (_%L26574%_ _%L26576%_ _%L26577%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%L26577%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26576%_ '()))
                                     (cons _%L26574%_ '()))))))
                (_%__kont2703927040%_
                 (lambda (_%L26485%_
                          _%L26487%_
                          _%L26488%_
                          _%L26489%_
                          _%L26490%_
                          _%L26491%_)
                   (cons _%L26491%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%L26490%_
                                           (cons _%L26489%_
                                                 (foldr (lambda (_%g2651826521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2651926524%_)
                  (cons _%g2651826521%_ _%g2651926524%_))
                '()
                _%L26488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L26487%_ (cons _%L26485%_ '())))))))
            (let* ((_%__match2710927110%_
                    (lambda (_%e2637126405%_
                             _%hd2637026409%_
                             _%tl2636926412%_
                             _%e2637426415%_
                             _%hd2637326419%_
                             _%tl2637226422%_
                             _%e2637726425%_
                             _%hd2637626429%_
                             _%tl2637526432%_
                             _%__splice2704127042%_
                             _%target2637826435%_
                             _%tl2638026438%_
                             _%e2638926441%_
                             _%hd2638826445%_
                             _%tl2638726448%_
                             _%e2639226451%_
                             _%hd2639126455%_
                             _%tl2639026458%_)
                      (letrec ((_%loop2638126461%_
                                (lambda (_%hd2637926465%_ _%path2638526468%_)
                                  (if (gx#stx-pair? _%hd2637926465%_)
                                      (let ((_%e2638226471%_
                                             (gx#syntax-e _%hd2637926465%_)))
                                        (let ((_%lp-tl2638426478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2638226471%_)))
                                              (_%lp-hd2638326475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2638226471%_))))
                                          (_%loop2638126461%_
                                           _%lp-tl2638426478%_
                                           (cons _%lp-hd2638326475%_
                                                 _%path2638526468%_))))
                                      (let ((_%path2638626481%_
                                             (reverse _%path2638526468%_)))
                                        (_%__kont2703927040%_
                                         _%hd2639126455%_
                                         _%hd2638826445%_
                                         _%path2638626481%_
                                         _%hd2637626429%_
                                         _%hd2637326419%_
                                         _%hd2637026409%_))))))
                        (_%loop2638126461%_ _%target2637826435%_ '()))))
                   (_%__match2706927070%_
                    (lambda (_%e2635326534%_
                             _%hd2635226538%_
                             _%tl2635126541%_
                             _%e2635626544%_
                             _%hd2635526548%_
                             _%tl2635426551%_
                             _%e2635926554%_
                             _%hd2635826558%_
                             _%tl2635726561%_
                             _%e2636226564%_
                             _%hd2636126568%_
                             _%tl2636026571%_)
                      (let ((_%L26574%_ _%hd2636126568%_)
                            (_%L26576%_ _%hd2635826558%_)
                            (_%L26577%_ _%hd2635526548%_))
                        (if (gx#identifier? _%L26576%_)
                            (_%__kont2703727038%_
                             _%L26574%_
                             _%L26576%_
                             _%L26577%_)
                            (if (gx#stx-pair/null? _%tl2635726561%_)
                                (if (let ((__tmp27413
                                           (gx#stx-length _%tl2635726561%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27413 '2))
                                    (let ((_%__splice2704127042%_
                                           (gx#syntax-split-splice
                                            _%tl2635726561%_
                                            '2)))
                                      (let ((_%tl2638026438%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2704127042%_
                                                '1)))
                                            (_%target2637826435%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2704127042%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2638026438%_)
                                            (let ((_%e2638926441%_
                                                   (gx#syntax-e
                                                    _%tl2638026438%_)))
                                              (let ((_%tl2638726448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2638926441%_)))
                                                    (_%hd2638826445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2638926441%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2638726448%_)
                                                    (let ((_%e2639226451%_
                                                           (gx#syntax-e
                                                            _%tl2638726448%_)))
                                                      (let ((_%tl2639026458%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2639226451%_)))
                    (_%hd2639126455%_
                     (let () (declare (not safe)) (##car _%e2639226451%_))))
                (if (gx#stx-null? _%tl2639026458%_)
                    (_%__match2710927110%_
                     _%e2635326534%_
                     _%hd2635226538%_
                     _%tl2635126541%_
                     _%e2635626544%_
                     _%hd2635526548%_
                     _%tl2635426551%_
                     _%e2635926554%_
                     _%hd2635826558%_
                     _%tl2635726561%_
                     _%__splice2704127042%_
                     _%target2637826435%_
                     _%tl2638026438%_
                     _%e2638926441%_
                     _%hd2638826445%_
                     _%tl2638726448%_
                     _%e2639226451%_
                     _%hd2639126455%_
                     _%tl2639026458%_)
                    (let () (declare (not safe)) (_%g2634626398%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2634626398%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2634626398%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2634626398%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2634626398%_))))))))
              (if (gx#stx-pair? _%__stx2703427035%_)
                  (let ((_%e2635326534%_ (gx#syntax-e _%__stx2703427035%_)))
                    (let ((_%tl2635126541%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2635326534%_)))
                          (_%hd2635226538%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2635326534%_))))
                      (if (gx#stx-pair? _%tl2635126541%_)
                          (let ((_%e2635626544%_
                                 (gx#syntax-e _%tl2635126541%_)))
                            (let ((_%tl2635426551%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2635626544%_)))
                                  (_%hd2635526548%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2635626544%_))))
                              (if (gx#stx-pair? _%tl2635426551%_)
                                  (let ((_%e2635926554%_
                                         (gx#syntax-e _%tl2635426551%_)))
                                    (let ((_%tl2635726561%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2635926554%_)))
                                          (_%hd2635826558%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2635926554%_))))
                                      (if (gx#stx-pair? _%tl2635726561%_)
                                          (let ((_%e2636226564%_
                                                 (gx#syntax-e
                                                  _%tl2635726561%_)))
                                            (let ((_%tl2636026571%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2636226564%_)))
                                                  (_%hd2636126568%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2636226564%_))))
                                              (if (gx#stx-null?
                                                   _%tl2636026571%_)
                                                  (_%__match2706927070%_
                                                   _%e2635326534%_
                                                   _%hd2635226538%_
                                                   _%tl2635126541%_
                                                   _%e2635626544%_
                                                   _%hd2635526548%_
                                                   _%tl2635426551%_
                                                   _%e2635926554%_
                                                   _%hd2635826558%_
                                                   _%tl2635726561%_
                                                   _%e2636226564%_
                                                   _%hd2636126568%_
                                                   _%tl2636026571%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2635726561%_)
                                                      (if (let ((__tmp27414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2635726561%_)))
                    (declare (not safe))
                    (##fx>= __tmp27414 '2))
                  (let ((_%__splice2704127042%_
                         (gx#syntax-split-splice _%tl2635726561%_ '2)))
                    (let ((_%tl2638026438%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2704127042%_ '1)))
                          (_%target2637826435%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2704127042%_ '0))))
                      (if (gx#stx-pair? _%tl2638026438%_)
                          (let ((_%e2638926441%_
                                 (gx#syntax-e _%tl2638026438%_)))
                            (let ((_%tl2638726448%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2638926441%_)))
                                  (_%hd2638826445%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2638926441%_))))
                              (if (gx#stx-pair? _%tl2638726448%_)
                                  (let ((_%e2639226451%_
                                         (gx#syntax-e _%tl2638726448%_)))
                                    (let ((_%tl2639026458%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2639226451%_)))
                                          (_%hd2639126455%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2639226451%_))))
                                      (if (gx#stx-null? _%tl2639026458%_)
                                          (_%__match2710927110%_
                                           _%e2635326534%_
                                           _%hd2635226538%_
                                           _%tl2635126541%_
                                           _%e2635626544%_
                                           _%hd2635526548%_
                                           _%tl2635426551%_
                                           _%e2635926554%_
                                           _%hd2635826558%_
                                           _%tl2635726561%_
                                           _%__splice2704127042%_
                                           _%target2637826435%_
                                           _%tl2638026438%_
                                           _%e2638926441%_
                                           _%hd2638826445%_
                                           _%tl2638726448%_
                                           _%e2639226451%_
                                           _%hd2639126455%_
                                           _%tl2639026458%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2634626398%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2634626398%_)))))
                          (let () (declare (not safe)) (_%g2634626398%_)))))
                  (let () (declare (not safe)) (_%g2634626398%_)))
              (let () (declare (not safe)) (_%g2634626398%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2635726561%_)
                                              (if (let ((__tmp27415
                                                         (gx#stx-length
                                                          _%tl2635726561%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27415 '2))
                                                  (let ((_%__splice2704127042%_
                                                         (gx#syntax-split-splice
                                                          _%tl2635726561%_
                                                          '2)))
                                                    (let ((_%tl2638026438%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2704127042%_
                                                              '1)))
                                                          (_%target2637826435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2704127042%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2638026438%_)
                                                          (let ((_%e2638926441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2638026438%_)))
                    (let ((_%tl2638726448%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2638926441%_)))
                          (_%hd2638826445%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2638926441%_))))
                      (if (gx#stx-pair? _%tl2638726448%_)
                          (let ((_%e2639226451%_
                                 (gx#syntax-e _%tl2638726448%_)))
                            (let ((_%tl2639026458%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2639226451%_)))
                                  (_%hd2639126455%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2639226451%_))))
                              (if (gx#stx-null? _%tl2639026458%_)
                                  (_%__match2710927110%_
                                   _%e2635326534%_
                                   _%hd2635226538%_
                                   _%tl2635126541%_
                                   _%e2635626544%_
                                   _%hd2635526548%_
                                   _%tl2635426551%_
                                   _%e2635926554%_
                                   _%hd2635826558%_
                                   _%tl2635726561%_
                                   _%__splice2704127042%_
                                   _%target2637826435%_
                                   _%tl2638026438%_
                                   _%e2638926441%_
                                   _%hd2638826445%_
                                   _%tl2638726448%_
                                   _%e2639226451%_
                                   _%hd2639126455%_
                                   _%tl2639026458%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2634626398%_)))))
                          (let () (declare (not safe)) (_%g2634626398%_)))))
                  (let () (declare (not safe)) (_%g2634626398%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2634626398%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2634626398%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2634626398%_)))))
                          (let () (declare (not safe)) (_%g2634626398%_)))))
                  (let () (declare (not safe)) (_%g2634626398%_))))))))))
