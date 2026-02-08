(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27376_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24905%_)
        (letrec ((_%body-opt?24908%_
                  (lambda (_%key24911%_)
                    (let ((__tmp27348 (gx#stx-e _%key24911%_)))
                      (declare (not safe))
                      (##memq __tmp27348
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
          (gx#stx-plist? _%stx24905%_ _%body-opt?24908%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22693%_
               _%id22695%_
               _%super-ref22696%_
               _%slots22697%_
               _%body22698%_)
        (letrec ((_%wrap22700%_
                  (lambda (_%e-stx24902%_)
                    (gx#stx-wrap-source
                     _%e-stx24902%_
                     (gx#stx-source _%stx22693%_))))
                 (_%make-id22702%_
                  (lambda _%args24899%_
                    (apply gx#stx-identifier _%id22695%_ _%args24899%_)))
                 (_%get-mixin-slots22703%_
                  (lambda (_%super24869%_ _%slots24871%_)
                    (letrec* ((_%tab24873%_ (make-hash-table-eq))
                              (_%dedup24875%_
                               (lambda (_%mixins24886%_)
                                 (let _%lp24889%_ ((_%rest24892%_
                                                    _%mixins24886%_)
                                                   (_%r24894%_ '()))
                                   (if (pair? _%rest24892%_)
                                       (let ((_%slot24896%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24892%_))))
                                         (if (hash-get
                                              _%tab24873%_
                                              _%slot24896%_)
                                             (_%lp24889%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24892%_))
                                              _%r24894%_)
                                             (begin
                                               (hash-put!
                                                _%tab24873%_
                                                _%slot24896%_
                                                '#t)
                                               (_%lp24889%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24892%_))
                                                (cons _%slot24896%_
                                                      _%r24894%_)))))
                                       (reverse _%r24894%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24877%_)
                         (hash-put! _%tab24873%_ (gx#stx-e _%slot24877%_) '#t))
                       _%slots24871%_)
                      (if (not _%super24869%_)
                          '()
                          (if (gx#identifier? _%super24869%_)
                              (_%dedup24875%_
                               (_%get-mixin-slots-r22704%_ _%super24869%_))
                              (_%dedup24875%_
                               (concatenate
                                (map _%get-mixin-slots-r22704%_
                                     _%super24869%_))))))))
                 (_%get-mixin-slots-r22704%_
                  (lambda (_%type-id24863%_)
                    (let ((_%info24866%_
                           (gx#syntax-local-value _%type-id24863%_)))
                      (let ((__tmp27350
                             (let ((__obj27127 _%info24866%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27127
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27127
                                      '5
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27127
                                    'slots))))
                            (__tmp27349
                             (concatenate
                              (map _%get-mixin-slots-r22704%_
                                   (let ((__obj27128 _%info24866%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27128
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27128
                                            '4
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27128
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27350 __tmp27349))))))
          (gx#check-duplicate-identifiers _%slots22697%_ _%stx22693%_)
          (let* ((_%name22706%_ (symbol->string (gx#stx-e _%id22695%_)))
                 (_%super22709%_
                  (map gx#syntax-local-value _%super-ref22696%_))
                 (_%struct?22712%_ (gx#stx-getq 'struct: _%body22698%_))
                 (_%g2271522723%_
                  (lambda (_%g2271622719%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2271622719%_)))
                 (_%g2271424859%_
                  (lambda (_%g2271622727%_)
                    ((lambda (_%g2271722730%_)
                       (let* ((_%g2274622754%_
                               (lambda (_%g2274722750%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2274722750%_)))
                              (_%g2274524855%_
                               (lambda (_%g2274722758%_)
                                 ((lambda (_%g2274822761%_)
                                    (let* ((_%g2277422782%_
                                            (lambda (_%g2277522778%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2277522778%_)))
                                           (_%g2277324851%_
                                            (lambda (_%g2277522786%_)
                                              ((lambda (_%g2277622789%_)
                                                 (let* ((_%g2280222810%_
                                                         (lambda (_%g2280322806%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2280322806%_)))
                                                        (_%g2280124847%_
                                                         (lambda (_%g2280322814%_)
                                                           ((lambda (_%g2280422817%_)
                                                              (let* ((_%g2283022838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2283122834%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2283122834%_)))
                             (_%g2282924843%_
                              (lambda (_%g2283122842%_)
                                ((lambda (_%g2283222845%_)
                                   (let* ((_%g2285822875%_
                                           (lambda (_%g2285922871%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2285922871%_)))
                                          (_%g2285724839%_
                                           (lambda (_%g2285922879%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2285922879%_)
                                                 (let ((_g27351_
                                                        (gx#syntax-split-splice
                                                         _%g2285922879%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27352_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27351_)
                          (##values-length _g27351_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27352_ 2)))
                   (error "Context expects 2 values" _g27352_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2286122882%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27351_
                                                               0)))
                                                           (_%tl2286322885%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27351_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2286322885%_)
                                                           (letrec ((_%loop2286422888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2286222892%_ _%slot2286822895%_)
                               (if (gx#stx-pair? _%hd2286222892%_)
                                   (let ((_%e2286522897%_
                                          (gx#syntax-e _%hd2286222892%_)))
                                     (let ((_%lp-hd2286622901%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2286522897%_)))
                                           (_%lp-tl2286722904%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2286522897%_))))
                                       (_%loop2286422888%_
                                        _%lp-tl2286722904%_
                                        (cons _%lp-hd2286622901%_
                                              _%slot2286822895%_))))
                                   (let ((_%slot2286922907%_
                                          (reverse _%slot2286822895%_)))
                                     ((lambda (_%g2286022910%_)
                                        (let* ((_%g2292722944%_
                                                (lambda (_%g2292822940%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2292822940%_)))
                                               (_%g2292624830%_
                                                (lambda (_%g2292822948%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2292822948%_)
                                                      (let ((_g27353_
                                                             (gx#syntax-split-splice
                                                              _%g2292822948%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27353_)
                               (##values-length _g27353_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27354_ 2)))
                        (error "Context expects 2 values" _g27354_)))
                  (let ((_%target2293022951%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27353_ 0)))
                        (_%tl2293222954%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27353_ 1))))
                    (if (gx#stx-null? _%tl2293222954%_)
                        (letrec ((_%loop2293322957%_
                                  (lambda (_%hd2293122961%_ _%getf2293722964%_)
                                    (if (gx#stx-pair? _%hd2293122961%_)
                                        (let ((_%e2293422966%_
                                               (gx#syntax-e _%hd2293122961%_)))
                                          (let ((_%lp-hd2293522970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2293422966%_)))
                                                (_%lp-tl2293622973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2293422966%_))))
                                            (_%loop2293322957%_
                                             _%lp-tl2293622973%_
                                             (cons _%lp-hd2293522970%_
                                                   _%getf2293722964%_))))
                                        (let ((_%getf2293822976%_
                                               (reverse _%getf2293722964%_)))
                                          ((lambda (_%g2292922979%_)
                                             (let* ((_%g2299623013%_
                                                     (lambda (_%g2299723009%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2299723009%_)))
                                                    (_%g2299524821%_
                                                     (lambda (_%g2299723017%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2299723017%_)
                                                           (let ((_g27355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2299723017%_ '0)))
                     (begin
                       (let ((_g27356_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27355_)
                                    (##values-length _g27355_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27356_ 2)))
                             (error "Context expects 2 values" _g27356_)))
                       (let ((_%target2299923020%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27355_ 0)))
                             (_%tl2300123023%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27355_ 1))))
                         (if (gx#stx-null? _%tl2300123023%_)
                             (letrec ((_%loop2300223026%_
                                       (lambda (_%hd2300023030%_
                                                _%setf2300623033%_)
                                         (if (gx#stx-pair? _%hd2300023030%_)
                                             (let ((_%e2300323035%_
                                                    (gx#syntax-e
                                                     _%hd2300023030%_)))
                                               (let ((_%lp-hd2300423039%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2300323035%_)))
                                                     (_%lp-tl2300523042%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2300323035%_))))
                                                 (_%loop2300223026%_
                                                  _%lp-tl2300523042%_
                                                  (cons _%lp-hd2300423039%_
                                                        _%setf2300623033%_))))
                                             (let ((_%setf2300723045%_
                                                    (reverse _%setf2300623033%_)))
                                               ((lambda (_%g2299823048%_)
                                                  (let* ((_%mixin-slots23065%_
                                                          (_%get-mixin-slots22703%_
                                                           _%super-ref22696%_
                                                           _%slots22697%_))
                                                         (_%g2306823085%_
                                                          (lambda (_%g2306923081%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2306923081%_)))
                                                         (_%g2306724817%_
                                                          (lambda (_%g2306923089%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2306923089%_)
                        (let ((_g27357_
                               (gx#syntax-split-splice _%g2306923089%_ '0)))
                          (begin
                            (let ((_g27358_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27357_)
                                         (##values-length _g27357_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27358_ 2)))
                                  (error "Context expects 2 values" _g27358_)))
                            (let ((_%target2307123092%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27357_ 0)))
                                  (_%tl2307323095%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27357_ 1))))
                              (if (gx#stx-null? _%tl2307323095%_)
                                  (letrec ((_%loop2307423098%_
                                            (lambda (_%hd2307223102%_
                                                     _%mixin-slot2307823105%_)
                                              (if (gx#stx-pair?
                                                   _%hd2307223102%_)
                                                  (let ((_%e2307523107%_
                                                         (gx#syntax-e
                                                          _%hd2307223102%_)))
                                                    (let ((_%lp-hd2307623111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2307523107%_)))
                                                          (_%lp-tl2307723114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2307523107%_))))
                                                      (_%loop2307423098%_
                                                       _%lp-tl2307723114%_
                                                       (cons _%lp-hd2307623111%_
                                                             _%mixin-slot2307823105%_))))
                                                  (let ((_%mixin-slot2307923117%_
                                                         (reverse _%mixin-slot2307823105%_)))
                                                    ((lambda (_%g2307023120%_)
                                                       (let* ((_%g2313823155%_
                                                               (lambda (_%g2313923151%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2313923151%_)))
                      (_%g2313724808%_
                       (lambda (_%g2313923159%_)
                         (if (gx#stx-pair/null? _%g2313923159%_)
                             (let ((_g27359_
                                    (gx#syntax-split-splice
                                     _%g2313923159%_
                                     '0)))
                               (begin
                                 (let ((_g27360_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27359_)
                                              (##values-length _g27359_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27360_ 2)))
                                       (error "Context expects 2 values"
                                              _g27360_)))
                                 (let ((_%target2314123162%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27359_ 0)))
                                       (_%tl2314323165%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27359_ 1))))
                                   (if (gx#stx-null? _%tl2314323165%_)
                                       (letrec ((_%loop2314423168%_
                                                 (lambda (_%hd2314223172%_
                                                          _%mixin-getf2314823175%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2314223172%_)
                                                       (let ((_%e2314523177%_
                                                              (gx#syntax-e
                                                               _%hd2314223172%_)))
                                                         (let ((_%lp-hd2314623181%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2314523177%_)))
                       (_%lp-tl2314723184%_
                        (let () (declare (not safe)) (##cdr _%e2314523177%_))))
                   (_%loop2314423168%_
                    _%lp-tl2314723184%_
                    (cons _%lp-hd2314623181%_ _%mixin-getf2314823175%_))))
               (let ((_%mixin-getf2314923187%_
                      (reverse _%mixin-getf2314823175%_)))
                 ((lambda (_%g2314023190%_)
                    (let* ((_%g2320723224%_
                            (lambda (_%g2320823220%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2320823220%_)))
                           (_%g2320624799%_
                            (lambda (_%g2320823228%_)
                              (if (gx#stx-pair/null? _%g2320823228%_)
                                  (let ((_g27361_
                                         (gx#syntax-split-splice
                                          _%g2320823228%_
                                          '0)))
                                    (begin
                                      (let ((_g27362_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27361_)
                                                   (##values-length _g27361_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27362_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27362_)))
                                      (let ((_%target2321023231%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27361_ 0)))
                                            (_%tl2321223234%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27361_ 1))))
                                        (if (gx#stx-null? _%tl2321223234%_)
                                            (letrec ((_%loop2321323237%_
                                                      (lambda (_%hd2321123241%_
                                                               _%mixin-setf2321723244%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2321123241%_)
                                                            (let ((_%e2321423246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2321123241%_)))
                      (let ((_%lp-hd2321523250%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2321423246%_)))
                            (_%lp-tl2321623253%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2321423246%_))))
                        (_%loop2321323237%_
                         _%lp-tl2321623253%_
                         (cons _%lp-hd2321523250%_ _%mixin-setf2321723244%_))))
                    (let ((_%mixin-setf2321823256%_
                           (reverse _%mixin-setf2321723244%_)))
                      ((lambda (_%g2320923259%_)
                         (let* ((_%g2327623293%_
                                 (lambda (_%g2327723289%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2327723289%_)))
                                (_%g2327524782%_
                                 (lambda (_%g2327723297%_)
                                   (if (gx#stx-pair/null? _%g2327723297%_)
                                       (let ((_g27363_
                                              (gx#syntax-split-splice
                                               _%g2327723297%_
                                               '0)))
                                         (begin
                                           (let ((_g27364_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27363_)
                                                        (##values-length
                                                         _g27363_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27364_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27364_)))
                                           (let ((_%target2327923300%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27363_ 0)))
                                                 (_%tl2328123303%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27363_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2328123303%_)
                                                 (letrec ((_%loop2328223306%_
                                                           (lambda (_%hd2328023310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2328623313%_)
                     (if (gx#stx-pair? _%hd2328023310%_)
                         (let ((_%e2328323315%_
                                (gx#syntax-e _%hd2328023310%_)))
                           (let ((_%lp-hd2328423319%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2328323315%_)))
                                 (_%lp-tl2328523322%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2328323315%_))))
                             (_%loop2328223306%_
                              _%lp-tl2328523322%_
                              (cons _%lp-hd2328423319%_ _%ugetf2328623313%_))))
                         (let ((_%ugetf2328723325%_
                                (reverse _%ugetf2328623313%_)))
                           ((lambda (_%g2327823328%_)
                              (let* ((_%g2334523362%_
                                      (lambda (_%g2334623358%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2334623358%_)))
                                     (_%g2334424765%_
                                      (lambda (_%g2334623366%_)
                                        (if (gx#stx-pair/null? _%g2334623366%_)
                                            (let ((_g27365_
                                                   (gx#syntax-split-splice
                                                    _%g2334623366%_
                                                    '0)))
                                              (begin
                                                (let ((_g27366_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27365_)
                                                             (##values-length
                                                              _g27365_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27366_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2334823369%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27365_
                                                          0)))
                                                      (_%tl2335023372%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27365_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2335023372%_)
                                                      (letrec ((_%loop2335123375%_
                                                                (lambda (_%hd2334923379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2335523382%_)
                          (if (gx#stx-pair? _%hd2334923379%_)
                              (let ((_%e2335223384%_
                                     (gx#syntax-e _%hd2334923379%_)))
                                (let ((_%lp-hd2335323388%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2335223384%_)))
                                      (_%lp-tl2335423391%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2335223384%_))))
                                  (_%loop2335123375%_
                                   _%lp-tl2335423391%_
                                   (cons _%lp-hd2335323388%_
                                         _%usetf2335523382%_))))
                              (let ((_%usetf2335623394%_
                                     (reverse _%usetf2335523382%_)))
                                ((lambda (_%g2334723397%_)
                                   (let* ((_%g2341423431%_
                                           (lambda (_%g2341523427%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2341523427%_)))
                                          (_%g2341324748%_
                                           (lambda (_%g2341523435%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2341523435%_)
                                                 (let ((_g27367_
                                                        (gx#syntax-split-splice
                                                         _%g2341523435%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27368_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27367_)
                          (##values-length _g27367_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27368_ 2)))
                   (error "Context expects 2 values" _g27368_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2341723438%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27367_
                                                               0)))
                                                           (_%tl2341923441%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27367_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2341923441%_)
                                                           (letrec ((_%loop2342023444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2341823448%_
                                      _%mixin-ugetf2342423451%_)
                               (if (gx#stx-pair? _%hd2341823448%_)
                                   (let ((_%e2342123453%_
                                          (gx#syntax-e _%hd2341823448%_)))
                                     (let ((_%lp-hd2342223457%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2342123453%_)))
                                           (_%lp-tl2342323460%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2342123453%_))))
                                       (_%loop2342023444%_
                                        _%lp-tl2342323460%_
                                        (cons _%lp-hd2342223457%_
                                              _%mixin-ugetf2342423451%_))))
                                   (let ((_%mixin-ugetf2342523463%_
                                          (reverse _%mixin-ugetf2342423451%_)))
                                     ((lambda (_%g2341623466%_)
                                        (let* ((_%g2348323500%_
                                                (lambda (_%g2348423496%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2348423496%_)))
                                               (_%g2348224731%_
                                                (lambda (_%g2348423504%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2348423504%_)
                                                      (let ((_g27369_
                                                             (gx#syntax-split-splice
                                                              _%g2348423504%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27369_)
                               (##values-length _g27369_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27370_ 2)))
                        (error "Context expects 2 values" _g27370_)))
                  (let ((_%target2348623507%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27369_ 0)))
                        (_%tl2348823510%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27369_ 1))))
                    (if (gx#stx-null? _%tl2348823510%_)
                        (letrec ((_%loop2348923513%_
                                  (lambda (_%hd2348723517%_
                                           _%mixin-usetf2349323520%_)
                                    (if (gx#stx-pair? _%hd2348723517%_)
                                        (let ((_%e2349023522%_
                                               (gx#syntax-e _%hd2348723517%_)))
                                          (let ((_%lp-hd2349123526%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2349023522%_)))
                                                (_%lp-tl2349223529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2349023522%_))))
                                            (_%loop2348923513%_
                                             _%lp-tl2349223529%_
                                             (cons _%lp-hd2349123526%_
                                                   _%mixin-usetf2349323520%_))))
                                        (let ((_%mixin-usetf2349423532%_
                                               (reverse _%mixin-usetf2349323520%_)))
                                          ((lambda (_%g2348523535%_)
                                             (let* ((_%type-slots23570%_
                                                     (if (gx#stx-null?
                                                          _%slots22697%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2299823048%_
                                _%g2292922979%_
                                _%g2286022910%_)
                               (foldr (lambda (_%g2355523560%_
                                               _%g2355623563%_
                                               _%g2355723565%_
                                               _%g2355823567%_)
                                        (cons (cons _%g2355723565%_
                                                    (cons _%g2355623563%_
                                                          (cons _%g2355523560%_
                                                                '())))
                                              _%g2355823567%_))
                                      '()
                                      _%g2299823048%_
                                      _%g2292922979%_
                                      _%g2286022910%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23591%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots23065%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2320923259%_
                                _%g2314023190%_
                                _%g2307023120%_)
                               (foldr (lambda (_%g2357623581%_
                                               _%g2357723584%_
                                               _%g2357823586%_
                                               _%g2357923588%_)
                                        (cons (cons _%g2357823586%_
                                                    (cons _%g2357723584%_
                                                          (cons _%g2357623581%_
                                                                '())))
                                              _%g2357923588%_))
                                      '()
                                      _%g2320923259%_
                                      _%g2314023190%_
                                      _%g2307023120%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23598%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22698%_)))
                           (if _%$e23594%_ _%$e23594%_ _%id22695%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23605%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22698%_)))
                           (if _%$e23601%_
                               _%$e23601%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%g2271722730%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23619%_
                                                     (let ((_%$e23615%_
                                                            (let ((_%e2360723609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22698%_)))
                      (if _%e2360723609%_
                          (let ((_%e23612%_ _%e2360723609%_))
                            (cons 'constructor: (cons _%e23612%_ '())))
                          '#f))))
               (if _%$e23615%_ _%$e23615%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23660%_
                                                     (let* ((_%properties23622%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22698%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23637%_
                     (let ((_%$e23625%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22698%_))))
                       (if _%$e23625%_
                           ((lambda (_%print23629%_)
                              (let ((_%print23632%_
                                     (if (eq? _%print23629%_ '#t)
                                         _%slots22697%_
                                         _%print23629%_)))
                                (cons (cons 'print: _%print23632%_)
                                      _%properties23622%_)))
                            _%$e23625%_)
                           _%properties23622%_)))
                    (_%properties23652%_
                     (let ((_%$e23640%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22698%_))))
                       (if _%$e23640%_
                           ((lambda (_%equal23644%_)
                              (let ((_%equal23647%_
                                     (if (eq? _%equal23644%_ '#t)
                                         _%slots22697%_
                                         _%equal23644%_)))
                                (cons (cons 'equal: _%equal23647%_)
                                      _%properties23637%_)))
                            _%$e23640%_)
                           _%properties23637%_)))
                    (_%properties23655%_
                     (if (gx#stx-e (gx#stx-getq 'acyclic: _%body22698%_))
                         (cons (cons 'acyclic: '#t) '())
                         '())))
               _%properties23655%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23701%_
                                                     (if (null? _%properties23660%_)
                                                         '()
                                                         (let* ((_%g2366323671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2366423667%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2366423667%_)))
                        (_%g2366223697%_
                         (lambda (_%g2366423675%_)
                           ((lambda (_%g2366523678%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%g2366523678%_ '()))
                                          '())))
                            _%g2366423675%_))))
                   (_%g2366223697%_ _%properties23660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23713%_
                                                     (let ((_%$e23704%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22698%_)))
                                                       (if _%$e23704%_
                                                           ((lambda (_%metaclass23708%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23708%_)
                          _%metaclass23708%_
                          '#f))
                    _%$e23704%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23716%_
                                                     (if _%metaclass23713%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23719%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22698%_)))
                                                    (_%type-struct23722%_
                                                     (cons 'struct:
                                                           (cons _%struct?22712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23725%_
                                                     (cons 'final:
                                                           (cons _%final?23719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2372823745%_
                                                     (lambda (_%g2372923741%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2372923741%_)))
                                                    (_%g2372724727%_
                                                     (lambda (_%g2372923749%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2372923749%_)
                                                           (let ((_g27371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2372923749%_ '0)))
                     (begin
                       (let ((_g27372_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27371_)
                                    (##values-length _g27371_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27372_ 2)))
                             (error "Context expects 2 values" _g27372_)))
                       (let ((_%target2373123752%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27371_ 0)))
                             (_%tl2373323755%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27371_ 1))))
                         (if (gx#stx-null? _%tl2373323755%_)
                             (letrec ((_%loop2373423758%_
                                       (lambda (_%hd2373223762%_
                                                _%type-body2373823765%_)
                                         (if (gx#stx-pair? _%hd2373223762%_)
                                             (let ((_%e2373523767%_
                                                    (gx#syntax-e
                                                     _%hd2373223762%_)))
                                               (let ((_%lp-hd2373623771%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2373523767%_)))
                                                     (_%lp-tl2373723774%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2373523767%_))))
                                                 (_%loop2373423758%_
                                                  _%lp-tl2373723774%_
                                                  (cons _%lp-hd2373623771%_
                                                        _%type-body2373823765%_))))
                                             (let ((_%type-body2373923777%_
                                                    (reverse _%type-body2373823765%_)))
                                               ((lambda (_%g2373023780%_)
                                                  (let* ((_%g2380123809%_
                                                          (lambda (_%g2380223805%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2380223805%_)))
                                                         (_%g2380024715%_
                                                          (lambda (_%g2380223813%_)
                                                            ((lambda (_%g2380323816%_)
                                                               (let* ((_%g2382923837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2383023833%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2383023833%_)))
                              (_%g2382824644%_
                               (lambda (_%g2383023841%_)
                                 ((lambda (_%g2383123844%_)
                                    (let* ((_%g2385723865%_
                                            (lambda (_%g2385823861%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2385823861%_)))
                                           (_%g2385624609%_
                                            (lambda (_%g2385823869%_)
                                              ((lambda (_%g2385923872%_)
                                                 (let* ((_%g2388523893%_
                                                         (lambda (_%g2388623889%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2388623889%_)))
                                                        (_%g2388424525%_
                                                         (lambda (_%g2388623897%_)
                                                           ((lambda (_%g2388723900%_)
                                                              (let* ((_%g2391323921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2391423917%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2391423917%_)))
                             (_%g2391224513%_
                              (lambda (_%g2391423925%_)
                                ((lambda (_%g2391523928%_)
                                   (let* ((_%g2394123949%_
                                           (lambda (_%g2394223945%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2394223945%_)))
                                          (_%g2394024509%_
                                           (lambda (_%g2394223953%_)
                                             ((lambda (_%g2394323956%_)
                                                (let* ((_%g2396923977%_
                                                        (lambda (_%g2397023973%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2397023973%_)))
                                                       (_%g2396824505%_
                                                        (lambda (_%g2397023981%_)
                                                          ((lambda (_%g2397123984%_)
                                                             (let* ((_%g2399724005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2399824001%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2399824001%_)))
                            (_%g2399624470%_
                             (lambda (_%g2399824009%_)
                               ((lambda (_%g2399924012%_)
                                  (let* ((_%g2402524033%_
                                          (lambda (_%g2402624029%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2402624029%_)))
                                         (_%g2402424399%_
                                          (lambda (_%g2402624037%_)
                                            ((lambda (_%g2402724040%_)
                                               (let* ((_%g2405324061%_
                                                       (lambda (_%g2405424057%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2405424057%_)))
                                                      (_%g2405224395%_
                                                       (lambda (_%g2405424065%_)
                                                         ((lambda (_%g2405524068%_)
                                                            (let* ((_%g2408124089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2408224085%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2408224085%_)))
                           (_%g2408024391%_
                            (lambda (_%g2408224093%_)
                              ((lambda (_%g2408324096%_)
                                 (let* ((_%g2410924117%_
                                         (lambda (_%g2411024113%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2411024113%_)))
                                        (_%g2410824387%_
                                         (lambda (_%g2411024121%_)
                                           ((lambda (_%g2411124124%_)
                                              (let* ((_%g2413724145%_
                                                      (lambda (_%g2413824141%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2413824141%_)))
                                                     (_%g2413624361%_
                                                      (lambda (_%g2413824149%_)
                                                        ((lambda (_%g2413924152%_)
                                                           (let* ((_%g2416524173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2416624169%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2416624169%_)))
                          (_%g2416424335%_
                           (lambda (_%g2416624177%_)
                             ((lambda (_%g2416724180%_)
                                (let* ((_%g2419324201%_
                                        (lambda (_%g2419424197%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2419424197%_)))
                                       (_%g2419224309%_
                                        (lambda (_%g2419424205%_)
                                          ((lambda (_%g2419524208%_)
                                             (let* ((_%g2422124229%_
                                                     (lambda (_%g2422224225%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2422224225%_)))
                                                    (_%g2422024283%_
                                                     (lambda (_%g2422224233%_)
                                                       ((lambda (_%g2422324236%_)
                                                          (let* ((_%g2424924257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2425024253%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2425024253%_)))
                         (_%g2424824279%_
                          (lambda (_%g2425024261%_)
                            ((lambda (_%g2425124264%_)
                               (_%wrap22700%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%g2380323816%_
                                            (cons _%g2425124264%_ '())))))
                             _%g2425024261%_))))
                    (_%g2424824279%_
                     (_%wrap22700%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%g2271722730%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%g2383123844%_
                                                          (cons 'name:
                                                                (cons _%g2385923872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%g2391523928%_
                                          (cons 'super:
                                                (cons _%g2388723900%_
                                                      (cons 'struct?:
                                                            (cons _%g2394323956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%g2397123984%_
                                      (cons 'metaclass:
                                            (cons _%g2399924012%_
                                                  (cons 'constructor-method:
                                                        (cons _%g2402724040%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g2405524068%_
                                  (cons 'constructor:
                                        (cons _%g2408324096%_
                                              (cons 'predicate:
                                                    (cons _%g2411124124%_
                                                          (cons 'accessors:
                                                                (cons _%g2413924152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%g2416724180%_
                                          (cons 'unchecked-accessors:
                                                (cons _%g2419524208%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%g2422324236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2422224233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2422024283%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%g2334723397%_
                                                         _%g2286022910%_)
                                                        (foldr (lambda (_%g2428624293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2428724296%_
                                _%g2428824298%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2428724296%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2428624293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2428824298%_))
                       (begin
                         (gx#syntax-check-splice-targets
                          _%g2348523535%_
                          _%g2307023120%_)
                         (foldr (lambda (_%g2428924301%_
                                         _%g2429024304%_
                                         _%g2429124306%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2429024304%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2428924301%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2429124306%_))
                                '()
                                _%g2348523535%_
                                _%g2307023120%_))
                       _%g2334723397%_
                       _%g2286022910%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2419424205%_))))
                                  (_%g2419224309%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%g2327823328%_
                                            _%g2286022910%_)
                                           (foldr (lambda (_%g2431224319%_
                                                           _%g2431324322%_
                                                           _%g2431424324%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2431324322%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2431224319%_ '()))
                                          '()))))
                  _%g2431424324%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g2341623466%_
                                                     _%g2307023120%_)
                                                    (foldr (lambda (_%g2431524327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2431624330%_
                            _%g2431724332%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2431624330%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2431524327%_
                                                               '()))
                                                   '()))))
                           _%g2431724332%_))
                   '()
                   _%g2341623466%_
                   _%g2307023120%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2327823328%_
                                                  _%g2286022910%_))))))
                              _%g2416624177%_))))
                     (_%g2416424335%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%g2299823048%_
                               _%g2286022910%_)
                              (foldr (lambda (_%g2433824345%_
                                              _%g2433924348%_
                                              _%g2434024350%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2433924348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2433824345%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2434024350%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%g2320923259%_
                                        _%g2307023120%_)
                                       (foldr (lambda (_%g2434124353%_
                                                       _%g2434224356%_
                                                       _%g2434324358%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2434224356%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2434124353%_ '()))
                                      '()))))
              _%g2434324358%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%g2320923259%_
                                              _%g2307023120%_))
                                     _%g2299823048%_
                                     _%g2286022910%_))))))
                 _%g2413824149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2413624361%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%g2292922979%_
                                                          _%g2286022910%_)
                                                         (foldr (lambda (_%g2436424371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2436524374%_
                                 _%g2436624376%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2436524374%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2436424371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2436624376%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%g2314023190%_
                           _%g2307023120%_)
                          (foldr (lambda (_%g2436724379%_
                                          _%g2436824382%_
                                          _%g2436924384%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2436824382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2436724379%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2436924384%_))
                                 '()
                                 _%g2314023190%_
                                 _%g2307023120%_))
                        _%g2292922979%_
                        _%g2286022910%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2411024121%_))))
                                   (_%g2410824387%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g2280422817%_ '())))))
                               _%g2408224093%_))))
                      (_%g2408024391%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%g2277622789%_ '())))))
                  _%g2405424065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2405224395%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%g2274822761%_
                                                              '())))))
                                             _%g2402624037%_))))
                                    (_%g2402424399%_
                                     (if (null? _%type-constructor23619%_)
                                         '#f
                                         (let* ((_%g2440324418%_
                                                 (lambda (_%g2440424414%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2440424414%_)))
                                                (_%g2440224466%_
                                                 (lambda (_%g2440424422%_)
                                                   (if (gx#stx-pair?
                                                        _%g2440424422%_)
                                                       (let ((_%e2440624425%_
                                                              (gx#syntax-e
                                                               _%g2440424422%_)))
                                                         (let ((_%hd2440724429%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2440624425%_)))
                       (_%tl2440824432%_
                        (let () (declare (not safe)) (##cdr _%e2440624425%_))))
                   (if (gx#stx-datum? _%hd2440724429%_)
                       (let ((_%e2440924435%_ (gx#stx-e _%hd2440724429%_)))
                         (if (equal? _%e2440924435%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2440824432%_)
                                 (let ((_%e2441024439%_
                                        (gx#syntax-e _%tl2440824432%_)))
                                   (let ((_%hd2441124443%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2441024439%_)))
                                         (_%tl2441224446%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2441024439%_))))
                                     (if (gx#stx-null? _%tl2441224446%_)
                                         ((lambda (_%g2440524449%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2440524449%_ '())))
                                          _%hd2441124443%_)
                                         (_%g2440324418%_ _%g2440424422%_))))
                                 (_%g2440324418%_ _%g2440424422%_))
                             (_%g2440324418%_ _%g2440424422%_)))
                       (_%g2440324418%_ _%g2440424422%_))))
               (_%g2440324418%_ _%g2440424422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2440224466%_
                                            _%type-constructor23619%_))))))
                                _%g2399824009%_))))
                       (_%g2399624470%_
                        (if _%metaclass23713%_
                            (let* ((_%g2447424482%_
                                    (lambda (_%g2447524478%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2447524478%_)))
                                   (_%g2447324501%_
                                    (lambda (_%g2447524486%_)
                                      ((lambda (_%g2447624489%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%g2447624489%_ '())))
                                       _%g2447524486%_))))
                              (_%g2447324501%_ _%metaclass23713%_))
                            '#f))))
                   _%g2397023981%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2396824505%_
                                                   _%final?23719%_)))
                                              _%g2394223953%_))))
                                     (_%g2394024509%_ _%struct?22712%_)))
                                 _%g2391423925%_))))
                        (_%g2391224513%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2451624519%_
                                                     _%g2451724522%_)
                                              (cons _%g2451624519%_
                                                    _%g2451724522%_))
                                            '()
                                            _%g2286022910%_)
                                     '())))))
                    _%g2388623897%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2388424525%_
                                                    (let* ((_%g2452924546%_
                                                            (lambda (_%g2453024542%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2453024542%_)))
                                                           (_%g2452824605%_
                                                            (lambda (_%g2453024550%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2453024550%_)
                          (let ((_g27373_
                                 (gx#syntax-split-splice _%g2453024550%_ '0)))
                            (begin
                              (let ((_g27374_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27373_)
                                           (##values-length _g27373_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27374_ 2)))
                                    (error "Context expects 2 values"
                                           _g27374_)))
                              (let ((_%target2453224553%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27373_ 0)))
                                    (_%tl2453424556%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27373_ 1))))
                                (if (gx#stx-null? _%tl2453424556%_)
                                    (letrec ((_%loop2453524559%_
                                              (lambda (_%hd2453324563%_
                                                       _%super-id2453924566%_)
                                                (if (gx#stx-pair?
                                                     _%hd2453324563%_)
                                                    (let ((_%e2453624568%_
                                                           (gx#syntax-e
                                                            _%hd2453324563%_)))
                                                      (let ((_%lp-hd2453724572%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2453624568%_)))
                    (_%lp-tl2453824575%_
                     (let () (declare (not safe)) (##cdr _%e2453624568%_))))
                (_%loop2453524559%_
                 _%lp-tl2453824575%_
                 (cons _%lp-hd2453724572%_ _%super-id2453924566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2454024578%_
                                                           (reverse _%super-id2453924566%_)))
                                                      ((lambda (_%g2453124581%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2459624599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2459724602%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2459624599%_ '()))
                                      _%g2459724602%_))
                              '()
                              _%g2453124581%_)))
               _%super-id2454024578%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2453524559%_
                                       _%target2453224553%_
                                       '()))
                                    (_%g2452924546%_ _%g2453024550%_)))))
                          (_%g2452924546%_ _%g2453024550%_)))))
              (_%g2452824605%_ _%super-ref22696%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2385823869%_))))
                                      (_%g2385624609%_
                                       (let* ((_%g2461324621%_
                                               (lambda (_%g2461424617%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2461424617%_)))
                                              (_%g2461224640%_
                                               (lambda (_%g2461424625%_)
                                                 ((lambda (_%g2461524628%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2461524628%_
                                                                '())))
                                                  _%g2461424625%_))))
                                         (_%g2461224640%_
                                          (cadr _%type-name23598%_))))))
                                  _%g2383023841%_))))
                         (_%g2382824644%_
                          (let* ((_%g2464824663%_
                                  (lambda (_%g2464924659%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2464924659%_)))
                                 (_%g2464724711%_
                                  (lambda (_%g2464924667%_)
                                    (if (gx#stx-pair? _%g2464924667%_)
                                        (let ((_%e2465124670%_
                                               (gx#syntax-e _%g2464924667%_)))
                                          (let ((_%hd2465224674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2465124670%_)))
                                                (_%tl2465324677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2465124670%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2465224674%_)
                                                (let ((_%e2465424680%_
                                                       (gx#stx-e
                                                        _%hd2465224674%_)))
                                                  (if (equal? _%e2465424680%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2465324677%_)
                                                          (let ((_%e2465524684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2465324677%_)))
                    (let ((_%hd2465624688%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2465524684%_)))
                          (_%tl2465724691%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2465524684%_))))
                      (if (gx#stx-null? _%tl2465724691%_)
                          ((lambda (_%g2465024694%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%g2465024694%_ '())))
                           _%hd2465624688%_)
                          (_%g2464824663%_ _%g2464924667%_))))
                  (_%g2464824663%_ _%g2464924667%_))
              (_%g2464824663%_ _%g2464924667%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2464824663%_
                                                 _%g2464924667%_))))
                                        (_%g2464824663%_ _%g2464924667%_)))))
                            (_%g2464724711%_ _%type-id23605%_)))))
                     _%g2380223813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2380024715%_
                                                     (_%wrap22700%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%g2274822761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g2283222845%_
                                (cons _%g2277622789%_
                                      (cons _%g2280422817%_
                                            (foldr (lambda (_%g2471824721%_
                                                            _%g2471924724%_)
                                                     (cons _%g2471824721%_
                                                           _%g2471924724%_))
                                                   '()
                                                   _%g2373023780%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2373923777%_))))))
                               (_%loop2373423758%_ _%target2373123752%_ '()))
                             (_%g2372823745%_ _%g2372923749%_)))))
                   (_%g2372823745%_ _%g2372923749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2372724727%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23591%_
                                                                _%type-slots23570%_)
                                                         _%type-properties23701%_)
                                                  _%type-metaclass23716%_)
                                           _%type-final23725%_)
                                    _%type-struct23722%_)
                             _%type-constructor23619%_)
                      _%type-name23598%_)
               _%type-id23605%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2349423532%_))))))
                          (_%loop2348923513%_ _%target2348623507%_ '()))
                        (_%g2348323500%_ _%g2348423504%_)))))
              (_%g2348323500%_ _%g2348423504%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2348224731%_
                                           (gx#stx-map
                                            (lambda (_%g2473424736%_)
                                              (_%make-id22702%_
                                               '"&"
                                               _%g2473424736%_))
                                            (foldr (lambda (_%g2473924742%_
                                                            _%g2474024745%_)
                                                     (cons _%g2473924742%_
                                                           _%g2474024745%_))
                                                   '()
                                                   _%g2320923259%_)))))
                                      _%mixin-ugetf2342523463%_))))))
                     (_%loop2342023444%_ _%target2341723438%_ '()))
                   (_%g2341423431%_ _%g2341523435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2341423431%_
                                                  _%g2341523435%_)))))
                                     (_%g2341324748%_
                                      (gx#stx-map
                                       (lambda (_%g2475124753%_)
                                         (_%make-id22702%_
                                          '"&"
                                          _%g2475124753%_))
                                       (foldr (lambda (_%g2475624759%_
                                                       _%g2475724762%_)
                                                (cons _%g2475624759%_
                                                      _%g2475724762%_))
                                              '()
                                              _%g2314023190%_)))))
                                 _%usetf2335623394%_))))))
                (_%loop2335123375%_ _%target2334823369%_ '()))
              (_%g2334523362%_ _%g2334623366%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2334523362%_
                                             _%g2334623366%_)))))
                                (_%g2334424765%_
                                 (gx#stx-map
                                  (lambda (_%g2476824770%_)
                                    (_%make-id22702%_ '"&" _%g2476824770%_))
                                  (foldr (lambda (_%g2477324776%_
                                                  _%g2477424779%_)
                                           (cons _%g2477324776%_
                                                 _%g2477424779%_))
                                         '()
                                         _%g2299823048%_)))))
                            _%ugetf2328723325%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2328223306%_
                                                    _%target2327923300%_
                                                    '()))
                                                 (_%g2327623293%_
                                                  _%g2327723297%_)))))
                                       (_%g2327623293%_ _%g2327723297%_)))))
                           (_%g2327524782%_
                            (gx#stx-map
                             (lambda (_%g2478524787%_)
                               (_%make-id22702%_ '"&" _%g2478524787%_))
                             (foldr (lambda (_%g2479024793%_ _%g2479124796%_)
                                      (cons _%g2479024793%_ _%g2479124796%_))
                                    '()
                                    _%g2292922979%_)))))
                       _%mixin-setf2321823256%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2321323237%_
                                               _%target2321023231%_
                                               '()))
                                            (_%g2320723224%_
                                             _%g2320823228%_)))))
                                  (_%g2320723224%_ _%g2320823228%_)))))
                      (_%g2320624799%_
                       (gx#stx-map
                        (lambda (_%g2480224804%_)
                          (_%make-id22702%_
                           _%name22706%_
                           '"-"
                           _%g2480224804%_
                           '"-set!"))
                        _%mixin-slots23065%_))))
                  _%mixin-getf2314923187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2314423168%_
                                          _%target2314123162%_
                                          '()))
                                       (_%g2313823155%_ _%g2313923159%_)))))
                             (_%g2313823155%_ _%g2313923159%_)))))
                 (_%g2313724808%_
                  (gx#stx-map
                   (lambda (_%g2481124813%_)
                     (_%make-id22702%_ _%name22706%_ '"-" _%g2481124813%_))
                   _%mixin-slots23065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2307923117%_))))))
                                    (_%loop2307423098%_
                                     _%target2307123092%_
                                     '()))
                                  (_%g2306823085%_ _%g2306923089%_)))))
                        (_%g2306823085%_ _%g2306923089%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2306724817%_
                                                     _%mixin-slots23065%_)))
                                                _%setf2300723045%_))))))
                               (_%loop2300223026%_ _%target2299923020%_ '()))
                             (_%g2299623013%_ _%g2299723017%_)))))
                   (_%g2299623013%_ _%g2299723017%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2299524821%_
                                                (gx#stx-map
                                                 (lambda (_%g2482424826%_)
                                                   (_%make-id22702%_
                                                    _%name22706%_
                                                    '"-"
                                                    _%g2482424826%_
                                                    '"-set!"))
                                                 _%slots22697%_))))
                                           _%getf2293822976%_))))))
                          (_%loop2293322957%_ _%target2293022951%_ '()))
                        (_%g2292722944%_ _%g2292822948%_)))))
              (_%g2292722944%_ _%g2292822948%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2292624830%_
                                           (gx#stx-map
                                            (lambda (_%g2483324835%_)
                                              (_%make-id22702%_
                                               _%name22706%_
                                               '"-"
                                               _%g2483324835%_))
                                            _%slots22697%_))))
                                      _%slot2286922907%_))))))
                     (_%loop2286422888%_ _%target2286122882%_ '()))
                   (_%g2285822875%_ _%g2285922879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2285822875%_
                                                  _%g2285922879%_)))))
                                     (_%g2285724839%_ _%slots22697%_)))
                                 _%g2283122842%_))))
                        (_%g2282924843%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22709%_)))))
                    _%g2280322814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2280124847%_
                                                    (_%make-id22702%_
                                                     _%name22706%_
                                                     '"?"))))
                                               _%g2277522786%_))))
                                      (_%g2277324851%_
                                       (_%make-id22702%_
                                        '"make-"
                                        _%name22706%_))))
                                  _%g2274722758%_))))
                         (_%g2274524855%_
                          (_%make-id22702%_ _%name22706%_ '"::t"))))
                     _%g2271622727%_))))
            (_%g2271424859%_ _%id22695%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24926%_)
        (let* ((_%g2493024949%_
                (lambda (_%g2493124945%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2493124945%_)))
               (_%g2492925006%_
                (lambda (_%g2493124953%_)
                  (if (gx#stx-pair? _%g2493124953%_)
                      (let ((_%e2493524956%_ (gx#syntax-e _%g2493124953%_)))
                        (let ((_%hd2493624960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2493524956%_)))
                              (_%tl2493724963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2493524956%_))))
                          (if (gx#stx-pair? _%tl2493724963%_)
                              (let ((_%e2493824966%_
                                     (gx#syntax-e _%tl2493724963%_)))
                                (let ((_%hd2493924970%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2493824966%_)))
                                      (_%tl2494024973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2493824966%_))))
                                  (if (gx#stx-pair? _%tl2494024973%_)
                                      (let ((_%e2494124976%_
                                             (gx#syntax-e _%tl2494024973%_)))
                                        (let ((_%hd2494224980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2494124976%_)))
                                              (_%tl2494324983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2494124976%_))))
                                          ((lambda (_%g2493224986%_
                                                    _%g2493324988%_
                                                    _%g2493424989%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%g2493424989%_
                                                         (cons _%g2493324988%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%g2493224986%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2494324983%_
                                           _%hd2494224980%_
                                           _%hd2493924970%_)))
                                      (_%g2493024949%_ _%g2493124953%_))))
                              (_%g2493024949%_ _%g2493124953%_))))
                      (_%g2493024949%_ _%g2493124953%_)))))
          (_%g2492925006%_ _%$stx24926%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx25010%_)
        (letrec ((_%generate25013%_
                  (lambda (_%hd25097%_ _%slots25099%_ _%body25100%_)
                    (let* ((_%__stx2685126852%_ _%hd25097%_)
                           (_%g2510325115%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2685126852%_))))
                      (let ((_%__kont2685426855%_
                             (lambda (_%g2510525143%_ _%g2510625145%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx25010%_
                                _%g2510625145%_
                                (gx#syntax->list _%g2510525143%_)
                                _%slots25099%_
                                _%body25100%_)))
                            (_%__kont2685626857%_
                             (lambda ()
                               (if (gx#identifier? _%hd25097%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx25010%_
                                    _%hd25097%_
                                    '()
                                    _%slots25099%_
                                    _%body25100%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx25010%_
                                    _%hd25097%_)))))
                        (let ((_%__match2686426865%_
                               (lambda (_%e2510725133%_
                                        _%hd2510825137%_
                                        _%tl2510925140%_)
                                 (let ((_%g2510525143%_ _%tl2510925140%_)
                                       (_%g2510625145%_ _%hd2510825137%_))
                                   (if (and (gx#stx-list? _%g2510525143%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%g2510525143%_))
                                       (_%__kont2685426855%_
                                        _%g2510525143%_
                                        _%g2510625145%_)
                                       (_%__kont2685626857%_))))))
                          (if (gx#stx-pair? _%__stx2685126852%_)
                              (let ((_%e2510725133%_
                                     (gx#syntax-e _%__stx2685126852%_)))
                                (let ((_%tl2510925140%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2510725133%_)))
                                      (_%hd2510825137%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2510725133%_))))
                                  (_%__match2686426865%_
                                   _%e2510725133%_
                                   _%hd2510825137%_
                                   _%tl2510925140%_)))
                              (_%__kont2685626857%_))))))))
          (let* ((_%g2501625035%_
                  (lambda (_%g2501725031%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2501725031%_)))
                 (_%g2501525093%_
                  (lambda (_%g2501725039%_)
                    (if (gx#stx-pair? _%g2501725039%_)
                        (let ((_%e2502125042%_ (gx#syntax-e _%g2501725039%_)))
                          (let ((_%hd2502225046%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2502125042%_)))
                                (_%tl2502325049%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2502125042%_))))
                            (if (gx#stx-pair? _%tl2502325049%_)
                                (let ((_%e2502425052%_
                                       (gx#syntax-e _%tl2502325049%_)))
                                  (let ((_%hd2502525056%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2502425052%_)))
                                        (_%tl2502625059%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2502425052%_))))
                                    (if (gx#stx-pair? _%tl2502625059%_)
                                        (let ((_%e2502725062%_
                                               (gx#syntax-e _%tl2502625059%_)))
                                          (let ((_%hd2502825066%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2502725062%_)))
                                                (_%tl2502925069%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2502725062%_))))
                                            ((lambda (_%g2501825072%_
                                                      _%g2501925074%_
                                                      _%g2502025075%_)
                                               (if (and (gx#identifier-list?
                                                         _%g2501925074%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%g2501825072%_))
                                                   (_%generate25013%_
                                                    _%g2502025075%_
                                                    _%g2501925074%_
                                                    _%g2501825072%_)
                                                   (_%g2501625035%_
                                                    _%g2501725039%_)))
                                             _%tl2502925069%_
                                             _%hd2502825066%_
                                             _%hd2502525056%_)))
                                        (_%g2501625035%_ _%g2501725039%_))))
                                (_%g2501625035%_ _%g2501725039%_))))
                        (_%g2501625035%_ _%g2501725039%_)))))
            (_%g2501525093%_ _%stx25010%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25162%_)
        (letrec ((_%wrap25165%_
                  (lambda (_%e-stx25511%_)
                    (gx#stx-wrap-source
                     _%e-stx25511%_
                     (gx#stx-source _%stx25162%_))))
                 (_%method-opt?25167%_
                  (lambda (_%x25508%_)
                    (let ((__tmp27375 (gx#stx-e _%x25508%_)))
                      (declare (not safe))
                      (##memq __tmp27375 '(rebind:))))))
          (let* ((_%g2516925198%_
                  (lambda (_%g2517025194%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2517025194%_)))
                 (_%g2516825504%_
                  (lambda (_%g2517025202%_)
                    (if (gx#stx-pair? _%g2517025202%_)
                        (let ((_%e2517525205%_ (gx#syntax-e _%g2517025202%_)))
                          (let ((_%hd2517625209%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2517525205%_)))
                                (_%tl2517725212%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2517525205%_))))
                            (if (gx#stx-pair? _%tl2517725212%_)
                                (let ((_%e2517825215%_
                                       (gx#syntax-e _%tl2517725212%_)))
                                  (let ((_%hd2517925219%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2517825215%_)))
                                        (_%tl2518025222%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2517825215%_))))
                                    (if (gx#stx-pair? _%hd2517925219%_)
                                        (let ((_%e2518125225%_
                                               (gx#syntax-e _%hd2517925219%_)))
                                          (let ((_%hd2518225229%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2518125225%_)))
                                                (_%tl2518325232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2518125225%_))))
                                            (if (gx#identifier?
                                                 _%hd2518225229%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27376_|
                                                     _%hd2518225229%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2518325232%_)
                                                        (let ((_%e2518425235%_
                                                               (gx#syntax-e
                                                                _%tl2518325232%_)))
                                                          (let ((_%hd2518525239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2518425235%_)))
                        (_%tl2518625242%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2518425235%_))))
                    (if (gx#stx-pair? _%tl2518625242%_)
                        (let ((_%e2518725245%_ (gx#syntax-e _%tl2518625242%_)))
                          (let ((_%hd2518825249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2518725245%_)))
                                (_%tl2518925252%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2518725245%_))))
                            (if (gx#stx-null? _%tl2518925252%_)
                                (if (gx#stx-pair? _%tl2518025222%_)
                                    (let ((_%e2519025255%_
                                           (gx#syntax-e _%tl2518025222%_)))
                                      (let ((_%hd2519125259%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2519025255%_)))
                                            (_%tl2519225262%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2519025255%_))))
                                        ((lambda (_%g2517125265%_
                                                  _%g2517225267%_
                                                  _%g2517325268%_
                                                  _%g2517425269%_)
                                           (if (and (gx#identifier?
                                                     _%g2517425269%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%g2517325268%_))
                                                    (gx#stx-plist?
                                                     _%g2517125265%_
                                                     _%method-opt?25167%_))
                                               (let* ((_%klass25296%_
                                                       (gx#syntax-local-value
                                                        _%g2517325268%_))
                                                      (_%rebind?25299%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%g2517125265%_)))
                                                      (_%g2530225310%_
                                                       (lambda (_%g2530325306%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2530325306%_)))
                                                      (_%g2530125494%_
                                                       (lambda (_%g2530325314%_)
                                                         ((lambda (_%g2530425317%_)
                                                            (let* ((_%g2533225340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2533325336%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2533325336%_)))
                           (_%g2533125490%_
                            (lambda (_%g2533325344%_)
                              ((lambda (_%g2533425347%_)
                                 (let* ((_%g2536025368%_
                                         (lambda (_%g2536125364%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2536125364%_)))
                                        (_%g2535925486%_
                                         (lambda (_%g2536125372%_)
                                           ((lambda (_%g2536225375%_)
                                              (let* ((_%g2538825396%_
                                                      (lambda (_%g2538925392%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2538925392%_)))
                                                     (_%g2538725482%_
                                                      (lambda (_%g2538925400%_)
                                                        ((lambda (_%g2539025403%_)
                                                           (let* ((_%g2541625424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2541725420%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2541725420%_)))
                          (_%g2541525478%_
                           (lambda (_%g2541725428%_)
                             ((lambda (_%g2541825431%_)
                                (let* ((_%g2544425452%_
                                        (lambda (_%g2544525448%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2544525448%_)))
                                       (_%g2544325474%_
                                        (lambda (_%g2544525456%_)
                                          ((lambda (_%g2544625459%_)
                                             (_%wrap25165%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%g2539025403%_
                                                          (cons _%g2544625459%_
                                                                '())))))
                                           _%g2544525456%_))))
                                  (_%g2544325474%_
                                   (_%wrap25165%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%g2530425317%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2517425269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g2533425347%_ (cons _%g2541825431%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2541725428%_))))
                     (_%g2541525478%_ _%rebind?25299%_)))
                 _%g2538925400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2538725482%_
                                                 (_%wrap25165%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%g2533425347%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%g2536225375%_
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
                                                      (cons _%g2530425317%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2517425269%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%g2517225267%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2536125372%_))))
                                   (_%g2535925486%_
                                    (gx#stx-identifier
                                     _%g2517325268%_
                                     '@next-method))))
                               _%g2533325344%_))))
                      (_%g2533125490%_
                       (gx#stx-identifier
                        _%g2517325268%_
                        _%g2517325268%_
                        '"::"
                        _%g2517425269%_))))
                  _%g2530325314%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2530125494%_
                                                  (let ((__obj27129
                                                         _%klass25296%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27129
                                                           'gerbil.core#runtime-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27129
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#runtime-type-info::t
                                                         __obj27129
                                                         'type-descriptor)))))
                                               (if (gx#identifier?
                                                    _%g2517425269%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                          _%g2517325268%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25162%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; invalid class type"
                                                        _%stx25162%_
                                                        _%g2517325268%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25162%_
                                                    _%g2517425269%_))))
                                         _%tl2519225262%_
                                         _%hd2519125259%_
                                         _%hd2518825249%_
                                         _%hd2518525239%_)))
                                    (_%g2516925198%_ _%g2517025202%_))
                                (_%g2516925198%_ _%g2517025202%_))))
                        (_%g2516925198%_ _%g2517025202%_))))
                (_%g2516925198%_ _%g2517025202%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2516925198%_
                                                     _%g2517025202%_))
                                                (_%g2516925198%_
                                                 _%g2517025202%_))))
                                        (_%g2516925198%_ _%g2517025202%_))))
                                (_%g2516925198%_ _%g2517025202%_))))
                        (_%g2516925198%_ _%g2517025202%_)))))
            (_%g2516825504%_ _%stx25162%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25514%_)
        (letrec ((_%dotted-identifier?25517%_
                  (lambda (_%id26142%_)
                    (if (gx#identifier? _%id26142%_)
                        (let ((_%id-str26145%_
                               (symbol->string (gx#stx-e _%id26142%_))))
                          (if (string-index _%id-str26145%_ '#\.)
                              (let* ((_%split26148%_
                                      (string-split _%id-str26145%_ '#\.))
                                     (__tmp27377 (length _%split26148%_)))
                                (declare (not safe))
                                (##fx= __tmp27377 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25519%_
                  (lambda (_%id26131%_)
                    (let* ((_%id-str26134%_
                            (symbol->string (gx#stx-e _%id26131%_)))
                           (_%split26137%_
                            (string-split _%id-str26134%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26131%_
                             (car _%split26137%_))
                            (cons (gx#stx-identifier
                                   _%id26131%_
                                   (cadr _%split26137%_))
                                  '()))))))
          (let* ((_%__stx2686726868%_ _%stx25514%_)
                 (_%g2552425611%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2686726868%_))))
            (let ((_%__kont2687026871%_
                   (lambda (_%g2552626024%_ _%g2552726026%_ _%g2552826027%_)
                     (let* ((_%g2605526070%_
                             (lambda (_%g2605626066%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2605626066%_)))
                            (_%g2605426123%_
                             (lambda (_%g2605626074%_)
                               (if (gx#stx-pair? _%g2605626074%_)
                                   (let ((_%e2605926077%_
                                          (gx#syntax-e _%g2605626074%_)))
                                     (let ((_%hd2606026081%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2605926077%_)))
                                           (_%tl2606126084%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2605926077%_))))
                                       (if (gx#stx-pair? _%tl2606126084%_)
                                           (let ((_%e2606226087%_
                                                  (gx#syntax-e
                                                   _%tl2606126084%_)))
                                             (let ((_%hd2606326091%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2606226087%_)))
                                                   (_%tl2606426094%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2606226087%_))))
                                               (if (gx#stx-null?
                                                    _%tl2606426094%_)
                                                   ((lambda (_%g2605726097%_
                                                             _%g2605826099%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%g2605826099%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g2605726097%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2611426117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2611526120%_)
                   (cons _%g2611426117%_ _%g2611526120%_))
                 '()
                 _%g2552726026%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2606326091%_
                                                    _%hd2606026081%_)
                                                   (_%g2605526070%_
                                                    _%g2605626074%_))))
                                           (_%g2605526070%_ _%g2605626074%_))))
                                   (_%g2605526070%_ _%g2605626074%_)))))
                       (_%g2605426123%_
                        (_%split-dotted25519%_ _%g2552826027%_)))))
                  (_%__kont2687426875%_
                   (lambda (_%g2554725868%_ _%g2554825870%_)
                     (let* ((_%g2588725902%_
                             (lambda (_%g2588825898%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2588825898%_)))
                            (_%g2588625955%_
                             (lambda (_%g2588825906%_)
                               (if (gx#stx-pair? _%g2588825906%_)
                                   (let ((_%e2589125909%_
                                          (gx#syntax-e _%g2588825906%_)))
                                     (let ((_%hd2589225913%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2589125909%_)))
                                           (_%tl2589325916%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2589125909%_))))
                                       (if (gx#stx-pair? _%tl2589325916%_)
                                           (let ((_%e2589425919%_
                                                  (gx#syntax-e
                                                   _%tl2589325916%_)))
                                             (let ((_%hd2589525923%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2589425919%_)))
                                                   (_%tl2589625926%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2589425919%_))))
                                               (if (gx#stx-null?
                                                    _%tl2589625926%_)
                                                   ((lambda (_%g2588925929%_
                                                             _%g2589025931%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%g2589025931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2588925929%_ '()))
                                (foldr (lambda (_%g2594625949%_
                                                _%g2594725952%_)
                                         (cons _%g2594625949%_
                                               _%g2594725952%_))
                                       '()
                                       _%g2554725868%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2589525923%_
                                                    _%hd2589225913%_)
                                                   (_%g2588725902%_
                                                    _%g2588825906%_))))
                                           (_%g2588725902%_ _%g2588825906%_))))
                                   (_%g2588725902%_ _%g2588825906%_)))))
                       (_%g2588625955%_
                        (_%split-dotted25519%_ _%g2554825870%_)))))
                  (_%__kont2687826879%_
                   (lambda (_%g2556425774%_ _%g2556525776%_ _%g2556625777%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%g2556525776%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2556625777%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2580425807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2580525810%_)
                          (cons _%g2580425807%_ _%g2580525810%_))
                        '()
                        _%g2556425774%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2688226883%_
                   (lambda (_%g2558525676%_ _%g2558625678%_ _%g2558725679%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%g2558625678%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2558725679%_ '()))
                                       (foldr (lambda (_%g2570025703%_
                                                       _%g2570125706%_)
                                                (cons _%g2570025703%_
                                                      _%g2570125706%_))
                                              '()
                                              _%g2558525676%_)))))))
              (let* ((_%__match2698626987%_
                      (lambda (_%e2558825618%_
                               _%hd2558925622%_
                               _%tl2559025625%_
                               _%e2559125628%_
                               _%hd2559225632%_
                               _%tl2559325635%_
                               _%e2559425638%_
                               _%hd2559525642%_
                               _%tl2559625645%_
                               _%__splice2688426885%_
                               _%target2559725648%_
                               _%tl2559925651%_)
                        (letrec ((_%loop2560025654%_
                                  (lambda (_%hd2559825658%_ _%arg2560425661%_)
                                    (if (gx#stx-pair? _%hd2559825658%_)
                                        (let ((_%e2560125663%_
                                               (gx#syntax-e _%hd2559825658%_)))
                                          (let ((_%lp-tl2560325670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2560125663%_)))
                                                (_%lp-hd2560225667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2560125663%_))))
                                            (_%loop2560025654%_
                                             _%lp-tl2560325670%_
                                             (cons _%lp-hd2560225667%_
                                                   _%arg2560425661%_))))
                                        (let ((_%arg2560525673%_
                                               (reverse _%arg2560425661%_)))
                                          (let ((_%g2558525676%_
                                                 _%arg2560525673%_)
                                                (_%g2558625678%_
                                                 _%hd2559525642%_)
                                                (_%g2558725679%_
                                                 _%hd2559225632%_))
                                            (if (gx#identifier?
                                                 _%g2558725679%_)
                                                (_%__kont2688226883%_
                                                 _%g2558525676%_
                                                 _%g2558625678%_
                                                 _%g2558725679%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2552425611%_)))))))))
                          (_%loop2560025654%_ _%target2559725648%_ '()))))
                     (_%__match2696026961%_
                      (lambda (_%e2556725716%_
                               _%hd2556825720%_
                               _%tl2556925723%_
                               _%e2557025726%_
                               _%hd2557125730%_
                               _%tl2557225733%_
                               _%e2557325736%_
                               _%hd2557425740%_
                               _%tl2557525743%_
                               _%__splice2688026881%_
                               _%target2557625746%_
                               _%tl2557825749%_)
                        (letrec ((_%loop2557925752%_
                                  (lambda (_%hd2557725756%_ _%arg2558325759%_)
                                    (if (gx#stx-pair? _%hd2557725756%_)
                                        (let ((_%e2558025761%_
                                               (gx#syntax-e _%hd2557725756%_)))
                                          (let ((_%lp-tl2558225768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2558025761%_)))
                                                (_%lp-hd2558125765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2558025761%_))))
                                            (_%loop2557925752%_
                                             _%lp-tl2558225768%_
                                             (cons _%lp-hd2558125765%_
                                                   _%arg2558325759%_))))
                                        (let ((_%arg2558425771%_
                                               (reverse _%arg2558325759%_)))
                                          (let ((_%g2556425774%_
                                                 _%arg2558425771%_)
                                                (_%g2556525776%_
                                                 _%hd2557425740%_)
                                                (_%g2556625777%_
                                                 _%hd2557125730%_))
                                            (if (and (gx#identifier?
                                                      _%g2556625777%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2579625799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2579725802%_)
                       (cons _%g2579625799%_ _%g2579725802%_))
                     '()
                     _%g2556425774%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2687826879%_
                                                 _%g2556425774%_
                                                 _%g2556525776%_
                                                 _%g2556625777%_)
                                                (_%__match2698626987%_
                                                 _%e2556725716%_
                                                 _%hd2556825720%_
                                                 _%tl2556925723%_
                                                 _%e2557025726%_
                                                 _%hd2557125730%_
                                                 _%tl2557225733%_
                                                 _%e2557325736%_
                                                 _%hd2557425740%_
                                                 _%tl2557525743%_
                                                 _%__splice2688026881%_
                                                 _%target2557625746%_
                                                 _%tl2557825749%_))))))))
                          (_%loop2557925752%_ _%target2557625746%_ '()))))
                     (_%__match2694626947%_
                      (lambda (_%e2556725716%_
                               _%hd2556825720%_
                               _%tl2556925723%_
                               _%e2557025726%_
                               _%hd2557125730%_
                               _%tl2557225733%_)
                        (if (gx#stx-pair? _%tl2557225733%_)
                            (let ((_%e2557325736%_
                                   (gx#syntax-e _%tl2557225733%_)))
                              (let ((_%tl2557525743%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2557325736%_)))
                                    (_%hd2557425740%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2557325736%_))))
                                (if (gx#stx-pair/null? _%tl2557525743%_)
                                    (let ((_%__splice2688026881%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2557525743%_
                                            '0)))
                                      (let ((_%tl2557825749%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2688026881%_
                                                '1)))
                                            (_%target2557625746%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2688026881%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2557825749%_)
                                            (_%__match2696026961%_
                                             _%e2556725716%_
                                             _%hd2556825720%_
                                             _%tl2556925723%_
                                             _%e2557025726%_
                                             _%hd2557125730%_
                                             _%tl2557225733%_
                                             _%e2557325736%_
                                             _%hd2557425740%_
                                             _%tl2557525743%_
                                             _%__splice2688026881%_
                                             _%target2557625746%_
                                             _%tl2557825749%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2552425611%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2552425611%_)))))
                            (let () (declare (not safe)) (_%g2552425611%_)))))
                     (_%__match2693426935%_
                      (lambda (_%e2554925820%_
                               _%hd2555025824%_
                               _%tl2555125827%_
                               _%e2555225830%_
                               _%hd2555325834%_
                               _%tl2555425837%_
                               _%__splice2687626877%_
                               _%target2555525840%_
                               _%tl2555725843%_)
                        (letrec ((_%loop2555825846%_
                                  (lambda (_%hd2555625850%_ _%arg2556225853%_)
                                    (if (gx#stx-pair? _%hd2555625850%_)
                                        (let ((_%e2555925855%_
                                               (gx#syntax-e _%hd2555625850%_)))
                                          (let ((_%lp-tl2556125862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2555925855%_)))
                                                (_%lp-hd2556025859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2555925855%_))))
                                            (_%loop2555825846%_
                                             _%lp-tl2556125862%_
                                             (cons _%lp-hd2556025859%_
                                                   _%arg2556225853%_))))
                                        (let ((_%arg2556325865%_
                                               (reverse _%arg2556225853%_)))
                                          (let ((_%g2554725868%_
                                                 _%arg2556325865%_)
                                                (_%g2554825870%_
                                                 _%hd2555325834%_))
                                            (if (_%dotted-identifier?25517%_
                                                 _%g2554825870%_)
                                                (_%__kont2687426875%_
                                                 _%g2554725868%_
                                                 _%g2554825870%_)
                                                (_%__match2694626947%_
                                                 _%e2554925820%_
                                                 _%hd2555025824%_
                                                 _%tl2555125827%_
                                                 _%e2555225830%_
                                                 _%hd2555325834%_
                                                 _%tl2555425837%_))))))))
                          (_%loop2555825846%_ _%target2555525840%_ '()))))
                     (_%__match2693226933%_
                      (lambda (_%e2554925820%_
                               _%hd2555025824%_
                               _%tl2555125827%_
                               _%e2555225830%_
                               _%hd2555325834%_
                               _%tl2555425837%_
                               _%__splice2687626877%_
                               _%target2555525840%_
                               _%tl2555725843%_)
                        (if (gx#stx-null? _%tl2555725843%_)
                            (_%__match2693426935%_
                             _%e2554925820%_
                             _%hd2555025824%_
                             _%tl2555125827%_
                             _%e2555225830%_
                             _%hd2555325834%_
                             _%tl2555425837%_
                             _%__splice2687626877%_
                             _%target2555525840%_
                             _%tl2555725843%_)
                            (if (gx#stx-pair? _%tl2555425837%_)
                                (let ((_%e2557325736%_
                                       (gx#syntax-e _%tl2555425837%_)))
                                  (let ((_%tl2557525743%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2557325736%_)))
                                        (_%hd2557425740%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2557325736%_))))
                                    (if (gx#stx-pair/null? _%tl2557525743%_)
                                        (let ((_%__splice2688026881%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2557525743%_
                                                '0)))
                                          (let ((_%tl2557825749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2688026881%_
                                                    '1)))
                                                (_%target2557625746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2688026881%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2557825749%_)
                                                (_%__match2696026961%_
                                                 _%e2554925820%_
                                                 _%hd2555025824%_
                                                 _%tl2555125827%_
                                                 _%e2555225830%_
                                                 _%hd2555325834%_
                                                 _%tl2555425837%_
                                                 _%e2557325736%_
                                                 _%hd2557425740%_
                                                 _%tl2557525743%_
                                                 _%__splice2688026881%_
                                                 _%target2557625746%_
                                                 _%tl2557825749%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2552425611%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2552425611%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2552425611%_))))))
                     (_%__match2691426915%_
                      (lambda (_%e2552925966%_
                               _%hd2553025970%_
                               _%tl2553125973%_
                               _%e2553225976%_
                               _%hd2553325980%_
                               _%tl2553425983%_
                               _%__splice2687226873%_
                               _%target2553525986%_
                               _%tl2553725989%_
                               _%e2554425992%_
                               _%hd2554525996%_
                               _%tl2554625999%_)
                        (letrec ((_%loop2553826002%_
                                  (lambda (_%hd2553626006%_ _%arg2554226009%_)
                                    (if (gx#stx-pair? _%hd2553626006%_)
                                        (let ((_%e2553926011%_
                                               (gx#syntax-e _%hd2553626006%_)))
                                          (let ((_%lp-tl2554126018%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2553926011%_)))
                                                (_%lp-hd2554026015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2553926011%_))))
                                            (_%loop2553826002%_
                                             _%lp-tl2554126018%_
                                             (cons _%lp-hd2554026015%_
                                                   _%arg2554226009%_))))
                                        (let ((_%arg2554326021%_
                                               (reverse _%arg2554226009%_)))
                                          (let ((_%g2552626024%_
                                                 _%hd2554525996%_)
                                                (_%g2552726026%_
                                                 _%arg2554326021%_)
                                                (_%g2552826027%_
                                                 _%hd2553325980%_))
                                            (if (and (_%dotted-identifier?25517%_
                                                      _%g2552826027%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2604626049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2604726052%_)
                       (cons _%g2604626049%_ _%g2604726052%_))
                     '()
                     _%g2552726026%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2687026871%_
                                                 _%g2552626024%_
                                                 _%g2552726026%_
                                                 _%g2552826027%_)
                                                (let ((_%__splice2687626877%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2553425983%_
                                                        '0)))
                                                  (let ((_%tl2555725843%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2687626877%_
                                                            '1)))
                                                        (_%target2555525840%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2687626877%_
                                                            '0))))
                                                    (_%__match2693226933%_
                                                     _%e2552925966%_
                                                     _%hd2553025970%_
                                                     _%tl2553125973%_
                                                     _%e2553225976%_
                                                     _%hd2553325980%_
                                                     _%tl2553425983%_
                                                     _%__splice2687626877%_
                                                     _%target2555525840%_
                                                     _%tl2555725843%_))))))))))
                          (_%loop2553826002%_ _%target2553525986%_ '())))))
                (if (gx#stx-pair? _%__stx2686726868%_)
                    (let ((_%e2552925966%_ (gx#syntax-e _%__stx2686726868%_)))
                      (let ((_%tl2553125973%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2552925966%_)))
                            (_%hd2553025970%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2552925966%_))))
                        (if (gx#stx-pair? _%tl2553125973%_)
                            (let ((_%e2553225976%_
                                   (gx#syntax-e _%tl2553125973%_)))
                              (let ((_%tl2553425983%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2553225976%_)))
                                    (_%hd2553325980%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2553225976%_))))
                                (if (gx#stx-pair/null? _%tl2553425983%_)
                                    (if (let ((__tmp27378
                                               (gx#stx-length
                                                _%tl2553425983%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27378 '1))
                                        (let ((_%__splice2687226873%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2553425983%_
                                                '1)))
                                          (let ((_%tl2553725989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2687226873%_
                                                    '1)))
                                                (_%target2553525986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2687226873%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2553725989%_)
                                                (let ((_%e2554425992%_
                                                       (gx#syntax-e
                                                        _%tl2553725989%_)))
                                                  (let ((_%tl2554625999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2554425992%_)))
                                                        (_%hd2554525996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2554425992%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2554625999%_)
                                                        (_%__match2691426915%_
                                                         _%e2552925966%_
                                                         _%hd2553025970%_
                                                         _%tl2553125973%_
                                                         _%e2553225976%_
                                                         _%hd2553325980%_
                                                         _%tl2553425983%_
                                                         _%__splice2687226873%_
                                                         _%target2553525986%_
                                                         _%tl2553725989%_
                                                         _%e2554425992%_
                                                         _%hd2554525996%_
                                                         _%tl2554625999%_)
                                                        (let ((_%__splice2687626877%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl2553425983%_
                                                                '0)))
                                                          (let ((_%tl2555725843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2687626877%_ '1)))
                        (_%target2555525840%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2687626877%_ '0))))
                    (if (gx#stx-null? _%tl2555725843%_)
                        (_%__match2693426935%_
                         _%e2552925966%_
                         _%hd2553025970%_
                         _%tl2553125973%_
                         _%e2553225976%_
                         _%hd2553325980%_
                         _%tl2553425983%_
                         _%__splice2687626877%_
                         _%target2555525840%_
                         _%tl2555725843%_)
                        (if (gx#stx-pair? _%tl2553425983%_)
                            (let ((_%e2557325736%_
                                   (gx#syntax-e _%tl2553425983%_)))
                              (let ((_%tl2557525743%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2557325736%_)))
                                    (_%hd2557425740%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2557325736%_))))
                                (if (gx#stx-pair/null? _%tl2557525743%_)
                                    (let ((_%__splice2688026881%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2557525743%_
                                            '0)))
                                      (let ((_%tl2557825749%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2688026881%_
                                                '1)))
                                            (_%target2557625746%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2688026881%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2557825749%_)
                                            (_%__match2696026961%_
                                             _%e2552925966%_
                                             _%hd2553025970%_
                                             _%tl2553125973%_
                                             _%e2553225976%_
                                             _%hd2553325980%_
                                             _%tl2553425983%_
                                             _%e2557325736%_
                                             _%hd2557425740%_
                                             _%tl2557525743%_
                                             _%__splice2688026881%_
                                             _%target2557625746%_
                                             _%tl2557825749%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2552425611%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2552425611%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2552425611%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2687626877%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2553425983%_
                                                        '0)))
                                                  (let ((_%tl2555725843%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2687626877%_
                                                            '1)))
                                                        (_%target2555525840%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2687626877%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2555725843%_)
                                                        (_%__match2693426935%_
                                                         _%e2552925966%_
                                                         _%hd2553025970%_
                                                         _%tl2553125973%_
                                                         _%e2553225976%_
                                                         _%hd2553325980%_
                                                         _%tl2553425983%_
                                                         _%__splice2687626877%_
                                                         _%target2555525840%_
                                                         _%tl2555725843%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2553425983%_)
                                                            (let ((_%e2557325736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2553425983%_)))
                      (let ((_%tl2557525743%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2557325736%_)))
                            (_%hd2557425740%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2557325736%_))))
                        (if (gx#stx-pair/null? _%tl2557525743%_)
                            (let ((_%__splice2688026881%_
                                   (gx#syntax-split-splice->vector
                                    _%tl2557525743%_
                                    '0)))
                              (let ((_%tl2557825749%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2688026881%_
                                        '1)))
                                    (_%target2557625746%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2688026881%_
                                        '0))))
                                (if (gx#stx-null? _%tl2557825749%_)
                                    (_%__match2696026961%_
                                     _%e2552925966%_
                                     _%hd2553025970%_
                                     _%tl2553125973%_
                                     _%e2553225976%_
                                     _%hd2553325980%_
                                     _%tl2553425983%_
                                     _%e2557325736%_
                                     _%hd2557425740%_
                                     _%tl2557525743%_
                                     _%__splice2688026881%_
                                     _%target2557625746%_
                                     _%tl2557825749%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2552425611%_)))))
                            (let () (declare (not safe)) (_%g2552425611%_)))))
                    (let () (declare (not safe)) (_%g2552425611%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2687626877%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2553425983%_
                                                '0)))
                                          (let ((_%tl2555725843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2687626877%_
                                                    '1)))
                                                (_%target2555525840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2687626877%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2555725843%_)
                                                (_%__match2693426935%_
                                                 _%e2552925966%_
                                                 _%hd2553025970%_
                                                 _%tl2553125973%_
                                                 _%e2553225976%_
                                                 _%hd2553325980%_
                                                 _%tl2553425983%_
                                                 _%__splice2687626877%_
                                                 _%target2555525840%_
                                                 _%tl2555725843%_)
                                                (if (gx#stx-pair?
                                                     _%tl2553425983%_)
                                                    (let ((_%e2557325736%_
                                                           (gx#syntax-e
                                                            _%tl2553425983%_)))
                                                      (let ((_%tl2557525743%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2557325736%_)))
                    (_%hd2557425740%_
                     (let () (declare (not safe)) (##car _%e2557325736%_))))
                (if (gx#stx-pair/null? _%tl2557525743%_)
                    (let ((_%__splice2688026881%_
                           (gx#syntax-split-splice->vector
                            _%tl2557525743%_
                            '0)))
                      (let ((_%tl2557825749%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2688026881%_ '1)))
                            (_%target2557625746%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2688026881%_ '0))))
                        (if (gx#stx-null? _%tl2557825749%_)
                            (_%__match2696026961%_
                             _%e2552925966%_
                             _%hd2553025970%_
                             _%tl2553125973%_
                             _%e2553225976%_
                             _%hd2553325980%_
                             _%tl2553425983%_
                             _%e2557325736%_
                             _%hd2557425740%_
                             _%tl2557525743%_
                             _%__splice2688026881%_
                             _%target2557625746%_
                             _%tl2557825749%_)
                            (let () (declare (not safe)) (_%g2552425611%_)))))
                    (let () (declare (not safe)) (_%g2552425611%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2552425611%_)))))))
                                    (if (gx#stx-pair? _%tl2553425983%_)
                                        (let ((_%e2557325736%_
                                               (gx#syntax-e _%tl2553425983%_)))
                                          (let ((_%tl2557525743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2557325736%_)))
                                                (_%hd2557425740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2557325736%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2557525743%_)
                                                (let ((_%__splice2688026881%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2557525743%_
                                                        '0)))
                                                  (let ((_%tl2557825749%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2688026881%_
                                                            '1)))
                                                        (_%target2557625746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2688026881%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2557825749%_)
                                                        (_%__match2696026961%_
                                                         _%e2552925966%_
                                                         _%hd2553025970%_
                                                         _%tl2553125973%_
                                                         _%e2553225976%_
                                                         _%hd2553325980%_
                                                         _%tl2553425983%_
                                                         _%e2557325736%_
                                                         _%hd2557425740%_
                                                         _%tl2557525743%_
                                                         _%__splice2688026881%_
                                                         _%target2557625746%_
                                                         _%tl2557825749%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2552425611%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2552425611%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2552425611%_))))))
                            (let () (declare (not safe)) (_%g2552425611%_)))))
                    (let () (declare (not safe)) (_%g2552425611%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26155%_)
        (let* ((_%__stx2698926990%_ _%$stx26155%_)
               (_%g2616026200%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2698926990%_))))
          (let ((_%__kont2699226993%_
                 (lambda (_%g2616226336%_ _%g2616326338%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%g2616326338%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2616226336%_ '()))
                                     '())))))
                (_%__kont2699426995%_
                 (lambda (_%g2617326265%_
                          _%g2617426267%_
                          _%g2617526268%_
                          _%g2617626269%_)
                   (cons _%g2617626269%_
                         (cons (cons _%g2617626269%_
                                     (cons _%g2617526268%_
                                           (cons _%g2617426267%_ '())))
                               (foldr (lambda (_%g2629026293%_ _%g2629126296%_)
                                        (cons _%g2629026293%_ _%g2629126296%_))
                                      '()
                                      _%g2617326265%_))))))
            (let* ((_%__match2704427045%_
                    (lambda (_%e2617726207%_
                             _%hd2617826211%_
                             _%tl2617926214%_
                             _%e2618026217%_
                             _%hd2618126221%_
                             _%tl2618226224%_
                             _%e2618326227%_
                             _%hd2618426231%_
                             _%tl2618526234%_
                             _%__splice2699626997%_
                             _%target2618626237%_
                             _%tl2618826240%_)
                      (letrec ((_%loop2618926243%_
                                (lambda (_%hd2618726247%_ _%rest2619326250%_)
                                  (if (gx#stx-pair? _%hd2618726247%_)
                                      (let ((_%e2619026252%_
                                             (gx#syntax-e _%hd2618726247%_)))
                                        (let ((_%lp-tl2619226259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2619026252%_)))
                                              (_%lp-hd2619126256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2619026252%_))))
                                          (_%loop2618926243%_
                                           _%lp-tl2619226259%_
                                           (cons _%lp-hd2619126256%_
                                                 _%rest2619326250%_))))
                                      (let ((_%rest2619426262%_
                                             (reverse _%rest2619326250%_)))
                                        (_%__kont2699426995%_
                                         _%rest2619426262%_
                                         _%hd2618426231%_
                                         _%hd2618126221%_
                                         _%hd2617826211%_))))))
                        (_%loop2618926243%_ _%target2618626237%_ '()))))
                   (_%__match2701827019%_
                    (lambda (_%e2616426306%_
                             _%hd2616526310%_
                             _%tl2616626313%_
                             _%e2616726316%_
                             _%hd2616826320%_
                             _%tl2616926323%_
                             _%e2617026326%_
                             _%hd2617126330%_
                             _%tl2617226333%_)
                      (let ((_%g2616226336%_ _%hd2617126330%_)
                            (_%g2616326338%_ _%hd2616826320%_))
                        (if (gx#identifier? _%g2616226336%_)
                            (_%__kont2699226993%_
                             _%g2616226336%_
                             _%g2616326338%_)
                            (if (gx#stx-pair/null? _%tl2617226333%_)
                                (let ((_%__splice2699626997%_
                                       (gx#syntax-split-splice->vector
                                        _%tl2617226333%_
                                        '0)))
                                  (let ((_%tl2618826240%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2699626997%_
                                            '1)))
                                        (_%target2618626237%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2699626997%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2618826240%_)
                                        (_%__match2704427045%_
                                         _%e2616426306%_
                                         _%hd2616526310%_
                                         _%tl2616626313%_
                                         _%e2616726316%_
                                         _%hd2616826320%_
                                         _%tl2616926323%_
                                         _%e2617026326%_
                                         _%hd2617126330%_
                                         _%tl2617226333%_
                                         _%__splice2699626997%_
                                         _%target2618626237%_
                                         _%tl2618826240%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2616026200%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2616026200%_))))))))
              (if (gx#stx-pair? _%__stx2698926990%_)
                  (let ((_%e2616426306%_ (gx#syntax-e _%__stx2698926990%_)))
                    (let ((_%tl2616626313%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2616426306%_)))
                          (_%hd2616526310%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2616426306%_))))
                      (if (gx#stx-pair? _%tl2616626313%_)
                          (let ((_%e2616726316%_
                                 (gx#syntax-e _%tl2616626313%_)))
                            (let ((_%tl2616926323%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2616726316%_)))
                                  (_%hd2616826320%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2616726316%_))))
                              (if (gx#stx-pair? _%tl2616926323%_)
                                  (let ((_%e2617026326%_
                                         (gx#syntax-e _%tl2616926323%_)))
                                    (let ((_%tl2617226333%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2617026326%_)))
                                          (_%hd2617126330%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2617026326%_))))
                                      (if (gx#stx-null? _%tl2617226333%_)
                                          (_%__match2701827019%_
                                           _%e2616426306%_
                                           _%hd2616526310%_
                                           _%tl2616626313%_
                                           _%e2616726316%_
                                           _%hd2616826320%_
                                           _%tl2616926323%_
                                           _%e2617026326%_
                                           _%hd2617126330%_
                                           _%tl2617226333%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2617226333%_)
                                              (let ((_%__splice2699626997%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl2617226333%_
                                                      '0)))
                                                (let ((_%tl2618826240%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2699626997%_
                                                          '1)))
                                                      (_%target2618626237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2699626997%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2618826240%_)
                                                      (_%__match2704427045%_
                                                       _%e2616426306%_
                                                       _%hd2616526310%_
                                                       _%tl2616626313%_
                                                       _%e2616726316%_
                                                       _%hd2616826320%_
                                                       _%tl2616926323%_
                                                       _%e2617026326%_
                                                       _%hd2617126330%_
                                                       _%tl2617226333%_
                                                       _%__splice2699626997%_
                                                       _%target2618626237%_
                                                       _%tl2618826240%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2616026200%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2616026200%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2616026200%_)))))
                          (let () (declare (not safe)) (_%g2616026200%_)))))
                  (let () (declare (not safe)) (_%g2616026200%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26358%_)
        (let* ((_%__stx2704727048%_ _%$stx26358%_)
               (_%g2636326415%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2704727048%_))))
          (let ((_%__kont2705027051%_
                 (lambda (_%g2636526589%_ _%g2636626591%_ _%g2636726592%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%g2636726592%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2636626591%_ '()))
                                     (cons _%g2636526589%_ '()))))))
                (_%__kont2705227053%_
                 (lambda (_%g2638026500%_
                          _%g2638126502%_
                          _%g2638226503%_
                          _%g2638326504%_
                          _%g2638426505%_
                          _%g2638526506%_)
                   (cons _%g2638526506%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%g2638426505%_
                                           (cons _%g2638326504%_
                                                 (foldr (lambda (_%g2653326536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2653426539%_)
                  (cons _%g2653326536%_ _%g2653426539%_))
                '()
                _%g2638226503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g2638126502%_
                                     (cons _%g2638026500%_ '())))))))
            (let* ((_%__match2712227123%_
                    (lambda (_%e2638626422%_
                             _%hd2638726426%_
                             _%tl2638826429%_
                             _%e2638926432%_
                             _%hd2639026436%_
                             _%tl2639126439%_
                             _%e2639226442%_
                             _%hd2639326446%_
                             _%tl2639426449%_
                             _%__splice2705427055%_
                             _%target2639526452%_
                             _%tl2639726455%_
                             _%e2640426458%_
                             _%hd2640526462%_
                             _%tl2640626465%_
                             _%e2640726468%_
                             _%hd2640826472%_
                             _%tl2640926475%_)
                      (letrec ((_%loop2639826478%_
                                (lambda (_%hd2639626482%_ _%path2640226485%_)
                                  (if (gx#stx-pair? _%hd2639626482%_)
                                      (let ((_%e2639926487%_
                                             (gx#syntax-e _%hd2639626482%_)))
                                        (let ((_%lp-tl2640126494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2639926487%_)))
                                              (_%lp-hd2640026491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2639926487%_))))
                                          (_%loop2639826478%_
                                           _%lp-tl2640126494%_
                                           (cons _%lp-hd2640026491%_
                                                 _%path2640226485%_))))
                                      (let ((_%path2640326497%_
                                             (reverse _%path2640226485%_)))
                                        (_%__kont2705227053%_
                                         _%hd2640826472%_
                                         _%hd2640526462%_
                                         _%path2640326497%_
                                         _%hd2639326446%_
                                         _%hd2639026436%_
                                         _%hd2638726426%_))))))
                        (_%loop2639826478%_ _%target2639526452%_ '()))))
                   (_%__match2708227083%_
                    (lambda (_%e2636826549%_
                             _%hd2636926553%_
                             _%tl2637026556%_
                             _%e2637126559%_
                             _%hd2637226563%_
                             _%tl2637326566%_
                             _%e2637426569%_
                             _%hd2637526573%_
                             _%tl2637626576%_
                             _%e2637726579%_
                             _%hd2637826583%_
                             _%tl2637926586%_)
                      (let ((_%g2636526589%_ _%hd2637826583%_)
                            (_%g2636626591%_ _%hd2637526573%_)
                            (_%g2636726592%_ _%hd2637226563%_))
                        (if (gx#identifier? _%g2636626591%_)
                            (_%__kont2705027051%_
                             _%g2636526589%_
                             _%g2636626591%_
                             _%g2636726592%_)
                            (if (gx#stx-pair/null? _%tl2637626576%_)
                                (if (let ((__tmp27379
                                           (gx#stx-length _%tl2637626576%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27379 '2))
                                    (let ((_%__splice2705427055%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2637626576%_
                                            '2)))
                                      (let ((_%tl2639726455%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2705427055%_
                                                '1)))
                                            (_%target2639526452%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2705427055%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2639726455%_)
                                            (let ((_%e2640426458%_
                                                   (gx#syntax-e
                                                    _%tl2639726455%_)))
                                              (let ((_%tl2640626465%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2640426458%_)))
                                                    (_%hd2640526462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2640426458%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2640626465%_)
                                                    (let ((_%e2640726468%_
                                                           (gx#syntax-e
                                                            _%tl2640626465%_)))
                                                      (let ((_%tl2640926475%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2640726468%_)))
                    (_%hd2640826472%_
                     (let () (declare (not safe)) (##car _%e2640726468%_))))
                (if (gx#stx-null? _%tl2640926475%_)
                    (_%__match2712227123%_
                     _%e2636826549%_
                     _%hd2636926553%_
                     _%tl2637026556%_
                     _%e2637126559%_
                     _%hd2637226563%_
                     _%tl2637326566%_
                     _%e2637426569%_
                     _%hd2637526573%_
                     _%tl2637626576%_
                     _%__splice2705427055%_
                     _%target2639526452%_
                     _%tl2639726455%_
                     _%e2640426458%_
                     _%hd2640526462%_
                     _%tl2640626465%_
                     _%e2640726468%_
                     _%hd2640826472%_
                     _%tl2640926475%_)
                    (let () (declare (not safe)) (_%g2636326415%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2636326415%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2636326415%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2636326415%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2636326415%_))))))))
              (if (gx#stx-pair? _%__stx2704727048%_)
                  (let ((_%e2636826549%_ (gx#syntax-e _%__stx2704727048%_)))
                    (let ((_%tl2637026556%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2636826549%_)))
                          (_%hd2636926553%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2636826549%_))))
                      (if (gx#stx-pair? _%tl2637026556%_)
                          (let ((_%e2637126559%_
                                 (gx#syntax-e _%tl2637026556%_)))
                            (let ((_%tl2637326566%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2637126559%_)))
                                  (_%hd2637226563%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2637126559%_))))
                              (if (gx#stx-pair? _%tl2637326566%_)
                                  (let ((_%e2637426569%_
                                         (gx#syntax-e _%tl2637326566%_)))
                                    (let ((_%tl2637626576%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2637426569%_)))
                                          (_%hd2637526573%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2637426569%_))))
                                      (if (gx#stx-pair? _%tl2637626576%_)
                                          (let ((_%e2637726579%_
                                                 (gx#syntax-e
                                                  _%tl2637626576%_)))
                                            (let ((_%tl2637926586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2637726579%_)))
                                                  (_%hd2637826583%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2637726579%_))))
                                              (if (gx#stx-null?
                                                   _%tl2637926586%_)
                                                  (_%__match2708227083%_
                                                   _%e2636826549%_
                                                   _%hd2636926553%_
                                                   _%tl2637026556%_
                                                   _%e2637126559%_
                                                   _%hd2637226563%_
                                                   _%tl2637326566%_
                                                   _%e2637426569%_
                                                   _%hd2637526573%_
                                                   _%tl2637626576%_
                                                   _%e2637726579%_
                                                   _%hd2637826583%_
                                                   _%tl2637926586%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2637626576%_)
                                                      (if (let ((__tmp27380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2637626576%_)))
                    (declare (not safe))
                    (##fx>= __tmp27380 '2))
                  (let ((_%__splice2705427055%_
                         (gx#syntax-split-splice->vector _%tl2637626576%_ '2)))
                    (let ((_%tl2639726455%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2705427055%_ '1)))
                          (_%target2639526452%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2705427055%_ '0))))
                      (if (gx#stx-pair? _%tl2639726455%_)
                          (let ((_%e2640426458%_
                                 (gx#syntax-e _%tl2639726455%_)))
                            (let ((_%tl2640626465%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2640426458%_)))
                                  (_%hd2640526462%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2640426458%_))))
                              (if (gx#stx-pair? _%tl2640626465%_)
                                  (let ((_%e2640726468%_
                                         (gx#syntax-e _%tl2640626465%_)))
                                    (let ((_%tl2640926475%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2640726468%_)))
                                          (_%hd2640826472%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2640726468%_))))
                                      (if (gx#stx-null? _%tl2640926475%_)
                                          (_%__match2712227123%_
                                           _%e2636826549%_
                                           _%hd2636926553%_
                                           _%tl2637026556%_
                                           _%e2637126559%_
                                           _%hd2637226563%_
                                           _%tl2637326566%_
                                           _%e2637426569%_
                                           _%hd2637526573%_
                                           _%tl2637626576%_
                                           _%__splice2705427055%_
                                           _%target2639526452%_
                                           _%tl2639726455%_
                                           _%e2640426458%_
                                           _%hd2640526462%_
                                           _%tl2640626465%_
                                           _%e2640726468%_
                                           _%hd2640826472%_
                                           _%tl2640926475%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2636326415%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2636326415%_)))))
                          (let () (declare (not safe)) (_%g2636326415%_)))))
                  (let () (declare (not safe)) (_%g2636326415%_)))
              (let () (declare (not safe)) (_%g2636326415%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2637626576%_)
                                              (if (let ((__tmp27381
                                                         (gx#stx-length
                                                          _%tl2637626576%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27381 '2))
                                                  (let ((_%__splice2705427055%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl2637626576%_
                                                          '2)))
                                                    (let ((_%tl2639726455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2705427055%_
                                                              '1)))
                                                          (_%target2639526452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2705427055%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2639726455%_)
                                                          (let ((_%e2640426458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2639726455%_)))
                    (let ((_%tl2640626465%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2640426458%_)))
                          (_%hd2640526462%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2640426458%_))))
                      (if (gx#stx-pair? _%tl2640626465%_)
                          (let ((_%e2640726468%_
                                 (gx#syntax-e _%tl2640626465%_)))
                            (let ((_%tl2640926475%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2640726468%_)))
                                  (_%hd2640826472%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2640726468%_))))
                              (if (gx#stx-null? _%tl2640926475%_)
                                  (_%__match2712227123%_
                                   _%e2636826549%_
                                   _%hd2636926553%_
                                   _%tl2637026556%_
                                   _%e2637126559%_
                                   _%hd2637226563%_
                                   _%tl2637326566%_
                                   _%e2637426569%_
                                   _%hd2637526573%_
                                   _%tl2637626576%_
                                   _%__splice2705427055%_
                                   _%target2639526452%_
                                   _%tl2639726455%_
                                   _%e2640426458%_
                                   _%hd2640526462%_
                                   _%tl2640626465%_
                                   _%e2640726468%_
                                   _%hd2640826472%_
                                   _%tl2640926475%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2636326415%_)))))
                          (let () (declare (not safe)) (_%g2636326415%_)))))
                  (let () (declare (not safe)) (_%g2636326415%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2636326415%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2636326415%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2636326415%_)))))
                          (let () (declare (not safe)) (_%g2636326415%_)))))
                  (let () (declare (not safe)) (_%g2636326415%_))))))))))
