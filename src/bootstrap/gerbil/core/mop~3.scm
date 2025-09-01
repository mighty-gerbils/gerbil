(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27227_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24781%_)
        (letrec ((_%body-opt?24784%_
                  (lambda (_%key24787%_)
                    (let ((__tmp27199 (gx#stx-e _%key24787%_)))
                      (declare (not safe))
                      (##memq __tmp27199
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:))))))
          (gx#stx-plist? _%stx24781%_ _%body-opt?24784%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22547%_
               _%id22549%_
               _%super-ref22550%_
               _%slots22551%_
               _%body22552%_)
        (letrec ((_%wrap22554%_
                  (lambda (_%e-stx24778%_)
                    (gx#stx-wrap-source
                     _%e-stx24778%_
                     (gx#stx-source _%stx22547%_))))
                 (_%make-id22556%_
                  (lambda _%args24775%_
                    (apply gx#stx-identifier _%id22549%_ _%args24775%_)))
                 (_%get-mixin-slots22557%_
                  (lambda (_%super24745%_ _%slots24747%_)
                    (letrec* ((_%tab24749%_ (make-hash-table-eq))
                              (_%dedup24751%_
                               (lambda (_%mixins24762%_)
                                 (let _%lp24765%_ ((_%rest24768%_
                                                    _%mixins24762%_)
                                                   (_%r24770%_ '()))
                                   (if (pair? _%rest24768%_)
                                       (let ((_%slot24772%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24768%_))))
                                         (if (hash-get
                                              _%tab24749%_
                                              _%slot24772%_)
                                             (_%lp24765%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24768%_))
                                              _%r24770%_)
                                             (begin
                                               (hash-put!
                                                _%tab24749%_
                                                _%slot24772%_
                                                '#t)
                                               (_%lp24765%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24768%_))
                                                (cons _%slot24772%_
                                                      _%r24770%_)))))
                                       (reverse _%r24770%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24753%_)
                         (hash-put! _%tab24749%_ (gx#stx-e _%slot24753%_) '#t))
                       _%slots24747%_)
                      (if (not _%super24745%_)
                          '()
                          (if (gx#identifier? _%super24745%_)
                              (_%dedup24751%_
                               (_%get-mixin-slots-r22558%_ _%super24745%_))
                              (_%dedup24751%_
                               (concatenate
                                (map _%get-mixin-slots-r22558%_
                                     _%super24745%_))))))))
                 (_%get-mixin-slots-r22558%_
                  (lambda (_%type-id24739%_)
                    (let ((_%info24742%_
                           (gx#syntax-local-value _%type-id24739%_)))
                      (let ((__tmp27201
                             (let ((__obj27016 _%info24742%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27016
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27016
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27016
                                    'slots))))
                            (__tmp27200
                             (concatenate
                              (map _%get-mixin-slots-r22558%_
                                   (let ((__obj27017 _%info24742%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27017
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27017
                                            '3
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27017
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27201 __tmp27200))))))
          (gx#check-duplicate-identifiers _%slots22551%_ _%stx22547%_)
          (let* ((_%name22560%_ (symbol->string (gx#stx-e _%id22549%_)))
                 (_%super22563%_
                  (map gx#syntax-local-value _%super-ref22550%_))
                 (_%struct?22566%_ (gx#stx-getq 'struct: _%body22552%_))
                 (_%g2256922577%_
                  (lambda (_%g2257022573%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2257022573%_)))
                 (_%g2256824735%_
                  (lambda (_%g2257022581%_)
                    ((lambda (_%L22584%_)
                       (let* ((_%g2260022608%_
                               (lambda (_%g2260122604%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2260122604%_)))
                              (_%g2259924731%_
                               (lambda (_%g2260122612%_)
                                 ((lambda (_%L22615%_)
                                    (let* ((_%g2262822636%_
                                            (lambda (_%g2262922632%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2262922632%_)))
                                           (_%g2262724727%_
                                            (lambda (_%g2262922640%_)
                                              ((lambda (_%L22643%_)
                                                 (let* ((_%g2265622664%_
                                                         (lambda (_%g2265722660%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2265722660%_)))
                                                        (_%g2265524723%_
                                                         (lambda (_%g2265722668%_)
                                                           ((lambda (_%L22671%_)
                                                              (let* ((_%g2268422692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2268522688%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2268522688%_)))
                             (_%g2268324719%_
                              (lambda (_%g2268522696%_)
                                ((lambda (_%L22699%_)
                                   (let* ((_%g2271222729%_
                                           (lambda (_%g2271322725%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2271322725%_)))
                                          (_%g2271124715%_
                                           (lambda (_%g2271322733%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2271322733%_)
                                                 (let ((_g27202_
                                                        (gx#syntax-split-splice
                                                         _%g2271322733%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27203_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27202_)
                          (##values-length _g27202_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27203_ 2)))
                   (error "Context expects 2 values" _g27203_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2271522736%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27202_
                                                               0)))
                                                           (_%tl2271722739%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27202_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2271722739%_)
                                                           (letrec ((_%loop2271822742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2271622746%_ _%slot2272222749%_)
                               (if (gx#stx-pair? _%hd2271622746%_)
                                   (let ((_%e2271922752%_
                                          (gx#syntax-e _%hd2271622746%_)))
                                     (let ((_%lp-hd2272022756%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2271922752%_)))
                                           (_%lp-tl2272122759%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2271922752%_))))
                                       (_%loop2271822742%_
                                        _%lp-tl2272122759%_
                                        (cons _%lp-hd2272022756%_
                                              _%slot2272222749%_))))
                                   (let ((_%slot2272322762%_
                                          (reverse _%slot2272222749%_)))
                                     ((lambda (_%L22766%_)
                                        (let* ((_%g2278322800%_
                                                (lambda (_%g2278422796%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2278422796%_)))
                                               (_%g2278224706%_
                                                (lambda (_%g2278422804%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2278422804%_)
                                                      (let ((_g27204_
                                                             (gx#syntax-split-splice
                                                              _%g2278422804%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27204_)
                               (##values-length _g27204_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27205_ 2)))
                        (error "Context expects 2 values" _g27205_)))
                  (let ((_%target2278622807%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27204_ 0)))
                        (_%tl2278822810%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27204_ 1))))
                    (if (gx#stx-null? _%tl2278822810%_)
                        (letrec ((_%loop2278922813%_
                                  (lambda (_%hd2278722817%_ _%getf2279322820%_)
                                    (if (gx#stx-pair? _%hd2278722817%_)
                                        (let ((_%e2279022823%_
                                               (gx#syntax-e _%hd2278722817%_)))
                                          (let ((_%lp-hd2279122827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2279022823%_)))
                                                (_%lp-tl2279222830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2279022823%_))))
                                            (_%loop2278922813%_
                                             _%lp-tl2279222830%_
                                             (cons _%lp-hd2279122827%_
                                                   _%getf2279322820%_))))
                                        (let ((_%getf2279422833%_
                                               (reverse _%getf2279322820%_)))
                                          ((lambda (_%L22837%_)
                                             (let* ((_%g2285422871%_
                                                     (lambda (_%g2285522867%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2285522867%_)))
                                                    (_%g2285324697%_
                                                     (lambda (_%g2285522875%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2285522875%_)
                                                           (let ((_g27206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2285522875%_ '0)))
                     (begin
                       (let ((_g27207_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27206_)
                                    (##values-length _g27206_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27207_ 2)))
                             (error "Context expects 2 values" _g27207_)))
                       (let ((_%target2285722878%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27206_ 0)))
                             (_%tl2285922881%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27206_ 1))))
                         (if (gx#stx-null? _%tl2285922881%_)
                             (letrec ((_%loop2286022884%_
                                       (lambda (_%hd2285822888%_
                                                _%setf2286422891%_)
                                         (if (gx#stx-pair? _%hd2285822888%_)
                                             (let ((_%e2286122894%_
                                                    (gx#syntax-e
                                                     _%hd2285822888%_)))
                                               (let ((_%lp-hd2286222898%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2286122894%_)))
                                                     (_%lp-tl2286322901%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2286122894%_))))
                                                 (_%loop2286022884%_
                                                  _%lp-tl2286322901%_
                                                  (cons _%lp-hd2286222898%_
                                                        _%setf2286422891%_))))
                                             (let ((_%setf2286522904%_
                                                    (reverse _%setf2286422891%_)))
                                               ((lambda (_%L22908%_)
                                                  (let* ((_%mixin-slots22925%_
                                                          (_%get-mixin-slots22557%_
                                                           _%super-ref22550%_
                                                           _%slots22551%_))
                                                         (_%g2292822945%_
                                                          (lambda (_%g2292922941%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2292922941%_)))
                                                         (_%g2292724693%_
                                                          (lambda (_%g2292922949%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2292922949%_)
                        (let ((_g27208_
                               (gx#syntax-split-splice _%g2292922949%_ '0)))
                          (begin
                            (let ((_g27209_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27208_)
                                         (##values-length _g27208_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27209_ 2)))
                                  (error "Context expects 2 values" _g27209_)))
                            (let ((_%target2293122952%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27208_ 0)))
                                  (_%tl2293322955%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27208_ 1))))
                              (if (gx#stx-null? _%tl2293322955%_)
                                  (letrec ((_%loop2293422958%_
                                            (lambda (_%hd2293222962%_
                                                     _%mixin-slot2293822965%_)
                                              (if (gx#stx-pair?
                                                   _%hd2293222962%_)
                                                  (let ((_%e2293522968%_
                                                         (gx#syntax-e
                                                          _%hd2293222962%_)))
                                                    (let ((_%lp-hd2293622972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2293522968%_)))
                                                          (_%lp-tl2293722975%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2293522968%_))))
                                                      (_%loop2293422958%_
                                                       _%lp-tl2293722975%_
                                                       (cons _%lp-hd2293622972%_
                                                             _%mixin-slot2293822965%_))))
                                                  (let ((_%mixin-slot2293922978%_
                                                         (reverse _%mixin-slot2293822965%_)))
                                                    ((lambda (_%L22982%_)
                                                       (let* ((_%g2300023017%_
                                                               (lambda (_%g2300123013%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2300123013%_)))
                      (_%g2299924684%_
                       (lambda (_%g2300123021%_)
                         (if (gx#stx-pair/null? _%g2300123021%_)
                             (let ((_g27210_
                                    (gx#syntax-split-splice
                                     _%g2300123021%_
                                     '0)))
                               (begin
                                 (let ((_g27211_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27210_)
                                              (##values-length _g27210_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27211_ 2)))
                                       (error "Context expects 2 values"
                                              _g27211_)))
                                 (let ((_%target2300323024%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27210_ 0)))
                                       (_%tl2300523027%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27210_ 1))))
                                   (if (gx#stx-null? _%tl2300523027%_)
                                       (letrec ((_%loop2300623030%_
                                                 (lambda (_%hd2300423034%_
                                                          _%mixin-getf2301023037%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2300423034%_)
                                                       (let ((_%e2300723040%_
                                                              (gx#syntax-e
                                                               _%hd2300423034%_)))
                                                         (let ((_%lp-hd2300823044%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2300723040%_)))
                       (_%lp-tl2300923047%_
                        (let () (declare (not safe)) (##cdr _%e2300723040%_))))
                   (_%loop2300623030%_
                    _%lp-tl2300923047%_
                    (cons _%lp-hd2300823044%_ _%mixin-getf2301023037%_))))
               (let ((_%mixin-getf2301123050%_
                      (reverse _%mixin-getf2301023037%_)))
                 ((lambda (_%L23054%_)
                    (let* ((_%g2307123088%_
                            (lambda (_%g2307223084%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2307223084%_)))
                           (_%g2307024675%_
                            (lambda (_%g2307223092%_)
                              (if (gx#stx-pair/null? _%g2307223092%_)
                                  (let ((_g27212_
                                         (gx#syntax-split-splice
                                          _%g2307223092%_
                                          '0)))
                                    (begin
                                      (let ((_g27213_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27212_)
                                                   (##values-length _g27212_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27213_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27213_)))
                                      (let ((_%target2307423095%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27212_ 0)))
                                            (_%tl2307623098%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27212_ 1))))
                                        (if (gx#stx-null? _%tl2307623098%_)
                                            (letrec ((_%loop2307723101%_
                                                      (lambda (_%hd2307523105%_
                                                               _%mixin-setf2308123108%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2307523105%_)
                                                            (let ((_%e2307823111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2307523105%_)))
                      (let ((_%lp-hd2307923115%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2307823111%_)))
                            (_%lp-tl2308023118%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2307823111%_))))
                        (_%loop2307723101%_
                         _%lp-tl2308023118%_
                         (cons _%lp-hd2307923115%_ _%mixin-setf2308123108%_))))
                    (let ((_%mixin-setf2308223121%_
                           (reverse _%mixin-setf2308123108%_)))
                      ((lambda (_%L23125%_)
                         (let* ((_%g2314223159%_
                                 (lambda (_%g2314323155%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2314323155%_)))
                                (_%g2314124658%_
                                 (lambda (_%g2314323163%_)
                                   (if (gx#stx-pair/null? _%g2314323163%_)
                                       (let ((_g27214_
                                              (gx#syntax-split-splice
                                               _%g2314323163%_
                                               '0)))
                                         (begin
                                           (let ((_g27215_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27214_)
                                                        (##values-length
                                                         _g27214_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27215_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27215_)))
                                           (let ((_%target2314523166%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27214_ 0)))
                                                 (_%tl2314723169%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27214_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2314723169%_)
                                                 (letrec ((_%loop2314823172%_
                                                           (lambda (_%hd2314623176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2315223179%_)
                     (if (gx#stx-pair? _%hd2314623176%_)
                         (let ((_%e2314923182%_
                                (gx#syntax-e _%hd2314623176%_)))
                           (let ((_%lp-hd2315023186%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2314923182%_)))
                                 (_%lp-tl2315123189%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2314923182%_))))
                             (_%loop2314823172%_
                              _%lp-tl2315123189%_
                              (cons _%lp-hd2315023186%_ _%ugetf2315223179%_))))
                         (let ((_%ugetf2315323192%_
                                (reverse _%ugetf2315223179%_)))
                           ((lambda (_%L23196%_)
                              (let* ((_%g2321323230%_
                                      (lambda (_%g2321423226%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2321423226%_)))
                                     (_%g2321224641%_
                                      (lambda (_%g2321423234%_)
                                        (if (gx#stx-pair/null? _%g2321423234%_)
                                            (let ((_g27216_
                                                   (gx#syntax-split-splice
                                                    _%g2321423234%_
                                                    '0)))
                                              (begin
                                                (let ((_g27217_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27216_)
                                                             (##values-length
                                                              _g27216_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27217_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2321623237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27216_
                                                          0)))
                                                      (_%tl2321823240%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27216_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2321823240%_)
                                                      (letrec ((_%loop2321923243%_
                                                                (lambda (_%hd2321723247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2322323250%_)
                          (if (gx#stx-pair? _%hd2321723247%_)
                              (let ((_%e2322023253%_
                                     (gx#syntax-e _%hd2321723247%_)))
                                (let ((_%lp-hd2322123257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2322023253%_)))
                                      (_%lp-tl2322223260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2322023253%_))))
                                  (_%loop2321923243%_
                                   _%lp-tl2322223260%_
                                   (cons _%lp-hd2322123257%_
                                         _%usetf2322323250%_))))
                              (let ((_%usetf2322423263%_
                                     (reverse _%usetf2322323250%_)))
                                ((lambda (_%L23267%_)
                                   (let* ((_%g2328423301%_
                                           (lambda (_%g2328523297%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2328523297%_)))
                                          (_%g2328324624%_
                                           (lambda (_%g2328523305%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2328523305%_)
                                                 (let ((_g27218_
                                                        (gx#syntax-split-splice
                                                         _%g2328523305%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27219_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27218_)
                          (##values-length _g27218_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27219_ 2)))
                   (error "Context expects 2 values" _g27219_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2328723308%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27218_
                                                               0)))
                                                           (_%tl2328923311%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27218_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2328923311%_)
                                                           (letrec ((_%loop2329023314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2328823318%_
                                      _%mixin-ugetf2329423321%_)
                               (if (gx#stx-pair? _%hd2328823318%_)
                                   (let ((_%e2329123324%_
                                          (gx#syntax-e _%hd2328823318%_)))
                                     (let ((_%lp-hd2329223328%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2329123324%_)))
                                           (_%lp-tl2329323331%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2329123324%_))))
                                       (_%loop2329023314%_
                                        _%lp-tl2329323331%_
                                        (cons _%lp-hd2329223328%_
                                              _%mixin-ugetf2329423321%_))))
                                   (let ((_%mixin-ugetf2329523334%_
                                          (reverse _%mixin-ugetf2329423321%_)))
                                     ((lambda (_%L23338%_)
                                        (let* ((_%g2335523372%_
                                                (lambda (_%g2335623368%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2335623368%_)))
                                               (_%g2335424607%_
                                                (lambda (_%g2335623376%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2335623376%_)
                                                      (let ((_g27220_
                                                             (gx#syntax-split-splice
                                                              _%g2335623376%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27220_)
                               (##values-length _g27220_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27221_ 2)))
                        (error "Context expects 2 values" _g27221_)))
                  (let ((_%target2335823379%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27220_ 0)))
                        (_%tl2336023382%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27220_ 1))))
                    (if (gx#stx-null? _%tl2336023382%_)
                        (letrec ((_%loop2336123385%_
                                  (lambda (_%hd2335923389%_
                                           _%mixin-usetf2336523392%_)
                                    (if (gx#stx-pair? _%hd2335923389%_)
                                        (let ((_%e2336223395%_
                                               (gx#syntax-e _%hd2335923389%_)))
                                          (let ((_%lp-hd2336323399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2336223395%_)))
                                                (_%lp-tl2336423402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2336223395%_))))
                                            (_%loop2336123385%_
                                             _%lp-tl2336423402%_
                                             (cons _%lp-hd2336323399%_
                                                   _%mixin-usetf2336523392%_))))
                                        (let ((_%mixin-usetf2336623405%_
                                               (reverse _%mixin-usetf2336523392%_)))
                                          ((lambda (_%L23409%_)
                                             (let* ((_%type-slots23444%_
                                                     (if (gx#stx-null?
                                                          _%slots22551%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L22908%_
                                _%L22837%_
                                _%L22766%_)
                               (foldr (lambda (_%g2342923434%_
                                               _%g2343023437%_
                                               _%g2343123439%_
                                               _%g2343223441%_)
                                        (cons (cons _%g2343123439%_
                                                    (cons _%g2343023437%_
                                                          (cons _%g2342923434%_
                                                                '())))
                                              _%g2343223441%_))
                                      '()
                                      _%L22908%_
                                      _%L22837%_
                                      _%L22766%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23465%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots22925%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L23125%_
                                _%L23054%_
                                _%L22982%_)
                               (foldr (lambda (_%g2345023455%_
                                               _%g2345123458%_
                                               _%g2345223460%_
                                               _%g2345323462%_)
                                        (cons (cons _%g2345223460%_
                                                    (cons _%g2345123458%_
                                                          (cons _%g2345023455%_
                                                                '())))
                                              _%g2345323462%_))
                                      '()
                                      _%L23125%_
                                      _%L23054%_
                                      _%L22982%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23472%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22552%_)))
                           (if _%$e23468%_ _%$e23468%_ _%id22549%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23479%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22552%_)))
                           (if _%$e23475%_
                               _%$e23475%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%L22584%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23494%_
                                                     (let ((_%$e23490%_
                                                            (let ((_%e2348123483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22552%_)))
                      (if _%e2348123483%_
                          (let ((_%e23487%_ _%e2348123483%_))
                            (cons 'constructor: (cons _%e23487%_ '())))
                          '#f))))
               (if _%$e23490%_ _%$e23490%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23532%_
                                                     (let* ((_%properties23497%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22552%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23512%_
                     (let ((_%$e23500%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22552%_))))
                       (if _%$e23500%_
                           ((lambda (_%print23504%_)
                              (let ((_%print23507%_
                                     (if (eq? _%print23504%_ '#t)
                                         _%slots22551%_
                                         _%print23504%_)))
                                (cons (cons 'print: _%print23507%_)
                                      _%properties23497%_)))
                            _%$e23500%_)
                           _%properties23497%_)))
                    (_%properties23527%_
                     (let ((_%$e23515%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22552%_))))
                       (if _%$e23515%_
                           ((lambda (_%equal23519%_)
                              (let ((_%equal23522%_
                                     (if (eq? _%equal23519%_ '#t)
                                         _%slots22551%_
                                         _%equal23519%_)))
                                (cons (cons 'equal: _%equal23522%_)
                                      _%properties23512%_)))
                            _%$e23515%_)
                           _%properties23512%_))))
               _%properties23527%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23573%_
                                                     (if (null? _%properties23532%_)
                                                         '()
                                                         (let* ((_%g2353523543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2353623539%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2353623539%_)))
                        (_%g2353423569%_
                         (lambda (_%g2353623547%_)
                           ((lambda (_%L23550%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%L23550%_ '()))
                                          '())))
                            _%g2353623547%_))))
                   (_%g2353423569%_ _%properties23532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23585%_
                                                     (let ((_%$e23576%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22552%_)))
                                                       (if _%$e23576%_
                                                           ((lambda (_%metaclass23580%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23580%_)
                          _%metaclass23580%_
                          '#f))
                    _%$e23576%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23588%_
                                                     (if _%metaclass23585%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23591%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22552%_)))
                                                    (_%type-struct23594%_
                                                     (cons 'struct:
                                                           (cons _%struct?22566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23597%_
                                                     (cons 'final:
                                                           (cons _%final?23591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2360023617%_
                                                     (lambda (_%g2360123613%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2360123613%_)))
                                                    (_%g2359924603%_
                                                     (lambda (_%g2360123621%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2360123621%_)
                                                           (let ((_g27222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2360123621%_ '0)))
                     (begin
                       (let ((_g27223_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27222_)
                                    (##values-length _g27222_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27223_ 2)))
                             (error "Context expects 2 values" _g27223_)))
                       (let ((_%target2360323624%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27222_ 0)))
                             (_%tl2360523627%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27222_ 1))))
                         (if (gx#stx-null? _%tl2360523627%_)
                             (letrec ((_%loop2360623630%_
                                       (lambda (_%hd2360423634%_
                                                _%type-body2361023637%_)
                                         (if (gx#stx-pair? _%hd2360423634%_)
                                             (let ((_%e2360723640%_
                                                    (gx#syntax-e
                                                     _%hd2360423634%_)))
                                               (let ((_%lp-hd2360823644%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2360723640%_)))
                                                     (_%lp-tl2360923647%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2360723640%_))))
                                                 (_%loop2360623630%_
                                                  _%lp-tl2360923647%_
                                                  (cons _%lp-hd2360823644%_
                                                        _%type-body2361023637%_))))
                                             (let ((_%type-body2361123650%_
                                                    (reverse _%type-body2361023637%_)))
                                               ((lambda (_%L23654%_)
                                                  (let* ((_%g2367523683%_
                                                          (lambda (_%g2367623679%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2367623679%_)))
                                                         (_%g2367424591%_
                                                          (lambda (_%g2367623687%_)
                                                            ((lambda (_%L23690%_)
                                                               (let* ((_%g2370323711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2370423707%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2370423707%_)))
                              (_%g2370224520%_
                               (lambda (_%g2370423715%_)
                                 ((lambda (_%L23718%_)
                                    (let* ((_%g2373123739%_
                                            (lambda (_%g2373223735%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2373223735%_)))
                                           (_%g2373024485%_
                                            (lambda (_%g2373223743%_)
                                              ((lambda (_%L23746%_)
                                                 (let* ((_%g2375923767%_
                                                         (lambda (_%g2376023763%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2376023763%_)))
                                                        (_%g2375824399%_
                                                         (lambda (_%g2376023771%_)
                                                           ((lambda (_%L23774%_)
                                                              (let* ((_%g2378723795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2378823791%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2378823791%_)))
                             (_%g2378624387%_
                              (lambda (_%g2378823799%_)
                                ((lambda (_%L23802%_)
                                   (let* ((_%g2381523823%_
                                           (lambda (_%g2381623819%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2381623819%_)))
                                          (_%g2381424383%_
                                           (lambda (_%g2381623827%_)
                                             ((lambda (_%L23830%_)
                                                (let* ((_%g2384323851%_
                                                        (lambda (_%g2384423847%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2384423847%_)))
                                                       (_%g2384224379%_
                                                        (lambda (_%g2384423855%_)
                                                          ((lambda (_%L23858%_)
                                                             (let* ((_%g2387123879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2387223875%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2387223875%_)))
                            (_%g2387024344%_
                             (lambda (_%g2387223883%_)
                               ((lambda (_%L23886%_)
                                  (let* ((_%g2389923907%_
                                          (lambda (_%g2390023903%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2390023903%_)))
                                         (_%g2389824273%_
                                          (lambda (_%g2390023911%_)
                                            ((lambda (_%L23914%_)
                                               (let* ((_%g2392723935%_
                                                       (lambda (_%g2392823931%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2392823931%_)))
                                                      (_%g2392624269%_
                                                       (lambda (_%g2392823939%_)
                                                         ((lambda (_%L23942%_)
                                                            (let* ((_%g2395523963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2395623959%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2395623959%_)))
                           (_%g2395424265%_
                            (lambda (_%g2395623967%_)
                              ((lambda (_%L23970%_)
                                 (let* ((_%g2398323991%_
                                         (lambda (_%g2398423987%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2398423987%_)))
                                        (_%g2398224261%_
                                         (lambda (_%g2398423995%_)
                                           ((lambda (_%L23998%_)
                                              (let* ((_%g2401124019%_
                                                      (lambda (_%g2401224015%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2401224015%_)))
                                                     (_%g2401024235%_
                                                      (lambda (_%g2401224023%_)
                                                        ((lambda (_%L24026%_)
                                                           (let* ((_%g2403924047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2404024043%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2404024043%_)))
                          (_%g2403824209%_
                           (lambda (_%g2404024051%_)
                             ((lambda (_%L24054%_)
                                (let* ((_%g2406724075%_
                                        (lambda (_%g2406824071%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2406824071%_)))
                                       (_%g2406624183%_
                                        (lambda (_%g2406824079%_)
                                          ((lambda (_%L24082%_)
                                             (let* ((_%g2409524103%_
                                                     (lambda (_%g2409624099%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2409624099%_)))
                                                    (_%g2409424157%_
                                                     (lambda (_%g2409624107%_)
                                                       ((lambda (_%L24110%_)
                                                          (let* ((_%g2412324131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2412424127%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2412424127%_)))
                         (_%g2412224153%_
                          (lambda (_%g2412424135%_)
                            ((lambda (_%L24138%_)
                               (_%wrap22554%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%L23690%_
                                            (cons _%L24138%_ '())))))
                             _%g2412424135%_))))
                    (_%g2412224153%_
                     (_%wrap22554%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%L22584%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%L23718%_
                                                          (cons 'name:
                                                                (cons _%L23746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%L23802%_
                                          (cons 'super:
                                                (cons _%L23774%_
                                                      (cons 'struct?:
                                                            (cons _%L23830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%L23858%_
                                      (cons 'metaclass:
                                            (cons _%L23886%_
                                                  (cons 'constructor-method:
                                                        (cons _%L23914%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L23942%_
                                  (cons 'constructor:
                                        (cons _%L23970%_
                                              (cons 'predicate:
                                                    (cons _%L23998%_
                                                          (cons 'accessors:
                                                                (cons _%L24026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%L24054%_
                                          (cons 'unchecked-accessors:
                                                (cons _%L24082%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%L24110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2409624107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2409424157%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%L23267%_
                                                         _%L22766%_)
                                                        (foldr (lambda (_%g2416024167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2416124170%_
                                _%g2416224172%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2416124170%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2416024167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2416224172%_))
                       (begin
                         (gx#syntax-check-splice-targets _%L23409%_ _%L22982%_)
                         (foldr (lambda (_%g2416324175%_
                                         _%g2416424178%_
                                         _%g2416524180%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2416424178%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2416324175%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2416524180%_))
                                '()
                                _%L23409%_
                                _%L22982%_))
                       _%L23267%_
                       _%L22766%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2406824079%_))))
                                  (_%g2406624183%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%L23196%_
                                            _%L22766%_)
                                           (foldr (lambda (_%g2418624193%_
                                                           _%g2418724196%_
                                                           _%g2418824198%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2418724196%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2418624193%_ '()))
                                          '()))))
                  _%g2418824198%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L23338%_
                                                     _%L22982%_)
                                                    (foldr (lambda (_%g2418924201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2419024204%_
                            _%g2419124206%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2419024204%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2418924201%_
                                                               '()))
                                                   '()))))
                           _%g2419124206%_))
                   '()
                   _%L23338%_
                   _%L22982%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%L23196%_
                                                  _%L22766%_))))))
                              _%g2404024051%_))))
                     (_%g2403824209%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%L22908%_
                               _%L22766%_)
                              (foldr (lambda (_%g2421224219%_
                                              _%g2421324222%_
                                              _%g2421424224%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2421324222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2421224219%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2421424224%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%L23125%_
                                        _%L22982%_)
                                       (foldr (lambda (_%g2421524227%_
                                                       _%g2421624230%_
                                                       _%g2421724232%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2421624230%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2421524227%_ '()))
                                      '()))))
              _%g2421724232%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L23125%_
                                              _%L22982%_))
                                     _%L22908%_
                                     _%L22766%_))))))
                 _%g2401224023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2401024235%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%L22837%_
                                                          _%L22766%_)
                                                         (foldr (lambda (_%g2423824245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2423924248%_
                                 _%g2424024250%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2423924248%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2423824245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2424024250%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%L23054%_
                           _%L22982%_)
                          (foldr (lambda (_%g2424124253%_
                                          _%g2424224256%_
                                          _%g2424324258%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2424224256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2424124253%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2424324258%_))
                                 '()
                                 _%L23054%_
                                 _%L22982%_))
                        _%L22837%_
                        _%L22766%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2398423995%_))))
                                   (_%g2398224261%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%L22671%_ '())))))
                               _%g2395623967%_))))
                      (_%g2395424265%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%L22643%_ '())))))
                  _%g2392823939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2392624269%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%L22615%_
                                                              '())))))
                                             _%g2390023911%_))))
                                    (_%g2389824273%_
                                     (if (null? _%type-constructor23494%_)
                                         '#f
                                         (let* ((_%g2427724292%_
                                                 (lambda (_%g2427824288%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2427824288%_)))
                                                (_%g2427624340%_
                                                 (lambda (_%g2427824296%_)
                                                   (if (gx#stx-pair?
                                                        _%g2427824296%_)
                                                       (let ((_%e2428024299%_
                                                              (gx#syntax-e
                                                               _%g2427824296%_)))
                                                         (let ((_%hd2428124303%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2428024299%_)))
                       (_%tl2428224306%_
                        (let () (declare (not safe)) (##cdr _%e2428024299%_))))
                   (if (gx#stx-datum? _%hd2428124303%_)
                       (let ((_%e2428324309%_ (gx#stx-e _%hd2428124303%_)))
                         (if (equal? _%e2428324309%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2428224306%_)
                                 (let ((_%e2428424313%_
                                        (gx#syntax-e _%tl2428224306%_)))
                                   (let ((_%hd2428524317%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2428424313%_)))
                                         (_%tl2428624320%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2428424313%_))))
                                     (if (gx#stx-null? _%tl2428624320%_)
                                         ((lambda (_%L24323%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L24323%_ '())))
                                          _%hd2428524317%_)
                                         (_%g2427724292%_ _%g2427824296%_))))
                                 (_%g2427724292%_ _%g2427824296%_))
                             (_%g2427724292%_ _%g2427824296%_)))
                       (_%g2427724292%_ _%g2427824296%_))))
               (_%g2427724292%_ _%g2427824296%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2427624340%_
                                            _%type-constructor23494%_))))))
                                _%g2387223883%_))))
                       (_%g2387024344%_
                        (if _%metaclass23585%_
                            (let* ((_%g2434824356%_
                                    (lambda (_%g2434924352%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2434924352%_)))
                                   (_%g2434724375%_
                                    (lambda (_%g2434924360%_)
                                      ((lambda (_%L24363%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%L24363%_ '())))
                                       _%g2434924360%_))))
                              (_%g2434724375%_ _%metaclass23585%_))
                            '#f))))
                   _%g2384423855%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2384224379%_
                                                   _%final?23591%_)))
                                              _%g2381623827%_))))
                                     (_%g2381424383%_ _%struct?22566%_)))
                                 _%g2378823799%_))))
                        (_%g2378624387%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2439024393%_
                                                     _%g2439124396%_)
                                              (cons _%g2439024393%_
                                                    _%g2439124396%_))
                                            '()
                                            _%L22766%_)
                                     '())))))
                    _%g2376023771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2375824399%_
                                                    (let* ((_%g2440324420%_
                                                            (lambda (_%g2440424416%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2440424416%_)))
                                                           (_%g2440224481%_
                                                            (lambda (_%g2440424424%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2440424424%_)
                          (let ((_g27224_
                                 (gx#syntax-split-splice _%g2440424424%_ '0)))
                            (begin
                              (let ((_g27225_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27224_)
                                           (##values-length _g27224_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27225_ 2)))
                                    (error "Context expects 2 values"
                                           _g27225_)))
                              (let ((_%target2440624427%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27224_ 0)))
                                    (_%tl2440824430%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27224_ 1))))
                                (if (gx#stx-null? _%tl2440824430%_)
                                    (letrec ((_%loop2440924433%_
                                              (lambda (_%hd2440724437%_
                                                       _%super-id2441324440%_)
                                                (if (gx#stx-pair?
                                                     _%hd2440724437%_)
                                                    (let ((_%e2441024443%_
                                                           (gx#syntax-e
                                                            _%hd2440724437%_)))
                                                      (let ((_%lp-hd2441124447%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2441024443%_)))
                    (_%lp-tl2441224450%_
                     (let () (declare (not safe)) (##cdr _%e2441024443%_))))
                (_%loop2440924433%_
                 _%lp-tl2441224450%_
                 (cons _%lp-hd2441124447%_ _%super-id2441324440%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2441424453%_
                                                           (reverse _%super-id2441324440%_)))
                                                      ((lambda (_%L24457%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2447224475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2447324478%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2447224475%_ '()))
                                      _%g2447324478%_))
                              '()
                              _%L24457%_)))
               _%super-id2441424453%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2440924433%_
                                       _%target2440624427%_
                                       '()))
                                    (_%g2440324420%_ _%g2440424424%_)))))
                          (_%g2440324420%_ _%g2440424424%_)))))
              (_%g2440224481%_ _%super-ref22550%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2373223743%_))))
                                      (_%g2373024485%_
                                       (let* ((_%g2448924497%_
                                               (lambda (_%g2449024493%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2449024493%_)))
                                              (_%g2448824516%_
                                               (lambda (_%g2449024501%_)
                                                 ((lambda (_%L24504%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%L24504%_
                                                                '())))
                                                  _%g2449024501%_))))
                                         (_%g2448824516%_
                                          (cadr _%type-name23472%_))))))
                                  _%g2370423715%_))))
                         (_%g2370224520%_
                          (let* ((_%g2452424539%_
                                  (lambda (_%g2452524535%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2452524535%_)))
                                 (_%g2452324587%_
                                  (lambda (_%g2452524543%_)
                                    (if (gx#stx-pair? _%g2452524543%_)
                                        (let ((_%e2452724546%_
                                               (gx#syntax-e _%g2452524543%_)))
                                          (let ((_%hd2452824550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2452724546%_)))
                                                (_%tl2452924553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2452724546%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2452824550%_)
                                                (let ((_%e2453024556%_
                                                       (gx#stx-e
                                                        _%hd2452824550%_)))
                                                  (if (equal? _%e2453024556%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2452924553%_)
                                                          (let ((_%e2453124560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2452924553%_)))
                    (let ((_%hd2453224564%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2453124560%_)))
                          (_%tl2453324567%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2453124560%_))))
                      (if (gx#stx-null? _%tl2453324567%_)
                          ((lambda (_%L24570%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%L24570%_ '())))
                           _%hd2453224564%_)
                          (_%g2452424539%_ _%g2452524543%_))))
                  (_%g2452424539%_ _%g2452524543%_))
              (_%g2452424539%_ _%g2452524543%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2452424539%_
                                                 _%g2452524543%_))))
                                        (_%g2452424539%_ _%g2452524543%_)))))
                            (_%g2452324587%_ _%type-id23479%_)))))
                     _%g2367623687%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2367424591%_
                                                     (_%wrap22554%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%L22615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L22699%_
                                (cons _%L22643%_
                                      (cons _%L22671%_
                                            (foldr (lambda (_%g2459424597%_
                                                            _%g2459524600%_)
                                                     (cons _%g2459424597%_
                                                           _%g2459524600%_))
                                                   '()
                                                   _%L23654%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2361123650%_))))))
                               (_%loop2360623630%_ _%target2360323624%_ '()))
                             (_%g2360023617%_ _%g2360123621%_)))))
                   (_%g2360023617%_ _%g2360123621%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2359924603%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23465%_
                                                                _%type-slots23444%_)
                                                         _%type-properties23573%_)
                                                  _%type-metaclass23588%_)
                                           _%type-final23597%_)
                                    _%type-struct23594%_)
                             _%type-constructor23494%_)
                      _%type-name23472%_)
               _%type-id23479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2336623405%_))))))
                          (_%loop2336123385%_ _%target2335823379%_ '()))
                        (_%g2335523372%_ _%g2335623376%_)))))
              (_%g2335523372%_ _%g2335623376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2335424607%_
                                           (gx#stx-map
                                            (lambda (_%g2461024612%_)
                                              (_%make-id22556%_
                                               '"&"
                                               _%g2461024612%_))
                                            (foldr (lambda (_%g2461524618%_
                                                            _%g2461624621%_)
                                                     (cons _%g2461524618%_
                                                           _%g2461624621%_))
                                                   '()
                                                   _%L23125%_)))))
                                      _%mixin-ugetf2329523334%_))))))
                     (_%loop2329023314%_ _%target2328723308%_ '()))
                   (_%g2328423301%_ _%g2328523305%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2328423301%_
                                                  _%g2328523305%_)))))
                                     (_%g2328324624%_
                                      (gx#stx-map
                                       (lambda (_%g2462724629%_)
                                         (_%make-id22556%_
                                          '"&"
                                          _%g2462724629%_))
                                       (foldr (lambda (_%g2463224635%_
                                                       _%g2463324638%_)
                                                (cons _%g2463224635%_
                                                      _%g2463324638%_))
                                              '()
                                              _%L23054%_)))))
                                 _%usetf2322423263%_))))))
                (_%loop2321923243%_ _%target2321623237%_ '()))
              (_%g2321323230%_ _%g2321423234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2321323230%_
                                             _%g2321423234%_)))))
                                (_%g2321224641%_
                                 (gx#stx-map
                                  (lambda (_%g2464424646%_)
                                    (_%make-id22556%_ '"&" _%g2464424646%_))
                                  (foldr (lambda (_%g2464924652%_
                                                  _%g2465024655%_)
                                           (cons _%g2464924652%_
                                                 _%g2465024655%_))
                                         '()
                                         _%L22908%_)))))
                            _%ugetf2315323192%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2314823172%_
                                                    _%target2314523166%_
                                                    '()))
                                                 (_%g2314223159%_
                                                  _%g2314323163%_)))))
                                       (_%g2314223159%_ _%g2314323163%_)))))
                           (_%g2314124658%_
                            (gx#stx-map
                             (lambda (_%g2466124663%_)
                               (_%make-id22556%_ '"&" _%g2466124663%_))
                             (foldr (lambda (_%g2466624669%_ _%g2466724672%_)
                                      (cons _%g2466624669%_ _%g2466724672%_))
                                    '()
                                    _%L22837%_)))))
                       _%mixin-setf2308223121%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2307723101%_
                                               _%target2307423095%_
                                               '()))
                                            (_%g2307123088%_
                                             _%g2307223092%_)))))
                                  (_%g2307123088%_ _%g2307223092%_)))))
                      (_%g2307024675%_
                       (gx#stx-map
                        (lambda (_%g2467824680%_)
                          (_%make-id22556%_
                           _%name22560%_
                           '"-"
                           _%g2467824680%_
                           '"-set!"))
                        _%mixin-slots22925%_))))
                  _%mixin-getf2301123050%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2300623030%_
                                          _%target2300323024%_
                                          '()))
                                       (_%g2300023017%_ _%g2300123021%_)))))
                             (_%g2300023017%_ _%g2300123021%_)))))
                 (_%g2299924684%_
                  (gx#stx-map
                   (lambda (_%g2468724689%_)
                     (_%make-id22556%_ _%name22560%_ '"-" _%g2468724689%_))
                   _%mixin-slots22925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2293922978%_))))))
                                    (_%loop2293422958%_
                                     _%target2293122952%_
                                     '()))
                                  (_%g2292822945%_ _%g2292922949%_)))))
                        (_%g2292822945%_ _%g2292922949%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2292724693%_
                                                     _%mixin-slots22925%_)))
                                                _%setf2286522904%_))))))
                               (_%loop2286022884%_ _%target2285722878%_ '()))
                             (_%g2285422871%_ _%g2285522875%_)))))
                   (_%g2285422871%_ _%g2285522875%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2285324697%_
                                                (gx#stx-map
                                                 (lambda (_%g2470024702%_)
                                                   (_%make-id22556%_
                                                    _%name22560%_
                                                    '"-"
                                                    _%g2470024702%_
                                                    '"-set!"))
                                                 _%slots22551%_))))
                                           _%getf2279422833%_))))))
                          (_%loop2278922813%_ _%target2278622807%_ '()))
                        (_%g2278322800%_ _%g2278422804%_)))))
              (_%g2278322800%_ _%g2278422804%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2278224706%_
                                           (gx#stx-map
                                            (lambda (_%g2470924711%_)
                                              (_%make-id22556%_
                                               _%name22560%_
                                               '"-"
                                               _%g2470924711%_))
                                            _%slots22551%_))))
                                      _%slot2272322762%_))))))
                     (_%loop2271822742%_ _%target2271522736%_ '()))
                   (_%g2271222729%_ _%g2271322733%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2271222729%_
                                                  _%g2271322733%_)))))
                                     (_%g2271124715%_ _%slots22551%_)))
                                 _%g2268522696%_))))
                        (_%g2268324719%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22563%_)))))
                    _%g2265722668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2265524723%_
                                                    (_%make-id22556%_
                                                     _%name22560%_
                                                     '"?"))))
                                               _%g2262922640%_))))
                                      (_%g2262724727%_
                                       (_%make-id22556%_
                                        '"make-"
                                        _%name22560%_))))
                                  _%g2260122612%_))))
                         (_%g2259924731%_
                          (_%make-id22556%_ _%name22560%_ '"::t"))))
                     _%g2257022581%_))))
            (_%g2256824735%_ _%id22549%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24802%_)
        (let* ((_%g2480624825%_
                (lambda (_%g2480724821%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2480724821%_)))
               (_%g2480524882%_
                (lambda (_%g2480724829%_)
                  (if (gx#stx-pair? _%g2480724829%_)
                      (let ((_%e2481124832%_ (gx#syntax-e _%g2480724829%_)))
                        (let ((_%hd2481224836%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2481124832%_)))
                              (_%tl2481324839%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2481124832%_))))
                          (if (gx#stx-pair? _%tl2481324839%_)
                              (let ((_%e2481424842%_
                                     (gx#syntax-e _%tl2481324839%_)))
                                (let ((_%hd2481524846%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2481424842%_)))
                                      (_%tl2481624849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2481424842%_))))
                                  (if (gx#stx-pair? _%tl2481624849%_)
                                      (let ((_%e2481724852%_
                                             (gx#syntax-e _%tl2481624849%_)))
                                        (let ((_%hd2481824856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2481724852%_)))
                                              (_%tl2481924859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2481724852%_))))
                                          ((lambda (_%L24862%_
                                                    _%L24864%_
                                                    _%L24865%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%L24865%_
                                                         (cons _%L24864%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L24862%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2481924859%_
                                           _%hd2481824856%_
                                           _%hd2481524846%_)))
                                      (_%g2480624825%_ _%g2480724829%_))))
                              (_%g2480624825%_ _%g2480724829%_))))
                      (_%g2480624825%_ _%g2480724829%_)))))
          (_%g2480524882%_ _%$stx24802%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24886%_)
        (letrec ((_%generate24889%_
                  (lambda (_%hd24973%_ _%slots24975%_ _%body24976%_)
                    (let* ((_%__stx2674126742%_ _%hd24973%_)
                           (_%g2497924991%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2674126742%_))))
                      (let ((_%__kont2674426745%_
                             (lambda (_%L25019%_ _%L25021%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24886%_
                                _%L25021%_
                                (gx#syntax->list _%L25019%_)
                                _%slots24975%_
                                _%body24976%_)))
                            (_%__kont2674626747%_
                             (lambda ()
                               (if (gx#identifier? _%hd24973%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24886%_
                                    _%hd24973%_
                                    '()
                                    _%slots24975%_
                                    _%body24976%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _%stx24886%_
                                    _%hd24973%_)))))
                        (let ((_%__match2675426755%_
                               (lambda (_%e2498325009%_
                                        _%hd2498425013%_
                                        _%tl2498525016%_)
                                 (let ((_%L25019%_ _%tl2498525016%_)
                                       (_%L25021%_ _%hd2498425013%_))
                                   (if (and (gx#stx-list? _%L25019%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%L25019%_))
                                       (_%__kont2674426745%_
                                        _%L25019%_
                                        _%L25021%_)
                                       (_%__kont2674626747%_))))))
                          (if (gx#stx-pair? _%__stx2674126742%_)
                              (let ((_%e2498325009%_
                                     (gx#syntax-e _%__stx2674126742%_)))
                                (let ((_%tl2498525016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2498325009%_)))
                                      (_%hd2498425013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2498325009%_))))
                                  (_%__match2675426755%_
                                   _%e2498325009%_
                                   _%hd2498425013%_
                                   _%tl2498525016%_)))
                              (_%__kont2674626747%_))))))))
          (let* ((_%g2489224911%_
                  (lambda (_%g2489324907%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2489324907%_)))
                 (_%g2489124969%_
                  (lambda (_%g2489324915%_)
                    (if (gx#stx-pair? _%g2489324915%_)
                        (let ((_%e2489724918%_ (gx#syntax-e _%g2489324915%_)))
                          (let ((_%hd2489824922%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2489724918%_)))
                                (_%tl2489924925%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2489724918%_))))
                            (if (gx#stx-pair? _%tl2489924925%_)
                                (let ((_%e2490024928%_
                                       (gx#syntax-e _%tl2489924925%_)))
                                  (let ((_%hd2490124932%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2490024928%_)))
                                        (_%tl2490224935%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2490024928%_))))
                                    (if (gx#stx-pair? _%tl2490224935%_)
                                        (let ((_%e2490324938%_
                                               (gx#syntax-e _%tl2490224935%_)))
                                          (let ((_%hd2490424942%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2490324938%_)))
                                                (_%tl2490524945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2490324938%_))))
                                            ((lambda (_%L24948%_
                                                      _%L24950%_
                                                      _%L24951%_)
                                               (if (and (gx#identifier-list?
                                                         _%L24950%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%L24948%_))
                                                   (_%generate24889%_
                                                    _%L24951%_
                                                    _%L24950%_
                                                    _%L24948%_)
                                                   (_%g2489224911%_
                                                    _%g2489324915%_)))
                                             _%tl2490524945%_
                                             _%hd2490424942%_
                                             _%hd2490124932%_)))
                                        (_%g2489224911%_ _%g2489324915%_))))
                                (_%g2489224911%_ _%g2489324915%_))))
                        (_%g2489224911%_ _%g2489324915%_)))))
            (_%g2489124969%_ _%stx24886%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25038%_)
        (letrec ((_%wrap25041%_
                  (lambda (_%e-stx25387%_)
                    (gx#stx-wrap-source
                     _%e-stx25387%_
                     (gx#stx-source _%stx25038%_))))
                 (_%method-opt?25043%_
                  (lambda (_%x25384%_)
                    (let ((__tmp27226 (gx#stx-e _%x25384%_)))
                      (declare (not safe))
                      (##memq __tmp27226 '(rebind:))))))
          (let* ((_%g2504525074%_
                  (lambda (_%g2504625070%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2504625070%_)))
                 (_%g2504425380%_
                  (lambda (_%g2504625078%_)
                    (if (gx#stx-pair? _%g2504625078%_)
                        (let ((_%e2505125081%_ (gx#syntax-e _%g2504625078%_)))
                          (let ((_%hd2505225085%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2505125081%_)))
                                (_%tl2505325088%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2505125081%_))))
                            (if (gx#stx-pair? _%tl2505325088%_)
                                (let ((_%e2505425091%_
                                       (gx#syntax-e _%tl2505325088%_)))
                                  (let ((_%hd2505525095%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2505425091%_)))
                                        (_%tl2505625098%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2505425091%_))))
                                    (if (gx#stx-pair? _%hd2505525095%_)
                                        (let ((_%e2505725101%_
                                               (gx#syntax-e _%hd2505525095%_)))
                                          (let ((_%hd2505825105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2505725101%_)))
                                                (_%tl2505925108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2505725101%_))))
                                            (if (gx#identifier?
                                                 _%hd2505825105%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27227_|
                                                     _%hd2505825105%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2505925108%_)
                                                        (let ((_%e2506025111%_
                                                               (gx#syntax-e
                                                                _%tl2505925108%_)))
                                                          (let ((_%hd2506125115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2506025111%_)))
                        (_%tl2506225118%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2506025111%_))))
                    (if (gx#stx-pair? _%tl2506225118%_)
                        (let ((_%e2506325121%_ (gx#syntax-e _%tl2506225118%_)))
                          (let ((_%hd2506425125%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2506325121%_)))
                                (_%tl2506525128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2506325121%_))))
                            (if (gx#stx-null? _%tl2506525128%_)
                                (if (gx#stx-pair? _%tl2505625098%_)
                                    (let ((_%e2506625131%_
                                           (gx#syntax-e _%tl2505625098%_)))
                                      (let ((_%hd2506725135%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2506625131%_)))
                                            (_%tl2506825138%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2506625131%_))))
                                        ((lambda (_%L25141%_
                                                  _%L25143%_
                                                  _%L25144%_
                                                  _%L25145%_)
                                           (if (and (gx#identifier? _%L25145%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                       _%L25144%_))
                                                    (gx#stx-plist?
                                                     _%L25141%_
                                                     _%method-opt?25043%_))
                                               (let* ((_%klass25172%_
                                                       (gx#syntax-local-value
                                                        _%L25144%_))
                                                      (_%rebind?25175%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%L25141%_)))
                                                      (_%g2517825186%_
                                                       (lambda (_%g2517925182%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2517925182%_)))
                                                      (_%g2517725370%_
                                                       (lambda (_%g2517925190%_)
                                                         ((lambda (_%L25193%_)
                                                            (let* ((_%g2520825216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2520925212%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2520925212%_)))
                           (_%g2520725366%_
                            (lambda (_%g2520925220%_)
                              ((lambda (_%L25223%_)
                                 (let* ((_%g2523625244%_
                                         (lambda (_%g2523725240%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2523725240%_)))
                                        (_%g2523525362%_
                                         (lambda (_%g2523725248%_)
                                           ((lambda (_%L25251%_)
                                              (let* ((_%g2526425272%_
                                                      (lambda (_%g2526525268%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2526525268%_)))
                                                     (_%g2526325358%_
                                                      (lambda (_%g2526525276%_)
                                                        ((lambda (_%L25279%_)
                                                           (let* ((_%g2529225300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2529325296%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2529325296%_)))
                          (_%g2529125354%_
                           (lambda (_%g2529325304%_)
                             ((lambda (_%L25307%_)
                                (let* ((_%g2532025328%_
                                        (lambda (_%g2532125324%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2532125324%_)))
                                       (_%g2531925350%_
                                        (lambda (_%g2532125332%_)
                                          ((lambda (_%L25335%_)
                                             (_%wrap25041%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%L25279%_
                                                          (cons _%L25335%_
                                                                '())))))
                                           _%g2532125332%_))))
                                  (_%g2531925350%_
                                   (_%wrap25041%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%L25193%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L25145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%L25223%_ (cons _%L25307%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2529325304%_))))
                     (_%g2529125354%_ _%rebind?25175%_)))
                 _%g2526525276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2526325358%_
                                                 (_%wrap25041%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%L25223%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%L25251%_
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
                                                      (cons _%L25193%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25145%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%L25143%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2523725248%_))))
                                   (_%g2523525362%_
                                    (gx#stx-identifier
                                     _%L25144%_
                                     '@next-method))))
                               _%g2520925220%_))))
                      (_%g2520725366%_
                       (gx#stx-identifier
                        _%L25144%_
                        _%L25144%_
                        '"::"
                        _%L25145%_))))
                  _%g2517925190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2517725370%_
                                                  (let ((__obj27018
                                                         _%klass25172%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27018
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27018
                                                           '12
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj27018
                                                         'type-descriptor)))))
                                               (if (gx#identifier? _%L25145%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                          _%L25144%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25038%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; expected type identifier"
                                                        _%stx25038%_
                                                        _%L25144%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25038%_
                                                    _%L25145%_))))
                                         _%tl2506825138%_
                                         _%hd2506725135%_
                                         _%hd2506425125%_
                                         _%hd2506125115%_)))
                                    (_%g2504525074%_ _%g2504625078%_))
                                (_%g2504525074%_ _%g2504625078%_))))
                        (_%g2504525074%_ _%g2504625078%_))))
                (_%g2504525074%_ _%g2504625078%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2504525074%_
                                                     _%g2504625078%_))
                                                (_%g2504525074%_
                                                 _%g2504625078%_))))
                                        (_%g2504525074%_ _%g2504625078%_))))
                                (_%g2504525074%_ _%g2504625078%_))))
                        (_%g2504525074%_ _%g2504625078%_)))))
            (_%g2504425380%_ _%stx25038%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25390%_)
        (letrec ((_%dotted-identifier?25393%_
                  (lambda (_%id26026%_)
                    (if (gx#identifier? _%id26026%_)
                        (let ((_%id-str26029%_
                               (symbol->string (gx#stx-e _%id26026%_))))
                          (if (string-index _%id-str26029%_ '#\.)
                              (let* ((_%split26032%_
                                      (string-split _%id-str26029%_ '#\.))
                                     (__tmp27228 (length _%split26032%_)))
                                (declare (not safe))
                                (##fx= __tmp27228 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25395%_
                  (lambda (_%id26015%_)
                    (let* ((_%id-str26018%_
                            (symbol->string (gx#stx-e _%id26015%_)))
                           (_%split26021%_
                            (string-split _%id-str26018%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26015%_
                             (car _%split26021%_))
                            (cons (gx#stx-identifier
                                   _%id26015%_
                                   (cadr _%split26021%_))
                                  '()))))))
          (let* ((_%__stx2675726758%_ _%stx25390%_)
                 (_%g2540025487%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2675726758%_))))
            (let ((_%__kont2676026761%_
                   (lambda (_%L25908%_ _%L25910%_ _%L25911%_)
                     (let* ((_%g2593925954%_
                             (lambda (_%g2594025950%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2594025950%_)))
                            (_%g2593826007%_
                             (lambda (_%g2594025958%_)
                               (if (gx#stx-pair? _%g2594025958%_)
                                   (let ((_%e2594325961%_
                                          (gx#syntax-e _%g2594025958%_)))
                                     (let ((_%hd2594425965%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2594325961%_)))
                                           (_%tl2594525968%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2594325961%_))))
                                       (if (gx#stx-pair? _%tl2594525968%_)
                                           (let ((_%e2594625971%_
                                                  (gx#syntax-e
                                                   _%tl2594525968%_)))
                                             (let ((_%hd2594725975%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2594625971%_)))
                                                   (_%tl2594825978%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2594625971%_))))
                                               (if (gx#stx-null?
                                                    _%tl2594825978%_)
                                                   ((lambda (_%L25981%_
                                                             _%L25983%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%L25983%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L25981%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2599826001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2599926004%_)
                   (cons _%g2599826001%_ _%g2599926004%_))
                 '()
                 _%L25910%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2594725975%_
                                                    _%hd2594425965%_)
                                                   (_%g2593925954%_
                                                    _%g2594025958%_))))
                                           (_%g2593925954%_ _%g2594025958%_))))
                                   (_%g2593925954%_ _%g2594025958%_)))))
                       (_%g2593826007%_ (_%split-dotted25395%_ _%L25911%_)))))
                  (_%__kont2676426765%_
                   (lambda (_%L25750%_ _%L25752%_)
                     (let* ((_%g2576925784%_
                             (lambda (_%g2577025780%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2577025780%_)))
                            (_%g2576825837%_
                             (lambda (_%g2577025788%_)
                               (if (gx#stx-pair? _%g2577025788%_)
                                   (let ((_%e2577325791%_
                                          (gx#syntax-e _%g2577025788%_)))
                                     (let ((_%hd2577425795%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2577325791%_)))
                                           (_%tl2577525798%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2577325791%_))))
                                       (if (gx#stx-pair? _%tl2577525798%_)
                                           (let ((_%e2577625801%_
                                                  (gx#syntax-e
                                                   _%tl2577525798%_)))
                                             (let ((_%hd2577725805%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2577625801%_)))
                                                   (_%tl2577825808%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2577625801%_))))
                                               (if (gx#stx-null?
                                                    _%tl2577825808%_)
                                                   ((lambda (_%L25811%_
                                                             _%L25813%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%L25813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25811%_ '()))
                                (foldr (lambda (_%g2582825831%_
                                                _%g2582925834%_)
                                         (cons _%g2582825831%_
                                               _%g2582925834%_))
                                       '()
                                       _%L25750%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2577725805%_
                                                    _%hd2577425795%_)
                                                   (_%g2576925784%_
                                                    _%g2577025788%_))))
                                           (_%g2576925784%_ _%g2577025788%_))))
                                   (_%g2576925784%_ _%g2577025788%_)))))
                       (_%g2576825837%_ (_%split-dotted25395%_ _%L25752%_)))))
                  (_%__kont2676826769%_
                   (lambda (_%L25654%_ _%L25656%_ _%L25657%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%L25656%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L25657%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2568425687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2568525690%_)
                          (cons _%g2568425687%_ _%g2568525690%_))
                        '()
                        _%L25654%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2677226773%_
                   (lambda (_%L25554%_ _%L25556%_ _%L25557%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%L25556%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L25557%_ '()))
                                       (foldr (lambda (_%g2557825581%_
                                                       _%g2557925584%_)
                                                (cons _%g2557825581%_
                                                      _%g2557925584%_))
                                              '()
                                              _%L25554%_)))))))
              (let* ((_%__match2687626877%_
                      (lambda (_%e2546425494%_
                               _%hd2546525498%_
                               _%tl2546625501%_
                               _%e2546725504%_
                               _%hd2546825508%_
                               _%tl2546925511%_
                               _%e2547025514%_
                               _%hd2547125518%_
                               _%tl2547225521%_
                               _%__splice2677426775%_
                               _%target2547325524%_
                               _%tl2547525527%_)
                        (letrec ((_%loop2547625530%_
                                  (lambda (_%hd2547425534%_ _%arg2548025537%_)
                                    (if (gx#stx-pair? _%hd2547425534%_)
                                        (let ((_%e2547725540%_
                                               (gx#syntax-e _%hd2547425534%_)))
                                          (let ((_%lp-tl2547925547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2547725540%_)))
                                                (_%lp-hd2547825544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2547725540%_))))
                                            (_%loop2547625530%_
                                             _%lp-tl2547925547%_
                                             (cons _%lp-hd2547825544%_
                                                   _%arg2548025537%_))))
                                        (let ((_%arg2548125550%_
                                               (reverse _%arg2548025537%_)))
                                          (let ((_%L25554%_ _%arg2548125550%_)
                                                (_%L25556%_ _%hd2547125518%_)
                                                (_%L25557%_ _%hd2546825508%_))
                                            (if (gx#identifier? _%L25557%_)
                                                (_%__kont2677226773%_
                                                 _%L25554%_
                                                 _%L25556%_
                                                 _%L25557%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2540025487%_)))))))))
                          (_%loop2547625530%_ _%target2547325524%_ '()))))
                     (_%__match2685026851%_
                      (lambda (_%e2544325594%_
                               _%hd2544425598%_
                               _%tl2544525601%_
                               _%e2544625604%_
                               _%hd2544725608%_
                               _%tl2544825611%_
                               _%e2544925614%_
                               _%hd2545025618%_
                               _%tl2545125621%_
                               _%__splice2677026771%_
                               _%target2545225624%_
                               _%tl2545425627%_)
                        (letrec ((_%loop2545525630%_
                                  (lambda (_%hd2545325634%_ _%arg2545925637%_)
                                    (if (gx#stx-pair? _%hd2545325634%_)
                                        (let ((_%e2545625640%_
                                               (gx#syntax-e _%hd2545325634%_)))
                                          (let ((_%lp-tl2545825647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2545625640%_)))
                                                (_%lp-hd2545725644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2545625640%_))))
                                            (_%loop2545525630%_
                                             _%lp-tl2545825647%_
                                             (cons _%lp-hd2545725644%_
                                                   _%arg2545925637%_))))
                                        (let ((_%arg2546025650%_
                                               (reverse _%arg2545925637%_)))
                                          (let ((_%L25654%_ _%arg2546025650%_)
                                                (_%L25656%_ _%hd2545025618%_)
                                                (_%L25657%_ _%hd2544725608%_))
                                            (if (and (gx#identifier?
                                                      _%L25657%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2567625679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2567725682%_)
                       (cons _%g2567625679%_ _%g2567725682%_))
                     '()
                     _%L25654%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2676826769%_
                                                 _%L25654%_
                                                 _%L25656%_
                                                 _%L25657%_)
                                                (_%__match2687626877%_
                                                 _%e2544325594%_
                                                 _%hd2544425598%_
                                                 _%tl2544525601%_
                                                 _%e2544625604%_
                                                 _%hd2544725608%_
                                                 _%tl2544825611%_
                                                 _%e2544925614%_
                                                 _%hd2545025618%_
                                                 _%tl2545125621%_
                                                 _%__splice2677026771%_
                                                 _%target2545225624%_
                                                 _%tl2545425627%_))))))))
                          (_%loop2545525630%_ _%target2545225624%_ '()))))
                     (_%__match2683626837%_
                      (lambda (_%e2544325594%_
                               _%hd2544425598%_
                               _%tl2544525601%_
                               _%e2544625604%_
                               _%hd2544725608%_
                               _%tl2544825611%_)
                        (if (gx#stx-pair? _%tl2544825611%_)
                            (let ((_%e2544925614%_
                                   (gx#syntax-e _%tl2544825611%_)))
                              (let ((_%tl2545125621%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2544925614%_)))
                                    (_%hd2545025618%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2544925614%_))))
                                (if (gx#stx-pair/null? _%tl2545125621%_)
                                    (let ((_%__splice2677026771%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2545125621%_
                                            '0)))
                                      (let ((_%tl2545425627%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2677026771%_
                                                '1)))
                                            (_%target2545225624%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2677026771%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2545425627%_)
                                            (_%__match2685026851%_
                                             _%e2544325594%_
                                             _%hd2544425598%_
                                             _%tl2544525601%_
                                             _%e2544625604%_
                                             _%hd2544725608%_
                                             _%tl2544825611%_
                                             _%e2544925614%_
                                             _%hd2545025618%_
                                             _%tl2545125621%_
                                             _%__splice2677026771%_
                                             _%target2545225624%_
                                             _%tl2545425627%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2540025487%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2540025487%_)))))
                            (let () (declare (not safe)) (_%g2540025487%_)))))
                     (_%__match2682426825%_
                      (lambda (_%e2542525700%_
                               _%hd2542625704%_
                               _%tl2542725707%_
                               _%e2542825710%_
                               _%hd2542925714%_
                               _%tl2543025717%_
                               _%__splice2676626767%_
                               _%target2543125720%_
                               _%tl2543325723%_)
                        (letrec ((_%loop2543425726%_
                                  (lambda (_%hd2543225730%_ _%arg2543825733%_)
                                    (if (gx#stx-pair? _%hd2543225730%_)
                                        (let ((_%e2543525736%_
                                               (gx#syntax-e _%hd2543225730%_)))
                                          (let ((_%lp-tl2543725743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2543525736%_)))
                                                (_%lp-hd2543625740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2543525736%_))))
                                            (_%loop2543425726%_
                                             _%lp-tl2543725743%_
                                             (cons _%lp-hd2543625740%_
                                                   _%arg2543825733%_))))
                                        (let ((_%arg2543925746%_
                                               (reverse _%arg2543825733%_)))
                                          (let ((_%L25750%_ _%arg2543925746%_)
                                                (_%L25752%_ _%hd2542925714%_))
                                            (if (_%dotted-identifier?25393%_
                                                 _%L25752%_)
                                                (_%__kont2676426765%_
                                                 _%L25750%_
                                                 _%L25752%_)
                                                (_%__match2683626837%_
                                                 _%e2542525700%_
                                                 _%hd2542625704%_
                                                 _%tl2542725707%_
                                                 _%e2542825710%_
                                                 _%hd2542925714%_
                                                 _%tl2543025717%_))))))))
                          (_%loop2543425726%_ _%target2543125720%_ '()))))
                     (_%__match2682226823%_
                      (lambda (_%e2542525700%_
                               _%hd2542625704%_
                               _%tl2542725707%_
                               _%e2542825710%_
                               _%hd2542925714%_
                               _%tl2543025717%_
                               _%__splice2676626767%_
                               _%target2543125720%_
                               _%tl2543325723%_)
                        (if (gx#stx-null? _%tl2543325723%_)
                            (_%__match2682426825%_
                             _%e2542525700%_
                             _%hd2542625704%_
                             _%tl2542725707%_
                             _%e2542825710%_
                             _%hd2542925714%_
                             _%tl2543025717%_
                             _%__splice2676626767%_
                             _%target2543125720%_
                             _%tl2543325723%_)
                            (if (gx#stx-pair? _%tl2543025717%_)
                                (let ((_%e2544925614%_
                                       (gx#syntax-e _%tl2543025717%_)))
                                  (let ((_%tl2545125621%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2544925614%_)))
                                        (_%hd2545025618%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2544925614%_))))
                                    (if (gx#stx-pair/null? _%tl2545125621%_)
                                        (let ((_%__splice2677026771%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2545125621%_
                                                '0)))
                                          (let ((_%tl2545425627%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2677026771%_
                                                    '1)))
                                                (_%target2545225624%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2677026771%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2545425627%_)
                                                (_%__match2685026851%_
                                                 _%e2542525700%_
                                                 _%hd2542625704%_
                                                 _%tl2542725707%_
                                                 _%e2542825710%_
                                                 _%hd2542925714%_
                                                 _%tl2543025717%_
                                                 _%e2544925614%_
                                                 _%hd2545025618%_
                                                 _%tl2545125621%_
                                                 _%__splice2677026771%_
                                                 _%target2545225624%_
                                                 _%tl2545425627%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2540025487%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2540025487%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2540025487%_))))))
                     (_%__match2680426805%_
                      (lambda (_%e2540525848%_
                               _%hd2540625852%_
                               _%tl2540725855%_
                               _%e2540825858%_
                               _%hd2540925862%_
                               _%tl2541025865%_
                               _%__splice2676226763%_
                               _%target2541125868%_
                               _%tl2541325871%_
                               _%e2542025874%_
                               _%hd2542125878%_
                               _%tl2542225881%_)
                        (letrec ((_%loop2541425884%_
                                  (lambda (_%hd2541225888%_ _%arg2541825891%_)
                                    (if (gx#stx-pair? _%hd2541225888%_)
                                        (let ((_%e2541525894%_
                                               (gx#syntax-e _%hd2541225888%_)))
                                          (let ((_%lp-tl2541725901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2541525894%_)))
                                                (_%lp-hd2541625898%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2541525894%_))))
                                            (_%loop2541425884%_
                                             _%lp-tl2541725901%_
                                             (cons _%lp-hd2541625898%_
                                                   _%arg2541825891%_))))
                                        (let ((_%arg2541925904%_
                                               (reverse _%arg2541825891%_)))
                                          (let ((_%L25908%_ _%hd2542125878%_)
                                                (_%L25910%_ _%arg2541925904%_)
                                                (_%L25911%_ _%hd2540925862%_))
                                            (if (and (_%dotted-identifier?25393%_
                                                      _%L25911%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2593025933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2593125936%_)
                       (cons _%g2593025933%_ _%g2593125936%_))
                     '()
                     _%L25910%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2676026761%_
                                                 _%L25908%_
                                                 _%L25910%_
                                                 _%L25911%_)
                                                (let ((_%__splice2676626767%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2541025865%_
                                                        '0)))
                                                  (let ((_%tl2543325723%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2676626767%_
                                                            '1)))
                                                        (_%target2543125720%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2676626767%_
                                                            '0))))
                                                    (_%__match2682226823%_
                                                     _%e2540525848%_
                                                     _%hd2540625852%_
                                                     _%tl2540725855%_
                                                     _%e2540825858%_
                                                     _%hd2540925862%_
                                                     _%tl2541025865%_
                                                     _%__splice2676626767%_
                                                     _%target2543125720%_
                                                     _%tl2543325723%_))))))))))
                          (_%loop2541425884%_ _%target2541125868%_ '())))))
                (if (gx#stx-pair? _%__stx2675726758%_)
                    (let ((_%e2540525848%_ (gx#syntax-e _%__stx2675726758%_)))
                      (let ((_%tl2540725855%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2540525848%_)))
                            (_%hd2540625852%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2540525848%_))))
                        (if (gx#stx-pair? _%tl2540725855%_)
                            (let ((_%e2540825858%_
                                   (gx#syntax-e _%tl2540725855%_)))
                              (let ((_%tl2541025865%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2540825858%_)))
                                    (_%hd2540925862%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2540825858%_))))
                                (if (gx#stx-pair/null? _%tl2541025865%_)
                                    (if (let ((__tmp27229
                                               (gx#stx-length
                                                _%tl2541025865%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27229 '1))
                                        (let ((_%__splice2676226763%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2541025865%_
                                                '1)))
                                          (let ((_%tl2541325871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2676226763%_
                                                    '1)))
                                                (_%target2541125868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2676226763%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2541325871%_)
                                                (let ((_%e2542025874%_
                                                       (gx#syntax-e
                                                        _%tl2541325871%_)))
                                                  (let ((_%tl2542225881%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2542025874%_)))
                                                        (_%hd2542125878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2542025874%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2542225881%_)
                                                        (_%__match2680426805%_
                                                         _%e2540525848%_
                                                         _%hd2540625852%_
                                                         _%tl2540725855%_
                                                         _%e2540825858%_
                                                         _%hd2540925862%_
                                                         _%tl2541025865%_
                                                         _%__splice2676226763%_
                                                         _%target2541125868%_
                                                         _%tl2541325871%_
                                                         _%e2542025874%_
                                                         _%hd2542125878%_
                                                         _%tl2542225881%_)
                                                        (let ((_%__splice2676626767%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl2541025865%_
                                                                '0)))
                                                          (let ((_%tl2543325723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2676626767%_ '1)))
                        (_%target2543125720%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2676626767%_ '0))))
                    (if (gx#stx-null? _%tl2543325723%_)
                        (_%__match2682426825%_
                         _%e2540525848%_
                         _%hd2540625852%_
                         _%tl2540725855%_
                         _%e2540825858%_
                         _%hd2540925862%_
                         _%tl2541025865%_
                         _%__splice2676626767%_
                         _%target2543125720%_
                         _%tl2543325723%_)
                        (if (gx#stx-pair? _%tl2541025865%_)
                            (let ((_%e2544925614%_
                                   (gx#syntax-e _%tl2541025865%_)))
                              (let ((_%tl2545125621%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2544925614%_)))
                                    (_%hd2545025618%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2544925614%_))))
                                (if (gx#stx-pair/null? _%tl2545125621%_)
                                    (let ((_%__splice2677026771%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2545125621%_
                                            '0)))
                                      (let ((_%tl2545425627%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2677026771%_
                                                '1)))
                                            (_%target2545225624%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2677026771%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2545425627%_)
                                            (_%__match2685026851%_
                                             _%e2540525848%_
                                             _%hd2540625852%_
                                             _%tl2540725855%_
                                             _%e2540825858%_
                                             _%hd2540925862%_
                                             _%tl2541025865%_
                                             _%e2544925614%_
                                             _%hd2545025618%_
                                             _%tl2545125621%_
                                             _%__splice2677026771%_
                                             _%target2545225624%_
                                             _%tl2545425627%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2540025487%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2540025487%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2540025487%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2676626767%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2541025865%_
                                                        '0)))
                                                  (let ((_%tl2543325723%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2676626767%_
                                                            '1)))
                                                        (_%target2543125720%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2676626767%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2543325723%_)
                                                        (_%__match2682426825%_
                                                         _%e2540525848%_
                                                         _%hd2540625852%_
                                                         _%tl2540725855%_
                                                         _%e2540825858%_
                                                         _%hd2540925862%_
                                                         _%tl2541025865%_
                                                         _%__splice2676626767%_
                                                         _%target2543125720%_
                                                         _%tl2543325723%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2541025865%_)
                                                            (let ((_%e2544925614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2541025865%_)))
                      (let ((_%tl2545125621%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2544925614%_)))
                            (_%hd2545025618%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2544925614%_))))
                        (if (gx#stx-pair/null? _%tl2545125621%_)
                            (let ((_%__splice2677026771%_
                                   (gx#syntax-split-splice->vector
                                    _%tl2545125621%_
                                    '0)))
                              (let ((_%tl2545425627%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2677026771%_
                                        '1)))
                                    (_%target2545225624%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2677026771%_
                                        '0))))
                                (if (gx#stx-null? _%tl2545425627%_)
                                    (_%__match2685026851%_
                                     _%e2540525848%_
                                     _%hd2540625852%_
                                     _%tl2540725855%_
                                     _%e2540825858%_
                                     _%hd2540925862%_
                                     _%tl2541025865%_
                                     _%e2544925614%_
                                     _%hd2545025618%_
                                     _%tl2545125621%_
                                     _%__splice2677026771%_
                                     _%target2545225624%_
                                     _%tl2545425627%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2540025487%_)))))
                            (let () (declare (not safe)) (_%g2540025487%_)))))
                    (let () (declare (not safe)) (_%g2540025487%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2676626767%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2541025865%_
                                                '0)))
                                          (let ((_%tl2543325723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2676626767%_
                                                    '1)))
                                                (_%target2543125720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2676626767%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2543325723%_)
                                                (_%__match2682426825%_
                                                 _%e2540525848%_
                                                 _%hd2540625852%_
                                                 _%tl2540725855%_
                                                 _%e2540825858%_
                                                 _%hd2540925862%_
                                                 _%tl2541025865%_
                                                 _%__splice2676626767%_
                                                 _%target2543125720%_
                                                 _%tl2543325723%_)
                                                (if (gx#stx-pair?
                                                     _%tl2541025865%_)
                                                    (let ((_%e2544925614%_
                                                           (gx#syntax-e
                                                            _%tl2541025865%_)))
                                                      (let ((_%tl2545125621%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2544925614%_)))
                    (_%hd2545025618%_
                     (let () (declare (not safe)) (##car _%e2544925614%_))))
                (if (gx#stx-pair/null? _%tl2545125621%_)
                    (let ((_%__splice2677026771%_
                           (gx#syntax-split-splice->vector
                            _%tl2545125621%_
                            '0)))
                      (let ((_%tl2545425627%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2677026771%_ '1)))
                            (_%target2545225624%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2677026771%_ '0))))
                        (if (gx#stx-null? _%tl2545425627%_)
                            (_%__match2685026851%_
                             _%e2540525848%_
                             _%hd2540625852%_
                             _%tl2540725855%_
                             _%e2540825858%_
                             _%hd2540925862%_
                             _%tl2541025865%_
                             _%e2544925614%_
                             _%hd2545025618%_
                             _%tl2545125621%_
                             _%__splice2677026771%_
                             _%target2545225624%_
                             _%tl2545425627%_)
                            (let () (declare (not safe)) (_%g2540025487%_)))))
                    (let () (declare (not safe)) (_%g2540025487%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2540025487%_)))))))
                                    (if (gx#stx-pair? _%tl2541025865%_)
                                        (let ((_%e2544925614%_
                                               (gx#syntax-e _%tl2541025865%_)))
                                          (let ((_%tl2545125621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2544925614%_)))
                                                (_%hd2545025618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2544925614%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2545125621%_)
                                                (let ((_%__splice2677026771%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2545125621%_
                                                        '0)))
                                                  (let ((_%tl2545425627%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2677026771%_
                                                            '1)))
                                                        (_%target2545225624%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2677026771%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2545425627%_)
                                                        (_%__match2685026851%_
                                                         _%e2540525848%_
                                                         _%hd2540625852%_
                                                         _%tl2540725855%_
                                                         _%e2540825858%_
                                                         _%hd2540925862%_
                                                         _%tl2541025865%_
                                                         _%e2544925614%_
                                                         _%hd2545025618%_
                                                         _%tl2545125621%_
                                                         _%__splice2677026771%_
                                                         _%target2545225624%_
                                                         _%tl2545425627%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2540025487%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2540025487%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2540025487%_))))))
                            (let () (declare (not safe)) (_%g2540025487%_)))))
                    (let () (declare (not safe)) (_%g2540025487%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26039%_)
        (let* ((_%__stx2687926880%_ _%$stx26039%_)
               (_%g2604426084%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2687926880%_))))
          (let ((_%__kont2688226883%_
                 (lambda (_%L26222%_ _%L26224%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%L26224%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26222%_ '()))
                                     '())))))
                (_%__kont2688426885%_
                 (lambda (_%L26151%_ _%L26153%_ _%L26154%_ _%L26155%_)
                   (cons _%L26155%_
                         (cons (cons _%L26155%_
                                     (cons _%L26154%_ (cons _%L26153%_ '())))
                               (foldr (lambda (_%g2617626179%_ _%g2617726182%_)
                                        (cons _%g2617626179%_ _%g2617726182%_))
                                      '()
                                      _%L26151%_))))))
            (let* ((_%__match2693426935%_
                    (lambda (_%e2606126091%_
                             _%hd2606226095%_
                             _%tl2606326098%_
                             _%e2606426101%_
                             _%hd2606526105%_
                             _%tl2606626108%_
                             _%e2606726111%_
                             _%hd2606826115%_
                             _%tl2606926118%_
                             _%__splice2688626887%_
                             _%target2607026121%_
                             _%tl2607226124%_)
                      (letrec ((_%loop2607326127%_
                                (lambda (_%hd2607126131%_ _%rest2607726134%_)
                                  (if (gx#stx-pair? _%hd2607126131%_)
                                      (let ((_%e2607426137%_
                                             (gx#syntax-e _%hd2607126131%_)))
                                        (let ((_%lp-tl2607626144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2607426137%_)))
                                              (_%lp-hd2607526141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2607426137%_))))
                                          (_%loop2607326127%_
                                           _%lp-tl2607626144%_
                                           (cons _%lp-hd2607526141%_
                                                 _%rest2607726134%_))))
                                      (let ((_%rest2607826147%_
                                             (reverse _%rest2607726134%_)))
                                        (_%__kont2688426885%_
                                         _%rest2607826147%_
                                         _%hd2606826115%_
                                         _%hd2606526105%_
                                         _%hd2606226095%_))))))
                        (_%loop2607326127%_ _%target2607026121%_ '()))))
                   (_%__match2690826909%_
                    (lambda (_%e2604826192%_
                             _%hd2604926196%_
                             _%tl2605026199%_
                             _%e2605126202%_
                             _%hd2605226206%_
                             _%tl2605326209%_
                             _%e2605426212%_
                             _%hd2605526216%_
                             _%tl2605626219%_)
                      (let ((_%L26222%_ _%hd2605526216%_)
                            (_%L26224%_ _%hd2605226206%_))
                        (if (gx#identifier? _%L26222%_)
                            (_%__kont2688226883%_ _%L26222%_ _%L26224%_)
                            (if (gx#stx-pair/null? _%tl2605626219%_)
                                (let ((_%__splice2688626887%_
                                       (gx#syntax-split-splice->vector
                                        _%tl2605626219%_
                                        '0)))
                                  (let ((_%tl2607226124%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2688626887%_
                                            '1)))
                                        (_%target2607026121%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2688626887%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2607226124%_)
                                        (_%__match2693426935%_
                                         _%e2604826192%_
                                         _%hd2604926196%_
                                         _%tl2605026199%_
                                         _%e2605126202%_
                                         _%hd2605226206%_
                                         _%tl2605326209%_
                                         _%e2605426212%_
                                         _%hd2605526216%_
                                         _%tl2605626219%_
                                         _%__splice2688626887%_
                                         _%target2607026121%_
                                         _%tl2607226124%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2604426084%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2604426084%_))))))))
              (if (gx#stx-pair? _%__stx2687926880%_)
                  (let ((_%e2604826192%_ (gx#syntax-e _%__stx2687926880%_)))
                    (let ((_%tl2605026199%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2604826192%_)))
                          (_%hd2604926196%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2604826192%_))))
                      (if (gx#stx-pair? _%tl2605026199%_)
                          (let ((_%e2605126202%_
                                 (gx#syntax-e _%tl2605026199%_)))
                            (let ((_%tl2605326209%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2605126202%_)))
                                  (_%hd2605226206%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2605126202%_))))
                              (if (gx#stx-pair? _%tl2605326209%_)
                                  (let ((_%e2605426212%_
                                         (gx#syntax-e _%tl2605326209%_)))
                                    (let ((_%tl2605626219%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2605426212%_)))
                                          (_%hd2605526216%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2605426212%_))))
                                      (if (gx#stx-null? _%tl2605626219%_)
                                          (_%__match2690826909%_
                                           _%e2604826192%_
                                           _%hd2604926196%_
                                           _%tl2605026199%_
                                           _%e2605126202%_
                                           _%hd2605226206%_
                                           _%tl2605326209%_
                                           _%e2605426212%_
                                           _%hd2605526216%_
                                           _%tl2605626219%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2605626219%_)
                                              (let ((_%__splice2688626887%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl2605626219%_
                                                      '0)))
                                                (let ((_%tl2607226124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2688626887%_
                                                          '1)))
                                                      (_%target2607026121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2688626887%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2607226124%_)
                                                      (_%__match2693426935%_
                                                       _%e2604826192%_
                                                       _%hd2604926196%_
                                                       _%tl2605026199%_
                                                       _%e2605126202%_
                                                       _%hd2605226206%_
                                                       _%tl2605326209%_
                                                       _%e2605426212%_
                                                       _%hd2605526216%_
                                                       _%tl2605626219%_
                                                       _%__splice2688626887%_
                                                       _%target2607026121%_
                                                       _%tl2607226124%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2604426084%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2604426084%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2604426084%_)))))
                          (let () (declare (not safe)) (_%g2604426084%_)))))
                  (let () (declare (not safe)) (_%g2604426084%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26244%_)
        (let* ((_%__stx2693726938%_ _%$stx26244%_)
               (_%g2624926301%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2693726938%_))))
          (let ((_%__kont2694026941%_
                 (lambda (_%L26477%_ _%L26479%_ _%L26480%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%L26480%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26479%_ '()))
                                     (cons _%L26477%_ '()))))))
                (_%__kont2694226943%_
                 (lambda (_%L26388%_
                          _%L26390%_
                          _%L26391%_
                          _%L26392%_
                          _%L26393%_
                          _%L26394%_)
                   (cons _%L26394%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%L26393%_
                                           (cons _%L26392%_
                                                 (foldr (lambda (_%g2642126424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2642226427%_)
                  (cons _%g2642126424%_ _%g2642226427%_))
                '()
                _%L26391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L26390%_ (cons _%L26388%_ '())))))))
            (let* ((_%__match2701227013%_
                    (lambda (_%e2627226308%_
                             _%hd2627326312%_
                             _%tl2627426315%_
                             _%e2627526318%_
                             _%hd2627626322%_
                             _%tl2627726325%_
                             _%e2627826328%_
                             _%hd2627926332%_
                             _%tl2628026335%_
                             _%__splice2694426945%_
                             _%target2628126338%_
                             _%tl2628326341%_
                             _%e2629026344%_
                             _%hd2629126348%_
                             _%tl2629226351%_
                             _%e2629326354%_
                             _%hd2629426358%_
                             _%tl2629526361%_)
                      (letrec ((_%loop2628426364%_
                                (lambda (_%hd2628226368%_ _%path2628826371%_)
                                  (if (gx#stx-pair? _%hd2628226368%_)
                                      (let ((_%e2628526374%_
                                             (gx#syntax-e _%hd2628226368%_)))
                                        (let ((_%lp-tl2628726381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2628526374%_)))
                                              (_%lp-hd2628626378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2628526374%_))))
                                          (_%loop2628426364%_
                                           _%lp-tl2628726381%_
                                           (cons _%lp-hd2628626378%_
                                                 _%path2628826371%_))))
                                      (let ((_%path2628926384%_
                                             (reverse _%path2628826371%_)))
                                        (_%__kont2694226943%_
                                         _%hd2629426358%_
                                         _%hd2629126348%_
                                         _%path2628926384%_
                                         _%hd2627926332%_
                                         _%hd2627626322%_
                                         _%hd2627326312%_))))))
                        (_%loop2628426364%_ _%target2628126338%_ '()))))
                   (_%__match2697226973%_
                    (lambda (_%e2625426437%_
                             _%hd2625526441%_
                             _%tl2625626444%_
                             _%e2625726447%_
                             _%hd2625826451%_
                             _%tl2625926454%_
                             _%e2626026457%_
                             _%hd2626126461%_
                             _%tl2626226464%_
                             _%e2626326467%_
                             _%hd2626426471%_
                             _%tl2626526474%_)
                      (let ((_%L26477%_ _%hd2626426471%_)
                            (_%L26479%_ _%hd2626126461%_)
                            (_%L26480%_ _%hd2625826451%_))
                        (if (gx#identifier? _%L26479%_)
                            (_%__kont2694026941%_
                             _%L26477%_
                             _%L26479%_
                             _%L26480%_)
                            (if (gx#stx-pair/null? _%tl2626226464%_)
                                (if (let ((__tmp27230
                                           (gx#stx-length _%tl2626226464%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27230 '2))
                                    (let ((_%__splice2694426945%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2626226464%_
                                            '2)))
                                      (let ((_%tl2628326341%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2694426945%_
                                                '1)))
                                            (_%target2628126338%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2694426945%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2628326341%_)
                                            (let ((_%e2629026344%_
                                                   (gx#syntax-e
                                                    _%tl2628326341%_)))
                                              (let ((_%tl2629226351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2629026344%_)))
                                                    (_%hd2629126348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2629026344%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2629226351%_)
                                                    (let ((_%e2629326354%_
                                                           (gx#syntax-e
                                                            _%tl2629226351%_)))
                                                      (let ((_%tl2629526361%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2629326354%_)))
                    (_%hd2629426358%_
                     (let () (declare (not safe)) (##car _%e2629326354%_))))
                (if (gx#stx-null? _%tl2629526361%_)
                    (_%__match2701227013%_
                     _%e2625426437%_
                     _%hd2625526441%_
                     _%tl2625626444%_
                     _%e2625726447%_
                     _%hd2625826451%_
                     _%tl2625926454%_
                     _%e2626026457%_
                     _%hd2626126461%_
                     _%tl2626226464%_
                     _%__splice2694426945%_
                     _%target2628126338%_
                     _%tl2628326341%_
                     _%e2629026344%_
                     _%hd2629126348%_
                     _%tl2629226351%_
                     _%e2629326354%_
                     _%hd2629426358%_
                     _%tl2629526361%_)
                    (let () (declare (not safe)) (_%g2624926301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2624926301%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2624926301%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2624926301%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2624926301%_))))))))
              (if (gx#stx-pair? _%__stx2693726938%_)
                  (let ((_%e2625426437%_ (gx#syntax-e _%__stx2693726938%_)))
                    (let ((_%tl2625626444%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2625426437%_)))
                          (_%hd2625526441%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2625426437%_))))
                      (if (gx#stx-pair? _%tl2625626444%_)
                          (let ((_%e2625726447%_
                                 (gx#syntax-e _%tl2625626444%_)))
                            (let ((_%tl2625926454%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2625726447%_)))
                                  (_%hd2625826451%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2625726447%_))))
                              (if (gx#stx-pair? _%tl2625926454%_)
                                  (let ((_%e2626026457%_
                                         (gx#syntax-e _%tl2625926454%_)))
                                    (let ((_%tl2626226464%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2626026457%_)))
                                          (_%hd2626126461%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2626026457%_))))
                                      (if (gx#stx-pair? _%tl2626226464%_)
                                          (let ((_%e2626326467%_
                                                 (gx#syntax-e
                                                  _%tl2626226464%_)))
                                            (let ((_%tl2626526474%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2626326467%_)))
                                                  (_%hd2626426471%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2626326467%_))))
                                              (if (gx#stx-null?
                                                   _%tl2626526474%_)
                                                  (_%__match2697226973%_
                                                   _%e2625426437%_
                                                   _%hd2625526441%_
                                                   _%tl2625626444%_
                                                   _%e2625726447%_
                                                   _%hd2625826451%_
                                                   _%tl2625926454%_
                                                   _%e2626026457%_
                                                   _%hd2626126461%_
                                                   _%tl2626226464%_
                                                   _%e2626326467%_
                                                   _%hd2626426471%_
                                                   _%tl2626526474%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2626226464%_)
                                                      (if (let ((__tmp27231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2626226464%_)))
                    (declare (not safe))
                    (##fx>= __tmp27231 '2))
                  (let ((_%__splice2694426945%_
                         (gx#syntax-split-splice->vector _%tl2626226464%_ '2)))
                    (let ((_%tl2628326341%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2694426945%_ '1)))
                          (_%target2628126338%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2694426945%_ '0))))
                      (if (gx#stx-pair? _%tl2628326341%_)
                          (let ((_%e2629026344%_
                                 (gx#syntax-e _%tl2628326341%_)))
                            (let ((_%tl2629226351%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2629026344%_)))
                                  (_%hd2629126348%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2629026344%_))))
                              (if (gx#stx-pair? _%tl2629226351%_)
                                  (let ((_%e2629326354%_
                                         (gx#syntax-e _%tl2629226351%_)))
                                    (let ((_%tl2629526361%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2629326354%_)))
                                          (_%hd2629426358%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2629326354%_))))
                                      (if (gx#stx-null? _%tl2629526361%_)
                                          (_%__match2701227013%_
                                           _%e2625426437%_
                                           _%hd2625526441%_
                                           _%tl2625626444%_
                                           _%e2625726447%_
                                           _%hd2625826451%_
                                           _%tl2625926454%_
                                           _%e2626026457%_
                                           _%hd2626126461%_
                                           _%tl2626226464%_
                                           _%__splice2694426945%_
                                           _%target2628126338%_
                                           _%tl2628326341%_
                                           _%e2629026344%_
                                           _%hd2629126348%_
                                           _%tl2629226351%_
                                           _%e2629326354%_
                                           _%hd2629426358%_
                                           _%tl2629526361%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2624926301%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2624926301%_)))))
                          (let () (declare (not safe)) (_%g2624926301%_)))))
                  (let () (declare (not safe)) (_%g2624926301%_)))
              (let () (declare (not safe)) (_%g2624926301%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2626226464%_)
                                              (if (let ((__tmp27232
                                                         (gx#stx-length
                                                          _%tl2626226464%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27232 '2))
                                                  (let ((_%__splice2694426945%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl2626226464%_
                                                          '2)))
                                                    (let ((_%tl2628326341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2694426945%_
                                                              '1)))
                                                          (_%target2628126338%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2694426945%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2628326341%_)
                                                          (let ((_%e2629026344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2628326341%_)))
                    (let ((_%tl2629226351%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2629026344%_)))
                          (_%hd2629126348%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2629026344%_))))
                      (if (gx#stx-pair? _%tl2629226351%_)
                          (let ((_%e2629326354%_
                                 (gx#syntax-e _%tl2629226351%_)))
                            (let ((_%tl2629526361%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2629326354%_)))
                                  (_%hd2629426358%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2629326354%_))))
                              (if (gx#stx-null? _%tl2629526361%_)
                                  (_%__match2701227013%_
                                   _%e2625426437%_
                                   _%hd2625526441%_
                                   _%tl2625626444%_
                                   _%e2625726447%_
                                   _%hd2625826451%_
                                   _%tl2625926454%_
                                   _%e2626026457%_
                                   _%hd2626126461%_
                                   _%tl2626226464%_
                                   _%__splice2694426945%_
                                   _%target2628126338%_
                                   _%tl2628326341%_
                                   _%e2629026344%_
                                   _%hd2629126348%_
                                   _%tl2629226351%_
                                   _%e2629326354%_
                                   _%hd2629426358%_
                                   _%tl2629526361%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2624926301%_)))))
                          (let () (declare (not safe)) (_%g2624926301%_)))))
                  (let () (declare (not safe)) (_%g2624926301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2624926301%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2624926301%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2624926301%_)))))
                          (let () (declare (not safe)) (_%g2624926301%_)))))
                  (let () (declare (not safe)) (_%g2624926301%_))))))))))
