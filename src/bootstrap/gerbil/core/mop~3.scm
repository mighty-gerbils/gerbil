(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g200993_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24876%_)
        (letrec ((_%body-opt?24879%_
                  (lambda (_%key24882%_)
                    (let ((__tmp200965 (gx#stx-e _%key24882%_)))
                      (declare (not safe))
                      (##memq __tmp200965
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:
                                acyclic:))))))
          (gx#stx-plist? _%stx24876%_ _%body-opt?24879%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22664%_
               _%id22666%_
               _%super-ref22667%_
               _%slots22668%_
               _%body22669%_)
        (letrec ((_%wrap22671%_
                  (lambda (_%e-stx24873%_)
                    (gx#stx-wrap-source
                     _%e-stx24873%_
                     (gx#stx-source _%stx22664%_))))
                 (_%make-id22673%_
                  (lambda _%args24870%_
                    (apply gx#stx-identifier _%id22666%_ _%args24870%_)))
                 (_%get-mixin-slots22674%_
                  (lambda (_%super24840%_ _%slots24842%_)
                    (letrec* ((_%tab24844%_ (make-hash-table-eq))
                              (_%dedup24846%_
                               (lambda (_%mixins24857%_)
                                 (let _%lp24860%_ ((_%rest24863%_
                                                    _%mixins24857%_)
                                                   (_%r24865%_ '()))
                                   (if (pair? _%rest24863%_)
                                       (let ((_%slot24867%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24863%_))))
                                         (if (hash-get
                                              _%tab24844%_
                                              _%slot24867%_)
                                             (_%lp24860%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24863%_))
                                              _%r24865%_)
                                             (begin
                                               (hash-put!
                                                _%tab24844%_
                                                _%slot24867%_
                                                '#t)
                                               (_%lp24860%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24863%_))
                                                (cons _%slot24867%_
                                                      _%r24865%_)))))
                                       (reverse _%r24865%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24848%_)
                         (hash-put! _%tab24844%_ (gx#stx-e _%slot24848%_) '#t))
                       _%slots24842%_)
                      (if (not _%super24840%_)
                          '()
                          (if (gx#identifier? _%super24840%_)
                              (_%dedup24846%_
                               (_%get-mixin-slots-r22675%_ _%super24840%_))
                              (_%dedup24846%_
                               (concatenate
                                (map _%get-mixin-slots-r22675%_
                                     _%super24840%_))))))))
                 (_%get-mixin-slots-r22675%_
                  (lambda (_%type-id24834%_)
                    (let ((_%info24837%_
                           (gx#syntax-local-value _%type-id24834%_)))
                      (let ((__tmp200967
                             (let ((__obj200744 _%info24837%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj200744
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj200744
                                      '5
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj200744
                                    'slots))))
                            (__tmp200966
                             (concatenate
                              (map _%get-mixin-slots-r22675%_
                                   (let ((__obj200745 _%info24837%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj200745
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj200745
                                            '4
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj200745
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp200967 __tmp200966))))))
          (gx#check-duplicate-identifiers _%slots22668%_ _%stx22664%_)
          (let* ((_%name22677%_ (symbol->string (gx#stx-e _%id22666%_)))
                 (_%super22680%_
                  (map gx#syntax-local-value _%super-ref22667%_))
                 (_%struct?22683%_ (gx#stx-getq 'struct: _%body22669%_))
                 (_%g2268622694%_
                  (lambda (_%g2268722690%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2268722690%_)))
                 (_%g2268524830%_
                  (lambda (_%g2268722698%_)
                    ((lambda (_%g2268822701%_)
                       (let* ((_%g2271722725%_
                               (lambda (_%g2271822721%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2271822721%_)))
                              (_%g2271624826%_
                               (lambda (_%g2271822729%_)
                                 ((lambda (_%g2271922732%_)
                                    (let* ((_%g2274522753%_
                                            (lambda (_%g2274622749%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2274622749%_)))
                                           (_%g2274424822%_
                                            (lambda (_%g2274622757%_)
                                              ((lambda (_%g2274722760%_)
                                                 (let* ((_%g2277322781%_
                                                         (lambda (_%g2277422777%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2277422777%_)))
                                                        (_%g2277224818%_
                                                         (lambda (_%g2277422785%_)
                                                           ((lambda (_%g2277522788%_)
                                                              (let* ((_%g2280122809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2280222805%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2280222805%_)))
                             (_%g2280024814%_
                              (lambda (_%g2280222813%_)
                                ((lambda (_%g2280322816%_)
                                   (let* ((_%g2282922846%_
                                           (lambda (_%g2283022842%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2283022842%_)))
                                          (_%g2282824810%_
                                           (lambda (_%g2283022850%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2283022850%_)
                                                 (let ((_g200968_
                                                        (gx#syntax-split-splice
                                                         _%g2283022850%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g200969_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g200968_)
                          (##values-length _g200968_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g200969_ 2)))
                   (error "Context expects 2 values" _g200969_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2283222853%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g200968_
                                                               0)))
                                                           (_%tl2283422856%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g200968_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2283422856%_)
                                                           (letrec ((_%loop2283522859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2283322863%_ _%slot2283922866%_)
                               (if (gx#stx-pair? _%hd2283322863%_)
                                   (let ((_%e2283622868%_
                                          (gx#syntax-e _%hd2283322863%_)))
                                     (let ((_%lp-hd2283722872%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2283622868%_)))
                                           (_%lp-tl2283822875%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2283622868%_))))
                                       (_%loop2283522859%_
                                        _%lp-tl2283822875%_
                                        (cons _%lp-hd2283722872%_
                                              _%slot2283922866%_))))
                                   (let ((_%slot2284022878%_
                                          (reverse _%slot2283922866%_)))
                                     ((lambda (_%g2283122881%_)
                                        (let* ((_%g2289822915%_
                                                (lambda (_%g2289922911%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2289922911%_)))
                                               (_%g2289724801%_
                                                (lambda (_%g2289922919%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2289922919%_)
                                                      (let ((_g200970_
                                                             (gx#syntax-split-splice
                                                              _%g2289922919%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g200971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g200970_)
                               (##values-length _g200970_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g200971_ 2)))
                        (error "Context expects 2 values" _g200971_)))
                  (let ((_%target2290122922%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g200970_ 0)))
                        (_%tl2290322925%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g200970_ 1))))
                    (if (gx#stx-null? _%tl2290322925%_)
                        (letrec ((_%loop2290422928%_
                                  (lambda (_%hd2290222932%_ _%getf2290822935%_)
                                    (if (gx#stx-pair? _%hd2290222932%_)
                                        (let ((_%e2290522937%_
                                               (gx#syntax-e _%hd2290222932%_)))
                                          (let ((_%lp-hd2290622941%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2290522937%_)))
                                                (_%lp-tl2290722944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2290522937%_))))
                                            (_%loop2290422928%_
                                             _%lp-tl2290722944%_
                                             (cons _%lp-hd2290622941%_
                                                   _%getf2290822935%_))))
                                        (let ((_%getf2290922947%_
                                               (reverse _%getf2290822935%_)))
                                          ((lambda (_%g2290022950%_)
                                             (let* ((_%g2296722984%_
                                                     (lambda (_%g2296822980%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2296822980%_)))
                                                    (_%g2296624792%_
                                                     (lambda (_%g2296822988%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2296822988%_)
                                                           (let ((_g200972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2296822988%_ '0)))
                     (begin
                       (let ((_g200973_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g200972_)
                                    (##values-length _g200972_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g200973_ 2)))
                             (error "Context expects 2 values" _g200973_)))
                       (let ((_%target2297022991%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g200972_ 0)))
                             (_%tl2297222994%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g200972_ 1))))
                         (if (gx#stx-null? _%tl2297222994%_)
                             (letrec ((_%loop2297322997%_
                                       (lambda (_%hd2297123001%_
                                                _%setf2297723004%_)
                                         (if (gx#stx-pair? _%hd2297123001%_)
                                             (let ((_%e2297423006%_
                                                    (gx#syntax-e
                                                     _%hd2297123001%_)))
                                               (let ((_%lp-hd2297523010%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2297423006%_)))
                                                     (_%lp-tl2297623013%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2297423006%_))))
                                                 (_%loop2297322997%_
                                                  _%lp-tl2297623013%_
                                                  (cons _%lp-hd2297523010%_
                                                        _%setf2297723004%_))))
                                             (let ((_%setf2297823016%_
                                                    (reverse _%setf2297723004%_)))
                                               ((lambda (_%g2296923019%_)
                                                  (let* ((_%mixin-slots23036%_
                                                          (_%get-mixin-slots22674%_
                                                           _%super-ref22667%_
                                                           _%slots22668%_))
                                                         (_%g2303923056%_
                                                          (lambda (_%g2304023052%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2304023052%_)))
                                                         (_%g2303824788%_
                                                          (lambda (_%g2304023060%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2304023060%_)
                        (let ((_g200974_
                               (gx#syntax-split-splice _%g2304023060%_ '0)))
                          (begin
                            (let ((_g200975_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g200974_)
                                         (##values-length _g200974_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g200975_ 2)))
                                  (error "Context expects 2 values"
                                         _g200975_)))
                            (let ((_%target2304223063%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g200974_ 0)))
                                  (_%tl2304423066%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g200974_ 1))))
                              (if (gx#stx-null? _%tl2304423066%_)
                                  (letrec ((_%loop2304523069%_
                                            (lambda (_%hd2304323073%_
                                                     _%mixin-slot2304923076%_)
                                              (if (gx#stx-pair?
                                                   _%hd2304323073%_)
                                                  (let ((_%e2304623078%_
                                                         (gx#syntax-e
                                                          _%hd2304323073%_)))
                                                    (let ((_%lp-hd2304723082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2304623078%_)))
                                                          (_%lp-tl2304823085%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2304623078%_))))
                                                      (_%loop2304523069%_
                                                       _%lp-tl2304823085%_
                                                       (cons _%lp-hd2304723082%_
                                                             _%mixin-slot2304923076%_))))
                                                  (let ((_%mixin-slot2305023088%_
                                                         (reverse _%mixin-slot2304923076%_)))
                                                    ((lambda (_%g2304123091%_)
                                                       (let* ((_%g2310923126%_
                                                               (lambda (_%g2311023122%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2311023122%_)))
                      (_%g2310824779%_
                       (lambda (_%g2311023130%_)
                         (if (gx#stx-pair/null? _%g2311023130%_)
                             (let ((_g200976_
                                    (gx#syntax-split-splice
                                     _%g2311023130%_
                                     '0)))
                               (begin
                                 (let ((_g200977_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g200976_)
                                              (##values-length _g200976_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g200977_ 2)))
                                       (error "Context expects 2 values"
                                              _g200977_)))
                                 (let ((_%target2311223133%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g200976_ 0)))
                                       (_%tl2311423136%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g200976_ 1))))
                                   (if (gx#stx-null? _%tl2311423136%_)
                                       (letrec ((_%loop2311523139%_
                                                 (lambda (_%hd2311323143%_
                                                          _%mixin-getf2311923146%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2311323143%_)
                                                       (let ((_%e2311623148%_
                                                              (gx#syntax-e
                                                               _%hd2311323143%_)))
                                                         (let ((_%lp-hd2311723152%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2311623148%_)))
                       (_%lp-tl2311823155%_
                        (let () (declare (not safe)) (##cdr _%e2311623148%_))))
                   (_%loop2311523139%_
                    _%lp-tl2311823155%_
                    (cons _%lp-hd2311723152%_ _%mixin-getf2311923146%_))))
               (let ((_%mixin-getf2312023158%_
                      (reverse _%mixin-getf2311923146%_)))
                 ((lambda (_%g2311123161%_)
                    (let* ((_%g2317823195%_
                            (lambda (_%g2317923191%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2317923191%_)))
                           (_%g2317724770%_
                            (lambda (_%g2317923199%_)
                              (if (gx#stx-pair/null? _%g2317923199%_)
                                  (let ((_g200978_
                                         (gx#syntax-split-splice
                                          _%g2317923199%_
                                          '0)))
                                    (begin
                                      (let ((_g200979_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g200978_)
                                                   (##values-length _g200978_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g200979_ 2)))
                                            (error "Context expects 2 values"
                                                   _g200979_)))
                                      (let ((_%target2318123202%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g200978_ 0)))
                                            (_%tl2318323205%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g200978_ 1))))
                                        (if (gx#stx-null? _%tl2318323205%_)
                                            (letrec ((_%loop2318423208%_
                                                      (lambda (_%hd2318223212%_
                                                               _%mixin-setf2318823215%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2318223212%_)
                                                            (let ((_%e2318523217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2318223212%_)))
                      (let ((_%lp-hd2318623221%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2318523217%_)))
                            (_%lp-tl2318723224%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2318523217%_))))
                        (_%loop2318423208%_
                         _%lp-tl2318723224%_
                         (cons _%lp-hd2318623221%_ _%mixin-setf2318823215%_))))
                    (let ((_%mixin-setf2318923227%_
                           (reverse _%mixin-setf2318823215%_)))
                      ((lambda (_%g2318023230%_)
                         (let* ((_%g2324723264%_
                                 (lambda (_%g2324823260%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2324823260%_)))
                                (_%g2324624753%_
                                 (lambda (_%g2324823268%_)
                                   (if (gx#stx-pair/null? _%g2324823268%_)
                                       (let ((_g200980_
                                              (gx#syntax-split-splice
                                               _%g2324823268%_
                                               '0)))
                                         (begin
                                           (let ((_g200981_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g200980_)
                                                        (##values-length
                                                         _g200980_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g200981_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g200981_)))
                                           (let ((_%target2325023271%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g200980_
                                                     0)))
                                                 (_%tl2325223274%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g200980_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2325223274%_)
                                                 (letrec ((_%loop2325323277%_
                                                           (lambda (_%hd2325123281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2325723284%_)
                     (if (gx#stx-pair? _%hd2325123281%_)
                         (let ((_%e2325423286%_
                                (gx#syntax-e _%hd2325123281%_)))
                           (let ((_%lp-hd2325523290%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2325423286%_)))
                                 (_%lp-tl2325623293%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2325423286%_))))
                             (_%loop2325323277%_
                              _%lp-tl2325623293%_
                              (cons _%lp-hd2325523290%_ _%ugetf2325723284%_))))
                         (let ((_%ugetf2325823296%_
                                (reverse _%ugetf2325723284%_)))
                           ((lambda (_%g2324923299%_)
                              (let* ((_%g2331623333%_
                                      (lambda (_%g2331723329%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2331723329%_)))
                                     (_%g2331524736%_
                                      (lambda (_%g2331723337%_)
                                        (if (gx#stx-pair/null? _%g2331723337%_)
                                            (let ((_g200982_
                                                   (gx#syntax-split-splice
                                                    _%g2331723337%_
                                                    '0)))
                                              (begin
                                                (let ((_g200983_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g200982_)
                                                             (##values-length
                                                              _g200982_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g200983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g200983_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2331923340%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g200982_
                                                          0)))
                                                      (_%tl2332123343%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g200982_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2332123343%_)
                                                      (letrec ((_%loop2332223346%_
                                                                (lambda (_%hd2332023350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2332623353%_)
                          (if (gx#stx-pair? _%hd2332023350%_)
                              (let ((_%e2332323355%_
                                     (gx#syntax-e _%hd2332023350%_)))
                                (let ((_%lp-hd2332423359%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2332323355%_)))
                                      (_%lp-tl2332523362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2332323355%_))))
                                  (_%loop2332223346%_
                                   _%lp-tl2332523362%_
                                   (cons _%lp-hd2332423359%_
                                         _%usetf2332623353%_))))
                              (let ((_%usetf2332723365%_
                                     (reverse _%usetf2332623353%_)))
                                ((lambda (_%g2331823368%_)
                                   (let* ((_%g2338523402%_
                                           (lambda (_%g2338623398%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2338623398%_)))
                                          (_%g2338424719%_
                                           (lambda (_%g2338623406%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2338623406%_)
                                                 (let ((_g200984_
                                                        (gx#syntax-split-splice
                                                         _%g2338623406%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g200985_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g200984_)
                          (##values-length _g200984_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g200985_ 2)))
                   (error "Context expects 2 values" _g200985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2338823409%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g200984_
                                                               0)))
                                                           (_%tl2339023412%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g200984_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2339023412%_)
                                                           (letrec ((_%loop2339123415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2338923419%_
                                      _%mixin-ugetf2339523422%_)
                               (if (gx#stx-pair? _%hd2338923419%_)
                                   (let ((_%e2339223424%_
                                          (gx#syntax-e _%hd2338923419%_)))
                                     (let ((_%lp-hd2339323428%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2339223424%_)))
                                           (_%lp-tl2339423431%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2339223424%_))))
                                       (_%loop2339123415%_
                                        _%lp-tl2339423431%_
                                        (cons _%lp-hd2339323428%_
                                              _%mixin-ugetf2339523422%_))))
                                   (let ((_%mixin-ugetf2339623434%_
                                          (reverse _%mixin-ugetf2339523422%_)))
                                     ((lambda (_%g2338723437%_)
                                        (let* ((_%g2345423471%_
                                                (lambda (_%g2345523467%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2345523467%_)))
                                               (_%g2345324702%_
                                                (lambda (_%g2345523475%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2345523475%_)
                                                      (let ((_g200986_
                                                             (gx#syntax-split-splice
                                                              _%g2345523475%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g200987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g200986_)
                               (##values-length _g200986_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g200987_ 2)))
                        (error "Context expects 2 values" _g200987_)))
                  (let ((_%target2345723478%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g200986_ 0)))
                        (_%tl2345923481%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g200986_ 1))))
                    (if (gx#stx-null? _%tl2345923481%_)
                        (letrec ((_%loop2346023484%_
                                  (lambda (_%hd2345823488%_
                                           _%mixin-usetf2346423491%_)
                                    (if (gx#stx-pair? _%hd2345823488%_)
                                        (let ((_%e2346123493%_
                                               (gx#syntax-e _%hd2345823488%_)))
                                          (let ((_%lp-hd2346223497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2346123493%_)))
                                                (_%lp-tl2346323500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2346123493%_))))
                                            (_%loop2346023484%_
                                             _%lp-tl2346323500%_
                                             (cons _%lp-hd2346223497%_
                                                   _%mixin-usetf2346423491%_))))
                                        (let ((_%mixin-usetf2346523503%_
                                               (reverse _%mixin-usetf2346423491%_)))
                                          ((lambda (_%g2345623506%_)
                                             (let* ((_%type-slots23541%_
                                                     (if (gx#stx-null?
                                                          _%slots22668%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2296923019%_
                                _%g2290022950%_
                                _%g2283122881%_)
                               (foldr (lambda (_%g2352623531%_
                                               _%g2352723534%_
                                               _%g2352823536%_
                                               _%g2352923538%_)
                                        (cons (cons _%g2352823536%_
                                                    (cons _%g2352723534%_
                                                          (cons _%g2352623531%_
                                                                '())))
                                              _%g2352923538%_))
                                      '()
                                      _%g2296923019%_
                                      _%g2290022950%_
                                      _%g2283122881%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23562%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots23036%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2318023230%_
                                _%g2311123161%_
                                _%g2304123091%_)
                               (foldr (lambda (_%g2354723552%_
                                               _%g2354823555%_
                                               _%g2354923557%_
                                               _%g2355023559%_)
                                        (cons (cons _%g2354923557%_
                                                    (cons _%g2354823555%_
                                                          (cons _%g2354723552%_
                                                                '())))
                                              _%g2355023559%_))
                                      '()
                                      _%g2318023230%_
                                      _%g2311123161%_
                                      _%g2304123091%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23569%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22669%_)))
                           (if _%$e23565%_ _%$e23565%_ _%id22666%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23576%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22669%_)))
                           (if _%$e23572%_
                               _%$e23572%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%g2268822701%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23590%_
                                                     (let ((_%$e23586%_
                                                            (let ((_%e2357823580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22669%_)))
                      (if _%e2357823580%_
                          (let ((_%e23583%_ _%e2357823580%_))
                            (cons 'constructor: (cons _%e23583%_ '())))
                          '#f))))
               (if _%$e23586%_ _%$e23586%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23631%_
                                                     (let* ((_%properties23593%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22669%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23608%_
                     (let ((_%$e23596%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22669%_))))
                       (if _%$e23596%_
                           ((lambda (_%print23600%_)
                              (let ((_%print23603%_
                                     (if (eq? _%print23600%_ '#t)
                                         _%slots22668%_
                                         _%print23600%_)))
                                (cons (cons 'print: _%print23603%_)
                                      _%properties23593%_)))
                            _%$e23596%_)
                           _%properties23593%_)))
                    (_%properties23623%_
                     (let ((_%$e23611%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22669%_))))
                       (if _%$e23611%_
                           ((lambda (_%equal23615%_)
                              (let ((_%equal23618%_
                                     (if (eq? _%equal23615%_ '#t)
                                         _%slots22668%_
                                         _%equal23615%_)))
                                (cons (cons 'equal: _%equal23618%_)
                                      _%properties23608%_)))
                            _%$e23611%_)
                           _%properties23608%_)))
                    (_%properties23626%_
                     (if (gx#stx-e (gx#stx-getq 'acyclic: _%body22669%_))
                         (cons (cons 'acyclic: '#t) _%properties23623%_)
                         _%properties23623%_)))
               _%properties23626%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23672%_
                                                     (if (null? _%properties23631%_)
                                                         '()
                                                         (let* ((_%g2363423642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2363523638%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2363523638%_)))
                        (_%g2363323668%_
                         (lambda (_%g2363523646%_)
                           ((lambda (_%g2363623649%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%g2363623649%_ '()))
                                          '())))
                            _%g2363523646%_))))
                   (_%g2363323668%_ _%properties23631%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23684%_
                                                     (let ((_%$e23675%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22669%_)))
                                                       (if _%$e23675%_
                                                           ((lambda (_%metaclass23679%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23679%_)
                          _%metaclass23679%_
                          '#f))
                    _%$e23675%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23687%_
                                                     (if _%metaclass23684%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23690%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22669%_)))
                                                    (_%type-struct23693%_
                                                     (cons 'struct:
                                                           (cons _%struct?22683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23696%_
                                                     (cons 'final:
                                                           (cons _%final?23690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2369923716%_
                                                     (lambda (_%g2370023712%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2370023712%_)))
                                                    (_%g2369824698%_
                                                     (lambda (_%g2370023720%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2370023720%_)
                                                           (let ((_g200988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2370023720%_ '0)))
                     (begin
                       (let ((_g200989_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g200988_)
                                    (##values-length _g200988_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g200989_ 2)))
                             (error "Context expects 2 values" _g200989_)))
                       (let ((_%target2370223723%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g200988_ 0)))
                             (_%tl2370423726%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g200988_ 1))))
                         (if (gx#stx-null? _%tl2370423726%_)
                             (letrec ((_%loop2370523729%_
                                       (lambda (_%hd2370323733%_
                                                _%type-body2370923736%_)
                                         (if (gx#stx-pair? _%hd2370323733%_)
                                             (let ((_%e2370623738%_
                                                    (gx#syntax-e
                                                     _%hd2370323733%_)))
                                               (let ((_%lp-hd2370723742%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2370623738%_)))
                                                     (_%lp-tl2370823745%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2370623738%_))))
                                                 (_%loop2370523729%_
                                                  _%lp-tl2370823745%_
                                                  (cons _%lp-hd2370723742%_
                                                        _%type-body2370923736%_))))
                                             (let ((_%type-body2371023748%_
                                                    (reverse _%type-body2370923736%_)))
                                               ((lambda (_%g2370123751%_)
                                                  (let* ((_%g2377223780%_
                                                          (lambda (_%g2377323776%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2377323776%_)))
                                                         (_%g2377124686%_
                                                          (lambda (_%g2377323784%_)
                                                            ((lambda (_%g2377423787%_)
                                                               (let* ((_%g2380023808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2380123804%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2380123804%_)))
                              (_%g2379924615%_
                               (lambda (_%g2380123812%_)
                                 ((lambda (_%g2380223815%_)
                                    (let* ((_%g2382823836%_
                                            (lambda (_%g2382923832%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2382923832%_)))
                                           (_%g2382724580%_
                                            (lambda (_%g2382923840%_)
                                              ((lambda (_%g2383023843%_)
                                                 (let* ((_%g2385623864%_
                                                         (lambda (_%g2385723860%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2385723860%_)))
                                                        (_%g2385524496%_
                                                         (lambda (_%g2385723868%_)
                                                           ((lambda (_%g2385823871%_)
                                                              (let* ((_%g2388423892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2388523888%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2388523888%_)))
                             (_%g2388324484%_
                              (lambda (_%g2388523896%_)
                                ((lambda (_%g2388623899%_)
                                   (let* ((_%g2391223920%_
                                           (lambda (_%g2391323916%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2391323916%_)))
                                          (_%g2391124480%_
                                           (lambda (_%g2391323924%_)
                                             ((lambda (_%g2391423927%_)
                                                (let* ((_%g2394023948%_
                                                        (lambda (_%g2394123944%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2394123944%_)))
                                                       (_%g2393924476%_
                                                        (lambda (_%g2394123952%_)
                                                          ((lambda (_%g2394223955%_)
                                                             (let* ((_%g2396823976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2396923972%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2396923972%_)))
                            (_%g2396724441%_
                             (lambda (_%g2396923980%_)
                               ((lambda (_%g2397023983%_)
                                  (let* ((_%g2399624004%_
                                          (lambda (_%g2399724000%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2399724000%_)))
                                         (_%g2399524370%_
                                          (lambda (_%g2399724008%_)
                                            ((lambda (_%g2399824011%_)
                                               (let* ((_%g2402424032%_
                                                       (lambda (_%g2402524028%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2402524028%_)))
                                                      (_%g2402324366%_
                                                       (lambda (_%g2402524036%_)
                                                         ((lambda (_%g2402624039%_)
                                                            (let* ((_%g2405224060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2405324056%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2405324056%_)))
                           (_%g2405124362%_
                            (lambda (_%g2405324064%_)
                              ((lambda (_%g2405424067%_)
                                 (let* ((_%g2408024088%_
                                         (lambda (_%g2408124084%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2408124084%_)))
                                        (_%g2407924358%_
                                         (lambda (_%g2408124092%_)
                                           ((lambda (_%g2408224095%_)
                                              (let* ((_%g2410824116%_
                                                      (lambda (_%g2410924112%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2410924112%_)))
                                                     (_%g2410724332%_
                                                      (lambda (_%g2410924120%_)
                                                        ((lambda (_%g2411024123%_)
                                                           (let* ((_%g2413624144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2413724140%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2413724140%_)))
                          (_%g2413524306%_
                           (lambda (_%g2413724148%_)
                             ((lambda (_%g2413824151%_)
                                (let* ((_%g2416424172%_
                                        (lambda (_%g2416524168%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2416524168%_)))
                                       (_%g2416324280%_
                                        (lambda (_%g2416524176%_)
                                          ((lambda (_%g2416624179%_)
                                             (let* ((_%g2419224200%_
                                                     (lambda (_%g2419324196%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2419324196%_)))
                                                    (_%g2419124254%_
                                                     (lambda (_%g2419324204%_)
                                                       ((lambda (_%g2419424207%_)
                                                          (let* ((_%g2422024228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2422124224%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2422124224%_)))
                         (_%g2421924250%_
                          (lambda (_%g2422124232%_)
                            ((lambda (_%g2422224235%_)
                               (_%wrap22671%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%g2377423787%_
                                            (cons _%g2422224235%_ '())))))
                             _%g2422124232%_))))
                    (_%g2421924250%_
                     (_%wrap22671%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%g2268822701%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%g2380223815%_
                                                          (cons 'name:
                                                                (cons _%g2383023843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%g2388623899%_
                                          (cons 'super:
                                                (cons _%g2385823871%_
                                                      (cons 'struct?:
                                                            (cons _%g2391423927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%g2394223955%_
                                      (cons 'metaclass:
                                            (cons _%g2397023983%_
                                                  (cons 'constructor-method:
                                                        (cons _%g2399824011%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g2402624039%_
                                  (cons 'constructor:
                                        (cons _%g2405424067%_
                                              (cons 'predicate:
                                                    (cons _%g2408224095%_
                                                          (cons 'accessors:
                                                                (cons _%g2411024123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%g2413824151%_
                                          (cons 'unchecked-accessors:
                                                (cons _%g2416624179%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%g2419424207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2419324204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2419124254%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%g2331823368%_
                                                         _%g2283122881%_)
                                                        (foldr (lambda (_%g2425724264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2425824267%_
                                _%g2425924269%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2425824267%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2425724264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2425924269%_))
                       (begin
                         (gx#syntax-check-splice-targets
                          _%g2345623506%_
                          _%g2304123091%_)
                         (foldr (lambda (_%g2426024272%_
                                         _%g2426124275%_
                                         _%g2426224277%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2426124275%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2426024272%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2426224277%_))
                                '()
                                _%g2345623506%_
                                _%g2304123091%_))
                       _%g2331823368%_
                       _%g2283122881%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2416524176%_))))
                                  (_%g2416324280%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%g2324923299%_
                                            _%g2283122881%_)
                                           (foldr (lambda (_%g2428324290%_
                                                           _%g2428424293%_
                                                           _%g2428524295%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2428424293%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2428324290%_ '()))
                                          '()))))
                  _%g2428524295%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g2338723437%_
                                                     _%g2304123091%_)
                                                    (foldr (lambda (_%g2428624298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2428724301%_
                            _%g2428824303%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2428724301%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2428624298%_
                                                               '()))
                                                   '()))))
                           _%g2428824303%_))
                   '()
                   _%g2338723437%_
                   _%g2304123091%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2324923299%_
                                                  _%g2283122881%_))))))
                              _%g2413724148%_))))
                     (_%g2413524306%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%g2296923019%_
                               _%g2283122881%_)
                              (foldr (lambda (_%g2430924316%_
                                              _%g2431024319%_
                                              _%g2431124321%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2431024319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2430924316%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2431124321%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%g2318023230%_
                                        _%g2304123091%_)
                                       (foldr (lambda (_%g2431224324%_
                                                       _%g2431324327%_
                                                       _%g2431424329%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2431324327%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2431224324%_ '()))
                                      '()))))
              _%g2431424329%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%g2318023230%_
                                              _%g2304123091%_))
                                     _%g2296923019%_
                                     _%g2283122881%_))))))
                 _%g2410924120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2410724332%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%g2290022950%_
                                                          _%g2283122881%_)
                                                         (foldr (lambda (_%g2433524342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2433624345%_
                                 _%g2433724347%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2433624345%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2433524342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2433724347%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%g2311123161%_
                           _%g2304123091%_)
                          (foldr (lambda (_%g2433824350%_
                                          _%g2433924353%_
                                          _%g2434024355%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2433924353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2433824350%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2434024355%_))
                                 '()
                                 _%g2311123161%_
                                 _%g2304123091%_))
                        _%g2290022950%_
                        _%g2283122881%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2408124092%_))))
                                   (_%g2407924358%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g2277522788%_ '())))))
                               _%g2405324064%_))))
                      (_%g2405124362%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%g2274722760%_ '())))))
                  _%g2402524036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2402324366%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%g2271922732%_
                                                              '())))))
                                             _%g2399724008%_))))
                                    (_%g2399524370%_
                                     (if (null? _%type-constructor23590%_)
                                         '#f
                                         (let* ((_%g2437424389%_
                                                 (lambda (_%g2437524385%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2437524385%_)))
                                                (_%g2437324437%_
                                                 (lambda (_%g2437524393%_)
                                                   (if (gx#stx-pair?
                                                        _%g2437524393%_)
                                                       (let ((_%e2437724396%_
                                                              (gx#syntax-e
                                                               _%g2437524393%_)))
                                                         (let ((_%hd2437824400%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2437724396%_)))
                       (_%tl2437924403%_
                        (let () (declare (not safe)) (##cdr _%e2437724396%_))))
                   (if (gx#stx-datum? _%hd2437824400%_)
                       (let ((_%e2438024406%_ (gx#stx-e _%hd2437824400%_)))
                         (if (equal? _%e2438024406%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2437924403%_)
                                 (let ((_%e2438124410%_
                                        (gx#syntax-e _%tl2437924403%_)))
                                   (let ((_%hd2438224414%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2438124410%_)))
                                         (_%tl2438324417%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2438124410%_))))
                                     (if (gx#stx-null? _%tl2438324417%_)
                                         ((lambda (_%g2437624420%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2437624420%_ '())))
                                          _%hd2438224414%_)
                                         (_%g2437424389%_ _%g2437524393%_))))
                                 (_%g2437424389%_ _%g2437524393%_))
                             (_%g2437424389%_ _%g2437524393%_)))
                       (_%g2437424389%_ _%g2437524393%_))))
               (_%g2437424389%_ _%g2437524393%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2437324437%_
                                            _%type-constructor23590%_))))))
                                _%g2396923980%_))))
                       (_%g2396724441%_
                        (if _%metaclass23684%_
                            (let* ((_%g2444524453%_
                                    (lambda (_%g2444624449%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2444624449%_)))
                                   (_%g2444424472%_
                                    (lambda (_%g2444624457%_)
                                      ((lambda (_%g2444724460%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%g2444724460%_ '())))
                                       _%g2444624457%_))))
                              (_%g2444424472%_ _%metaclass23684%_))
                            '#f))))
                   _%g2394123952%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2393924476%_
                                                   _%final?23690%_)))
                                              _%g2391323924%_))))
                                     (_%g2391124480%_ _%struct?22683%_)))
                                 _%g2388523896%_))))
                        (_%g2388324484%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2448724490%_
                                                     _%g2448824493%_)
                                              (cons _%g2448724490%_
                                                    _%g2448824493%_))
                                            '()
                                            _%g2283122881%_)
                                     '())))))
                    _%g2385723868%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2385524496%_
                                                    (let* ((_%g2450024517%_
                                                            (lambda (_%g2450124513%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2450124513%_)))
                                                           (_%g2449924576%_
                                                            (lambda (_%g2450124521%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2450124521%_)
                          (let ((_g200990_
                                 (gx#syntax-split-splice _%g2450124521%_ '0)))
                            (begin
                              (let ((_g200991_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g200990_)
                                           (##values-length _g200990_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g200991_ 2)))
                                    (error "Context expects 2 values"
                                           _g200991_)))
                              (let ((_%target2450324524%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g200990_ 0)))
                                    (_%tl2450524527%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g200990_ 1))))
                                (if (gx#stx-null? _%tl2450524527%_)
                                    (letrec ((_%loop2450624530%_
                                              (lambda (_%hd2450424534%_
                                                       _%super-id2451024537%_)
                                                (if (gx#stx-pair?
                                                     _%hd2450424534%_)
                                                    (let ((_%e2450724539%_
                                                           (gx#syntax-e
                                                            _%hd2450424534%_)))
                                                      (let ((_%lp-hd2450824543%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2450724539%_)))
                    (_%lp-tl2450924546%_
                     (let () (declare (not safe)) (##cdr _%e2450724539%_))))
                (_%loop2450624530%_
                 _%lp-tl2450924546%_
                 (cons _%lp-hd2450824543%_ _%super-id2451024537%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2451124549%_
                                                           (reverse _%super-id2451024537%_)))
                                                      ((lambda (_%g2450224552%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2456724570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2456824573%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2456724570%_ '()))
                                      _%g2456824573%_))
                              '()
                              _%g2450224552%_)))
               _%super-id2451124549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2450624530%_
                                       _%target2450324524%_
                                       '()))
                                    (_%g2450024517%_ _%g2450124521%_)))))
                          (_%g2450024517%_ _%g2450124521%_)))))
              (_%g2449924576%_ _%super-ref22667%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2382923840%_))))
                                      (_%g2382724580%_
                                       (let* ((_%g2458424592%_
                                               (lambda (_%g2458524588%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2458524588%_)))
                                              (_%g2458324611%_
                                               (lambda (_%g2458524596%_)
                                                 ((lambda (_%g2458624599%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2458624599%_
                                                                '())))
                                                  _%g2458524596%_))))
                                         (_%g2458324611%_
                                          (cadr _%type-name23569%_))))))
                                  _%g2380123812%_))))
                         (_%g2379924615%_
                          (let* ((_%g2461924634%_
                                  (lambda (_%g2462024630%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2462024630%_)))
                                 (_%g2461824682%_
                                  (lambda (_%g2462024638%_)
                                    (if (gx#stx-pair? _%g2462024638%_)
                                        (let ((_%e2462224641%_
                                               (gx#syntax-e _%g2462024638%_)))
                                          (let ((_%hd2462324645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2462224641%_)))
                                                (_%tl2462424648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2462224641%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2462324645%_)
                                                (let ((_%e2462524651%_
                                                       (gx#stx-e
                                                        _%hd2462324645%_)))
                                                  (if (equal? _%e2462524651%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2462424648%_)
                                                          (let ((_%e2462624655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2462424648%_)))
                    (let ((_%hd2462724659%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2462624655%_)))
                          (_%tl2462824662%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2462624655%_))))
                      (if (gx#stx-null? _%tl2462824662%_)
                          ((lambda (_%g2462124665%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%g2462124665%_ '())))
                           _%hd2462724659%_)
                          (_%g2461924634%_ _%g2462024638%_))))
                  (_%g2461924634%_ _%g2462024638%_))
              (_%g2461924634%_ _%g2462024638%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2461924634%_
                                                 _%g2462024638%_))))
                                        (_%g2461924634%_ _%g2462024638%_)))))
                            (_%g2461824682%_ _%type-id23576%_)))))
                     _%g2377323784%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2377124686%_
                                                     (_%wrap22671%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%g2271922732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g2280322816%_
                                (cons _%g2274722760%_
                                      (cons _%g2277522788%_
                                            (foldr (lambda (_%g2468924692%_
                                                            _%g2469024695%_)
                                                     (cons _%g2468924692%_
                                                           _%g2469024695%_))
                                                   '()
                                                   _%g2370123751%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2371023748%_))))))
                               (_%loop2370523729%_ _%target2370223723%_ '()))
                             (_%g2369923716%_ _%g2370023720%_)))))
                   (_%g2369923716%_ _%g2370023720%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2369824698%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23562%_
                                                                _%type-slots23541%_)
                                                         _%type-properties23672%_)
                                                  _%type-metaclass23687%_)
                                           _%type-final23696%_)
                                    _%type-struct23693%_)
                             _%type-constructor23590%_)
                      _%type-name23569%_)
               _%type-id23576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2346523503%_))))))
                          (_%loop2346023484%_ _%target2345723478%_ '()))
                        (_%g2345423471%_ _%g2345523475%_)))))
              (_%g2345423471%_ _%g2345523475%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2345324702%_
                                           (gx#stx-map
                                            (lambda (_%g2470524707%_)
                                              (_%make-id22673%_
                                               '"&"
                                               _%g2470524707%_))
                                            (foldr (lambda (_%g2471024713%_
                                                            _%g2471124716%_)
                                                     (cons _%g2471024713%_
                                                           _%g2471124716%_))
                                                   '()
                                                   _%g2318023230%_)))))
                                      _%mixin-ugetf2339623434%_))))))
                     (_%loop2339123415%_ _%target2338823409%_ '()))
                   (_%g2338523402%_ _%g2338623406%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2338523402%_
                                                  _%g2338623406%_)))))
                                     (_%g2338424719%_
                                      (gx#stx-map
                                       (lambda (_%g2472224724%_)
                                         (_%make-id22673%_
                                          '"&"
                                          _%g2472224724%_))
                                       (foldr (lambda (_%g2472724730%_
                                                       _%g2472824733%_)
                                                (cons _%g2472724730%_
                                                      _%g2472824733%_))
                                              '()
                                              _%g2311123161%_)))))
                                 _%usetf2332723365%_))))))
                (_%loop2332223346%_ _%target2331923340%_ '()))
              (_%g2331623333%_ _%g2331723337%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2331623333%_
                                             _%g2331723337%_)))))
                                (_%g2331524736%_
                                 (gx#stx-map
                                  (lambda (_%g2473924741%_)
                                    (_%make-id22673%_ '"&" _%g2473924741%_))
                                  (foldr (lambda (_%g2474424747%_
                                                  _%g2474524750%_)
                                           (cons _%g2474424747%_
                                                 _%g2474524750%_))
                                         '()
                                         _%g2296923019%_)))))
                            _%ugetf2325823296%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2325323277%_
                                                    _%target2325023271%_
                                                    '()))
                                                 (_%g2324723264%_
                                                  _%g2324823268%_)))))
                                       (_%g2324723264%_ _%g2324823268%_)))))
                           (_%g2324624753%_
                            (gx#stx-map
                             (lambda (_%g2475624758%_)
                               (_%make-id22673%_ '"&" _%g2475624758%_))
                             (foldr (lambda (_%g2476124764%_ _%g2476224767%_)
                                      (cons _%g2476124764%_ _%g2476224767%_))
                                    '()
                                    _%g2290022950%_)))))
                       _%mixin-setf2318923227%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2318423208%_
                                               _%target2318123202%_
                                               '()))
                                            (_%g2317823195%_
                                             _%g2317923199%_)))))
                                  (_%g2317823195%_ _%g2317923199%_)))))
                      (_%g2317724770%_
                       (gx#stx-map
                        (lambda (_%g2477324775%_)
                          (_%make-id22673%_
                           _%name22677%_
                           '"-"
                           _%g2477324775%_
                           '"-set!"))
                        _%mixin-slots23036%_))))
                  _%mixin-getf2312023158%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2311523139%_
                                          _%target2311223133%_
                                          '()))
                                       (_%g2310923126%_ _%g2311023130%_)))))
                             (_%g2310923126%_ _%g2311023130%_)))))
                 (_%g2310824779%_
                  (gx#stx-map
                   (lambda (_%g2478224784%_)
                     (_%make-id22673%_ _%name22677%_ '"-" _%g2478224784%_))
                   _%mixin-slots23036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2305023088%_))))))
                                    (_%loop2304523069%_
                                     _%target2304223063%_
                                     '()))
                                  (_%g2303923056%_ _%g2304023060%_)))))
                        (_%g2303923056%_ _%g2304023060%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2303824788%_
                                                     _%mixin-slots23036%_)))
                                                _%setf2297823016%_))))))
                               (_%loop2297322997%_ _%target2297022991%_ '()))
                             (_%g2296722984%_ _%g2296822988%_)))))
                   (_%g2296722984%_ _%g2296822988%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2296624792%_
                                                (gx#stx-map
                                                 (lambda (_%g2479524797%_)
                                                   (_%make-id22673%_
                                                    _%name22677%_
                                                    '"-"
                                                    _%g2479524797%_
                                                    '"-set!"))
                                                 _%slots22668%_))))
                                           _%getf2290922947%_))))))
                          (_%loop2290422928%_ _%target2290122922%_ '()))
                        (_%g2289822915%_ _%g2289922919%_)))))
              (_%g2289822915%_ _%g2289922919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2289724801%_
                                           (gx#stx-map
                                            (lambda (_%g2480424806%_)
                                              (_%make-id22673%_
                                               _%name22677%_
                                               '"-"
                                               _%g2480424806%_))
                                            _%slots22668%_))))
                                      _%slot2284022878%_))))))
                     (_%loop2283522859%_ _%target2283222853%_ '()))
                   (_%g2282922846%_ _%g2283022850%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2282922846%_
                                                  _%g2283022850%_)))))
                                     (_%g2282824810%_ _%slots22668%_)))
                                 _%g2280222813%_))))
                        (_%g2280024814%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22680%_)))))
                    _%g2277422785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2277224818%_
                                                    (_%make-id22673%_
                                                     _%name22677%_
                                                     '"?"))))
                                               _%g2274622757%_))))
                                      (_%g2274424822%_
                                       (_%make-id22673%_
                                        '"make-"
                                        _%name22677%_))))
                                  _%g2271822729%_))))
                         (_%g2271624826%_
                          (_%make-id22673%_ _%name22677%_ '"::t"))))
                     _%g2268722698%_))))
            (_%g2268524830%_ _%id22666%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24897%_)
        (let* ((_%g2490124920%_
                (lambda (_%g2490224916%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2490224916%_)))
               (_%g2490024977%_
                (lambda (_%g2490224924%_)
                  (if (gx#stx-pair? _%g2490224924%_)
                      (let ((_%e2490624927%_ (gx#syntax-e _%g2490224924%_)))
                        (let ((_%hd2490724931%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2490624927%_)))
                              (_%tl2490824934%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2490624927%_))))
                          (if (gx#stx-pair? _%tl2490824934%_)
                              (let ((_%e2490924937%_
                                     (gx#syntax-e _%tl2490824934%_)))
                                (let ((_%hd2491024941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2490924937%_)))
                                      (_%tl2491124944%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2490924937%_))))
                                  (if (gx#stx-pair? _%tl2491124944%_)
                                      (let ((_%e2491224947%_
                                             (gx#syntax-e _%tl2491124944%_)))
                                        (let ((_%hd2491324951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2491224947%_)))
                                              (_%tl2491424954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2491224947%_))))
                                          ((lambda (_%g2490324957%_
                                                    _%g2490424959%_
                                                    _%g2490524960%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%g2490524960%_
                                                         (cons _%g2490424959%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%g2490324957%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2491424954%_
                                           _%hd2491324951%_
                                           _%hd2491024941%_)))
                                      (_%g2490124920%_ _%g2490224924%_))))
                              (_%g2490124920%_ _%g2490224924%_))))
                      (_%g2490124920%_ _%g2490224924%_)))))
          (_%g2490024977%_ _%$stx24897%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24981%_)
        (letrec ((_%generate24984%_
                  (lambda (_%hd25068%_ _%slots25070%_ _%body25071%_)
                    (let* ((_%__stx200468200469%_ _%hd25068%_)
                           (_%g2507425086%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx200468200469%_))))
                      (let ((_%__kont200471200472%_
                             (lambda (_%g2507625114%_ _%g2507725116%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24981%_
                                _%g2507725116%_
                                (gx#syntax->list _%g2507625114%_)
                                _%slots25070%_
                                _%body25071%_)))
                            (_%__kont200473200474%_
                             (lambda ()
                               (if (gx#identifier? _%hd25068%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24981%_
                                    _%hd25068%_
                                    '()
                                    _%slots25070%_
                                    _%body25071%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx24981%_
                                    _%hd25068%_)))))
                        (let ((_%__match200481200482%_
                               (lambda (_%e2507825104%_
                                        _%hd2507925108%_
                                        _%tl2508025111%_)
                                 (let ((_%g2507625114%_ _%tl2508025111%_)
                                       (_%g2507725116%_ _%hd2507925108%_))
                                   (if (and (gx#stx-list? _%g2507625114%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%g2507625114%_))
                                       (_%__kont200471200472%_
                                        _%g2507625114%_
                                        _%g2507725116%_)
                                       (_%__kont200473200474%_))))))
                          (if (gx#stx-pair? _%__stx200468200469%_)
                              (let ((_%e2507825104%_
                                     (gx#syntax-e _%__stx200468200469%_)))
                                (let ((_%tl2508025111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2507825104%_)))
                                      (_%hd2507925108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2507825104%_))))
                                  (_%__match200481200482%_
                                   _%e2507825104%_
                                   _%hd2507925108%_
                                   _%tl2508025111%_)))
                              (_%__kont200473200474%_))))))))
          (let* ((_%g2498725006%_
                  (lambda (_%g2498825002%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2498825002%_)))
                 (_%g2498625064%_
                  (lambda (_%g2498825010%_)
                    (if (gx#stx-pair? _%g2498825010%_)
                        (let ((_%e2499225013%_ (gx#syntax-e _%g2498825010%_)))
                          (let ((_%hd2499325017%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2499225013%_)))
                                (_%tl2499425020%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2499225013%_))))
                            (if (gx#stx-pair? _%tl2499425020%_)
                                (let ((_%e2499525023%_
                                       (gx#syntax-e _%tl2499425020%_)))
                                  (let ((_%hd2499625027%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2499525023%_)))
                                        (_%tl2499725030%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2499525023%_))))
                                    (if (gx#stx-pair? _%tl2499725030%_)
                                        (let ((_%e2499825033%_
                                               (gx#syntax-e _%tl2499725030%_)))
                                          (let ((_%hd2499925037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2499825033%_)))
                                                (_%tl2500025040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2499825033%_))))
                                            ((lambda (_%g2498925043%_
                                                      _%g2499025045%_
                                                      _%g2499125046%_)
                                               (if (and (gx#identifier-list?
                                                         _%g2499025045%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%g2498925043%_))
                                                   (_%generate24984%_
                                                    _%g2499125046%_
                                                    _%g2499025045%_
                                                    _%g2498925043%_)
                                                   (_%g2498725006%_
                                                    _%g2498825010%_)))
                                             _%tl2500025040%_
                                             _%hd2499925037%_
                                             _%hd2499625027%_)))
                                        (_%g2498725006%_ _%g2498825010%_))))
                                (_%g2498725006%_ _%g2498825010%_))))
                        (_%g2498725006%_ _%g2498825010%_)))))
            (_%g2498625064%_ _%stx24981%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25133%_)
        (letrec ((_%wrap25136%_
                  (lambda (_%e-stx25482%_)
                    (gx#stx-wrap-source
                     _%e-stx25482%_
                     (gx#stx-source _%stx25133%_))))
                 (_%method-opt?25138%_
                  (lambda (_%x25479%_)
                    (let ((__tmp200992 (gx#stx-e _%x25479%_)))
                      (declare (not safe))
                      (##memq __tmp200992 '(rebind:))))))
          (let* ((_%g2514025169%_
                  (lambda (_%g2514125165%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2514125165%_)))
                 (_%g2513925475%_
                  (lambda (_%g2514125173%_)
                    (if (gx#stx-pair? _%g2514125173%_)
                        (let ((_%e2514625176%_ (gx#syntax-e _%g2514125173%_)))
                          (let ((_%hd2514725180%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2514625176%_)))
                                (_%tl2514825183%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2514625176%_))))
                            (if (gx#stx-pair? _%tl2514825183%_)
                                (let ((_%e2514925186%_
                                       (gx#syntax-e _%tl2514825183%_)))
                                  (let ((_%hd2515025190%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2514925186%_)))
                                        (_%tl2515125193%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2514925186%_))))
                                    (if (gx#stx-pair? _%hd2515025190%_)
                                        (let ((_%e2515225196%_
                                               (gx#syntax-e _%hd2515025190%_)))
                                          (let ((_%hd2515325200%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2515225196%_)))
                                                (_%tl2515425203%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2515225196%_))))
                                            (if (gx#identifier?
                                                 _%hd2515325200%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g200993_|
                                                     _%hd2515325200%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2515425203%_)
                                                        (let ((_%e2515525206%_
                                                               (gx#syntax-e
                                                                _%tl2515425203%_)))
                                                          (let ((_%hd2515625210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2515525206%_)))
                        (_%tl2515725213%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2515525206%_))))
                    (if (gx#stx-pair? _%tl2515725213%_)
                        (let ((_%e2515825216%_ (gx#syntax-e _%tl2515725213%_)))
                          (let ((_%hd2515925220%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2515825216%_)))
                                (_%tl2516025223%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2515825216%_))))
                            (if (gx#stx-null? _%tl2516025223%_)
                                (if (gx#stx-pair? _%tl2515125193%_)
                                    (let ((_%e2516125226%_
                                           (gx#syntax-e _%tl2515125193%_)))
                                      (let ((_%hd2516225230%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2516125226%_)))
                                            (_%tl2516325233%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2516125226%_))))
                                        ((lambda (_%g2514225236%_
                                                  _%g2514325238%_
                                                  _%g2514425239%_
                                                  _%g2514525240%_)
                                           (if (and (gx#identifier?
                                                     _%g2514525240%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%g2514425239%_))
                                                    (gx#stx-plist?
                                                     _%g2514225236%_
                                                     _%method-opt?25138%_))
                                               (let* ((_%klass25267%_
                                                       (gx#syntax-local-value
                                                        _%g2514425239%_))
                                                      (_%rebind?25270%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%g2514225236%_)))
                                                      (_%g2527325281%_
                                                       (lambda (_%g2527425277%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2527425277%_)))
                                                      (_%g2527225465%_
                                                       (lambda (_%g2527425285%_)
                                                         ((lambda (_%g2527525288%_)
                                                            (let* ((_%g2530325311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2530425307%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2530425307%_)))
                           (_%g2530225461%_
                            (lambda (_%g2530425315%_)
                              ((lambda (_%g2530525318%_)
                                 (let* ((_%g2533125339%_
                                         (lambda (_%g2533225335%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2533225335%_)))
                                        (_%g2533025457%_
                                         (lambda (_%g2533225343%_)
                                           ((lambda (_%g2533325346%_)
                                              (let* ((_%g2535925367%_
                                                      (lambda (_%g2536025363%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2536025363%_)))
                                                     (_%g2535825453%_
                                                      (lambda (_%g2536025371%_)
                                                        ((lambda (_%g2536125374%_)
                                                           (let* ((_%g2538725395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2538825391%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2538825391%_)))
                          (_%g2538625449%_
                           (lambda (_%g2538825399%_)
                             ((lambda (_%g2538925402%_)
                                (let* ((_%g2541525423%_
                                        (lambda (_%g2541625419%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2541625419%_)))
                                       (_%g2541425445%_
                                        (lambda (_%g2541625427%_)
                                          ((lambda (_%g2541725430%_)
                                             (_%wrap25136%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%g2536125374%_
                                                          (cons _%g2541725430%_
                                                                '())))))
                                           _%g2541625427%_))))
                                  (_%g2541425445%_
                                   (_%wrap25136%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%g2527525288%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2514525240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g2530525318%_ (cons _%g2538925402%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2538825399%_))))
                     (_%g2538625449%_ _%rebind?25270%_)))
                 _%g2536025371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2535825453%_
                                                 (_%wrap25136%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%g2530525318%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%g2533325346%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'syntax-rules)
                        (cons '()
                              (cons (cons (cons (gx#datum->syntax '#f '_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'obj)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'arg)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '...)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'call-next-method)
                                                      (cons _%g2527525288%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2514525240%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%g2514325238%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2533225343%_))))
                                   (_%g2533025457%_
                                    (gx#stx-identifier
                                     _%g2514425239%_
                                     '@next-method))))
                               _%g2530425315%_))))
                      (_%g2530225461%_
                       (gx#stx-identifier
                        _%g2514425239%_
                        _%g2514425239%_
                        '"::"
                        _%g2514525240%_))))
                  _%g2527425285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2527225465%_
                                                  (let ((__obj200746
                                                         _%klass25267%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj200746
                                                           'gerbil.core#runtime-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj200746
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#runtime-type-info::t
                                                         __obj200746
                                                         'type-descriptor)))))
                                               (if (gx#identifier?
                                                    _%g2514525240%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                          _%g2514425239%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25133%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; invalid class type"
                                                        _%stx25133%_
                                                        _%g2514425239%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25133%_
                                                    _%g2514525240%_))))
                                         _%tl2516325233%_
                                         _%hd2516225230%_
                                         _%hd2515925220%_
                                         _%hd2515625210%_)))
                                    (_%g2514025169%_ _%g2514125173%_))
                                (_%g2514025169%_ _%g2514125173%_))))
                        (_%g2514025169%_ _%g2514125173%_))))
                (_%g2514025169%_ _%g2514125173%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2514025169%_
                                                     _%g2514125173%_))
                                                (_%g2514025169%_
                                                 _%g2514125173%_))))
                                        (_%g2514025169%_ _%g2514125173%_))))
                                (_%g2514025169%_ _%g2514125173%_))))
                        (_%g2514025169%_ _%g2514125173%_)))))
            (_%g2513925475%_ _%stx25133%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25485%_)
        (letrec ((_%dotted-identifier?25488%_
                  (lambda (_%id26113%_)
                    (if (gx#identifier? _%id26113%_)
                        (let ((_%id-str26116%_
                               (symbol->string (gx#stx-e _%id26113%_))))
                          (if (string-index _%id-str26116%_ '#\.)
                              (let* ((_%split26119%_
                                      (string-split _%id-str26116%_ '#\.))
                                     (__tmp200994 (length _%split26119%_)))
                                (declare (not safe))
                                (##fx= __tmp200994 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25490%_
                  (lambda (_%id26102%_)
                    (let* ((_%id-str26105%_
                            (symbol->string (gx#stx-e _%id26102%_)))
                           (_%split26108%_
                            (string-split _%id-str26105%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26102%_
                             (car _%split26108%_))
                            (cons (gx#stx-identifier
                                   _%id26102%_
                                   (cadr _%split26108%_))
                                  '()))))))
          (let* ((_%__stx200484200485%_ _%stx25485%_)
                 (_%g2549525582%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200484200485%_))))
            (let ((_%__kont200487200488%_
                   (lambda (_%g2549725995%_ _%g2549825997%_ _%g2549925998%_)
                     (let* ((_%g2602626041%_
                             (lambda (_%g2602726037%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2602726037%_)))
                            (_%g2602526094%_
                             (lambda (_%g2602726045%_)
                               (if (gx#stx-pair? _%g2602726045%_)
                                   (let ((_%e2603026048%_
                                          (gx#syntax-e _%g2602726045%_)))
                                     (let ((_%hd2603126052%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2603026048%_)))
                                           (_%tl2603226055%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2603026048%_))))
                                       (if (gx#stx-pair? _%tl2603226055%_)
                                           (let ((_%e2603326058%_
                                                  (gx#syntax-e
                                                   _%tl2603226055%_)))
                                             (let ((_%hd2603426062%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2603326058%_)))
                                                   (_%tl2603526065%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2603326058%_))))
                                               (if (gx#stx-null?
                                                    _%tl2603526065%_)
                                                   ((lambda (_%g2602826068%_
                                                             _%g2602926070%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%g2602926070%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g2602826068%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2608526088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2608626091%_)
                   (cons _%g2608526088%_ _%g2608626091%_))
                 '()
                 _%g2549825997%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2603426062%_
                                                    _%hd2603126052%_)
                                                   (_%g2602626041%_
                                                    _%g2602726045%_))))
                                           (_%g2602626041%_ _%g2602726045%_))))
                                   (_%g2602626041%_ _%g2602726045%_)))))
                       (_%g2602526094%_
                        (_%split-dotted25490%_ _%g2549925998%_)))))
                  (_%__kont200491200492%_
                   (lambda (_%g2551825839%_ _%g2551925841%_)
                     (let* ((_%g2585825873%_
                             (lambda (_%g2585925869%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2585925869%_)))
                            (_%g2585725926%_
                             (lambda (_%g2585925877%_)
                               (if (gx#stx-pair? _%g2585925877%_)
                                   (let ((_%e2586225880%_
                                          (gx#syntax-e _%g2585925877%_)))
                                     (let ((_%hd2586325884%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2586225880%_)))
                                           (_%tl2586425887%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2586225880%_))))
                                       (if (gx#stx-pair? _%tl2586425887%_)
                                           (let ((_%e2586525890%_
                                                  (gx#syntax-e
                                                   _%tl2586425887%_)))
                                             (let ((_%hd2586625894%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2586525890%_)))
                                                   (_%tl2586725897%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2586525890%_))))
                                               (if (gx#stx-null?
                                                    _%tl2586725897%_)
                                                   ((lambda (_%g2586025900%_
                                                             _%g2586125902%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%g2586125902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2586025900%_ '()))
                                (foldr (lambda (_%g2591725920%_
                                                _%g2591825923%_)
                                         (cons _%g2591725920%_
                                               _%g2591825923%_))
                                       '()
                                       _%g2551825839%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2586625894%_
                                                    _%hd2586325884%_)
                                                   (_%g2585825873%_
                                                    _%g2585925877%_))))
                                           (_%g2585825873%_ _%g2585925877%_))))
                                   (_%g2585825873%_ _%g2585925877%_)))))
                       (_%g2585725926%_
                        (_%split-dotted25490%_ _%g2551925841%_)))))
                  (_%__kont200495200496%_
                   (lambda (_%g2553525745%_ _%g2553625747%_ _%g2553725748%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%g2553625747%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2553725748%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2577525778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2577625781%_)
                          (cons _%g2577525778%_ _%g2577625781%_))
                        '()
                        _%g2553525745%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont200499200500%_
                   (lambda (_%g2555625647%_ _%g2555725649%_ _%g2555825650%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%g2555725649%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2555825650%_ '()))
                                       (foldr (lambda (_%g2567125674%_
                                                       _%g2567225677%_)
                                                (cons _%g2567125674%_
                                                      _%g2567225677%_))
                                              '()
                                              _%g2555625647%_)))))))
              (let* ((_%__match200603200604%_
                      (lambda (_%e2555925589%_
                               _%hd2556025593%_
                               _%tl2556125596%_
                               _%e2556225599%_
                               _%hd2556325603%_
                               _%tl2556425606%_
                               _%e2556525609%_
                               _%hd2556625613%_
                               _%tl2556725616%_
                               _%__splice200501200502%_
                               _%target2556825619%_
                               _%tl2557025622%_)
                        (letrec ((_%loop2557125625%_
                                  (lambda (_%hd2556925629%_ _%arg2557525632%_)
                                    (if (gx#stx-pair? _%hd2556925629%_)
                                        (let ((_%e2557225634%_
                                               (gx#syntax-e _%hd2556925629%_)))
                                          (let ((_%lp-tl2557425641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2557225634%_)))
                                                (_%lp-hd2557325638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2557225634%_))))
                                            (_%loop2557125625%_
                                             _%lp-tl2557425641%_
                                             (cons _%lp-hd2557325638%_
                                                   _%arg2557525632%_))))
                                        (let ((_%arg2557625644%_
                                               (reverse _%arg2557525632%_)))
                                          (let ((_%g2555625647%_
                                                 _%arg2557625644%_)
                                                (_%g2555725649%_
                                                 _%hd2556625613%_)
                                                (_%g2555825650%_
                                                 _%hd2556325603%_))
                                            (if (gx#identifier?
                                                 _%g2555825650%_)
                                                (_%__kont200499200500%_
                                                 _%g2555625647%_
                                                 _%g2555725649%_
                                                 _%g2555825650%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2549525582%_)))))))))
                          (_%loop2557125625%_ _%target2556825619%_ '()))))
                     (_%__match200577200578%_
                      (lambda (_%e2553825687%_
                               _%hd2553925691%_
                               _%tl2554025694%_
                               _%e2554125697%_
                               _%hd2554225701%_
                               _%tl2554325704%_
                               _%e2554425707%_
                               _%hd2554525711%_
                               _%tl2554625714%_
                               _%__splice200497200498%_
                               _%target2554725717%_
                               _%tl2554925720%_)
                        (letrec ((_%loop2555025723%_
                                  (lambda (_%hd2554825727%_ _%arg2555425730%_)
                                    (if (gx#stx-pair? _%hd2554825727%_)
                                        (let ((_%e2555125732%_
                                               (gx#syntax-e _%hd2554825727%_)))
                                          (let ((_%lp-tl2555325739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2555125732%_)))
                                                (_%lp-hd2555225736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2555125732%_))))
                                            (_%loop2555025723%_
                                             _%lp-tl2555325739%_
                                             (cons _%lp-hd2555225736%_
                                                   _%arg2555425730%_))))
                                        (let ((_%arg2555525742%_
                                               (reverse _%arg2555425730%_)))
                                          (let ((_%g2553525745%_
                                                 _%arg2555525742%_)
                                                (_%g2553625747%_
                                                 _%hd2554525711%_)
                                                (_%g2553725748%_
                                                 _%hd2554225701%_))
                                            (if (and (gx#identifier?
                                                      _%g2553725748%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2576725770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2576825773%_)
                       (cons _%g2576725770%_ _%g2576825773%_))
                     '()
                     _%g2553525745%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont200495200496%_
                                                 _%g2553525745%_
                                                 _%g2553625747%_
                                                 _%g2553725748%_)
                                                (_%__match200603200604%_
                                                 _%e2553825687%_
                                                 _%hd2553925691%_
                                                 _%tl2554025694%_
                                                 _%e2554125697%_
                                                 _%hd2554225701%_
                                                 _%tl2554325704%_
                                                 _%e2554425707%_
                                                 _%hd2554525711%_
                                                 _%tl2554625714%_
                                                 _%__splice200497200498%_
                                                 _%target2554725717%_
                                                 _%tl2554925720%_))))))))
                          (_%loop2555025723%_ _%target2554725717%_ '()))))
                     (_%__match200563200564%_
                      (lambda (_%e2553825687%_
                               _%hd2553925691%_
                               _%tl2554025694%_
                               _%e2554125697%_
                               _%hd2554225701%_
                               _%tl2554325704%_)
                        (if (gx#stx-pair? _%tl2554325704%_)
                            (let ((_%e2554425707%_
                                   (gx#syntax-e _%tl2554325704%_)))
                              (let ((_%tl2554625714%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2554425707%_)))
                                    (_%hd2554525711%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2554425707%_))))
                                (if (gx#stx-pair/null? _%tl2554625714%_)
                                    (let ((_%__splice200497200498%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2554625714%_
                                            '0)))
                                      (let ((_%tl2554925720%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice200497200498%_
                                                '1)))
                                            (_%target2554725717%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice200497200498%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2554925720%_)
                                            (_%__match200577200578%_
                                             _%e2553825687%_
                                             _%hd2553925691%_
                                             _%tl2554025694%_
                                             _%e2554125697%_
                                             _%hd2554225701%_
                                             _%tl2554325704%_
                                             _%e2554425707%_
                                             _%hd2554525711%_
                                             _%tl2554625714%_
                                             _%__splice200497200498%_
                                             _%target2554725717%_
                                             _%tl2554925720%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2549525582%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2549525582%_)))))
                            (let () (declare (not safe)) (_%g2549525582%_)))))
                     (_%__match200551200552%_
                      (lambda (_%e2552025791%_
                               _%hd2552125795%_
                               _%tl2552225798%_
                               _%e2552325801%_
                               _%hd2552425805%_
                               _%tl2552525808%_
                               _%__splice200493200494%_
                               _%target2552625811%_
                               _%tl2552825814%_)
                        (letrec ((_%loop2552925817%_
                                  (lambda (_%hd2552725821%_ _%arg2553325824%_)
                                    (if (gx#stx-pair? _%hd2552725821%_)
                                        (let ((_%e2553025826%_
                                               (gx#syntax-e _%hd2552725821%_)))
                                          (let ((_%lp-tl2553225833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2553025826%_)))
                                                (_%lp-hd2553125830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2553025826%_))))
                                            (_%loop2552925817%_
                                             _%lp-tl2553225833%_
                                             (cons _%lp-hd2553125830%_
                                                   _%arg2553325824%_))))
                                        (let ((_%arg2553425836%_
                                               (reverse _%arg2553325824%_)))
                                          (let ((_%g2551825839%_
                                                 _%arg2553425836%_)
                                                (_%g2551925841%_
                                                 _%hd2552425805%_))
                                            (if (_%dotted-identifier?25488%_
                                                 _%g2551925841%_)
                                                (_%__kont200491200492%_
                                                 _%g2551825839%_
                                                 _%g2551925841%_)
                                                (_%__match200563200564%_
                                                 _%e2552025791%_
                                                 _%hd2552125795%_
                                                 _%tl2552225798%_
                                                 _%e2552325801%_
                                                 _%hd2552425805%_
                                                 _%tl2552525808%_))))))))
                          (_%loop2552925817%_ _%target2552625811%_ '()))))
                     (_%__match200549200550%_
                      (lambda (_%e2552025791%_
                               _%hd2552125795%_
                               _%tl2552225798%_
                               _%e2552325801%_
                               _%hd2552425805%_
                               _%tl2552525808%_
                               _%__splice200493200494%_
                               _%target2552625811%_
                               _%tl2552825814%_)
                        (if (gx#stx-null? _%tl2552825814%_)
                            (_%__match200551200552%_
                             _%e2552025791%_
                             _%hd2552125795%_
                             _%tl2552225798%_
                             _%e2552325801%_
                             _%hd2552425805%_
                             _%tl2552525808%_
                             _%__splice200493200494%_
                             _%target2552625811%_
                             _%tl2552825814%_)
                            (if (gx#stx-pair? _%tl2552525808%_)
                                (let ((_%e2554425707%_
                                       (gx#syntax-e _%tl2552525808%_)))
                                  (let ((_%tl2554625714%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2554425707%_)))
                                        (_%hd2554525711%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2554425707%_))))
                                    (if (gx#stx-pair/null? _%tl2554625714%_)
                                        (let ((_%__splice200497200498%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2554625714%_
                                                '0)))
                                          (let ((_%tl2554925720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200497200498%_
                                                    '1)))
                                                (_%target2554725717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200497200498%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2554925720%_)
                                                (_%__match200577200578%_
                                                 _%e2552025791%_
                                                 _%hd2552125795%_
                                                 _%tl2552225798%_
                                                 _%e2552325801%_
                                                 _%hd2552425805%_
                                                 _%tl2552525808%_
                                                 _%e2554425707%_
                                                 _%hd2554525711%_
                                                 _%tl2554625714%_
                                                 _%__splice200497200498%_
                                                 _%target2554725717%_
                                                 _%tl2554925720%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2549525582%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2549525582%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2549525582%_))))))
                     (_%__match200531200532%_
                      (lambda (_%e2550025937%_
                               _%hd2550125941%_
                               _%tl2550225944%_
                               _%e2550325947%_
                               _%hd2550425951%_
                               _%tl2550525954%_
                               _%__splice200489200490%_
                               _%target2550625957%_
                               _%tl2550825960%_
                               _%e2551525963%_
                               _%hd2551625967%_
                               _%tl2551725970%_)
                        (letrec ((_%loop2550925973%_
                                  (lambda (_%hd2550725977%_ _%arg2551325980%_)
                                    (if (gx#stx-pair? _%hd2550725977%_)
                                        (let ((_%e2551025982%_
                                               (gx#syntax-e _%hd2550725977%_)))
                                          (let ((_%lp-tl2551225989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2551025982%_)))
                                                (_%lp-hd2551125986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2551025982%_))))
                                            (_%loop2550925973%_
                                             _%lp-tl2551225989%_
                                             (cons _%lp-hd2551125986%_
                                                   _%arg2551325980%_))))
                                        (let ((_%arg2551425992%_
                                               (reverse _%arg2551325980%_)))
                                          (let ((_%g2549725995%_
                                                 _%hd2551625967%_)
                                                (_%g2549825997%_
                                                 _%arg2551425992%_)
                                                (_%g2549925998%_
                                                 _%hd2550425951%_))
                                            (if (and (_%dotted-identifier?25488%_
                                                      _%g2549925998%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2601726020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2601826023%_)
                       (cons _%g2601726020%_ _%g2601826023%_))
                     '()
                     _%g2549825997%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont200487200488%_
                                                 _%g2549725995%_
                                                 _%g2549825997%_
                                                 _%g2549925998%_)
                                                (let ((_%__splice200493200494%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2550525954%_
                                                        '0)))
                                                  (let ((_%tl2552825814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200493200494%_
                                                            '1)))
                                                        (_%target2552625811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200493200494%_
                                                            '0))))
                                                    (_%__match200549200550%_
                                                     _%e2550025937%_
                                                     _%hd2550125941%_
                                                     _%tl2550225944%_
                                                     _%e2550325947%_
                                                     _%hd2550425951%_
                                                     _%tl2550525954%_
                                                     _%__splice200493200494%_
                                                     _%target2552625811%_
                                                     _%tl2552825814%_))))))))))
                          (_%loop2550925973%_ _%target2550625957%_ '())))))
                (if (gx#stx-pair? _%__stx200484200485%_)
                    (let ((_%e2550025937%_
                           (gx#syntax-e _%__stx200484200485%_)))
                      (let ((_%tl2550225944%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2550025937%_)))
                            (_%hd2550125941%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2550025937%_))))
                        (if (gx#stx-pair? _%tl2550225944%_)
                            (let ((_%e2550325947%_
                                   (gx#syntax-e _%tl2550225944%_)))
                              (let ((_%tl2550525954%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2550325947%_)))
                                    (_%hd2550425951%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2550325947%_))))
                                (if (gx#stx-pair/null? _%tl2550525954%_)
                                    (if (let ((__tmp200995
                                               (gx#stx-length
                                                _%tl2550525954%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp200995 '1))
                                        (let ((_%__splice200489200490%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2550525954%_
                                                '1)))
                                          (let ((_%tl2550825960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200489200490%_
                                                    '1)))
                                                (_%target2550625957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200489200490%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2550825960%_)
                                                (let ((_%e2551525963%_
                                                       (gx#syntax-e
                                                        _%tl2550825960%_)))
                                                  (let ((_%tl2551725970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2551525963%_)))
                                                        (_%hd2551625967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2551525963%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2551725970%_)
                                                        (_%__match200531200532%_
                                                         _%e2550025937%_
                                                         _%hd2550125941%_
                                                         _%tl2550225944%_
                                                         _%e2550325947%_
                                                         _%hd2550425951%_
                                                         _%tl2550525954%_
                                                         _%__splice200489200490%_
                                                         _%target2550625957%_
                                                         _%tl2550825960%_
                                                         _%e2551525963%_
                                                         _%hd2551625967%_
                                                         _%tl2551725970%_)
                                                        (let ((_%__splice200493200494%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl2550525954%_
                                                                '0)))
                                                          (let ((_%tl2552825814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice200493200494%_ '1)))
                        (_%target2552625811%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice200493200494%_ '0))))
                    (if (gx#stx-null? _%tl2552825814%_)
                        (_%__match200551200552%_
                         _%e2550025937%_
                         _%hd2550125941%_
                         _%tl2550225944%_
                         _%e2550325947%_
                         _%hd2550425951%_
                         _%tl2550525954%_
                         _%__splice200493200494%_
                         _%target2552625811%_
                         _%tl2552825814%_)
                        (if (gx#stx-pair? _%tl2550525954%_)
                            (let ((_%e2554425707%_
                                   (gx#syntax-e _%tl2550525954%_)))
                              (let ((_%tl2554625714%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2554425707%_)))
                                    (_%hd2554525711%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2554425707%_))))
                                (if (gx#stx-pair/null? _%tl2554625714%_)
                                    (let ((_%__splice200497200498%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2554625714%_
                                            '0)))
                                      (let ((_%tl2554925720%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice200497200498%_
                                                '1)))
                                            (_%target2554725717%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice200497200498%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2554925720%_)
                                            (_%__match200577200578%_
                                             _%e2550025937%_
                                             _%hd2550125941%_
                                             _%tl2550225944%_
                                             _%e2550325947%_
                                             _%hd2550425951%_
                                             _%tl2550525954%_
                                             _%e2554425707%_
                                             _%hd2554525711%_
                                             _%tl2554625714%_
                                             _%__splice200497200498%_
                                             _%target2554725717%_
                                             _%tl2554925720%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2549525582%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2549525582%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2549525582%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice200493200494%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2550525954%_
                                                        '0)))
                                                  (let ((_%tl2552825814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200493200494%_
                                                            '1)))
                                                        (_%target2552625811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200493200494%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2552825814%_)
                                                        (_%__match200551200552%_
                                                         _%e2550025937%_
                                                         _%hd2550125941%_
                                                         _%tl2550225944%_
                                                         _%e2550325947%_
                                                         _%hd2550425951%_
                                                         _%tl2550525954%_
                                                         _%__splice200493200494%_
                                                         _%target2552625811%_
                                                         _%tl2552825814%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2550525954%_)
                                                            (let ((_%e2554425707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2550525954%_)))
                      (let ((_%tl2554625714%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2554425707%_)))
                            (_%hd2554525711%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2554425707%_))))
                        (if (gx#stx-pair/null? _%tl2554625714%_)
                            (let ((_%__splice200497200498%_
                                   (gx#syntax-split-splice->vector
                                    _%tl2554625714%_
                                    '0)))
                              (let ((_%tl2554925720%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice200497200498%_
                                        '1)))
                                    (_%target2554725717%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice200497200498%_
                                        '0))))
                                (if (gx#stx-null? _%tl2554925720%_)
                                    (_%__match200577200578%_
                                     _%e2550025937%_
                                     _%hd2550125941%_
                                     _%tl2550225944%_
                                     _%e2550325947%_
                                     _%hd2550425951%_
                                     _%tl2550525954%_
                                     _%e2554425707%_
                                     _%hd2554525711%_
                                     _%tl2554625714%_
                                     _%__splice200497200498%_
                                     _%target2554725717%_
                                     _%tl2554925720%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2549525582%_)))))
                            (let () (declare (not safe)) (_%g2549525582%_)))))
                    (let () (declare (not safe)) (_%g2549525582%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice200493200494%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2550525954%_
                                                '0)))
                                          (let ((_%tl2552825814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200493200494%_
                                                    '1)))
                                                (_%target2552625811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200493200494%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2552825814%_)
                                                (_%__match200551200552%_
                                                 _%e2550025937%_
                                                 _%hd2550125941%_
                                                 _%tl2550225944%_
                                                 _%e2550325947%_
                                                 _%hd2550425951%_
                                                 _%tl2550525954%_
                                                 _%__splice200493200494%_
                                                 _%target2552625811%_
                                                 _%tl2552825814%_)
                                                (if (gx#stx-pair?
                                                     _%tl2550525954%_)
                                                    (let ((_%e2554425707%_
                                                           (gx#syntax-e
                                                            _%tl2550525954%_)))
                                                      (let ((_%tl2554625714%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2554425707%_)))
                    (_%hd2554525711%_
                     (let () (declare (not safe)) (##car _%e2554425707%_))))
                (if (gx#stx-pair/null? _%tl2554625714%_)
                    (let ((_%__splice200497200498%_
                           (gx#syntax-split-splice->vector
                            _%tl2554625714%_
                            '0)))
                      (let ((_%tl2554925720%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice200497200498%_ '1)))
                            (_%target2554725717%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice200497200498%_ '0))))
                        (if (gx#stx-null? _%tl2554925720%_)
                            (_%__match200577200578%_
                             _%e2550025937%_
                             _%hd2550125941%_
                             _%tl2550225944%_
                             _%e2550325947%_
                             _%hd2550425951%_
                             _%tl2550525954%_
                             _%e2554425707%_
                             _%hd2554525711%_
                             _%tl2554625714%_
                             _%__splice200497200498%_
                             _%target2554725717%_
                             _%tl2554925720%_)
                            (let () (declare (not safe)) (_%g2549525582%_)))))
                    (let () (declare (not safe)) (_%g2549525582%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2549525582%_)))))))
                                    (if (gx#stx-pair? _%tl2550525954%_)
                                        (let ((_%e2554425707%_
                                               (gx#syntax-e _%tl2550525954%_)))
                                          (let ((_%tl2554625714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2554425707%_)))
                                                (_%hd2554525711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2554425707%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2554625714%_)
                                                (let ((_%__splice200497200498%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2554625714%_
                                                        '0)))
                                                  (let ((_%tl2554925720%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200497200498%_
                                                            '1)))
                                                        (_%target2554725717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200497200498%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2554925720%_)
                                                        (_%__match200577200578%_
                                                         _%e2550025937%_
                                                         _%hd2550125941%_
                                                         _%tl2550225944%_
                                                         _%e2550325947%_
                                                         _%hd2550425951%_
                                                         _%tl2550525954%_
                                                         _%e2554425707%_
                                                         _%hd2554525711%_
                                                         _%tl2554625714%_
                                                         _%__splice200497200498%_
                                                         _%target2554725717%_
                                                         _%tl2554925720%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2549525582%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2549525582%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2549525582%_))))))
                            (let () (declare (not safe)) (_%g2549525582%_)))))
                    (let () (declare (not safe)) (_%g2549525582%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26126%_)
        (let* ((_%__stx200606200607%_ _%$stx26126%_)
               (_%g2613126171%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx200606200607%_))))
          (let ((_%__kont200609200610%_
                 (lambda (_%g2613326307%_ _%g2613426309%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%g2613426309%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2613326307%_ '()))
                                     '())))))
                (_%__kont200611200612%_
                 (lambda (_%g2614426236%_
                          _%g2614526238%_
                          _%g2614626239%_
                          _%g2614726240%_)
                   (cons _%g2614726240%_
                         (cons (cons _%g2614726240%_
                                     (cons _%g2614626239%_
                                           (cons _%g2614526238%_ '())))
                               (foldr (lambda (_%g2626126264%_ _%g2626226267%_)
                                        (cons _%g2626126264%_ _%g2626226267%_))
                                      '()
                                      _%g2614426236%_))))))
            (let* ((_%__match200661200662%_
                    (lambda (_%e2614826178%_
                             _%hd2614926182%_
                             _%tl2615026185%_
                             _%e2615126188%_
                             _%hd2615226192%_
                             _%tl2615326195%_
                             _%e2615426198%_
                             _%hd2615526202%_
                             _%tl2615626205%_
                             _%__splice200613200614%_
                             _%target2615726208%_
                             _%tl2615926211%_)
                      (letrec ((_%loop2616026214%_
                                (lambda (_%hd2615826218%_ _%rest2616426221%_)
                                  (if (gx#stx-pair? _%hd2615826218%_)
                                      (let ((_%e2616126223%_
                                             (gx#syntax-e _%hd2615826218%_)))
                                        (let ((_%lp-tl2616326230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2616126223%_)))
                                              (_%lp-hd2616226227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2616126223%_))))
                                          (_%loop2616026214%_
                                           _%lp-tl2616326230%_
                                           (cons _%lp-hd2616226227%_
                                                 _%rest2616426221%_))))
                                      (let ((_%rest2616526233%_
                                             (reverse _%rest2616426221%_)))
                                        (_%__kont200611200612%_
                                         _%rest2616526233%_
                                         _%hd2615526202%_
                                         _%hd2615226192%_
                                         _%hd2614926182%_))))))
                        (_%loop2616026214%_ _%target2615726208%_ '()))))
                   (_%__match200635200636%_
                    (lambda (_%e2613526277%_
                             _%hd2613626281%_
                             _%tl2613726284%_
                             _%e2613826287%_
                             _%hd2613926291%_
                             _%tl2614026294%_
                             _%e2614126297%_
                             _%hd2614226301%_
                             _%tl2614326304%_)
                      (let ((_%g2613326307%_ _%hd2614226301%_)
                            (_%g2613426309%_ _%hd2613926291%_))
                        (if (gx#identifier? _%g2613326307%_)
                            (_%__kont200609200610%_
                             _%g2613326307%_
                             _%g2613426309%_)
                            (if (gx#stx-pair/null? _%tl2614326304%_)
                                (let ((_%__splice200613200614%_
                                       (gx#syntax-split-splice->vector
                                        _%tl2614326304%_
                                        '0)))
                                  (let ((_%tl2615926211%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice200613200614%_
                                            '1)))
                                        (_%target2615726208%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice200613200614%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2615926211%_)
                                        (_%__match200661200662%_
                                         _%e2613526277%_
                                         _%hd2613626281%_
                                         _%tl2613726284%_
                                         _%e2613826287%_
                                         _%hd2613926291%_
                                         _%tl2614026294%_
                                         _%e2614126297%_
                                         _%hd2614226301%_
                                         _%tl2614326304%_
                                         _%__splice200613200614%_
                                         _%target2615726208%_
                                         _%tl2615926211%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2613126171%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2613126171%_))))))))
              (if (gx#stx-pair? _%__stx200606200607%_)
                  (let ((_%e2613526277%_ (gx#syntax-e _%__stx200606200607%_)))
                    (let ((_%tl2613726284%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2613526277%_)))
                          (_%hd2613626281%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2613526277%_))))
                      (if (gx#stx-pair? _%tl2613726284%_)
                          (let ((_%e2613826287%_
                                 (gx#syntax-e _%tl2613726284%_)))
                            (let ((_%tl2614026294%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2613826287%_)))
                                  (_%hd2613926291%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2613826287%_))))
                              (if (gx#stx-pair? _%tl2614026294%_)
                                  (let ((_%e2614126297%_
                                         (gx#syntax-e _%tl2614026294%_)))
                                    (let ((_%tl2614326304%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2614126297%_)))
                                          (_%hd2614226301%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2614126297%_))))
                                      (if (gx#stx-null? _%tl2614326304%_)
                                          (_%__match200635200636%_
                                           _%e2613526277%_
                                           _%hd2613626281%_
                                           _%tl2613726284%_
                                           _%e2613826287%_
                                           _%hd2613926291%_
                                           _%tl2614026294%_
                                           _%e2614126297%_
                                           _%hd2614226301%_
                                           _%tl2614326304%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2614326304%_)
                                              (let ((_%__splice200613200614%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl2614326304%_
                                                      '0)))
                                                (let ((_%tl2615926211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200613200614%_
                                                          '1)))
                                                      (_%target2615726208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200613200614%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2615926211%_)
                                                      (_%__match200661200662%_
                                                       _%e2613526277%_
                                                       _%hd2613626281%_
                                                       _%tl2613726284%_
                                                       _%e2613826287%_
                                                       _%hd2613926291%_
                                                       _%tl2614026294%_
                                                       _%e2614126297%_
                                                       _%hd2614226301%_
                                                       _%tl2614326304%_
                                                       _%__splice200613200614%_
                                                       _%target2615726208%_
                                                       _%tl2615926211%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2613126171%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2613126171%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2613126171%_)))))
                          (let () (declare (not safe)) (_%g2613126171%_)))))
                  (let () (declare (not safe)) (_%g2613126171%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26329%_)
        (let* ((_%__stx200664200665%_ _%$stx26329%_)
               (_%g2633426386%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx200664200665%_))))
          (let ((_%__kont200667200668%_
                 (lambda (_%g2633626560%_ _%g2633726562%_ _%g2633826563%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%g2633826563%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2633726562%_ '()))
                                     (cons _%g2633626560%_ '()))))))
                (_%__kont200669200670%_
                 (lambda (_%g2635126471%_
                          _%g2635226473%_
                          _%g2635326474%_
                          _%g2635426475%_
                          _%g2635526476%_
                          _%g2635626477%_)
                   (cons _%g2635626477%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%g2635526476%_
                                           (cons _%g2635426475%_
                                                 (foldr (lambda (_%g2650426507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2650526510%_)
                  (cons _%g2650426507%_ _%g2650526510%_))
                '()
                _%g2635326474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g2635226473%_
                                     (cons _%g2635126471%_ '())))))))
            (let* ((_%__match200739200740%_
                    (lambda (_%e2635726393%_
                             _%hd2635826397%_
                             _%tl2635926400%_
                             _%e2636026403%_
                             _%hd2636126407%_
                             _%tl2636226410%_
                             _%e2636326413%_
                             _%hd2636426417%_
                             _%tl2636526420%_
                             _%__splice200671200672%_
                             _%target2636626423%_
                             _%tl2636826426%_
                             _%e2637526429%_
                             _%hd2637626433%_
                             _%tl2637726436%_
                             _%e2637826439%_
                             _%hd2637926443%_
                             _%tl2638026446%_)
                      (letrec ((_%loop2636926449%_
                                (lambda (_%hd2636726453%_ _%path2637326456%_)
                                  (if (gx#stx-pair? _%hd2636726453%_)
                                      (let ((_%e2637026458%_
                                             (gx#syntax-e _%hd2636726453%_)))
                                        (let ((_%lp-tl2637226465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2637026458%_)))
                                              (_%lp-hd2637126462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2637026458%_))))
                                          (_%loop2636926449%_
                                           _%lp-tl2637226465%_
                                           (cons _%lp-hd2637126462%_
                                                 _%path2637326456%_))))
                                      (let ((_%path2637426468%_
                                             (reverse _%path2637326456%_)))
                                        (_%__kont200669200670%_
                                         _%hd2637926443%_
                                         _%hd2637626433%_
                                         _%path2637426468%_
                                         _%hd2636426417%_
                                         _%hd2636126407%_
                                         _%hd2635826397%_))))))
                        (_%loop2636926449%_ _%target2636626423%_ '()))))
                   (_%__match200699200700%_
                    (lambda (_%e2633926520%_
                             _%hd2634026524%_
                             _%tl2634126527%_
                             _%e2634226530%_
                             _%hd2634326534%_
                             _%tl2634426537%_
                             _%e2634526540%_
                             _%hd2634626544%_
                             _%tl2634726547%_
                             _%e2634826550%_
                             _%hd2634926554%_
                             _%tl2635026557%_)
                      (let ((_%g2633626560%_ _%hd2634926554%_)
                            (_%g2633726562%_ _%hd2634626544%_)
                            (_%g2633826563%_ _%hd2634326534%_))
                        (if (gx#identifier? _%g2633726562%_)
                            (_%__kont200667200668%_
                             _%g2633626560%_
                             _%g2633726562%_
                             _%g2633826563%_)
                            (if (gx#stx-pair/null? _%tl2634726547%_)
                                (if (let ((__tmp200996
                                           (gx#stx-length _%tl2634726547%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp200996 '2))
                                    (let ((_%__splice200671200672%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2634726547%_
                                            '2)))
                                      (let ((_%tl2636826426%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice200671200672%_
                                                '1)))
                                            (_%target2636626423%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice200671200672%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2636826426%_)
                                            (let ((_%e2637526429%_
                                                   (gx#syntax-e
                                                    _%tl2636826426%_)))
                                              (let ((_%tl2637726436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2637526429%_)))
                                                    (_%hd2637626433%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2637526429%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2637726436%_)
                                                    (let ((_%e2637826439%_
                                                           (gx#syntax-e
                                                            _%tl2637726436%_)))
                                                      (let ((_%tl2638026446%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2637826439%_)))
                    (_%hd2637926443%_
                     (let () (declare (not safe)) (##car _%e2637826439%_))))
                (if (gx#stx-null? _%tl2638026446%_)
                    (_%__match200739200740%_
                     _%e2633926520%_
                     _%hd2634026524%_
                     _%tl2634126527%_
                     _%e2634226530%_
                     _%hd2634326534%_
                     _%tl2634426537%_
                     _%e2634526540%_
                     _%hd2634626544%_
                     _%tl2634726547%_
                     _%__splice200671200672%_
                     _%target2636626423%_
                     _%tl2636826426%_
                     _%e2637526429%_
                     _%hd2637626433%_
                     _%tl2637726436%_
                     _%e2637826439%_
                     _%hd2637926443%_
                     _%tl2638026446%_)
                    (let () (declare (not safe)) (_%g2633426386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2633426386%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2633426386%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2633426386%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2633426386%_))))))))
              (if (gx#stx-pair? _%__stx200664200665%_)
                  (let ((_%e2633926520%_ (gx#syntax-e _%__stx200664200665%_)))
                    (let ((_%tl2634126527%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2633926520%_)))
                          (_%hd2634026524%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2633926520%_))))
                      (if (gx#stx-pair? _%tl2634126527%_)
                          (let ((_%e2634226530%_
                                 (gx#syntax-e _%tl2634126527%_)))
                            (let ((_%tl2634426537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2634226530%_)))
                                  (_%hd2634326534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2634226530%_))))
                              (if (gx#stx-pair? _%tl2634426537%_)
                                  (let ((_%e2634526540%_
                                         (gx#syntax-e _%tl2634426537%_)))
                                    (let ((_%tl2634726547%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2634526540%_)))
                                          (_%hd2634626544%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2634526540%_))))
                                      (if (gx#stx-pair? _%tl2634726547%_)
                                          (let ((_%e2634826550%_
                                                 (gx#syntax-e
                                                  _%tl2634726547%_)))
                                            (let ((_%tl2635026557%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2634826550%_)))
                                                  (_%hd2634926554%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2634826550%_))))
                                              (if (gx#stx-null?
                                                   _%tl2635026557%_)
                                                  (_%__match200699200700%_
                                                   _%e2633926520%_
                                                   _%hd2634026524%_
                                                   _%tl2634126527%_
                                                   _%e2634226530%_
                                                   _%hd2634326534%_
                                                   _%tl2634426537%_
                                                   _%e2634526540%_
                                                   _%hd2634626544%_
                                                   _%tl2634726547%_
                                                   _%e2634826550%_
                                                   _%hd2634926554%_
                                                   _%tl2635026557%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2634726547%_)
                                                      (if (let ((__tmp200997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2634726547%_)))
                    (declare (not safe))
                    (##fx>= __tmp200997 '2))
                  (let ((_%__splice200671200672%_
                         (gx#syntax-split-splice->vector _%tl2634726547%_ '2)))
                    (let ((_%tl2636826426%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200671200672%_ '1)))
                          (_%target2636626423%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200671200672%_ '0))))
                      (if (gx#stx-pair? _%tl2636826426%_)
                          (let ((_%e2637526429%_
                                 (gx#syntax-e _%tl2636826426%_)))
                            (let ((_%tl2637726436%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2637526429%_)))
                                  (_%hd2637626433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2637526429%_))))
                              (if (gx#stx-pair? _%tl2637726436%_)
                                  (let ((_%e2637826439%_
                                         (gx#syntax-e _%tl2637726436%_)))
                                    (let ((_%tl2638026446%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2637826439%_)))
                                          (_%hd2637926443%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2637826439%_))))
                                      (if (gx#stx-null? _%tl2638026446%_)
                                          (_%__match200739200740%_
                                           _%e2633926520%_
                                           _%hd2634026524%_
                                           _%tl2634126527%_
                                           _%e2634226530%_
                                           _%hd2634326534%_
                                           _%tl2634426537%_
                                           _%e2634526540%_
                                           _%hd2634626544%_
                                           _%tl2634726547%_
                                           _%__splice200671200672%_
                                           _%target2636626423%_
                                           _%tl2636826426%_
                                           _%e2637526429%_
                                           _%hd2637626433%_
                                           _%tl2637726436%_
                                           _%e2637826439%_
                                           _%hd2637926443%_
                                           _%tl2638026446%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2633426386%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2633426386%_)))))
                          (let () (declare (not safe)) (_%g2633426386%_)))))
                  (let () (declare (not safe)) (_%g2633426386%_)))
              (let () (declare (not safe)) (_%g2633426386%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2634726547%_)
                                              (if (let ((__tmp200998
                                                         (gx#stx-length
                                                          _%tl2634726547%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp200998 '2))
                                                  (let ((_%__splice200671200672%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl2634726547%_
                                                          '2)))
                                                    (let ((_%tl2636826426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice200671200672%_
                                                              '1)))
                                                          (_%target2636626423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice200671200672%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2636826426%_)
                                                          (let ((_%e2637526429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2636826426%_)))
                    (let ((_%tl2637726436%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2637526429%_)))
                          (_%hd2637626433%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2637526429%_))))
                      (if (gx#stx-pair? _%tl2637726436%_)
                          (let ((_%e2637826439%_
                                 (gx#syntax-e _%tl2637726436%_)))
                            (let ((_%tl2638026446%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2637826439%_)))
                                  (_%hd2637926443%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2637826439%_))))
                              (if (gx#stx-null? _%tl2638026446%_)
                                  (_%__match200739200740%_
                                   _%e2633926520%_
                                   _%hd2634026524%_
                                   _%tl2634126527%_
                                   _%e2634226530%_
                                   _%hd2634326534%_
                                   _%tl2634426537%_
                                   _%e2634526540%_
                                   _%hd2634626544%_
                                   _%tl2634726547%_
                                   _%__splice200671200672%_
                                   _%target2636626423%_
                                   _%tl2636826426%_
                                   _%e2637526429%_
                                   _%hd2637626433%_
                                   _%tl2637726436%_
                                   _%e2637826439%_
                                   _%hd2637926443%_
                                   _%tl2638026446%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2633426386%_)))))
                          (let () (declare (not safe)) (_%g2633426386%_)))))
                  (let () (declare (not safe)) (_%g2633426386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2633426386%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2633426386%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2633426386%_)))))
                          (let () (declare (not safe)) (_%g2633426386%_)))))
                  (let () (declare (not safe)) (_%g2633426386%_))))))))))
