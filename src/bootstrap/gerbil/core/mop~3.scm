(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27708_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24857%_)
        (letrec ((_%body-opt?24860%_
                  (lambda (_%key24863%_)
                    (let ((__tmp27680 (gx#stx-e _%key24863%_)))
                      (declare (not safe))
                      (##memq __tmp27680
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
          (gx#stx-plist? _%stx24857%_ _%body-opt?24860%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22636%_
               _%id22638%_
               _%super-ref22639%_
               _%slots22640%_
               _%body22641%_)
        (letrec ((_%wrap22643%_
                  (lambda (_%e-stx24854%_)
                    (gx#stx-wrap-source
                     _%e-stx24854%_
                     (gx#stx-source _%stx22636%_))))
                 (_%make-id22645%_
                  (lambda _%args24851%_
                    (apply gx#stx-identifier _%id22638%_ _%args24851%_)))
                 (_%get-mixin-slots22646%_
                  (lambda (_%super24821%_ _%slots24823%_)
                    (letrec* ((_%tab24825%_ (make-hash-table-eq))
                              (_%dedup24827%_
                               (lambda (_%mixins24838%_)
                                 (let _%lp24841%_ ((_%rest24844%_
                                                    _%mixins24838%_)
                                                   (_%r24846%_ '()))
                                   (if (pair? _%rest24844%_)
                                       (let ((_%slot24848%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24844%_))))
                                         (if (hash-get
                                              _%tab24825%_
                                              _%slot24848%_)
                                             (_%lp24841%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24844%_))
                                              _%r24846%_)
                                             (begin
                                               (hash-put!
                                                _%tab24825%_
                                                _%slot24848%_
                                                '#t)
                                               (_%lp24841%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24844%_))
                                                (cons _%slot24848%_
                                                      _%r24846%_)))))
                                       (reverse _%r24846%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24829%_)
                         (hash-put! _%tab24825%_ (gx#stx-e _%slot24829%_) '#t))
                       _%slots24823%_)
                      (if (not _%super24821%_)
                          '()
                          (if (gx#identifier? _%super24821%_)
                              (_%dedup24827%_
                               (_%get-mixin-slots-r22647%_ _%super24821%_))
                              (_%dedup24827%_
                               (concatenate
                                (map _%get-mixin-slots-r22647%_
                                     _%super24821%_))))))))
                 (_%get-mixin-slots-r22647%_
                  (lambda (_%type-id24815%_)
                    (let ((_%info24818%_
                           (gx#syntax-local-value _%type-id24815%_)))
                      (let ((__tmp27682
                             (let ((__obj27433 _%info24818%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27433
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27433
                                      '6
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27433
                                    'slots))))
                            (__tmp27681
                             (concatenate
                              (map _%get-mixin-slots-r22647%_
                                   (let ((__obj27434 _%info24818%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27434
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27434
                                            '5
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27434
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27682 __tmp27681))))))
          (gx#check-duplicate-identifiers _%slots22640%_ _%stx22636%_)
          (let* ((_%name22649%_ (symbol->string (gx#stx-e _%id22638%_)))
                 (_%super22652%_
                  (map gx#syntax-local-value _%super-ref22639%_))
                 (_%struct?22655%_ (gx#stx-getq 'struct: _%body22641%_))
                 (_%$%g2265822666%_
                  (lambda (_%$%g2265922662%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g2265922662%_)))
                 (_%$%g2265724811%_
                  (lambda (_%$%g2265922670%_)
                    (let* ((_%$%g2268922697%_
                            (lambda (_%$%g2269022693%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2269022693%_)))
                           (_%$%g2268824807%_
                            (lambda (_%$%g2269022701%_)
                              (let* ((_%$%g2271722725%_
                                      (lambda (_%$%g2271822721%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2271822721%_)))
                                     (_%$%g2271624803%_
                                      (lambda (_%$%g2271822729%_)
                                        (let* ((_%$%g2274522753%_
                                                (lambda (_%$%g2274622749%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2274622749%_)))
                                               (_%$%g2274424799%_
                                                (lambda (_%$%g2274622757%_)
                                                  (let* ((_%$%g2277322781%_
                                                          (lambda (_%$%g2277422777%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2277422777%_)))
                                                         (_%$%g2277224795%_
                                                          (lambda (_%$%g2277422785%_)
                                                            (let* ((_%$%g2280122818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2280222814%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2280222814%_)))
                           (_%$%g2280024791%_
                            (lambda (_%$%g2280222822%_)
                              (if (gx#stx-pair/null? _%$%g2280222822%_)
                                  (let ((_g27683_
                                         (gx#syntax-split-splice
                                          _%$%g2280222822%_
                                          '0)))
                                    (begin
                                      (let ((_g27684_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27683_)
                                                   (##values-length _g27683_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27684_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27684_)))
                                      (let ((_%$%target2280422825%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27683_ 0)))
                                            (_%$%tl2280622828%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27683_ 1))))
                                        (if (gx#stx-null? _%$%tl2280622828%_)
                                            (letrec ((_%$%loop2280722831%_
                                                      (lambda (_%$%hd2280522835%_
                                                               _%$%slot2281122838%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2280522835%_)
                                                            (let ((_%$%e2280822840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2280522835%_)))
                      (let ((_%$%lp-hd2280922844%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2280822840%_)))
                            (_%$%lp-tl2281022847%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2280822840%_))))
                        (_%$%loop2280722831%_
                         _%$%lp-tl2281022847%_
                         (cons _%$%lp-hd2280922844%_ _%$%slot2281122838%_))))
                    (let* ((_%$%slot2281222850%_
                            (reverse _%$%slot2281122838%_))
                           (_%$%g2287022887%_
                            (lambda (_%$%g2287122883%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2287122883%_)))
                           (_%$%g2286924782%_
                            (lambda (_%$%g2287122891%_)
                              (if (gx#stx-pair/null? _%$%g2287122891%_)
                                  (let ((_g27685_
                                         (gx#syntax-split-splice
                                          _%$%g2287122891%_
                                          '0)))
                                    (begin
                                      (let ((_g27686_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27685_)
                                                   (##values-length _g27685_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27686_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27686_)))
                                      (let ((_%$%target2287322894%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27685_ 0)))
                                            (_%$%tl2287522897%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27685_ 1))))
                                        (if (gx#stx-null? _%$%tl2287522897%_)
                                            (letrec ((_%$%loop2287622900%_
                                                      (lambda (_%$%hd2287422904%_
                                                               _%$%getf2288022907%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2287422904%_)
                                                            (let ((_%$%e2287722909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2287422904%_)))
                      (let ((_%$%lp-hd2287822913%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2287722909%_)))
                            (_%$%lp-tl2287922916%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2287722909%_))))
                        (_%$%loop2287622900%_
                         _%$%lp-tl2287922916%_
                         (cons _%$%lp-hd2287822913%_ _%$%getf2288022907%_))))
                    (let* ((_%$%getf2288122919%_
                            (reverse _%$%getf2288022907%_))
                           (_%$%g2293922956%_
                            (lambda (_%$%g2294022952%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2294022952%_)))
                           (_%$%g2293824773%_
                            (lambda (_%$%g2294022960%_)
                              (if (gx#stx-pair/null? _%$%g2294022960%_)
                                  (let ((_g27687_
                                         (gx#syntax-split-splice
                                          _%$%g2294022960%_
                                          '0)))
                                    (begin
                                      (let ((_g27688_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27687_)
                                                   (##values-length _g27687_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27688_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27688_)))
                                      (let ((_%$%target2294222963%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27687_ 0)))
                                            (_%$%tl2294422966%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27687_ 1))))
                                        (if (gx#stx-null? _%$%tl2294422966%_)
                                            (letrec ((_%$%loop2294522969%_
                                                      (lambda (_%$%hd2294322973%_
                                                               _%$%setf2294922976%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2294322973%_)
                                                            (let ((_%$%e2294622978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2294322973%_)))
                      (let ((_%$%lp-hd2294722982%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2294622978%_)))
                            (_%$%lp-tl2294822985%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2294622978%_))))
                        (_%$%loop2294522969%_
                         _%$%lp-tl2294822985%_
                         (cons _%$%lp-hd2294722982%_ _%$%setf2294922976%_))))
                    (let* ((_%$%setf2295022988%_
                            (reverse _%$%setf2294922976%_))
                           (_%mixin-slots23008%_
                            (_%get-mixin-slots22646%_
                             _%super-ref22639%_
                             _%slots22640%_))
                           (_%$%g2301123028%_
                            (lambda (_%$%g2301223024%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2301223024%_)))
                           (_%$%g2301024769%_
                            (lambda (_%$%g2301223032%_)
                              (if (gx#stx-pair/null? _%$%g2301223032%_)
                                  (let ((_g27689_
                                         (gx#syntax-split-splice
                                          _%$%g2301223032%_
                                          '0)))
                                    (begin
                                      (let ((_g27690_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27689_)
                                                   (##values-length _g27689_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27690_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27690_)))
                                      (let ((_%$%target2301423035%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27689_ 0)))
                                            (_%$%tl2301623038%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27689_ 1))))
                                        (if (gx#stx-null? _%$%tl2301623038%_)
                                            (letrec ((_%$%loop2301723041%_
                                                      (lambda (_%$%hd2301523045%_
                                                               _%$%mixin-slot2302123048%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2301523045%_)
                                                            (let ((_%$%e2301823050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2301523045%_)))
                      (let ((_%$%lp-hd2301923054%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2301823050%_)))
                            (_%$%lp-tl2302023057%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2301823050%_))))
                        (_%$%loop2301723041%_
                         _%$%lp-tl2302023057%_
                         (cons _%$%lp-hd2301923054%_
                               _%$%mixin-slot2302123048%_))))
                    (let* ((_%$%mixin-slot2302223060%_
                            (reverse _%$%mixin-slot2302123048%_))
                           (_%$%g2308123098%_
                            (lambda (_%$%g2308223094%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2308223094%_)))
                           (_%$%g2308024760%_
                            (lambda (_%$%g2308223102%_)
                              (if (gx#stx-pair/null? _%$%g2308223102%_)
                                  (let ((_g27691_
                                         (gx#syntax-split-splice
                                          _%$%g2308223102%_
                                          '0)))
                                    (begin
                                      (let ((_g27692_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27691_)
                                                   (##values-length _g27691_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27692_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27692_)))
                                      (let ((_%$%target2308423105%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27691_ 0)))
                                            (_%$%tl2308623108%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27691_ 1))))
                                        (if (gx#stx-null? _%$%tl2308623108%_)
                                            (letrec ((_%$%loop2308723111%_
                                                      (lambda (_%$%hd2308523115%_
                                                               _%$%mixin-getf2309123118%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2308523115%_)
                                                            (let ((_%$%e2308823120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2308523115%_)))
                      (let ((_%$%lp-hd2308923124%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2308823120%_)))
                            (_%$%lp-tl2309023127%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2308823120%_))))
                        (_%$%loop2308723111%_
                         _%$%lp-tl2309023127%_
                         (cons _%$%lp-hd2308923124%_
                               _%$%mixin-getf2309123118%_))))
                    (let* ((_%$%mixin-getf2309223130%_
                            (reverse _%$%mixin-getf2309123118%_))
                           (_%$%g2315023167%_
                            (lambda (_%$%g2315123163%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2315123163%_)))
                           (_%$%g2314924751%_
                            (lambda (_%$%g2315123171%_)
                              (if (gx#stx-pair/null? _%$%g2315123171%_)
                                  (let ((_g27693_
                                         (gx#syntax-split-splice
                                          _%$%g2315123171%_
                                          '0)))
                                    (begin
                                      (let ((_g27694_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27693_)
                                                   (##values-length _g27693_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27694_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27694_)))
                                      (let ((_%$%target2315323174%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27693_ 0)))
                                            (_%$%tl2315523177%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27693_ 1))))
                                        (if (gx#stx-null? _%$%tl2315523177%_)
                                            (letrec ((_%$%loop2315623180%_
                                                      (lambda (_%$%hd2315423184%_
                                                               _%$%mixin-setf2316023187%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2315423184%_)
                                                            (let ((_%$%e2315723189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2315423184%_)))
                      (let ((_%$%lp-hd2315823193%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2315723189%_)))
                            (_%$%lp-tl2315923196%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2315723189%_))))
                        (_%$%loop2315623180%_
                         _%$%lp-tl2315923196%_
                         (cons _%$%lp-hd2315823193%_
                               _%$%mixin-setf2316023187%_))))
                    (let* ((_%$%mixin-setf2316123199%_
                            (reverse _%$%mixin-setf2316023187%_))
                           (_%$%g2321923236%_
                            (lambda (_%$%g2322023232%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2322023232%_)))
                           (_%$%g2321824734%_
                            (lambda (_%$%g2322023240%_)
                              (if (gx#stx-pair/null? _%$%g2322023240%_)
                                  (let ((_g27695_
                                         (gx#syntax-split-splice
                                          _%$%g2322023240%_
                                          '0)))
                                    (begin
                                      (let ((_g27696_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27695_)
                                                   (##values-length _g27695_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27696_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27696_)))
                                      (let ((_%$%target2322223243%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27695_ 0)))
                                            (_%$%tl2322423246%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27695_ 1))))
                                        (if (gx#stx-null? _%$%tl2322423246%_)
                                            (letrec ((_%$%loop2322523249%_
                                                      (lambda (_%$%hd2322323253%_
                                                               _%$%ugetf2322923256%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2322323253%_)
                                                            (let ((_%$%e2322623258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2322323253%_)))
                      (let ((_%$%lp-hd2322723262%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2322623258%_)))
                            (_%$%lp-tl2322823265%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2322623258%_))))
                        (_%$%loop2322523249%_
                         _%$%lp-tl2322823265%_
                         (cons _%$%lp-hd2322723262%_ _%$%ugetf2322923256%_))))
                    (let* ((_%$%ugetf2323023268%_
                            (reverse _%$%ugetf2322923256%_))
                           (_%$%g2328823305%_
                            (lambda (_%$%g2328923301%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2328923301%_)))
                           (_%$%g2328724717%_
                            (lambda (_%$%g2328923309%_)
                              (if (gx#stx-pair/null? _%$%g2328923309%_)
                                  (let ((_g27697_
                                         (gx#syntax-split-splice
                                          _%$%g2328923309%_
                                          '0)))
                                    (begin
                                      (let ((_g27698_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27697_)
                                                   (##values-length _g27697_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27698_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27698_)))
                                      (let ((_%$%target2329123312%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27697_ 0)))
                                            (_%$%tl2329323315%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27697_ 1))))
                                        (if (gx#stx-null? _%$%tl2329323315%_)
                                            (letrec ((_%$%loop2329423318%_
                                                      (lambda (_%$%hd2329223322%_
                                                               _%$%usetf2329823325%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2329223322%_)
                                                            (let ((_%$%e2329523327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2329223322%_)))
                      (let ((_%$%lp-hd2329623331%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2329523327%_)))
                            (_%$%lp-tl2329723334%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2329523327%_))))
                        (_%$%loop2329423318%_
                         _%$%lp-tl2329723334%_
                         (cons _%$%lp-hd2329623331%_ _%$%usetf2329823325%_))))
                    (let* ((_%$%usetf2329923337%_
                            (reverse _%$%usetf2329823325%_))
                           (_%$%g2335723374%_
                            (lambda (_%$%g2335823370%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2335823370%_)))
                           (_%$%g2335624700%_
                            (lambda (_%$%g2335823378%_)
                              (if (gx#stx-pair/null? _%$%g2335823378%_)
                                  (let ((_g27699_
                                         (gx#syntax-split-splice
                                          _%$%g2335823378%_
                                          '0)))
                                    (begin
                                      (let ((_g27700_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27699_)
                                                   (##values-length _g27699_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27700_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27700_)))
                                      (let ((_%$%target2336023381%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27699_ 0)))
                                            (_%$%tl2336223384%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27699_ 1))))
                                        (if (gx#stx-null? _%$%tl2336223384%_)
                                            (letrec ((_%$%loop2336323387%_
                                                      (lambda (_%$%hd2336123391%_
                                                               _%$%mixin-ugetf2336723394%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2336123391%_)
                                                            (let ((_%$%e2336423396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2336123391%_)))
                      (let ((_%$%lp-hd2336523400%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2336423396%_)))
                            (_%$%lp-tl2336623403%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2336423396%_))))
                        (_%$%loop2336323387%_
                         _%$%lp-tl2336623403%_
                         (cons _%$%lp-hd2336523400%_
                               _%$%mixin-ugetf2336723394%_))))
                    (let* ((_%$%mixin-ugetf2336823406%_
                            (reverse _%$%mixin-ugetf2336723394%_))
                           (_%$%g2342623443%_
                            (lambda (_%$%g2342723439%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2342723439%_)))
                           (_%$%g2342524683%_
                            (lambda (_%$%g2342723447%_)
                              (if (gx#stx-pair/null? _%$%g2342723447%_)
                                  (let ((_g27701_
                                         (gx#syntax-split-splice
                                          _%$%g2342723447%_
                                          '0)))
                                    (begin
                                      (let ((_g27702_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27701_)
                                                   (##values-length _g27701_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27702_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27702_)))
                                      (let ((_%$%target2342923450%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27701_ 0)))
                                            (_%$%tl2343123453%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27701_ 1))))
                                        (if (gx#stx-null? _%$%tl2343123453%_)
                                            (letrec ((_%$%loop2343223456%_
                                                      (lambda (_%$%hd2343023460%_
                                                               _%$%mixin-usetf2343623463%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2343023460%_)
                                                            (let ((_%$%e2343323465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2343023460%_)))
                      (let ((_%$%lp-hd2343423469%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2343323465%_)))
                            (_%$%lp-tl2343523472%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2343323465%_))))
                        (_%$%loop2343223456%_
                         _%$%lp-tl2343523472%_
                         (cons _%$%lp-hd2343423469%_
                               _%$%mixin-usetf2343623463%_))))
                    (let* ((_%$%mixin-usetf2343723475%_
                            (reverse _%$%mixin-usetf2343623463%_))
                           (_%type-slots23513%_
                            (if (gx#stx-null? _%slots22640%_)
                                '()
                                (cons 'slots:
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _%$%setf2295022988%_
                                               _%$%getf2288122919%_
                                               _%$%slot2281222850%_)
                                              (foldr (lambda (_%$%g2349823503%_
                                                              _%$%g2349923506%_
                                                              _%$%g2350023508%_
                                                              _%$%g2350123510%_)
                                                       (cons (cons _%$%g2350023508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g2349923506%_
                                 (cons _%$%g2349823503%_ '())))
                     _%$%g2350123510%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _%$%setf2295022988%_
                                                     _%$%getf2288122919%_
                                                     _%$%slot2281222850%_))
                                            '()))))
                           (_%type-mixin-slots23534%_
                            (if (gx#stx-null? _%mixin-slots23008%_)
                                '()
                                (cons 'mixin:
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _%$%mixin-setf2316123199%_
                                               _%$%mixin-getf2309223130%_
                                               _%$%mixin-slot2302223060%_)
                                              (foldr (lambda (_%$%g2351923524%_
                                                              _%$%g2352023527%_
                                                              _%$%g2352123529%_
                                                              _%$%g2352223531%_)
                                                       (cons (cons _%$%g2352123529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g2352023527%_
                                 (cons _%$%g2351923524%_ '())))
                     _%$%g2352223531%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _%$%mixin-setf2316123199%_
                                                     _%$%mixin-getf2309223130%_
                                                     _%$%mixin-slot2302223060%_))
                                            '()))))
                           (_%type-name23541%_
                            (cons 'name:
                                  (cons (let ((_%$e23537%_
                                               (gx#stx-getq
                                                'name:
                                                _%body22641%_)))
                                          (if _%$e23537%_
                                              _%$e23537%_
                                              _%id22638%_))
                                        '())))
                           (_%type-id23548%_
                            (cons 'id:
                                  (cons (let ((_%$e23544%_
                                               (gx#stx-getq
                                                'id:
                                                _%body22641%_)))
                                          (if _%$e23544%_
                                              _%$e23544%_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                                 _%$%g2265922670%_))))
                                        '())))
                           (_%type-constructor23562%_
                            (let ((_%$e23558%_
                                   (let ((_%$%e2355023552%_
                                          (gx#stx-getq
                                           'constructor:
                                           _%body22641%_)))
                                     (if _%$%e2355023552%_
                                         (let ((_%e23555%_ _%$%e2355023552%_))
                                           (cons 'constructor:
                                                 (cons _%e23555%_ '())))
                                         '#f))))
                              (if _%$e23558%_ _%$e23558%_ '())))
                           (_%properties23612%_
                            (let* ((_%properties23574%_
                                    (let ((_%$e23565%_
                                           (gx#stx-getq
                                            'transparent:
                                            _%body22641%_)))
                                      (if _%$e23565%_
                                          (cons (cons 'transparent:
                                                      (gx#stx-e _%$e23565%_))
                                                '())
                                          '())))
                                   (_%properties23589%_
                                    (let ((_%$e23577%_
                                           (gx#stx-e
                                            (gx#stx-getq
                                             'print:
                                             _%body22641%_))))
                                      (if _%$e23577%_
                                          (let ((_%print23584%_
                                                 (if (eq? _%$e23577%_ '#t)
                                                     _%slots22640%_
                                                     _%$e23577%_)))
                                            (cons (cons 'print: _%print23584%_)
                                                  _%properties23574%_))
                                          _%properties23574%_)))
                                   (_%properties23604%_
                                    (let ((_%$e23592%_
                                           (gx#stx-e
                                            (gx#stx-getq
                                             'equal:
                                             _%body22641%_))))
                                      (if _%$e23592%_
                                          (let ((_%equal23599%_
                                                 (if (eq? _%$e23592%_ '#t)
                                                     _%slots22640%_
                                                     _%$e23592%_)))
                                            (cons (cons 'equal: _%equal23599%_)
                                                  _%properties23589%_))
                                          _%properties23589%_)))
                                   (_%properties23607%_
                                    (if (gx#stx-e
                                         (gx#stx-getq 'acyclic: _%body22641%_))
                                        (cons (cons 'acyclic: '#t)
                                              _%properties23604%_)
                                        _%properties23604%_)))
                              _%properties23607%_))
                           (_%type-properties23653%_
                            (if (null? _%properties23612%_)
                                '()
                                (let* ((_%$%g2361523623%_
                                        (lambda (_%$%g2361623619%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g2361623619%_)))
                                       (_%$%g2361423649%_
                                        (lambda (_%$%g2361623627%_)
                                          (cons 'properties:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%g2361623627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g2361423649%_ _%properties23612%_))))
                           (_%metaclass23665%_
                            (let ((_%$e23656%_
                                   (gx#stx-getq 'metaclass: _%body22641%_)))
                              (if _%$e23656%_
                                  (if (gx#identifier? _%$e23656%_)
                                      _%$e23656%_
                                      '#f)
                                  '#f)))
                           (_%type-metaclass23668%_
                            (if _%metaclass23665%_
                                (cons 'metaclass:
                                      (cons _%metaclass23665%_ '()))
                                '()))
                           (_%final?23671%_
                            (gx#stx-e (gx#stx-getq 'final: _%body22641%_)))
                           (_%type-struct23674%_
                            (cons 'struct: (cons _%struct?22655%_ '())))
                           (_%type-final23677%_
                            (cons 'final: (cons _%final?23671%_ '())))
                           (_%$%g2368023697%_
                            (lambda (_%$%g2368123693%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2368123693%_)))
                           (_%$%g2367924679%_
                            (lambda (_%$%g2368123701%_)
                              (if (gx#stx-pair/null? _%$%g2368123701%_)
                                  (let ((_g27703_
                                         (gx#syntax-split-splice
                                          _%$%g2368123701%_
                                          '0)))
                                    (begin
                                      (let ((_g27704_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27703_)
                                                   (##values-length _g27703_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27704_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27704_)))
                                      (let ((_%$%target2368323704%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27703_ 0)))
                                            (_%$%tl2368523707%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27703_ 1))))
                                        (if (gx#stx-null? _%$%tl2368523707%_)
                                            (letrec ((_%$%loop2368623710%_
                                                      (lambda (_%$%hd2368423714%_
                                                               _%$%type-body2369023717%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2368423714%_)
                                                            (let ((_%$%e2368723719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2368423714%_)))
                      (let ((_%$%lp-hd2368823723%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2368723719%_)))
                            (_%$%lp-tl2368923726%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2368723719%_))))
                        (_%$%loop2368623710%_
                         _%$%lp-tl2368923726%_
                         (cons _%$%lp-hd2368823723%_
                               _%$%type-body2369023717%_))))
                    (let* ((_%$%type-body2369123729%_
                            (reverse _%$%type-body2369023717%_))
                           (_%$%g2375323761%_
                            (lambda (_%$%g2375423757%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2375423757%_)))
                           (_%$%g2375224667%_
                            (lambda (_%$%g2375423765%_)
                              (let* ((_%$%g2378123789%_
                                      (lambda (_%$%g2378223785%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2378223785%_)))
                                     (_%$%g2378024596%_
                                      (lambda (_%$%g2378223793%_)
                                        (let* ((_%$%g2380923817%_
                                                (lambda (_%$%g2381023813%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2381023813%_)))
                                               (_%$%g2380824561%_
                                                (lambda (_%$%g2381023821%_)
                                                  (let* ((_%$%g2383723845%_
                                                          (lambda (_%$%g2383823841%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2383823841%_)))
                                                         (_%$%g2383624477%_
                                                          (lambda (_%$%g2383823849%_)
                                                            (let* ((_%$%g2386523873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2386623869%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2386623869%_)))
                           (_%$%g2386424465%_
                            (lambda (_%$%g2386623877%_)
                              (let* ((_%$%g2389323901%_
                                      (lambda (_%$%g2389423897%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2389423897%_)))
                                     (_%$%g2389224461%_
                                      (lambda (_%$%g2389423905%_)
                                        (let* ((_%$%g2392123929%_
                                                (lambda (_%$%g2392223925%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2392223925%_)))
                                               (_%$%g2392024457%_
                                                (lambda (_%$%g2392223933%_)
                                                  (let* ((_%$%g2394923957%_
                                                          (lambda (_%$%g2395023953%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2395023953%_)))
                                                         (_%$%g2394824422%_
                                                          (lambda (_%$%g2395023961%_)
                                                            (let* ((_%$%g2397723985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2397823981%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2397823981%_)))
                           (_%$%g2397624351%_
                            (lambda (_%$%g2397823989%_)
                              (let* ((_%$%g2400524013%_
                                      (lambda (_%$%g2400624009%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2400624009%_)))
                                     (_%$%g2400424347%_
                                      (lambda (_%$%g2400624017%_)
                                        (let* ((_%$%g2403324041%_
                                                (lambda (_%$%g2403424037%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2403424037%_)))
                                               (_%$%g2403224343%_
                                                (lambda (_%$%g2403424045%_)
                                                  (let* ((_%$%g2406124069%_
                                                          (lambda (_%$%g2406224065%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2406224065%_)))
                                                         (_%$%g2406024339%_
                                                          (lambda (_%$%g2406224073%_)
                                                            (let* ((_%$%g2408924097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2409024093%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2409024093%_)))
                           (_%$%g2408824313%_
                            (lambda (_%$%g2409024101%_)
                              (let* ((_%$%g2411724125%_
                                      (lambda (_%$%g2411824121%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2411824121%_)))
                                     (_%$%g2411624287%_
                                      (lambda (_%$%g2411824129%_)
                                        (let* ((_%$%g2414524153%_
                                                (lambda (_%$%g2414624149%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2414624149%_)))
                                               (_%$%g2414424261%_
                                                (lambda (_%$%g2414624157%_)
                                                  (let* ((_%$%g2417324181%_
                                                          (lambda (_%$%g2417424177%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2417424177%_)))
                                                         (_%$%g2417224235%_
                                                          (lambda (_%$%g2417424185%_)
                                                            (let* ((_%$%g2420124209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2420224205%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2420224205%_)))
                           (_%$%g2420024231%_
                            (lambda (_%$%g2420224213%_)
                              (_%wrap22643%_
                               (cons (gx#datum->syntax '#f 'begin)
                                     (cons _%$%g2375423765%_
                                           (cons _%$%g2420224213%_ '())))))))
                      (_%$%g2420024231%_
                       (_%wrap22643%_
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _%$%g2265922670%_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type-info)
                                                (cons 'id:
                                                      (cons _%$%g2378223793%_
                                                            (cons 'name:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%g2381023821%_
                                (cons 'slots:
                                      (cons _%$%g2386623877%_
                                            (cons 'super:
                                                  (cons _%$%g2383823849%_
                                                        (cons 'struct?:
                                                              (cons _%$%g2389423905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons 'final?:
                                  (cons _%$%g2392223933%_
                                        (cons 'metaclass:
                                              (cons _%$%g2395023961%_
                                                    (cons 'constructor-method:
                                                          (cons _%$%g2397823989%_
                                                                (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%g2400624017%_
                                    (cons 'constructor:
                                          (cons _%$%g2403424045%_
                                                (cons 'predicate:
                                                      (cons _%$%g2406224073%_
                                                            (cons 'accessors:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%g2409024101%_
                                (cons 'mutators:
                                      (cons _%$%g2411824129%_
                                            (cons 'unchecked-accessors:
                                                  (cons _%$%g2414624157%_
                                                        (cons 'unchecked-mutators:
                                                              (cons _%$%g2417424185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2417224235%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (begin
                                                             (gx#syntax-check-splice-targets
                                                              _%$%usetf2329923337%_
                                                              _%$%slot2281222850%_)
                                                             (foldr (lambda (_%$%g2423824245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g2423924248%_
                                     _%$%g2424024250%_)
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%$%g2423924248%_
                                                            '()))
                                                (cons '::
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote-syntax)
                          (cons _%$%g2423824245%_ '()))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$%g2424024250%_))
                            (begin
                              (gx#syntax-check-splice-targets
                               _%$%mixin-usetf2343723475%_
                               _%$%mixin-slot2302223060%_)
                              (foldr (lambda (_%$%g2424124253%_
                                              _%$%g2424224256%_
                                              _%$%g2424324258%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%$%g2424224256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%$%g2424124253%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g2424324258%_))
                                     '()
                                     _%$%mixin-usetf2343723475%_
                                     _%$%mixin-slot2302223060%_))
                            _%$%usetf2329923337%_
                            _%$%slot2281222850%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2414424261%_
                                           (cons (gx#datum->syntax '#f '@list)
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _%$%ugetf2323023268%_
                                                    _%$%slot2281222850%_)
                                                   (foldr (lambda (_%$%g2426424271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g2426524274%_
                           _%$%g2426624276%_)
                    (cons (cons (gx#datum->syntax '#f '@list)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%$%g2426524274%_ '()))
                                      (cons '::
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%$%g2426424271%_
                                                              '()))
                                                  '()))))
                          _%$%g2426624276%_))
                  (begin
                    (gx#syntax-check-splice-targets
                     _%$%mixin-ugetf2336823406%_
                     _%$%mixin-slot2302223060%_)
                    (foldr (lambda (_%$%g2426724279%_
                                    _%$%g2426824282%_
                                    _%$%g2426924284%_)
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%$%g2426824282%_
                                                           '()))
                                               (cons '::
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _%$%g2426724279%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%g2426924284%_))
                           '()
                           _%$%mixin-ugetf2336823406%_
                           _%$%mixin-slot2302223060%_))
                  _%$%ugetf2323023268%_
                  _%$%slot2281222850%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%$%g2411624287%_
                                 (cons (gx#datum->syntax '#f '@list)
                                       (begin
                                         (gx#syntax-check-splice-targets
                                          _%$%setf2295022988%_
                                          _%$%slot2281222850%_)
                                         (foldr (lambda (_%$%g2429024297%_
                                                         _%$%g2429124300%_
                                                         _%$%g2429224302%_)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@list)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%$%g2429124300%_ '()))
                            (cons '::
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _%$%g2429024297%_ '()))
                                        '()))))
                _%$%g2429224302%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%mixin-setf2316123199%_
                                                   _%$%mixin-slot2302223060%_)
                                                  (foldr (lambda (_%$%g2429324305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g2429424308%_
                          _%$%g2429524310%_)
                   (cons (cons (gx#datum->syntax '#f '@list)
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g2429424308%_ '()))
                                     (cons '::
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _%$%g2429324305%_
                                                             '()))
                                                 '()))))
                         _%$%g2429524310%_))
                 '()
                 _%$%mixin-setf2316123199%_
                 _%$%mixin-slot2302223060%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%setf2295022988%_
                                                _%$%slot2281222850%_))))))))
                      (_%$%g2408824313%_
                       (cons (gx#datum->syntax '#f '@list)
                             (begin
                               (gx#syntax-check-splice-targets
                                _%$%getf2288122919%_
                                _%$%slot2281222850%_)
                               (foldr (lambda (_%$%g2431624323%_
                                               _%$%g2431724326%_
                                               _%$%g2431824328%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%$%g2431724326%_ '()))
                  (cons '::
                        (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                    (cons _%$%g2431624323%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%g2431824328%_))
                                      (begin
                                        (gx#syntax-check-splice-targets
                                         _%$%mixin-getf2309223130%_
                                         _%$%mixin-slot2302223060%_)
                                        (foldr (lambda (_%$%g2431924331%_
                                                        _%$%g2432024334%_
                                                        _%$%g2432124336%_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%g2432024334%_ '()))
                           (cons '::
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'quote-syntax)
                                             (cons _%$%g2431924331%_ '()))
                                       '()))))
               _%$%g2432124336%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%$%mixin-getf2309223130%_
                                               _%$%mixin-slot2302223060%_))
                                      _%$%getf2288122919%_
                                      _%$%slot2281222850%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2406024339%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax)
                                                           (cons _%$%g2274622757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2403224343%_
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _%$%g2271822729%_
                                                       '())))))))
                                (_%$%g2400424347%_
                                 (cons (gx#datum->syntax '#f 'quote-syntax)
                                       (cons _%$%g2269022701%_ '())))))))
                      (_%$%g2397624351%_
                       (if (null? _%type-constructor23562%_)
                           '#f
                           (let* ((_%$%g2435524370%_
                                   (lambda (_%$%g2435624366%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g2435624366%_)))
                                  (_%$%g2435424418%_
                                   (lambda (_%$%g2435624374%_)
                                     (if (gx#stx-pair? _%$%g2435624374%_)
                                         (let ((_%$%e2435824377%_
                                                (gx#syntax-e
                                                 _%$%g2435624374%_)))
                                           (let ((_%$%hd2435924381%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e2435824377%_)))
                                                 (_%$%tl2436024384%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e2435824377%_))))
                                             (if (gx#stx-datum?
                                                  _%$%hd2435924381%_)
                                                 (let ((_%$%e2436124387%_
                                                        (gx#stx-e
                                                         _%$%hd2435924381%_)))
                                                   (if (equal? _%$%e2436124387%_
                                                               'constructor:)
                                                       (if (gx#stx-pair?
                                                            _%$%tl2436024384%_)
                                                           (let ((_%$%e2436224391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%tl2436024384%_)))
                     (let ((_%$%hd2436324395%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e2436224391%_)))
                           (_%$%tl2436424398%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e2436224391%_))))
                       (if (gx#stx-null? _%$%tl2436424398%_)
                           (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%$%hd2436324395%_ '()))
                           (_%$%g2435524370%_ _%$%g2435624374%_))))
                   (_%$%g2435524370%_ _%$%g2435624374%_))
               (_%$%g2435524370%_ _%$%g2435624374%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g2435524370%_
                                                  _%$%g2435624374%_))))
                                         (_%$%g2435524370%_
                                          _%$%g2435624374%_)))))
                             (_%$%g2435424418%_
                              _%type-constructor23562%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2394824422%_
                                                     (if _%metaclass23665%_
                                                         (let* ((_%$%g2442624434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%g2442724430%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g2442724430%_)))
                        (_%$%g2442524453%_
                         (lambda (_%$%g2442724438%_)
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _%$%g2442724438%_ '())))))
                   (_%$%g2442524453%_ _%metaclass23665%_))
                 '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2392024457%_
                                           _%final?23671%_)))))
                                (_%$%g2389224461%_ _%struct?22655%_)))))
                      (_%$%g2386424465%_
                       (cons (gx#datum->syntax '#f 'quote)
                             (cons (foldr (lambda (_%$%g2446824471%_
                                                   _%$%g2446924474%_)
                                            (cons _%$%g2446824471%_
                                                  _%$%g2446924474%_))
                                          '()
                                          _%$%slot2281222850%_)
                                   '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2383624477%_
                                                     (let* ((_%$%g2448124498%_
                                                             (lambda (_%$%g2448224494%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%$%g2448224494%_)))
                                                            (_%$%g2448024557%_
                                                             (lambda (_%$%g2448224502%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g2448224502%_)
                           (let ((_g27705_
                                  (gx#syntax-split-splice
                                   _%$%g2448224502%_
                                   '0)))
                             (begin
                               (let ((_g27706_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g27705_)
                                            (##values-length _g27705_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g27706_ 2)))
                                     (error "Context expects 2 values"
                                            _g27706_)))
                               (let ((_%$%target2448424505%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g27705_ 0)))
                                     (_%$%tl2448624508%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g27705_ 1))))
                                 (if (gx#stx-null? _%$%tl2448624508%_)
                                     (letrec ((_%$%loop2448724511%_
                                               (lambda (_%$%hd2448524515%_
                                                        _%$%super-id2449124518%_)
                                                 (if (gx#stx-pair?
                                                      _%$%hd2448524515%_)
                                                     (let ((_%$%e2448824520%_
                                                            (gx#syntax-e
                                                             _%$%hd2448524515%_)))
                                                       (let ((_%$%lp-hd2448924524%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e2448824520%_)))
                     (_%$%lp-tl2449024527%_
                      (let () (declare (not safe)) (##cdr _%$%e2448824520%_))))
                 (_%$%loop2448724511%_
                  _%$%lp-tl2449024527%_
                  (cons _%$%lp-hd2448924524%_ _%$%super-id2449124518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%super-id2449224530%_
                                                            (reverse _%$%super-id2449124518%_)))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (foldr (lambda (_%$%g2454824551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g2454924554%_)
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%$%g2454824551%_ '()))
                                    _%$%g2454924554%_))
                            '()
                            _%$%super-id2449224530%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%$%loop2448724511%_
                                        _%$%target2448424505%_
                                        '()))
                                     (_%$%g2448124498%_ _%$%g2448224502%_)))))
                           (_%$%g2448124498%_ _%$%g2448224502%_)))))
               (_%$%g2448024557%_ _%super-ref22639%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2380824561%_
                                           (let* ((_%$%g2456524573%_
                                                   (lambda (_%$%g2456624569%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g2456624569%_)))
                                                  (_%$%g2456424592%_
                                                   (lambda (_%$%g2456624577%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%$%g2456624577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g2456424592%_
                                              (cadr _%type-name23541%_))))))))
                                (_%$%g2378024596%_
                                 (let* ((_%$%g2460024615%_
                                         (lambda (_%$%g2460124611%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2460124611%_)))
                                        (_%$%g2459924663%_
                                         (lambda (_%$%g2460124619%_)
                                           (if (gx#stx-pair? _%$%g2460124619%_)
                                               (let ((_%$%e2460324622%_
                                                      (gx#syntax-e
                                                       _%$%g2460124619%_)))
                                                 (let ((_%$%hd2460424626%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2460324622%_)))
                                                       (_%$%tl2460524629%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2460324622%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2460424626%_)
                                                       (let ((_%$%e2460624632%_
                                                              (gx#stx-e
                                                               _%$%hd2460424626%_)))
                                                         (if (equal? _%$%e2460624632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'id:)
                     (if (gx#stx-pair? _%$%tl2460524629%_)
                         (let ((_%$%e2460724636%_
                                (gx#syntax-e _%$%tl2460524629%_)))
                           (let ((_%$%hd2460824640%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2460724636%_)))
                                 (_%$%tl2460924643%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2460724636%_))))
                             (if (gx#stx-null? _%$%tl2460924643%_)
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%hd2460824640%_ '()))
                                 (_%$%g2460024615%_ _%$%g2460124619%_))))
                         (_%$%g2460024615%_ _%$%g2460124619%_))
                     (_%$%g2460024615%_ _%$%g2460124619%_)))
               (_%$%g2460024615%_ _%$%g2460124619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2460024615%_
                                                _%$%g2460124619%_)))))
                                   (_%$%g2459924663%_ _%type-id23548%_)))))))
                      (_%$%g2375224667%_
                       (_%wrap22643%_
                        (cons (gx#datum->syntax '#f 'defclass-type)
                              (cons _%$%g2269022701%_
                                    (cons _%$%g2277422785%_
                                          (cons _%$%g2271822729%_
                                                (cons _%$%g2274622757%_
                                                      (foldr (lambda (_%$%g2467024673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g2467124676%_)
                       (cons _%$%g2467024673%_ _%$%g2467124676%_))
                     '()
                     _%$%type-body2369123729%_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2368623710%_
                                               _%$%target2368323704%_
                                               '()))
                                            (_%$%g2368023697%_
                                             _%$%g2368123701%_)))))
                                  (_%$%g2368023697%_ _%$%g2368123701%_)))))
                      (_%$%g2367924679%_
                       (foldr cons
                              (foldr cons
                                     (foldr cons
                                            (foldr cons
                                                   (foldr cons
                                                          (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr cons
                                (foldr cons
                                       _%type-mixin-slots23534%_
                                       _%type-slots23513%_)
                                _%type-properties23653%_)
                         _%type-metaclass23668%_)
                  _%type-final23677%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%type-struct23674%_)
                                            _%type-constructor23562%_)
                                     _%type-name23541%_)
                              _%type-id23548%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2343223456%_
                                               _%$%target2342923450%_
                                               '()))
                                            (_%$%g2342623443%_
                                             _%$%g2342723447%_)))))
                                  (_%$%g2342623443%_ _%$%g2342723447%_)))))
                      (_%$%g2342524683%_
                       (gx#stx-map
                        (lambda (_%$%g2468624688%_)
                          (_%make-id22645%_ '"&" _%$%g2468624688%_))
                        (foldr (lambda (_%$%g2469124694%_ _%$%g2469224697%_)
                                 (cons _%$%g2469124694%_ _%$%g2469224697%_))
                               '()
                               _%$%mixin-setf2316123199%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2336323387%_
                                               _%$%target2336023381%_
                                               '()))
                                            (_%$%g2335723374%_
                                             _%$%g2335823378%_)))))
                                  (_%$%g2335723374%_ _%$%g2335823378%_)))))
                      (_%$%g2335624700%_
                       (gx#stx-map
                        (lambda (_%$%g2470324705%_)
                          (_%make-id22645%_ '"&" _%$%g2470324705%_))
                        (foldr (lambda (_%$%g2470824711%_ _%$%g2470924714%_)
                                 (cons _%$%g2470824711%_ _%$%g2470924714%_))
                               '()
                               _%$%mixin-getf2309223130%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2329423318%_
                                               _%$%target2329123312%_
                                               '()))
                                            (_%$%g2328823305%_
                                             _%$%g2328923309%_)))))
                                  (_%$%g2328823305%_ _%$%g2328923309%_)))))
                      (_%$%g2328724717%_
                       (gx#stx-map
                        (lambda (_%$%g2472024722%_)
                          (_%make-id22645%_ '"&" _%$%g2472024722%_))
                        (foldr (lambda (_%$%g2472524728%_ _%$%g2472624731%_)
                                 (cons _%$%g2472524728%_ _%$%g2472624731%_))
                               '()
                               _%$%setf2295022988%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2322523249%_
                                               _%$%target2322223243%_
                                               '()))
                                            (_%$%g2321923236%_
                                             _%$%g2322023240%_)))))
                                  (_%$%g2321923236%_ _%$%g2322023240%_)))))
                      (_%$%g2321824734%_
                       (gx#stx-map
                        (lambda (_%$%g2473724739%_)
                          (_%make-id22645%_ '"&" _%$%g2473724739%_))
                        (foldr (lambda (_%$%g2474224745%_ _%$%g2474324748%_)
                                 (cons _%$%g2474224745%_ _%$%g2474324748%_))
                               '()
                               _%$%getf2288122919%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2315623180%_
                                               _%$%target2315323174%_
                                               '()))
                                            (_%$%g2315023167%_
                                             _%$%g2315123171%_)))))
                                  (_%$%g2315023167%_ _%$%g2315123171%_)))))
                      (_%$%g2314924751%_
                       (gx#stx-map
                        (lambda (_%$%g2475424756%_)
                          (_%make-id22645%_
                           _%name22649%_
                           '"-"
                           _%$%g2475424756%_
                           '"-set!"))
                        _%mixin-slots23008%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2308723111%_
                                               _%$%target2308423105%_
                                               '()))
                                            (_%$%g2308123098%_
                                             _%$%g2308223102%_)))))
                                  (_%$%g2308123098%_ _%$%g2308223102%_)))))
                      (_%$%g2308024760%_
                       (gx#stx-map
                        (lambda (_%$%g2476324765%_)
                          (_%make-id22645%_
                           _%name22649%_
                           '"-"
                           _%$%g2476324765%_))
                        _%mixin-slots23008%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2301723041%_
                                               _%$%target2301423035%_
                                               '()))
                                            (_%$%g2301123028%_
                                             _%$%g2301223032%_)))))
                                  (_%$%g2301123028%_ _%$%g2301223032%_)))))
                      (_%$%g2301024769%_ _%mixin-slots23008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2294522969%_
                                               _%$%target2294222963%_
                                               '()))
                                            (_%$%g2293922956%_
                                             _%$%g2294022960%_)))))
                                  (_%$%g2293922956%_ _%$%g2294022960%_)))))
                      (_%$%g2293824773%_
                       (gx#stx-map
                        (lambda (_%$%g2477624778%_)
                          (_%make-id22645%_
                           _%name22649%_
                           '"-"
                           _%$%g2477624778%_
                           '"-set!"))
                        _%slots22640%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2287622900%_
                                               _%$%target2287322894%_
                                               '()))
                                            (_%$%g2287022887%_
                                             _%$%g2287122891%_)))))
                                  (_%$%g2287022887%_ _%$%g2287122891%_)))))
                      (_%$%g2286924782%_
                       (gx#stx-map
                        (lambda (_%$%g2478524787%_)
                          (_%make-id22645%_
                           _%name22649%_
                           '"-"
                           _%$%g2478524787%_))
                        _%slots22640%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2280722831%_
                                               _%$%target2280422825%_
                                               '()))
                                            (_%$%g2280122818%_
                                             _%$%g2280222822%_)))))
                                  (_%$%g2280122818%_ _%$%g2280222822%_)))))
                      (_%$%g2280024791%_ _%slots22640%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2277224795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                                              _%super22652%_)))))))
                                          (_%$%g2274424799%_
                                           (_%make-id22645%_
                                            _%name22649%_
                                            '"?"))))))
                                (_%$%g2271624803%_
                                 (_%make-id22645%_ '"make-" _%name22649%_))))))
                      (_%$%g2268824807%_
                       (_%make-id22645%_ _%name22649%_ '"::t"))))))
            (_%$%g2265724811%_ _%id22638%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24878%_)
        (let* ((_%$%g2488224901%_
                (lambda (_%$%g2488324897%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g2488324897%_)))
               (_%$%g2488124958%_
                (lambda (_%$%g2488324905%_)
                  (if (gx#stx-pair? _%$%g2488324905%_)
                      (let ((_%$%e2488724908%_
                             (gx#syntax-e _%$%g2488324905%_)))
                        (let ((_%$%hd2488824912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2488724908%_)))
                              (_%$%tl2488924915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2488724908%_))))
                          (if (gx#stx-pair? _%$%tl2488924915%_)
                              (let ((_%$%e2489024918%_
                                     (gx#syntax-e _%$%tl2488924915%_)))
                                (let ((_%$%hd2489124922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2489024918%_)))
                                      (_%$%tl2489224925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2489024918%_))))
                                  (if (gx#stx-pair? _%$%tl2489224925%_)
                                      (let ((_%$%e2489324928%_
                                             (gx#syntax-e _%$%tl2489224925%_)))
                                        (let ((_%$%hd2489424932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2489324928%_)))
                                              (_%$%tl2489524935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2489324928%_))))
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defclass)
                                                (cons _%$%hd2489124922%_
                                                      (cons _%$%hd2489424932%_
                                                            (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '#t _%$%tl2489524935%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g2488224901%_ _%$%g2488324905%_))))
                              (_%$%g2488224901%_ _%$%g2488324905%_))))
                      (_%$%g2488224901%_ _%$%g2488324905%_)))))
          (_%$%g2488124958%_ _%$stx24878%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24962%_)
        (letrec ((_%generate24965%_
                  (lambda (_%hd25049%_ _%slots25051%_ _%body25052%_)
                    (let* ((_%__stx2715627157%_ _%hd25049%_)
                           (_%$%g2505525067%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2715627157%_))))
                      (let ((_%__kont2715927160%_
                             (lambda (_%$%g2505725095%_ _%$%g2505825097%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24962%_
                                _%$%g2505825097%_
                                (gx#syntax->list _%$%g2505725095%_)
                                _%slots25051%_
                                _%body25052%_)))
                            (_%__kont2716127162%_
                             (lambda ()
                               (if (gx#identifier? _%hd25049%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24962%_
                                    _%hd25049%_
                                    '()
                                    _%slots25051%_
                                    _%body25052%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx24962%_
                                    _%hd25049%_)))))
                        (let ((_%__match2716927170%_
                               (lambda (_%$%e2505925085%_
                                        _%$%hd2506025089%_
                                        _%$%tl2506125092%_)
                                 (let ((_%$%g2505725095%_ _%$%tl2506125092%_)
                                       (_%$%g2505825097%_ _%$%hd2506025089%_))
                                   (if (and (gx#stx-list? _%$%g2505725095%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%$%g2505725095%_))
                                       (_%__kont2715927160%_
                                        _%$%g2505725095%_
                                        _%$%g2505825097%_)
                                       (_%__kont2716127162%_))))))
                          (if (gx#stx-pair? _%__stx2715627157%_)
                              (let ((_%$%e2505925085%_
                                     (gx#syntax-e _%__stx2715627157%_)))
                                (let ((_%$%tl2506125092%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2505925085%_)))
                                      (_%$%hd2506025089%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2505925085%_))))
                                  (_%__match2716927170%_
                                   _%$%e2505925085%_
                                   _%$%hd2506025089%_
                                   _%$%tl2506125092%_)))
                              (_%__kont2716127162%_))))))))
          (let* ((_%$%g2496824987%_
                  (lambda (_%$%g2496924983%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g2496924983%_)))
                 (_%$%g2496725045%_
                  (lambda (_%$%g2496924991%_)
                    (if (gx#stx-pair? _%$%g2496924991%_)
                        (let ((_%$%e2497324994%_
                               (gx#syntax-e _%$%g2496924991%_)))
                          (let ((_%$%hd2497424998%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2497324994%_)))
                                (_%$%tl2497525001%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2497324994%_))))
                            (if (gx#stx-pair? _%$%tl2497525001%_)
                                (let ((_%$%e2497625004%_
                                       (gx#syntax-e _%$%tl2497525001%_)))
                                  (let ((_%$%hd2497725008%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2497625004%_)))
                                        (_%$%tl2497825011%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2497625004%_))))
                                    (if (gx#stx-pair? _%$%tl2497825011%_)
                                        (let ((_%$%e2497925014%_
                                               (gx#syntax-e
                                                _%$%tl2497825011%_)))
                                          (let ((_%$%hd2498025018%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2497925014%_)))
                                                (_%$%tl2498125021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2497925014%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd2498025018%_)
                                                     (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                      _%$%tl2498125021%_))
                                                (_%generate24965%_
                                                 _%$%hd2497725008%_
                                                 _%$%hd2498025018%_
                                                 _%$%tl2498125021%_)
                                                (_%$%g2496824987%_
                                                 _%$%g2496924991%_))))
                                        (_%$%g2496824987%_
                                         _%$%g2496924991%_))))
                                (_%$%g2496824987%_ _%$%g2496924991%_))))
                        (_%$%g2496824987%_ _%$%g2496924991%_)))))
            (_%$%g2496725045%_ _%stx24962%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25114%_)
        (letrec ((_%wrap25117%_
                  (lambda (_%e-stx25463%_)
                    (gx#stx-wrap-source
                     _%e-stx25463%_
                     (gx#stx-source _%stx25114%_))))
                 (_%method-opt?25119%_
                  (lambda (_%x25460%_)
                    (let ((__tmp27707 (gx#stx-e _%x25460%_)))
                      (declare (not safe))
                      (##memq __tmp27707 '(rebind:))))))
          (let* ((_%$%g2512125150%_
                  (lambda (_%$%g2512225146%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g2512225146%_)))
                 (_%$%g2512025456%_
                  (lambda (_%$%g2512225154%_)
                    (if (gx#stx-pair? _%$%g2512225154%_)
                        (let ((_%$%e2512725157%_
                               (gx#syntax-e _%$%g2512225154%_)))
                          (let ((_%$%hd2512825161%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2512725157%_)))
                                (_%$%tl2512925164%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2512725157%_))))
                            (if (gx#stx-pair? _%$%tl2512925164%_)
                                (let ((_%$%e2513025167%_
                                       (gx#syntax-e _%$%tl2512925164%_)))
                                  (let ((_%$%hd2513125171%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2513025167%_)))
                                        (_%$%tl2513225174%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2513025167%_))))
                                    (if (gx#stx-pair? _%$%hd2513125171%_)
                                        (let ((_%$%e2513325177%_
                                               (gx#syntax-e
                                                _%$%hd2513125171%_)))
                                          (let ((_%$%hd2513425181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2513325177%_)))
                                                (_%$%tl2513525184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2513325177%_))))
                                            (if (gx#identifier?
                                                 _%$%hd2513425181%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27708_|
                                                     _%$%hd2513425181%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl2513525184%_)
                                                        (let ((_%$%e2513625187%_
                                                               (gx#syntax-e
                                                                _%$%tl2513525184%_)))
                                                          (let ((_%$%hd2513725191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e2513625187%_)))
                        (_%$%tl2513825194%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e2513625187%_))))
                    (if (gx#stx-pair? _%$%tl2513825194%_)
                        (let ((_%$%e2513925197%_
                               (gx#syntax-e _%$%tl2513825194%_)))
                          (let ((_%$%hd2514025201%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2513925197%_)))
                                (_%$%tl2514125204%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2513925197%_))))
                            (if (gx#stx-null? _%$%tl2514125204%_)
                                (if (gx#stx-pair? _%$%tl2513225174%_)
                                    (let ((_%$%e2514225207%_
                                           (gx#syntax-e _%$%tl2513225174%_)))
                                      (let ((_%$%hd2514325211%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2514225207%_)))
                                            (_%$%tl2514425214%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2514225207%_))))
                                        (if (and (gx#identifier?
                                                  _%$%hd2513725191%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                    _%$%hd2514025201%_))
                                                 (gx#stx-plist?
                                                  _%$%tl2514425214%_
                                                  _%method-opt?25119%_))
                                            (let* ((_%klass25248%_
                                                    (gx#syntax-local-value
                                                     _%$%hd2514025201%_))
                                                   (_%rebind?25251%_
                                                    (gx#stx-e
                                                     (gx#stx-getq
                                                      'rebind:
                                                      _%$%tl2514425214%_)))
                                                   (_%$%g2525425262%_
                                                    (lambda (_%$%g2525525258%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g2525525258%_)))
                                                   (_%$%g2525325446%_
                                                    (lambda (_%$%g2525525266%_)
                                                      (let* ((_%$%g2528425292%_
                                                              (lambda (_%$%g2528525288%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g2528525288%_)))
                     (_%$%g2528325442%_
                      (lambda (_%$%g2528525296%_)
                        (let* ((_%$%g2531225320%_
                                (lambda (_%$%g2531325316%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g2531325316%_)))
                               (_%$%g2531125438%_
                                (lambda (_%$%g2531325324%_)
                                  (let* ((_%$%g2534025348%_
                                          (lambda (_%$%g2534125344%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g2534125344%_)))
                                         (_%$%g2533925434%_
                                          (lambda (_%$%g2534125352%_)
                                            (let* ((_%$%g2536825376%_
                                                    (lambda (_%$%g2536925372%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g2536925372%_)))
                                                   (_%$%g2536725430%_
                                                    (lambda (_%$%g2536925380%_)
                                                      (let* ((_%$%g2539625404%_
                                                              (lambda (_%$%g2539725400%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g2539725400%_)))
                     (_%$%g2539525426%_
                      (lambda (_%$%g2539725408%_)
                        (_%wrap25117%_
                         (cons (gx#datum->syntax '#f 'begin)
                               (cons _%$%g2534125352%_
                                     (cons _%$%g2539725408%_ '())))))))
                (_%$%g2539525426%_
                 (_%wrap25117%_
                  (cons (gx#datum->syntax '#f 'bind-method!)
                        (cons _%$%g2525525266%_
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _%$%hd2513725191%_ '()))
                                    (cons _%$%g2528525296%_
                                          (cons _%$%g2536925380%_
                                                '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2536725430%_
                                               _%rebind?25251%_)))))
                                    (_%$%g2533925434%_
                                     (_%wrap25117%_
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%g2528525296%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'let-syntax)
                                                              (cons (cons (cons _%$%g2531325324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    (cons '()
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '_)
                                    (cons (gx#datum->syntax '#f 'obj)
                                          (cons (gx#datum->syntax '#f 'arg)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '...)
                                                      '()))))
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'call-next-method)
                                          (cons _%$%g2525525266%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'obj)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%$%hd2513725191%_ '()))
                    (cons (gx#datum->syntax '#f 'arg)
                          (cons (gx#datum->syntax '#f '...) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '())
                            (cons _%$%hd2514325211%_ '())))
                '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (_%$%g2531125438%_
                           (gx#stx-identifier
                            _%$%hd2514025201%_
                            '@next-method))))))
                (_%$%g2528325442%_
                 (gx#stx-identifier
                  _%$%hd2514025201%_
                  _%$%hd2514025201%_
                  '"::"
                  _%$%hd2513725191%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2525325446%_
                                               (let ((__obj27435
                                                      _%klass25248%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj27435
                                                        'gerbil/core#runtime-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj27435
                                                        '3
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#runtime-type-info::t
                                                      __obj27435
                                                      'type-descriptor)))))
                                            (if (gx#identifier?
                                                 _%$%hd2513725191%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%$%hd2514025201%_))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"bad syntax; illegal method options"
                                                     _%stx25114%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"bad syntax; invalid class type"
                                                     _%stx25114%_
                                                     _%$%hd2514025201%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; expected method identifier"
                                                 _%stx25114%_
                                                 _%$%hd2513725191%_)))))
                                    (_%$%g2512125150%_ _%$%g2512225154%_))
                                (_%$%g2512125150%_ _%$%g2512225154%_))))
                        (_%$%g2512125150%_ _%$%g2512225154%_))))
                (_%$%g2512125150%_ _%$%g2512225154%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2512125150%_
                                                     _%$%g2512225154%_))
                                                (_%$%g2512125150%_
                                                 _%$%g2512225154%_))))
                                        (_%$%g2512125150%_
                                         _%$%g2512225154%_))))
                                (_%$%g2512125150%_ _%$%g2512225154%_))))
                        (_%$%g2512125150%_ _%$%g2512225154%_)))))
            (_%$%g2512025456%_ _%stx25114%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25466%_)
        (letrec ((_%dotted-identifier?25469%_
                  (lambda (_%id26094%_)
                    (if (gx#identifier? _%id26094%_)
                        (let ((_%id-str26097%_
                               (symbol->string (gx#stx-e _%id26094%_))))
                          (if (string-index _%id-str26097%_ '#\.)
                              (let* ((_%split26100%_
                                      (string-split _%id-str26097%_ '#\.))
                                     (__tmp27709 (length _%split26100%_)))
                                (declare (not safe))
                                (##fx= __tmp27709 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25471%_
                  (lambda (_%id26083%_)
                    (let* ((_%id-str26086%_
                            (symbol->string (gx#stx-e _%id26083%_)))
                           (_%split26089%_
                            (string-split _%id-str26086%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26083%_
                             (car _%split26089%_))
                            (cons (gx#stx-identifier
                                   _%id26083%_
                                   (cadr _%split26089%_))
                                  '()))))))
          (let* ((_%__stx2717227173%_ _%stx25466%_)
                 (_%$%g2547625563%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2717227173%_))))
            (let ((_%__kont2717527176%_
                   (lambda (_%$%g2547825976%_
                            _%$%g2547925978%_
                            _%$%g2548025979%_)
                     (let* ((_%$%g2600726022%_
                             (lambda (_%$%g2600826018%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g2600826018%_)))
                            (_%$%g2600626075%_
                             (lambda (_%$%g2600826026%_)
                               (if (gx#stx-pair? _%$%g2600826026%_)
                                   (let ((_%$%e2601126029%_
                                          (gx#syntax-e _%$%g2600826026%_)))
                                     (let ((_%$%hd2601226033%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e2601126029%_)))
                                           (_%$%tl2601326036%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e2601126029%_))))
                                       (if (gx#stx-pair? _%$%tl2601326036%_)
                                           (let ((_%$%e2601426039%_
                                                  (gx#syntax-e
                                                   _%$%tl2601326036%_)))
                                             (let ((_%$%hd2601526043%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e2601426039%_)))
                                                   (_%$%tl2601626046%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e2601426039%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl2601626046%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'apply)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'call-method)
                                                               (cons _%$%hd2601226033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _%$%hd2601526043%_ '()))
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (foldr (lambda (_%$%g2606626069%_
                                                               _%$%g2606726072%_)
                                                        (cons _%$%g2606626069%_
                                                              _%$%g2606726072%_))
                                                      '()
                                                      _%$%g2547925978%_))
                                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g2600726022%_
                                                    _%$%g2600826026%_))))
                                           (_%$%g2600726022%_
                                            _%$%g2600826026%_))))
                                   (_%$%g2600726022%_ _%$%g2600826026%_)))))
                       (_%$%g2600626075%_
                        (_%split-dotted25471%_ _%$%g2548025979%_)))))
                  (_%__kont2717927180%_
                   (lambda (_%$%g2549925820%_ _%$%g2550025822%_)
                     (let* ((_%$%g2583925854%_
                             (lambda (_%$%g2584025850%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g2584025850%_)))
                            (_%$%g2583825907%_
                             (lambda (_%$%g2584025858%_)
                               (if (gx#stx-pair? _%$%g2584025858%_)
                                   (let ((_%$%e2584325861%_
                                          (gx#syntax-e _%$%g2584025858%_)))
                                     (let ((_%$%hd2584425865%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e2584325861%_)))
                                           (_%$%tl2584525868%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e2584325861%_))))
                                       (if (gx#stx-pair? _%$%tl2584525868%_)
                                           (let ((_%$%e2584625871%_
                                                  (gx#syntax-e
                                                   _%$%tl2584525868%_)))
                                             (let ((_%$%hd2584725875%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e2584625871%_)))
                                                   (_%$%tl2584825878%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e2584625871%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl2584825878%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _%$%hd2584425865%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _%$%hd2584725875%_ '()))
                             (foldr (lambda (_%$%g2589825901%_
                                             _%$%g2589925904%_)
                                      (cons _%$%g2589825901%_
                                            _%$%g2589925904%_))
                                    '()
                                    _%$%g2549925820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g2583925854%_
                                                    _%$%g2584025858%_))))
                                           (_%$%g2583925854%_
                                            _%$%g2584025858%_))))
                                   (_%$%g2583925854%_ _%$%g2584025858%_)))))
                       (_%$%g2583825907%_
                        (_%split-dotted25471%_ _%$%g2550025822%_)))))
                  (_%__kont2718327184%_
                   (lambda (_%$%g2551625726%_
                            _%$%g2551725728%_
                            _%$%g2551825729%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%$%g2551725728%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%$%g2551825729%_
                                                         '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%$%g2575625759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g2575725762%_)
                          (cons _%$%g2575625759%_ _%$%g2575725762%_))
                        '()
                        _%$%g2551625726%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2718727188%_
                   (lambda (_%$%g2553725628%_
                            _%$%g2553825630%_
                            _%$%g2553925631%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%$%g2553825630%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%$%g2553925631%_ '()))
                                       (foldr (lambda (_%$%g2565225655%_
                                                       _%$%g2565325658%_)
                                                (cons _%$%g2565225655%_
                                                      _%$%g2565325658%_))
                                              '()
                                              _%$%g2553725628%_)))))))
              (let* ((_%__match2729127292%_
                      (lambda (_%$%e2554025570%_
                               _%$%hd2554125574%_
                               _%$%tl2554225577%_
                               _%$%e2554325580%_
                               _%$%hd2554425584%_
                               _%$%tl2554525587%_
                               _%$%e2554625590%_
                               _%$%hd2554725594%_
                               _%$%tl2554825597%_
                               _%__splice2718927190%_
                               _%$%target2554925600%_
                               _%$%tl2555125603%_)
                        (letrec ((_%$%loop2555225606%_
                                  (lambda (_%$%hd2555025610%_
                                           _%$%arg2555625613%_)
                                    (if (gx#stx-pair? _%$%hd2555025610%_)
                                        (let ((_%$%e2555325615%_
                                               (gx#syntax-e
                                                _%$%hd2555025610%_)))
                                          (let ((_%$%lp-tl2555525622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2555325615%_)))
                                                (_%$%lp-hd2555425619%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2555325615%_))))
                                            (_%$%loop2555225606%_
                                             _%$%lp-tl2555525622%_
                                             (cons _%$%lp-hd2555425619%_
                                                   _%$%arg2555625613%_))))
                                        (let ((_%$%arg2555725625%_
                                               (reverse _%$%arg2555625613%_)))
                                          (let ((_%$%g2553725628%_
                                                 _%$%arg2555725625%_)
                                                (_%$%g2553825630%_
                                                 _%$%hd2554725594%_)
                                                (_%$%g2553925631%_
                                                 _%$%hd2554425584%_))
                                            (if (gx#identifier?
                                                 _%$%g2553925631%_)
                                                (_%__kont2718727188%_
                                                 _%$%g2553725628%_
                                                 _%$%g2553825630%_
                                                 _%$%g2553925631%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g2547625563%_)))))))))
                          (_%$%loop2555225606%_ _%$%target2554925600%_ '()))))
                     (_%__match2726527266%_
                      (lambda (_%$%e2551925668%_
                               _%$%hd2552025672%_
                               _%$%tl2552125675%_
                               _%$%e2552225678%_
                               _%$%hd2552325682%_
                               _%$%tl2552425685%_
                               _%$%e2552525688%_
                               _%$%hd2552625692%_
                               _%$%tl2552725695%_
                               _%__splice2718527186%_
                               _%$%target2552825698%_
                               _%$%tl2553025701%_)
                        (letrec ((_%$%loop2553125704%_
                                  (lambda (_%$%hd2552925708%_
                                           _%$%arg2553525711%_)
                                    (if (gx#stx-pair? _%$%hd2552925708%_)
                                        (let ((_%$%e2553225713%_
                                               (gx#syntax-e
                                                _%$%hd2552925708%_)))
                                          (let ((_%$%lp-tl2553425720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2553225713%_)))
                                                (_%$%lp-hd2553325717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2553225713%_))))
                                            (_%$%loop2553125704%_
                                             _%$%lp-tl2553425720%_
                                             (cons _%$%lp-hd2553325717%_
                                                   _%$%arg2553525711%_))))
                                        (let ((_%$%arg2553625723%_
                                               (reverse _%$%arg2553525711%_)))
                                          (let ((_%$%g2551625726%_
                                                 _%$%arg2553625723%_)
                                                (_%$%g2551725728%_
                                                 _%$%hd2552625692%_)
                                                (_%$%g2551825729%_
                                                 _%$%hd2552325682%_))
                                            (if (and (gx#identifier?
                                                      _%$%g2551825729%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%$%g2574825751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g2574925754%_)
                       (cons _%$%g2574825751%_ _%$%g2574925754%_))
                     '()
                     _%$%g2551625726%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2718327184%_
                                                 _%$%g2551625726%_
                                                 _%$%g2551725728%_
                                                 _%$%g2551825729%_)
                                                (_%__match2729127292%_
                                                 _%$%e2551925668%_
                                                 _%$%hd2552025672%_
                                                 _%$%tl2552125675%_
                                                 _%$%e2552225678%_
                                                 _%$%hd2552325682%_
                                                 _%$%tl2552425685%_
                                                 _%$%e2552525688%_
                                                 _%$%hd2552625692%_
                                                 _%$%tl2552725695%_
                                                 _%__splice2718527186%_
                                                 _%$%target2552825698%_
                                                 _%$%tl2553025701%_))))))))
                          (_%$%loop2553125704%_ _%$%target2552825698%_ '()))))
                     (_%__match2725127252%_
                      (lambda (_%$%e2551925668%_
                               _%$%hd2552025672%_
                               _%$%tl2552125675%_
                               _%$%e2552225678%_
                               _%$%hd2552325682%_
                               _%$%tl2552425685%_)
                        (if (gx#stx-pair? _%$%tl2552425685%_)
                            (let ((_%$%e2552525688%_
                                   (gx#syntax-e _%$%tl2552425685%_)))
                              (let ((_%$%tl2552725695%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2552525688%_)))
                                    (_%$%hd2552625692%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2552525688%_))))
                                (if (gx#stx-pair/null? _%$%tl2552725695%_)
                                    (let ((_%__splice2718527186%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl2552725695%_
                                            '0)))
                                      (let ((_%$%tl2553025701%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2718527186%_
                                                '1)))
                                            (_%$%target2552825698%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2718527186%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl2553025701%_)
                                            (_%__match2726527266%_
                                             _%$%e2551925668%_
                                             _%$%hd2552025672%_
                                             _%$%tl2552125675%_
                                             _%$%e2552225678%_
                                             _%$%hd2552325682%_
                                             _%$%tl2552425685%_
                                             _%$%e2552525688%_
                                             _%$%hd2552625692%_
                                             _%$%tl2552725695%_
                                             _%__splice2718527186%_
                                             _%$%target2552825698%_
                                             _%$%tl2553025701%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g2547625563%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2547625563%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2547625563%_)))))
                     (_%__match2723927240%_
                      (lambda (_%$%e2550125772%_
                               _%$%hd2550225776%_
                               _%$%tl2550325779%_
                               _%$%e2550425782%_
                               _%$%hd2550525786%_
                               _%$%tl2550625789%_
                               _%__splice2718127182%_
                               _%$%target2550725792%_
                               _%$%tl2550925795%_)
                        (letrec ((_%$%loop2551025798%_
                                  (lambda (_%$%hd2550825802%_
                                           _%$%arg2551425805%_)
                                    (if (gx#stx-pair? _%$%hd2550825802%_)
                                        (let ((_%$%e2551125807%_
                                               (gx#syntax-e
                                                _%$%hd2550825802%_)))
                                          (let ((_%$%lp-tl2551325814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2551125807%_)))
                                                (_%$%lp-hd2551225811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2551125807%_))))
                                            (_%$%loop2551025798%_
                                             _%$%lp-tl2551325814%_
                                             (cons _%$%lp-hd2551225811%_
                                                   _%$%arg2551425805%_))))
                                        (let ((_%$%arg2551525817%_
                                               (reverse _%$%arg2551425805%_)))
                                          (let ((_%$%g2549925820%_
                                                 _%$%arg2551525817%_)
                                                (_%$%g2550025822%_
                                                 _%$%hd2550525786%_))
                                            (if (_%dotted-identifier?25469%_
                                                 _%$%g2550025822%_)
                                                (_%__kont2717927180%_
                                                 _%$%g2549925820%_
                                                 _%$%g2550025822%_)
                                                (_%__match2725127252%_
                                                 _%$%e2550125772%_
                                                 _%$%hd2550225776%_
                                                 _%$%tl2550325779%_
                                                 _%$%e2550425782%_
                                                 _%$%hd2550525786%_
                                                 _%$%tl2550625789%_))))))))
                          (_%$%loop2551025798%_ _%$%target2550725792%_ '()))))
                     (_%__match2723727238%_
                      (lambda (_%$%e2550125772%_
                               _%$%hd2550225776%_
                               _%$%tl2550325779%_
                               _%$%e2550425782%_
                               _%$%hd2550525786%_
                               _%$%tl2550625789%_
                               _%__splice2718127182%_
                               _%$%target2550725792%_
                               _%$%tl2550925795%_)
                        (if (gx#stx-null? _%$%tl2550925795%_)
                            (_%__match2723927240%_
                             _%$%e2550125772%_
                             _%$%hd2550225776%_
                             _%$%tl2550325779%_
                             _%$%e2550425782%_
                             _%$%hd2550525786%_
                             _%$%tl2550625789%_
                             _%__splice2718127182%_
                             _%$%target2550725792%_
                             _%$%tl2550925795%_)
                            (if (gx#stx-pair? _%$%tl2550625789%_)
                                (let ((_%$%e2552525688%_
                                       (gx#syntax-e _%$%tl2550625789%_)))
                                  (let ((_%$%tl2552725695%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2552525688%_)))
                                        (_%$%hd2552625692%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2552525688%_))))
                                    (if (gx#stx-pair/null? _%$%tl2552725695%_)
                                        (let ((_%__splice2718527186%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl2552725695%_
                                                '0)))
                                          (let ((_%$%tl2553025701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2718527186%_
                                                    '1)))
                                                (_%$%target2552825698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2718527186%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl2553025701%_)
                                                (_%__match2726527266%_
                                                 _%$%e2550125772%_
                                                 _%$%hd2550225776%_
                                                 _%$%tl2550325779%_
                                                 _%$%e2550425782%_
                                                 _%$%hd2550525786%_
                                                 _%$%tl2550625789%_
                                                 _%$%e2552525688%_
                                                 _%$%hd2552625692%_
                                                 _%$%tl2552725695%_
                                                 _%__splice2718527186%_
                                                 _%$%target2552825698%_
                                                 _%$%tl2553025701%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g2547625563%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g2547625563%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g2547625563%_))))))
                     (_%__match2721927220%_
                      (lambda (_%$%e2548125918%_
                               _%$%hd2548225922%_
                               _%$%tl2548325925%_
                               _%$%e2548425928%_
                               _%$%hd2548525932%_
                               _%$%tl2548625935%_
                               _%__splice2717727178%_
                               _%$%target2548725938%_
                               _%$%tl2548925941%_
                               _%$%e2549625944%_
                               _%$%hd2549725948%_
                               _%$%tl2549825951%_)
                        (letrec ((_%$%loop2549025954%_
                                  (lambda (_%$%hd2548825958%_
                                           _%$%arg2549425961%_)
                                    (if (gx#stx-pair? _%$%hd2548825958%_)
                                        (let ((_%$%e2549125963%_
                                               (gx#syntax-e
                                                _%$%hd2548825958%_)))
                                          (let ((_%$%lp-tl2549325970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2549125963%_)))
                                                (_%$%lp-hd2549225967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2549125963%_))))
                                            (_%$%loop2549025954%_
                                             _%$%lp-tl2549325970%_
                                             (cons _%$%lp-hd2549225967%_
                                                   _%$%arg2549425961%_))))
                                        (let ((_%$%arg2549525973%_
                                               (reverse _%$%arg2549425961%_)))
                                          (let ((_%$%g2547825976%_
                                                 _%$%hd2549725948%_)
                                                (_%$%g2547925978%_
                                                 _%$%arg2549525973%_)
                                                (_%$%g2548025979%_
                                                 _%$%hd2548525932%_))
                                            (if (and (_%dotted-identifier?25469%_
                                                      _%$%g2548025979%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%$%g2599826001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g2599926004%_)
                       (cons _%$%g2599826001%_ _%$%g2599926004%_))
                     '()
                     _%$%g2547925978%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2717527176%_
                                                 _%$%g2547825976%_
                                                 _%$%g2547925978%_
                                                 _%$%g2548025979%_)
                                                (let ((_%__splice2718127182%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl2548625935%_
                                                        '0)))
                                                  (let ((_%$%tl2550925795%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2718127182%_
                                                            '1)))
                                                        (_%$%target2550725792%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2718127182%_
                                                            '0))))
                                                    (_%__match2723727238%_
                                                     _%$%e2548125918%_
                                                     _%$%hd2548225922%_
                                                     _%$%tl2548325925%_
                                                     _%$%e2548425928%_
                                                     _%$%hd2548525932%_
                                                     _%$%tl2548625935%_
                                                     _%__splice2718127182%_
                                                     _%$%target2550725792%_
                                                     _%$%tl2550925795%_))))))))))
                          (_%$%loop2549025954%_ _%$%target2548725938%_ '())))))
                (if (gx#stx-pair? _%__stx2717227173%_)
                    (let ((_%$%e2548125918%_
                           (gx#syntax-e _%__stx2717227173%_)))
                      (let ((_%$%tl2548325925%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2548125918%_)))
                            (_%$%hd2548225922%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2548125918%_))))
                        (if (gx#stx-pair? _%$%tl2548325925%_)
                            (let ((_%$%e2548425928%_
                                   (gx#syntax-e _%$%tl2548325925%_)))
                              (let ((_%$%tl2548625935%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2548425928%_)))
                                    (_%$%hd2548525932%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2548425928%_))))
                                (if (gx#stx-pair/null? _%$%tl2548625935%_)
                                    (if (let ((__tmp27710
                                               (gx#stx-length
                                                _%$%tl2548625935%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27710 '1))
                                        (let ((_%__splice2717727178%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl2548625935%_
                                                '1)))
                                          (let ((_%$%tl2548925941%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2717727178%_
                                                    '1)))
                                                (_%$%target2548725938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2717727178%_
                                                    '0))))
                                            (if (gx#stx-pair?
                                                 _%$%tl2548925941%_)
                                                (let ((_%$%e2549625944%_
                                                       (gx#syntax-e
                                                        _%$%tl2548925941%_)))
                                                  (let ((_%$%tl2549825951%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e2549625944%_)))
                                                        (_%$%hd2549725948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e2549625944%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2549825951%_)
                                                        (_%__match2721927220%_
                                                         _%$%e2548125918%_
                                                         _%$%hd2548225922%_
                                                         _%$%tl2548325925%_
                                                         _%$%e2548425928%_
                                                         _%$%hd2548525932%_
                                                         _%$%tl2548625935%_
                                                         _%__splice2717727178%_
                                                         _%$%target2548725938%_
                                                         _%$%tl2548925941%_
                                                         _%$%e2549625944%_
                                                         _%$%hd2549725948%_
                                                         _%$%tl2549825951%_)
                                                        (let ((_%__splice2718127182%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl2548625935%_
                                                                '0)))
                                                          (let ((_%$%tl2550925795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2718127182%_ '1)))
                        (_%$%target2550725792%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2718127182%_ '0))))
                    (if (gx#stx-null? _%$%tl2550925795%_)
                        (_%__match2723927240%_
                         _%$%e2548125918%_
                         _%$%hd2548225922%_
                         _%$%tl2548325925%_
                         _%$%e2548425928%_
                         _%$%hd2548525932%_
                         _%$%tl2548625935%_
                         _%__splice2718127182%_
                         _%$%target2550725792%_
                         _%$%tl2550925795%_)
                        (if (gx#stx-pair? _%$%tl2548625935%_)
                            (let ((_%$%e2552525688%_
                                   (gx#syntax-e _%$%tl2548625935%_)))
                              (let ((_%$%tl2552725695%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2552525688%_)))
                                    (_%$%hd2552625692%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2552525688%_))))
                                (if (gx#stx-pair/null? _%$%tl2552725695%_)
                                    (let ((_%__splice2718527186%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl2552725695%_
                                            '0)))
                                      (let ((_%$%tl2553025701%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2718527186%_
                                                '1)))
                                            (_%$%target2552825698%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2718527186%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl2553025701%_)
                                            (_%__match2726527266%_
                                             _%$%e2548125918%_
                                             _%$%hd2548225922%_
                                             _%$%tl2548325925%_
                                             _%$%e2548425928%_
                                             _%$%hd2548525932%_
                                             _%$%tl2548625935%_
                                             _%$%e2552525688%_
                                             _%$%hd2552625692%_
                                             _%$%tl2552725695%_
                                             _%__splice2718527186%_
                                             _%$%target2552825698%_
                                             _%$%tl2553025701%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g2547625563%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2547625563%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2547625563%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2718127182%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl2548625935%_
                                                        '0)))
                                                  (let ((_%$%tl2550925795%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2718127182%_
                                                            '1)))
                                                        (_%$%target2550725792%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2718127182%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2550925795%_)
                                                        (_%__match2723927240%_
                                                         _%$%e2548125918%_
                                                         _%$%hd2548225922%_
                                                         _%$%tl2548325925%_
                                                         _%$%e2548425928%_
                                                         _%$%hd2548525932%_
                                                         _%$%tl2548625935%_
                                                         _%__splice2718127182%_
                                                         _%$%target2550725792%_
                                                         _%$%tl2550925795%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl2548625935%_)
                                                            (let ((_%$%e2552525688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl2548625935%_)))
                      (let ((_%$%tl2552725695%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2552525688%_)))
                            (_%$%hd2552625692%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2552525688%_))))
                        (if (gx#stx-pair/null? _%$%tl2552725695%_)
                            (let ((_%__splice2718527186%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl2552725695%_
                                    '0)))
                              (let ((_%$%tl2553025701%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2718527186%_
                                        '1)))
                                    (_%$%target2552825698%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2718527186%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl2553025701%_)
                                    (_%__match2726527266%_
                                     _%$%e2548125918%_
                                     _%$%hd2548225922%_
                                     _%$%tl2548325925%_
                                     _%$%e2548425928%_
                                     _%$%hd2548525932%_
                                     _%$%tl2548625935%_
                                     _%$%e2552525688%_
                                     _%$%hd2552625692%_
                                     _%$%tl2552725695%_
                                     _%__splice2718527186%_
                                     _%$%target2552825698%_
                                     _%$%tl2553025701%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2547625563%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2547625563%_)))))
                    (let () (declare (not safe)) (_%$%g2547625563%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2718127182%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl2548625935%_
                                                '0)))
                                          (let ((_%$%tl2550925795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2718127182%_
                                                    '1)))
                                                (_%$%target2550725792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2718127182%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl2550925795%_)
                                                (_%__match2723927240%_
                                                 _%$%e2548125918%_
                                                 _%$%hd2548225922%_
                                                 _%$%tl2548325925%_
                                                 _%$%e2548425928%_
                                                 _%$%hd2548525932%_
                                                 _%$%tl2548625935%_
                                                 _%__splice2718127182%_
                                                 _%$%target2550725792%_
                                                 _%$%tl2550925795%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl2548625935%_)
                                                    (let ((_%$%e2552525688%_
                                                           (gx#syntax-e
                                                            _%$%tl2548625935%_)))
                                                      (let ((_%$%tl2552725695%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e2552525688%_)))
                    (_%$%hd2552625692%_
                     (let () (declare (not safe)) (##car _%$%e2552525688%_))))
                (if (gx#stx-pair/null? _%$%tl2552725695%_)
                    (let ((_%__splice2718527186%_
                           (gx#syntax-split-splice->vector
                            _%$%tl2552725695%_
                            '0)))
                      (let ((_%$%tl2553025701%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2718527186%_ '1)))
                            (_%$%target2552825698%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2718527186%_ '0))))
                        (if (gx#stx-null? _%$%tl2553025701%_)
                            (_%__match2726527266%_
                             _%$%e2548125918%_
                             _%$%hd2548225922%_
                             _%$%tl2548325925%_
                             _%$%e2548425928%_
                             _%$%hd2548525932%_
                             _%$%tl2548625935%_
                             _%$%e2552525688%_
                             _%$%hd2552625692%_
                             _%$%tl2552725695%_
                             _%__splice2718527186%_
                             _%$%target2552825698%_
                             _%$%tl2553025701%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g2547625563%_)))))
                    (let () (declare (not safe)) (_%$%g2547625563%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g2547625563%_)))))))
                                    (if (gx#stx-pair? _%$%tl2548625935%_)
                                        (let ((_%$%e2552525688%_
                                               (gx#syntax-e
                                                _%$%tl2548625935%_)))
                                          (let ((_%$%tl2552725695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2552525688%_)))
                                                (_%$%hd2552625692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2552525688%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl2552725695%_)
                                                (let ((_%__splice2718527186%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl2552725695%_
                                                        '0)))
                                                  (let ((_%$%tl2553025701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2718527186%_
                                                            '1)))
                                                        (_%$%target2552825698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2718527186%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2553025701%_)
                                                        (_%__match2726527266%_
                                                         _%$%e2548125918%_
                                                         _%$%hd2548225922%_
                                                         _%$%tl2548325925%_
                                                         _%$%e2548425928%_
                                                         _%$%hd2548525932%_
                                                         _%$%tl2548625935%_
                                                         _%$%e2552525688%_
                                                         _%$%hd2552625692%_
                                                         _%$%tl2552725695%_
                                                         _%__splice2718527186%_
                                                         _%$%target2552825698%_
                                                         _%$%tl2553025701%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g2547625563%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g2547625563%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g2547625563%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2547625563%_)))))
                    (let () (declare (not safe)) (_%$%g2547625563%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26107%_)
        (let* ((_%__stx2729427295%_ _%$stx26107%_)
               (_%$%g2611226152%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2729427295%_))))
          (let ((_%__kont2729727298%_
                 (lambda (_%$%g2611426288%_ _%$%g2611526290%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%$%g2611526290%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g2611426288%_ '()))
                                     '())))))
                (_%__kont2729927300%_
                 (lambda (_%$%g2612526217%_
                          _%$%g2612626219%_
                          _%$%g2612726220%_
                          _%$%g2612826221%_)
                   (cons _%$%g2612826221%_
                         (cons (cons _%$%g2612826221%_
                                     (cons _%$%g2612726220%_
                                           (cons _%$%g2612626219%_ '())))
                               (foldr (lambda (_%$%g2624226245%_
                                               _%$%g2624326248%_)
                                        (cons _%$%g2624226245%_
                                              _%$%g2624326248%_))
                                      '()
                                      _%$%g2612526217%_))))))
            (let* ((_%__match2734927350%_
                    (lambda (_%$%e2612926159%_
                             _%$%hd2613026163%_
                             _%$%tl2613126166%_
                             _%$%e2613226169%_
                             _%$%hd2613326173%_
                             _%$%tl2613426176%_
                             _%$%e2613526179%_
                             _%$%hd2613626183%_
                             _%$%tl2613726186%_
                             _%__splice2730127302%_
                             _%$%target2613826189%_
                             _%$%tl2614026192%_)
                      (letrec ((_%$%loop2614126195%_
                                (lambda (_%$%hd2613926199%_
                                         _%$%rest2614526202%_)
                                  (if (gx#stx-pair? _%$%hd2613926199%_)
                                      (let ((_%$%e2614226204%_
                                             (gx#syntax-e _%$%hd2613926199%_)))
                                        (let ((_%$%lp-tl2614426211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2614226204%_)))
                                              (_%$%lp-hd2614326208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2614226204%_))))
                                          (_%$%loop2614126195%_
                                           _%$%lp-tl2614426211%_
                                           (cons _%$%lp-hd2614326208%_
                                                 _%$%rest2614526202%_))))
                                      (let ((_%$%rest2614626214%_
                                             (reverse _%$%rest2614526202%_)))
                                        (_%__kont2729927300%_
                                         _%$%rest2614626214%_
                                         _%$%hd2613626183%_
                                         _%$%hd2613326173%_
                                         _%$%hd2613026163%_))))))
                        (_%$%loop2614126195%_ _%$%target2613826189%_ '()))))
                   (_%__match2732327324%_
                    (lambda (_%$%e2611626258%_
                             _%$%hd2611726262%_
                             _%$%tl2611826265%_
                             _%$%e2611926268%_
                             _%$%hd2612026272%_
                             _%$%tl2612126275%_
                             _%$%e2612226278%_
                             _%$%hd2612326282%_
                             _%$%tl2612426285%_)
                      (let ((_%$%g2611426288%_ _%$%hd2612326282%_)
                            (_%$%g2611526290%_ _%$%hd2612026272%_))
                        (if (gx#identifier? _%$%g2611426288%_)
                            (_%__kont2729727298%_
                             _%$%g2611426288%_
                             _%$%g2611526290%_)
                            (if (gx#stx-pair/null? _%$%tl2612426285%_)
                                (let ((_%__splice2730127302%_
                                       (gx#syntax-split-splice->vector
                                        _%$%tl2612426285%_
                                        '0)))
                                  (let ((_%$%tl2614026192%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2730127302%_
                                            '1)))
                                        (_%$%target2613826189%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2730127302%_
                                            '0))))
                                    (if (gx#stx-null? _%$%tl2614026192%_)
                                        (_%__match2734927350%_
                                         _%$%e2611626258%_
                                         _%$%hd2611726262%_
                                         _%$%tl2611826265%_
                                         _%$%e2611926268%_
                                         _%$%hd2612026272%_
                                         _%$%tl2612126275%_
                                         _%$%e2612226278%_
                                         _%$%hd2612326282%_
                                         _%$%tl2612426285%_
                                         _%__splice2730127302%_
                                         _%$%target2613826189%_
                                         _%$%tl2614026192%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g2611226152%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g2611226152%_))))))))
              (if (gx#stx-pair? _%__stx2729427295%_)
                  (let ((_%$%e2611626258%_ (gx#syntax-e _%__stx2729427295%_)))
                    (let ((_%$%tl2611826265%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e2611626258%_)))
                          (_%$%hd2611726262%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e2611626258%_))))
                      (if (gx#stx-pair? _%$%tl2611826265%_)
                          (let ((_%$%e2611926268%_
                                 (gx#syntax-e _%$%tl2611826265%_)))
                            (let ((_%$%tl2612126275%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2611926268%_)))
                                  (_%$%hd2612026272%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2611926268%_))))
                              (if (gx#stx-pair? _%$%tl2612126275%_)
                                  (let ((_%$%e2612226278%_
                                         (gx#syntax-e _%$%tl2612126275%_)))
                                    (let ((_%$%tl2612426285%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2612226278%_)))
                                          (_%$%hd2612326282%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2612226278%_))))
                                      (if (gx#stx-null? _%$%tl2612426285%_)
                                          (_%__match2732327324%_
                                           _%$%e2611626258%_
                                           _%$%hd2611726262%_
                                           _%$%tl2611826265%_
                                           _%$%e2611926268%_
                                           _%$%hd2612026272%_
                                           _%$%tl2612126275%_
                                           _%$%e2612226278%_
                                           _%$%hd2612326282%_
                                           _%$%tl2612426285%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl2612426285%_)
                                              (let ((_%__splice2730127302%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl2612426285%_
                                                      '0)))
                                                (let ((_%$%tl2614026192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2730127302%_
                                                          '1)))
                                                      (_%$%target2613826189%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2730127302%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2614026192%_)
                                                      (_%__match2734927350%_
                                                       _%$%e2611626258%_
                                                       _%$%hd2611726262%_
                                                       _%$%tl2611826265%_
                                                       _%$%e2611926268%_
                                                       _%$%hd2612026272%_
                                                       _%$%tl2612126275%_
                                                       _%$%e2612226278%_
                                                       _%$%hd2612326282%_
                                                       _%$%tl2612426285%_
                                                       _%__splice2730127302%_
                                                       _%$%target2613826189%_
                                                       _%$%tl2614026192%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g2611226152%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g2611226152%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g2611226152%_)))))
                          (let () (declare (not safe)) (_%$%g2611226152%_)))))
                  (let () (declare (not safe)) (_%$%g2611226152%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26310%_)
        (let* ((_%__stx2735227353%_ _%$stx26310%_)
               (_%$%g2631526367%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2735227353%_))))
          (let ((_%__kont2735527356%_
                 (lambda (_%$%g2631726541%_
                          _%$%g2631826543%_
                          _%$%g2631926544%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%$%g2631926544%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g2631826543%_ '()))
                                     (cons _%$%g2631726541%_ '()))))))
                (_%__kont2735727358%_
                 (lambda (_%$%g2633226452%_
                          _%$%g2633326454%_
                          _%$%g2633426455%_
                          _%$%g2633526456%_
                          _%$%g2633626457%_
                          _%$%g2633726458%_)
                   (cons _%$%g2633726458%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%$%g2633626457%_
                                           (cons _%$%g2633526456%_
                                                 (foldr (lambda (_%$%g2648526488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g2648626491%_)
                  (cons _%$%g2648526488%_ _%$%g2648626491%_))
                '()
                _%$%g2633426455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g2633326454%_
                                     (cons _%$%g2633226452%_ '())))))))
            (let* ((_%__match2742727428%_
                    (lambda (_%$%e2633826374%_
                             _%$%hd2633926378%_
                             _%$%tl2634026381%_
                             _%$%e2634126384%_
                             _%$%hd2634226388%_
                             _%$%tl2634326391%_
                             _%$%e2634426394%_
                             _%$%hd2634526398%_
                             _%$%tl2634626401%_
                             _%__splice2735927360%_
                             _%$%target2634726404%_
                             _%$%tl2634926407%_
                             _%$%e2635626410%_
                             _%$%hd2635726414%_
                             _%$%tl2635826417%_
                             _%$%e2635926420%_
                             _%$%hd2636026424%_
                             _%$%tl2636126427%_)
                      (letrec ((_%$%loop2635026430%_
                                (lambda (_%$%hd2634826434%_
                                         _%$%path2635426437%_)
                                  (if (gx#stx-pair? _%$%hd2634826434%_)
                                      (let ((_%$%e2635126439%_
                                             (gx#syntax-e _%$%hd2634826434%_)))
                                        (let ((_%$%lp-tl2635326446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2635126439%_)))
                                              (_%$%lp-hd2635226443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2635126439%_))))
                                          (_%$%loop2635026430%_
                                           _%$%lp-tl2635326446%_
                                           (cons _%$%lp-hd2635226443%_
                                                 _%$%path2635426437%_))))
                                      (let ((_%$%path2635526449%_
                                             (reverse _%$%path2635426437%_)))
                                        (_%__kont2735727358%_
                                         _%$%hd2636026424%_
                                         _%$%hd2635726414%_
                                         _%$%path2635526449%_
                                         _%$%hd2634526398%_
                                         _%$%hd2634226388%_
                                         _%$%hd2633926378%_))))))
                        (_%$%loop2635026430%_ _%$%target2634726404%_ '()))))
                   (_%__match2738727388%_
                    (lambda (_%$%e2632026501%_
                             _%$%hd2632126505%_
                             _%$%tl2632226508%_
                             _%$%e2632326511%_
                             _%$%hd2632426515%_
                             _%$%tl2632526518%_
                             _%$%e2632626521%_
                             _%$%hd2632726525%_
                             _%$%tl2632826528%_
                             _%$%e2632926531%_
                             _%$%hd2633026535%_
                             _%$%tl2633126538%_)
                      (let ((_%$%g2631726541%_ _%$%hd2633026535%_)
                            (_%$%g2631826543%_ _%$%hd2632726525%_)
                            (_%$%g2631926544%_ _%$%hd2632426515%_))
                        (if (gx#identifier? _%$%g2631826543%_)
                            (_%__kont2735527356%_
                             _%$%g2631726541%_
                             _%$%g2631826543%_
                             _%$%g2631926544%_)
                            (if (gx#stx-pair/null? _%$%tl2632826528%_)
                                (if (let ((__tmp27711
                                           (gx#stx-length _%$%tl2632826528%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27711 '2))
                                    (let ((_%__splice2735927360%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl2632826528%_
                                            '2)))
                                      (let ((_%$%tl2634926407%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2735927360%_
                                                '1)))
                                            (_%$%target2634726404%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2735927360%_
                                                '0))))
                                        (if (gx#stx-pair? _%$%tl2634926407%_)
                                            (let ((_%$%e2635626410%_
                                                   (gx#syntax-e
                                                    _%$%tl2634926407%_)))
                                              (let ((_%$%tl2635826417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2635626410%_)))
                                                    (_%$%hd2635726414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2635626410%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl2635826417%_)
                                                    (let ((_%$%e2635926420%_
                                                           (gx#syntax-e
                                                            _%$%tl2635826417%_)))
                                                      (let ((_%$%tl2636126427%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e2635926420%_)))
                    (_%$%hd2636026424%_
                     (let () (declare (not safe)) (##car _%$%e2635926420%_))))
                (if (gx#stx-null? _%$%tl2636126427%_)
                    (_%__match2742727428%_
                     _%$%e2632026501%_
                     _%$%hd2632126505%_
                     _%$%tl2632226508%_
                     _%$%e2632326511%_
                     _%$%hd2632426515%_
                     _%$%tl2632526518%_
                     _%$%e2632626521%_
                     _%$%hd2632726525%_
                     _%$%tl2632826528%_
                     _%__splice2735927360%_
                     _%$%target2634726404%_
                     _%$%tl2634926407%_
                     _%$%e2635626410%_
                     _%$%hd2635726414%_
                     _%$%tl2635826417%_
                     _%$%e2635926420%_
                     _%$%hd2636026424%_
                     _%$%tl2636126427%_)
                    (let () (declare (not safe)) (_%$%g2631526367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g2631526367%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g2631526367%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2631526367%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g2631526367%_))))))))
              (if (gx#stx-pair? _%__stx2735227353%_)
                  (let ((_%$%e2632026501%_ (gx#syntax-e _%__stx2735227353%_)))
                    (let ((_%$%tl2632226508%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e2632026501%_)))
                          (_%$%hd2632126505%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e2632026501%_))))
                      (if (gx#stx-pair? _%$%tl2632226508%_)
                          (let ((_%$%e2632326511%_
                                 (gx#syntax-e _%$%tl2632226508%_)))
                            (let ((_%$%tl2632526518%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2632326511%_)))
                                  (_%$%hd2632426515%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2632326511%_))))
                              (if (gx#stx-pair? _%$%tl2632526518%_)
                                  (let ((_%$%e2632626521%_
                                         (gx#syntax-e _%$%tl2632526518%_)))
                                    (let ((_%$%tl2632826528%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2632626521%_)))
                                          (_%$%hd2632726525%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2632626521%_))))
                                      (if (gx#stx-pair? _%$%tl2632826528%_)
                                          (let ((_%$%e2632926531%_
                                                 (gx#syntax-e
                                                  _%$%tl2632826528%_)))
                                            (let ((_%$%tl2633126538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e2632926531%_)))
                                                  (_%$%hd2633026535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e2632926531%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl2633126538%_)
                                                  (_%__match2738727388%_
                                                   _%$%e2632026501%_
                                                   _%$%hd2632126505%_
                                                   _%$%tl2632226508%_
                                                   _%$%e2632326511%_
                                                   _%$%hd2632426515%_
                                                   _%$%tl2632526518%_
                                                   _%$%e2632626521%_
                                                   _%$%hd2632726525%_
                                                   _%$%tl2632826528%_
                                                   _%$%e2632926531%_
                                                   _%$%hd2633026535%_
                                                   _%$%tl2633126538%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl2632826528%_)
                                                      (if (let ((__tmp27712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%$%tl2632826528%_)))
                    (declare (not safe))
                    (##fx>= __tmp27712 '2))
                  (let ((_%__splice2735927360%_
                         (gx#syntax-split-splice->vector
                          _%$%tl2632826528%_
                          '2)))
                    (let ((_%$%tl2634926407%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2735927360%_ '1)))
                          (_%$%target2634726404%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2735927360%_ '0))))
                      (if (gx#stx-pair? _%$%tl2634926407%_)
                          (let ((_%$%e2635626410%_
                                 (gx#syntax-e _%$%tl2634926407%_)))
                            (let ((_%$%tl2635826417%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2635626410%_)))
                                  (_%$%hd2635726414%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2635626410%_))))
                              (if (gx#stx-pair? _%$%tl2635826417%_)
                                  (let ((_%$%e2635926420%_
                                         (gx#syntax-e _%$%tl2635826417%_)))
                                    (let ((_%$%tl2636126427%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2635926420%_)))
                                          (_%$%hd2636026424%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2635926420%_))))
                                      (if (gx#stx-null? _%$%tl2636126427%_)
                                          (_%__match2742727428%_
                                           _%$%e2632026501%_
                                           _%$%hd2632126505%_
                                           _%$%tl2632226508%_
                                           _%$%e2632326511%_
                                           _%$%hd2632426515%_
                                           _%$%tl2632526518%_
                                           _%$%e2632626521%_
                                           _%$%hd2632726525%_
                                           _%$%tl2632826528%_
                                           _%__splice2735927360%_
                                           _%$%target2634726404%_
                                           _%$%tl2634926407%_
                                           _%$%e2635626410%_
                                           _%$%hd2635726414%_
                                           _%$%tl2635826417%_
                                           _%$%e2635926420%_
                                           _%$%hd2636026424%_
                                           _%$%tl2636126427%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g2631526367%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g2631526367%_)))))
                          (let () (declare (not safe)) (_%$%g2631526367%_)))))
                  (let () (declare (not safe)) (_%$%g2631526367%_)))
              (let () (declare (not safe)) (_%$%g2631526367%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl2632826528%_)
                                              (if (let ((__tmp27713
                                                         (gx#stx-length
                                                          _%$%tl2632826528%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27713 '2))
                                                  (let ((_%__splice2735927360%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl2632826528%_
                                                          '2)))
                                                    (let ((_%$%tl2634926407%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2735927360%_
                                                              '1)))
                                                          (_%$%target2634726404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2735927360%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl2634926407%_)
                                                          (let ((_%$%e2635626410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl2634926407%_)))
                    (let ((_%$%tl2635826417%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e2635626410%_)))
                          (_%$%hd2635726414%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e2635626410%_))))
                      (if (gx#stx-pair? _%$%tl2635826417%_)
                          (let ((_%$%e2635926420%_
                                 (gx#syntax-e _%$%tl2635826417%_)))
                            (let ((_%$%tl2636126427%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2635926420%_)))
                                  (_%$%hd2636026424%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2635926420%_))))
                              (if (gx#stx-null? _%$%tl2636126427%_)
                                  (_%__match2742727428%_
                                   _%$%e2632026501%_
                                   _%$%hd2632126505%_
                                   _%$%tl2632226508%_
                                   _%$%e2632326511%_
                                   _%$%hd2632426515%_
                                   _%$%tl2632526518%_
                                   _%$%e2632626521%_
                                   _%$%hd2632726525%_
                                   _%$%tl2632826528%_
                                   _%__splice2735927360%_
                                   _%$%target2634726404%_
                                   _%$%tl2634926407%_
                                   _%$%e2635626410%_
                                   _%$%hd2635726414%_
                                   _%$%tl2635826417%_
                                   _%$%e2635926420%_
                                   _%$%hd2636026424%_
                                   _%$%tl2636126427%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g2631526367%_)))))
                          (let () (declare (not safe)) (_%$%g2631526367%_)))))
                  (let () (declare (not safe)) (_%$%g2631526367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g2631526367%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g2631526367%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g2631526367%_)))))
                          (let () (declare (not safe)) (_%$%g2631526367%_)))))
                  (let () (declare (not safe)) (_%$%g2631526367%_))))))))))
