(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27334_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24888%_)
        (letrec ((_%body-opt?24891%_
                  (lambda (_%key24894%_)
                    (let ((__tmp27306 (gx#stx-e _%key24894%_)))
                      (declare (not safe))
                      (##memq __tmp27306
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:))))))
          (gx#stx-plist? _%stx24888%_ _%body-opt?24891%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22654%_
               _%id22656%_
               _%super-ref22657%_
               _%slots22658%_
               _%body22659%_)
        (letrec ((_%wrap22661%_
                  (lambda (_%e-stx24885%_)
                    (gx#stx-wrap-source
                     _%e-stx24885%_
                     (gx#stx-source _%stx22654%_))))
                 (_%make-id22663%_
                  (lambda _%args24882%_
                    (apply gx#stx-identifier _%id22656%_ _%args24882%_)))
                 (_%get-mixin-slots22664%_
                  (lambda (_%super24852%_ _%slots24854%_)
                    (letrec* ((_%tab24856%_ (make-hash-table-eq))
                              (_%dedup24858%_
                               (lambda (_%mixins24869%_)
                                 (let _%lp24872%_ ((_%rest24875%_
                                                    _%mixins24869%_)
                                                   (_%r24877%_ '()))
                                   (if (pair? _%rest24875%_)
                                       (let ((_%slot24879%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24875%_))))
                                         (if (hash-get
                                              _%tab24856%_
                                              _%slot24879%_)
                                             (_%lp24872%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24875%_))
                                              _%r24877%_)
                                             (begin
                                               (hash-put!
                                                _%tab24856%_
                                                _%slot24879%_
                                                '#t)
                                               (_%lp24872%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24875%_))
                                                (cons _%slot24879%_
                                                      _%r24877%_)))))
                                       (reverse _%r24877%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24860%_)
                         (hash-put! _%tab24856%_ (gx#stx-e _%slot24860%_) '#t))
                       _%slots24854%_)
                      (if (not _%super24852%_)
                          '()
                          (if (gx#identifier? _%super24852%_)
                              (_%dedup24858%_
                               (_%get-mixin-slots-r22665%_ _%super24852%_))
                              (_%dedup24858%_
                               (concatenate
                                (map _%get-mixin-slots-r22665%_
                                     _%super24852%_))))))))
                 (_%get-mixin-slots-r22665%_
                  (lambda (_%type-id24846%_)
                    (let ((_%info24849%_
                           (gx#syntax-local-value _%type-id24846%_)))
                      (let ((__tmp27308
                             (let ((__obj27123 _%info24849%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27123
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27123
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27123
                                    'slots))))
                            (__tmp27307
                             (concatenate
                              (map _%get-mixin-slots-r22665%_
                                   (let ((__obj27124 _%info24849%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27124
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27124
                                            '3
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27124
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27308 __tmp27307))))))
          (gx#check-duplicate-identifiers _%slots22658%_ _%stx22654%_)
          (let* ((_%name22667%_ (symbol->string (gx#stx-e _%id22656%_)))
                 (_%super22670%_
                  (map gx#syntax-local-value _%super-ref22657%_))
                 (_%struct?22673%_ (gx#stx-getq 'struct: _%body22659%_))
                 (_%g2267622684%_
                  (lambda (_%g2267722680%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2267722680%_)))
                 (_%g2267524842%_
                  (lambda (_%g2267722688%_)
                    ((lambda (_%L22691%_)
                       (let* ((_%g2270722715%_
                               (lambda (_%g2270822711%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2270822711%_)))
                              (_%g2270624838%_
                               (lambda (_%g2270822719%_)
                                 ((lambda (_%L22722%_)
                                    (let* ((_%g2273522743%_
                                            (lambda (_%g2273622739%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2273622739%_)))
                                           (_%g2273424834%_
                                            (lambda (_%g2273622747%_)
                                              ((lambda (_%L22750%_)
                                                 (let* ((_%g2276322771%_
                                                         (lambda (_%g2276422767%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2276422767%_)))
                                                        (_%g2276224830%_
                                                         (lambda (_%g2276422775%_)
                                                           ((lambda (_%L22778%_)
                                                              (let* ((_%g2279122799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2279222795%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2279222795%_)))
                             (_%g2279024826%_
                              (lambda (_%g2279222803%_)
                                ((lambda (_%L22806%_)
                                   (let* ((_%g2281922836%_
                                           (lambda (_%g2282022832%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2282022832%_)))
                                          (_%g2281824822%_
                                           (lambda (_%g2282022840%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2282022840%_)
                                                 (let ((_g27309_
                                                        (gx#syntax-split-splice
                                                         _%g2282022840%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27310_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27309_)
                          (##values-length _g27309_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27310_ 2)))
                   (error "Context expects 2 values" _g27310_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2282222843%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27309_
                                                               0)))
                                                           (_%tl2282422846%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27309_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2282422846%_)
                                                           (letrec ((_%loop2282522849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2282322853%_ _%slot2282922856%_)
                               (if (gx#stx-pair? _%hd2282322853%_)
                                   (let ((_%e2282622859%_
                                          (gx#syntax-e _%hd2282322853%_)))
                                     (let ((_%lp-hd2282722863%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2282622859%_)))
                                           (_%lp-tl2282822866%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2282622859%_))))
                                       (_%loop2282522849%_
                                        _%lp-tl2282822866%_
                                        (cons _%lp-hd2282722863%_
                                              _%slot2282922856%_))))
                                   (let ((_%slot2283022869%_
                                          (reverse _%slot2282922856%_)))
                                     ((lambda (_%L22873%_)
                                        (let* ((_%g2289022907%_
                                                (lambda (_%g2289122903%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2289122903%_)))
                                               (_%g2288924813%_
                                                (lambda (_%g2289122911%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2289122911%_)
                                                      (let ((_g27311_
                                                             (gx#syntax-split-splice
                                                              _%g2289122911%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27311_)
                               (##values-length _g27311_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27312_ 2)))
                        (error "Context expects 2 values" _g27312_)))
                  (let ((_%target2289322914%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27311_ 0)))
                        (_%tl2289522917%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27311_ 1))))
                    (if (gx#stx-null? _%tl2289522917%_)
                        (letrec ((_%loop2289622920%_
                                  (lambda (_%hd2289422924%_ _%getf2290022927%_)
                                    (if (gx#stx-pair? _%hd2289422924%_)
                                        (let ((_%e2289722930%_
                                               (gx#syntax-e _%hd2289422924%_)))
                                          (let ((_%lp-hd2289822934%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2289722930%_)))
                                                (_%lp-tl2289922937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2289722930%_))))
                                            (_%loop2289622920%_
                                             _%lp-tl2289922937%_
                                             (cons _%lp-hd2289822934%_
                                                   _%getf2290022927%_))))
                                        (let ((_%getf2290122940%_
                                               (reverse _%getf2290022927%_)))
                                          ((lambda (_%L22944%_)
                                             (let* ((_%g2296122978%_
                                                     (lambda (_%g2296222974%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2296222974%_)))
                                                    (_%g2296024804%_
                                                     (lambda (_%g2296222982%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2296222982%_)
                                                           (let ((_g27313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2296222982%_ '0)))
                     (begin
                       (let ((_g27314_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27313_)
                                    (##values-length _g27313_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27314_ 2)))
                             (error "Context expects 2 values" _g27314_)))
                       (let ((_%target2296422985%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27313_ 0)))
                             (_%tl2296622988%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27313_ 1))))
                         (if (gx#stx-null? _%tl2296622988%_)
                             (letrec ((_%loop2296722991%_
                                       (lambda (_%hd2296522995%_
                                                _%setf2297122998%_)
                                         (if (gx#stx-pair? _%hd2296522995%_)
                                             (let ((_%e2296823001%_
                                                    (gx#syntax-e
                                                     _%hd2296522995%_)))
                                               (let ((_%lp-hd2296923005%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2296823001%_)))
                                                     (_%lp-tl2297023008%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2296823001%_))))
                                                 (_%loop2296722991%_
                                                  _%lp-tl2297023008%_
                                                  (cons _%lp-hd2296923005%_
                                                        _%setf2297122998%_))))
                                             (let ((_%setf2297223011%_
                                                    (reverse _%setf2297122998%_)))
                                               ((lambda (_%L23015%_)
                                                  (let* ((_%mixin-slots23032%_
                                                          (_%get-mixin-slots22664%_
                                                           _%super-ref22657%_
                                                           _%slots22658%_))
                                                         (_%g2303523052%_
                                                          (lambda (_%g2303623048%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2303623048%_)))
                                                         (_%g2303424800%_
                                                          (lambda (_%g2303623056%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2303623056%_)
                        (let ((_g27315_
                               (gx#syntax-split-splice _%g2303623056%_ '0)))
                          (begin
                            (let ((_g27316_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27315_)
                                         (##values-length _g27315_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27316_ 2)))
                                  (error "Context expects 2 values" _g27316_)))
                            (let ((_%target2303823059%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27315_ 0)))
                                  (_%tl2304023062%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27315_ 1))))
                              (if (gx#stx-null? _%tl2304023062%_)
                                  (letrec ((_%loop2304123065%_
                                            (lambda (_%hd2303923069%_
                                                     _%mixin-slot2304523072%_)
                                              (if (gx#stx-pair?
                                                   _%hd2303923069%_)
                                                  (let ((_%e2304223075%_
                                                         (gx#syntax-e
                                                          _%hd2303923069%_)))
                                                    (let ((_%lp-hd2304323079%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2304223075%_)))
                                                          (_%lp-tl2304423082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2304223075%_))))
                                                      (_%loop2304123065%_
                                                       _%lp-tl2304423082%_
                                                       (cons _%lp-hd2304323079%_
                                                             _%mixin-slot2304523072%_))))
                                                  (let ((_%mixin-slot2304623085%_
                                                         (reverse _%mixin-slot2304523072%_)))
                                                    ((lambda (_%L23089%_)
                                                       (let* ((_%g2310723124%_
                                                               (lambda (_%g2310823120%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2310823120%_)))
                      (_%g2310624791%_
                       (lambda (_%g2310823128%_)
                         (if (gx#stx-pair/null? _%g2310823128%_)
                             (let ((_g27317_
                                    (gx#syntax-split-splice
                                     _%g2310823128%_
                                     '0)))
                               (begin
                                 (let ((_g27318_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27317_)
                                              (##values-length _g27317_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27318_ 2)))
                                       (error "Context expects 2 values"
                                              _g27318_)))
                                 (let ((_%target2311023131%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27317_ 0)))
                                       (_%tl2311223134%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27317_ 1))))
                                   (if (gx#stx-null? _%tl2311223134%_)
                                       (letrec ((_%loop2311323137%_
                                                 (lambda (_%hd2311123141%_
                                                          _%mixin-getf2311723144%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2311123141%_)
                                                       (let ((_%e2311423147%_
                                                              (gx#syntax-e
                                                               _%hd2311123141%_)))
                                                         (let ((_%lp-hd2311523151%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2311423147%_)))
                       (_%lp-tl2311623154%_
                        (let () (declare (not safe)) (##cdr _%e2311423147%_))))
                   (_%loop2311323137%_
                    _%lp-tl2311623154%_
                    (cons _%lp-hd2311523151%_ _%mixin-getf2311723144%_))))
               (let ((_%mixin-getf2311823157%_
                      (reverse _%mixin-getf2311723144%_)))
                 ((lambda (_%L23161%_)
                    (let* ((_%g2317823195%_
                            (lambda (_%g2317923191%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2317923191%_)))
                           (_%g2317724782%_
                            (lambda (_%g2317923199%_)
                              (if (gx#stx-pair/null? _%g2317923199%_)
                                  (let ((_g27319_
                                         (gx#syntax-split-splice
                                          _%g2317923199%_
                                          '0)))
                                    (begin
                                      (let ((_g27320_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27319_)
                                                   (##values-length _g27319_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27320_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27320_)))
                                      (let ((_%target2318123202%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27319_ 0)))
                                            (_%tl2318323205%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27319_ 1))))
                                        (if (gx#stx-null? _%tl2318323205%_)
                                            (letrec ((_%loop2318423208%_
                                                      (lambda (_%hd2318223212%_
                                                               _%mixin-setf2318823215%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2318223212%_)
                                                            (let ((_%e2318523218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2318223212%_)))
                      (let ((_%lp-hd2318623222%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2318523218%_)))
                            (_%lp-tl2318723225%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2318523218%_))))
                        (_%loop2318423208%_
                         _%lp-tl2318723225%_
                         (cons _%lp-hd2318623222%_ _%mixin-setf2318823215%_))))
                    (let ((_%mixin-setf2318923228%_
                           (reverse _%mixin-setf2318823215%_)))
                      ((lambda (_%L23232%_)
                         (let* ((_%g2324923266%_
                                 (lambda (_%g2325023262%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2325023262%_)))
                                (_%g2324824765%_
                                 (lambda (_%g2325023270%_)
                                   (if (gx#stx-pair/null? _%g2325023270%_)
                                       (let ((_g27321_
                                              (gx#syntax-split-splice
                                               _%g2325023270%_
                                               '0)))
                                         (begin
                                           (let ((_g27322_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27321_)
                                                        (##values-length
                                                         _g27321_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27322_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27322_)))
                                           (let ((_%target2325223273%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27321_ 0)))
                                                 (_%tl2325423276%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27321_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2325423276%_)
                                                 (letrec ((_%loop2325523279%_
                                                           (lambda (_%hd2325323283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2325923286%_)
                     (if (gx#stx-pair? _%hd2325323283%_)
                         (let ((_%e2325623289%_
                                (gx#syntax-e _%hd2325323283%_)))
                           (let ((_%lp-hd2325723293%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2325623289%_)))
                                 (_%lp-tl2325823296%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2325623289%_))))
                             (_%loop2325523279%_
                              _%lp-tl2325823296%_
                              (cons _%lp-hd2325723293%_ _%ugetf2325923286%_))))
                         (let ((_%ugetf2326023299%_
                                (reverse _%ugetf2325923286%_)))
                           ((lambda (_%L23303%_)
                              (let* ((_%g2332023337%_
                                      (lambda (_%g2332123333%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2332123333%_)))
                                     (_%g2331924748%_
                                      (lambda (_%g2332123341%_)
                                        (if (gx#stx-pair/null? _%g2332123341%_)
                                            (let ((_g27323_
                                                   (gx#syntax-split-splice
                                                    _%g2332123341%_
                                                    '0)))
                                              (begin
                                                (let ((_g27324_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27323_)
                                                             (##values-length
                                                              _g27323_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27324_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2332323344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27323_
                                                          0)))
                                                      (_%tl2332523347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27323_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2332523347%_)
                                                      (letrec ((_%loop2332623350%_
                                                                (lambda (_%hd2332423354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2333023357%_)
                          (if (gx#stx-pair? _%hd2332423354%_)
                              (let ((_%e2332723360%_
                                     (gx#syntax-e _%hd2332423354%_)))
                                (let ((_%lp-hd2332823364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2332723360%_)))
                                      (_%lp-tl2332923367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2332723360%_))))
                                  (_%loop2332623350%_
                                   _%lp-tl2332923367%_
                                   (cons _%lp-hd2332823364%_
                                         _%usetf2333023357%_))))
                              (let ((_%usetf2333123370%_
                                     (reverse _%usetf2333023357%_)))
                                ((lambda (_%L23374%_)
                                   (let* ((_%g2339123408%_
                                           (lambda (_%g2339223404%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2339223404%_)))
                                          (_%g2339024731%_
                                           (lambda (_%g2339223412%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2339223412%_)
                                                 (let ((_g27325_
                                                        (gx#syntax-split-splice
                                                         _%g2339223412%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27326_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27325_)
                          (##values-length _g27325_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27326_ 2)))
                   (error "Context expects 2 values" _g27326_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2339423415%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27325_
                                                               0)))
                                                           (_%tl2339623418%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27325_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2339623418%_)
                                                           (letrec ((_%loop2339723421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2339523425%_
                                      _%mixin-ugetf2340123428%_)
                               (if (gx#stx-pair? _%hd2339523425%_)
                                   (let ((_%e2339823431%_
                                          (gx#syntax-e _%hd2339523425%_)))
                                     (let ((_%lp-hd2339923435%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2339823431%_)))
                                           (_%lp-tl2340023438%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2339823431%_))))
                                       (_%loop2339723421%_
                                        _%lp-tl2340023438%_
                                        (cons _%lp-hd2339923435%_
                                              _%mixin-ugetf2340123428%_))))
                                   (let ((_%mixin-ugetf2340223441%_
                                          (reverse _%mixin-ugetf2340123428%_)))
                                     ((lambda (_%L23445%_)
                                        (let* ((_%g2346223479%_
                                                (lambda (_%g2346323475%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2346323475%_)))
                                               (_%g2346124714%_
                                                (lambda (_%g2346323483%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2346323483%_)
                                                      (let ((_g27327_
                                                             (gx#syntax-split-splice
                                                              _%g2346323483%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27327_)
                               (##values-length _g27327_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27328_ 2)))
                        (error "Context expects 2 values" _g27328_)))
                  (let ((_%target2346523486%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27327_ 0)))
                        (_%tl2346723489%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27327_ 1))))
                    (if (gx#stx-null? _%tl2346723489%_)
                        (letrec ((_%loop2346823492%_
                                  (lambda (_%hd2346623496%_
                                           _%mixin-usetf2347223499%_)
                                    (if (gx#stx-pair? _%hd2346623496%_)
                                        (let ((_%e2346923502%_
                                               (gx#syntax-e _%hd2346623496%_)))
                                          (let ((_%lp-hd2347023506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2346923502%_)))
                                                (_%lp-tl2347123509%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2346923502%_))))
                                            (_%loop2346823492%_
                                             _%lp-tl2347123509%_
                                             (cons _%lp-hd2347023506%_
                                                   _%mixin-usetf2347223499%_))))
                                        (let ((_%mixin-usetf2347323512%_
                                               (reverse _%mixin-usetf2347223499%_)))
                                          ((lambda (_%L23516%_)
                                             (let* ((_%type-slots23551%_
                                                     (if (gx#stx-null?
                                                          _%slots22658%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L23015%_
                                _%L22944%_
                                _%L22873%_)
                               (foldr (lambda (_%g2353623541%_
                                               _%g2353723544%_
                                               _%g2353823546%_
                                               _%g2353923548%_)
                                        (cons (cons _%g2353823546%_
                                                    (cons _%g2353723544%_
                                                          (cons _%g2353623541%_
                                                                '())))
                                              _%g2353923548%_))
                                      '()
                                      _%L23015%_
                                      _%L22944%_
                                      _%L22873%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23572%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots23032%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L23232%_
                                _%L23161%_
                                _%L23089%_)
                               (foldr (lambda (_%g2355723562%_
                                               _%g2355823565%_
                                               _%g2355923567%_
                                               _%g2356023569%_)
                                        (cons (cons _%g2355923567%_
                                                    (cons _%g2355823565%_
                                                          (cons _%g2355723562%_
                                                                '())))
                                              _%g2356023569%_))
                                      '()
                                      _%L23232%_
                                      _%L23161%_
                                      _%L23089%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23579%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22659%_)))
                           (if _%$e23575%_ _%$e23575%_ _%id22656%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23586%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22659%_)))
                           (if _%$e23582%_
                               _%$e23582%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%L22691%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23601%_
                                                     (let ((_%$e23597%_
                                                            (let ((_%e2358823590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22659%_)))
                      (if _%e2358823590%_
                          (let ((_%e23594%_ _%e2358823590%_))
                            (cons 'constructor: (cons _%e23594%_ '())))
                          '#f))))
               (if _%$e23597%_ _%$e23597%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23639%_
                                                     (let* ((_%properties23604%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22659%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23619%_
                     (let ((_%$e23607%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22659%_))))
                       (if _%$e23607%_
                           ((lambda (_%print23611%_)
                              (let ((_%print23614%_
                                     (if (eq? _%print23611%_ '#t)
                                         _%slots22658%_
                                         _%print23611%_)))
                                (cons (cons 'print: _%print23614%_)
                                      _%properties23604%_)))
                            _%$e23607%_)
                           _%properties23604%_)))
                    (_%properties23634%_
                     (let ((_%$e23622%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22659%_))))
                       (if _%$e23622%_
                           ((lambda (_%equal23626%_)
                              (let ((_%equal23629%_
                                     (if (eq? _%equal23626%_ '#t)
                                         _%slots22658%_
                                         _%equal23626%_)))
                                (cons (cons 'equal: _%equal23629%_)
                                      _%properties23619%_)))
                            _%$e23622%_)
                           _%properties23619%_))))
               _%properties23634%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23680%_
                                                     (if (null? _%properties23639%_)
                                                         '()
                                                         (let* ((_%g2364223650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2364323646%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2364323646%_)))
                        (_%g2364123676%_
                         (lambda (_%g2364323654%_)
                           ((lambda (_%L23657%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%L23657%_ '()))
                                          '())))
                            _%g2364323654%_))))
                   (_%g2364123676%_ _%properties23639%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23692%_
                                                     (let ((_%$e23683%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22659%_)))
                                                       (if _%$e23683%_
                                                           ((lambda (_%metaclass23687%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23687%_)
                          _%metaclass23687%_
                          '#f))
                    _%$e23683%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23695%_
                                                     (if _%metaclass23692%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23698%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22659%_)))
                                                    (_%type-struct23701%_
                                                     (cons 'struct:
                                                           (cons _%struct?22673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23704%_
                                                     (cons 'final:
                                                           (cons _%final?23698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2370723724%_
                                                     (lambda (_%g2370823720%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2370823720%_)))
                                                    (_%g2370624710%_
                                                     (lambda (_%g2370823728%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2370823728%_)
                                                           (let ((_g27329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2370823728%_ '0)))
                     (begin
                       (let ((_g27330_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27329_)
                                    (##values-length _g27329_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27330_ 2)))
                             (error "Context expects 2 values" _g27330_)))
                       (let ((_%target2371023731%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27329_ 0)))
                             (_%tl2371223734%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27329_ 1))))
                         (if (gx#stx-null? _%tl2371223734%_)
                             (letrec ((_%loop2371323737%_
                                       (lambda (_%hd2371123741%_
                                                _%type-body2371723744%_)
                                         (if (gx#stx-pair? _%hd2371123741%_)
                                             (let ((_%e2371423747%_
                                                    (gx#syntax-e
                                                     _%hd2371123741%_)))
                                               (let ((_%lp-hd2371523751%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2371423747%_)))
                                                     (_%lp-tl2371623754%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2371423747%_))))
                                                 (_%loop2371323737%_
                                                  _%lp-tl2371623754%_
                                                  (cons _%lp-hd2371523751%_
                                                        _%type-body2371723744%_))))
                                             (let ((_%type-body2371823757%_
                                                    (reverse _%type-body2371723744%_)))
                                               ((lambda (_%L23761%_)
                                                  (let* ((_%g2378223790%_
                                                          (lambda (_%g2378323786%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2378323786%_)))
                                                         (_%g2378124698%_
                                                          (lambda (_%g2378323794%_)
                                                            ((lambda (_%L23797%_)
                                                               (let* ((_%g2381023818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2381123814%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2381123814%_)))
                              (_%g2380924627%_
                               (lambda (_%g2381123822%_)
                                 ((lambda (_%L23825%_)
                                    (let* ((_%g2383823846%_
                                            (lambda (_%g2383923842%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2383923842%_)))
                                           (_%g2383724592%_
                                            (lambda (_%g2383923850%_)
                                              ((lambda (_%L23853%_)
                                                 (let* ((_%g2386623874%_
                                                         (lambda (_%g2386723870%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2386723870%_)))
                                                        (_%g2386524506%_
                                                         (lambda (_%g2386723878%_)
                                                           ((lambda (_%L23881%_)
                                                              (let* ((_%g2389423902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2389523898%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2389523898%_)))
                             (_%g2389324494%_
                              (lambda (_%g2389523906%_)
                                ((lambda (_%L23909%_)
                                   (let* ((_%g2392223930%_
                                           (lambda (_%g2392323926%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2392323926%_)))
                                          (_%g2392124490%_
                                           (lambda (_%g2392323934%_)
                                             ((lambda (_%L23937%_)
                                                (let* ((_%g2395023958%_
                                                        (lambda (_%g2395123954%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2395123954%_)))
                                                       (_%g2394924486%_
                                                        (lambda (_%g2395123962%_)
                                                          ((lambda (_%L23965%_)
                                                             (let* ((_%g2397823986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2397923982%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2397923982%_)))
                            (_%g2397724451%_
                             (lambda (_%g2397923990%_)
                               ((lambda (_%L23993%_)
                                  (let* ((_%g2400624014%_
                                          (lambda (_%g2400724010%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2400724010%_)))
                                         (_%g2400524380%_
                                          (lambda (_%g2400724018%_)
                                            ((lambda (_%L24021%_)
                                               (let* ((_%g2403424042%_
                                                       (lambda (_%g2403524038%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2403524038%_)))
                                                      (_%g2403324376%_
                                                       (lambda (_%g2403524046%_)
                                                         ((lambda (_%L24049%_)
                                                            (let* ((_%g2406224070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2406324066%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2406324066%_)))
                           (_%g2406124372%_
                            (lambda (_%g2406324074%_)
                              ((lambda (_%L24077%_)
                                 (let* ((_%g2409024098%_
                                         (lambda (_%g2409124094%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2409124094%_)))
                                        (_%g2408924368%_
                                         (lambda (_%g2409124102%_)
                                           ((lambda (_%L24105%_)
                                              (let* ((_%g2411824126%_
                                                      (lambda (_%g2411924122%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2411924122%_)))
                                                     (_%g2411724342%_
                                                      (lambda (_%g2411924130%_)
                                                        ((lambda (_%L24133%_)
                                                           (let* ((_%g2414624154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2414724150%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2414724150%_)))
                          (_%g2414524316%_
                           (lambda (_%g2414724158%_)
                             ((lambda (_%L24161%_)
                                (let* ((_%g2417424182%_
                                        (lambda (_%g2417524178%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2417524178%_)))
                                       (_%g2417324290%_
                                        (lambda (_%g2417524186%_)
                                          ((lambda (_%L24189%_)
                                             (let* ((_%g2420224210%_
                                                     (lambda (_%g2420324206%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2420324206%_)))
                                                    (_%g2420124264%_
                                                     (lambda (_%g2420324214%_)
                                                       ((lambda (_%L24217%_)
                                                          (let* ((_%g2423024238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2423124234%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2423124234%_)))
                         (_%g2422924260%_
                          (lambda (_%g2423124242%_)
                            ((lambda (_%L24245%_)
                               (_%wrap22661%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%L23797%_
                                            (cons _%L24245%_ '())))))
                             _%g2423124242%_))))
                    (_%g2422924260%_
                     (_%wrap22661%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%L22691%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%L23825%_
                                                          (cons 'name:
                                                                (cons _%L23853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%L23909%_
                                          (cons 'super:
                                                (cons _%L23881%_
                                                      (cons 'struct?:
                                                            (cons _%L23937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%L23965%_
                                      (cons 'metaclass:
                                            (cons _%L23993%_
                                                  (cons 'constructor-method:
                                                        (cons _%L24021%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L24049%_
                                  (cons 'constructor:
                                        (cons _%L24077%_
                                              (cons 'predicate:
                                                    (cons _%L24105%_
                                                          (cons 'accessors:
                                                                (cons _%L24133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%L24161%_
                                          (cons 'unchecked-accessors:
                                                (cons _%L24189%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%L24217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2420324214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2420124264%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%L23374%_
                                                         _%L22873%_)
                                                        (foldr (lambda (_%g2426724274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2426824277%_
                                _%g2426924279%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2426824277%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2426724274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2426924279%_))
                       (begin
                         (gx#syntax-check-splice-targets _%L23516%_ _%L23089%_)
                         (foldr (lambda (_%g2427024282%_
                                         _%g2427124285%_
                                         _%g2427224287%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2427124285%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2427024282%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2427224287%_))
                                '()
                                _%L23516%_
                                _%L23089%_))
                       _%L23374%_
                       _%L22873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2417524186%_))))
                                  (_%g2417324290%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%L23303%_
                                            _%L22873%_)
                                           (foldr (lambda (_%g2429324300%_
                                                           _%g2429424303%_
                                                           _%g2429524305%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2429424303%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2429324300%_ '()))
                                          '()))))
                  _%g2429524305%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L23445%_
                                                     _%L23089%_)
                                                    (foldr (lambda (_%g2429624308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2429724311%_
                            _%g2429824313%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2429724311%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2429624308%_
                                                               '()))
                                                   '()))))
                           _%g2429824313%_))
                   '()
                   _%L23445%_
                   _%L23089%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%L23303%_
                                                  _%L22873%_))))))
                              _%g2414724158%_))))
                     (_%g2414524316%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%L23015%_
                               _%L22873%_)
                              (foldr (lambda (_%g2431924326%_
                                              _%g2432024329%_
                                              _%g2432124331%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2432024329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2431924326%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2432124331%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%L23232%_
                                        _%L23089%_)
                                       (foldr (lambda (_%g2432224334%_
                                                       _%g2432324337%_
                                                       _%g2432424339%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2432324337%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2432224334%_ '()))
                                      '()))))
              _%g2432424339%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L23232%_
                                              _%L23089%_))
                                     _%L23015%_
                                     _%L22873%_))))))
                 _%g2411924130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2411724342%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%L22944%_
                                                          _%L22873%_)
                                                         (foldr (lambda (_%g2434524352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2434624355%_
                                 _%g2434724357%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2434624355%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2434524352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2434724357%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%L23161%_
                           _%L23089%_)
                          (foldr (lambda (_%g2434824360%_
                                          _%g2434924363%_
                                          _%g2435024365%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2434924363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2434824360%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2435024365%_))
                                 '()
                                 _%L23161%_
                                 _%L23089%_))
                        _%L22944%_
                        _%L22873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2409124102%_))))
                                   (_%g2408924368%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%L22778%_ '())))))
                               _%g2406324074%_))))
                      (_%g2406124372%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%L22750%_ '())))))
                  _%g2403524046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2403324376%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%L22722%_
                                                              '())))))
                                             _%g2400724018%_))))
                                    (_%g2400524380%_
                                     (if (null? _%type-constructor23601%_)
                                         '#f
                                         (let* ((_%g2438424399%_
                                                 (lambda (_%g2438524395%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2438524395%_)))
                                                (_%g2438324447%_
                                                 (lambda (_%g2438524403%_)
                                                   (if (gx#stx-pair?
                                                        _%g2438524403%_)
                                                       (let ((_%e2438724406%_
                                                              (gx#syntax-e
                                                               _%g2438524403%_)))
                                                         (let ((_%hd2438824410%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2438724406%_)))
                       (_%tl2438924413%_
                        (let () (declare (not safe)) (##cdr _%e2438724406%_))))
                   (if (gx#stx-datum? _%hd2438824410%_)
                       (let ((_%e2439024416%_ (gx#stx-e _%hd2438824410%_)))
                         (if (equal? _%e2439024416%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2438924413%_)
                                 (let ((_%e2439124420%_
                                        (gx#syntax-e _%tl2438924413%_)))
                                   (let ((_%hd2439224424%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2439124420%_)))
                                         (_%tl2439324427%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2439124420%_))))
                                     (if (gx#stx-null? _%tl2439324427%_)
                                         ((lambda (_%L24430%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L24430%_ '())))
                                          _%hd2439224424%_)
                                         (_%g2438424399%_ _%g2438524403%_))))
                                 (_%g2438424399%_ _%g2438524403%_))
                             (_%g2438424399%_ _%g2438524403%_)))
                       (_%g2438424399%_ _%g2438524403%_))))
               (_%g2438424399%_ _%g2438524403%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2438324447%_
                                            _%type-constructor23601%_))))))
                                _%g2397923990%_))))
                       (_%g2397724451%_
                        (if _%metaclass23692%_
                            (let* ((_%g2445524463%_
                                    (lambda (_%g2445624459%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2445624459%_)))
                                   (_%g2445424482%_
                                    (lambda (_%g2445624467%_)
                                      ((lambda (_%L24470%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%L24470%_ '())))
                                       _%g2445624467%_))))
                              (_%g2445424482%_ _%metaclass23692%_))
                            '#f))))
                   _%g2395123962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2394924486%_
                                                   _%final?23698%_)))
                                              _%g2392323934%_))))
                                     (_%g2392124490%_ _%struct?22673%_)))
                                 _%g2389523906%_))))
                        (_%g2389324494%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2449724500%_
                                                     _%g2449824503%_)
                                              (cons _%g2449724500%_
                                                    _%g2449824503%_))
                                            '()
                                            _%L22873%_)
                                     '())))))
                    _%g2386723878%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2386524506%_
                                                    (let* ((_%g2451024527%_
                                                            (lambda (_%g2451124523%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2451124523%_)))
                                                           (_%g2450924588%_
                                                            (lambda (_%g2451124531%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2451124531%_)
                          (let ((_g27331_
                                 (gx#syntax-split-splice _%g2451124531%_ '0)))
                            (begin
                              (let ((_g27332_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27331_)
                                           (##values-length _g27331_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27332_ 2)))
                                    (error "Context expects 2 values"
                                           _g27332_)))
                              (let ((_%target2451324534%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27331_ 0)))
                                    (_%tl2451524537%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27331_ 1))))
                                (if (gx#stx-null? _%tl2451524537%_)
                                    (letrec ((_%loop2451624540%_
                                              (lambda (_%hd2451424544%_
                                                       _%super-id2452024547%_)
                                                (if (gx#stx-pair?
                                                     _%hd2451424544%_)
                                                    (let ((_%e2451724550%_
                                                           (gx#syntax-e
                                                            _%hd2451424544%_)))
                                                      (let ((_%lp-hd2451824554%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2451724550%_)))
                    (_%lp-tl2451924557%_
                     (let () (declare (not safe)) (##cdr _%e2451724550%_))))
                (_%loop2451624540%_
                 _%lp-tl2451924557%_
                 (cons _%lp-hd2451824554%_ _%super-id2452024547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2452124560%_
                                                           (reverse _%super-id2452024547%_)))
                                                      ((lambda (_%L24564%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2457924582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2458024585%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2457924582%_ '()))
                                      _%g2458024585%_))
                              '()
                              _%L24564%_)))
               _%super-id2452124560%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2451624540%_
                                       _%target2451324534%_
                                       '()))
                                    (_%g2451024527%_ _%g2451124531%_)))))
                          (_%g2451024527%_ _%g2451124531%_)))))
              (_%g2450924588%_ _%super-ref22657%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2383923850%_))))
                                      (_%g2383724592%_
                                       (let* ((_%g2459624604%_
                                               (lambda (_%g2459724600%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2459724600%_)))
                                              (_%g2459524623%_
                                               (lambda (_%g2459724608%_)
                                                 ((lambda (_%L24611%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%L24611%_
                                                                '())))
                                                  _%g2459724608%_))))
                                         (_%g2459524623%_
                                          (cadr _%type-name23579%_))))))
                                  _%g2381123822%_))))
                         (_%g2380924627%_
                          (let* ((_%g2463124646%_
                                  (lambda (_%g2463224642%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2463224642%_)))
                                 (_%g2463024694%_
                                  (lambda (_%g2463224650%_)
                                    (if (gx#stx-pair? _%g2463224650%_)
                                        (let ((_%e2463424653%_
                                               (gx#syntax-e _%g2463224650%_)))
                                          (let ((_%hd2463524657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2463424653%_)))
                                                (_%tl2463624660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2463424653%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2463524657%_)
                                                (let ((_%e2463724663%_
                                                       (gx#stx-e
                                                        _%hd2463524657%_)))
                                                  (if (equal? _%e2463724663%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2463624660%_)
                                                          (let ((_%e2463824667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2463624660%_)))
                    (let ((_%hd2463924671%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2463824667%_)))
                          (_%tl2464024674%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2463824667%_))))
                      (if (gx#stx-null? _%tl2464024674%_)
                          ((lambda (_%L24677%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%L24677%_ '())))
                           _%hd2463924671%_)
                          (_%g2463124646%_ _%g2463224650%_))))
                  (_%g2463124646%_ _%g2463224650%_))
              (_%g2463124646%_ _%g2463224650%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2463124646%_
                                                 _%g2463224650%_))))
                                        (_%g2463124646%_ _%g2463224650%_)))))
                            (_%g2463024694%_ _%type-id23586%_)))))
                     _%g2378323794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2378124698%_
                                                     (_%wrap22661%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%L22722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L22806%_
                                (cons _%L22750%_
                                      (cons _%L22778%_
                                            (foldr (lambda (_%g2470124704%_
                                                            _%g2470224707%_)
                                                     (cons _%g2470124704%_
                                                           _%g2470224707%_))
                                                   '()
                                                   _%L23761%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2371823757%_))))))
                               (_%loop2371323737%_ _%target2371023731%_ '()))
                             (_%g2370723724%_ _%g2370823728%_)))))
                   (_%g2370723724%_ _%g2370823728%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2370624710%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23572%_
                                                                _%type-slots23551%_)
                                                         _%type-properties23680%_)
                                                  _%type-metaclass23695%_)
                                           _%type-final23704%_)
                                    _%type-struct23701%_)
                             _%type-constructor23601%_)
                      _%type-name23579%_)
               _%type-id23586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2347323512%_))))))
                          (_%loop2346823492%_ _%target2346523486%_ '()))
                        (_%g2346223479%_ _%g2346323483%_)))))
              (_%g2346223479%_ _%g2346323483%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2346124714%_
                                           (gx#stx-map
                                            (lambda (_%g2471724719%_)
                                              (_%make-id22663%_
                                               '"&"
                                               _%g2471724719%_))
                                            (foldr (lambda (_%g2472224725%_
                                                            _%g2472324728%_)
                                                     (cons _%g2472224725%_
                                                           _%g2472324728%_))
                                                   '()
                                                   _%L23232%_)))))
                                      _%mixin-ugetf2340223441%_))))))
                     (_%loop2339723421%_ _%target2339423415%_ '()))
                   (_%g2339123408%_ _%g2339223412%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2339123408%_
                                                  _%g2339223412%_)))))
                                     (_%g2339024731%_
                                      (gx#stx-map
                                       (lambda (_%g2473424736%_)
                                         (_%make-id22663%_
                                          '"&"
                                          _%g2473424736%_))
                                       (foldr (lambda (_%g2473924742%_
                                                       _%g2474024745%_)
                                                (cons _%g2473924742%_
                                                      _%g2474024745%_))
                                              '()
                                              _%L23161%_)))))
                                 _%usetf2333123370%_))))))
                (_%loop2332623350%_ _%target2332323344%_ '()))
              (_%g2332023337%_ _%g2332123341%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2332023337%_
                                             _%g2332123341%_)))))
                                (_%g2331924748%_
                                 (gx#stx-map
                                  (lambda (_%g2475124753%_)
                                    (_%make-id22663%_ '"&" _%g2475124753%_))
                                  (foldr (lambda (_%g2475624759%_
                                                  _%g2475724762%_)
                                           (cons _%g2475624759%_
                                                 _%g2475724762%_))
                                         '()
                                         _%L23015%_)))))
                            _%ugetf2326023299%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2325523279%_
                                                    _%target2325223273%_
                                                    '()))
                                                 (_%g2324923266%_
                                                  _%g2325023270%_)))))
                                       (_%g2324923266%_ _%g2325023270%_)))))
                           (_%g2324824765%_
                            (gx#stx-map
                             (lambda (_%g2476824770%_)
                               (_%make-id22663%_ '"&" _%g2476824770%_))
                             (foldr (lambda (_%g2477324776%_ _%g2477424779%_)
                                      (cons _%g2477324776%_ _%g2477424779%_))
                                    '()
                                    _%L22944%_)))))
                       _%mixin-setf2318923228%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2318423208%_
                                               _%target2318123202%_
                                               '()))
                                            (_%g2317823195%_
                                             _%g2317923199%_)))))
                                  (_%g2317823195%_ _%g2317923199%_)))))
                      (_%g2317724782%_
                       (gx#stx-map
                        (lambda (_%g2478524787%_)
                          (_%make-id22663%_
                           _%name22667%_
                           '"-"
                           _%g2478524787%_
                           '"-set!"))
                        _%mixin-slots23032%_))))
                  _%mixin-getf2311823157%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2311323137%_
                                          _%target2311023131%_
                                          '()))
                                       (_%g2310723124%_ _%g2310823128%_)))))
                             (_%g2310723124%_ _%g2310823128%_)))))
                 (_%g2310624791%_
                  (gx#stx-map
                   (lambda (_%g2479424796%_)
                     (_%make-id22663%_ _%name22667%_ '"-" _%g2479424796%_))
                   _%mixin-slots23032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2304623085%_))))))
                                    (_%loop2304123065%_
                                     _%target2303823059%_
                                     '()))
                                  (_%g2303523052%_ _%g2303623056%_)))))
                        (_%g2303523052%_ _%g2303623056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2303424800%_
                                                     _%mixin-slots23032%_)))
                                                _%setf2297223011%_))))))
                               (_%loop2296722991%_ _%target2296422985%_ '()))
                             (_%g2296122978%_ _%g2296222982%_)))))
                   (_%g2296122978%_ _%g2296222982%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2296024804%_
                                                (gx#stx-map
                                                 (lambda (_%g2480724809%_)
                                                   (_%make-id22663%_
                                                    _%name22667%_
                                                    '"-"
                                                    _%g2480724809%_
                                                    '"-set!"))
                                                 _%slots22658%_))))
                                           _%getf2290122940%_))))))
                          (_%loop2289622920%_ _%target2289322914%_ '()))
                        (_%g2289022907%_ _%g2289122911%_)))))
              (_%g2289022907%_ _%g2289122911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2288924813%_
                                           (gx#stx-map
                                            (lambda (_%g2481624818%_)
                                              (_%make-id22663%_
                                               _%name22667%_
                                               '"-"
                                               _%g2481624818%_))
                                            _%slots22658%_))))
                                      _%slot2283022869%_))))))
                     (_%loop2282522849%_ _%target2282222843%_ '()))
                   (_%g2281922836%_ _%g2282022840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2281922836%_
                                                  _%g2282022840%_)))))
                                     (_%g2281824822%_ _%slots22658%_)))
                                 _%g2279222803%_))))
                        (_%g2279024826%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22670%_)))))
                    _%g2276422775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2276224830%_
                                                    (_%make-id22663%_
                                                     _%name22667%_
                                                     '"?"))))
                                               _%g2273622747%_))))
                                      (_%g2273424834%_
                                       (_%make-id22663%_
                                        '"make-"
                                        _%name22667%_))))
                                  _%g2270822719%_))))
                         (_%g2270624838%_
                          (_%make-id22663%_ _%name22667%_ '"::t"))))
                     _%g2267722688%_))))
            (_%g2267524842%_ _%id22656%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24909%_)
        (let* ((_%g2491324932%_
                (lambda (_%g2491424928%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2491424928%_)))
               (_%g2491224989%_
                (lambda (_%g2491424936%_)
                  (if (gx#stx-pair? _%g2491424936%_)
                      (let ((_%e2491824939%_ (gx#syntax-e _%g2491424936%_)))
                        (let ((_%hd2491924943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2491824939%_)))
                              (_%tl2492024946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2491824939%_))))
                          (if (gx#stx-pair? _%tl2492024946%_)
                              (let ((_%e2492124949%_
                                     (gx#syntax-e _%tl2492024946%_)))
                                (let ((_%hd2492224953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2492124949%_)))
                                      (_%tl2492324956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2492124949%_))))
                                  (if (gx#stx-pair? _%tl2492324956%_)
                                      (let ((_%e2492424959%_
                                             (gx#syntax-e _%tl2492324956%_)))
                                        (let ((_%hd2492524963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2492424959%_)))
                                              (_%tl2492624966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2492424959%_))))
                                          ((lambda (_%L24969%_
                                                    _%L24971%_
                                                    _%L24972%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%L24972%_
                                                         (cons _%L24971%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L24969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2492624966%_
                                           _%hd2492524963%_
                                           _%hd2492224953%_)))
                                      (_%g2491324932%_ _%g2491424936%_))))
                              (_%g2491324932%_ _%g2491424936%_))))
                      (_%g2491324932%_ _%g2491424936%_)))))
          (_%g2491224989%_ _%$stx24909%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24993%_)
        (letrec ((_%generate24996%_
                  (lambda (_%hd25080%_ _%slots25082%_ _%body25083%_)
                    (let* ((_%__stx2684826849%_ _%hd25080%_)
                           (_%g2508625098%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2684826849%_))))
                      (let ((_%__kont2685126852%_
                             (lambda (_%L25126%_ _%L25128%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24993%_
                                _%L25128%_
                                (gx#syntax->list _%L25126%_)
                                _%slots25082%_
                                _%body25083%_)))
                            (_%__kont2685326854%_
                             (lambda ()
                               (if (gx#identifier? _%hd25080%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24993%_
                                    _%hd25080%_
                                    '()
                                    _%slots25082%_
                                    _%body25083%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _%stx24993%_
                                    _%hd25080%_)))))
                        (let ((_%__match2686126862%_
                               (lambda (_%e2509025116%_
                                        _%hd2509125120%_
                                        _%tl2509225123%_)
                                 (let ((_%L25126%_ _%tl2509225123%_)
                                       (_%L25128%_ _%hd2509125120%_))
                                   (if (and (gx#stx-list? _%L25126%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%L25126%_))
                                       (_%__kont2685126852%_
                                        _%L25126%_
                                        _%L25128%_)
                                       (_%__kont2685326854%_))))))
                          (if (gx#stx-pair? _%__stx2684826849%_)
                              (let ((_%e2509025116%_
                                     (gx#syntax-e _%__stx2684826849%_)))
                                (let ((_%tl2509225123%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2509025116%_)))
                                      (_%hd2509125120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2509025116%_))))
                                  (_%__match2686126862%_
                                   _%e2509025116%_
                                   _%hd2509125120%_
                                   _%tl2509225123%_)))
                              (_%__kont2685326854%_))))))))
          (let* ((_%g2499925018%_
                  (lambda (_%g2500025014%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2500025014%_)))
                 (_%g2499825076%_
                  (lambda (_%g2500025022%_)
                    (if (gx#stx-pair? _%g2500025022%_)
                        (let ((_%e2500425025%_ (gx#syntax-e _%g2500025022%_)))
                          (let ((_%hd2500525029%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2500425025%_)))
                                (_%tl2500625032%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2500425025%_))))
                            (if (gx#stx-pair? _%tl2500625032%_)
                                (let ((_%e2500725035%_
                                       (gx#syntax-e _%tl2500625032%_)))
                                  (let ((_%hd2500825039%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2500725035%_)))
                                        (_%tl2500925042%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2500725035%_))))
                                    (if (gx#stx-pair? _%tl2500925042%_)
                                        (let ((_%e2501025045%_
                                               (gx#syntax-e _%tl2500925042%_)))
                                          (let ((_%hd2501125049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2501025045%_)))
                                                (_%tl2501225052%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2501025045%_))))
                                            ((lambda (_%L25055%_
                                                      _%L25057%_
                                                      _%L25058%_)
                                               (if (and (gx#identifier-list?
                                                         _%L25057%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%L25055%_))
                                                   (_%generate24996%_
                                                    _%L25058%_
                                                    _%L25057%_
                                                    _%L25055%_)
                                                   (_%g2499925018%_
                                                    _%g2500025022%_)))
                                             _%tl2501225052%_
                                             _%hd2501125049%_
                                             _%hd2500825039%_)))
                                        (_%g2499925018%_ _%g2500025022%_))))
                                (_%g2499925018%_ _%g2500025022%_))))
                        (_%g2499925018%_ _%g2500025022%_)))))
            (_%g2499825076%_ _%stx24993%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25145%_)
        (letrec ((_%wrap25148%_
                  (lambda (_%e-stx25494%_)
                    (gx#stx-wrap-source
                     _%e-stx25494%_
                     (gx#stx-source _%stx25145%_))))
                 (_%method-opt?25150%_
                  (lambda (_%x25491%_)
                    (let ((__tmp27333 (gx#stx-e _%x25491%_)))
                      (declare (not safe))
                      (##memq __tmp27333 '(rebind:))))))
          (let* ((_%g2515225181%_
                  (lambda (_%g2515325177%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2515325177%_)))
                 (_%g2515125487%_
                  (lambda (_%g2515325185%_)
                    (if (gx#stx-pair? _%g2515325185%_)
                        (let ((_%e2515825188%_ (gx#syntax-e _%g2515325185%_)))
                          (let ((_%hd2515925192%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2515825188%_)))
                                (_%tl2516025195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2515825188%_))))
                            (if (gx#stx-pair? _%tl2516025195%_)
                                (let ((_%e2516125198%_
                                       (gx#syntax-e _%tl2516025195%_)))
                                  (let ((_%hd2516225202%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2516125198%_)))
                                        (_%tl2516325205%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2516125198%_))))
                                    (if (gx#stx-pair? _%hd2516225202%_)
                                        (let ((_%e2516425208%_
                                               (gx#syntax-e _%hd2516225202%_)))
                                          (let ((_%hd2516525212%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2516425208%_)))
                                                (_%tl2516625215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2516425208%_))))
                                            (if (gx#identifier?
                                                 _%hd2516525212%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27334_|
                                                     _%hd2516525212%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2516625215%_)
                                                        (let ((_%e2516725218%_
                                                               (gx#syntax-e
                                                                _%tl2516625215%_)))
                                                          (let ((_%hd2516825222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2516725218%_)))
                        (_%tl2516925225%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2516725218%_))))
                    (if (gx#stx-pair? _%tl2516925225%_)
                        (let ((_%e2517025228%_ (gx#syntax-e _%tl2516925225%_)))
                          (let ((_%hd2517125232%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2517025228%_)))
                                (_%tl2517225235%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2517025228%_))))
                            (if (gx#stx-null? _%tl2517225235%_)
                                (if (gx#stx-pair? _%tl2516325205%_)
                                    (let ((_%e2517325238%_
                                           (gx#syntax-e _%tl2516325205%_)))
                                      (let ((_%hd2517425242%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2517325238%_)))
                                            (_%tl2517525245%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2517325238%_))))
                                        ((lambda (_%L25248%_
                                                  _%L25250%_
                                                  _%L25251%_
                                                  _%L25252%_)
                                           (if (and (gx#identifier? _%L25252%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                       _%L25251%_))
                                                    (gx#stx-plist?
                                                     _%L25248%_
                                                     _%method-opt?25150%_))
                                               (let* ((_%klass25279%_
                                                       (gx#syntax-local-value
                                                        _%L25251%_))
                                                      (_%rebind?25282%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%L25248%_)))
                                                      (_%g2528525293%_
                                                       (lambda (_%g2528625289%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2528625289%_)))
                                                      (_%g2528425477%_
                                                       (lambda (_%g2528625297%_)
                                                         ((lambda (_%L25300%_)
                                                            (let* ((_%g2531525323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2531625319%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2531625319%_)))
                           (_%g2531425473%_
                            (lambda (_%g2531625327%_)
                              ((lambda (_%L25330%_)
                                 (let* ((_%g2534325351%_
                                         (lambda (_%g2534425347%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2534425347%_)))
                                        (_%g2534225469%_
                                         (lambda (_%g2534425355%_)
                                           ((lambda (_%L25358%_)
                                              (let* ((_%g2537125379%_
                                                      (lambda (_%g2537225375%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2537225375%_)))
                                                     (_%g2537025465%_
                                                      (lambda (_%g2537225383%_)
                                                        ((lambda (_%L25386%_)
                                                           (let* ((_%g2539925407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2540025403%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2540025403%_)))
                          (_%g2539825461%_
                           (lambda (_%g2540025411%_)
                             ((lambda (_%L25414%_)
                                (let* ((_%g2542725435%_
                                        (lambda (_%g2542825431%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2542825431%_)))
                                       (_%g2542625457%_
                                        (lambda (_%g2542825439%_)
                                          ((lambda (_%L25442%_)
                                             (_%wrap25148%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%L25386%_
                                                          (cons _%L25442%_
                                                                '())))))
                                           _%g2542825439%_))))
                                  (_%g2542625457%_
                                   (_%wrap25148%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%L25300%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L25252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%L25330%_ (cons _%L25414%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2540025411%_))))
                     (_%g2539825461%_ _%rebind?25282%_)))
                 _%g2537225383%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2537025465%_
                                                 (_%wrap25148%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%L25330%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%L25358%_
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
                                                      (cons _%L25300%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25252%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%L25250%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2534425355%_))))
                                   (_%g2534225469%_
                                    (gx#stx-identifier
                                     _%L25251%_
                                     '@next-method))))
                               _%g2531625327%_))))
                      (_%g2531425473%_
                       (gx#stx-identifier
                        _%L25251%_
                        _%L25251%_
                        '"::"
                        _%L25252%_))))
                  _%g2528625297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2528425477%_
                                                  (let ((__obj27125
                                                         _%klass25279%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27125
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27125
                                                           '12
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj27125
                                                         'type-descriptor)))))
                                               (if (gx#identifier? _%L25252%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                          _%L25251%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25145%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; expected type identifier"
                                                        _%stx25145%_
                                                        _%L25251%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25145%_
                                                    _%L25252%_))))
                                         _%tl2517525245%_
                                         _%hd2517425242%_
                                         _%hd2517125232%_
                                         _%hd2516825222%_)))
                                    (_%g2515225181%_ _%g2515325185%_))
                                (_%g2515225181%_ _%g2515325185%_))))
                        (_%g2515225181%_ _%g2515325185%_))))
                (_%g2515225181%_ _%g2515325185%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2515225181%_
                                                     _%g2515325185%_))
                                                (_%g2515225181%_
                                                 _%g2515325185%_))))
                                        (_%g2515225181%_ _%g2515325185%_))))
                                (_%g2515225181%_ _%g2515325185%_))))
                        (_%g2515225181%_ _%g2515325185%_)))))
            (_%g2515125487%_ _%stx25145%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25497%_)
        (letrec ((_%dotted-identifier?25500%_
                  (lambda (_%id26133%_)
                    (if (gx#identifier? _%id26133%_)
                        (let ((_%id-str26136%_
                               (symbol->string (gx#stx-e _%id26133%_))))
                          (if (string-index _%id-str26136%_ '#\.)
                              (let* ((_%split26139%_
                                      (string-split _%id-str26136%_ '#\.))
                                     (__tmp27335 (length _%split26139%_)))
                                (declare (not safe))
                                (##fx= __tmp27335 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25502%_
                  (lambda (_%id26122%_)
                    (let* ((_%id-str26125%_
                            (symbol->string (gx#stx-e _%id26122%_)))
                           (_%split26128%_
                            (string-split _%id-str26125%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26122%_
                             (car _%split26128%_))
                            (cons (gx#stx-identifier
                                   _%id26122%_
                                   (cadr _%split26128%_))
                                  '()))))))
          (let* ((_%__stx2686426865%_ _%stx25497%_)
                 (_%g2550725594%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2686426865%_))))
            (let ((_%__kont2686726868%_
                   (lambda (_%L26015%_ _%L26017%_ _%L26018%_)
                     (let* ((_%g2604626061%_
                             (lambda (_%g2604726057%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2604726057%_)))
                            (_%g2604526114%_
                             (lambda (_%g2604726065%_)
                               (if (gx#stx-pair? _%g2604726065%_)
                                   (let ((_%e2605026068%_
                                          (gx#syntax-e _%g2604726065%_)))
                                     (let ((_%hd2605126072%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2605026068%_)))
                                           (_%tl2605226075%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2605026068%_))))
                                       (if (gx#stx-pair? _%tl2605226075%_)
                                           (let ((_%e2605326078%_
                                                  (gx#syntax-e
                                                   _%tl2605226075%_)))
                                             (let ((_%hd2605426082%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2605326078%_)))
                                                   (_%tl2605526085%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2605326078%_))))
                                               (if (gx#stx-null?
                                                    _%tl2605526085%_)
                                                   ((lambda (_%L26088%_
                                                             _%L26090%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%L26090%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L26088%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2610526108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2610626111%_)
                   (cons _%g2610526108%_ _%g2610626111%_))
                 '()
                 _%L26017%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2605426082%_
                                                    _%hd2605126072%_)
                                                   (_%g2604626061%_
                                                    _%g2604726065%_))))
                                           (_%g2604626061%_ _%g2604726065%_))))
                                   (_%g2604626061%_ _%g2604726065%_)))))
                       (_%g2604526114%_ (_%split-dotted25502%_ _%L26018%_)))))
                  (_%__kont2687126872%_
                   (lambda (_%L25857%_ _%L25859%_)
                     (let* ((_%g2587625891%_
                             (lambda (_%g2587725887%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2587725887%_)))
                            (_%g2587525944%_
                             (lambda (_%g2587725895%_)
                               (if (gx#stx-pair? _%g2587725895%_)
                                   (let ((_%e2588025898%_
                                          (gx#syntax-e _%g2587725895%_)))
                                     (let ((_%hd2588125902%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2588025898%_)))
                                           (_%tl2588225905%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2588025898%_))))
                                       (if (gx#stx-pair? _%tl2588225905%_)
                                           (let ((_%e2588325908%_
                                                  (gx#syntax-e
                                                   _%tl2588225905%_)))
                                             (let ((_%hd2588425912%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2588325908%_)))
                                                   (_%tl2588525915%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2588325908%_))))
                                               (if (gx#stx-null?
                                                    _%tl2588525915%_)
                                                   ((lambda (_%L25918%_
                                                             _%L25920%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%L25920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25918%_ '()))
                                (foldr (lambda (_%g2593525938%_
                                                _%g2593625941%_)
                                         (cons _%g2593525938%_
                                               _%g2593625941%_))
                                       '()
                                       _%L25857%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2588425912%_
                                                    _%hd2588125902%_)
                                                   (_%g2587625891%_
                                                    _%g2587725895%_))))
                                           (_%g2587625891%_ _%g2587725895%_))))
                                   (_%g2587625891%_ _%g2587725895%_)))))
                       (_%g2587525944%_ (_%split-dotted25502%_ _%L25859%_)))))
                  (_%__kont2687526876%_
                   (lambda (_%L25761%_ _%L25763%_ _%L25764%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%L25763%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L25764%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2579125794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2579225797%_)
                          (cons _%g2579125794%_ _%g2579225797%_))
                        '()
                        _%L25761%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2687926880%_
                   (lambda (_%L25661%_ _%L25663%_ _%L25664%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%L25663%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L25664%_ '()))
                                       (foldr (lambda (_%g2568525688%_
                                                       _%g2568625691%_)
                                                (cons _%g2568525688%_
                                                      _%g2568625691%_))
                                              '()
                                              _%L25661%_)))))))
              (let* ((_%__match2698326984%_
                      (lambda (_%e2557125601%_
                               _%hd2557225605%_
                               _%tl2557325608%_
                               _%e2557425611%_
                               _%hd2557525615%_
                               _%tl2557625618%_
                               _%e2557725621%_
                               _%hd2557825625%_
                               _%tl2557925628%_
                               _%__splice2688126882%_
                               _%target2558025631%_
                               _%tl2558225634%_)
                        (letrec ((_%loop2558325637%_
                                  (lambda (_%hd2558125641%_ _%arg2558725644%_)
                                    (if (gx#stx-pair? _%hd2558125641%_)
                                        (let ((_%e2558425647%_
                                               (gx#syntax-e _%hd2558125641%_)))
                                          (let ((_%lp-tl2558625654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2558425647%_)))
                                                (_%lp-hd2558525651%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2558425647%_))))
                                            (_%loop2558325637%_
                                             _%lp-tl2558625654%_
                                             (cons _%lp-hd2558525651%_
                                                   _%arg2558725644%_))))
                                        (let ((_%arg2558825657%_
                                               (reverse _%arg2558725644%_)))
                                          (let ((_%L25661%_ _%arg2558825657%_)
                                                (_%L25663%_ _%hd2557825625%_)
                                                (_%L25664%_ _%hd2557525615%_))
                                            (if (gx#identifier? _%L25664%_)
                                                (_%__kont2687926880%_
                                                 _%L25661%_
                                                 _%L25663%_
                                                 _%L25664%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2550725594%_)))))))))
                          (_%loop2558325637%_ _%target2558025631%_ '()))))
                     (_%__match2695726958%_
                      (lambda (_%e2555025701%_
                               _%hd2555125705%_
                               _%tl2555225708%_
                               _%e2555325711%_
                               _%hd2555425715%_
                               _%tl2555525718%_
                               _%e2555625721%_
                               _%hd2555725725%_
                               _%tl2555825728%_
                               _%__splice2687726878%_
                               _%target2555925731%_
                               _%tl2556125734%_)
                        (letrec ((_%loop2556225737%_
                                  (lambda (_%hd2556025741%_ _%arg2556625744%_)
                                    (if (gx#stx-pair? _%hd2556025741%_)
                                        (let ((_%e2556325747%_
                                               (gx#syntax-e _%hd2556025741%_)))
                                          (let ((_%lp-tl2556525754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2556325747%_)))
                                                (_%lp-hd2556425751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2556325747%_))))
                                            (_%loop2556225737%_
                                             _%lp-tl2556525754%_
                                             (cons _%lp-hd2556425751%_
                                                   _%arg2556625744%_))))
                                        (let ((_%arg2556725757%_
                                               (reverse _%arg2556625744%_)))
                                          (let ((_%L25761%_ _%arg2556725757%_)
                                                (_%L25763%_ _%hd2555725725%_)
                                                (_%L25764%_ _%hd2555425715%_))
                                            (if (and (gx#identifier?
                                                      _%L25764%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2578325786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2578425789%_)
                       (cons _%g2578325786%_ _%g2578425789%_))
                     '()
                     _%L25761%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2687526876%_
                                                 _%L25761%_
                                                 _%L25763%_
                                                 _%L25764%_)
                                                (_%__match2698326984%_
                                                 _%e2555025701%_
                                                 _%hd2555125705%_
                                                 _%tl2555225708%_
                                                 _%e2555325711%_
                                                 _%hd2555425715%_
                                                 _%tl2555525718%_
                                                 _%e2555625721%_
                                                 _%hd2555725725%_
                                                 _%tl2555825728%_
                                                 _%__splice2687726878%_
                                                 _%target2555925731%_
                                                 _%tl2556125734%_))))))))
                          (_%loop2556225737%_ _%target2555925731%_ '()))))
                     (_%__match2694326944%_
                      (lambda (_%e2555025701%_
                               _%hd2555125705%_
                               _%tl2555225708%_
                               _%e2555325711%_
                               _%hd2555425715%_
                               _%tl2555525718%_)
                        (if (gx#stx-pair? _%tl2555525718%_)
                            (let ((_%e2555625721%_
                                   (gx#syntax-e _%tl2555525718%_)))
                              (let ((_%tl2555825728%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2555625721%_)))
                                    (_%hd2555725725%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2555625721%_))))
                                (if (gx#stx-pair/null? _%tl2555825728%_)
                                    (let ((_%__splice2687726878%_
                                           (gx#syntax-split-splice
                                            _%tl2555825728%_
                                            '0)))
                                      (let ((_%tl2556125734%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2687726878%_
                                                '1)))
                                            (_%target2555925731%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2687726878%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2556125734%_)
                                            (_%__match2695726958%_
                                             _%e2555025701%_
                                             _%hd2555125705%_
                                             _%tl2555225708%_
                                             _%e2555325711%_
                                             _%hd2555425715%_
                                             _%tl2555525718%_
                                             _%e2555625721%_
                                             _%hd2555725725%_
                                             _%tl2555825728%_
                                             _%__splice2687726878%_
                                             _%target2555925731%_
                                             _%tl2556125734%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2550725594%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2550725594%_)))))
                            (let () (declare (not safe)) (_%g2550725594%_)))))
                     (_%__match2693126932%_
                      (lambda (_%e2553225807%_
                               _%hd2553325811%_
                               _%tl2553425814%_
                               _%e2553525817%_
                               _%hd2553625821%_
                               _%tl2553725824%_
                               _%__splice2687326874%_
                               _%target2553825827%_
                               _%tl2554025830%_)
                        (letrec ((_%loop2554125833%_
                                  (lambda (_%hd2553925837%_ _%arg2554525840%_)
                                    (if (gx#stx-pair? _%hd2553925837%_)
                                        (let ((_%e2554225843%_
                                               (gx#syntax-e _%hd2553925837%_)))
                                          (let ((_%lp-tl2554425850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2554225843%_)))
                                                (_%lp-hd2554325847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2554225843%_))))
                                            (_%loop2554125833%_
                                             _%lp-tl2554425850%_
                                             (cons _%lp-hd2554325847%_
                                                   _%arg2554525840%_))))
                                        (let ((_%arg2554625853%_
                                               (reverse _%arg2554525840%_)))
                                          (let ((_%L25857%_ _%arg2554625853%_)
                                                (_%L25859%_ _%hd2553625821%_))
                                            (if (_%dotted-identifier?25500%_
                                                 _%L25859%_)
                                                (_%__kont2687126872%_
                                                 _%L25857%_
                                                 _%L25859%_)
                                                (_%__match2694326944%_
                                                 _%e2553225807%_
                                                 _%hd2553325811%_
                                                 _%tl2553425814%_
                                                 _%e2553525817%_
                                                 _%hd2553625821%_
                                                 _%tl2553725824%_))))))))
                          (_%loop2554125833%_ _%target2553825827%_ '()))))
                     (_%__match2692926930%_
                      (lambda (_%e2553225807%_
                               _%hd2553325811%_
                               _%tl2553425814%_
                               _%e2553525817%_
                               _%hd2553625821%_
                               _%tl2553725824%_
                               _%__splice2687326874%_
                               _%target2553825827%_
                               _%tl2554025830%_)
                        (if (gx#stx-null? _%tl2554025830%_)
                            (_%__match2693126932%_
                             _%e2553225807%_
                             _%hd2553325811%_
                             _%tl2553425814%_
                             _%e2553525817%_
                             _%hd2553625821%_
                             _%tl2553725824%_
                             _%__splice2687326874%_
                             _%target2553825827%_
                             _%tl2554025830%_)
                            (if (gx#stx-pair? _%tl2553725824%_)
                                (let ((_%e2555625721%_
                                       (gx#syntax-e _%tl2553725824%_)))
                                  (let ((_%tl2555825728%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2555625721%_)))
                                        (_%hd2555725725%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2555625721%_))))
                                    (if (gx#stx-pair/null? _%tl2555825728%_)
                                        (let ((_%__splice2687726878%_
                                               (gx#syntax-split-splice
                                                _%tl2555825728%_
                                                '0)))
                                          (let ((_%tl2556125734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2687726878%_
                                                    '1)))
                                                (_%target2555925731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2687726878%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2556125734%_)
                                                (_%__match2695726958%_
                                                 _%e2553225807%_
                                                 _%hd2553325811%_
                                                 _%tl2553425814%_
                                                 _%e2553525817%_
                                                 _%hd2553625821%_
                                                 _%tl2553725824%_
                                                 _%e2555625721%_
                                                 _%hd2555725725%_
                                                 _%tl2555825728%_
                                                 _%__splice2687726878%_
                                                 _%target2555925731%_
                                                 _%tl2556125734%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2550725594%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2550725594%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2550725594%_))))))
                     (_%__match2691126912%_
                      (lambda (_%e2551225955%_
                               _%hd2551325959%_
                               _%tl2551425962%_
                               _%e2551525965%_
                               _%hd2551625969%_
                               _%tl2551725972%_
                               _%__splice2686926870%_
                               _%target2551825975%_
                               _%tl2552025978%_
                               _%e2552725981%_
                               _%hd2552825985%_
                               _%tl2552925988%_)
                        (letrec ((_%loop2552125991%_
                                  (lambda (_%hd2551925995%_ _%arg2552525998%_)
                                    (if (gx#stx-pair? _%hd2551925995%_)
                                        (let ((_%e2552226001%_
                                               (gx#syntax-e _%hd2551925995%_)))
                                          (let ((_%lp-tl2552426008%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2552226001%_)))
                                                (_%lp-hd2552326005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2552226001%_))))
                                            (_%loop2552125991%_
                                             _%lp-tl2552426008%_
                                             (cons _%lp-hd2552326005%_
                                                   _%arg2552525998%_))))
                                        (let ((_%arg2552626011%_
                                               (reverse _%arg2552525998%_)))
                                          (let ((_%L26015%_ _%hd2552825985%_)
                                                (_%L26017%_ _%arg2552626011%_)
                                                (_%L26018%_ _%hd2551625969%_))
                                            (if (and (_%dotted-identifier?25500%_
                                                      _%L26018%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2603726040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2603826043%_)
                       (cons _%g2603726040%_ _%g2603826043%_))
                     '()
                     _%L26017%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2686726868%_
                                                 _%L26015%_
                                                 _%L26017%_
                                                 _%L26018%_)
                                                (let ((_%__splice2687326874%_
                                                       (gx#syntax-split-splice
                                                        _%tl2551725972%_
                                                        '0)))
                                                  (let ((_%tl2554025830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2687326874%_
                                                            '1)))
                                                        (_%target2553825827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2687326874%_
                                                            '0))))
                                                    (_%__match2692926930%_
                                                     _%e2551225955%_
                                                     _%hd2551325959%_
                                                     _%tl2551425962%_
                                                     _%e2551525965%_
                                                     _%hd2551625969%_
                                                     _%tl2551725972%_
                                                     _%__splice2687326874%_
                                                     _%target2553825827%_
                                                     _%tl2554025830%_))))))))))
                          (_%loop2552125991%_ _%target2551825975%_ '())))))
                (if (gx#stx-pair? _%__stx2686426865%_)
                    (let ((_%e2551225955%_ (gx#syntax-e _%__stx2686426865%_)))
                      (let ((_%tl2551425962%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2551225955%_)))
                            (_%hd2551325959%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2551225955%_))))
                        (if (gx#stx-pair? _%tl2551425962%_)
                            (let ((_%e2551525965%_
                                   (gx#syntax-e _%tl2551425962%_)))
                              (let ((_%tl2551725972%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2551525965%_)))
                                    (_%hd2551625969%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2551525965%_))))
                                (if (gx#stx-pair/null? _%tl2551725972%_)
                                    (if (let ((__tmp27336
                                               (gx#stx-length
                                                _%tl2551725972%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27336 '1))
                                        (let ((_%__splice2686926870%_
                                               (gx#syntax-split-splice
                                                _%tl2551725972%_
                                                '1)))
                                          (let ((_%tl2552025978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686926870%_
                                                    '1)))
                                                (_%target2551825975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686926870%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2552025978%_)
                                                (let ((_%e2552725981%_
                                                       (gx#syntax-e
                                                        _%tl2552025978%_)))
                                                  (let ((_%tl2552925988%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2552725981%_)))
                                                        (_%hd2552825985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2552725981%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2552925988%_)
                                                        (_%__match2691126912%_
                                                         _%e2551225955%_
                                                         _%hd2551325959%_
                                                         _%tl2551425962%_
                                                         _%e2551525965%_
                                                         _%hd2551625969%_
                                                         _%tl2551725972%_
                                                         _%__splice2686926870%_
                                                         _%target2551825975%_
                                                         _%tl2552025978%_
                                                         _%e2552725981%_
                                                         _%hd2552825985%_
                                                         _%tl2552925988%_)
                                                        (let ((_%__splice2687326874%_
                                                               (gx#syntax-split-splice
                                                                _%tl2551725972%_
                                                                '0)))
                                                          (let ((_%tl2554025830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2687326874%_ '1)))
                        (_%target2553825827%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2687326874%_ '0))))
                    (if (gx#stx-null? _%tl2554025830%_)
                        (_%__match2693126932%_
                         _%e2551225955%_
                         _%hd2551325959%_
                         _%tl2551425962%_
                         _%e2551525965%_
                         _%hd2551625969%_
                         _%tl2551725972%_
                         _%__splice2687326874%_
                         _%target2553825827%_
                         _%tl2554025830%_)
                        (if (gx#stx-pair? _%tl2551725972%_)
                            (let ((_%e2555625721%_
                                   (gx#syntax-e _%tl2551725972%_)))
                              (let ((_%tl2555825728%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2555625721%_)))
                                    (_%hd2555725725%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2555625721%_))))
                                (if (gx#stx-pair/null? _%tl2555825728%_)
                                    (let ((_%__splice2687726878%_
                                           (gx#syntax-split-splice
                                            _%tl2555825728%_
                                            '0)))
                                      (let ((_%tl2556125734%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2687726878%_
                                                '1)))
                                            (_%target2555925731%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2687726878%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2556125734%_)
                                            (_%__match2695726958%_
                                             _%e2551225955%_
                                             _%hd2551325959%_
                                             _%tl2551425962%_
                                             _%e2551525965%_
                                             _%hd2551625969%_
                                             _%tl2551725972%_
                                             _%e2555625721%_
                                             _%hd2555725725%_
                                             _%tl2555825728%_
                                             _%__splice2687726878%_
                                             _%target2555925731%_
                                             _%tl2556125734%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2550725594%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2550725594%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2550725594%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2687326874%_
                                                       (gx#syntax-split-splice
                                                        _%tl2551725972%_
                                                        '0)))
                                                  (let ((_%tl2554025830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2687326874%_
                                                            '1)))
                                                        (_%target2553825827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2687326874%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2554025830%_)
                                                        (_%__match2693126932%_
                                                         _%e2551225955%_
                                                         _%hd2551325959%_
                                                         _%tl2551425962%_
                                                         _%e2551525965%_
                                                         _%hd2551625969%_
                                                         _%tl2551725972%_
                                                         _%__splice2687326874%_
                                                         _%target2553825827%_
                                                         _%tl2554025830%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2551725972%_)
                                                            (let ((_%e2555625721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2551725972%_)))
                      (let ((_%tl2555825728%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2555625721%_)))
                            (_%hd2555725725%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2555625721%_))))
                        (if (gx#stx-pair/null? _%tl2555825728%_)
                            (let ((_%__splice2687726878%_
                                   (gx#syntax-split-splice
                                    _%tl2555825728%_
                                    '0)))
                              (let ((_%tl2556125734%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2687726878%_
                                        '1)))
                                    (_%target2555925731%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2687726878%_
                                        '0))))
                                (if (gx#stx-null? _%tl2556125734%_)
                                    (_%__match2695726958%_
                                     _%e2551225955%_
                                     _%hd2551325959%_
                                     _%tl2551425962%_
                                     _%e2551525965%_
                                     _%hd2551625969%_
                                     _%tl2551725972%_
                                     _%e2555625721%_
                                     _%hd2555725725%_
                                     _%tl2555825728%_
                                     _%__splice2687726878%_
                                     _%target2555925731%_
                                     _%tl2556125734%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2550725594%_)))))
                            (let () (declare (not safe)) (_%g2550725594%_)))))
                    (let () (declare (not safe)) (_%g2550725594%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2687326874%_
                                               (gx#syntax-split-splice
                                                _%tl2551725972%_
                                                '0)))
                                          (let ((_%tl2554025830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2687326874%_
                                                    '1)))
                                                (_%target2553825827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2687326874%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2554025830%_)
                                                (_%__match2693126932%_
                                                 _%e2551225955%_
                                                 _%hd2551325959%_
                                                 _%tl2551425962%_
                                                 _%e2551525965%_
                                                 _%hd2551625969%_
                                                 _%tl2551725972%_
                                                 _%__splice2687326874%_
                                                 _%target2553825827%_
                                                 _%tl2554025830%_)
                                                (if (gx#stx-pair?
                                                     _%tl2551725972%_)
                                                    (let ((_%e2555625721%_
                                                           (gx#syntax-e
                                                            _%tl2551725972%_)))
                                                      (let ((_%tl2555825728%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2555625721%_)))
                    (_%hd2555725725%_
                     (let () (declare (not safe)) (##car _%e2555625721%_))))
                (if (gx#stx-pair/null? _%tl2555825728%_)
                    (let ((_%__splice2687726878%_
                           (gx#syntax-split-splice _%tl2555825728%_ '0)))
                      (let ((_%tl2556125734%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2687726878%_ '1)))
                            (_%target2555925731%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2687726878%_ '0))))
                        (if (gx#stx-null? _%tl2556125734%_)
                            (_%__match2695726958%_
                             _%e2551225955%_
                             _%hd2551325959%_
                             _%tl2551425962%_
                             _%e2551525965%_
                             _%hd2551625969%_
                             _%tl2551725972%_
                             _%e2555625721%_
                             _%hd2555725725%_
                             _%tl2555825728%_
                             _%__splice2687726878%_
                             _%target2555925731%_
                             _%tl2556125734%_)
                            (let () (declare (not safe)) (_%g2550725594%_)))))
                    (let () (declare (not safe)) (_%g2550725594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2550725594%_)))))))
                                    (if (gx#stx-pair? _%tl2551725972%_)
                                        (let ((_%e2555625721%_
                                               (gx#syntax-e _%tl2551725972%_)))
                                          (let ((_%tl2555825728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2555625721%_)))
                                                (_%hd2555725725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2555625721%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2555825728%_)
                                                (let ((_%__splice2687726878%_
                                                       (gx#syntax-split-splice
                                                        _%tl2555825728%_
                                                        '0)))
                                                  (let ((_%tl2556125734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2687726878%_
                                                            '1)))
                                                        (_%target2555925731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2687726878%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2556125734%_)
                                                        (_%__match2695726958%_
                                                         _%e2551225955%_
                                                         _%hd2551325959%_
                                                         _%tl2551425962%_
                                                         _%e2551525965%_
                                                         _%hd2551625969%_
                                                         _%tl2551725972%_
                                                         _%e2555625721%_
                                                         _%hd2555725725%_
                                                         _%tl2555825728%_
                                                         _%__splice2687726878%_
                                                         _%target2555925731%_
                                                         _%tl2556125734%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2550725594%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2550725594%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2550725594%_))))))
                            (let () (declare (not safe)) (_%g2550725594%_)))))
                    (let () (declare (not safe)) (_%g2550725594%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26146%_)
        (let* ((_%__stx2698626987%_ _%$stx26146%_)
               (_%g2615126191%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2698626987%_))))
          (let ((_%__kont2698926990%_
                 (lambda (_%L26329%_ _%L26331%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%L26331%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26329%_ '()))
                                     '())))))
                (_%__kont2699126992%_
                 (lambda (_%L26258%_ _%L26260%_ _%L26261%_ _%L26262%_)
                   (cons _%L26262%_
                         (cons (cons _%L26262%_
                                     (cons _%L26261%_ (cons _%L26260%_ '())))
                               (foldr (lambda (_%g2628326286%_ _%g2628426289%_)
                                        (cons _%g2628326286%_ _%g2628426289%_))
                                      '()
                                      _%L26258%_))))))
            (let* ((_%__match2704127042%_
                    (lambda (_%e2616826198%_
                             _%hd2616926202%_
                             _%tl2617026205%_
                             _%e2617126208%_
                             _%hd2617226212%_
                             _%tl2617326215%_
                             _%e2617426218%_
                             _%hd2617526222%_
                             _%tl2617626225%_
                             _%__splice2699326994%_
                             _%target2617726228%_
                             _%tl2617926231%_)
                      (letrec ((_%loop2618026234%_
                                (lambda (_%hd2617826238%_ _%rest2618426241%_)
                                  (if (gx#stx-pair? _%hd2617826238%_)
                                      (let ((_%e2618126244%_
                                             (gx#syntax-e _%hd2617826238%_)))
                                        (let ((_%lp-tl2618326251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2618126244%_)))
                                              (_%lp-hd2618226248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2618126244%_))))
                                          (_%loop2618026234%_
                                           _%lp-tl2618326251%_
                                           (cons _%lp-hd2618226248%_
                                                 _%rest2618426241%_))))
                                      (let ((_%rest2618526254%_
                                             (reverse _%rest2618426241%_)))
                                        (_%__kont2699126992%_
                                         _%rest2618526254%_
                                         _%hd2617526222%_
                                         _%hd2617226212%_
                                         _%hd2616926202%_))))))
                        (_%loop2618026234%_ _%target2617726228%_ '()))))
                   (_%__match2701527016%_
                    (lambda (_%e2615526299%_
                             _%hd2615626303%_
                             _%tl2615726306%_
                             _%e2615826309%_
                             _%hd2615926313%_
                             _%tl2616026316%_
                             _%e2616126319%_
                             _%hd2616226323%_
                             _%tl2616326326%_)
                      (let ((_%L26329%_ _%hd2616226323%_)
                            (_%L26331%_ _%hd2615926313%_))
                        (if (gx#identifier? _%L26329%_)
                            (_%__kont2698926990%_ _%L26329%_ _%L26331%_)
                            (if (gx#stx-pair/null? _%tl2616326326%_)
                                (let ((_%__splice2699326994%_
                                       (gx#syntax-split-splice
                                        _%tl2616326326%_
                                        '0)))
                                  (let ((_%tl2617926231%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2699326994%_
                                            '1)))
                                        (_%target2617726228%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2699326994%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2617926231%_)
                                        (_%__match2704127042%_
                                         _%e2615526299%_
                                         _%hd2615626303%_
                                         _%tl2615726306%_
                                         _%e2615826309%_
                                         _%hd2615926313%_
                                         _%tl2616026316%_
                                         _%e2616126319%_
                                         _%hd2616226323%_
                                         _%tl2616326326%_
                                         _%__splice2699326994%_
                                         _%target2617726228%_
                                         _%tl2617926231%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2615126191%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2615126191%_))))))))
              (if (gx#stx-pair? _%__stx2698626987%_)
                  (let ((_%e2615526299%_ (gx#syntax-e _%__stx2698626987%_)))
                    (let ((_%tl2615726306%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2615526299%_)))
                          (_%hd2615626303%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2615526299%_))))
                      (if (gx#stx-pair? _%tl2615726306%_)
                          (let ((_%e2615826309%_
                                 (gx#syntax-e _%tl2615726306%_)))
                            (let ((_%tl2616026316%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2615826309%_)))
                                  (_%hd2615926313%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2615826309%_))))
                              (if (gx#stx-pair? _%tl2616026316%_)
                                  (let ((_%e2616126319%_
                                         (gx#syntax-e _%tl2616026316%_)))
                                    (let ((_%tl2616326326%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2616126319%_)))
                                          (_%hd2616226323%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2616126319%_))))
                                      (if (gx#stx-null? _%tl2616326326%_)
                                          (_%__match2701527016%_
                                           _%e2615526299%_
                                           _%hd2615626303%_
                                           _%tl2615726306%_
                                           _%e2615826309%_
                                           _%hd2615926313%_
                                           _%tl2616026316%_
                                           _%e2616126319%_
                                           _%hd2616226323%_
                                           _%tl2616326326%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2616326326%_)
                                              (let ((_%__splice2699326994%_
                                                     (gx#syntax-split-splice
                                                      _%tl2616326326%_
                                                      '0)))
                                                (let ((_%tl2617926231%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2699326994%_
                                                          '1)))
                                                      (_%target2617726228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2699326994%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2617926231%_)
                                                      (_%__match2704127042%_
                                                       _%e2615526299%_
                                                       _%hd2615626303%_
                                                       _%tl2615726306%_
                                                       _%e2615826309%_
                                                       _%hd2615926313%_
                                                       _%tl2616026316%_
                                                       _%e2616126319%_
                                                       _%hd2616226323%_
                                                       _%tl2616326326%_
                                                       _%__splice2699326994%_
                                                       _%target2617726228%_
                                                       _%tl2617926231%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2615126191%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2615126191%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2615126191%_)))))
                          (let () (declare (not safe)) (_%g2615126191%_)))))
                  (let () (declare (not safe)) (_%g2615126191%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26351%_)
        (let* ((_%__stx2704427045%_ _%$stx26351%_)
               (_%g2635626408%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2704427045%_))))
          (let ((_%__kont2704727048%_
                 (lambda (_%L26584%_ _%L26586%_ _%L26587%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%L26587%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26586%_ '()))
                                     (cons _%L26584%_ '()))))))
                (_%__kont2704927050%_
                 (lambda (_%L26495%_
                          _%L26497%_
                          _%L26498%_
                          _%L26499%_
                          _%L26500%_
                          _%L26501%_)
                   (cons _%L26501%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%L26500%_
                                           (cons _%L26499%_
                                                 (foldr (lambda (_%g2652826531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2652926534%_)
                  (cons _%g2652826531%_ _%g2652926534%_))
                '()
                _%L26498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L26497%_ (cons _%L26495%_ '())))))))
            (let* ((_%__match2711927120%_
                    (lambda (_%e2637926415%_
                             _%hd2638026419%_
                             _%tl2638126422%_
                             _%e2638226425%_
                             _%hd2638326429%_
                             _%tl2638426432%_
                             _%e2638526435%_
                             _%hd2638626439%_
                             _%tl2638726442%_
                             _%__splice2705127052%_
                             _%target2638826445%_
                             _%tl2639026448%_
                             _%e2639726451%_
                             _%hd2639826455%_
                             _%tl2639926458%_
                             _%e2640026461%_
                             _%hd2640126465%_
                             _%tl2640226468%_)
                      (letrec ((_%loop2639126471%_
                                (lambda (_%hd2638926475%_ _%path2639526478%_)
                                  (if (gx#stx-pair? _%hd2638926475%_)
                                      (let ((_%e2639226481%_
                                             (gx#syntax-e _%hd2638926475%_)))
                                        (let ((_%lp-tl2639426488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2639226481%_)))
                                              (_%lp-hd2639326485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2639226481%_))))
                                          (_%loop2639126471%_
                                           _%lp-tl2639426488%_
                                           (cons _%lp-hd2639326485%_
                                                 _%path2639526478%_))))
                                      (let ((_%path2639626491%_
                                             (reverse _%path2639526478%_)))
                                        (_%__kont2704927050%_
                                         _%hd2640126465%_
                                         _%hd2639826455%_
                                         _%path2639626491%_
                                         _%hd2638626439%_
                                         _%hd2638326429%_
                                         _%hd2638026419%_))))))
                        (_%loop2639126471%_ _%target2638826445%_ '()))))
                   (_%__match2707927080%_
                    (lambda (_%e2636126544%_
                             _%hd2636226548%_
                             _%tl2636326551%_
                             _%e2636426554%_
                             _%hd2636526558%_
                             _%tl2636626561%_
                             _%e2636726564%_
                             _%hd2636826568%_
                             _%tl2636926571%_
                             _%e2637026574%_
                             _%hd2637126578%_
                             _%tl2637226581%_)
                      (let ((_%L26584%_ _%hd2637126578%_)
                            (_%L26586%_ _%hd2636826568%_)
                            (_%L26587%_ _%hd2636526558%_))
                        (if (gx#identifier? _%L26586%_)
                            (_%__kont2704727048%_
                             _%L26584%_
                             _%L26586%_
                             _%L26587%_)
                            (if (gx#stx-pair/null? _%tl2636926571%_)
                                (if (let ((__tmp27337
                                           (gx#stx-length _%tl2636926571%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27337 '2))
                                    (let ((_%__splice2705127052%_
                                           (gx#syntax-split-splice
                                            _%tl2636926571%_
                                            '2)))
                                      (let ((_%tl2639026448%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2705127052%_
                                                '1)))
                                            (_%target2638826445%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2705127052%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2639026448%_)
                                            (let ((_%e2639726451%_
                                                   (gx#syntax-e
                                                    _%tl2639026448%_)))
                                              (let ((_%tl2639926458%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2639726451%_)))
                                                    (_%hd2639826455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2639726451%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2639926458%_)
                                                    (let ((_%e2640026461%_
                                                           (gx#syntax-e
                                                            _%tl2639926458%_)))
                                                      (let ((_%tl2640226468%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2640026461%_)))
                    (_%hd2640126465%_
                     (let () (declare (not safe)) (##car _%e2640026461%_))))
                (if (gx#stx-null? _%tl2640226468%_)
                    (_%__match2711927120%_
                     _%e2636126544%_
                     _%hd2636226548%_
                     _%tl2636326551%_
                     _%e2636426554%_
                     _%hd2636526558%_
                     _%tl2636626561%_
                     _%e2636726564%_
                     _%hd2636826568%_
                     _%tl2636926571%_
                     _%__splice2705127052%_
                     _%target2638826445%_
                     _%tl2639026448%_
                     _%e2639726451%_
                     _%hd2639826455%_
                     _%tl2639926458%_
                     _%e2640026461%_
                     _%hd2640126465%_
                     _%tl2640226468%_)
                    (let () (declare (not safe)) (_%g2635626408%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2635626408%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2635626408%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2635626408%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2635626408%_))))))))
              (if (gx#stx-pair? _%__stx2704427045%_)
                  (let ((_%e2636126544%_ (gx#syntax-e _%__stx2704427045%_)))
                    (let ((_%tl2636326551%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2636126544%_)))
                          (_%hd2636226548%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2636126544%_))))
                      (if (gx#stx-pair? _%tl2636326551%_)
                          (let ((_%e2636426554%_
                                 (gx#syntax-e _%tl2636326551%_)))
                            (let ((_%tl2636626561%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2636426554%_)))
                                  (_%hd2636526558%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2636426554%_))))
                              (if (gx#stx-pair? _%tl2636626561%_)
                                  (let ((_%e2636726564%_
                                         (gx#syntax-e _%tl2636626561%_)))
                                    (let ((_%tl2636926571%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2636726564%_)))
                                          (_%hd2636826568%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2636726564%_))))
                                      (if (gx#stx-pair? _%tl2636926571%_)
                                          (let ((_%e2637026574%_
                                                 (gx#syntax-e
                                                  _%tl2636926571%_)))
                                            (let ((_%tl2637226581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2637026574%_)))
                                                  (_%hd2637126578%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2637026574%_))))
                                              (if (gx#stx-null?
                                                   _%tl2637226581%_)
                                                  (_%__match2707927080%_
                                                   _%e2636126544%_
                                                   _%hd2636226548%_
                                                   _%tl2636326551%_
                                                   _%e2636426554%_
                                                   _%hd2636526558%_
                                                   _%tl2636626561%_
                                                   _%e2636726564%_
                                                   _%hd2636826568%_
                                                   _%tl2636926571%_
                                                   _%e2637026574%_
                                                   _%hd2637126578%_
                                                   _%tl2637226581%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2636926571%_)
                                                      (if (let ((__tmp27338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2636926571%_)))
                    (declare (not safe))
                    (##fx>= __tmp27338 '2))
                  (let ((_%__splice2705127052%_
                         (gx#syntax-split-splice _%tl2636926571%_ '2)))
                    (let ((_%tl2639026448%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2705127052%_ '1)))
                          (_%target2638826445%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2705127052%_ '0))))
                      (if (gx#stx-pair? _%tl2639026448%_)
                          (let ((_%e2639726451%_
                                 (gx#syntax-e _%tl2639026448%_)))
                            (let ((_%tl2639926458%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2639726451%_)))
                                  (_%hd2639826455%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2639726451%_))))
                              (if (gx#stx-pair? _%tl2639926458%_)
                                  (let ((_%e2640026461%_
                                         (gx#syntax-e _%tl2639926458%_)))
                                    (let ((_%tl2640226468%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2640026461%_)))
                                          (_%hd2640126465%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2640026461%_))))
                                      (if (gx#stx-null? _%tl2640226468%_)
                                          (_%__match2711927120%_
                                           _%e2636126544%_
                                           _%hd2636226548%_
                                           _%tl2636326551%_
                                           _%e2636426554%_
                                           _%hd2636526558%_
                                           _%tl2636626561%_
                                           _%e2636726564%_
                                           _%hd2636826568%_
                                           _%tl2636926571%_
                                           _%__splice2705127052%_
                                           _%target2638826445%_
                                           _%tl2639026448%_
                                           _%e2639726451%_
                                           _%hd2639826455%_
                                           _%tl2639926458%_
                                           _%e2640026461%_
                                           _%hd2640126465%_
                                           _%tl2640226468%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2635626408%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2635626408%_)))))
                          (let () (declare (not safe)) (_%g2635626408%_)))))
                  (let () (declare (not safe)) (_%g2635626408%_)))
              (let () (declare (not safe)) (_%g2635626408%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2636926571%_)
                                              (if (let ((__tmp27339
                                                         (gx#stx-length
                                                          _%tl2636926571%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27339 '2))
                                                  (let ((_%__splice2705127052%_
                                                         (gx#syntax-split-splice
                                                          _%tl2636926571%_
                                                          '2)))
                                                    (let ((_%tl2639026448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2705127052%_
                                                              '1)))
                                                          (_%target2638826445%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2705127052%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2639026448%_)
                                                          (let ((_%e2639726451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2639026448%_)))
                    (let ((_%tl2639926458%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2639726451%_)))
                          (_%hd2639826455%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2639726451%_))))
                      (if (gx#stx-pair? _%tl2639926458%_)
                          (let ((_%e2640026461%_
                                 (gx#syntax-e _%tl2639926458%_)))
                            (let ((_%tl2640226468%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2640026461%_)))
                                  (_%hd2640126465%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2640026461%_))))
                              (if (gx#stx-null? _%tl2640226468%_)
                                  (_%__match2711927120%_
                                   _%e2636126544%_
                                   _%hd2636226548%_
                                   _%tl2636326551%_
                                   _%e2636426554%_
                                   _%hd2636526558%_
                                   _%tl2636626561%_
                                   _%e2636726564%_
                                   _%hd2636826568%_
                                   _%tl2636926571%_
                                   _%__splice2705127052%_
                                   _%target2638826445%_
                                   _%tl2639026448%_
                                   _%e2639726451%_
                                   _%hd2639826455%_
                                   _%tl2639926458%_
                                   _%e2640026461%_
                                   _%hd2640126465%_
                                   _%tl2640226468%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2635626408%_)))))
                          (let () (declare (not safe)) (_%g2635626408%_)))))
                  (let () (declare (not safe)) (_%g2635626408%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2635626408%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2635626408%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2635626408%_)))))
                          (let () (declare (not safe)) (_%g2635626408%_)))))
                  (let () (declare (not safe)) (_%g2635626408%_))))))))))
