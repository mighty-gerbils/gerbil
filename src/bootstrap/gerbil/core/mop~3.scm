(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27443_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24910%_)
        (letrec ((_%body-opt?24913%_
                  (lambda (_%key24916%_)
                    (let ((__tmp27365 (gx#stx-e _%key24916%_)))
                      (declare (not safe))
                      (##memq __tmp27365
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:))))))
          (gx#stx-plist? _%stx24910%_ _%body-opt?24913%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22676%_
               _%id22678%_
               _%super-ref22679%_
               _%slots22680%_
               _%body22681%_)
        (letrec ((_%wrap22683%_
                  (lambda (_%e-stx24907%_)
                    (gx#stx-wrap-source
                     _%e-stx24907%_
                     (gx#stx-source _%stx22676%_))))
                 (_%make-id22685%_
                  (lambda _%args24904%_
                    (apply gx#stx-identifier _%id22678%_ _%args24904%_)))
                 (_%get-mixin-slots22686%_
                  (lambda (_%super24874%_ _%slots24876%_)
                    (letrec* ((_%tab24878%_ (make-hash-table-eq))
                              (_%dedup24880%_
                               (lambda (_%mixins24891%_)
                                 (let _%lp24894%_ ((_%rest24897%_
                                                    _%mixins24891%_)
                                                   (_%r24899%_ '()))
                                   (if (let ()
                                         (declare (not safe))
                                         (pair? _%rest24897%_))
                                       (let ((_%slot24901%_
                                              (car _%rest24897%_)))
                                         (if (hash-get
                                              _%tab24878%_
                                              _%slot24901%_)
                                             (let ((__tmp27366
                                                    (cdr _%rest24897%_)))
                                               (declare (not safe))
                                               (_%lp24894%_
                                                __tmp27366
                                                _%r24899%_))
                                             (begin
                                               (hash-put!
                                                _%tab24878%_
                                                _%slot24901%_
                                                '#t)
                                               (let ((__tmp27368
                                                      (cdr _%rest24897%_))
                                                     (__tmp27367
                                                      (cons _%slot24901%_
                                                            _%r24899%_)))
                                                 (declare (not safe))
                                                 (_%lp24894%_
                                                  __tmp27368
                                                  __tmp27367)))))
                                       (reverse _%r24899%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24882%_)
                         (hash-put! _%tab24878%_ (gx#stx-e _%slot24882%_) '#t))
                       _%slots24876%_)
                      (if (let () (declare (not safe)) (not _%super24874%_))
                          (let () '())
                          (if (gx#identifier? _%super24874%_)
                              (let ()
                                (let ((__tmp27369
                                       (let ()
                                         (declare (not safe))
                                         (_%get-mixin-slots-r22687%_
                                          _%super24874%_))))
                                  (declare (not safe))
                                  (_%dedup24880%_ __tmp27369)))
                              (let ()
                                (let ((__tmp27370
                                       (concatenate
                                        (map _%get-mixin-slots-r22687%_
                                             _%super24874%_))))
                                  (declare (not safe))
                                  (_%dedup24880%_ __tmp27370))))))))
                 (_%get-mixin-slots-r22687%_
                  (lambda (_%type-id24868%_)
                    (let ((_%info24871%_
                           (gx#syntax-local-value _%type-id24868%_)))
                      (let ((__tmp27372
                             (let ((__obj27148 _%info24871%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27148
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27148
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27148
                                    'slots))))
                            (__tmp27371
                             (concatenate
                              (map _%get-mixin-slots-r22687%_
                                   (let ((__obj27149 _%info24871%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27149
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27149
                                            '3
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27149
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27372 __tmp27371))))))
          (gx#check-duplicate-identifiers _%slots22680%_ _%stx22676%_)
          (let* ((_%name22689%_ (symbol->string (gx#stx-e _%id22678%_)))
                 (_%super22692%_
                  (map gx#syntax-local-value _%super-ref22679%_))
                 (_%struct?22695%_ (gx#stx-getq 'struct: _%body22681%_))
                 (_%g2269822706%_
                  (lambda (_%g2269922702%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2269922702%_)))
                 (_%g2269724864%_
                  (lambda (_%g2269922710%_)
                    ((lambda (_%L22713%_)
                       (let ()
                         (let* ((_%g2272922737%_
                                 (lambda (_%g2273022733%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2273022733%_)))
                                (_%g2272824860%_
                                 (lambda (_%g2273022741%_)
                                   ((lambda (_%L22744%_)
                                      (let ()
                                        (let* ((_%g2275722765%_
                                                (lambda (_%g2275822761%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2275822761%_)))
                                               (_%g2275624856%_
                                                (lambda (_%g2275822769%_)
                                                  ((lambda (_%L22772%_)
                                                     (let ()
                                                       (let* ((_%g2278522793%_
                                                               (lambda (_%g2278622789%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2278622789%_)))
                      (_%g2278424852%_
                       (lambda (_%g2278622797%_)
                         ((lambda (_%L22800%_)
                            (let ()
                              (let* ((_%g2281322821%_
                                      (lambda (_%g2281422817%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2281422817%_)))
                                     (_%g2281224848%_
                                      (lambda (_%g2281422825%_)
                                        ((lambda (_%L22828%_)
                                           (let ()
                                             (let* ((_%g2284122858%_
                                                     (lambda (_%g2284222854%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2284222854%_)))
                                                    (_%g2284024844%_
                                                     (lambda (_%g2284222862%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2284222862%_)
                                                           (let ((_g27373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2284222862%_ '0)))
                     (begin
                       (let ((_g27374_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27373_)
                                    (##vector-length _g27373_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27374_ 2)))
                             (error "Context expects 2 values" _g27374_)))
                       (let ((_%target2284422865%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27373_ 0)))
                             (_%tl2284622868%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27373_ 1))))
                         (if (gx#stx-null? _%tl2284622868%_)
                             (letrec ((_%loop2284722871%_
                                       (lambda (_%hd2284522875%_
                                                _%slot2285122878%_)
                                         (if (gx#stx-pair? _%hd2284522875%_)
                                             (let ((_%e2284822881%_
                                                    (gx#syntax-e
                                                     _%hd2284522875%_)))
                                               (let ((_%lp-hd2284922885%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2284822881%_)))
                                                     (_%lp-tl2285022888%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2284822881%_))))
                                                 (let ((__tmp27375
                                                        (cons _%lp-hd2284922885%_
                                                              _%slot2285122878%_)))
                                                   (declare (not safe))
                                                   (_%loop2284722871%_
                                                    _%lp-tl2285022888%_
                                                    __tmp27375))))
                                             (let ((_%slot2285222891%_
                                                    (reverse _%slot2285122878%_)))
                                               ((lambda (_%L22895%_)
                                                  (let ()
                                                    (let* ((_%g2291222929%_
                                                            (lambda (_%g2291322925%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2291322925%_)))
                                                           (_%g2291124835%_
                                                            (lambda (_%g2291322933%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2291322933%_)
                          (let ((_g27376_
                                 (gx#syntax-split-splice _%g2291322933%_ '0)))
                            (begin
                              (let ((_g27377_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27376_)
                                           (##vector-length _g27376_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27377_ 2)))
                                    (error "Context expects 2 values"
                                           _g27377_)))
                              (let ((_%target2291522936%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27376_ 0)))
                                    (_%tl2291722939%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27376_ 1))))
                                (if (gx#stx-null? _%tl2291722939%_)
                                    (letrec ((_%loop2291822942%_
                                              (lambda (_%hd2291622946%_
                                                       _%getf2292222949%_)
                                                (if (gx#stx-pair?
                                                     _%hd2291622946%_)
                                                    (let ((_%e2291922952%_
                                                           (gx#syntax-e
                                                            _%hd2291622946%_)))
                                                      (let ((_%lp-hd2292022956%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2291922952%_)))
                    (_%lp-tl2292122959%_
                     (let () (declare (not safe)) (##cdr _%e2291922952%_))))
                (let ((__tmp27378
                       (cons _%lp-hd2292022956%_ _%getf2292222949%_)))
                  (declare (not safe))
                  (_%loop2291822942%_ _%lp-tl2292122959%_ __tmp27378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%getf2292322962%_
                                                           (reverse _%getf2292222949%_)))
                                                      ((lambda (_%L22966%_)
                                                         (let ()
                                                           (let* ((_%g2298323000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2298422996%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2298422996%_)))
                          (_%g2298224826%_
                           (lambda (_%g2298423004%_)
                             (if (gx#stx-pair/null? _%g2298423004%_)
                                 (let ((_g27379_
                                        (gx#syntax-split-splice
                                         _%g2298423004%_
                                         '0)))
                                   (begin
                                     (let ((_g27380_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g27379_)
                                                  (##vector-length _g27379_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g27380_ 2)))
                                           (error "Context expects 2 values"
                                                  _g27380_)))
                                     (let ((_%target2298623007%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g27379_ 0)))
                                           (_%tl2298823010%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g27379_ 1))))
                                       (if (gx#stx-null? _%tl2298823010%_)
                                           (letrec ((_%loop2298923013%_
                                                     (lambda (_%hd2298723017%_
                                                              _%setf2299323020%_)
                                                       (if (gx#stx-pair?
                                                            _%hd2298723017%_)
                                                           (let ((_%e2299023023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%hd2298723017%_)))
                     (let ((_%lp-hd2299123027%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2299023023%_)))
                           (_%lp-tl2299223030%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2299023023%_))))
                       (let ((__tmp27381
                              (cons _%lp-hd2299123027%_ _%setf2299323020%_)))
                         (declare (not safe))
                         (_%loop2298923013%_ _%lp-tl2299223030%_ __tmp27381))))
                   (let ((_%setf2299423033%_ (reverse _%setf2299323020%_)))
                     ((lambda (_%L23037%_)
                        (let ()
                          (let* ((_%mixin-slots23054%_
                                  (let ()
                                    (declare (not safe))
                                    (_%get-mixin-slots22686%_
                                     _%super-ref22679%_
                                     _%slots22680%_)))
                                 (_%g2305723074%_
                                  (lambda (_%g2305823070%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2305823070%_)))
                                 (_%g2305624822%_
                                  (lambda (_%g2305823078%_)
                                    (if (gx#stx-pair/null? _%g2305823078%_)
                                        (let ((_g27382_
                                               (gx#syntax-split-splice
                                                _%g2305823078%_
                                                '0)))
                                          (begin
                                            (let ((_g27383_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g27382_)
                                                         (##vector-length
                                                          _g27382_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g27383_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g27383_)))
                                            (let ((_%target2306023081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g27382_
                                                      0)))
                                                  (_%tl2306223084%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g27382_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl2306223084%_)
                                                  (letrec ((_%loop2306323087%_
                                                            (lambda (_%hd2306123091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%mixin-slot2306723094%_)
                      (if (gx#stx-pair? _%hd2306123091%_)
                          (let ((_%e2306423097%_
                                 (gx#syntax-e _%hd2306123091%_)))
                            (let ((_%lp-hd2306523101%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2306423097%_)))
                                  (_%lp-tl2306623104%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2306423097%_))))
                              (let ((__tmp27384
                                     (cons _%lp-hd2306523101%_
                                           _%mixin-slot2306723094%_)))
                                (declare (not safe))
                                (_%loop2306323087%_
                                 _%lp-tl2306623104%_
                                 __tmp27384))))
                          (let ((_%mixin-slot2306823107%_
                                 (reverse _%mixin-slot2306723094%_)))
                            ((lambda (_%L23111%_)
                               (let ()
                                 (let* ((_%g2312923146%_
                                         (lambda (_%g2313023142%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2313023142%_)))
                                        (_%g2312824813%_
                                         (lambda (_%g2313023150%_)
                                           (if (gx#stx-pair/null?
                                                _%g2313023150%_)
                                               (let ((_g27385_
                                                      (gx#syntax-split-splice
                                                       _%g2313023150%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g27386_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g27385_)
                        (##vector-length _g27385_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g27386_ 2)))
                 (error "Context expects 2 values" _g27386_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2313223153%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g27385_
                                                             0)))
                                                         (_%tl2313423156%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g27385_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2313423156%_)
                                                         (letrec ((_%loop2313523159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2313323163%_ _%mixin-getf2313923166%_)
                             (if (gx#stx-pair? _%hd2313323163%_)
                                 (let ((_%e2313623169%_
                                        (gx#syntax-e _%hd2313323163%_)))
                                   (let ((_%lp-hd2313723173%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2313623169%_)))
                                         (_%lp-tl2313823176%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2313623169%_))))
                                     (let ((__tmp27387
                                            (cons _%lp-hd2313723173%_
                                                  _%mixin-getf2313923166%_)))
                                       (declare (not safe))
                                       (_%loop2313523159%_
                                        _%lp-tl2313823176%_
                                        __tmp27387))))
                                 (let ((_%mixin-getf2314023179%_
                                        (reverse _%mixin-getf2313923166%_)))
                                   ((lambda (_%L23183%_)
                                      (let ()
                                        (let* ((_%g2320023217%_
                                                (lambda (_%g2320123213%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2320123213%_)))
                                               (_%g2319924804%_
                                                (lambda (_%g2320123221%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2320123221%_)
                                                      (let ((_g27388_
                                                             (gx#syntax-split-splice
                                                              _%g2320123221%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27388_)
                               (##vector-length _g27388_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27389_ 2)))
                        (error "Context expects 2 values" _g27389_)))
                  (let ((_%target2320323224%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27388_ 0)))
                        (_%tl2320523227%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27388_ 1))))
                    (if (gx#stx-null? _%tl2320523227%_)
                        (letrec ((_%loop2320623230%_
                                  (lambda (_%hd2320423234%_
                                           _%mixin-setf2321023237%_)
                                    (if (gx#stx-pair? _%hd2320423234%_)
                                        (let ((_%e2320723240%_
                                               (gx#syntax-e _%hd2320423234%_)))
                                          (let ((_%lp-hd2320823244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2320723240%_)))
                                                (_%lp-tl2320923247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2320723240%_))))
                                            (let ((__tmp27390
                                                   (cons _%lp-hd2320823244%_
                                                         _%mixin-setf2321023237%_)))
                                              (declare (not safe))
                                              (_%loop2320623230%_
                                               _%lp-tl2320923247%_
                                               __tmp27390))))
                                        (let ((_%mixin-setf2321123250%_
                                               (reverse _%mixin-setf2321023237%_)))
                                          ((lambda (_%L23254%_)
                                             (let ()
                                               (let* ((_%g2327123288%_
                                                       (lambda (_%g2327223284%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2327223284%_)))
                                                      (_%g2327024787%_
                                                       (lambda (_%g2327223292%_)
                                                         (if (gx#stx-pair/null?
                                                              _%g2327223292%_)
                                                             (let ((_g27391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _%g2327223292%_ '0)))
                       (begin
                         (let ((_g27392_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g27391_)
                                      (##vector-length _g27391_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g27392_ 2)))
                               (error "Context expects 2 values" _g27392_)))
                         (let ((_%target2327423295%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27391_ 0)))
                               (_%tl2327623298%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27391_ 1))))
                           (if (gx#stx-null? _%tl2327623298%_)
                               (letrec ((_%loop2327723301%_
                                         (lambda (_%hd2327523305%_
                                                  _%ugetf2328123308%_)
                                           (if (gx#stx-pair? _%hd2327523305%_)
                                               (let ((_%e2327823311%_
                                                      (gx#syntax-e
                                                       _%hd2327523305%_)))
                                                 (let ((_%lp-hd2327923315%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2327823311%_)))
                                                       (_%lp-tl2328023318%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2327823311%_))))
                                                   (let ((__tmp27393
                                                          (cons _%lp-hd2327923315%_
                                                                _%ugetf2328123308%_)))
                                                     (declare (not safe))
                                                     (_%loop2327723301%_
                                                      _%lp-tl2328023318%_
                                                      __tmp27393))))
                                               (let ((_%ugetf2328223321%_
                                                      (reverse _%ugetf2328123308%_)))
                                                 ((lambda (_%L23325%_)
                                                    (let ()
                                                      (let* ((_%g2334223359%_
                                                              (lambda (_%g2334323355%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2334323355%_)))
                     (_%g2334124770%_
                      (lambda (_%g2334323363%_)
                        (if (gx#stx-pair/null? _%g2334323363%_)
                            (let ((_g27394_
                                   (gx#syntax-split-splice
                                    _%g2334323363%_
                                    '0)))
                              (begin
                                (let ((_g27395_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g27394_)
                                             (##vector-length _g27394_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g27395_ 2)))
                                      (error "Context expects 2 values"
                                             _g27395_)))
                                (let ((_%target2334523366%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g27394_ 0)))
                                      (_%tl2334723369%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g27394_ 1))))
                                  (if (gx#stx-null? _%tl2334723369%_)
                                      (letrec ((_%loop2334823372%_
                                                (lambda (_%hd2334623376%_
                                                         _%usetf2335223379%_)
                                                  (if (gx#stx-pair?
                                                       _%hd2334623376%_)
                                                      (let ((_%e2334923382%_
                                                             (gx#syntax-e
                                                              _%hd2334623376%_)))
                                                        (let ((_%lp-hd2335023386%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2334923382%_)))
                      (_%lp-tl2335123389%_
                       (let () (declare (not safe)) (##cdr _%e2334923382%_))))
                  (let ((__tmp27396
                         (cons _%lp-hd2335023386%_ _%usetf2335223379%_)))
                    (declare (not safe))
                    (_%loop2334823372%_ _%lp-tl2335123389%_ __tmp27396))))
              (let ((_%usetf2335323392%_ (reverse _%usetf2335223379%_)))
                ((lambda (_%L23396%_)
                   (let ()
                     (let* ((_%g2341323430%_
                             (lambda (_%g2341423426%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2341423426%_)))
                            (_%g2341224753%_
                             (lambda (_%g2341423434%_)
                               (if (gx#stx-pair/null? _%g2341423434%_)
                                   (let ((_g27397_
                                          (gx#syntax-split-splice
                                           _%g2341423434%_
                                           '0)))
                                     (begin
                                       (let ((_g27398_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g27397_)
                                                    (##vector-length _g27397_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g27398_ 2)))
                                             (error "Context expects 2 values"
                                                    _g27398_)))
                                       (let ((_%target2341623437%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g27397_ 0)))
                                             (_%tl2341823440%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g27397_ 1))))
                                         (if (gx#stx-null? _%tl2341823440%_)
                                             (letrec ((_%loop2341923443%_
                                                       (lambda (_%hd2341723447%_
                                                                _%mixin-ugetf2342323450%_)
                                                         (if (gx#stx-pair?
                                                              _%hd2341723447%_)
                                                             (let ((_%e2342023453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd2341723447%_)))
                       (let ((_%lp-hd2342123457%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2342023453%_)))
                             (_%lp-tl2342223460%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2342023453%_))))
                         (let ((__tmp27399
                                (cons _%lp-hd2342123457%_
                                      _%mixin-ugetf2342323450%_)))
                           (declare (not safe))
                           (_%loop2341923443%_
                            _%lp-tl2342223460%_
                            __tmp27399))))
                     (let ((_%mixin-ugetf2342423463%_
                            (reverse _%mixin-ugetf2342323450%_)))
                       ((lambda (_%L23467%_)
                          (let ()
                            (let* ((_%g2348423501%_
                                    (lambda (_%g2348523497%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2348523497%_)))
                                   (_%g2348324736%_
                                    (lambda (_%g2348523505%_)
                                      (if (gx#stx-pair/null? _%g2348523505%_)
                                          (let ((_g27400_
                                                 (gx#syntax-split-splice
                                                  _%g2348523505%_
                                                  '0)))
                                            (begin
                                              (let ((_g27401_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g27400_)
                                                           (##vector-length
                                                            _g27400_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g27401_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g27401_)))
                                              (let ((_%target2348723508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g27400_
                                                        0)))
                                                    (_%tl2348923511%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g27400_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl2348923511%_)
                                                    (letrec ((_%loop2349023514%_
                                                              (lambda (_%hd2348823518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%mixin-usetf2349423521%_)
                        (if (gx#stx-pair? _%hd2348823518%_)
                            (let ((_%e2349123524%_
                                   (gx#syntax-e _%hd2348823518%_)))
                              (let ((_%lp-hd2349223528%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2349123524%_)))
                                    (_%lp-tl2349323531%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2349123524%_))))
                                (let ((__tmp27402
                                       (cons _%lp-hd2349223528%_
                                             _%mixin-usetf2349423521%_)))
                                  (declare (not safe))
                                  (_%loop2349023514%_
                                   _%lp-tl2349323531%_
                                   __tmp27402))))
                            (let ((_%mixin-usetf2349523534%_
                                   (reverse _%mixin-usetf2349423521%_)))
                              ((lambda (_%L23538%_)
                                 (let ()
                                   (let* ((_%type-slots23573%_
                                           (if (gx#stx-null? _%slots22680%_)
                                               (let () '())
                                               (let ()
                                                 (cons 'slots:
                                                       (cons (begin
                                                               (gx#syntax-check-splice-targets
                                                                _%L23037%_
                                                                _%L22966%_
                                                                _%L22895%_)
                                                               (foldr (lambda (_%g2355823563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2355923566%_
                                       _%g2356023568%_
                                       _%g2356123570%_)
                                (cons (cons _%g2356023568%_
                                            (cons _%g2355923566%_
                                                  (cons _%g2355823563%_ '())))
                                      _%g2356123570%_))
                              '()
                              _%L23037%_
                              _%L22966%_
                              _%L22895%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%type-mixin-slots23594%_
                                           (if (gx#stx-null?
                                                _%mixin-slots23054%_)
                                               (let () '())
                                               (let ()
                                                 (cons 'mixin:
                                                       (cons (begin
                                                               (gx#syntax-check-splice-targets
                                                                _%L23254%_
                                                                _%L23183%_
                                                                _%L23111%_)
                                                               (foldr (lambda (_%g2357923584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2358023587%_
                                       _%g2358123589%_
                                       _%g2358223591%_)
                                (cons (cons _%g2358123589%_
                                            (cons _%g2358023587%_
                                                  (cons _%g2357923584%_ '())))
                                      _%g2358223591%_))
                              '()
                              _%L23254%_
                              _%L23183%_
                              _%L23111%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%type-name23601%_
                                           (cons 'name:
                                                 (cons (let ((_%$e23597%_
                                                              (gx#stx-getq
                                                               'name:
                                                               _%body22681%_)))
                                                         (if _%$e23597%_
                                                             _%$e23597%_
                                                             _%id22678%_))
                                                       '())))
                                          (_%type-id23608%_
                                           (cons 'id:
                                                 (cons (let ((_%$e23604%_
                                                              (gx#stx-getq
                                                               'id:
                                                               _%body22681%_)))
                                                         (if _%$e23604%_
                                                             _%$e23604%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                        _%L22713%_))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%type-constructor23623%_
                                           (let ((_%$e23619%_
                                                  (let ((_%e2361023612%_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _%body22681%_)))
                                                    (if _%e2361023612%_
                                                        (let ((_%e23616%_
                                                               _%e2361023612%_))
                                                          (cons 'constructor:
                                                                (cons _%e23616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _%$e23619%_ _%$e23619%_ '())))
                                          (_%properties23661%_
                                           (let* ((_%properties23626%_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _%body22681%_))
                                                       (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#t)
                     '())
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%properties23641%_
                                                   (let ((_%$e23629%_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'print:
                                                            _%body22681%_))))
                                                     (if _%$e23629%_
                                                         ((lambda (_%print23633%_)
                                                            (let ((_%print23636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (eq? _%print23633%_ '#t)
                               _%slots22680%_
                               _%print23633%_)))
                      (cons (cons 'print: _%print23636%_)
                            _%properties23626%_)))
                  _%$e23629%_)
                 (let () _%properties23626%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%properties23656%_
                                                   (let ((_%$e23644%_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'equal:
                                                            _%body22681%_))))
                                                     (if _%$e23644%_
                                                         ((lambda (_%equal23648%_)
                                                            (let ((_%equal23651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (eq? _%equal23648%_ '#t)
                               _%slots22680%_
                               _%equal23648%_)))
                      (cons (cons 'equal: _%equal23651%_)
                            _%properties23641%_)))
                  _%$e23644%_)
                 (let () _%properties23641%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%properties23656%_))
                                          (_%type-properties23702%_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%properties23661%_))
                                               '()
                                               (let* ((_%g2366423672%_
                                                       (lambda (_%g2366523668%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2366523668%_)))
                                                      (_%g2366323698%_
                                                       (lambda (_%g2366523676%_)
                                                         ((lambda (_%L23679%_)
                                                            (let ()
                                                              (cons 'properties:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L23679%_ '()))
                                  '()))))
                  _%g2366523676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2366323698%_
                                                  _%properties23661%_))))
                                          (_%metaclass23714%_
                                           (let ((_%$e23705%_
                                                  (gx#stx-getq
                                                   'metaclass:
                                                   _%body22681%_)))
                                             (if _%$e23705%_
                                                 ((lambda (_%metaclass23709%_)
                                                    (if (gx#identifier?
                                                         _%metaclass23709%_)
                                                        _%metaclass23709%_
                                                        '#f))
                                                  _%$e23705%_)
                                                 (let () '#f))))
                                          (_%type-metaclass23717%_
                                           (if _%metaclass23714%_
                                               (cons 'metaclass:
                                                     (cons _%metaclass23714%_
                                                           '()))
                                               '()))
                                          (_%final?23720%_
                                           (gx#stx-e
                                            (gx#stx-getq
                                             'final:
                                             _%body22681%_)))
                                          (_%type-struct23723%_
                                           (cons 'struct:
                                                 (cons _%struct?22695%_ '())))
                                          (_%type-final23726%_
                                           (cons 'final:
                                                 (cons _%final?23720%_ '())))
                                          (_%g2372923746%_
                                           (lambda (_%g2373023742%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2373023742%_)))
                                          (_%g2372824732%_
                                           (lambda (_%g2373023750%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2373023750%_)
                                                 (let ((_g27403_
                                                        (gx#syntax-split-splice
                                                         _%g2373023750%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27404_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27403_)
                          (##vector-length _g27403_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27404_ 2)))
                   (error "Context expects 2 values" _g27404_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2373223753%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27403_
                                                               0)))
                                                           (_%tl2373423756%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27403_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2373423756%_)
                                                           (letrec ((_%loop2373523759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2373323763%_ _%type-body2373923766%_)
                               (if (gx#stx-pair? _%hd2373323763%_)
                                   (let ((_%e2373623769%_
                                          (gx#syntax-e _%hd2373323763%_)))
                                     (let ((_%lp-hd2373723773%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2373623769%_)))
                                           (_%lp-tl2373823776%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2373623769%_))))
                                       (let ((__tmp27405
                                              (cons _%lp-hd2373723773%_
                                                    _%type-body2373923766%_)))
                                         (declare (not safe))
                                         (_%loop2373523759%_
                                          _%lp-tl2373823776%_
                                          __tmp27405))))
                                   (let ((_%type-body2374023779%_
                                          (reverse _%type-body2373923766%_)))
                                     ((lambda (_%L23783%_)
                                        (let ()
                                          (let* ((_%g2380423812%_
                                                  (lambda (_%g2380523808%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2380523808%_)))
                                                 (_%g2380324720%_
                                                  (lambda (_%g2380523816%_)
                                                    ((lambda (_%L23819%_)
                                                       (let ()
                                                         (let* ((_%g2383223840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2383323836%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2383323836%_)))
                        (_%g2383124649%_
                         (lambda (_%g2383323844%_)
                           ((lambda (_%L23847%_)
                              (let ()
                                (let* ((_%g2386023868%_
                                        (lambda (_%g2386123864%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2386123864%_)))
                                       (_%g2385924614%_
                                        (lambda (_%g2386123872%_)
                                          ((lambda (_%L23875%_)
                                             (let ()
                                               (let* ((_%g2388823896%_
                                                       (lambda (_%g2388923892%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2388923892%_)))
                                                      (_%g2388724528%_
                                                       (lambda (_%g2388923900%_)
                                                         ((lambda (_%L23903%_)
                                                            (let ()
                                                              (let* ((_%g2391623924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2391723920%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2391723920%_)))
                             (_%g2391524516%_
                              (lambda (_%g2391723928%_)
                                ((lambda (_%L23931%_)
                                   (let ()
                                     (let* ((_%g2394423952%_
                                             (lambda (_%g2394523948%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g2394523948%_)))
                                            (_%g2394324512%_
                                             (lambda (_%g2394523956%_)
                                               ((lambda (_%L23959%_)
                                                  (let ()
                                                    (let* ((_%g2397223980%_
                                                            (lambda (_%g2397323976%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2397323976%_)))
                                                           (_%g2397124508%_
                                                            (lambda (_%g2397323984%_)
                                                              ((lambda (_%L23987%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_%g2400024008%_
                                   (lambda (_%g2400124004%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2400124004%_)))
                                  (_%g2399924473%_
                                   (lambda (_%g2400124012%_)
                                     ((lambda (_%L24015%_)
                                        (let ()
                                          (let* ((_%g2402824036%_
                                                  (lambda (_%g2402924032%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2402924032%_)))
                                                 (_%g2402724402%_
                                                  (lambda (_%g2402924040%_)
                                                    ((lambda (_%L24043%_)
                                                       (let ()
                                                         (let* ((_%g2405624064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2405724060%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2405724060%_)))
                        (_%g2405524398%_
                         (lambda (_%g2405724068%_)
                           ((lambda (_%L24071%_)
                              (let ()
                                (let* ((_%g2408424092%_
                                        (lambda (_%g2408524088%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2408524088%_)))
                                       (_%g2408324394%_
                                        (lambda (_%g2408524096%_)
                                          ((lambda (_%L24099%_)
                                             (let ()
                                               (let* ((_%g2411224120%_
                                                       (lambda (_%g2411324116%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2411324116%_)))
                                                      (_%g2411124390%_
                                                       (lambda (_%g2411324124%_)
                                                         ((lambda (_%L24127%_)
                                                            (let ()
                                                              (let* ((_%g2414024148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2414124144%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2414124144%_)))
                             (_%g2413924364%_
                              (lambda (_%g2414124152%_)
                                ((lambda (_%L24155%_)
                                   (let ()
                                     (let* ((_%g2416824176%_
                                             (lambda (_%g2416924172%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g2416924172%_)))
                                            (_%g2416724338%_
                                             (lambda (_%g2416924180%_)
                                               ((lambda (_%L24183%_)
                                                  (let ()
                                                    (let* ((_%g2419624204%_
                                                            (lambda (_%g2419724200%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2419724200%_)))
                                                           (_%g2419524312%_
                                                            (lambda (_%g2419724208%_)
                                                              ((lambda (_%L24211%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_%g2422424232%_
                                   (lambda (_%g2422524228%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2422524228%_)))
                                  (_%g2422324286%_
                                   (lambda (_%g2422524236%_)
                                     ((lambda (_%L24239%_)
                                        (let ()
                                          (let* ((_%g2425224260%_
                                                  (lambda (_%g2425324256%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2425324256%_)))
                                                 (_%g2425124282%_
                                                  (lambda (_%g2425324264%_)
                                                    ((lambda (_%L24267%_)
                                                       (let ()
                                                         (let ()
                                                           (let ((__tmp27406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin)
                                (cons _%L23819%_ (cons _%L24267%_ '())))))
                     (declare (not safe))
                     (_%wrap22683%_ __tmp27406)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2425324264%_)))
                                                 (__tmp27407
                                                  (let ((__tmp27408
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'defsyntax)
                                                               (cons _%L22713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-class-type-info)
                                         (cons 'id:
                                               (cons _%L23847%_
                                                     (cons 'name:
                                                           (cons _%L23875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'slots:
                               (cons _%L23931%_
                                     (cons 'super:
                                           (cons _%L23903%_
                                                 (cons 'struct?:
                                                       (cons _%L23959%_
                                                             (cons 'final?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L23987%_
                                 (cons 'metaclass:
                                       (cons _%L24015%_
                                             (cons 'constructor-method:
                                                   (cons _%L24043%_
                                                         (cons 'type-descriptor:
                                                               (cons _%L24071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'constructor:
                                   (cons _%L24099%_
                                         (cons 'predicate:
                                               (cons _%L24127%_
                                                     (cons 'accessors:
                                                           (cons _%L24155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'mutators:
                               (cons _%L24183%_
                                     (cons 'unchecked-accessors:
                                           (cons _%L24211%_
                                                 (cons 'unchecked-mutators:
                                                       (cons _%L24239%_
                                                             '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%wrap22683%_
                                                     __tmp27408))))
                                            (declare (not safe))
                                            (_%g2425124282%_ __tmp27407))))
                                      _%g2422524236%_)))
                                  (__tmp27409
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%L23396%_
                                            _%L22895%_)
                                           (foldr (lambda (_%g2428924296%_
                                                           _%g2429024299%_
                                                           _%g2429124301%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2429024299%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2428924296%_ '()))
                                          '()))))
                  _%g2429124301%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L23538%_
                                                     _%L23111%_)
                                                    (foldr (lambda (_%g2429224304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2429324307%_
                            _%g2429424309%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2429324307%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2429224304%_
                                                               '()))
                                                   '()))))
                           _%g2429424309%_))
                   '()
                   _%L23538%_
                   _%L23111%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%L23396%_
                                                  _%L22895%_)))))
                             (declare (not safe))
                             (_%g2422324286%_ __tmp27409))))
                       _%g2419724208%_)))
                   (__tmp27410
                    (cons (gx#datum->syntax '#f '@list)
                          (begin
                            (gx#syntax-check-splice-targets
                             _%L23325%_
                             _%L22895%_)
                            (foldr (lambda (_%g2431524322%_
                                            _%g2431624325%_
                                            _%g2431724327%_)
                                     (cons (cons (gx#datum->syntax '#f '@list)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%g2431624325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons '::
                     (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _%g2431524322%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2431724327%_))
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _%L23467%_
                                      _%L23111%_)
                                     (foldr (lambda (_%g2431824330%_
                                                     _%g2431924333%_
                                                     _%g2432024335%_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%g2431924333%_ '()))
                        (cons '::
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g2431824330%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2432024335%_))
                                            '()
                                            _%L23467%_
                                            _%L23111%_))
                                   _%L23325%_
                                   _%L22895%_)))))
              (declare (not safe))
              (_%g2419524312%_ __tmp27410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g2416924180%_)))
                                            (__tmp27411
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L23037%_
                                                      _%L22895%_)
                                                     (foldr (lambda (_%g2434124348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2434224351%_
                             _%g2434324353%_)
                      (cons (cons (gx#datum->syntax '#f '@list)
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%g2434224351%_ '()))
                                        (cons '::
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _%g2434124348%_
                                                                '()))
                                                    '()))))
                            _%g2434324353%_))
                    (begin
                      (gx#syntax-check-splice-targets _%L23254%_ _%L23111%_)
                      (foldr (lambda (_%g2434424356%_
                                      _%g2434524359%_
                                      _%g2434624361%_)
                               (cons (cons (gx#datum->syntax '#f '@list)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _%g2434524359%_
                                                             '()))
                                                 (cons '::
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote-syntax)
                           (cons _%g2434424356%_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2434624361%_))
                             '()
                             _%L23254%_
                             _%L23111%_))
                    _%L23037%_
                    _%L22895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (_%g2416724338%_ __tmp27411))))
                                 _%g2414124152%_)))
                             (__tmp27412
                              (cons (gx#datum->syntax '#f '@list)
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _%L22966%_
                                       _%L22895%_)
                                      (foldr (lambda (_%g2436724374%_
                                                      _%g2436824377%_
                                                      _%g2436924379%_)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%g2436824377%_ '()))
                         (cons '::
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _%g2436724374%_ '()))
                                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2436924379%_))
                                             (begin
                                               (gx#syntax-check-splice-targets
                                                _%L23183%_
                                                _%L23111%_)
                                               (foldr (lambda (_%g2437024382%_
                                                               _%g2437124385%_
                                                               _%g2437224387%_)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@list)
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%g2437124385%_ '()))
                                  (cons '::
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax)
                                                    (cons _%g2437024382%_ '()))
                                              '()))))
                      _%g2437224387%_))
              '()
              _%L23183%_
              _%L23111%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%L22966%_
                                             _%L22895%_)))))
                        (declare (not safe))
                        (_%g2413924364%_ __tmp27412))))
                  _%g2411324124%_)))
              (__tmp27413
               (cons (gx#datum->syntax '#f 'quote-syntax)
                     (cons _%L22800%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2411124390%_
                                                  __tmp27413))))
                                           _%g2408524096%_)))
                                       (__tmp27414
                                        (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _%L22772%_ '()))))
                                  (declare (not safe))
                                  (_%g2408324394%_ __tmp27414))))
                            _%g2405724068%_)))
                        (__tmp27415
                         (cons (gx#datum->syntax '#f 'quote-syntax)
                               (cons _%L22744%_ '()))))
                   (declare (not safe))
                   (_%g2405524398%_ __tmp27415))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2402924040%_)))
                                                 (__tmp27416
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (null? _%type-constructor23623%_))
                                                      '#f
                                                      (let* ((_%g2440624421%_
                                                              (lambda (_%g2440724417%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2440724417%_)))
                     (_%g2440524469%_
                      (lambda (_%g2440724425%_)
                        (if (gx#stx-pair? _%g2440724425%_)
                            (let ((_%e2441124428%_
                                   (gx#syntax-e _%g2440724425%_)))
                              (let ((_%hd2441024432%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2441124428%_)))
                                    (_%tl2440924435%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2441124428%_))))
                                (if (gx#stx-datum? _%hd2441024432%_)
                                    (let ((_%e2441224438%_
                                           (gx#stx-e _%hd2441024432%_)))
                                      (if (equal? _%e2441224438%_
                                                  'constructor:)
                                          (if (gx#stx-pair? _%tl2440924435%_)
                                              (let ((_%e2441524442%_
                                                     (gx#syntax-e
                                                      _%tl2440924435%_)))
                                                (let ((_%hd2441424446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2441524442%_)))
                                                      (_%tl2441324449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2441524442%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2441324449%_)
                                                      ((lambda (_%L24452%_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%L24452%_ '()))))
               _%hd2441424446%_)
              (let ()
                (declare (not safe))
                (_%g2440624421%_ _%g2440724425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g2440624421%_
                                                 _%g2440724425%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g2440624421%_
                                             _%g2440724425%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2440624421%_ _%g2440724425%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2440624421%_ _%g2440724425%_))))))
                (declare (not safe))
                (_%g2440524469%_ _%type-constructor23623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_%g2402724402%_ __tmp27416))))
                                      _%g2400124012%_)))
                                  (__tmp27417
                                   (if _%metaclass23714%_
                                       (let* ((_%g2447724485%_
                                               (lambda (_%g2447824481%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2447824481%_)))
                                              (_%g2447624504%_
                                               (lambda (_%g2447824489%_)
                                                 ((lambda (_%L24492%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quote-syntax)
                                                            (cons _%L24492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2447824489%_))))
                                         (declare (not safe))
                                         (_%g2447624504%_ _%metaclass23714%_))
                                       '#f)))
                             (declare (not safe))
                             (_%g2399924473%_ __tmp27417))))
                       _%g2397323984%_))))
              (declare (not safe))
              (_%g2397124508%_ _%final?23720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g2394523956%_))))
                                       (declare (not safe))
                                       (_%g2394324512%_ _%struct?22695%_))))
                                 _%g2391723928%_)))
                             (__tmp27418
                              (cons (gx#datum->syntax '#f 'quote)
                                    (cons (foldr (lambda (_%g2451924522%_
                                                          _%g2452024525%_)
                                                   (cons _%g2451924522%_
                                                         _%g2452024525%_))
                                                 '()
                                                 _%L22895%_)
                                          '()))))
                        (declare (not safe))
                        (_%g2391524516%_ __tmp27418))))
                  _%g2388923900%_)))
              (__tmp27419
               (let* ((_%g2453224549%_
                       (lambda (_%g2453324545%_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2453324545%_)))
                      (_%g2453124610%_
                       (lambda (_%g2453324553%_)
                         (if (gx#stx-pair/null? _%g2453324553%_)
                             (let ((_g27420_
                                    (gx#syntax-split-splice
                                     _%g2453324553%_
                                     '0)))
                               (begin
                                 (let ((_g27421_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27420_)
                                              (##vector-length _g27420_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27421_ 2)))
                                       (error "Context expects 2 values"
                                              _g27421_)))
                                 (let ((_%target2453524556%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27420_ 0)))
                                       (_%tl2453724559%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27420_ 1))))
                                   (if (gx#stx-null? _%tl2453724559%_)
                                       (letrec ((_%loop2453824562%_
                                                 (lambda (_%hd2453624566%_
                                                          _%super-id2454224569%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2453624566%_)
                                                       (let ((_%e2453924572%_
                                                              (gx#syntax-e
                                                               _%hd2453624566%_)))
                                                         (let ((_%lp-hd2454024576%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2453924572%_)))
                       (_%lp-tl2454124579%_
                        (let () (declare (not safe)) (##cdr _%e2453924572%_))))
                   (let ((__tmp27422
                          (cons _%lp-hd2454024576%_ _%super-id2454224569%_)))
                     (declare (not safe))
                     (_%loop2453824562%_ _%lp-tl2454124579%_ __tmp27422))))
               (let ((_%super-id2454324582%_ (reverse _%super-id2454224569%_)))
                 ((lambda (_%L24586%_)
                    (let ()
                      (cons (gx#datum->syntax '#f '@list)
                            (foldr (lambda (_%g2460124604%_ _%g2460224607%_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _%g2460124604%_ '()))
                                           _%g2460224607%_))
                                   '()
                                   _%L24586%_))))
                  _%super-id2454324582%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_%loop2453824562%_
                                            _%target2453524556%_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_%g2453224549%_ _%g2453324553%_))))))
                             (let ()
                               (declare (not safe))
                               (_%g2453224549%_ _%g2453324553%_))))))
                 (declare (not safe))
                 (_%g2453124610%_ _%super-ref22679%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2388724528%_
                                                  __tmp27419))))
                                           _%g2386123872%_)))
                                       (__tmp27423
                                        (let* ((_%g2461824626%_
                                                (lambda (_%g2461924622%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2461924622%_)))
                                               (_%g2461724645%_
                                                (lambda (_%g2461924630%_)
                                                  ((lambda (_%L24633%_)
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L24633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2461924630%_)))
                                               (__tmp27424
                                                (cadr _%type-name23601%_)))
                                          (declare (not safe))
                                          (_%g2461724645%_ __tmp27424))))
                                  (declare (not safe))
                                  (_%g2385924614%_ __tmp27423))))
                            _%g2383323844%_)))
                        (__tmp27425
                         (let* ((_%g2465324668%_
                                 (lambda (_%g2465424664%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2465424664%_)))
                                (_%g2465224716%_
                                 (lambda (_%g2465424672%_)
                                   (if (gx#stx-pair? _%g2465424672%_)
                                       (let ((_%e2465824675%_
                                              (gx#syntax-e _%g2465424672%_)))
                                         (let ((_%hd2465724679%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2465824675%_)))
                                               (_%tl2465624682%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2465824675%_))))
                                           (if (gx#stx-datum? _%hd2465724679%_)
                                               (let ((_%e2465924685%_
                                                      (gx#stx-e
                                                       _%hd2465724679%_)))
                                                 (if (equal? _%e2465924685%_
                                                             'id:)
                                                     (if (gx#stx-pair?
                                                          _%tl2465624682%_)
                                                         (let ((_%e2466224689%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl2465624682%_)))
                   (let ((_%hd2466124693%_
                          (let ()
                            (declare (not safe))
                            (##car _%e2466224689%_)))
                         (_%tl2466024696%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e2466224689%_))))
                     (if (gx#stx-null? _%tl2466024696%_)
                         ((lambda (_%L24699%_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%L24699%_ '()))))
                          _%hd2466124693%_)
                         (let ()
                           (declare (not safe))
                           (_%g2465324668%_ _%g2465424672%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g2465324668%_ _%g2465424672%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g2465324668%_
                                                        _%g2465424672%_))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g2465324668%_
                                                  _%g2465424672%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g2465324668%_ _%g2465424672%_))))))
                           (declare (not safe))
                           (_%g2465224716%_ _%type-id23608%_))))
                   (declare (not safe))
                   (_%g2383124649%_ __tmp27425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2380523816%_)))
                                                 (__tmp27426
                                                  (let ((__tmp27427
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'defclass-type)
                                                               (cons _%L22744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L22828%_
                                   (cons _%L22772%_
                                         (cons _%L22800%_
                                               (foldr (lambda (_%g2472324726%_
                                                               _%g2472424729%_)
                                                        (cons _%g2472324726%_
                                                              _%g2472424729%_))
                                                      '()
                                                      _%L23783%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%wrap22683%_
                                                     __tmp27427))))
                                            (declare (not safe))
                                            (_%g2380324720%_ __tmp27426))))
                                      _%type-body2374023779%_))))))
                     (let ()
                       (declare (not safe))
                       (_%loop2373523759%_ _%target2373223753%_ '())))
                   (let ()
                     (declare (not safe))
                     (_%g2372923746%_ _%g2373023750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g2372923746%_
                                                    _%g2373023750%_)))))
                                          (__tmp27428
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (foldr cons
                                             (foldr cons
                                                    (foldr cons
                                                           _%type-mixin-slots23594%_
                                                           _%type-slots23573%_)
                                                    _%type-properties23702%_)
                                             _%type-metaclass23717%_)
                                      _%type-final23726%_)
                               _%type-struct23723%_)
                        _%type-constructor23623%_)
                 _%type-name23601%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%type-id23608%_)))
                                     (declare (not safe))
                                     (_%g2372824732%_ __tmp27428))))
                               _%mixin-usetf2349523534%_))))))
              (let ()
                (declare (not safe))
                (_%loop2349023514%_ _%target2348723508%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2348423501%_
                                                       _%g2348523505%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g2348423501%_
                                             _%g2348523505%_)))))
                                   (__tmp27429
                                    (gx#stx-map
                                     (lambda (_%g2473924741%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%make-id22685%_
                                          '"&"
                                          _%g2473924741%_)))
                                     (foldr (lambda (_%g2474424747%_
                                                     _%g2474524750%_)
                                              (cons _%g2474424747%_
                                                    _%g2474524750%_))
                                            '()
                                            _%L23254%_))))
                              (declare (not safe))
                              (_%g2348324736%_ __tmp27429))))
                        _%mixin-ugetf2342423463%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%loop2341923443%_
                                                  _%target2341623437%_
                                                  '())))
                                             (let ()
                                               (declare (not safe))
                                               (_%g2341323430%_
                                                _%g2341423434%_))))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g2341323430%_ _%g2341423434%_)))))
                            (__tmp27430
                             (gx#stx-map
                              (lambda (_%g2475624758%_)
                                (let ()
                                  (declare (not safe))
                                  (_%make-id22685%_ '"&" _%g2475624758%_)))
                              (foldr (lambda (_%g2476124764%_ _%g2476224767%_)
                                       (cons _%g2476124764%_ _%g2476224767%_))
                                     '()
                                     _%L23183%_))))
                       (declare (not safe))
                       (_%g2341224753%_ __tmp27430))))
                 _%usetf2335323392%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_%loop2334823372%_
                                           _%target2334523366%_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_%g2334223359%_ _%g2334323363%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g2334223359%_ _%g2334323363%_)))))
                     (__tmp27431
                      (gx#stx-map
                       (lambda (_%g2477324775%_)
                         (let ()
                           (declare (not safe))
                           (_%make-id22685%_ '"&" _%g2477324775%_)))
                       (foldr (lambda (_%g2477824781%_ _%g2477924784%_)
                                (cons _%g2477824781%_ _%g2477924784%_))
                              '()
                              _%L23037%_))))
                (declare (not safe))
                (_%g2334124770%_ __tmp27431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%ugetf2328223321%_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_%loop2327723301%_
                                    _%target2327423295%_
                                    '())))
                               (let ()
                                 (declare (not safe))
                                 (_%g2327123288%_ _%g2327223292%_))))))
                     (let ()
                       (declare (not safe))
                       (_%g2327123288%_ _%g2327223292%_)))))
              (__tmp27432
               (gx#stx-map
                (lambda (_%g2479024792%_)
                  (let ()
                    (declare (not safe))
                    (_%make-id22685%_ '"&" _%g2479024792%_)))
                (foldr (lambda (_%g2479524798%_ _%g2479624801%_)
                         (cons _%g2479524798%_ _%g2479624801%_))
                       '()
                       _%L22966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2327024787%_
                                                  __tmp27432))))
                                           _%mixin-setf2321123250%_))))))
                          (let ()
                            (declare (not safe))
                            (_%loop2320623230%_ _%target2320323224%_ '())))
                        (let ()
                          (declare (not safe))
                          (_%g2320023217%_ _%g2320123221%_))))))
              (let ()
                (declare (not safe))
                (_%g2320023217%_ _%g2320123221%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp27433
                                                (gx#stx-map
                                                 (lambda (_%g2480724809%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%make-id22685%_
                                                      _%name22689%_
                                                      '"-"
                                                      _%g2480724809%_
                                                      '"-set!")))
                                                 _%mixin-slots23054%_)))
                                          (declare (not safe))
                                          (_%g2319924804%_ __tmp27433))))
                                    _%mixin-getf2314023179%_))))))
                   (let ()
                     (declare (not safe))
                     (_%loop2313523159%_ _%target2313223153%_ '())))
                 (let ()
                   (declare (not safe))
                   (_%g2312923146%_ _%g2313023150%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g2312923146%_
                                                  _%g2313023150%_)))))
                                        (__tmp27434
                                         (gx#stx-map
                                          (lambda (_%g2481624818%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%make-id22685%_
                                               _%name22689%_
                                               '"-"
                                               _%g2481624818%_)))
                                          _%mixin-slots23054%_)))
                                   (declare (not safe))
                                   (_%g2312824813%_ __tmp27434))))
                             _%mixin-slot2306823107%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop2306323087%_
                                                       _%target2306023081%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2305723074%_
                                                     _%g2305823078%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2305723074%_
                                           _%g2305823078%_))))))
                            (declare (not safe))
                            (_%g2305624822%_ _%mixin-slots23054%_))))
                      _%setf2299423033%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_%loop2298923013%_
                                                _%target2298623007%_
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_%g2298323000%_
                                              _%g2298423004%_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g2298323000%_ _%g2298423004%_)))))
                          (__tmp27435
                           (gx#stx-map
                            (lambda (_%g2482924831%_)
                              (let ()
                                (declare (not safe))
                                (_%make-id22685%_
                                 _%name22689%_
                                 '"-"
                                 _%g2482924831%_
                                 '"-set!")))
                            _%slots22680%_)))
                     (declare (not safe))
                     (_%g2298224826%_ __tmp27435))))
               _%getf2292322962%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop2291822942%_
                                         _%target2291522936%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2291222929%_ _%g2291322933%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g2291222929%_ _%g2291322933%_)))))
                   (__tmp27436
                    (gx#stx-map
                     (lambda (_%g2483824840%_)
                       (let ()
                         (declare (not safe))
                         (_%make-id22685%_
                          _%name22689%_
                          '"-"
                          _%g2483824840%_)))
                     _%slots22680%_)))
              (declare (not safe))
              (_%g2291124835%_ __tmp27436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%slot2285222891%_))))))
                               (let ()
                                 (declare (not safe))
                                 (_%loop2284722871%_
                                  _%target2284422865%_
                                  '())))
                             (let ()
                               (declare (not safe))
                               (_%g2284122858%_ _%g2284222862%_))))))
                   (let ()
                     (declare (not safe))
                     (_%g2284122858%_ _%g2284222862%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g2284024844%_
                                                _%slots22680%_))))
                                         _%g2281422825%_)))
                                     (__tmp27437
                                      (let ()
                                        (declare (not safe))
                                        (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                               _%super22692%_))))
                                (declare (not safe))
                                (_%g2281224848%_ __tmp27437))))
                          _%g2278622797%_)))
                      (__tmp27438
                       (let ()
                         (declare (not safe))
                         (_%make-id22685%_ _%name22689%_ '"?"))))
                 (declare (not safe))
                 (_%g2278424852%_ __tmp27438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2275822769%_)))
                                               (__tmp27439
                                                (let ()
                                                  (declare (not safe))
                                                  (_%make-id22685%_
                                                   '"make-"
                                                   _%name22689%_))))
                                          (declare (not safe))
                                          (_%g2275624856%_ __tmp27439))))
                                    _%g2273022741%_)))
                                (__tmp27440
                                 (let ()
                                   (declare (not safe))
                                   (_%make-id22685%_ _%name22689%_ '"::t"))))
                           (declare (not safe))
                           (_%g2272824860%_ __tmp27440))))
                     _%g2269922710%_))))
            (declare (not safe))
            (_%g2269724864%_ _%id22678%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24931%_)
        (let* ((_%g2493524954%_
                (lambda (_%g2493624950%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2493624950%_)))
               (_%g2493425011%_
                (lambda (_%g2493624958%_)
                  (if (gx#stx-pair? _%g2493624958%_)
                      (let ((_%e2494224961%_ (gx#syntax-e _%g2493624958%_)))
                        (let ((_%hd2494124965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2494224961%_)))
                              (_%tl2494024968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2494224961%_))))
                          (if (gx#stx-pair? _%tl2494024968%_)
                              (let ((_%e2494524971%_
                                     (gx#syntax-e _%tl2494024968%_)))
                                (let ((_%hd2494424975%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2494524971%_)))
                                      (_%tl2494324978%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2494524971%_))))
                                  (if (gx#stx-pair? _%tl2494324978%_)
                                      (let ((_%e2494824981%_
                                             (gx#syntax-e _%tl2494324978%_)))
                                        (let ((_%hd2494724985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2494824981%_)))
                                              (_%tl2494624988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2494824981%_))))
                                          ((lambda (_%L24991%_
                                                    _%L24993%_
                                                    _%L24994%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%L24994%_
                                                         (cons _%L24993%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L24991%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2494624988%_
                                           _%hd2494724985%_
                                           _%hd2494424975%_)))
                                      (_%g2493524954%_ _%g2493624958%_))))
                              (_%g2493524954%_ _%g2493624958%_))))
                      (_%g2493524954%_ _%g2493624958%_)))))
          (_%g2493425011%_ _%$stx24931%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx25015%_)
        (letrec ((_%generate25018%_
                  (lambda (_%hd25102%_ _%slots25104%_ _%body25105%_)
                    (let* ((_%__stx2687026871%_ _%hd25102%_)
                           (_%g2510825120%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2687026871%_))))
                      (let ((_%__kont2687326874%_
                             (lambda (_%L25148%_ _%L25150%_)
                               (let ((__tmp27441 (gx#syntax->list _%L25148%_)))
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                  _%stx25015%_
                                  _%L25150%_
                                  __tmp27441
                                  _%slots25104%_
                                  _%body25105%_))))
                            (_%__kont2687526876%_
                             (lambda ()
                               (if (gx#identifier? _%hd25102%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                      _%stx25015%_
                                      _%hd25102%_
                                      '()
                                      _%slots25104%_
                                      _%body25105%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _%stx25015%_
                                    _%hd25102%_)))))
                        (let ((_%__match2688326884%_
                               (lambda (_%e2511425138%_
                                        _%hd2511325142%_
                                        _%tl2511225145%_)
                                 (let ((_%L25148%_ _%tl2511225145%_)
                                       (_%L25150%_ _%hd2511325142%_))
                                   (if (and (gx#stx-list? _%L25148%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%L25148%_))
                                       (_%__kont2687326874%_
                                        _%L25148%_
                                        _%L25150%_)
                                       (_%__kont2687526876%_))))))
                          (if (gx#stx-pair? _%__stx2687026871%_)
                              (let ((_%e2511425138%_
                                     (gx#syntax-e _%__stx2687026871%_)))
                                (let ((_%tl2511225145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2511425138%_)))
                                      (_%hd2511325142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2511425138%_))))
                                  (_%__match2688326884%_
                                   _%e2511425138%_
                                   _%hd2511325142%_
                                   _%tl2511225145%_)))
                              (_%__kont2687526876%_))))))))
          (let* ((_%g2502125040%_
                  (lambda (_%g2502225036%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2502225036%_)))
                 (_%g2502025098%_
                  (lambda (_%g2502225044%_)
                    (if (gx#stx-pair? _%g2502225044%_)
                        (let ((_%e2502825047%_ (gx#syntax-e _%g2502225044%_)))
                          (let ((_%hd2502725051%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2502825047%_)))
                                (_%tl2502625054%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2502825047%_))))
                            (if (gx#stx-pair? _%tl2502625054%_)
                                (let ((_%e2503125057%_
                                       (gx#syntax-e _%tl2502625054%_)))
                                  (let ((_%hd2503025061%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2503125057%_)))
                                        (_%tl2502925064%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2503125057%_))))
                                    (if (gx#stx-pair? _%tl2502925064%_)
                                        (let ((_%e2503425067%_
                                               (gx#syntax-e _%tl2502925064%_)))
                                          (let ((_%hd2503325071%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2503425067%_)))
                                                (_%tl2503225074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2503425067%_))))
                                            ((lambda (_%L25077%_
                                                      _%L25079%_
                                                      _%L25080%_)
                                               (if (and (gx#identifier-list?
                                                         _%L25079%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                           _%L25077%_)))
                                                   (_%generate25018%_
                                                    _%L25080%_
                                                    _%L25079%_
                                                    _%L25077%_)
                                                   (_%g2502125040%_
                                                    _%g2502225044%_)))
                                             _%tl2503225074%_
                                             _%hd2503325071%_
                                             _%hd2503025061%_)))
                                        (_%g2502125040%_ _%g2502225044%_))))
                                (_%g2502125040%_ _%g2502225044%_))))
                        (_%g2502125040%_ _%g2502225044%_)))))
            (_%g2502025098%_ _%stx25015%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25167%_)
        (letrec ((_%wrap25170%_
                  (lambda (_%e-stx25516%_)
                    (gx#stx-wrap-source
                     _%e-stx25516%_
                     (gx#stx-source _%stx25167%_))))
                 (_%method-opt?25172%_
                  (lambda (_%x25513%_)
                    (let ((__tmp27442 (gx#stx-e _%x25513%_)))
                      (declare (not safe))
                      (##memq __tmp27442 '(rebind:))))))
          (let* ((_%g2517425203%_
                  (lambda (_%g2517525199%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2517525199%_)))
                 (_%g2517325509%_
                  (lambda (_%g2517525207%_)
                    (if (gx#stx-pair? _%g2517525207%_)
                        (let ((_%e2518225210%_ (gx#syntax-e _%g2517525207%_)))
                          (let ((_%hd2518125214%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2518225210%_)))
                                (_%tl2518025217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2518225210%_))))
                            (if (gx#stx-pair? _%tl2518025217%_)
                                (let ((_%e2518525220%_
                                       (gx#syntax-e _%tl2518025217%_)))
                                  (let ((_%hd2518425224%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2518525220%_)))
                                        (_%tl2518325227%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2518525220%_))))
                                    (if (gx#stx-pair? _%hd2518425224%_)
                                        (let ((_%e2518825230%_
                                               (gx#syntax-e _%hd2518425224%_)))
                                          (let ((_%hd2518725234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2518825230%_)))
                                                (_%tl2518625237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2518825230%_))))
                                            (if (gx#identifier?
                                                 _%hd2518725234%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27443_|
                                                     _%hd2518725234%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2518625237%_)
                                                        (let ((_%e2519125240%_
                                                               (gx#syntax-e
                                                                _%tl2518625237%_)))
                                                          (let ((_%hd2519025244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2519125240%_)))
                        (_%tl2518925247%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2519125240%_))))
                    (if (gx#stx-pair? _%tl2518925247%_)
                        (let ((_%e2519425250%_ (gx#syntax-e _%tl2518925247%_)))
                          (let ((_%hd2519325254%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2519425250%_)))
                                (_%tl2519225257%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2519425250%_))))
                            (if (gx#stx-null? _%tl2519225257%_)
                                (if (gx#stx-pair? _%tl2518325227%_)
                                    (let ((_%e2519725260%_
                                           (gx#syntax-e _%tl2518325227%_)))
                                      (let ((_%hd2519625264%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2519725260%_)))
                                            (_%tl2519525267%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2519725260%_))))
                                        ((lambda (_%L25270%_
                                                  _%L25272%_
                                                  _%L25273%_
                                                  _%L25274%_)
                                           (if (and (gx#identifier? _%L25274%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                       _%L25273%_))
                                                    (gx#stx-plist?
                                                     _%L25270%_
                                                     _%method-opt?25172%_))
                                               (let ()
                                                 (let* ((_%klass25301%_
                                                         (gx#syntax-local-value
                                                          _%L25273%_))
                                                        (_%rebind?25304%_
                                                         (gx#stx-e
                                                          (gx#stx-getq
                                                           'rebind:
                                                           _%L25270%_)))
                                                        (_%g2530725315%_
                                                         (lambda (_%g2530825311%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2530825311%_)))
                                                        (_%g2530625499%_
                                                         (lambda (_%g2530825319%_)
                                                           ((lambda (_%L25322%_)
                                                              (let ()
                                                                (let* ((_%g2533725345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g2533825341%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g2533825341%_)))
                               (_%g2533625495%_
                                (lambda (_%g2533825349%_)
                                  ((lambda (_%L25352%_)
                                     (let ()
                                       (let* ((_%g2536525373%_
                                               (lambda (_%g2536625369%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2536625369%_)))
                                              (_%g2536425491%_
                                               (lambda (_%g2536625377%_)
                                                 ((lambda (_%L25380%_)
                                                    (let ()
                                                      (let* ((_%g2539325401%_
                                                              (lambda (_%g2539425397%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2539425397%_)))
                     (_%g2539225487%_
                      (lambda (_%g2539425405%_)
                        ((lambda (_%L25408%_)
                           (let ()
                             (let* ((_%g2542125429%_
                                     (lambda (_%g2542225425%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2542225425%_)))
                                    (_%g2542025483%_
                                     (lambda (_%g2542225433%_)
                                       ((lambda (_%L25436%_)
                                          (let ()
                                            (let* ((_%g2544925457%_
                                                    (lambda (_%g2545025453%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g2545025453%_)))
                                                   (_%g2544825479%_
                                                    (lambda (_%g2545025461%_)
                                                      ((lambda (_%L25464%_)
                                                         (let ()
                                                           (let ()
                                                             (_%wrap25170%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin)
                            (cons _%L25408%_ (cons _%L25464%_ '())))))))
               _%g2545025461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2544825479%_
                                               (_%wrap25170%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'bind-method!)
                                                      (cons _%L25322%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L25274%_ '()))
                          (cons _%L25352%_ (cons _%L25436%_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2542225433%_))))
                               (_%g2542025483%_ _%rebind?25304%_))))
                         _%g2539425405%_))))
                (_%g2539225487%_
                 (_%wrap25170%_
                  (cons (gx#datum->syntax '#f 'def)
                        (cons _%L25352%_
                              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                          (cons (cons (cons _%L25380%_
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
                                                              (cons _%L25322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'obj)
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%L25274%_ '()))
                                        (cons (gx#datum->syntax '#f 'arg)
                                              (cons (gx#datum->syntax '#f '...)
                                                    '()))))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L25272%_ '())))
                                    '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2536625377%_))))
                                         (_%g2536425491%_
                                          (gx#stx-identifier
                                           _%L25273%_
                                           '@next-method)))))
                                   _%g2533825349%_))))
                          (_%g2533625495%_
                           (gx#stx-identifier
                            _%L25273%_
                            _%L25273%_
                            '"::"
                            _%L25274%_)))))
                    _%g2530825319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2530625499%_
                                                    (let ((__obj27150
                                                           _%klass25301%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj27150
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj27150
                                                             '12
                                                             '#f
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj27150
                                                           'type-descriptor))))))
                                               (if (let ((__tmp27444
                                                          (gx#identifier?
                                                           _%L25274%_)))
                                                     (declare (not safe))
                                                     (not __tmp27444))
                                                   (let ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"bad syntax; expected method identifier"
                                                      _%stx25167%_
                                                      _%L25274%_))
                                                   (if (let ((__tmp27445
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                         _%L25273%_))))
                 (declare (not safe))
                 (not __tmp27445))
               (let ()
                 (gx#raise-syntax-error
                  '#f
                  '"bad syntax; expected type identifier"
                  _%stx25167%_
                  _%L25273%_))
               (let ()
                 (gx#raise-syntax-error
                  '#f
                  '"bad syntax; illegal method options"
                  _%stx25167%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%tl2519525267%_
                                         _%hd2519625264%_
                                         _%hd2519325254%_
                                         _%hd2519025244%_)))
                                    (_%g2517425203%_ _%g2517525207%_))
                                (_%g2517425203%_ _%g2517525207%_))))
                        (_%g2517425203%_ _%g2517525207%_))))
                (_%g2517425203%_ _%g2517525207%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2517425203%_
                                                     _%g2517525207%_))
                                                (_%g2517425203%_
                                                 _%g2517525207%_))))
                                        (_%g2517425203%_ _%g2517525207%_))))
                                (_%g2517425203%_ _%g2517525207%_))))
                        (_%g2517425203%_ _%g2517525207%_)))))
            (_%g2517325509%_ _%stx25167%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25519%_)
        (letrec ((_%dotted-identifier?25522%_
                  (lambda (_%id26155%_)
                    (if (gx#identifier? _%id26155%_)
                        (let ((_%id-str26158%_
                               (symbol->string (gx#stx-e _%id26155%_))))
                          (if (string-index _%id-str26158%_ '#\.)
                              (let* ((_%split26161%_
                                      (string-split _%id-str26158%_ '#\.))
                                     (__tmp27446 (length _%split26161%_)))
                                (declare (not safe))
                                (##fx= __tmp27446 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25524%_
                  (lambda (_%id26144%_)
                    (let* ((_%id-str26147%_
                            (symbol->string (gx#stx-e _%id26144%_)))
                           (_%split26150%_
                            (string-split _%id-str26147%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26144%_
                             (car _%split26150%_))
                            (cons (gx#stx-identifier
                                   _%id26144%_
                                   (cadr _%split26150%_))
                                  '()))))))
          (let* ((_%__stx2688626887%_ _%stx25519%_)
                 (_%g2552925616%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2688626887%_))))
            (let ((_%__kont2688926890%_
                   (lambda (_%L26037%_ _%L26039%_ _%L26040%_)
                     (let* ((_%g2606826083%_
                             (lambda (_%g2606926079%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2606926079%_)))
                            (_%g2606726136%_
                             (lambda (_%g2606926087%_)
                               (if (gx#stx-pair? _%g2606926087%_)
                                   (let ((_%e2607426090%_
                                          (gx#syntax-e _%g2606926087%_)))
                                     (let ((_%hd2607326094%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2607426090%_)))
                                           (_%tl2607226097%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2607426090%_))))
                                       (if (gx#stx-pair? _%tl2607226097%_)
                                           (let ((_%e2607726100%_
                                                  (gx#syntax-e
                                                   _%tl2607226097%_)))
                                             (let ((_%hd2607626104%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2607726100%_)))
                                                   (_%tl2607526107%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2607726100%_))))
                                               (if (gx#stx-null?
                                                    _%tl2607526107%_)
                                                   ((lambda (_%L26110%_
                                                             _%L26112%_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'apply)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'call-method)
                            (cons _%L26112%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%L26110%_ '()))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (foldr (lambda (_%g2612726130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2612826133%_)
                     (cons _%g2612726130%_ _%g2612826133%_))
                   '()
                   _%L26039%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2607626104%_
                                                    _%hd2607326094%_)
                                                   (_%g2606826083%_
                                                    _%g2606926087%_))))
                                           (_%g2606826083%_ _%g2606926087%_))))
                                   (_%g2606826083%_ _%g2606926087%_)))))
                       (_%g2606726136%_ (_%split-dotted25524%_ _%L26040%_)))))
                  (_%__kont2689326894%_
                   (lambda (_%L25879%_ _%L25881%_)
                     (let* ((_%g2589825913%_
                             (lambda (_%g2589925909%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2589925909%_)))
                            (_%g2589725966%_
                             (lambda (_%g2589925917%_)
                               (if (gx#stx-pair? _%g2589925917%_)
                                   (let ((_%e2590425920%_
                                          (gx#syntax-e _%g2589925917%_)))
                                     (let ((_%hd2590325924%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2590425920%_)))
                                           (_%tl2590225927%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2590425920%_))))
                                       (if (gx#stx-pair? _%tl2590225927%_)
                                           (let ((_%e2590725930%_
                                                  (gx#syntax-e
                                                   _%tl2590225927%_)))
                                             (let ((_%hd2590625934%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2590725930%_)))
                                                   (_%tl2590525937%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2590725930%_))))
                                               (if (gx#stx-null?
                                                    _%tl2590525937%_)
                                                   ((lambda (_%L25940%_
                                                             _%L25942%_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'call-method)
                                                              (cons _%L25942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L25940%_ '()))
                                  (foldr (lambda (_%g2595725960%_
                                                  _%g2595825963%_)
                                           (cons _%g2595725960%_
                                                 _%g2595825963%_))
                                         '()
                                         _%L25879%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2590625934%_
                                                    _%hd2590325924%_)
                                                   (_%g2589825913%_
                                                    _%g2589925917%_))))
                                           (_%g2589825913%_ _%g2589925917%_))))
                                   (_%g2589825913%_ _%g2589925917%_)))))
                       (_%g2589725966%_ (_%split-dotted25524%_ _%L25881%_)))))
                  (_%__kont2689726898%_
                   (lambda (_%L25783%_ _%L25785%_ _%L25786%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%L25785%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L25786%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2581325816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2581425819%_)
                          (cons _%g2581325816%_ _%g2581425819%_))
                        '()
                        _%L25783%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2690126902%_
                   (lambda (_%L25683%_ _%L25685%_ _%L25686%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%L25685%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L25686%_ '()))
                                       (foldr (lambda (_%g2570725710%_
                                                       _%g2570825713%_)
                                                (cons _%g2570725710%_
                                                      _%g2570825713%_))
                                              '()
                                              _%L25683%_)))))))
              (let* ((_%__match2700527006%_
                      (lambda (_%e2559525623%_
                               _%hd2559425627%_
                               _%tl2559325630%_
                               _%e2559825633%_
                               _%hd2559725637%_
                               _%tl2559625640%_
                               _%e2560125643%_
                               _%hd2560025647%_
                               _%tl2559925650%_
                               _%__splice2690326904%_
                               _%target2560225653%_
                               _%tl2560425656%_)
                        (letrec ((_%loop2560525659%_
                                  (lambda (_%hd2560325663%_ _%arg2560925666%_)
                                    (if (gx#stx-pair? _%hd2560325663%_)
                                        (let ((_%e2560625669%_
                                               (gx#syntax-e _%hd2560325663%_)))
                                          (let ((_%lp-tl2560825676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2560625669%_)))
                                                (_%lp-hd2560725673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2560625669%_))))
                                            (_%loop2560525659%_
                                             _%lp-tl2560825676%_
                                             (cons _%lp-hd2560725673%_
                                                   _%arg2560925666%_))))
                                        (let ((_%arg2561025679%_
                                               (reverse _%arg2560925666%_)))
                                          (let ((_%L25683%_ _%arg2561025679%_)
                                                (_%L25685%_ _%hd2560025647%_)
                                                (_%L25686%_ _%hd2559725637%_))
                                            (if (gx#identifier? _%L25686%_)
                                                (_%__kont2690126902%_
                                                 _%L25683%_
                                                 _%L25685%_
                                                 _%L25686%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2552925616%_)))))))))
                          (_%loop2560525659%_ _%target2560225653%_ '()))))
                     (_%__match2697926980%_
                      (lambda (_%e2557425723%_
                               _%hd2557325727%_
                               _%tl2557225730%_
                               _%e2557725733%_
                               _%hd2557625737%_
                               _%tl2557525740%_
                               _%e2558025743%_
                               _%hd2557925747%_
                               _%tl2557825750%_
                               _%__splice2689926900%_
                               _%target2558125753%_
                               _%tl2558325756%_)
                        (letrec ((_%loop2558425759%_
                                  (lambda (_%hd2558225763%_ _%arg2558825766%_)
                                    (if (gx#stx-pair? _%hd2558225763%_)
                                        (let ((_%e2558525769%_
                                               (gx#syntax-e _%hd2558225763%_)))
                                          (let ((_%lp-tl2558725776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2558525769%_)))
                                                (_%lp-hd2558625773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2558525769%_))))
                                            (_%loop2558425759%_
                                             _%lp-tl2558725776%_
                                             (cons _%lp-hd2558625773%_
                                                   _%arg2558825766%_))))
                                        (let ((_%arg2558925779%_
                                               (reverse _%arg2558825766%_)))
                                          (let ((_%L25783%_ _%arg2558925779%_)
                                                (_%L25785%_ _%hd2557925747%_)
                                                (_%L25786%_ _%hd2557625737%_))
                                            (if (and (gx#identifier?
                                                      _%L25786%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2580525808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2580625811%_)
                       (cons _%g2580525808%_ _%g2580625811%_))
                     '()
                     _%L25783%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2689726898%_
                                                 _%L25783%_
                                                 _%L25785%_
                                                 _%L25786%_)
                                                (_%__match2700527006%_
                                                 _%e2557425723%_
                                                 _%hd2557325727%_
                                                 _%tl2557225730%_
                                                 _%e2557725733%_
                                                 _%hd2557625737%_
                                                 _%tl2557525740%_
                                                 _%e2558025743%_
                                                 _%hd2557925747%_
                                                 _%tl2557825750%_
                                                 _%__splice2689926900%_
                                                 _%target2558125753%_
                                                 _%tl2558325756%_))))))))
                          (_%loop2558425759%_ _%target2558125753%_ '()))))
                     (_%__match2696526966%_
                      (lambda (_%e2557425723%_
                               _%hd2557325727%_
                               _%tl2557225730%_
                               _%e2557725733%_
                               _%hd2557625737%_
                               _%tl2557525740%_)
                        (if (gx#stx-pair? _%tl2557525740%_)
                            (let ((_%e2558025743%_
                                   (gx#syntax-e _%tl2557525740%_)))
                              (let ((_%tl2557825750%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2558025743%_)))
                                    (_%hd2557925747%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2558025743%_))))
                                (if (gx#stx-pair/null? _%tl2557825750%_)
                                    (let ((_%__splice2689926900%_
                                           (gx#syntax-split-splice
                                            _%tl2557825750%_
                                            '0)))
                                      (let ((_%tl2558325756%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2689926900%_
                                                '1)))
                                            (_%target2558125753%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2689926900%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2558325756%_)
                                            (_%__match2697926980%_
                                             _%e2557425723%_
                                             _%hd2557325727%_
                                             _%tl2557225730%_
                                             _%e2557725733%_
                                             _%hd2557625737%_
                                             _%tl2557525740%_
                                             _%e2558025743%_
                                             _%hd2557925747%_
                                             _%tl2557825750%_
                                             _%__splice2689926900%_
                                             _%target2558125753%_
                                             _%tl2558325756%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2552925616%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2552925616%_)))))
                            (let () (declare (not safe)) (_%g2552925616%_)))))
                     (_%__match2695326954%_
                      (lambda (_%e2555625829%_
                               _%hd2555525833%_
                               _%tl2555425836%_
                               _%e2555925839%_
                               _%hd2555825843%_
                               _%tl2555725846%_
                               _%__splice2689526896%_
                               _%target2556025849%_
                               _%tl2556225852%_)
                        (letrec ((_%loop2556325855%_
                                  (lambda (_%hd2556125859%_ _%arg2556725862%_)
                                    (if (gx#stx-pair? _%hd2556125859%_)
                                        (let ((_%e2556425865%_
                                               (gx#syntax-e _%hd2556125859%_)))
                                          (let ((_%lp-tl2556625872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2556425865%_)))
                                                (_%lp-hd2556525869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2556425865%_))))
                                            (_%loop2556325855%_
                                             _%lp-tl2556625872%_
                                             (cons _%lp-hd2556525869%_
                                                   _%arg2556725862%_))))
                                        (let ((_%arg2556825875%_
                                               (reverse _%arg2556725862%_)))
                                          (let ((_%L25879%_ _%arg2556825875%_)
                                                (_%L25881%_ _%hd2555825843%_))
                                            (if (_%dotted-identifier?25522%_
                                                 _%L25881%_)
                                                (_%__kont2689326894%_
                                                 _%L25879%_
                                                 _%L25881%_)
                                                (_%__match2696526966%_
                                                 _%e2555625829%_
                                                 _%hd2555525833%_
                                                 _%tl2555425836%_
                                                 _%e2555925839%_
                                                 _%hd2555825843%_
                                                 _%tl2555725846%_))))))))
                          (_%loop2556325855%_ _%target2556025849%_ '()))))
                     (_%__match2695126952%_
                      (lambda (_%e2555625829%_
                               _%hd2555525833%_
                               _%tl2555425836%_
                               _%e2555925839%_
                               _%hd2555825843%_
                               _%tl2555725846%_
                               _%__splice2689526896%_
                               _%target2556025849%_
                               _%tl2556225852%_)
                        (if (gx#stx-null? _%tl2556225852%_)
                            (_%__match2695326954%_
                             _%e2555625829%_
                             _%hd2555525833%_
                             _%tl2555425836%_
                             _%e2555925839%_
                             _%hd2555825843%_
                             _%tl2555725846%_
                             _%__splice2689526896%_
                             _%target2556025849%_
                             _%tl2556225852%_)
                            (if (gx#stx-pair? _%tl2555725846%_)
                                (let ((_%e2558025743%_
                                       (gx#syntax-e _%tl2555725846%_)))
                                  (let ((_%tl2557825750%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2558025743%_)))
                                        (_%hd2557925747%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2558025743%_))))
                                    (if (gx#stx-pair/null? _%tl2557825750%_)
                                        (let ((_%__splice2689926900%_
                                               (gx#syntax-split-splice
                                                _%tl2557825750%_
                                                '0)))
                                          (let ((_%tl2558325756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2689926900%_
                                                    '1)))
                                                (_%target2558125753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2689926900%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2558325756%_)
                                                (_%__match2697926980%_
                                                 _%e2555625829%_
                                                 _%hd2555525833%_
                                                 _%tl2555425836%_
                                                 _%e2555925839%_
                                                 _%hd2555825843%_
                                                 _%tl2555725846%_
                                                 _%e2558025743%_
                                                 _%hd2557925747%_
                                                 _%tl2557825750%_
                                                 _%__splice2689926900%_
                                                 _%target2558125753%_
                                                 _%tl2558325756%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2552925616%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2552925616%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2552925616%_))))))
                     (_%__match2693326934%_
                      (lambda (_%e2553625977%_
                               _%hd2553525981%_
                               _%tl2553425984%_
                               _%e2553925987%_
                               _%hd2553825991%_
                               _%tl2553725994%_
                               _%__splice2689126892%_
                               _%target2554025997%_
                               _%tl2554226000%_
                               _%e2555126003%_
                               _%hd2555026007%_
                               _%tl2554926010%_)
                        (letrec ((_%loop2554326013%_
                                  (lambda (_%hd2554126017%_ _%arg2554726020%_)
                                    (if (gx#stx-pair? _%hd2554126017%_)
                                        (let ((_%e2554426023%_
                                               (gx#syntax-e _%hd2554126017%_)))
                                          (let ((_%lp-tl2554626030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2554426023%_)))
                                                (_%lp-hd2554526027%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2554426023%_))))
                                            (_%loop2554326013%_
                                             _%lp-tl2554626030%_
                                             (cons _%lp-hd2554526027%_
                                                   _%arg2554726020%_))))
                                        (let ((_%arg2554826033%_
                                               (reverse _%arg2554726020%_)))
                                          (let ((_%L26037%_ _%hd2555026007%_)
                                                (_%L26039%_ _%arg2554826033%_)
                                                (_%L26040%_ _%hd2553825991%_))
                                            (if (and (_%dotted-identifier?25522%_
                                                      _%L26040%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2605926062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2606026065%_)
                       (cons _%g2605926062%_ _%g2606026065%_))
                     '()
                     _%L26039%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2688926890%_
                                                 _%L26037%_
                                                 _%L26039%_
                                                 _%L26040%_)
                                                (let ((_%__splice2689526896%_
                                                       (gx#syntax-split-splice
                                                        _%tl2553725994%_
                                                        '0)))
                                                  (let ((_%tl2556225852%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2689526896%_
                                                            '1)))
                                                        (_%target2556025849%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2689526896%_
                                                            '0))))
                                                    (_%__match2695126952%_
                                                     _%e2553625977%_
                                                     _%hd2553525981%_
                                                     _%tl2553425984%_
                                                     _%e2553925987%_
                                                     _%hd2553825991%_
                                                     _%tl2553725994%_
                                                     _%__splice2689526896%_
                                                     _%target2556025849%_
                                                     _%tl2556225852%_))))))))))
                          (_%loop2554326013%_ _%target2554025997%_ '())))))
                (if (gx#stx-pair? _%__stx2688626887%_)
                    (let ((_%e2553625977%_ (gx#syntax-e _%__stx2688626887%_)))
                      (let ((_%tl2553425984%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2553625977%_)))
                            (_%hd2553525981%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2553625977%_))))
                        (if (gx#stx-pair? _%tl2553425984%_)
                            (let ((_%e2553925987%_
                                   (gx#syntax-e _%tl2553425984%_)))
                              (let ((_%tl2553725994%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2553925987%_)))
                                    (_%hd2553825991%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2553925987%_))))
                                (if (gx#stx-pair/null? _%tl2553725994%_)
                                    (if (let ((__tmp27447
                                               (gx#stx-length
                                                _%tl2553725994%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27447 '1))
                                        (let ((_%__splice2689126892%_
                                               (gx#syntax-split-splice
                                                _%tl2553725994%_
                                                '1)))
                                          (let ((_%tl2554226000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2689126892%_
                                                    '1)))
                                                (_%target2554025997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2689126892%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2554226000%_)
                                                (let ((_%e2555126003%_
                                                       (gx#syntax-e
                                                        _%tl2554226000%_)))
                                                  (let ((_%tl2554926010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2555126003%_)))
                                                        (_%hd2555026007%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2555126003%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2554926010%_)
                                                        (_%__match2693326934%_
                                                         _%e2553625977%_
                                                         _%hd2553525981%_
                                                         _%tl2553425984%_
                                                         _%e2553925987%_
                                                         _%hd2553825991%_
                                                         _%tl2553725994%_
                                                         _%__splice2689126892%_
                                                         _%target2554025997%_
                                                         _%tl2554226000%_
                                                         _%e2555126003%_
                                                         _%hd2555026007%_
                                                         _%tl2554926010%_)
                                                        (let ((_%__splice2689526896%_
                                                               (gx#syntax-split-splice
                                                                _%tl2553725994%_
                                                                '0)))
                                                          (let ((_%tl2556225852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2689526896%_ '1)))
                        (_%target2556025849%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2689526896%_ '0))))
                    (if (gx#stx-null? _%tl2556225852%_)
                        (_%__match2695326954%_
                         _%e2553625977%_
                         _%hd2553525981%_
                         _%tl2553425984%_
                         _%e2553925987%_
                         _%hd2553825991%_
                         _%tl2553725994%_
                         _%__splice2689526896%_
                         _%target2556025849%_
                         _%tl2556225852%_)
                        (if (gx#stx-pair? _%tl2553725994%_)
                            (let ((_%e2558025743%_
                                   (gx#syntax-e _%tl2553725994%_)))
                              (let ((_%tl2557825750%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2558025743%_)))
                                    (_%hd2557925747%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2558025743%_))))
                                (if (gx#stx-pair/null? _%tl2557825750%_)
                                    (let ((_%__splice2689926900%_
                                           (gx#syntax-split-splice
                                            _%tl2557825750%_
                                            '0)))
                                      (let ((_%tl2558325756%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2689926900%_
                                                '1)))
                                            (_%target2558125753%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2689926900%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2558325756%_)
                                            (_%__match2697926980%_
                                             _%e2553625977%_
                                             _%hd2553525981%_
                                             _%tl2553425984%_
                                             _%e2553925987%_
                                             _%hd2553825991%_
                                             _%tl2553725994%_
                                             _%e2558025743%_
                                             _%hd2557925747%_
                                             _%tl2557825750%_
                                             _%__splice2689926900%_
                                             _%target2558125753%_
                                             _%tl2558325756%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2552925616%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2552925616%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2552925616%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2689526896%_
                                                       (gx#syntax-split-splice
                                                        _%tl2553725994%_
                                                        '0)))
                                                  (let ((_%tl2556225852%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2689526896%_
                                                            '1)))
                                                        (_%target2556025849%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2689526896%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2556225852%_)
                                                        (_%__match2695326954%_
                                                         _%e2553625977%_
                                                         _%hd2553525981%_
                                                         _%tl2553425984%_
                                                         _%e2553925987%_
                                                         _%hd2553825991%_
                                                         _%tl2553725994%_
                                                         _%__splice2689526896%_
                                                         _%target2556025849%_
                                                         _%tl2556225852%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2553725994%_)
                                                            (let ((_%e2558025743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2553725994%_)))
                      (let ((_%tl2557825750%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2558025743%_)))
                            (_%hd2557925747%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2558025743%_))))
                        (if (gx#stx-pair/null? _%tl2557825750%_)
                            (let ((_%__splice2689926900%_
                                   (gx#syntax-split-splice
                                    _%tl2557825750%_
                                    '0)))
                              (let ((_%tl2558325756%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2689926900%_
                                        '1)))
                                    (_%target2558125753%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2689926900%_
                                        '0))))
                                (if (gx#stx-null? _%tl2558325756%_)
                                    (_%__match2697926980%_
                                     _%e2553625977%_
                                     _%hd2553525981%_
                                     _%tl2553425984%_
                                     _%e2553925987%_
                                     _%hd2553825991%_
                                     _%tl2553725994%_
                                     _%e2558025743%_
                                     _%hd2557925747%_
                                     _%tl2557825750%_
                                     _%__splice2689926900%_
                                     _%target2558125753%_
                                     _%tl2558325756%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2552925616%_)))))
                            (let () (declare (not safe)) (_%g2552925616%_)))))
                    (let () (declare (not safe)) (_%g2552925616%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2689526896%_
                                               (gx#syntax-split-splice
                                                _%tl2553725994%_
                                                '0)))
                                          (let ((_%tl2556225852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2689526896%_
                                                    '1)))
                                                (_%target2556025849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2689526896%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2556225852%_)
                                                (_%__match2695326954%_
                                                 _%e2553625977%_
                                                 _%hd2553525981%_
                                                 _%tl2553425984%_
                                                 _%e2553925987%_
                                                 _%hd2553825991%_
                                                 _%tl2553725994%_
                                                 _%__splice2689526896%_
                                                 _%target2556025849%_
                                                 _%tl2556225852%_)
                                                (if (gx#stx-pair?
                                                     _%tl2553725994%_)
                                                    (let ((_%e2558025743%_
                                                           (gx#syntax-e
                                                            _%tl2553725994%_)))
                                                      (let ((_%tl2557825750%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2558025743%_)))
                    (_%hd2557925747%_
                     (let () (declare (not safe)) (##car _%e2558025743%_))))
                (if (gx#stx-pair/null? _%tl2557825750%_)
                    (let ((_%__splice2689926900%_
                           (gx#syntax-split-splice _%tl2557825750%_ '0)))
                      (let ((_%tl2558325756%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2689926900%_ '1)))
                            (_%target2558125753%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2689926900%_ '0))))
                        (if (gx#stx-null? _%tl2558325756%_)
                            (_%__match2697926980%_
                             _%e2553625977%_
                             _%hd2553525981%_
                             _%tl2553425984%_
                             _%e2553925987%_
                             _%hd2553825991%_
                             _%tl2553725994%_
                             _%e2558025743%_
                             _%hd2557925747%_
                             _%tl2557825750%_
                             _%__splice2689926900%_
                             _%target2558125753%_
                             _%tl2558325756%_)
                            (let () (declare (not safe)) (_%g2552925616%_)))))
                    (let () (declare (not safe)) (_%g2552925616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2552925616%_)))))))
                                    (if (gx#stx-pair? _%tl2553725994%_)
                                        (let ((_%e2558025743%_
                                               (gx#syntax-e _%tl2553725994%_)))
                                          (let ((_%tl2557825750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2558025743%_)))
                                                (_%hd2557925747%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2558025743%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2557825750%_)
                                                (let ((_%__splice2689926900%_
                                                       (gx#syntax-split-splice
                                                        _%tl2557825750%_
                                                        '0)))
                                                  (let ((_%tl2558325756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2689926900%_
                                                            '1)))
                                                        (_%target2558125753%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2689926900%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2558325756%_)
                                                        (_%__match2697926980%_
                                                         _%e2553625977%_
                                                         _%hd2553525981%_
                                                         _%tl2553425984%_
                                                         _%e2553925987%_
                                                         _%hd2553825991%_
                                                         _%tl2553725994%_
                                                         _%e2558025743%_
                                                         _%hd2557925747%_
                                                         _%tl2557825750%_
                                                         _%__splice2689926900%_
                                                         _%target2558125753%_
                                                         _%tl2558325756%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2552925616%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2552925616%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2552925616%_))))))
                            (let () (declare (not safe)) (_%g2552925616%_)))))
                    (let () (declare (not safe)) (_%g2552925616%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26168%_)
        (let* ((_%__stx2700827009%_ _%$stx26168%_)
               (_%g2617326213%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2700827009%_))))
          (let ((_%__kont2701127012%_
                 (lambda (_%L26351%_ _%L26353%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%L26353%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26351%_ '()))
                                     '())))))
                (_%__kont2701327014%_
                 (lambda (_%L26280%_ _%L26282%_ _%L26283%_ _%L26284%_)
                   (cons _%L26284%_
                         (cons (cons _%L26284%_
                                     (cons _%L26283%_ (cons _%L26282%_ '())))
                               (foldr (lambda (_%g2630526308%_ _%g2630626311%_)
                                        (cons _%g2630526308%_ _%g2630626311%_))
                                      '()
                                      _%L26280%_))))))
            (let* ((_%__match2706327064%_
                    (lambda (_%e2619226220%_
                             _%hd2619126224%_
                             _%tl2619026227%_
                             _%e2619526230%_
                             _%hd2619426234%_
                             _%tl2619326237%_
                             _%e2619826240%_
                             _%hd2619726244%_
                             _%tl2619626247%_
                             _%__splice2701527016%_
                             _%target2619926250%_
                             _%tl2620126253%_)
                      (letrec ((_%loop2620226256%_
                                (lambda (_%hd2620026260%_ _%rest2620626263%_)
                                  (if (gx#stx-pair? _%hd2620026260%_)
                                      (let ((_%e2620326266%_
                                             (gx#syntax-e _%hd2620026260%_)))
                                        (let ((_%lp-tl2620526273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2620326266%_)))
                                              (_%lp-hd2620426270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2620326266%_))))
                                          (_%loop2620226256%_
                                           _%lp-tl2620526273%_
                                           (cons _%lp-hd2620426270%_
                                                 _%rest2620626263%_))))
                                      (let ((_%rest2620726276%_
                                             (reverse _%rest2620626263%_)))
                                        (_%__kont2701327014%_
                                         _%rest2620726276%_
                                         _%hd2619726244%_
                                         _%hd2619426234%_
                                         _%hd2619126224%_))))))
                        (_%loop2620226256%_ _%target2619926250%_ '()))))
                   (_%__match2703727038%_
                    (lambda (_%e2617926321%_
                             _%hd2617826325%_
                             _%tl2617726328%_
                             _%e2618226331%_
                             _%hd2618126335%_
                             _%tl2618026338%_
                             _%e2618526341%_
                             _%hd2618426345%_
                             _%tl2618326348%_)
                      (let ((_%L26351%_ _%hd2618426345%_)
                            (_%L26353%_ _%hd2618126335%_))
                        (if (gx#identifier? _%L26351%_)
                            (_%__kont2701127012%_ _%L26351%_ _%L26353%_)
                            (if (gx#stx-pair/null? _%tl2618326348%_)
                                (let ((_%__splice2701527016%_
                                       (gx#syntax-split-splice
                                        _%tl2618326348%_
                                        '0)))
                                  (let ((_%tl2620126253%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2701527016%_
                                            '1)))
                                        (_%target2619926250%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2701527016%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2620126253%_)
                                        (_%__match2706327064%_
                                         _%e2617926321%_
                                         _%hd2617826325%_
                                         _%tl2617726328%_
                                         _%e2618226331%_
                                         _%hd2618126335%_
                                         _%tl2618026338%_
                                         _%e2618526341%_
                                         _%hd2618426345%_
                                         _%tl2618326348%_
                                         _%__splice2701527016%_
                                         _%target2619926250%_
                                         _%tl2620126253%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2617326213%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2617326213%_))))))))
              (if (gx#stx-pair? _%__stx2700827009%_)
                  (let ((_%e2617926321%_ (gx#syntax-e _%__stx2700827009%_)))
                    (let ((_%tl2617726328%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2617926321%_)))
                          (_%hd2617826325%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2617926321%_))))
                      (if (gx#stx-pair? _%tl2617726328%_)
                          (let ((_%e2618226331%_
                                 (gx#syntax-e _%tl2617726328%_)))
                            (let ((_%tl2618026338%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2618226331%_)))
                                  (_%hd2618126335%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2618226331%_))))
                              (if (gx#stx-pair? _%tl2618026338%_)
                                  (let ((_%e2618526341%_
                                         (gx#syntax-e _%tl2618026338%_)))
                                    (let ((_%tl2618326348%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2618526341%_)))
                                          (_%hd2618426345%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2618526341%_))))
                                      (if (gx#stx-null? _%tl2618326348%_)
                                          (_%__match2703727038%_
                                           _%e2617926321%_
                                           _%hd2617826325%_
                                           _%tl2617726328%_
                                           _%e2618226331%_
                                           _%hd2618126335%_
                                           _%tl2618026338%_
                                           _%e2618526341%_
                                           _%hd2618426345%_
                                           _%tl2618326348%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2618326348%_)
                                              (let ((_%__splice2701527016%_
                                                     (gx#syntax-split-splice
                                                      _%tl2618326348%_
                                                      '0)))
                                                (let ((_%tl2620126253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2701527016%_
                                                          '1)))
                                                      (_%target2619926250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2701527016%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2620126253%_)
                                                      (_%__match2706327064%_
                                                       _%e2617926321%_
                                                       _%hd2617826325%_
                                                       _%tl2617726328%_
                                                       _%e2618226331%_
                                                       _%hd2618126335%_
                                                       _%tl2618026338%_
                                                       _%e2618526341%_
                                                       _%hd2618426345%_
                                                       _%tl2618326348%_
                                                       _%__splice2701527016%_
                                                       _%target2619926250%_
                                                       _%tl2620126253%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2617326213%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2617326213%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2617326213%_)))))
                          (let () (declare (not safe)) (_%g2617326213%_)))))
                  (let () (declare (not safe)) (_%g2617326213%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26373%_)
        (let* ((_%__stx2706627067%_ _%$stx26373%_)
               (_%g2637826430%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2706627067%_))))
          (let ((_%__kont2706927070%_
                 (lambda (_%L26606%_ _%L26608%_ _%L26609%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%L26609%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26608%_ '()))
                                     (cons _%L26606%_ '()))))))
                (_%__kont2707127072%_
                 (lambda (_%L26517%_
                          _%L26519%_
                          _%L26520%_
                          _%L26521%_
                          _%L26522%_
                          _%L26523%_)
                   (cons _%L26523%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%L26522%_
                                           (cons _%L26521%_
                                                 (foldr (lambda (_%g2655026553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2655126556%_)
                  (cons _%g2655026553%_ _%g2655126556%_))
                '()
                _%L26520%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L26519%_ (cons _%L26517%_ '())))))))
            (let* ((_%__match2714127142%_
                    (lambda (_%e2640326437%_
                             _%hd2640226441%_
                             _%tl2640126444%_
                             _%e2640626447%_
                             _%hd2640526451%_
                             _%tl2640426454%_
                             _%e2640926457%_
                             _%hd2640826461%_
                             _%tl2640726464%_
                             _%__splice2707327074%_
                             _%target2641026467%_
                             _%tl2641226470%_
                             _%e2642126473%_
                             _%hd2642026477%_
                             _%tl2641926480%_
                             _%e2642426483%_
                             _%hd2642326487%_
                             _%tl2642226490%_)
                      (letrec ((_%loop2641326493%_
                                (lambda (_%hd2641126497%_ _%path2641726500%_)
                                  (if (gx#stx-pair? _%hd2641126497%_)
                                      (let ((_%e2641426503%_
                                             (gx#syntax-e _%hd2641126497%_)))
                                        (let ((_%lp-tl2641626510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2641426503%_)))
                                              (_%lp-hd2641526507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2641426503%_))))
                                          (_%loop2641326493%_
                                           _%lp-tl2641626510%_
                                           (cons _%lp-hd2641526507%_
                                                 _%path2641726500%_))))
                                      (let ((_%path2641826513%_
                                             (reverse _%path2641726500%_)))
                                        (_%__kont2707127072%_
                                         _%hd2642326487%_
                                         _%hd2642026477%_
                                         _%path2641826513%_
                                         _%hd2640826461%_
                                         _%hd2640526451%_
                                         _%hd2640226441%_))))))
                        (_%loop2641326493%_ _%target2641026467%_ '()))))
                   (_%__match2710127102%_
                    (lambda (_%e2638526566%_
                             _%hd2638426570%_
                             _%tl2638326573%_
                             _%e2638826576%_
                             _%hd2638726580%_
                             _%tl2638626583%_
                             _%e2639126586%_
                             _%hd2639026590%_
                             _%tl2638926593%_
                             _%e2639426596%_
                             _%hd2639326600%_
                             _%tl2639226603%_)
                      (let ((_%L26606%_ _%hd2639326600%_)
                            (_%L26608%_ _%hd2639026590%_)
                            (_%L26609%_ _%hd2638726580%_))
                        (if (gx#identifier? _%L26608%_)
                            (_%__kont2706927070%_
                             _%L26606%_
                             _%L26608%_
                             _%L26609%_)
                            (if (gx#stx-pair/null? _%tl2638926593%_)
                                (if (let ((__tmp27448
                                           (gx#stx-length _%tl2638926593%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27448 '2))
                                    (let ((_%__splice2707327074%_
                                           (gx#syntax-split-splice
                                            _%tl2638926593%_
                                            '2)))
                                      (let ((_%tl2641226470%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2707327074%_
                                                '1)))
                                            (_%target2641026467%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2707327074%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2641226470%_)
                                            (let ((_%e2642126473%_
                                                   (gx#syntax-e
                                                    _%tl2641226470%_)))
                                              (let ((_%tl2641926480%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2642126473%_)))
                                                    (_%hd2642026477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2642126473%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2641926480%_)
                                                    (let ((_%e2642426483%_
                                                           (gx#syntax-e
                                                            _%tl2641926480%_)))
                                                      (let ((_%tl2642226490%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2642426483%_)))
                    (_%hd2642326487%_
                     (let () (declare (not safe)) (##car _%e2642426483%_))))
                (if (gx#stx-null? _%tl2642226490%_)
                    (_%__match2714127142%_
                     _%e2638526566%_
                     _%hd2638426570%_
                     _%tl2638326573%_
                     _%e2638826576%_
                     _%hd2638726580%_
                     _%tl2638626583%_
                     _%e2639126586%_
                     _%hd2639026590%_
                     _%tl2638926593%_
                     _%__splice2707327074%_
                     _%target2641026467%_
                     _%tl2641226470%_
                     _%e2642126473%_
                     _%hd2642026477%_
                     _%tl2641926480%_
                     _%e2642426483%_
                     _%hd2642326487%_
                     _%tl2642226490%_)
                    (let () (declare (not safe)) (_%g2637826430%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2637826430%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2637826430%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2637826430%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2637826430%_))))))))
              (if (gx#stx-pair? _%__stx2706627067%_)
                  (let ((_%e2638526566%_ (gx#syntax-e _%__stx2706627067%_)))
                    (let ((_%tl2638326573%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2638526566%_)))
                          (_%hd2638426570%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2638526566%_))))
                      (if (gx#stx-pair? _%tl2638326573%_)
                          (let ((_%e2638826576%_
                                 (gx#syntax-e _%tl2638326573%_)))
                            (let ((_%tl2638626583%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2638826576%_)))
                                  (_%hd2638726580%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2638826576%_))))
                              (if (gx#stx-pair? _%tl2638626583%_)
                                  (let ((_%e2639126586%_
                                         (gx#syntax-e _%tl2638626583%_)))
                                    (let ((_%tl2638926593%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2639126586%_)))
                                          (_%hd2639026590%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2639126586%_))))
                                      (if (gx#stx-pair? _%tl2638926593%_)
                                          (let ((_%e2639426596%_
                                                 (gx#syntax-e
                                                  _%tl2638926593%_)))
                                            (let ((_%tl2639226603%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2639426596%_)))
                                                  (_%hd2639326600%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2639426596%_))))
                                              (if (gx#stx-null?
                                                   _%tl2639226603%_)
                                                  (_%__match2710127102%_
                                                   _%e2638526566%_
                                                   _%hd2638426570%_
                                                   _%tl2638326573%_
                                                   _%e2638826576%_
                                                   _%hd2638726580%_
                                                   _%tl2638626583%_
                                                   _%e2639126586%_
                                                   _%hd2639026590%_
                                                   _%tl2638926593%_
                                                   _%e2639426596%_
                                                   _%hd2639326600%_
                                                   _%tl2639226603%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2638926593%_)
                                                      (if (let ((__tmp27449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2638926593%_)))
                    (declare (not safe))
                    (##fx>= __tmp27449 '2))
                  (let ((_%__splice2707327074%_
                         (gx#syntax-split-splice _%tl2638926593%_ '2)))
                    (let ((_%tl2641226470%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2707327074%_ '1)))
                          (_%target2641026467%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2707327074%_ '0))))
                      (if (gx#stx-pair? _%tl2641226470%_)
                          (let ((_%e2642126473%_
                                 (gx#syntax-e _%tl2641226470%_)))
                            (let ((_%tl2641926480%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2642126473%_)))
                                  (_%hd2642026477%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2642126473%_))))
                              (if (gx#stx-pair? _%tl2641926480%_)
                                  (let ((_%e2642426483%_
                                         (gx#syntax-e _%tl2641926480%_)))
                                    (let ((_%tl2642226490%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2642426483%_)))
                                          (_%hd2642326487%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2642426483%_))))
                                      (if (gx#stx-null? _%tl2642226490%_)
                                          (_%__match2714127142%_
                                           _%e2638526566%_
                                           _%hd2638426570%_
                                           _%tl2638326573%_
                                           _%e2638826576%_
                                           _%hd2638726580%_
                                           _%tl2638626583%_
                                           _%e2639126586%_
                                           _%hd2639026590%_
                                           _%tl2638926593%_
                                           _%__splice2707327074%_
                                           _%target2641026467%_
                                           _%tl2641226470%_
                                           _%e2642126473%_
                                           _%hd2642026477%_
                                           _%tl2641926480%_
                                           _%e2642426483%_
                                           _%hd2642326487%_
                                           _%tl2642226490%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2637826430%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2637826430%_)))))
                          (let () (declare (not safe)) (_%g2637826430%_)))))
                  (let () (declare (not safe)) (_%g2637826430%_)))
              (let () (declare (not safe)) (_%g2637826430%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2638926593%_)
                                              (if (let ((__tmp27450
                                                         (gx#stx-length
                                                          _%tl2638926593%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27450 '2))
                                                  (let ((_%__splice2707327074%_
                                                         (gx#syntax-split-splice
                                                          _%tl2638926593%_
                                                          '2)))
                                                    (let ((_%tl2641226470%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2707327074%_
                                                              '1)))
                                                          (_%target2641026467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2707327074%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2641226470%_)
                                                          (let ((_%e2642126473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2641226470%_)))
                    (let ((_%tl2641926480%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2642126473%_)))
                          (_%hd2642026477%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2642126473%_))))
                      (if (gx#stx-pair? _%tl2641926480%_)
                          (let ((_%e2642426483%_
                                 (gx#syntax-e _%tl2641926480%_)))
                            (let ((_%tl2642226490%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2642426483%_)))
                                  (_%hd2642326487%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2642426483%_))))
                              (if (gx#stx-null? _%tl2642226490%_)
                                  (_%__match2714127142%_
                                   _%e2638526566%_
                                   _%hd2638426570%_
                                   _%tl2638326573%_
                                   _%e2638826576%_
                                   _%hd2638726580%_
                                   _%tl2638626583%_
                                   _%e2639126586%_
                                   _%hd2639026590%_
                                   _%tl2638926593%_
                                   _%__splice2707327074%_
                                   _%target2641026467%_
                                   _%tl2641226470%_
                                   _%e2642126473%_
                                   _%hd2642026477%_
                                   _%tl2641926480%_
                                   _%e2642426483%_
                                   _%hd2642326487%_
                                   _%tl2642226490%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2637826430%_)))))
                          (let () (declare (not safe)) (_%g2637826430%_)))))
                  (let () (declare (not safe)) (_%g2637826430%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2637826430%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2637826430%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2637826430%_)))))
                          (let () (declare (not safe)) (_%g2637826430%_)))))
                  (let () (declare (not safe)) (_%g2637826430%_))))))))))
