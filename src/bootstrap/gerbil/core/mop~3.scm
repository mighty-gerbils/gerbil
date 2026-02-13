(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27319_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24848%_)
        (letrec ((_%body-opt?24851%_
                  (lambda (_%key24854%_)
                    (let ((__tmp27291 (gx#stx-e _%key24854%_)))
                      (declare (not safe))
                      (##memq __tmp27291
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
          (gx#stx-plist? _%stx24848%_ _%body-opt?24851%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22636%_
               _%id22638%_
               _%super-ref22639%_
               _%slots22640%_
               _%body22641%_)
        (letrec ((_%wrap22643%_
                  (lambda (_%e-stx24845%_)
                    (gx#stx-wrap-source
                     _%e-stx24845%_
                     (gx#stx-source _%stx22636%_))))
                 (_%make-id22645%_
                  (lambda _%args24842%_
                    (apply gx#stx-identifier _%id22638%_ _%args24842%_)))
                 (_%get-mixin-slots22646%_
                  (lambda (_%super24812%_ _%slots24814%_)
                    (letrec* ((_%tab24816%_ (make-hash-table-eq))
                              (_%dedup24818%_
                               (lambda (_%mixins24829%_)
                                 (let _%lp24832%_ ((_%rest24835%_
                                                    _%mixins24829%_)
                                                   (_%r24837%_ '()))
                                   (if (pair? _%rest24835%_)
                                       (let ((_%slot24839%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24835%_))))
                                         (if (hash-get
                                              _%tab24816%_
                                              _%slot24839%_)
                                             (_%lp24832%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24835%_))
                                              _%r24837%_)
                                             (begin
                                               (hash-put!
                                                _%tab24816%_
                                                _%slot24839%_
                                                '#t)
                                               (_%lp24832%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24835%_))
                                                (cons _%slot24839%_
                                                      _%r24837%_)))))
                                       (reverse _%r24837%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24820%_)
                         (hash-put! _%tab24816%_ (gx#stx-e _%slot24820%_) '#t))
                       _%slots24814%_)
                      (if (not _%super24812%_)
                          '()
                          (if (gx#identifier? _%super24812%_)
                              (_%dedup24818%_
                               (_%get-mixin-slots-r22647%_ _%super24812%_))
                              (_%dedup24818%_
                               (concatenate
                                (map _%get-mixin-slots-r22647%_
                                     _%super24812%_))))))))
                 (_%get-mixin-slots-r22647%_
                  (lambda (_%type-id24806%_)
                    (let ((_%info24809%_
                           (gx#syntax-local-value _%type-id24806%_)))
                      (let ((__tmp27293
                             (let ((__obj27070 _%info24809%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27070
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27070
                                      '5
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27070
                                    'slots))))
                            (__tmp27292
                             (concatenate
                              (map _%get-mixin-slots-r22647%_
                                   (let ((__obj27071 _%info24809%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27071
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27071
                                            '4
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27071
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27293 __tmp27292))))))
          (gx#check-duplicate-identifiers _%slots22640%_ _%stx22636%_)
          (let* ((_%name22649%_ (symbol->string (gx#stx-e _%id22638%_)))
                 (_%super22652%_
                  (map gx#syntax-local-value _%super-ref22639%_))
                 (_%struct?22655%_ (gx#stx-getq 'struct: _%body22641%_))
                 (_%g2265822666%_
                  (lambda (_%g2265922662%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2265922662%_)))
                 (_%g2265724802%_
                  (lambda (_%g2265922670%_)
                    ((lambda (_%g2266022673%_)
                       (let* ((_%g2268922697%_
                               (lambda (_%g2269022693%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2269022693%_)))
                              (_%g2268824798%_
                               (lambda (_%g2269022701%_)
                                 ((lambda (_%g2269122704%_)
                                    (let* ((_%g2271722725%_
                                            (lambda (_%g2271822721%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2271822721%_)))
                                           (_%g2271624794%_
                                            (lambda (_%g2271822729%_)
                                              ((lambda (_%g2271922732%_)
                                                 (let* ((_%g2274522753%_
                                                         (lambda (_%g2274622749%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2274622749%_)))
                                                        (_%g2274424790%_
                                                         (lambda (_%g2274622757%_)
                                                           ((lambda (_%g2274722760%_)
                                                              (let* ((_%g2277322781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2277422777%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2277422777%_)))
                             (_%g2277224786%_
                              (lambda (_%g2277422785%_)
                                ((lambda (_%g2277522788%_)
                                   (let* ((_%g2280122818%_
                                           (lambda (_%g2280222814%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2280222814%_)))
                                          (_%g2280024782%_
                                           (lambda (_%g2280222822%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2280222822%_)
                                                 (let ((_g27294_
                                                        (gx#syntax-split-splice
                                                         _%g2280222822%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27295_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27294_)
                          (##values-length _g27294_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27295_ 2)))
                   (error "Context expects 2 values" _g27295_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2280422825%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27294_
                                                               0)))
                                                           (_%tl2280622828%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27294_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2280622828%_)
                                                           (letrec ((_%loop2280722831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2280522835%_ _%slot2281122838%_)
                               (if (gx#stx-pair? _%hd2280522835%_)
                                   (let ((_%e2280822840%_
                                          (gx#syntax-e _%hd2280522835%_)))
                                     (let ((_%lp-hd2280922844%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2280822840%_)))
                                           (_%lp-tl2281022847%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2280822840%_))))
                                       (_%loop2280722831%_
                                        _%lp-tl2281022847%_
                                        (cons _%lp-hd2280922844%_
                                              _%slot2281122838%_))))
                                   (let ((_%slot2281222850%_
                                          (reverse _%slot2281122838%_)))
                                     ((lambda (_%g2280322853%_)
                                        (let* ((_%g2287022887%_
                                                (lambda (_%g2287122883%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2287122883%_)))
                                               (_%g2286924773%_
                                                (lambda (_%g2287122891%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2287122891%_)
                                                      (let ((_g27296_
                                                             (gx#syntax-split-splice
                                                              _%g2287122891%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27296_)
                               (##values-length _g27296_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27297_ 2)))
                        (error "Context expects 2 values" _g27297_)))
                  (let ((_%target2287322894%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27296_ 0)))
                        (_%tl2287522897%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27296_ 1))))
                    (if (gx#stx-null? _%tl2287522897%_)
                        (letrec ((_%loop2287622900%_
                                  (lambda (_%hd2287422904%_ _%getf2288022907%_)
                                    (if (gx#stx-pair? _%hd2287422904%_)
                                        (let ((_%e2287722909%_
                                               (gx#syntax-e _%hd2287422904%_)))
                                          (let ((_%lp-hd2287822913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2287722909%_)))
                                                (_%lp-tl2287922916%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2287722909%_))))
                                            (_%loop2287622900%_
                                             _%lp-tl2287922916%_
                                             (cons _%lp-hd2287822913%_
                                                   _%getf2288022907%_))))
                                        (let ((_%getf2288122919%_
                                               (reverse _%getf2288022907%_)))
                                          ((lambda (_%g2287222922%_)
                                             (let* ((_%g2293922956%_
                                                     (lambda (_%g2294022952%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2294022952%_)))
                                                    (_%g2293824764%_
                                                     (lambda (_%g2294022960%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2294022960%_)
                                                           (let ((_g27298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2294022960%_ '0)))
                     (begin
                       (let ((_g27299_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27298_)
                                    (##values-length _g27298_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27299_ 2)))
                             (error "Context expects 2 values" _g27299_)))
                       (let ((_%target2294222963%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27298_ 0)))
                             (_%tl2294422966%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27298_ 1))))
                         (if (gx#stx-null? _%tl2294422966%_)
                             (letrec ((_%loop2294522969%_
                                       (lambda (_%hd2294322973%_
                                                _%setf2294922976%_)
                                         (if (gx#stx-pair? _%hd2294322973%_)
                                             (let ((_%e2294622978%_
                                                    (gx#syntax-e
                                                     _%hd2294322973%_)))
                                               (let ((_%lp-hd2294722982%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2294622978%_)))
                                                     (_%lp-tl2294822985%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2294622978%_))))
                                                 (_%loop2294522969%_
                                                  _%lp-tl2294822985%_
                                                  (cons _%lp-hd2294722982%_
                                                        _%setf2294922976%_))))
                                             (let ((_%setf2295022988%_
                                                    (reverse _%setf2294922976%_)))
                                               ((lambda (_%g2294122991%_)
                                                  (let* ((_%mixin-slots23008%_
                                                          (_%get-mixin-slots22646%_
                                                           _%super-ref22639%_
                                                           _%slots22640%_))
                                                         (_%g2301123028%_
                                                          (lambda (_%g2301223024%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2301223024%_)))
                                                         (_%g2301024760%_
                                                          (lambda (_%g2301223032%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2301223032%_)
                        (let ((_g27300_
                               (gx#syntax-split-splice _%g2301223032%_ '0)))
                          (begin
                            (let ((_g27301_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27300_)
                                         (##values-length _g27300_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27301_ 2)))
                                  (error "Context expects 2 values" _g27301_)))
                            (let ((_%target2301423035%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27300_ 0)))
                                  (_%tl2301623038%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27300_ 1))))
                              (if (gx#stx-null? _%tl2301623038%_)
                                  (letrec ((_%loop2301723041%_
                                            (lambda (_%hd2301523045%_
                                                     _%mixin-slot2302123048%_)
                                              (if (gx#stx-pair?
                                                   _%hd2301523045%_)
                                                  (let ((_%e2301823050%_
                                                         (gx#syntax-e
                                                          _%hd2301523045%_)))
                                                    (let ((_%lp-hd2301923054%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2301823050%_)))
                                                          (_%lp-tl2302023057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2301823050%_))))
                                                      (_%loop2301723041%_
                                                       _%lp-tl2302023057%_
                                                       (cons _%lp-hd2301923054%_
                                                             _%mixin-slot2302123048%_))))
                                                  (let ((_%mixin-slot2302223060%_
                                                         (reverse _%mixin-slot2302123048%_)))
                                                    ((lambda (_%g2301323063%_)
                                                       (let* ((_%g2308123098%_
                                                               (lambda (_%g2308223094%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2308223094%_)))
                      (_%g2308024751%_
                       (lambda (_%g2308223102%_)
                         (if (gx#stx-pair/null? _%g2308223102%_)
                             (let ((_g27302_
                                    (gx#syntax-split-splice
                                     _%g2308223102%_
                                     '0)))
                               (begin
                                 (let ((_g27303_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27302_)
                                              (##values-length _g27302_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27303_ 2)))
                                       (error "Context expects 2 values"
                                              _g27303_)))
                                 (let ((_%target2308423105%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27302_ 0)))
                                       (_%tl2308623108%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27302_ 1))))
                                   (if (gx#stx-null? _%tl2308623108%_)
                                       (letrec ((_%loop2308723111%_
                                                 (lambda (_%hd2308523115%_
                                                          _%mixin-getf2309123118%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2308523115%_)
                                                       (let ((_%e2308823120%_
                                                              (gx#syntax-e
                                                               _%hd2308523115%_)))
                                                         (let ((_%lp-hd2308923124%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2308823120%_)))
                       (_%lp-tl2309023127%_
                        (let () (declare (not safe)) (##cdr _%e2308823120%_))))
                   (_%loop2308723111%_
                    _%lp-tl2309023127%_
                    (cons _%lp-hd2308923124%_ _%mixin-getf2309123118%_))))
               (let ((_%mixin-getf2309223130%_
                      (reverse _%mixin-getf2309123118%_)))
                 ((lambda (_%g2308323133%_)
                    (let* ((_%g2315023167%_
                            (lambda (_%g2315123163%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2315123163%_)))
                           (_%g2314924742%_
                            (lambda (_%g2315123171%_)
                              (if (gx#stx-pair/null? _%g2315123171%_)
                                  (let ((_g27304_
                                         (gx#syntax-split-splice
                                          _%g2315123171%_
                                          '0)))
                                    (begin
                                      (let ((_g27305_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27304_)
                                                   (##values-length _g27304_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27305_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27305_)))
                                      (let ((_%target2315323174%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27304_ 0)))
                                            (_%tl2315523177%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27304_ 1))))
                                        (if (gx#stx-null? _%tl2315523177%_)
                                            (letrec ((_%loop2315623180%_
                                                      (lambda (_%hd2315423184%_
                                                               _%mixin-setf2316023187%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2315423184%_)
                                                            (let ((_%e2315723189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2315423184%_)))
                      (let ((_%lp-hd2315823193%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2315723189%_)))
                            (_%lp-tl2315923196%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2315723189%_))))
                        (_%loop2315623180%_
                         _%lp-tl2315923196%_
                         (cons _%lp-hd2315823193%_ _%mixin-setf2316023187%_))))
                    (let ((_%mixin-setf2316123199%_
                           (reverse _%mixin-setf2316023187%_)))
                      ((lambda (_%g2315223202%_)
                         (let* ((_%g2321923236%_
                                 (lambda (_%g2322023232%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2322023232%_)))
                                (_%g2321824725%_
                                 (lambda (_%g2322023240%_)
                                   (if (gx#stx-pair/null? _%g2322023240%_)
                                       (let ((_g27306_
                                              (gx#syntax-split-splice
                                               _%g2322023240%_
                                               '0)))
                                         (begin
                                           (let ((_g27307_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27306_)
                                                        (##values-length
                                                         _g27306_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27307_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27307_)))
                                           (let ((_%target2322223243%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27306_ 0)))
                                                 (_%tl2322423246%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27306_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2322423246%_)
                                                 (letrec ((_%loop2322523249%_
                                                           (lambda (_%hd2322323253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2322923256%_)
                     (if (gx#stx-pair? _%hd2322323253%_)
                         (let ((_%e2322623258%_
                                (gx#syntax-e _%hd2322323253%_)))
                           (let ((_%lp-hd2322723262%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2322623258%_)))
                                 (_%lp-tl2322823265%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2322623258%_))))
                             (_%loop2322523249%_
                              _%lp-tl2322823265%_
                              (cons _%lp-hd2322723262%_ _%ugetf2322923256%_))))
                         (let ((_%ugetf2323023268%_
                                (reverse _%ugetf2322923256%_)))
                           ((lambda (_%g2322123271%_)
                              (let* ((_%g2328823305%_
                                      (lambda (_%g2328923301%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2328923301%_)))
                                     (_%g2328724708%_
                                      (lambda (_%g2328923309%_)
                                        (if (gx#stx-pair/null? _%g2328923309%_)
                                            (let ((_g27308_
                                                   (gx#syntax-split-splice
                                                    _%g2328923309%_
                                                    '0)))
                                              (begin
                                                (let ((_g27309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27308_)
                                                             (##values-length
                                                              _g27308_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27309_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2329123312%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27308_
                                                          0)))
                                                      (_%tl2329323315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27308_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2329323315%_)
                                                      (letrec ((_%loop2329423318%_
                                                                (lambda (_%hd2329223322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2329823325%_)
                          (if (gx#stx-pair? _%hd2329223322%_)
                              (let ((_%e2329523327%_
                                     (gx#syntax-e _%hd2329223322%_)))
                                (let ((_%lp-hd2329623331%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2329523327%_)))
                                      (_%lp-tl2329723334%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2329523327%_))))
                                  (_%loop2329423318%_
                                   _%lp-tl2329723334%_
                                   (cons _%lp-hd2329623331%_
                                         _%usetf2329823325%_))))
                              (let ((_%usetf2329923337%_
                                     (reverse _%usetf2329823325%_)))
                                ((lambda (_%g2329023340%_)
                                   (let* ((_%g2335723374%_
                                           (lambda (_%g2335823370%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2335823370%_)))
                                          (_%g2335624691%_
                                           (lambda (_%g2335823378%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2335823378%_)
                                                 (let ((_g27310_
                                                        (gx#syntax-split-splice
                                                         _%g2335823378%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27311_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27310_)
                          (##values-length _g27310_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27311_ 2)))
                   (error "Context expects 2 values" _g27311_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2336023381%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27310_
                                                               0)))
                                                           (_%tl2336223384%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27310_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2336223384%_)
                                                           (letrec ((_%loop2336323387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2336123391%_
                                      _%mixin-ugetf2336723394%_)
                               (if (gx#stx-pair? _%hd2336123391%_)
                                   (let ((_%e2336423396%_
                                          (gx#syntax-e _%hd2336123391%_)))
                                     (let ((_%lp-hd2336523400%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2336423396%_)))
                                           (_%lp-tl2336623403%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2336423396%_))))
                                       (_%loop2336323387%_
                                        _%lp-tl2336623403%_
                                        (cons _%lp-hd2336523400%_
                                              _%mixin-ugetf2336723394%_))))
                                   (let ((_%mixin-ugetf2336823406%_
                                          (reverse _%mixin-ugetf2336723394%_)))
                                     ((lambda (_%g2335923409%_)
                                        (let* ((_%g2342623443%_
                                                (lambda (_%g2342723439%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2342723439%_)))
                                               (_%g2342524674%_
                                                (lambda (_%g2342723447%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2342723447%_)
                                                      (let ((_g27312_
                                                             (gx#syntax-split-splice
                                                              _%g2342723447%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27312_)
                               (##values-length _g27312_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27313_ 2)))
                        (error "Context expects 2 values" _g27313_)))
                  (let ((_%target2342923450%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27312_ 0)))
                        (_%tl2343123453%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27312_ 1))))
                    (if (gx#stx-null? _%tl2343123453%_)
                        (letrec ((_%loop2343223456%_
                                  (lambda (_%hd2343023460%_
                                           _%mixin-usetf2343623463%_)
                                    (if (gx#stx-pair? _%hd2343023460%_)
                                        (let ((_%e2343323465%_
                                               (gx#syntax-e _%hd2343023460%_)))
                                          (let ((_%lp-hd2343423469%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2343323465%_)))
                                                (_%lp-tl2343523472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2343323465%_))))
                                            (_%loop2343223456%_
                                             _%lp-tl2343523472%_
                                             (cons _%lp-hd2343423469%_
                                                   _%mixin-usetf2343623463%_))))
                                        (let ((_%mixin-usetf2343723475%_
                                               (reverse _%mixin-usetf2343623463%_)))
                                          ((lambda (_%g2342823478%_)
                                             (let* ((_%type-slots23513%_
                                                     (if (gx#stx-null?
                                                          _%slots22640%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2294122991%_
                                _%g2287222922%_
                                _%g2280322853%_)
                               (foldr (lambda (_%g2349823503%_
                                               _%g2349923506%_
                                               _%g2350023508%_
                                               _%g2350123510%_)
                                        (cons (cons _%g2350023508%_
                                                    (cons _%g2349923506%_
                                                          (cons _%g2349823503%_
                                                                '())))
                                              _%g2350123510%_))
                                      '()
                                      _%g2294122991%_
                                      _%g2287222922%_
                                      _%g2280322853%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23534%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots23008%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2315223202%_
                                _%g2308323133%_
                                _%g2301323063%_)
                               (foldr (lambda (_%g2351923524%_
                                               _%g2352023527%_
                                               _%g2352123529%_
                                               _%g2352223531%_)
                                        (cons (cons _%g2352123529%_
                                                    (cons _%g2352023527%_
                                                          (cons _%g2351923524%_
                                                                '())))
                                              _%g2352223531%_))
                                      '()
                                      _%g2315223202%_
                                      _%g2308323133%_
                                      _%g2301323063%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23541%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22641%_)))
                           (if _%$e23537%_ _%$e23537%_ _%id22638%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23548%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22641%_)))
                           (if _%$e23544%_
                               _%$e23544%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%g2266022673%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23562%_
                                                     (let ((_%$e23558%_
                                                            (let ((_%e2355023552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22641%_)))
                      (if _%e2355023552%_
                          (let ((_%e23555%_ _%e2355023552%_))
                            (cons 'constructor: (cons _%e23555%_ '())))
                          '#f))))
               (if _%$e23558%_ _%$e23558%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23603%_
                                                     (let* ((_%properties23565%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22641%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23580%_
                     (let ((_%$e23568%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22641%_))))
                       (if _%$e23568%_
                           ((lambda (_%print23572%_)
                              (let ((_%print23575%_
                                     (if (eq? _%print23572%_ '#t)
                                         _%slots22640%_
                                         _%print23572%_)))
                                (cons (cons 'print: _%print23575%_)
                                      _%properties23565%_)))
                            _%$e23568%_)
                           _%properties23565%_)))
                    (_%properties23595%_
                     (let ((_%$e23583%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22641%_))))
                       (if _%$e23583%_
                           ((lambda (_%equal23587%_)
                              (let ((_%equal23590%_
                                     (if (eq? _%equal23587%_ '#t)
                                         _%slots22640%_
                                         _%equal23587%_)))
                                (cons (cons 'equal: _%equal23590%_)
                                      _%properties23580%_)))
                            _%$e23583%_)
                           _%properties23580%_)))
                    (_%properties23598%_
                     (if (gx#stx-e (gx#stx-getq 'acyclic: _%body22641%_))
                         (cons (cons 'acyclic: '#t) _%properties23595%_)
                         _%properties23595%_)))
               _%properties23598%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23644%_
                                                     (if (null? _%properties23603%_)
                                                         '()
                                                         (let* ((_%g2360623614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2360723610%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2360723610%_)))
                        (_%g2360523640%_
                         (lambda (_%g2360723618%_)
                           ((lambda (_%g2360823621%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%g2360823621%_ '()))
                                          '())))
                            _%g2360723618%_))))
                   (_%g2360523640%_ _%properties23603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23656%_
                                                     (let ((_%$e23647%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22641%_)))
                                                       (if _%$e23647%_
                                                           ((lambda (_%metaclass23651%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23651%_)
                          _%metaclass23651%_
                          '#f))
                    _%$e23647%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23659%_
                                                     (if _%metaclass23656%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23662%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22641%_)))
                                                    (_%type-struct23665%_
                                                     (cons 'struct:
                                                           (cons _%struct?22655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23668%_
                                                     (cons 'final:
                                                           (cons _%final?23662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2367123688%_
                                                     (lambda (_%g2367223684%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2367223684%_)))
                                                    (_%g2367024670%_
                                                     (lambda (_%g2367223692%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2367223692%_)
                                                           (let ((_g27314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2367223692%_ '0)))
                     (begin
                       (let ((_g27315_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27314_)
                                    (##values-length _g27314_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27315_ 2)))
                             (error "Context expects 2 values" _g27315_)))
                       (let ((_%target2367423695%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27314_ 0)))
                             (_%tl2367623698%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27314_ 1))))
                         (if (gx#stx-null? _%tl2367623698%_)
                             (letrec ((_%loop2367723701%_
                                       (lambda (_%hd2367523705%_
                                                _%type-body2368123708%_)
                                         (if (gx#stx-pair? _%hd2367523705%_)
                                             (let ((_%e2367823710%_
                                                    (gx#syntax-e
                                                     _%hd2367523705%_)))
                                               (let ((_%lp-hd2367923714%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2367823710%_)))
                                                     (_%lp-tl2368023717%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2367823710%_))))
                                                 (_%loop2367723701%_
                                                  _%lp-tl2368023717%_
                                                  (cons _%lp-hd2367923714%_
                                                        _%type-body2368123708%_))))
                                             (let ((_%type-body2368223720%_
                                                    (reverse _%type-body2368123708%_)))
                                               ((lambda (_%g2367323723%_)
                                                  (let* ((_%g2374423752%_
                                                          (lambda (_%g2374523748%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2374523748%_)))
                                                         (_%g2374324658%_
                                                          (lambda (_%g2374523756%_)
                                                            ((lambda (_%g2374623759%_)
                                                               (let* ((_%g2377223780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2377323776%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2377323776%_)))
                              (_%g2377124587%_
                               (lambda (_%g2377323784%_)
                                 ((lambda (_%g2377423787%_)
                                    (let* ((_%g2380023808%_
                                            (lambda (_%g2380123804%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2380123804%_)))
                                           (_%g2379924552%_
                                            (lambda (_%g2380123812%_)
                                              ((lambda (_%g2380223815%_)
                                                 (let* ((_%g2382823836%_
                                                         (lambda (_%g2382923832%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2382923832%_)))
                                                        (_%g2382724468%_
                                                         (lambda (_%g2382923840%_)
                                                           ((lambda (_%g2383023843%_)
                                                              (let* ((_%g2385623864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2385723860%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2385723860%_)))
                             (_%g2385524456%_
                              (lambda (_%g2385723868%_)
                                ((lambda (_%g2385823871%_)
                                   (let* ((_%g2388423892%_
                                           (lambda (_%g2388523888%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2388523888%_)))
                                          (_%g2388324452%_
                                           (lambda (_%g2388523896%_)
                                             ((lambda (_%g2388623899%_)
                                                (let* ((_%g2391223920%_
                                                        (lambda (_%g2391323916%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2391323916%_)))
                                                       (_%g2391124448%_
                                                        (lambda (_%g2391323924%_)
                                                          ((lambda (_%g2391423927%_)
                                                             (let* ((_%g2394023948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2394123944%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2394123944%_)))
                            (_%g2393924413%_
                             (lambda (_%g2394123952%_)
                               ((lambda (_%g2394223955%_)
                                  (let* ((_%g2396823976%_
                                          (lambda (_%g2396923972%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2396923972%_)))
                                         (_%g2396724342%_
                                          (lambda (_%g2396923980%_)
                                            ((lambda (_%g2397023983%_)
                                               (let* ((_%g2399624004%_
                                                       (lambda (_%g2399724000%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2399724000%_)))
                                                      (_%g2399524338%_
                                                       (lambda (_%g2399724008%_)
                                                         ((lambda (_%g2399824011%_)
                                                            (let* ((_%g2402424032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2402524028%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2402524028%_)))
                           (_%g2402324334%_
                            (lambda (_%g2402524036%_)
                              ((lambda (_%g2402624039%_)
                                 (let* ((_%g2405224060%_
                                         (lambda (_%g2405324056%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2405324056%_)))
                                        (_%g2405124330%_
                                         (lambda (_%g2405324064%_)
                                           ((lambda (_%g2405424067%_)
                                              (let* ((_%g2408024088%_
                                                      (lambda (_%g2408124084%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2408124084%_)))
                                                     (_%g2407924304%_
                                                      (lambda (_%g2408124092%_)
                                                        ((lambda (_%g2408224095%_)
                                                           (let* ((_%g2410824116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2410924112%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2410924112%_)))
                          (_%g2410724278%_
                           (lambda (_%g2410924120%_)
                             ((lambda (_%g2411024123%_)
                                (let* ((_%g2413624144%_
                                        (lambda (_%g2413724140%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2413724140%_)))
                                       (_%g2413524252%_
                                        (lambda (_%g2413724148%_)
                                          ((lambda (_%g2413824151%_)
                                             (let* ((_%g2416424172%_
                                                     (lambda (_%g2416524168%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2416524168%_)))
                                                    (_%g2416324226%_
                                                     (lambda (_%g2416524176%_)
                                                       ((lambda (_%g2416624179%_)
                                                          (let* ((_%g2419224200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2419324196%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2419324196%_)))
                         (_%g2419124222%_
                          (lambda (_%g2419324204%_)
                            ((lambda (_%g2419424207%_)
                               (_%wrap22643%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%g2374623759%_
                                            (cons _%g2419424207%_ '())))))
                             _%g2419324204%_))))
                    (_%g2419124222%_
                     (_%wrap22643%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%g2266022673%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%g2377423787%_
                                                          (cons 'name:
                                                                (cons _%g2380223815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%g2385823871%_
                                          (cons 'super:
                                                (cons _%g2383023843%_
                                                      (cons 'struct?:
                                                            (cons _%g2388623899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%g2391423927%_
                                      (cons 'metaclass:
                                            (cons _%g2394223955%_
                                                  (cons 'constructor-method:
                                                        (cons _%g2397023983%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g2399824011%_
                                  (cons 'constructor:
                                        (cons _%g2402624039%_
                                              (cons 'predicate:
                                                    (cons _%g2405424067%_
                                                          (cons 'accessors:
                                                                (cons _%g2408224095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%g2411024123%_
                                          (cons 'unchecked-accessors:
                                                (cons _%g2413824151%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%g2416624179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2416524176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2416324226%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%g2329023340%_
                                                         _%g2280322853%_)
                                                        (foldr (lambda (_%g2422924236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2423024239%_
                                _%g2423124241%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2423024239%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2422924236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2423124241%_))
                       (begin
                         (gx#syntax-check-splice-targets
                          _%g2342823478%_
                          _%g2301323063%_)
                         (foldr (lambda (_%g2423224244%_
                                         _%g2423324247%_
                                         _%g2423424249%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2423324247%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2423224244%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2423424249%_))
                                '()
                                _%g2342823478%_
                                _%g2301323063%_))
                       _%g2329023340%_
                       _%g2280322853%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2413724148%_))))
                                  (_%g2413524252%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%g2322123271%_
                                            _%g2280322853%_)
                                           (foldr (lambda (_%g2425524262%_
                                                           _%g2425624265%_
                                                           _%g2425724267%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2425624265%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2425524262%_ '()))
                                          '()))))
                  _%g2425724267%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g2335923409%_
                                                     _%g2301323063%_)
                                                    (foldr (lambda (_%g2425824270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2425924273%_
                            _%g2426024275%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2425924273%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2425824270%_
                                                               '()))
                                                   '()))))
                           _%g2426024275%_))
                   '()
                   _%g2335923409%_
                   _%g2301323063%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2322123271%_
                                                  _%g2280322853%_))))))
                              _%g2410924120%_))))
                     (_%g2410724278%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%g2294122991%_
                               _%g2280322853%_)
                              (foldr (lambda (_%g2428124288%_
                                              _%g2428224291%_
                                              _%g2428324293%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2428224291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2428124288%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2428324293%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%g2315223202%_
                                        _%g2301323063%_)
                                       (foldr (lambda (_%g2428424296%_
                                                       _%g2428524299%_
                                                       _%g2428624301%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2428524299%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2428424296%_ '()))
                                      '()))))
              _%g2428624301%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%g2315223202%_
                                              _%g2301323063%_))
                                     _%g2294122991%_
                                     _%g2280322853%_))))))
                 _%g2408124092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2407924304%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%g2287222922%_
                                                          _%g2280322853%_)
                                                         (foldr (lambda (_%g2430724314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2430824317%_
                                 _%g2430924319%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2430824317%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2430724314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2430924319%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%g2308323133%_
                           _%g2301323063%_)
                          (foldr (lambda (_%g2431024322%_
                                          _%g2431124325%_
                                          _%g2431224327%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2431124325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2431024322%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2431224327%_))
                                 '()
                                 _%g2308323133%_
                                 _%g2301323063%_))
                        _%g2287222922%_
                        _%g2280322853%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2405324064%_))))
                                   (_%g2405124330%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g2274722760%_ '())))))
                               _%g2402524036%_))))
                      (_%g2402324334%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%g2271922732%_ '())))))
                  _%g2399724008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2399524338%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%g2269122704%_
                                                              '())))))
                                             _%g2396923980%_))))
                                    (_%g2396724342%_
                                     (if (null? _%type-constructor23562%_)
                                         '#f
                                         (let* ((_%g2434624361%_
                                                 (lambda (_%g2434724357%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2434724357%_)))
                                                (_%g2434524409%_
                                                 (lambda (_%g2434724365%_)
                                                   (if (gx#stx-pair?
                                                        _%g2434724365%_)
                                                       (let ((_%e2434924368%_
                                                              (gx#syntax-e
                                                               _%g2434724365%_)))
                                                         (let ((_%hd2435024372%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2434924368%_)))
                       (_%tl2435124375%_
                        (let () (declare (not safe)) (##cdr _%e2434924368%_))))
                   (if (gx#stx-datum? _%hd2435024372%_)
                       (let ((_%e2435224378%_ (gx#stx-e _%hd2435024372%_)))
                         (if (equal? _%e2435224378%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2435124375%_)
                                 (let ((_%e2435324382%_
                                        (gx#syntax-e _%tl2435124375%_)))
                                   (let ((_%hd2435424386%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2435324382%_)))
                                         (_%tl2435524389%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2435324382%_))))
                                     (if (gx#stx-null? _%tl2435524389%_)
                                         ((lambda (_%g2434824392%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2434824392%_ '())))
                                          _%hd2435424386%_)
                                         (_%g2434624361%_ _%g2434724365%_))))
                                 (_%g2434624361%_ _%g2434724365%_))
                             (_%g2434624361%_ _%g2434724365%_)))
                       (_%g2434624361%_ _%g2434724365%_))))
               (_%g2434624361%_ _%g2434724365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2434524409%_
                                            _%type-constructor23562%_))))))
                                _%g2394123952%_))))
                       (_%g2393924413%_
                        (if _%metaclass23656%_
                            (let* ((_%g2441724425%_
                                    (lambda (_%g2441824421%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2441824421%_)))
                                   (_%g2441624444%_
                                    (lambda (_%g2441824429%_)
                                      ((lambda (_%g2441924432%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%g2441924432%_ '())))
                                       _%g2441824429%_))))
                              (_%g2441624444%_ _%metaclass23656%_))
                            '#f))))
                   _%g2391323924%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2391124448%_
                                                   _%final?23662%_)))
                                              _%g2388523896%_))))
                                     (_%g2388324452%_ _%struct?22655%_)))
                                 _%g2385723868%_))))
                        (_%g2385524456%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2445924462%_
                                                     _%g2446024465%_)
                                              (cons _%g2445924462%_
                                                    _%g2446024465%_))
                                            '()
                                            _%g2280322853%_)
                                     '())))))
                    _%g2382923840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2382724468%_
                                                    (let* ((_%g2447224489%_
                                                            (lambda (_%g2447324485%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2447324485%_)))
                                                           (_%g2447124548%_
                                                            (lambda (_%g2447324493%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2447324493%_)
                          (let ((_g27316_
                                 (gx#syntax-split-splice _%g2447324493%_ '0)))
                            (begin
                              (let ((_g27317_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27316_)
                                           (##values-length _g27316_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27317_ 2)))
                                    (error "Context expects 2 values"
                                           _g27317_)))
                              (let ((_%target2447524496%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27316_ 0)))
                                    (_%tl2447724499%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27316_ 1))))
                                (if (gx#stx-null? _%tl2447724499%_)
                                    (letrec ((_%loop2447824502%_
                                              (lambda (_%hd2447624506%_
                                                       _%super-id2448224509%_)
                                                (if (gx#stx-pair?
                                                     _%hd2447624506%_)
                                                    (let ((_%e2447924511%_
                                                           (gx#syntax-e
                                                            _%hd2447624506%_)))
                                                      (let ((_%lp-hd2448024515%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2447924511%_)))
                    (_%lp-tl2448124518%_
                     (let () (declare (not safe)) (##cdr _%e2447924511%_))))
                (_%loop2447824502%_
                 _%lp-tl2448124518%_
                 (cons _%lp-hd2448024515%_ _%super-id2448224509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2448324521%_
                                                           (reverse _%super-id2448224509%_)))
                                                      ((lambda (_%g2447424524%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2453924542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2454024545%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2453924542%_ '()))
                                      _%g2454024545%_))
                              '()
                              _%g2447424524%_)))
               _%super-id2448324521%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2447824502%_
                                       _%target2447524496%_
                                       '()))
                                    (_%g2447224489%_ _%g2447324493%_)))))
                          (_%g2447224489%_ _%g2447324493%_)))))
              (_%g2447124548%_ _%super-ref22639%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2380123812%_))))
                                      (_%g2379924552%_
                                       (let* ((_%g2455624564%_
                                               (lambda (_%g2455724560%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2455724560%_)))
                                              (_%g2455524583%_
                                               (lambda (_%g2455724568%_)
                                                 ((lambda (_%g2455824571%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2455824571%_
                                                                '())))
                                                  _%g2455724568%_))))
                                         (_%g2455524583%_
                                          (cadr _%type-name23541%_))))))
                                  _%g2377323784%_))))
                         (_%g2377124587%_
                          (let* ((_%g2459124606%_
                                  (lambda (_%g2459224602%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2459224602%_)))
                                 (_%g2459024654%_
                                  (lambda (_%g2459224610%_)
                                    (if (gx#stx-pair? _%g2459224610%_)
                                        (let ((_%e2459424613%_
                                               (gx#syntax-e _%g2459224610%_)))
                                          (let ((_%hd2459524617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2459424613%_)))
                                                (_%tl2459624620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2459424613%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2459524617%_)
                                                (let ((_%e2459724623%_
                                                       (gx#stx-e
                                                        _%hd2459524617%_)))
                                                  (if (equal? _%e2459724623%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2459624620%_)
                                                          (let ((_%e2459824627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2459624620%_)))
                    (let ((_%hd2459924631%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2459824627%_)))
                          (_%tl2460024634%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2459824627%_))))
                      (if (gx#stx-null? _%tl2460024634%_)
                          ((lambda (_%g2459324637%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%g2459324637%_ '())))
                           _%hd2459924631%_)
                          (_%g2459124606%_ _%g2459224610%_))))
                  (_%g2459124606%_ _%g2459224610%_))
              (_%g2459124606%_ _%g2459224610%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2459124606%_
                                                 _%g2459224610%_))))
                                        (_%g2459124606%_ _%g2459224610%_)))))
                            (_%g2459024654%_ _%type-id23548%_)))))
                     _%g2374523756%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2374324658%_
                                                     (_%wrap22643%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%g2269122704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g2277522788%_
                                (cons _%g2271922732%_
                                      (cons _%g2274722760%_
                                            (foldr (lambda (_%g2466124664%_
                                                            _%g2466224667%_)
                                                     (cons _%g2466124664%_
                                                           _%g2466224667%_))
                                                   '()
                                                   _%g2367323723%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2368223720%_))))))
                               (_%loop2367723701%_ _%target2367423695%_ '()))
                             (_%g2367123688%_ _%g2367223692%_)))))
                   (_%g2367123688%_ _%g2367223692%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2367024670%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23534%_
                                                                _%type-slots23513%_)
                                                         _%type-properties23644%_)
                                                  _%type-metaclass23659%_)
                                           _%type-final23668%_)
                                    _%type-struct23665%_)
                             _%type-constructor23562%_)
                      _%type-name23541%_)
               _%type-id23548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2343723475%_))))))
                          (_%loop2343223456%_ _%target2342923450%_ '()))
                        (_%g2342623443%_ _%g2342723447%_)))))
              (_%g2342623443%_ _%g2342723447%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2342524674%_
                                           (gx#stx-map
                                            (lambda (_%g2467724679%_)
                                              (_%make-id22645%_
                                               '"&"
                                               _%g2467724679%_))
                                            (foldr (lambda (_%g2468224685%_
                                                            _%g2468324688%_)
                                                     (cons _%g2468224685%_
                                                           _%g2468324688%_))
                                                   '()
                                                   _%g2315223202%_)))))
                                      _%mixin-ugetf2336823406%_))))))
                     (_%loop2336323387%_ _%target2336023381%_ '()))
                   (_%g2335723374%_ _%g2335823378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2335723374%_
                                                  _%g2335823378%_)))))
                                     (_%g2335624691%_
                                      (gx#stx-map
                                       (lambda (_%g2469424696%_)
                                         (_%make-id22645%_
                                          '"&"
                                          _%g2469424696%_))
                                       (foldr (lambda (_%g2469924702%_
                                                       _%g2470024705%_)
                                                (cons _%g2469924702%_
                                                      _%g2470024705%_))
                                              '()
                                              _%g2308323133%_)))))
                                 _%usetf2329923337%_))))))
                (_%loop2329423318%_ _%target2329123312%_ '()))
              (_%g2328823305%_ _%g2328923309%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2328823305%_
                                             _%g2328923309%_)))))
                                (_%g2328724708%_
                                 (gx#stx-map
                                  (lambda (_%g2471124713%_)
                                    (_%make-id22645%_ '"&" _%g2471124713%_))
                                  (foldr (lambda (_%g2471624719%_
                                                  _%g2471724722%_)
                                           (cons _%g2471624719%_
                                                 _%g2471724722%_))
                                         '()
                                         _%g2294122991%_)))))
                            _%ugetf2323023268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2322523249%_
                                                    _%target2322223243%_
                                                    '()))
                                                 (_%g2321923236%_
                                                  _%g2322023240%_)))))
                                       (_%g2321923236%_ _%g2322023240%_)))))
                           (_%g2321824725%_
                            (gx#stx-map
                             (lambda (_%g2472824730%_)
                               (_%make-id22645%_ '"&" _%g2472824730%_))
                             (foldr (lambda (_%g2473324736%_ _%g2473424739%_)
                                      (cons _%g2473324736%_ _%g2473424739%_))
                                    '()
                                    _%g2287222922%_)))))
                       _%mixin-setf2316123199%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2315623180%_
                                               _%target2315323174%_
                                               '()))
                                            (_%g2315023167%_
                                             _%g2315123171%_)))))
                                  (_%g2315023167%_ _%g2315123171%_)))))
                      (_%g2314924742%_
                       (gx#stx-map
                        (lambda (_%g2474524747%_)
                          (_%make-id22645%_
                           _%name22649%_
                           '"-"
                           _%g2474524747%_
                           '"-set!"))
                        _%mixin-slots23008%_))))
                  _%mixin-getf2309223130%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2308723111%_
                                          _%target2308423105%_
                                          '()))
                                       (_%g2308123098%_ _%g2308223102%_)))))
                             (_%g2308123098%_ _%g2308223102%_)))))
                 (_%g2308024751%_
                  (gx#stx-map
                   (lambda (_%g2475424756%_)
                     (_%make-id22645%_ _%name22649%_ '"-" _%g2475424756%_))
                   _%mixin-slots23008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2302223060%_))))))
                                    (_%loop2301723041%_
                                     _%target2301423035%_
                                     '()))
                                  (_%g2301123028%_ _%g2301223032%_)))))
                        (_%g2301123028%_ _%g2301223032%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2301024760%_
                                                     _%mixin-slots23008%_)))
                                                _%setf2295022988%_))))))
                               (_%loop2294522969%_ _%target2294222963%_ '()))
                             (_%g2293922956%_ _%g2294022960%_)))))
                   (_%g2293922956%_ _%g2294022960%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2293824764%_
                                                (gx#stx-map
                                                 (lambda (_%g2476724769%_)
                                                   (_%make-id22645%_
                                                    _%name22649%_
                                                    '"-"
                                                    _%g2476724769%_
                                                    '"-set!"))
                                                 _%slots22640%_))))
                                           _%getf2288122919%_))))))
                          (_%loop2287622900%_ _%target2287322894%_ '()))
                        (_%g2287022887%_ _%g2287122891%_)))))
              (_%g2287022887%_ _%g2287122891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2286924773%_
                                           (gx#stx-map
                                            (lambda (_%g2477624778%_)
                                              (_%make-id22645%_
                                               _%name22649%_
                                               '"-"
                                               _%g2477624778%_))
                                            _%slots22640%_))))
                                      _%slot2281222850%_))))))
                     (_%loop2280722831%_ _%target2280422825%_ '()))
                   (_%g2280122818%_ _%g2280222822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2280122818%_
                                                  _%g2280222822%_)))))
                                     (_%g2280024782%_ _%slots22640%_)))
                                 _%g2277422785%_))))
                        (_%g2277224786%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22652%_)))))
                    _%g2274622757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2274424790%_
                                                    (_%make-id22645%_
                                                     _%name22649%_
                                                     '"?"))))
                                               _%g2271822729%_))))
                                      (_%g2271624794%_
                                       (_%make-id22645%_
                                        '"make-"
                                        _%name22649%_))))
                                  _%g2269022701%_))))
                         (_%g2268824798%_
                          (_%make-id22645%_ _%name22649%_ '"::t"))))
                     _%g2265922670%_))))
            (_%g2265724802%_ _%id22638%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24869%_)
        (let* ((_%g2487324892%_
                (lambda (_%g2487424888%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2487424888%_)))
               (_%g2487224949%_
                (lambda (_%g2487424896%_)
                  (if (gx#stx-pair? _%g2487424896%_)
                      (let ((_%e2487824899%_ (gx#syntax-e _%g2487424896%_)))
                        (let ((_%hd2487924903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2487824899%_)))
                              (_%tl2488024906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2487824899%_))))
                          (if (gx#stx-pair? _%tl2488024906%_)
                              (let ((_%e2488124909%_
                                     (gx#syntax-e _%tl2488024906%_)))
                                (let ((_%hd2488224913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2488124909%_)))
                                      (_%tl2488324916%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2488124909%_))))
                                  (if (gx#stx-pair? _%tl2488324916%_)
                                      (let ((_%e2488424919%_
                                             (gx#syntax-e _%tl2488324916%_)))
                                        (let ((_%hd2488524923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2488424919%_)))
                                              (_%tl2488624926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2488424919%_))))
                                          ((lambda (_%g2487524929%_
                                                    _%g2487624931%_
                                                    _%g2487724932%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%g2487724932%_
                                                         (cons _%g2487624931%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%g2487524929%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2488624926%_
                                           _%hd2488524923%_
                                           _%hd2488224913%_)))
                                      (_%g2487324892%_ _%g2487424896%_))))
                              (_%g2487324892%_ _%g2487424896%_))))
                      (_%g2487324892%_ _%g2487424896%_)))))
          (_%g2487224949%_ _%$stx24869%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24953%_)
        (letrec ((_%generate24956%_
                  (lambda (_%hd25040%_ _%slots25042%_ _%body25043%_)
                    (let* ((_%__stx2679426795%_ _%hd25040%_)
                           (_%g2504625058%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2679426795%_))))
                      (let ((_%__kont2679726798%_
                             (lambda (_%g2504825086%_ _%g2504925088%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24953%_
                                _%g2504925088%_
                                (gx#syntax->list _%g2504825086%_)
                                _%slots25042%_
                                _%body25043%_)))
                            (_%__kont2679926800%_
                             (lambda ()
                               (if (gx#identifier? _%hd25040%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24953%_
                                    _%hd25040%_
                                    '()
                                    _%slots25042%_
                                    _%body25043%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx24953%_
                                    _%hd25040%_)))))
                        (let ((_%__match2680726808%_
                               (lambda (_%e2505025076%_
                                        _%hd2505125080%_
                                        _%tl2505225083%_)
                                 (let ((_%g2504825086%_ _%tl2505225083%_)
                                       (_%g2504925088%_ _%hd2505125080%_))
                                   (if (and (gx#stx-list? _%g2504825086%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%g2504825086%_))
                                       (_%__kont2679726798%_
                                        _%g2504825086%_
                                        _%g2504925088%_)
                                       (_%__kont2679926800%_))))))
                          (if (gx#stx-pair? _%__stx2679426795%_)
                              (let ((_%e2505025076%_
                                     (gx#syntax-e _%__stx2679426795%_)))
                                (let ((_%tl2505225083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2505025076%_)))
                                      (_%hd2505125080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2505025076%_))))
                                  (_%__match2680726808%_
                                   _%e2505025076%_
                                   _%hd2505125080%_
                                   _%tl2505225083%_)))
                              (_%__kont2679926800%_))))))))
          (let* ((_%g2495924978%_
                  (lambda (_%g2496024974%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2496024974%_)))
                 (_%g2495825036%_
                  (lambda (_%g2496024982%_)
                    (if (gx#stx-pair? _%g2496024982%_)
                        (let ((_%e2496424985%_ (gx#syntax-e _%g2496024982%_)))
                          (let ((_%hd2496524989%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2496424985%_)))
                                (_%tl2496624992%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2496424985%_))))
                            (if (gx#stx-pair? _%tl2496624992%_)
                                (let ((_%e2496724995%_
                                       (gx#syntax-e _%tl2496624992%_)))
                                  (let ((_%hd2496824999%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2496724995%_)))
                                        (_%tl2496925002%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2496724995%_))))
                                    (if (gx#stx-pair? _%tl2496925002%_)
                                        (let ((_%e2497025005%_
                                               (gx#syntax-e _%tl2496925002%_)))
                                          (let ((_%hd2497125009%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2497025005%_)))
                                                (_%tl2497225012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2497025005%_))))
                                            ((lambda (_%g2496125015%_
                                                      _%g2496225017%_
                                                      _%g2496325018%_)
                                               (if (and (gx#identifier-list?
                                                         _%g2496225017%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%g2496125015%_))
                                                   (_%generate24956%_
                                                    _%g2496325018%_
                                                    _%g2496225017%_
                                                    _%g2496125015%_)
                                                   (_%g2495924978%_
                                                    _%g2496024982%_)))
                                             _%tl2497225012%_
                                             _%hd2497125009%_
                                             _%hd2496824999%_)))
                                        (_%g2495924978%_ _%g2496024982%_))))
                                (_%g2495924978%_ _%g2496024982%_))))
                        (_%g2495924978%_ _%g2496024982%_)))))
            (_%g2495825036%_ _%stx24953%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25105%_)
        (letrec ((_%wrap25108%_
                  (lambda (_%e-stx25454%_)
                    (gx#stx-wrap-source
                     _%e-stx25454%_
                     (gx#stx-source _%stx25105%_))))
                 (_%method-opt?25110%_
                  (lambda (_%x25451%_)
                    (let ((__tmp27318 (gx#stx-e _%x25451%_)))
                      (declare (not safe))
                      (##memq __tmp27318 '(rebind:))))))
          (let* ((_%g2511225141%_
                  (lambda (_%g2511325137%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2511325137%_)))
                 (_%g2511125447%_
                  (lambda (_%g2511325145%_)
                    (if (gx#stx-pair? _%g2511325145%_)
                        (let ((_%e2511825148%_ (gx#syntax-e _%g2511325145%_)))
                          (let ((_%hd2511925152%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2511825148%_)))
                                (_%tl2512025155%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2511825148%_))))
                            (if (gx#stx-pair? _%tl2512025155%_)
                                (let ((_%e2512125158%_
                                       (gx#syntax-e _%tl2512025155%_)))
                                  (let ((_%hd2512225162%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2512125158%_)))
                                        (_%tl2512325165%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2512125158%_))))
                                    (if (gx#stx-pair? _%hd2512225162%_)
                                        (let ((_%e2512425168%_
                                               (gx#syntax-e _%hd2512225162%_)))
                                          (let ((_%hd2512525172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2512425168%_)))
                                                (_%tl2512625175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2512425168%_))))
                                            (if (gx#identifier?
                                                 _%hd2512525172%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27319_|
                                                     _%hd2512525172%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2512625175%_)
                                                        (let ((_%e2512725178%_
                                                               (gx#syntax-e
                                                                _%tl2512625175%_)))
                                                          (let ((_%hd2512825182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2512725178%_)))
                        (_%tl2512925185%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2512725178%_))))
                    (if (gx#stx-pair? _%tl2512925185%_)
                        (let ((_%e2513025188%_ (gx#syntax-e _%tl2512925185%_)))
                          (let ((_%hd2513125192%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2513025188%_)))
                                (_%tl2513225195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2513025188%_))))
                            (if (gx#stx-null? _%tl2513225195%_)
                                (if (gx#stx-pair? _%tl2512325165%_)
                                    (let ((_%e2513325198%_
                                           (gx#syntax-e _%tl2512325165%_)))
                                      (let ((_%hd2513425202%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2513325198%_)))
                                            (_%tl2513525205%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2513325198%_))))
                                        ((lambda (_%g2511425208%_
                                                  _%g2511525210%_
                                                  _%g2511625211%_
                                                  _%g2511725212%_)
                                           (if (and (gx#identifier?
                                                     _%g2511725212%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%g2511625211%_))
                                                    (gx#stx-plist?
                                                     _%g2511425208%_
                                                     _%method-opt?25110%_))
                                               (let* ((_%klass25239%_
                                                       (gx#syntax-local-value
                                                        _%g2511625211%_))
                                                      (_%rebind?25242%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%g2511425208%_)))
                                                      (_%g2524525253%_
                                                       (lambda (_%g2524625249%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2524625249%_)))
                                                      (_%g2524425437%_
                                                       (lambda (_%g2524625257%_)
                                                         ((lambda (_%g2524725260%_)
                                                            (let* ((_%g2527525283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2527625279%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2527625279%_)))
                           (_%g2527425433%_
                            (lambda (_%g2527625287%_)
                              ((lambda (_%g2527725290%_)
                                 (let* ((_%g2530325311%_
                                         (lambda (_%g2530425307%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2530425307%_)))
                                        (_%g2530225429%_
                                         (lambda (_%g2530425315%_)
                                           ((lambda (_%g2530525318%_)
                                              (let* ((_%g2533125339%_
                                                      (lambda (_%g2533225335%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2533225335%_)))
                                                     (_%g2533025425%_
                                                      (lambda (_%g2533225343%_)
                                                        ((lambda (_%g2533325346%_)
                                                           (let* ((_%g2535925367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2536025363%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2536025363%_)))
                          (_%g2535825421%_
                           (lambda (_%g2536025371%_)
                             ((lambda (_%g2536125374%_)
                                (let* ((_%g2538725395%_
                                        (lambda (_%g2538825391%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2538825391%_)))
                                       (_%g2538625417%_
                                        (lambda (_%g2538825399%_)
                                          ((lambda (_%g2538925402%_)
                                             (_%wrap25108%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%g2533325346%_
                                                          (cons _%g2538925402%_
                                                                '())))))
                                           _%g2538825399%_))))
                                  (_%g2538625417%_
                                   (_%wrap25108%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%g2524725260%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2511725212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g2527725290%_ (cons _%g2536125374%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2536025371%_))))
                     (_%g2535825421%_ _%rebind?25242%_)))
                 _%g2533225343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2533025425%_
                                                 (_%wrap25108%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%g2527725290%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%g2530525318%_
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
                                                      (cons _%g2524725260%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2511725212%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%g2511525210%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2530425315%_))))
                                   (_%g2530225429%_
                                    (gx#stx-identifier
                                     _%g2511625211%_
                                     '@next-method))))
                               _%g2527625287%_))))
                      (_%g2527425433%_
                       (gx#stx-identifier
                        _%g2511625211%_
                        _%g2511625211%_
                        '"::"
                        _%g2511725212%_))))
                  _%g2524625257%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2524425437%_
                                                  (let ((__obj27072
                                                         _%klass25239%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27072
                                                           'gerbil.core#runtime-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27072
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#runtime-type-info::t
                                                         __obj27072
                                                         'type-descriptor)))))
                                               (if (gx#identifier?
                                                    _%g2511725212%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                          _%g2511625211%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25105%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; invalid class type"
                                                        _%stx25105%_
                                                        _%g2511625211%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25105%_
                                                    _%g2511725212%_))))
                                         _%tl2513525205%_
                                         _%hd2513425202%_
                                         _%hd2513125192%_
                                         _%hd2512825182%_)))
                                    (_%g2511225141%_ _%g2511325145%_))
                                (_%g2511225141%_ _%g2511325145%_))))
                        (_%g2511225141%_ _%g2511325145%_))))
                (_%g2511225141%_ _%g2511325145%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2511225141%_
                                                     _%g2511325145%_))
                                                (_%g2511225141%_
                                                 _%g2511325145%_))))
                                        (_%g2511225141%_ _%g2511325145%_))))
                                (_%g2511225141%_ _%g2511325145%_))))
                        (_%g2511225141%_ _%g2511325145%_)))))
            (_%g2511125447%_ _%stx25105%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25457%_)
        (letrec ((_%dotted-identifier?25460%_
                  (lambda (_%id26085%_)
                    (if (gx#identifier? _%id26085%_)
                        (let ((_%id-str26088%_
                               (symbol->string (gx#stx-e _%id26085%_))))
                          (if (string-index _%id-str26088%_ '#\.)
                              (let* ((_%split26091%_
                                      (string-split _%id-str26088%_ '#\.))
                                     (__tmp27320 (length _%split26091%_)))
                                (declare (not safe))
                                (##fx= __tmp27320 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25462%_
                  (lambda (_%id26074%_)
                    (let* ((_%id-str26077%_
                            (symbol->string (gx#stx-e _%id26074%_)))
                           (_%split26080%_
                            (string-split _%id-str26077%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26074%_
                             (car _%split26080%_))
                            (cons (gx#stx-identifier
                                   _%id26074%_
                                   (cadr _%split26080%_))
                                  '()))))))
          (let* ((_%__stx2681026811%_ _%stx25457%_)
                 (_%g2546725554%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2681026811%_))))
            (let ((_%__kont2681326814%_
                   (lambda (_%g2546925967%_ _%g2547025969%_ _%g2547125970%_)
                     (let* ((_%g2599826013%_
                             (lambda (_%g2599926009%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2599926009%_)))
                            (_%g2599726066%_
                             (lambda (_%g2599926017%_)
                               (if (gx#stx-pair? _%g2599926017%_)
                                   (let ((_%e2600226020%_
                                          (gx#syntax-e _%g2599926017%_)))
                                     (let ((_%hd2600326024%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2600226020%_)))
                                           (_%tl2600426027%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2600226020%_))))
                                       (if (gx#stx-pair? _%tl2600426027%_)
                                           (let ((_%e2600526030%_
                                                  (gx#syntax-e
                                                   _%tl2600426027%_)))
                                             (let ((_%hd2600626034%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2600526030%_)))
                                                   (_%tl2600726037%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2600526030%_))))
                                               (if (gx#stx-null?
                                                    _%tl2600726037%_)
                                                   ((lambda (_%g2600026040%_
                                                             _%g2600126042%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%g2600126042%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g2600026040%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2605726060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2605826063%_)
                   (cons _%g2605726060%_ _%g2605826063%_))
                 '()
                 _%g2547025969%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2600626034%_
                                                    _%hd2600326024%_)
                                                   (_%g2599826013%_
                                                    _%g2599926017%_))))
                                           (_%g2599826013%_ _%g2599926017%_))))
                                   (_%g2599826013%_ _%g2599926017%_)))))
                       (_%g2599726066%_
                        (_%split-dotted25462%_ _%g2547125970%_)))))
                  (_%__kont2681726818%_
                   (lambda (_%g2549025811%_ _%g2549125813%_)
                     (let* ((_%g2583025845%_
                             (lambda (_%g2583125841%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2583125841%_)))
                            (_%g2582925898%_
                             (lambda (_%g2583125849%_)
                               (if (gx#stx-pair? _%g2583125849%_)
                                   (let ((_%e2583425852%_
                                          (gx#syntax-e _%g2583125849%_)))
                                     (let ((_%hd2583525856%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2583425852%_)))
                                           (_%tl2583625859%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2583425852%_))))
                                       (if (gx#stx-pair? _%tl2583625859%_)
                                           (let ((_%e2583725862%_
                                                  (gx#syntax-e
                                                   _%tl2583625859%_)))
                                             (let ((_%hd2583825866%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2583725862%_)))
                                                   (_%tl2583925869%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2583725862%_))))
                                               (if (gx#stx-null?
                                                    _%tl2583925869%_)
                                                   ((lambda (_%g2583225872%_
                                                             _%g2583325874%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%g2583325874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2583225872%_ '()))
                                (foldr (lambda (_%g2588925892%_
                                                _%g2589025895%_)
                                         (cons _%g2588925892%_
                                               _%g2589025895%_))
                                       '()
                                       _%g2549025811%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2583825866%_
                                                    _%hd2583525856%_)
                                                   (_%g2583025845%_
                                                    _%g2583125849%_))))
                                           (_%g2583025845%_ _%g2583125849%_))))
                                   (_%g2583025845%_ _%g2583125849%_)))))
                       (_%g2582925898%_
                        (_%split-dotted25462%_ _%g2549125813%_)))))
                  (_%__kont2682126822%_
                   (lambda (_%g2550725717%_ _%g2550825719%_ _%g2550925720%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%g2550825719%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2550925720%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2574725750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2574825753%_)
                          (cons _%g2574725750%_ _%g2574825753%_))
                        '()
                        _%g2550725717%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2682526826%_
                   (lambda (_%g2552825619%_ _%g2552925621%_ _%g2553025622%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%g2552925621%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2553025622%_ '()))
                                       (foldr (lambda (_%g2564325646%_
                                                       _%g2564425649%_)
                                                (cons _%g2564325646%_
                                                      _%g2564425649%_))
                                              '()
                                              _%g2552825619%_)))))))
              (let* ((_%__match2692926930%_
                      (lambda (_%e2553125561%_
                               _%hd2553225565%_
                               _%tl2553325568%_
                               _%e2553425571%_
                               _%hd2553525575%_
                               _%tl2553625578%_
                               _%e2553725581%_
                               _%hd2553825585%_
                               _%tl2553925588%_
                               _%__splice2682726828%_
                               _%target2554025591%_
                               _%tl2554225594%_)
                        (letrec ((_%loop2554325597%_
                                  (lambda (_%hd2554125601%_ _%arg2554725604%_)
                                    (if (gx#stx-pair? _%hd2554125601%_)
                                        (let ((_%e2554425606%_
                                               (gx#syntax-e _%hd2554125601%_)))
                                          (let ((_%lp-tl2554625613%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2554425606%_)))
                                                (_%lp-hd2554525610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2554425606%_))))
                                            (_%loop2554325597%_
                                             _%lp-tl2554625613%_
                                             (cons _%lp-hd2554525610%_
                                                   _%arg2554725604%_))))
                                        (let ((_%arg2554825616%_
                                               (reverse _%arg2554725604%_)))
                                          (let ((_%g2552825619%_
                                                 _%arg2554825616%_)
                                                (_%g2552925621%_
                                                 _%hd2553825585%_)
                                                (_%g2553025622%_
                                                 _%hd2553525575%_))
                                            (if (gx#identifier?
                                                 _%g2553025622%_)
                                                (_%__kont2682526826%_
                                                 _%g2552825619%_
                                                 _%g2552925621%_
                                                 _%g2553025622%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2546725554%_)))))))))
                          (_%loop2554325597%_ _%target2554025591%_ '()))))
                     (_%__match2690326904%_
                      (lambda (_%e2551025659%_
                               _%hd2551125663%_
                               _%tl2551225666%_
                               _%e2551325669%_
                               _%hd2551425673%_
                               _%tl2551525676%_
                               _%e2551625679%_
                               _%hd2551725683%_
                               _%tl2551825686%_
                               _%__splice2682326824%_
                               _%target2551925689%_
                               _%tl2552125692%_)
                        (letrec ((_%loop2552225695%_
                                  (lambda (_%hd2552025699%_ _%arg2552625702%_)
                                    (if (gx#stx-pair? _%hd2552025699%_)
                                        (let ((_%e2552325704%_
                                               (gx#syntax-e _%hd2552025699%_)))
                                          (let ((_%lp-tl2552525711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2552325704%_)))
                                                (_%lp-hd2552425708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2552325704%_))))
                                            (_%loop2552225695%_
                                             _%lp-tl2552525711%_
                                             (cons _%lp-hd2552425708%_
                                                   _%arg2552625702%_))))
                                        (let ((_%arg2552725714%_
                                               (reverse _%arg2552625702%_)))
                                          (let ((_%g2550725717%_
                                                 _%arg2552725714%_)
                                                (_%g2550825719%_
                                                 _%hd2551725683%_)
                                                (_%g2550925720%_
                                                 _%hd2551425673%_))
                                            (if (and (gx#identifier?
                                                      _%g2550925720%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2573925742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2574025745%_)
                       (cons _%g2573925742%_ _%g2574025745%_))
                     '()
                     _%g2550725717%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2682126822%_
                                                 _%g2550725717%_
                                                 _%g2550825719%_
                                                 _%g2550925720%_)
                                                (_%__match2692926930%_
                                                 _%e2551025659%_
                                                 _%hd2551125663%_
                                                 _%tl2551225666%_
                                                 _%e2551325669%_
                                                 _%hd2551425673%_
                                                 _%tl2551525676%_
                                                 _%e2551625679%_
                                                 _%hd2551725683%_
                                                 _%tl2551825686%_
                                                 _%__splice2682326824%_
                                                 _%target2551925689%_
                                                 _%tl2552125692%_))))))))
                          (_%loop2552225695%_ _%target2551925689%_ '()))))
                     (_%__match2688926890%_
                      (lambda (_%e2551025659%_
                               _%hd2551125663%_
                               _%tl2551225666%_
                               _%e2551325669%_
                               _%hd2551425673%_
                               _%tl2551525676%_)
                        (if (gx#stx-pair? _%tl2551525676%_)
                            (let ((_%e2551625679%_
                                   (gx#syntax-e _%tl2551525676%_)))
                              (let ((_%tl2551825686%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2551625679%_)))
                                    (_%hd2551725683%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2551625679%_))))
                                (if (gx#stx-pair/null? _%tl2551825686%_)
                                    (let ((_%__splice2682326824%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2551825686%_
                                            '0)))
                                      (let ((_%tl2552125692%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2682326824%_
                                                '1)))
                                            (_%target2551925689%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2682326824%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2552125692%_)
                                            (_%__match2690326904%_
                                             _%e2551025659%_
                                             _%hd2551125663%_
                                             _%tl2551225666%_
                                             _%e2551325669%_
                                             _%hd2551425673%_
                                             _%tl2551525676%_
                                             _%e2551625679%_
                                             _%hd2551725683%_
                                             _%tl2551825686%_
                                             _%__splice2682326824%_
                                             _%target2551925689%_
                                             _%tl2552125692%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2546725554%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2546725554%_)))))
                            (let () (declare (not safe)) (_%g2546725554%_)))))
                     (_%__match2687726878%_
                      (lambda (_%e2549225763%_
                               _%hd2549325767%_
                               _%tl2549425770%_
                               _%e2549525773%_
                               _%hd2549625777%_
                               _%tl2549725780%_
                               _%__splice2681926820%_
                               _%target2549825783%_
                               _%tl2550025786%_)
                        (letrec ((_%loop2550125789%_
                                  (lambda (_%hd2549925793%_ _%arg2550525796%_)
                                    (if (gx#stx-pair? _%hd2549925793%_)
                                        (let ((_%e2550225798%_
                                               (gx#syntax-e _%hd2549925793%_)))
                                          (let ((_%lp-tl2550425805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2550225798%_)))
                                                (_%lp-hd2550325802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2550225798%_))))
                                            (_%loop2550125789%_
                                             _%lp-tl2550425805%_
                                             (cons _%lp-hd2550325802%_
                                                   _%arg2550525796%_))))
                                        (let ((_%arg2550625808%_
                                               (reverse _%arg2550525796%_)))
                                          (let ((_%g2549025811%_
                                                 _%arg2550625808%_)
                                                (_%g2549125813%_
                                                 _%hd2549625777%_))
                                            (if (_%dotted-identifier?25460%_
                                                 _%g2549125813%_)
                                                (_%__kont2681726818%_
                                                 _%g2549025811%_
                                                 _%g2549125813%_)
                                                (_%__match2688926890%_
                                                 _%e2549225763%_
                                                 _%hd2549325767%_
                                                 _%tl2549425770%_
                                                 _%e2549525773%_
                                                 _%hd2549625777%_
                                                 _%tl2549725780%_))))))))
                          (_%loop2550125789%_ _%target2549825783%_ '()))))
                     (_%__match2687526876%_
                      (lambda (_%e2549225763%_
                               _%hd2549325767%_
                               _%tl2549425770%_
                               _%e2549525773%_
                               _%hd2549625777%_
                               _%tl2549725780%_
                               _%__splice2681926820%_
                               _%target2549825783%_
                               _%tl2550025786%_)
                        (if (gx#stx-null? _%tl2550025786%_)
                            (_%__match2687726878%_
                             _%e2549225763%_
                             _%hd2549325767%_
                             _%tl2549425770%_
                             _%e2549525773%_
                             _%hd2549625777%_
                             _%tl2549725780%_
                             _%__splice2681926820%_
                             _%target2549825783%_
                             _%tl2550025786%_)
                            (if (gx#stx-pair? _%tl2549725780%_)
                                (let ((_%e2551625679%_
                                       (gx#syntax-e _%tl2549725780%_)))
                                  (let ((_%tl2551825686%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2551625679%_)))
                                        (_%hd2551725683%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2551625679%_))))
                                    (if (gx#stx-pair/null? _%tl2551825686%_)
                                        (let ((_%__splice2682326824%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2551825686%_
                                                '0)))
                                          (let ((_%tl2552125692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2682326824%_
                                                    '1)))
                                                (_%target2551925689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2682326824%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2552125692%_)
                                                (_%__match2690326904%_
                                                 _%e2549225763%_
                                                 _%hd2549325767%_
                                                 _%tl2549425770%_
                                                 _%e2549525773%_
                                                 _%hd2549625777%_
                                                 _%tl2549725780%_
                                                 _%e2551625679%_
                                                 _%hd2551725683%_
                                                 _%tl2551825686%_
                                                 _%__splice2682326824%_
                                                 _%target2551925689%_
                                                 _%tl2552125692%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2546725554%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2546725554%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2546725554%_))))))
                     (_%__match2685726858%_
                      (lambda (_%e2547225909%_
                               _%hd2547325913%_
                               _%tl2547425916%_
                               _%e2547525919%_
                               _%hd2547625923%_
                               _%tl2547725926%_
                               _%__splice2681526816%_
                               _%target2547825929%_
                               _%tl2548025932%_
                               _%e2548725935%_
                               _%hd2548825939%_
                               _%tl2548925942%_)
                        (letrec ((_%loop2548125945%_
                                  (lambda (_%hd2547925949%_ _%arg2548525952%_)
                                    (if (gx#stx-pair? _%hd2547925949%_)
                                        (let ((_%e2548225954%_
                                               (gx#syntax-e _%hd2547925949%_)))
                                          (let ((_%lp-tl2548425961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2548225954%_)))
                                                (_%lp-hd2548325958%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2548225954%_))))
                                            (_%loop2548125945%_
                                             _%lp-tl2548425961%_
                                             (cons _%lp-hd2548325958%_
                                                   _%arg2548525952%_))))
                                        (let ((_%arg2548625964%_
                                               (reverse _%arg2548525952%_)))
                                          (let ((_%g2546925967%_
                                                 _%hd2548825939%_)
                                                (_%g2547025969%_
                                                 _%arg2548625964%_)
                                                (_%g2547125970%_
                                                 _%hd2547625923%_))
                                            (if (and (_%dotted-identifier?25460%_
                                                      _%g2547125970%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2598925992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2599025995%_)
                       (cons _%g2598925992%_ _%g2599025995%_))
                     '()
                     _%g2547025969%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2681326814%_
                                                 _%g2546925967%_
                                                 _%g2547025969%_
                                                 _%g2547125970%_)
                                                (let ((_%__splice2681926820%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2547725926%_
                                                        '0)))
                                                  (let ((_%tl2550025786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2681926820%_
                                                            '1)))
                                                        (_%target2549825783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2681926820%_
                                                            '0))))
                                                    (_%__match2687526876%_
                                                     _%e2547225909%_
                                                     _%hd2547325913%_
                                                     _%tl2547425916%_
                                                     _%e2547525919%_
                                                     _%hd2547625923%_
                                                     _%tl2547725926%_
                                                     _%__splice2681926820%_
                                                     _%target2549825783%_
                                                     _%tl2550025786%_))))))))))
                          (_%loop2548125945%_ _%target2547825929%_ '())))))
                (if (gx#stx-pair? _%__stx2681026811%_)
                    (let ((_%e2547225909%_ (gx#syntax-e _%__stx2681026811%_)))
                      (let ((_%tl2547425916%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2547225909%_)))
                            (_%hd2547325913%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2547225909%_))))
                        (if (gx#stx-pair? _%tl2547425916%_)
                            (let ((_%e2547525919%_
                                   (gx#syntax-e _%tl2547425916%_)))
                              (let ((_%tl2547725926%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2547525919%_)))
                                    (_%hd2547625923%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2547525919%_))))
                                (if (gx#stx-pair/null? _%tl2547725926%_)
                                    (if (let ((__tmp27321
                                               (gx#stx-length
                                                _%tl2547725926%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27321 '1))
                                        (let ((_%__splice2681526816%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2547725926%_
                                                '1)))
                                          (let ((_%tl2548025932%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2681526816%_
                                                    '1)))
                                                (_%target2547825929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2681526816%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2548025932%_)
                                                (let ((_%e2548725935%_
                                                       (gx#syntax-e
                                                        _%tl2548025932%_)))
                                                  (let ((_%tl2548925942%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2548725935%_)))
                                                        (_%hd2548825939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2548725935%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2548925942%_)
                                                        (_%__match2685726858%_
                                                         _%e2547225909%_
                                                         _%hd2547325913%_
                                                         _%tl2547425916%_
                                                         _%e2547525919%_
                                                         _%hd2547625923%_
                                                         _%tl2547725926%_
                                                         _%__splice2681526816%_
                                                         _%target2547825929%_
                                                         _%tl2548025932%_
                                                         _%e2548725935%_
                                                         _%hd2548825939%_
                                                         _%tl2548925942%_)
                                                        (let ((_%__splice2681926820%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl2547725926%_
                                                                '0)))
                                                          (let ((_%tl2550025786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2681926820%_ '1)))
                        (_%target2549825783%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2681926820%_ '0))))
                    (if (gx#stx-null? _%tl2550025786%_)
                        (_%__match2687726878%_
                         _%e2547225909%_
                         _%hd2547325913%_
                         _%tl2547425916%_
                         _%e2547525919%_
                         _%hd2547625923%_
                         _%tl2547725926%_
                         _%__splice2681926820%_
                         _%target2549825783%_
                         _%tl2550025786%_)
                        (if (gx#stx-pair? _%tl2547725926%_)
                            (let ((_%e2551625679%_
                                   (gx#syntax-e _%tl2547725926%_)))
                              (let ((_%tl2551825686%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2551625679%_)))
                                    (_%hd2551725683%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2551625679%_))))
                                (if (gx#stx-pair/null? _%tl2551825686%_)
                                    (let ((_%__splice2682326824%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2551825686%_
                                            '0)))
                                      (let ((_%tl2552125692%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2682326824%_
                                                '1)))
                                            (_%target2551925689%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2682326824%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2552125692%_)
                                            (_%__match2690326904%_
                                             _%e2547225909%_
                                             _%hd2547325913%_
                                             _%tl2547425916%_
                                             _%e2547525919%_
                                             _%hd2547625923%_
                                             _%tl2547725926%_
                                             _%e2551625679%_
                                             _%hd2551725683%_
                                             _%tl2551825686%_
                                             _%__splice2682326824%_
                                             _%target2551925689%_
                                             _%tl2552125692%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2546725554%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2546725554%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2546725554%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2681926820%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2547725926%_
                                                        '0)))
                                                  (let ((_%tl2550025786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2681926820%_
                                                            '1)))
                                                        (_%target2549825783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2681926820%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2550025786%_)
                                                        (_%__match2687726878%_
                                                         _%e2547225909%_
                                                         _%hd2547325913%_
                                                         _%tl2547425916%_
                                                         _%e2547525919%_
                                                         _%hd2547625923%_
                                                         _%tl2547725926%_
                                                         _%__splice2681926820%_
                                                         _%target2549825783%_
                                                         _%tl2550025786%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2547725926%_)
                                                            (let ((_%e2551625679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2547725926%_)))
                      (let ((_%tl2551825686%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2551625679%_)))
                            (_%hd2551725683%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2551625679%_))))
                        (if (gx#stx-pair/null? _%tl2551825686%_)
                            (let ((_%__splice2682326824%_
                                   (gx#syntax-split-splice->vector
                                    _%tl2551825686%_
                                    '0)))
                              (let ((_%tl2552125692%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2682326824%_
                                        '1)))
                                    (_%target2551925689%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2682326824%_
                                        '0))))
                                (if (gx#stx-null? _%tl2552125692%_)
                                    (_%__match2690326904%_
                                     _%e2547225909%_
                                     _%hd2547325913%_
                                     _%tl2547425916%_
                                     _%e2547525919%_
                                     _%hd2547625923%_
                                     _%tl2547725926%_
                                     _%e2551625679%_
                                     _%hd2551725683%_
                                     _%tl2551825686%_
                                     _%__splice2682326824%_
                                     _%target2551925689%_
                                     _%tl2552125692%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2546725554%_)))))
                            (let () (declare (not safe)) (_%g2546725554%_)))))
                    (let () (declare (not safe)) (_%g2546725554%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2681926820%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2547725926%_
                                                '0)))
                                          (let ((_%tl2550025786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2681926820%_
                                                    '1)))
                                                (_%target2549825783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2681926820%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2550025786%_)
                                                (_%__match2687726878%_
                                                 _%e2547225909%_
                                                 _%hd2547325913%_
                                                 _%tl2547425916%_
                                                 _%e2547525919%_
                                                 _%hd2547625923%_
                                                 _%tl2547725926%_
                                                 _%__splice2681926820%_
                                                 _%target2549825783%_
                                                 _%tl2550025786%_)
                                                (if (gx#stx-pair?
                                                     _%tl2547725926%_)
                                                    (let ((_%e2551625679%_
                                                           (gx#syntax-e
                                                            _%tl2547725926%_)))
                                                      (let ((_%tl2551825686%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2551625679%_)))
                    (_%hd2551725683%_
                     (let () (declare (not safe)) (##car _%e2551625679%_))))
                (if (gx#stx-pair/null? _%tl2551825686%_)
                    (let ((_%__splice2682326824%_
                           (gx#syntax-split-splice->vector
                            _%tl2551825686%_
                            '0)))
                      (let ((_%tl2552125692%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2682326824%_ '1)))
                            (_%target2551925689%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2682326824%_ '0))))
                        (if (gx#stx-null? _%tl2552125692%_)
                            (_%__match2690326904%_
                             _%e2547225909%_
                             _%hd2547325913%_
                             _%tl2547425916%_
                             _%e2547525919%_
                             _%hd2547625923%_
                             _%tl2547725926%_
                             _%e2551625679%_
                             _%hd2551725683%_
                             _%tl2551825686%_
                             _%__splice2682326824%_
                             _%target2551925689%_
                             _%tl2552125692%_)
                            (let () (declare (not safe)) (_%g2546725554%_)))))
                    (let () (declare (not safe)) (_%g2546725554%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2546725554%_)))))))
                                    (if (gx#stx-pair? _%tl2547725926%_)
                                        (let ((_%e2551625679%_
                                               (gx#syntax-e _%tl2547725926%_)))
                                          (let ((_%tl2551825686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2551625679%_)))
                                                (_%hd2551725683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2551625679%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2551825686%_)
                                                (let ((_%__splice2682326824%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2551825686%_
                                                        '0)))
                                                  (let ((_%tl2552125692%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2682326824%_
                                                            '1)))
                                                        (_%target2551925689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2682326824%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2552125692%_)
                                                        (_%__match2690326904%_
                                                         _%e2547225909%_
                                                         _%hd2547325913%_
                                                         _%tl2547425916%_
                                                         _%e2547525919%_
                                                         _%hd2547625923%_
                                                         _%tl2547725926%_
                                                         _%e2551625679%_
                                                         _%hd2551725683%_
                                                         _%tl2551825686%_
                                                         _%__splice2682326824%_
                                                         _%target2551925689%_
                                                         _%tl2552125692%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2546725554%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2546725554%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2546725554%_))))))
                            (let () (declare (not safe)) (_%g2546725554%_)))))
                    (let () (declare (not safe)) (_%g2546725554%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26098%_)
        (let* ((_%__stx2693226933%_ _%$stx26098%_)
               (_%g2610326143%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2693226933%_))))
          (let ((_%__kont2693526936%_
                 (lambda (_%g2610526279%_ _%g2610626281%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%g2610626281%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2610526279%_ '()))
                                     '())))))
                (_%__kont2693726938%_
                 (lambda (_%g2611626208%_
                          _%g2611726210%_
                          _%g2611826211%_
                          _%g2611926212%_)
                   (cons _%g2611926212%_
                         (cons (cons _%g2611926212%_
                                     (cons _%g2611826211%_
                                           (cons _%g2611726210%_ '())))
                               (foldr (lambda (_%g2623326236%_ _%g2623426239%_)
                                        (cons _%g2623326236%_ _%g2623426239%_))
                                      '()
                                      _%g2611626208%_))))))
            (let* ((_%__match2698726988%_
                    (lambda (_%e2612026150%_
                             _%hd2612126154%_
                             _%tl2612226157%_
                             _%e2612326160%_
                             _%hd2612426164%_
                             _%tl2612526167%_
                             _%e2612626170%_
                             _%hd2612726174%_
                             _%tl2612826177%_
                             _%__splice2693926940%_
                             _%target2612926180%_
                             _%tl2613126183%_)
                      (letrec ((_%loop2613226186%_
                                (lambda (_%hd2613026190%_ _%rest2613626193%_)
                                  (if (gx#stx-pair? _%hd2613026190%_)
                                      (let ((_%e2613326195%_
                                             (gx#syntax-e _%hd2613026190%_)))
                                        (let ((_%lp-tl2613526202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2613326195%_)))
                                              (_%lp-hd2613426199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2613326195%_))))
                                          (_%loop2613226186%_
                                           _%lp-tl2613526202%_
                                           (cons _%lp-hd2613426199%_
                                                 _%rest2613626193%_))))
                                      (let ((_%rest2613726205%_
                                             (reverse _%rest2613626193%_)))
                                        (_%__kont2693726938%_
                                         _%rest2613726205%_
                                         _%hd2612726174%_
                                         _%hd2612426164%_
                                         _%hd2612126154%_))))))
                        (_%loop2613226186%_ _%target2612926180%_ '()))))
                   (_%__match2696126962%_
                    (lambda (_%e2610726249%_
                             _%hd2610826253%_
                             _%tl2610926256%_
                             _%e2611026259%_
                             _%hd2611126263%_
                             _%tl2611226266%_
                             _%e2611326269%_
                             _%hd2611426273%_
                             _%tl2611526276%_)
                      (let ((_%g2610526279%_ _%hd2611426273%_)
                            (_%g2610626281%_ _%hd2611126263%_))
                        (if (gx#identifier? _%g2610526279%_)
                            (_%__kont2693526936%_
                             _%g2610526279%_
                             _%g2610626281%_)
                            (if (gx#stx-pair/null? _%tl2611526276%_)
                                (let ((_%__splice2693926940%_
                                       (gx#syntax-split-splice->vector
                                        _%tl2611526276%_
                                        '0)))
                                  (let ((_%tl2613126183%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2693926940%_
                                            '1)))
                                        (_%target2612926180%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2693926940%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2613126183%_)
                                        (_%__match2698726988%_
                                         _%e2610726249%_
                                         _%hd2610826253%_
                                         _%tl2610926256%_
                                         _%e2611026259%_
                                         _%hd2611126263%_
                                         _%tl2611226266%_
                                         _%e2611326269%_
                                         _%hd2611426273%_
                                         _%tl2611526276%_
                                         _%__splice2693926940%_
                                         _%target2612926180%_
                                         _%tl2613126183%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2610326143%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2610326143%_))))))))
              (if (gx#stx-pair? _%__stx2693226933%_)
                  (let ((_%e2610726249%_ (gx#syntax-e _%__stx2693226933%_)))
                    (let ((_%tl2610926256%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2610726249%_)))
                          (_%hd2610826253%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2610726249%_))))
                      (if (gx#stx-pair? _%tl2610926256%_)
                          (let ((_%e2611026259%_
                                 (gx#syntax-e _%tl2610926256%_)))
                            (let ((_%tl2611226266%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2611026259%_)))
                                  (_%hd2611126263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2611026259%_))))
                              (if (gx#stx-pair? _%tl2611226266%_)
                                  (let ((_%e2611326269%_
                                         (gx#syntax-e _%tl2611226266%_)))
                                    (let ((_%tl2611526276%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2611326269%_)))
                                          (_%hd2611426273%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2611326269%_))))
                                      (if (gx#stx-null? _%tl2611526276%_)
                                          (_%__match2696126962%_
                                           _%e2610726249%_
                                           _%hd2610826253%_
                                           _%tl2610926256%_
                                           _%e2611026259%_
                                           _%hd2611126263%_
                                           _%tl2611226266%_
                                           _%e2611326269%_
                                           _%hd2611426273%_
                                           _%tl2611526276%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2611526276%_)
                                              (let ((_%__splice2693926940%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl2611526276%_
                                                      '0)))
                                                (let ((_%tl2613126183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2693926940%_
                                                          '1)))
                                                      (_%target2612926180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2693926940%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2613126183%_)
                                                      (_%__match2698726988%_
                                                       _%e2610726249%_
                                                       _%hd2610826253%_
                                                       _%tl2610926256%_
                                                       _%e2611026259%_
                                                       _%hd2611126263%_
                                                       _%tl2611226266%_
                                                       _%e2611326269%_
                                                       _%hd2611426273%_
                                                       _%tl2611526276%_
                                                       _%__splice2693926940%_
                                                       _%target2612926180%_
                                                       _%tl2613126183%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2610326143%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2610326143%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2610326143%_)))))
                          (let () (declare (not safe)) (_%g2610326143%_)))))
                  (let () (declare (not safe)) (_%g2610326143%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26301%_)
        (let* ((_%__stx2699026991%_ _%$stx26301%_)
               (_%g2630626358%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2699026991%_))))
          (let ((_%__kont2699326994%_
                 (lambda (_%g2630826532%_ _%g2630926534%_ _%g2631026535%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%g2631026535%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2630926534%_ '()))
                                     (cons _%g2630826532%_ '()))))))
                (_%__kont2699526996%_
                 (lambda (_%g2632326443%_
                          _%g2632426445%_
                          _%g2632526446%_
                          _%g2632626447%_
                          _%g2632726448%_
                          _%g2632826449%_)
                   (cons _%g2632826449%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%g2632726448%_
                                           (cons _%g2632626447%_
                                                 (foldr (lambda (_%g2647626479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2647726482%_)
                  (cons _%g2647626479%_ _%g2647726482%_))
                '()
                _%g2632526446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g2632426445%_
                                     (cons _%g2632326443%_ '())))))))
            (let* ((_%__match2706527066%_
                    (lambda (_%e2632926365%_
                             _%hd2633026369%_
                             _%tl2633126372%_
                             _%e2633226375%_
                             _%hd2633326379%_
                             _%tl2633426382%_
                             _%e2633526385%_
                             _%hd2633626389%_
                             _%tl2633726392%_
                             _%__splice2699726998%_
                             _%target2633826395%_
                             _%tl2634026398%_
                             _%e2634726401%_
                             _%hd2634826405%_
                             _%tl2634926408%_
                             _%e2635026411%_
                             _%hd2635126415%_
                             _%tl2635226418%_)
                      (letrec ((_%loop2634126421%_
                                (lambda (_%hd2633926425%_ _%path2634526428%_)
                                  (if (gx#stx-pair? _%hd2633926425%_)
                                      (let ((_%e2634226430%_
                                             (gx#syntax-e _%hd2633926425%_)))
                                        (let ((_%lp-tl2634426437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2634226430%_)))
                                              (_%lp-hd2634326434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2634226430%_))))
                                          (_%loop2634126421%_
                                           _%lp-tl2634426437%_
                                           (cons _%lp-hd2634326434%_
                                                 _%path2634526428%_))))
                                      (let ((_%path2634626440%_
                                             (reverse _%path2634526428%_)))
                                        (_%__kont2699526996%_
                                         _%hd2635126415%_
                                         _%hd2634826405%_
                                         _%path2634626440%_
                                         _%hd2633626389%_
                                         _%hd2633326379%_
                                         _%hd2633026369%_))))))
                        (_%loop2634126421%_ _%target2633826395%_ '()))))
                   (_%__match2702527026%_
                    (lambda (_%e2631126492%_
                             _%hd2631226496%_
                             _%tl2631326499%_
                             _%e2631426502%_
                             _%hd2631526506%_
                             _%tl2631626509%_
                             _%e2631726512%_
                             _%hd2631826516%_
                             _%tl2631926519%_
                             _%e2632026522%_
                             _%hd2632126526%_
                             _%tl2632226529%_)
                      (let ((_%g2630826532%_ _%hd2632126526%_)
                            (_%g2630926534%_ _%hd2631826516%_)
                            (_%g2631026535%_ _%hd2631526506%_))
                        (if (gx#identifier? _%g2630926534%_)
                            (_%__kont2699326994%_
                             _%g2630826532%_
                             _%g2630926534%_
                             _%g2631026535%_)
                            (if (gx#stx-pair/null? _%tl2631926519%_)
                                (if (let ((__tmp27322
                                           (gx#stx-length _%tl2631926519%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27322 '2))
                                    (let ((_%__splice2699726998%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2631926519%_
                                            '2)))
                                      (let ((_%tl2634026398%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2699726998%_
                                                '1)))
                                            (_%target2633826395%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2699726998%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2634026398%_)
                                            (let ((_%e2634726401%_
                                                   (gx#syntax-e
                                                    _%tl2634026398%_)))
                                              (let ((_%tl2634926408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2634726401%_)))
                                                    (_%hd2634826405%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2634726401%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2634926408%_)
                                                    (let ((_%e2635026411%_
                                                           (gx#syntax-e
                                                            _%tl2634926408%_)))
                                                      (let ((_%tl2635226418%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2635026411%_)))
                    (_%hd2635126415%_
                     (let () (declare (not safe)) (##car _%e2635026411%_))))
                (if (gx#stx-null? _%tl2635226418%_)
                    (_%__match2706527066%_
                     _%e2631126492%_
                     _%hd2631226496%_
                     _%tl2631326499%_
                     _%e2631426502%_
                     _%hd2631526506%_
                     _%tl2631626509%_
                     _%e2631726512%_
                     _%hd2631826516%_
                     _%tl2631926519%_
                     _%__splice2699726998%_
                     _%target2633826395%_
                     _%tl2634026398%_
                     _%e2634726401%_
                     _%hd2634826405%_
                     _%tl2634926408%_
                     _%e2635026411%_
                     _%hd2635126415%_
                     _%tl2635226418%_)
                    (let () (declare (not safe)) (_%g2630626358%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2630626358%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2630626358%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2630626358%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2630626358%_))))))))
              (if (gx#stx-pair? _%__stx2699026991%_)
                  (let ((_%e2631126492%_ (gx#syntax-e _%__stx2699026991%_)))
                    (let ((_%tl2631326499%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2631126492%_)))
                          (_%hd2631226496%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2631126492%_))))
                      (if (gx#stx-pair? _%tl2631326499%_)
                          (let ((_%e2631426502%_
                                 (gx#syntax-e _%tl2631326499%_)))
                            (let ((_%tl2631626509%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2631426502%_)))
                                  (_%hd2631526506%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2631426502%_))))
                              (if (gx#stx-pair? _%tl2631626509%_)
                                  (let ((_%e2631726512%_
                                         (gx#syntax-e _%tl2631626509%_)))
                                    (let ((_%tl2631926519%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2631726512%_)))
                                          (_%hd2631826516%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2631726512%_))))
                                      (if (gx#stx-pair? _%tl2631926519%_)
                                          (let ((_%e2632026522%_
                                                 (gx#syntax-e
                                                  _%tl2631926519%_)))
                                            (let ((_%tl2632226529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2632026522%_)))
                                                  (_%hd2632126526%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2632026522%_))))
                                              (if (gx#stx-null?
                                                   _%tl2632226529%_)
                                                  (_%__match2702527026%_
                                                   _%e2631126492%_
                                                   _%hd2631226496%_
                                                   _%tl2631326499%_
                                                   _%e2631426502%_
                                                   _%hd2631526506%_
                                                   _%tl2631626509%_
                                                   _%e2631726512%_
                                                   _%hd2631826516%_
                                                   _%tl2631926519%_
                                                   _%e2632026522%_
                                                   _%hd2632126526%_
                                                   _%tl2632226529%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2631926519%_)
                                                      (if (let ((__tmp27323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2631926519%_)))
                    (declare (not safe))
                    (##fx>= __tmp27323 '2))
                  (let ((_%__splice2699726998%_
                         (gx#syntax-split-splice->vector _%tl2631926519%_ '2)))
                    (let ((_%tl2634026398%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2699726998%_ '1)))
                          (_%target2633826395%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2699726998%_ '0))))
                      (if (gx#stx-pair? _%tl2634026398%_)
                          (let ((_%e2634726401%_
                                 (gx#syntax-e _%tl2634026398%_)))
                            (let ((_%tl2634926408%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2634726401%_)))
                                  (_%hd2634826405%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2634726401%_))))
                              (if (gx#stx-pair? _%tl2634926408%_)
                                  (let ((_%e2635026411%_
                                         (gx#syntax-e _%tl2634926408%_)))
                                    (let ((_%tl2635226418%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2635026411%_)))
                                          (_%hd2635126415%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2635026411%_))))
                                      (if (gx#stx-null? _%tl2635226418%_)
                                          (_%__match2706527066%_
                                           _%e2631126492%_
                                           _%hd2631226496%_
                                           _%tl2631326499%_
                                           _%e2631426502%_
                                           _%hd2631526506%_
                                           _%tl2631626509%_
                                           _%e2631726512%_
                                           _%hd2631826516%_
                                           _%tl2631926519%_
                                           _%__splice2699726998%_
                                           _%target2633826395%_
                                           _%tl2634026398%_
                                           _%e2634726401%_
                                           _%hd2634826405%_
                                           _%tl2634926408%_
                                           _%e2635026411%_
                                           _%hd2635126415%_
                                           _%tl2635226418%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2630626358%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2630626358%_)))))
                          (let () (declare (not safe)) (_%g2630626358%_)))))
                  (let () (declare (not safe)) (_%g2630626358%_)))
              (let () (declare (not safe)) (_%g2630626358%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2631926519%_)
                                              (if (let ((__tmp27324
                                                         (gx#stx-length
                                                          _%tl2631926519%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27324 '2))
                                                  (let ((_%__splice2699726998%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl2631926519%_
                                                          '2)))
                                                    (let ((_%tl2634026398%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2699726998%_
                                                              '1)))
                                                          (_%target2633826395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2699726998%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2634026398%_)
                                                          (let ((_%e2634726401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2634026398%_)))
                    (let ((_%tl2634926408%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2634726401%_)))
                          (_%hd2634826405%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2634726401%_))))
                      (if (gx#stx-pair? _%tl2634926408%_)
                          (let ((_%e2635026411%_
                                 (gx#syntax-e _%tl2634926408%_)))
                            (let ((_%tl2635226418%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2635026411%_)))
                                  (_%hd2635126415%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2635026411%_))))
                              (if (gx#stx-null? _%tl2635226418%_)
                                  (_%__match2706527066%_
                                   _%e2631126492%_
                                   _%hd2631226496%_
                                   _%tl2631326499%_
                                   _%e2631426502%_
                                   _%hd2631526506%_
                                   _%tl2631626509%_
                                   _%e2631726512%_
                                   _%hd2631826516%_
                                   _%tl2631926519%_
                                   _%__splice2699726998%_
                                   _%target2633826395%_
                                   _%tl2634026398%_
                                   _%e2634726401%_
                                   _%hd2634826405%_
                                   _%tl2634926408%_
                                   _%e2635026411%_
                                   _%hd2635126415%_
                                   _%tl2635226418%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2630626358%_)))))
                          (let () (declare (not safe)) (_%g2630626358%_)))))
                  (let () (declare (not safe)) (_%g2630626358%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2630626358%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2630626358%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2630626358%_)))))
                          (let () (declare (not safe)) (_%g2630626358%_)))))
                  (let () (declare (not safe)) (_%g2630626358%_))))))))))
