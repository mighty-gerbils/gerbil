(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27711_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24860%_)
        (letrec ((_%body-opt?24863%_
                  (lambda (_%key24866%_)
                    (let ((__tmp27683 (gx#stx-e _%key24866%_)))
                      (declare (not safe))
                      (##memq __tmp27683
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
          (gx#stx-plist? _%stx24860%_ _%body-opt?24863%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22636%_
               _%id22638%_
               _%super-ref22639%_
               _%slots22640%_
               _%body22641%_)
        (letrec ((_%wrap22643%_
                  (lambda (_%e-stx24857%_)
                    (gx#stx-wrap-source
                     _%e-stx24857%_
                     (gx#stx-source _%stx22636%_))))
                 (_%make-id22645%_
                  (lambda _%args24854%_
                    (apply gx#stx-identifier _%id22638%_ _%args24854%_)))
                 (_%get-mixin-slots22646%_
                  (lambda (_%super24824%_ _%slots24826%_)
                    (letrec* ((_%tab24828%_ (make-hash-table-eq))
                              (_%dedup24830%_
                               (lambda (_%mixins24841%_)
                                 (let _%lp24844%_ ((_%rest24847%_
                                                    _%mixins24841%_)
                                                   (_%r24849%_ '()))
                                   (if (pair? _%rest24847%_)
                                       (let ((_%slot24851%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24847%_))))
                                         (if (hash-get
                                              _%tab24828%_
                                              _%slot24851%_)
                                             (_%lp24844%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24847%_))
                                              _%r24849%_)
                                             (begin
                                               (hash-put!
                                                _%tab24828%_
                                                _%slot24851%_
                                                '#t)
                                               (_%lp24844%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24847%_))
                                                (cons _%slot24851%_
                                                      _%r24849%_)))))
                                       (reverse _%r24849%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24832%_)
                         (hash-put! _%tab24828%_ (gx#stx-e _%slot24832%_) '#t))
                       _%slots24826%_)
                      (if (not _%super24824%_)
                          '()
                          (if (gx#identifier? _%super24824%_)
                              (_%dedup24830%_
                               (_%get-mixin-slots-r22647%_ _%super24824%_))
                              (_%dedup24830%_
                               (concatenate
                                (map _%get-mixin-slots-r22647%_
                                     _%super24824%_))))))))
                 (_%get-mixin-slots-r22647%_
                  (lambda (_%type-id24818%_)
                    (let ((_%info24821%_
                           (gx#syntax-local-value _%type-id24818%_)))
                      (let ((__tmp27685
                             (let ((__obj27436 _%info24821%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27436
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27436
                                      '6
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27436
                                    'slots))))
                            (__tmp27684
                             (concatenate
                              (map _%get-mixin-slots-r22647%_
                                   (let ((__obj27437 _%info24821%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27437
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27437
                                            '5
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27437
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27685 __tmp27684))))))
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
                 (_%$%g2265724814%_
                  (lambda (_%$%g2265922670%_)
                    (let* ((_%$%g2268922697%_
                            (lambda (_%$%g2269022693%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2269022693%_)))
                           (_%$%g2268824810%_
                            (lambda (_%$%g2269022701%_)
                              (let* ((_%$%g2271722725%_
                                      (lambda (_%$%g2271822721%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2271822721%_)))
                                     (_%$%g2271624806%_
                                      (lambda (_%$%g2271822729%_)
                                        (let* ((_%$%g2274522753%_
                                                (lambda (_%$%g2274622749%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2274622749%_)))
                                               (_%$%g2274424802%_
                                                (lambda (_%$%g2274622757%_)
                                                  (let* ((_%$%g2277322781%_
                                                          (lambda (_%$%g2277422777%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2277422777%_)))
                                                         (_%$%g2277224798%_
                                                          (lambda (_%$%g2277422785%_)
                                                            (let* ((_%$%g2280122818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2280222814%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2280222814%_)))
                           (_%$%g2280024794%_
                            (lambda (_%$%g2280222822%_)
                              (if (gx#stx-pair/null? _%$%g2280222822%_)
                                  (let ((_g27686_
                                         (gx#syntax-split-splice
                                          _%$%g2280222822%_
                                          '0)))
                                    (begin
                                      (let ((_g27687_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27686_)
                                                   (##values-length _g27686_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27687_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27687_)))
                                      (let ((_%$%target2280422825%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27686_ 0)))
                                            (_%$%tl2280622828%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27686_ 1))))
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
                           (_%$%g2286924785%_
                            (lambda (_%$%g2287122891%_)
                              (if (gx#stx-pair/null? _%$%g2287122891%_)
                                  (let ((_g27688_
                                         (gx#syntax-split-splice
                                          _%$%g2287122891%_
                                          '0)))
                                    (begin
                                      (let ((_g27689_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27688_)
                                                   (##values-length _g27688_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27689_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27689_)))
                                      (let ((_%$%target2287322894%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27688_ 0)))
                                            (_%$%tl2287522897%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27688_ 1))))
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
                           (_%$%g2293824776%_
                            (lambda (_%$%g2294022960%_)
                              (if (gx#stx-pair/null? _%$%g2294022960%_)
                                  (let ((_g27690_
                                         (gx#syntax-split-splice
                                          _%$%g2294022960%_
                                          '0)))
                                    (begin
                                      (let ((_g27691_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27690_)
                                                   (##values-length _g27690_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27691_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27691_)))
                                      (let ((_%$%target2294222963%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27690_ 0)))
                                            (_%$%tl2294422966%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27690_ 1))))
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
                           (_%$%g2301024772%_
                            (lambda (_%$%g2301223032%_)
                              (if (gx#stx-pair/null? _%$%g2301223032%_)
                                  (let ((_g27692_
                                         (gx#syntax-split-splice
                                          _%$%g2301223032%_
                                          '0)))
                                    (begin
                                      (let ((_g27693_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27692_)
                                                   (##values-length _g27692_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27693_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27693_)))
                                      (let ((_%$%target2301423035%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27692_ 0)))
                                            (_%$%tl2301623038%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27692_ 1))))
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
                           (_%$%g2308024763%_
                            (lambda (_%$%g2308223102%_)
                              (if (gx#stx-pair/null? _%$%g2308223102%_)
                                  (let ((_g27694_
                                         (gx#syntax-split-splice
                                          _%$%g2308223102%_
                                          '0)))
                                    (begin
                                      (let ((_g27695_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27694_)
                                                   (##values-length _g27694_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27695_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27695_)))
                                      (let ((_%$%target2308423105%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27694_ 0)))
                                            (_%$%tl2308623108%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27694_ 1))))
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
                           (_%$%g2314924754%_
                            (lambda (_%$%g2315123171%_)
                              (if (gx#stx-pair/null? _%$%g2315123171%_)
                                  (let ((_g27696_
                                         (gx#syntax-split-splice
                                          _%$%g2315123171%_
                                          '0)))
                                    (begin
                                      (let ((_g27697_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27696_)
                                                   (##values-length _g27696_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27697_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27697_)))
                                      (let ((_%$%target2315323174%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27696_ 0)))
                                            (_%$%tl2315523177%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27696_ 1))))
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
                           (_%$%g2321824737%_
                            (lambda (_%$%g2322023240%_)
                              (if (gx#stx-pair/null? _%$%g2322023240%_)
                                  (let ((_g27698_
                                         (gx#syntax-split-splice
                                          _%$%g2322023240%_
                                          '0)))
                                    (begin
                                      (let ((_g27699_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27698_)
                                                   (##values-length _g27698_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27699_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27699_)))
                                      (let ((_%$%target2322223243%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27698_ 0)))
                                            (_%$%tl2322423246%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27698_ 1))))
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
                           (_%$%g2328724720%_
                            (lambda (_%$%g2328923309%_)
                              (if (gx#stx-pair/null? _%$%g2328923309%_)
                                  (let ((_g27700_
                                         (gx#syntax-split-splice
                                          _%$%g2328923309%_
                                          '0)))
                                    (begin
                                      (let ((_g27701_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27700_)
                                                   (##values-length _g27700_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27701_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27701_)))
                                      (let ((_%$%target2329123312%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27700_ 0)))
                                            (_%$%tl2329323315%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27700_ 1))))
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
                           (_%$%g2335624703%_
                            (lambda (_%$%g2335823378%_)
                              (if (gx#stx-pair/null? _%$%g2335823378%_)
                                  (let ((_g27702_
                                         (gx#syntax-split-splice
                                          _%$%g2335823378%_
                                          '0)))
                                    (begin
                                      (let ((_g27703_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27702_)
                                                   (##values-length _g27702_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27703_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27703_)))
                                      (let ((_%$%target2336023381%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27702_ 0)))
                                            (_%$%tl2336223384%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27702_ 1))))
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
                           (_%$%g2342524686%_
                            (lambda (_%$%g2342723447%_)
                              (if (gx#stx-pair/null? _%$%g2342723447%_)
                                  (let ((_g27704_
                                         (gx#syntax-split-splice
                                          _%$%g2342723447%_
                                          '0)))
                                    (begin
                                      (let ((_g27705_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27704_)
                                                   (##values-length _g27704_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27705_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27705_)))
                                      (let ((_%$%target2342923450%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27704_ 0)))
                                            (_%$%tl2343123453%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27704_ 1))))
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
                           (_%properties23615%_
                            (let* ((_%properties23574%_
                                    (let ((_%$e23565%_
                                           (gx#stx-plist-assq
                                            'transparent:
                                            _%body22641%_)))
                                      (if _%$e23565%_
                                          (cons _%$e23565%_ '())
                                          '())))
                                   (_%properties23586%_
                                    (let ((_%$e23577%_
                                           (gx#stx-plist-assq
                                            'print:
                                            _%body22641%_)))
                                      (if _%$e23577%_
                                          (cons _%$e23577%_
                                                _%properties23574%_)
                                          _%properties23574%_)))
                                   (_%properties23598%_
                                    (let ((_%$e23589%_
                                           (gx#stx-plist-assq
                                            'equal:
                                            _%body22641%_)))
                                      (if _%$e23589%_
                                          (cons _%$e23589%_
                                                _%properties23586%_)
                                          _%properties23586%_)))
                                   (_%properties23610%_
                                    (let ((_%$e23601%_
                                           (gx#stx-plist-assq
                                            'acyclic:
                                            _%body22641%_)))
                                      (if _%$e23601%_
                                          (cons _%$e23601%_
                                                _%properties23598%_)
                                          _%properties23598%_))))
                              _%properties23610%_))
                           (_%type-properties23656%_
                            (if (null? _%properties23615%_)
                                '()
                                (let* ((_%$%g2361823626%_
                                        (lambda (_%$%g2361923622%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g2361923622%_)))
                                       (_%$%g2361723652%_
                                        (lambda (_%$%g2361923630%_)
                                          (cons 'properties:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%g2361923630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g2361723652%_ _%properties23615%_))))
                           (_%metaclass23668%_
                            (let ((_%$e23659%_
                                   (gx#stx-getq 'metaclass: _%body22641%_)))
                              (if _%$e23659%_
                                  (if (gx#identifier? _%$e23659%_)
                                      _%$e23659%_
                                      '#f)
                                  '#f)))
                           (_%type-metaclass23671%_
                            (if _%metaclass23668%_
                                (cons 'metaclass:
                                      (cons _%metaclass23668%_ '()))
                                '()))
                           (_%final?23674%_
                            (gx#stx-e (gx#stx-getq 'final: _%body22641%_)))
                           (_%type-struct23677%_
                            (cons 'struct: (cons _%struct?22655%_ '())))
                           (_%type-final23680%_
                            (cons 'final: (cons _%final?23674%_ '())))
                           (_%$%g2368323700%_
                            (lambda (_%$%g2368423696%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2368423696%_)))
                           (_%$%g2368224682%_
                            (lambda (_%$%g2368423704%_)
                              (if (gx#stx-pair/null? _%$%g2368423704%_)
                                  (let ((_g27706_
                                         (gx#syntax-split-splice
                                          _%$%g2368423704%_
                                          '0)))
                                    (begin
                                      (let ((_g27707_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27706_)
                                                   (##values-length _g27706_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27707_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27707_)))
                                      (let ((_%$%target2368623707%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27706_ 0)))
                                            (_%$%tl2368823710%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27706_ 1))))
                                        (if (gx#stx-null? _%$%tl2368823710%_)
                                            (letrec ((_%$%loop2368923713%_
                                                      (lambda (_%$%hd2368723717%_
                                                               _%$%type-body2369323720%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2368723717%_)
                                                            (let ((_%$%e2369023722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2368723717%_)))
                      (let ((_%$%lp-hd2369123726%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2369023722%_)))
                            (_%$%lp-tl2369223729%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2369023722%_))))
                        (_%$%loop2368923713%_
                         _%$%lp-tl2369223729%_
                         (cons _%$%lp-hd2369123726%_
                               _%$%type-body2369323720%_))))
                    (let* ((_%$%type-body2369423732%_
                            (reverse _%$%type-body2369323720%_))
                           (_%$%g2375623764%_
                            (lambda (_%$%g2375723760%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2375723760%_)))
                           (_%$%g2375524670%_
                            (lambda (_%$%g2375723768%_)
                              (let* ((_%$%g2378423792%_
                                      (lambda (_%$%g2378523788%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2378523788%_)))
                                     (_%$%g2378324599%_
                                      (lambda (_%$%g2378523796%_)
                                        (let* ((_%$%g2381223820%_
                                                (lambda (_%$%g2381323816%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2381323816%_)))
                                               (_%$%g2381124564%_
                                                (lambda (_%$%g2381323824%_)
                                                  (let* ((_%$%g2384023848%_
                                                          (lambda (_%$%g2384123844%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2384123844%_)))
                                                         (_%$%g2383924480%_
                                                          (lambda (_%$%g2384123852%_)
                                                            (let* ((_%$%g2386823876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2386923872%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2386923872%_)))
                           (_%$%g2386724468%_
                            (lambda (_%$%g2386923880%_)
                              (let* ((_%$%g2389623904%_
                                      (lambda (_%$%g2389723900%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2389723900%_)))
                                     (_%$%g2389524464%_
                                      (lambda (_%$%g2389723908%_)
                                        (let* ((_%$%g2392423932%_
                                                (lambda (_%$%g2392523928%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2392523928%_)))
                                               (_%$%g2392324460%_
                                                (lambda (_%$%g2392523936%_)
                                                  (let* ((_%$%g2395223960%_
                                                          (lambda (_%$%g2395323956%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2395323956%_)))
                                                         (_%$%g2395124425%_
                                                          (lambda (_%$%g2395323964%_)
                                                            (let* ((_%$%g2398023988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2398123984%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2398123984%_)))
                           (_%$%g2397924354%_
                            (lambda (_%$%g2398123992%_)
                              (let* ((_%$%g2400824016%_
                                      (lambda (_%$%g2400924012%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2400924012%_)))
                                     (_%$%g2400724350%_
                                      (lambda (_%$%g2400924020%_)
                                        (let* ((_%$%g2403624044%_
                                                (lambda (_%$%g2403724040%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2403724040%_)))
                                               (_%$%g2403524346%_
                                                (lambda (_%$%g2403724048%_)
                                                  (let* ((_%$%g2406424072%_
                                                          (lambda (_%$%g2406524068%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2406524068%_)))
                                                         (_%$%g2406324342%_
                                                          (lambda (_%$%g2406524076%_)
                                                            (let* ((_%$%g2409224100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2409324096%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2409324096%_)))
                           (_%$%g2409124316%_
                            (lambda (_%$%g2409324104%_)
                              (let* ((_%$%g2412024128%_
                                      (lambda (_%$%g2412124124%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2412124124%_)))
                                     (_%$%g2411924290%_
                                      (lambda (_%$%g2412124132%_)
                                        (let* ((_%$%g2414824156%_
                                                (lambda (_%$%g2414924152%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2414924152%_)))
                                               (_%$%g2414724264%_
                                                (lambda (_%$%g2414924160%_)
                                                  (let* ((_%$%g2417624184%_
                                                          (lambda (_%$%g2417724180%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2417724180%_)))
                                                         (_%$%g2417524238%_
                                                          (lambda (_%$%g2417724188%_)
                                                            (let* ((_%$%g2420424212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2420524208%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2420524208%_)))
                           (_%$%g2420324234%_
                            (lambda (_%$%g2420524216%_)
                              (_%wrap22643%_
                               (cons (gx#datum->syntax '#f 'begin)
                                     (cons _%$%g2375723768%_
                                           (cons _%$%g2420524216%_ '())))))))
                      (_%$%g2420324234%_
                       (_%wrap22643%_
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _%$%g2265922670%_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type-info)
                                                (cons 'id:
                                                      (cons _%$%g2378523796%_
                                                            (cons 'name:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%g2381323824%_
                                (cons 'slots:
                                      (cons _%$%g2386923880%_
                                            (cons 'super:
                                                  (cons _%$%g2384123852%_
                                                        (cons 'struct?:
                                                              (cons _%$%g2389723908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons 'final?:
                                  (cons _%$%g2392523936%_
                                        (cons 'metaclass:
                                              (cons _%$%g2395323964%_
                                                    (cons 'constructor-method:
                                                          (cons _%$%g2398123992%_
                                                                (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%g2400924020%_
                                    (cons 'constructor:
                                          (cons _%$%g2403724048%_
                                                (cons 'predicate:
                                                      (cons _%$%g2406524076%_
                                                            (cons 'accessors:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%g2409324104%_
                                (cons 'mutators:
                                      (cons _%$%g2412124132%_
                                            (cons 'unchecked-accessors:
                                                  (cons _%$%g2414924160%_
                                                        (cons 'unchecked-mutators:
                                                              (cons _%$%g2417724188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2417524238%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (begin
                                                             (gx#syntax-check-splice-targets
                                                              _%$%usetf2329923337%_
                                                              _%$%slot2281222850%_)
                                                             (foldr (lambda (_%$%g2424124248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g2424224251%_
                                     _%$%g2424324253%_)
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%$%g2424224251%_
                                                            '()))
                                                (cons '::
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote-syntax)
                          (cons _%$%g2424124248%_ '()))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$%g2424324253%_))
                            (begin
                              (gx#syntax-check-splice-targets
                               _%$%mixin-usetf2343723475%_
                               _%$%mixin-slot2302223060%_)
                              (foldr (lambda (_%$%g2424424256%_
                                              _%$%g2424524259%_
                                              _%$%g2424624261%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%$%g2424524259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%$%g2424424256%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g2424624261%_))
                                     '()
                                     _%$%mixin-usetf2343723475%_
                                     _%$%mixin-slot2302223060%_))
                            _%$%usetf2329923337%_
                            _%$%slot2281222850%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2414724264%_
                                           (cons (gx#datum->syntax '#f '@list)
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _%$%ugetf2323023268%_
                                                    _%$%slot2281222850%_)
                                                   (foldr (lambda (_%$%g2426724274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g2426824277%_
                           _%$%g2426924279%_)
                    (cons (cons (gx#datum->syntax '#f '@list)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%$%g2426824277%_ '()))
                                      (cons '::
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%$%g2426724274%_
                                                              '()))
                                                  '()))))
                          _%$%g2426924279%_))
                  (begin
                    (gx#syntax-check-splice-targets
                     _%$%mixin-ugetf2336823406%_
                     _%$%mixin-slot2302223060%_)
                    (foldr (lambda (_%$%g2427024282%_
                                    _%$%g2427124285%_
                                    _%$%g2427224287%_)
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%$%g2427124285%_
                                                           '()))
                                               (cons '::
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _%$%g2427024282%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%g2427224287%_))
                           '()
                           _%$%mixin-ugetf2336823406%_
                           _%$%mixin-slot2302223060%_))
                  _%$%ugetf2323023268%_
                  _%$%slot2281222850%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%$%g2411924290%_
                                 (cons (gx#datum->syntax '#f '@list)
                                       (begin
                                         (gx#syntax-check-splice-targets
                                          _%$%setf2295022988%_
                                          _%$%slot2281222850%_)
                                         (foldr (lambda (_%$%g2429324300%_
                                                         _%$%g2429424303%_
                                                         _%$%g2429524305%_)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@list)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%$%g2429424303%_ '()))
                            (cons '::
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _%$%g2429324300%_ '()))
                                        '()))))
                _%$%g2429524305%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%mixin-setf2316123199%_
                                                   _%$%mixin-slot2302223060%_)
                                                  (foldr (lambda (_%$%g2429624308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g2429724311%_
                          _%$%g2429824313%_)
                   (cons (cons (gx#datum->syntax '#f '@list)
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g2429724311%_ '()))
                                     (cons '::
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _%$%g2429624308%_
                                                             '()))
                                                 '()))))
                         _%$%g2429824313%_))
                 '()
                 _%$%mixin-setf2316123199%_
                 _%$%mixin-slot2302223060%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%setf2295022988%_
                                                _%$%slot2281222850%_))))))))
                      (_%$%g2409124316%_
                       (cons (gx#datum->syntax '#f '@list)
                             (begin
                               (gx#syntax-check-splice-targets
                                _%$%getf2288122919%_
                                _%$%slot2281222850%_)
                               (foldr (lambda (_%$%g2431924326%_
                                               _%$%g2432024329%_
                                               _%$%g2432124331%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%$%g2432024329%_ '()))
                  (cons '::
                        (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                    (cons _%$%g2431924326%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%g2432124331%_))
                                      (begin
                                        (gx#syntax-check-splice-targets
                                         _%$%mixin-getf2309223130%_
                                         _%$%mixin-slot2302223060%_)
                                        (foldr (lambda (_%$%g2432224334%_
                                                        _%$%g2432324337%_
                                                        _%$%g2432424339%_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%g2432324337%_ '()))
                           (cons '::
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'quote-syntax)
                                             (cons _%$%g2432224334%_ '()))
                                       '()))))
               _%$%g2432424339%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%$%mixin-getf2309223130%_
                                               _%$%mixin-slot2302223060%_))
                                      _%$%getf2288122919%_
                                      _%$%slot2281222850%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2406324342%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax)
                                                           (cons _%$%g2274622757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2403524346%_
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _%$%g2271822729%_
                                                       '())))))))
                                (_%$%g2400724350%_
                                 (cons (gx#datum->syntax '#f 'quote-syntax)
                                       (cons _%$%g2269022701%_ '())))))))
                      (_%$%g2397924354%_
                       (if (null? _%type-constructor23562%_)
                           '#f
                           (let* ((_%$%g2435824373%_
                                   (lambda (_%$%g2435924369%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g2435924369%_)))
                                  (_%$%g2435724421%_
                                   (lambda (_%$%g2435924377%_)
                                     (if (gx#stx-pair? _%$%g2435924377%_)
                                         (let ((_%$%e2436124380%_
                                                (gx#syntax-e
                                                 _%$%g2435924377%_)))
                                           (let ((_%$%hd2436224384%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e2436124380%_)))
                                                 (_%$%tl2436324387%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e2436124380%_))))
                                             (if (gx#stx-datum?
                                                  _%$%hd2436224384%_)
                                                 (let ((_%$%e2436424390%_
                                                        (gx#stx-e
                                                         _%$%hd2436224384%_)))
                                                   (if (equal? _%$%e2436424390%_
                                                               'constructor:)
                                                       (if (gx#stx-pair?
                                                            _%$%tl2436324387%_)
                                                           (let ((_%$%e2436524394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%tl2436324387%_)))
                     (let ((_%$%hd2436624398%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e2436524394%_)))
                           (_%$%tl2436724401%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e2436524394%_))))
                       (if (gx#stx-null? _%$%tl2436724401%_)
                           (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%$%hd2436624398%_ '()))
                           (_%$%g2435824373%_ _%$%g2435924377%_))))
                   (_%$%g2435824373%_ _%$%g2435924377%_))
               (_%$%g2435824373%_ _%$%g2435924377%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g2435824373%_
                                                  _%$%g2435924377%_))))
                                         (_%$%g2435824373%_
                                          _%$%g2435924377%_)))))
                             (_%$%g2435724421%_
                              _%type-constructor23562%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2395124425%_
                                                     (if _%metaclass23668%_
                                                         (let* ((_%$%g2442924437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%g2443024433%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g2443024433%_)))
                        (_%$%g2442824456%_
                         (lambda (_%$%g2443024441%_)
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _%$%g2443024441%_ '())))))
                   (_%$%g2442824456%_ _%metaclass23668%_))
                 '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2392324460%_
                                           _%final?23674%_)))))
                                (_%$%g2389524464%_ _%struct?22655%_)))))
                      (_%$%g2386724468%_
                       (cons (gx#datum->syntax '#f 'quote)
                             (cons (foldr (lambda (_%$%g2447124474%_
                                                   _%$%g2447224477%_)
                                            (cons _%$%g2447124474%_
                                                  _%$%g2447224477%_))
                                          '()
                                          _%$%slot2281222850%_)
                                   '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2383924480%_
                                                     (let* ((_%$%g2448424501%_
                                                             (lambda (_%$%g2448524497%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%$%g2448524497%_)))
                                                            (_%$%g2448324560%_
                                                             (lambda (_%$%g2448524505%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g2448524505%_)
                           (let ((_g27708_
                                  (gx#syntax-split-splice
                                   _%$%g2448524505%_
                                   '0)))
                             (begin
                               (let ((_g27709_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g27708_)
                                            (##values-length _g27708_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g27709_ 2)))
                                     (error "Context expects 2 values"
                                            _g27709_)))
                               (let ((_%$%target2448724508%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g27708_ 0)))
                                     (_%$%tl2448924511%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g27708_ 1))))
                                 (if (gx#stx-null? _%$%tl2448924511%_)
                                     (letrec ((_%$%loop2449024514%_
                                               (lambda (_%$%hd2448824518%_
                                                        _%$%super-id2449424521%_)
                                                 (if (gx#stx-pair?
                                                      _%$%hd2448824518%_)
                                                     (let ((_%$%e2449124523%_
                                                            (gx#syntax-e
                                                             _%$%hd2448824518%_)))
                                                       (let ((_%$%lp-hd2449224527%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e2449124523%_)))
                     (_%$%lp-tl2449324530%_
                      (let () (declare (not safe)) (##cdr _%$%e2449124523%_))))
                 (_%$%loop2449024514%_
                  _%$%lp-tl2449324530%_
                  (cons _%$%lp-hd2449224527%_ _%$%super-id2449424521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%super-id2449524533%_
                                                            (reverse _%$%super-id2449424521%_)))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (foldr (lambda (_%$%g2455124554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g2455224557%_)
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%$%g2455124554%_ '()))
                                    _%$%g2455224557%_))
                            '()
                            _%$%super-id2449524533%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%$%loop2449024514%_
                                        _%$%target2448724508%_
                                        '()))
                                     (_%$%g2448424501%_ _%$%g2448524505%_)))))
                           (_%$%g2448424501%_ _%$%g2448524505%_)))))
               (_%$%g2448324560%_ _%super-ref22639%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2381124564%_
                                           (let* ((_%$%g2456824576%_
                                                   (lambda (_%$%g2456924572%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g2456924572%_)))
                                                  (_%$%g2456724595%_
                                                   (lambda (_%$%g2456924580%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%$%g2456924580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g2456724595%_
                                              (cadr _%type-name23541%_))))))))
                                (_%$%g2378324599%_
                                 (let* ((_%$%g2460324618%_
                                         (lambda (_%$%g2460424614%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2460424614%_)))
                                        (_%$%g2460224666%_
                                         (lambda (_%$%g2460424622%_)
                                           (if (gx#stx-pair? _%$%g2460424622%_)
                                               (let ((_%$%e2460624625%_
                                                      (gx#syntax-e
                                                       _%$%g2460424622%_)))
                                                 (let ((_%$%hd2460724629%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2460624625%_)))
                                                       (_%$%tl2460824632%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2460624625%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2460724629%_)
                                                       (let ((_%$%e2460924635%_
                                                              (gx#stx-e
                                                               _%$%hd2460724629%_)))
                                                         (if (equal? _%$%e2460924635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'id:)
                     (if (gx#stx-pair? _%$%tl2460824632%_)
                         (let ((_%$%e2461024639%_
                                (gx#syntax-e _%$%tl2460824632%_)))
                           (let ((_%$%hd2461124643%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2461024639%_)))
                                 (_%$%tl2461224646%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2461024639%_))))
                             (if (gx#stx-null? _%$%tl2461224646%_)
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%hd2461124643%_ '()))
                                 (_%$%g2460324618%_ _%$%g2460424622%_))))
                         (_%$%g2460324618%_ _%$%g2460424622%_))
                     (_%$%g2460324618%_ _%$%g2460424622%_)))
               (_%$%g2460324618%_ _%$%g2460424622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2460324618%_
                                                _%$%g2460424622%_)))))
                                   (_%$%g2460224666%_ _%type-id23548%_)))))))
                      (_%$%g2375524670%_
                       (_%wrap22643%_
                        (cons (gx#datum->syntax '#f 'defclass-type)
                              (cons _%$%g2269022701%_
                                    (cons _%$%g2277422785%_
                                          (cons _%$%g2271822729%_
                                                (cons _%$%g2274622757%_
                                                      (foldr (lambda (_%$%g2467324676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g2467424679%_)
                       (cons _%$%g2467324676%_ _%$%g2467424679%_))
                     '()
                     _%$%type-body2369423732%_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2368923713%_
                                               _%$%target2368623707%_
                                               '()))
                                            (_%$%g2368323700%_
                                             _%$%g2368423704%_)))))
                                  (_%$%g2368323700%_ _%$%g2368423704%_)))))
                      (_%$%g2368224682%_
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
                                _%type-properties23656%_)
                         _%type-metaclass23671%_)
                  _%type-final23680%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%type-struct23677%_)
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
                      (_%$%g2342524686%_
                       (gx#stx-map
                        (lambda (_%$%g2468924691%_)
                          (_%make-id22645%_ '"&" _%$%g2468924691%_))
                        (foldr (lambda (_%$%g2469424697%_ _%$%g2469524700%_)
                                 (cons _%$%g2469424697%_ _%$%g2469524700%_))
                               '()
                               _%$%mixin-setf2316123199%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2336323387%_
                                               _%$%target2336023381%_
                                               '()))
                                            (_%$%g2335723374%_
                                             _%$%g2335823378%_)))))
                                  (_%$%g2335723374%_ _%$%g2335823378%_)))))
                      (_%$%g2335624703%_
                       (gx#stx-map
                        (lambda (_%$%g2470624708%_)
                          (_%make-id22645%_ '"&" _%$%g2470624708%_))
                        (foldr (lambda (_%$%g2471124714%_ _%$%g2471224717%_)
                                 (cons _%$%g2471124714%_ _%$%g2471224717%_))
                               '()
                               _%$%mixin-getf2309223130%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2329423318%_
                                               _%$%target2329123312%_
                                               '()))
                                            (_%$%g2328823305%_
                                             _%$%g2328923309%_)))))
                                  (_%$%g2328823305%_ _%$%g2328923309%_)))))
                      (_%$%g2328724720%_
                       (gx#stx-map
                        (lambda (_%$%g2472324725%_)
                          (_%make-id22645%_ '"&" _%$%g2472324725%_))
                        (foldr (lambda (_%$%g2472824731%_ _%$%g2472924734%_)
                                 (cons _%$%g2472824731%_ _%$%g2472924734%_))
                               '()
                               _%$%setf2295022988%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2322523249%_
                                               _%$%target2322223243%_
                                               '()))
                                            (_%$%g2321923236%_
                                             _%$%g2322023240%_)))))
                                  (_%$%g2321923236%_ _%$%g2322023240%_)))))
                      (_%$%g2321824737%_
                       (gx#stx-map
                        (lambda (_%$%g2474024742%_)
                          (_%make-id22645%_ '"&" _%$%g2474024742%_))
                        (foldr (lambda (_%$%g2474524748%_ _%$%g2474624751%_)
                                 (cons _%$%g2474524748%_ _%$%g2474624751%_))
                               '()
                               _%$%getf2288122919%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2315623180%_
                                               _%$%target2315323174%_
                                               '()))
                                            (_%$%g2315023167%_
                                             _%$%g2315123171%_)))))
                                  (_%$%g2315023167%_ _%$%g2315123171%_)))))
                      (_%$%g2314924754%_
                       (gx#stx-map
                        (lambda (_%$%g2475724759%_)
                          (_%make-id22645%_
                           _%name22649%_
                           '"-"
                           _%$%g2475724759%_
                           '"-set!"))
                        _%mixin-slots23008%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2308723111%_
                                               _%$%target2308423105%_
                                               '()))
                                            (_%$%g2308123098%_
                                             _%$%g2308223102%_)))))
                                  (_%$%g2308123098%_ _%$%g2308223102%_)))))
                      (_%$%g2308024763%_
                       (gx#stx-map
                        (lambda (_%$%g2476624768%_)
                          (_%make-id22645%_
                           _%name22649%_
                           '"-"
                           _%$%g2476624768%_))
                        _%mixin-slots23008%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2301723041%_
                                               _%$%target2301423035%_
                                               '()))
                                            (_%$%g2301123028%_
                                             _%$%g2301223032%_)))))
                                  (_%$%g2301123028%_ _%$%g2301223032%_)))))
                      (_%$%g2301024772%_ _%mixin-slots23008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2294522969%_
                                               _%$%target2294222963%_
                                               '()))
                                            (_%$%g2293922956%_
                                             _%$%g2294022960%_)))))
                                  (_%$%g2293922956%_ _%$%g2294022960%_)))))
                      (_%$%g2293824776%_
                       (gx#stx-map
                        (lambda (_%$%g2477924781%_)
                          (_%make-id22645%_
                           _%name22649%_
                           '"-"
                           _%$%g2477924781%_
                           '"-set!"))
                        _%slots22640%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2287622900%_
                                               _%$%target2287322894%_
                                               '()))
                                            (_%$%g2287022887%_
                                             _%$%g2287122891%_)))))
                                  (_%$%g2287022887%_ _%$%g2287122891%_)))))
                      (_%$%g2286924785%_
                       (gx#stx-map
                        (lambda (_%$%g2478824790%_)
                          (_%make-id22645%_
                           _%name22649%_
                           '"-"
                           _%$%g2478824790%_))
                        _%slots22640%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2280722831%_
                                               _%$%target2280422825%_
                                               '()))
                                            (_%$%g2280122818%_
                                             _%$%g2280222822%_)))))
                                  (_%$%g2280122818%_ _%$%g2280222822%_)))))
                      (_%$%g2280024794%_ _%slots22640%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2277224798%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                                              _%super22652%_)))))))
                                          (_%$%g2274424802%_
                                           (_%make-id22645%_
                                            _%name22649%_
                                            '"?"))))))
                                (_%$%g2271624806%_
                                 (_%make-id22645%_ '"make-" _%name22649%_))))))
                      (_%$%g2268824810%_
                       (_%make-id22645%_ _%name22649%_ '"::t"))))))
            (_%$%g2265724814%_ _%id22638%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24881%_)
        (let* ((_%$%g2488524904%_
                (lambda (_%$%g2488624900%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g2488624900%_)))
               (_%$%g2488424961%_
                (lambda (_%$%g2488624908%_)
                  (if (gx#stx-pair? _%$%g2488624908%_)
                      (let ((_%$%e2489024911%_
                             (gx#syntax-e _%$%g2488624908%_)))
                        (let ((_%$%hd2489124915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2489024911%_)))
                              (_%$%tl2489224918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2489024911%_))))
                          (if (gx#stx-pair? _%$%tl2489224918%_)
                              (let ((_%$%e2489324921%_
                                     (gx#syntax-e _%$%tl2489224918%_)))
                                (let ((_%$%hd2489424925%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2489324921%_)))
                                      (_%$%tl2489524928%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2489324921%_))))
                                  (if (gx#stx-pair? _%$%tl2489524928%_)
                                      (let ((_%$%e2489624931%_
                                             (gx#syntax-e _%$%tl2489524928%_)))
                                        (let ((_%$%hd2489724935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2489624931%_)))
                                              (_%$%tl2489824938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2489624931%_))))
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defclass)
                                                (cons _%$%hd2489424925%_
                                                      (cons _%$%hd2489724935%_
                                                            (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '#t _%$%tl2489824938%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g2488524904%_ _%$%g2488624908%_))))
                              (_%$%g2488524904%_ _%$%g2488624908%_))))
                      (_%$%g2488524904%_ _%$%g2488624908%_)))))
          (_%$%g2488424961%_ _%$stx24881%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24965%_)
        (letrec ((_%generate24968%_
                  (lambda (_%hd25052%_ _%slots25054%_ _%body25055%_)
                    (let* ((_%__stx2715927160%_ _%hd25052%_)
                           (_%$%g2505825070%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2715927160%_))))
                      (let ((_%__kont2716227163%_
                             (lambda (_%$%g2506025098%_ _%$%g2506125100%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24965%_
                                _%$%g2506125100%_
                                (gx#syntax->list _%$%g2506025098%_)
                                _%slots25054%_
                                _%body25055%_)))
                            (_%__kont2716427165%_
                             (lambda ()
                               (if (gx#identifier? _%hd25052%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24965%_
                                    _%hd25052%_
                                    '()
                                    _%slots25054%_
                                    _%body25055%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx24965%_
                                    _%hd25052%_)))))
                        (let ((_%__match2717227173%_
                               (lambda (_%$%e2506225088%_
                                        _%$%hd2506325092%_
                                        _%$%tl2506425095%_)
                                 (let ((_%$%g2506025098%_ _%$%tl2506425095%_)
                                       (_%$%g2506125100%_ _%$%hd2506325092%_))
                                   (if (and (gx#stx-list? _%$%g2506025098%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%$%g2506025098%_))
                                       (_%__kont2716227163%_
                                        _%$%g2506025098%_
                                        _%$%g2506125100%_)
                                       (_%__kont2716427165%_))))))
                          (if (gx#stx-pair? _%__stx2715927160%_)
                              (let ((_%$%e2506225088%_
                                     (gx#syntax-e _%__stx2715927160%_)))
                                (let ((_%$%tl2506425095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2506225088%_)))
                                      (_%$%hd2506325092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2506225088%_))))
                                  (_%__match2717227173%_
                                   _%$%e2506225088%_
                                   _%$%hd2506325092%_
                                   _%$%tl2506425095%_)))
                              (_%__kont2716427165%_))))))))
          (let* ((_%$%g2497124990%_
                  (lambda (_%$%g2497224986%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g2497224986%_)))
                 (_%$%g2497025048%_
                  (lambda (_%$%g2497224994%_)
                    (if (gx#stx-pair? _%$%g2497224994%_)
                        (let ((_%$%e2497624997%_
                               (gx#syntax-e _%$%g2497224994%_)))
                          (let ((_%$%hd2497725001%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2497624997%_)))
                                (_%$%tl2497825004%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2497624997%_))))
                            (if (gx#stx-pair? _%$%tl2497825004%_)
                                (let ((_%$%e2497925007%_
                                       (gx#syntax-e _%$%tl2497825004%_)))
                                  (let ((_%$%hd2498025011%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2497925007%_)))
                                        (_%$%tl2498125014%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2497925007%_))))
                                    (if (gx#stx-pair? _%$%tl2498125014%_)
                                        (let ((_%$%e2498225017%_
                                               (gx#syntax-e
                                                _%$%tl2498125014%_)))
                                          (let ((_%$%hd2498325021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2498225017%_)))
                                                (_%$%tl2498425024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2498225017%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd2498325021%_)
                                                     (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                      _%$%tl2498425024%_))
                                                (_%generate24968%_
                                                 _%$%hd2498025011%_
                                                 _%$%hd2498325021%_
                                                 _%$%tl2498425024%_)
                                                (_%$%g2497124990%_
                                                 _%$%g2497224994%_))))
                                        (_%$%g2497124990%_
                                         _%$%g2497224994%_))))
                                (_%$%g2497124990%_ _%$%g2497224994%_))))
                        (_%$%g2497124990%_ _%$%g2497224994%_)))))
            (_%$%g2497025048%_ _%stx24965%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25117%_)
        (letrec ((_%wrap25120%_
                  (lambda (_%e-stx25466%_)
                    (gx#stx-wrap-source
                     _%e-stx25466%_
                     (gx#stx-source _%stx25117%_))))
                 (_%method-opt?25122%_
                  (lambda (_%x25463%_)
                    (let ((__tmp27710 (gx#stx-e _%x25463%_)))
                      (declare (not safe))
                      (##memq __tmp27710 '(rebind:))))))
          (let* ((_%$%g2512425153%_
                  (lambda (_%$%g2512525149%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g2512525149%_)))
                 (_%$%g2512325459%_
                  (lambda (_%$%g2512525157%_)
                    (if (gx#stx-pair? _%$%g2512525157%_)
                        (let ((_%$%e2513025160%_
                               (gx#syntax-e _%$%g2512525157%_)))
                          (let ((_%$%hd2513125164%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2513025160%_)))
                                (_%$%tl2513225167%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2513025160%_))))
                            (if (gx#stx-pair? _%$%tl2513225167%_)
                                (let ((_%$%e2513325170%_
                                       (gx#syntax-e _%$%tl2513225167%_)))
                                  (let ((_%$%hd2513425174%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2513325170%_)))
                                        (_%$%tl2513525177%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2513325170%_))))
                                    (if (gx#stx-pair? _%$%hd2513425174%_)
                                        (let ((_%$%e2513625180%_
                                               (gx#syntax-e
                                                _%$%hd2513425174%_)))
                                          (let ((_%$%hd2513725184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2513625180%_)))
                                                (_%$%tl2513825187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2513625180%_))))
                                            (if (gx#identifier?
                                                 _%$%hd2513725184%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27711_|
                                                     _%$%hd2513725184%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl2513825187%_)
                                                        (let ((_%$%e2513925190%_
                                                               (gx#syntax-e
                                                                _%$%tl2513825187%_)))
                                                          (let ((_%$%hd2514025194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e2513925190%_)))
                        (_%$%tl2514125197%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e2513925190%_))))
                    (if (gx#stx-pair? _%$%tl2514125197%_)
                        (let ((_%$%e2514225200%_
                               (gx#syntax-e _%$%tl2514125197%_)))
                          (let ((_%$%hd2514325204%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2514225200%_)))
                                (_%$%tl2514425207%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2514225200%_))))
                            (if (gx#stx-null? _%$%tl2514425207%_)
                                (if (gx#stx-pair? _%$%tl2513525177%_)
                                    (let ((_%$%e2514525210%_
                                           (gx#syntax-e _%$%tl2513525177%_)))
                                      (let ((_%$%hd2514625214%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2514525210%_)))
                                            (_%$%tl2514725217%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2514525210%_))))
                                        (if (and (gx#identifier?
                                                  _%$%hd2514025194%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                    _%$%hd2514325204%_))
                                                 (gx#stx-plist?
                                                  _%$%tl2514725217%_
                                                  _%method-opt?25122%_))
                                            (let* ((_%klass25251%_
                                                    (gx#syntax-local-value
                                                     _%$%hd2514325204%_))
                                                   (_%rebind?25254%_
                                                    (gx#stx-e
                                                     (gx#stx-getq
                                                      'rebind:
                                                      _%$%tl2514725217%_)))
                                                   (_%$%g2525725265%_
                                                    (lambda (_%$%g2525825261%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g2525825261%_)))
                                                   (_%$%g2525625449%_
                                                    (lambda (_%$%g2525825269%_)
                                                      (let* ((_%$%g2528725295%_
                                                              (lambda (_%$%g2528825291%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g2528825291%_)))
                     (_%$%g2528625445%_
                      (lambda (_%$%g2528825299%_)
                        (let* ((_%$%g2531525323%_
                                (lambda (_%$%g2531625319%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g2531625319%_)))
                               (_%$%g2531425441%_
                                (lambda (_%$%g2531625327%_)
                                  (let* ((_%$%g2534325351%_
                                          (lambda (_%$%g2534425347%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g2534425347%_)))
                                         (_%$%g2534225437%_
                                          (lambda (_%$%g2534425355%_)
                                            (let* ((_%$%g2537125379%_
                                                    (lambda (_%$%g2537225375%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g2537225375%_)))
                                                   (_%$%g2537025433%_
                                                    (lambda (_%$%g2537225383%_)
                                                      (let* ((_%$%g2539925407%_
                                                              (lambda (_%$%g2540025403%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g2540025403%_)))
                     (_%$%g2539825429%_
                      (lambda (_%$%g2540025411%_)
                        (_%wrap25120%_
                         (cons (gx#datum->syntax '#f 'begin)
                               (cons _%$%g2534425355%_
                                     (cons _%$%g2540025411%_ '())))))))
                (_%$%g2539825429%_
                 (_%wrap25120%_
                  (cons (gx#datum->syntax '#f 'bind-method!)
                        (cons _%$%g2525825269%_
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _%$%hd2514025194%_ '()))
                                    (cons _%$%g2528825299%_
                                          (cons _%$%g2537225383%_
                                                '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2537025433%_
                                               _%rebind?25254%_)))))
                                    (_%$%g2534225437%_
                                     (_%wrap25120%_
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%g2528825299%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'let-syntax)
                                                              (cons (cons (cons _%$%g2531625327%_
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
                                          (cons _%$%g2525825269%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'obj)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%$%hd2514025194%_ '()))
                    (cons (gx#datum->syntax '#f 'arg)
                          (cons (gx#datum->syntax '#f '...) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '())
                            (cons _%$%hd2514625214%_ '())))
                '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (_%$%g2531425441%_
                           (gx#stx-identifier
                            _%$%hd2514325204%_
                            '@next-method))))))
                (_%$%g2528625445%_
                 (gx#stx-identifier
                  _%$%hd2514325204%_
                  _%$%hd2514325204%_
                  '"::"
                  _%$%hd2514025194%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2525625449%_
                                               (let ((__obj27438
                                                      _%klass25251%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj27438
                                                        'gerbil/core#runtime-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj27438
                                                        '3
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#runtime-type-info::t
                                                      __obj27438
                                                      'type-descriptor)))))
                                            (if (gx#identifier?
                                                 _%$%hd2514025194%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%$%hd2514325204%_))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"bad syntax; illegal method options"
                                                     _%stx25117%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"bad syntax; invalid class type"
                                                     _%stx25117%_
                                                     _%$%hd2514325204%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; expected method identifier"
                                                 _%stx25117%_
                                                 _%$%hd2514025194%_)))))
                                    (_%$%g2512425153%_ _%$%g2512525157%_))
                                (_%$%g2512425153%_ _%$%g2512525157%_))))
                        (_%$%g2512425153%_ _%$%g2512525157%_))))
                (_%$%g2512425153%_ _%$%g2512525157%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2512425153%_
                                                     _%$%g2512525157%_))
                                                (_%$%g2512425153%_
                                                 _%$%g2512525157%_))))
                                        (_%$%g2512425153%_
                                         _%$%g2512525157%_))))
                                (_%$%g2512425153%_ _%$%g2512525157%_))))
                        (_%$%g2512425153%_ _%$%g2512525157%_)))))
            (_%$%g2512325459%_ _%stx25117%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25469%_)
        (letrec ((_%dotted-identifier?25472%_
                  (lambda (_%id26097%_)
                    (if (gx#identifier? _%id26097%_)
                        (let ((_%id-str26100%_
                               (symbol->string (gx#stx-e _%id26097%_))))
                          (if (string-index _%id-str26100%_ '#\.)
                              (let* ((_%split26103%_
                                      (string-split _%id-str26100%_ '#\.))
                                     (__tmp27712 (length _%split26103%_)))
                                (declare (not safe))
                                (##fx= __tmp27712 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25474%_
                  (lambda (_%id26086%_)
                    (let* ((_%id-str26089%_
                            (symbol->string (gx#stx-e _%id26086%_)))
                           (_%split26092%_
                            (string-split _%id-str26089%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26086%_
                             (car _%split26092%_))
                            (cons (gx#stx-identifier
                                   _%id26086%_
                                   (cadr _%split26092%_))
                                  '()))))))
          (let* ((_%__stx2717527176%_ _%stx25469%_)
                 (_%$%g2547925566%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2717527176%_))))
            (let ((_%__kont2717827179%_
                   (lambda (_%$%g2548125979%_
                            _%$%g2548225981%_
                            _%$%g2548325982%_)
                     (let* ((_%$%g2601026025%_
                             (lambda (_%$%g2601126021%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g2601126021%_)))
                            (_%$%g2600926078%_
                             (lambda (_%$%g2601126029%_)
                               (if (gx#stx-pair? _%$%g2601126029%_)
                                   (let ((_%$%e2601426032%_
                                          (gx#syntax-e _%$%g2601126029%_)))
                                     (let ((_%$%hd2601526036%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e2601426032%_)))
                                           (_%$%tl2601626039%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e2601426032%_))))
                                       (if (gx#stx-pair? _%$%tl2601626039%_)
                                           (let ((_%$%e2601726042%_
                                                  (gx#syntax-e
                                                   _%$%tl2601626039%_)))
                                             (let ((_%$%hd2601826046%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e2601726042%_)))
                                                   (_%$%tl2601926049%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e2601726042%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl2601926049%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'apply)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'call-method)
                                                               (cons _%$%hd2601526036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _%$%hd2601826046%_ '()))
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (foldr (lambda (_%$%g2606926072%_
                                                               _%$%g2607026075%_)
                                                        (cons _%$%g2606926072%_
                                                              _%$%g2607026075%_))
                                                      '()
                                                      _%$%g2548225981%_))
                                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g2601026025%_
                                                    _%$%g2601126029%_))))
                                           (_%$%g2601026025%_
                                            _%$%g2601126029%_))))
                                   (_%$%g2601026025%_ _%$%g2601126029%_)))))
                       (_%$%g2600926078%_
                        (_%split-dotted25474%_ _%$%g2548325982%_)))))
                  (_%__kont2718227183%_
                   (lambda (_%$%g2550225823%_ _%$%g2550325825%_)
                     (let* ((_%$%g2584225857%_
                             (lambda (_%$%g2584325853%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g2584325853%_)))
                            (_%$%g2584125910%_
                             (lambda (_%$%g2584325861%_)
                               (if (gx#stx-pair? _%$%g2584325861%_)
                                   (let ((_%$%e2584625864%_
                                          (gx#syntax-e _%$%g2584325861%_)))
                                     (let ((_%$%hd2584725868%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e2584625864%_)))
                                           (_%$%tl2584825871%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e2584625864%_))))
                                       (if (gx#stx-pair? _%$%tl2584825871%_)
                                           (let ((_%$%e2584925874%_
                                                  (gx#syntax-e
                                                   _%$%tl2584825871%_)))
                                             (let ((_%$%hd2585025878%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e2584925874%_)))
                                                   (_%$%tl2585125881%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e2584925874%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl2585125881%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _%$%hd2584725868%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _%$%hd2585025878%_ '()))
                             (foldr (lambda (_%$%g2590125904%_
                                             _%$%g2590225907%_)
                                      (cons _%$%g2590125904%_
                                            _%$%g2590225907%_))
                                    '()
                                    _%$%g2550225823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g2584225857%_
                                                    _%$%g2584325861%_))))
                                           (_%$%g2584225857%_
                                            _%$%g2584325861%_))))
                                   (_%$%g2584225857%_ _%$%g2584325861%_)))))
                       (_%$%g2584125910%_
                        (_%split-dotted25474%_ _%$%g2550325825%_)))))
                  (_%__kont2718627187%_
                   (lambda (_%$%g2551925729%_
                            _%$%g2552025731%_
                            _%$%g2552125732%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%$%g2552025731%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%$%g2552125732%_
                                                         '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%$%g2575925762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g2576025765%_)
                          (cons _%$%g2575925762%_ _%$%g2576025765%_))
                        '()
                        _%$%g2551925729%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2719027191%_
                   (lambda (_%$%g2554025631%_
                            _%$%g2554125633%_
                            _%$%g2554225634%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%$%g2554125633%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%$%g2554225634%_ '()))
                                       (foldr (lambda (_%$%g2565525658%_
                                                       _%$%g2565625661%_)
                                                (cons _%$%g2565525658%_
                                                      _%$%g2565625661%_))
                                              '()
                                              _%$%g2554025631%_)))))))
              (let* ((_%__match2729427295%_
                      (lambda (_%$%e2554325573%_
                               _%$%hd2554425577%_
                               _%$%tl2554525580%_
                               _%$%e2554625583%_
                               _%$%hd2554725587%_
                               _%$%tl2554825590%_
                               _%$%e2554925593%_
                               _%$%hd2555025597%_
                               _%$%tl2555125600%_
                               _%__splice2719227193%_
                               _%$%target2555225603%_
                               _%$%tl2555425606%_)
                        (letrec ((_%$%loop2555525609%_
                                  (lambda (_%$%hd2555325613%_
                                           _%$%arg2555925616%_)
                                    (if (gx#stx-pair? _%$%hd2555325613%_)
                                        (let ((_%$%e2555625618%_
                                               (gx#syntax-e
                                                _%$%hd2555325613%_)))
                                          (let ((_%$%lp-tl2555825625%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2555625618%_)))
                                                (_%$%lp-hd2555725622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2555625618%_))))
                                            (_%$%loop2555525609%_
                                             _%$%lp-tl2555825625%_
                                             (cons _%$%lp-hd2555725622%_
                                                   _%$%arg2555925616%_))))
                                        (let ((_%$%arg2556025628%_
                                               (reverse _%$%arg2555925616%_)))
                                          (let ((_%$%g2554025631%_
                                                 _%$%arg2556025628%_)
                                                (_%$%g2554125633%_
                                                 _%$%hd2555025597%_)
                                                (_%$%g2554225634%_
                                                 _%$%hd2554725587%_))
                                            (if (gx#identifier?
                                                 _%$%g2554225634%_)
                                                (_%__kont2719027191%_
                                                 _%$%g2554025631%_
                                                 _%$%g2554125633%_
                                                 _%$%g2554225634%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g2547925566%_)))))))))
                          (_%$%loop2555525609%_ _%$%target2555225603%_ '()))))
                     (_%__match2726827269%_
                      (lambda (_%$%e2552225671%_
                               _%$%hd2552325675%_
                               _%$%tl2552425678%_
                               _%$%e2552525681%_
                               _%$%hd2552625685%_
                               _%$%tl2552725688%_
                               _%$%e2552825691%_
                               _%$%hd2552925695%_
                               _%$%tl2553025698%_
                               _%__splice2718827189%_
                               _%$%target2553125701%_
                               _%$%tl2553325704%_)
                        (letrec ((_%$%loop2553425707%_
                                  (lambda (_%$%hd2553225711%_
                                           _%$%arg2553825714%_)
                                    (if (gx#stx-pair? _%$%hd2553225711%_)
                                        (let ((_%$%e2553525716%_
                                               (gx#syntax-e
                                                _%$%hd2553225711%_)))
                                          (let ((_%$%lp-tl2553725723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2553525716%_)))
                                                (_%$%lp-hd2553625720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2553525716%_))))
                                            (_%$%loop2553425707%_
                                             _%$%lp-tl2553725723%_
                                             (cons _%$%lp-hd2553625720%_
                                                   _%$%arg2553825714%_))))
                                        (let ((_%$%arg2553925726%_
                                               (reverse _%$%arg2553825714%_)))
                                          (let ((_%$%g2551925729%_
                                                 _%$%arg2553925726%_)
                                                (_%$%g2552025731%_
                                                 _%$%hd2552925695%_)
                                                (_%$%g2552125732%_
                                                 _%$%hd2552625685%_))
                                            (if (and (gx#identifier?
                                                      _%$%g2552125732%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%$%g2575125754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g2575225757%_)
                       (cons _%$%g2575125754%_ _%$%g2575225757%_))
                     '()
                     _%$%g2551925729%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2718627187%_
                                                 _%$%g2551925729%_
                                                 _%$%g2552025731%_
                                                 _%$%g2552125732%_)
                                                (_%__match2729427295%_
                                                 _%$%e2552225671%_
                                                 _%$%hd2552325675%_
                                                 _%$%tl2552425678%_
                                                 _%$%e2552525681%_
                                                 _%$%hd2552625685%_
                                                 _%$%tl2552725688%_
                                                 _%$%e2552825691%_
                                                 _%$%hd2552925695%_
                                                 _%$%tl2553025698%_
                                                 _%__splice2718827189%_
                                                 _%$%target2553125701%_
                                                 _%$%tl2553325704%_))))))))
                          (_%$%loop2553425707%_ _%$%target2553125701%_ '()))))
                     (_%__match2725427255%_
                      (lambda (_%$%e2552225671%_
                               _%$%hd2552325675%_
                               _%$%tl2552425678%_
                               _%$%e2552525681%_
                               _%$%hd2552625685%_
                               _%$%tl2552725688%_)
                        (if (gx#stx-pair? _%$%tl2552725688%_)
                            (let ((_%$%e2552825691%_
                                   (gx#syntax-e _%$%tl2552725688%_)))
                              (let ((_%$%tl2553025698%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2552825691%_)))
                                    (_%$%hd2552925695%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2552825691%_))))
                                (if (gx#stx-pair/null? _%$%tl2553025698%_)
                                    (let ((_%__splice2718827189%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl2553025698%_
                                            '0)))
                                      (let ((_%$%tl2553325704%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2718827189%_
                                                '1)))
                                            (_%$%target2553125701%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2718827189%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl2553325704%_)
                                            (_%__match2726827269%_
                                             _%$%e2552225671%_
                                             _%$%hd2552325675%_
                                             _%$%tl2552425678%_
                                             _%$%e2552525681%_
                                             _%$%hd2552625685%_
                                             _%$%tl2552725688%_
                                             _%$%e2552825691%_
                                             _%$%hd2552925695%_
                                             _%$%tl2553025698%_
                                             _%__splice2718827189%_
                                             _%$%target2553125701%_
                                             _%$%tl2553325704%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g2547925566%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2547925566%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2547925566%_)))))
                     (_%__match2724227243%_
                      (lambda (_%$%e2550425775%_
                               _%$%hd2550525779%_
                               _%$%tl2550625782%_
                               _%$%e2550725785%_
                               _%$%hd2550825789%_
                               _%$%tl2550925792%_
                               _%__splice2718427185%_
                               _%$%target2551025795%_
                               _%$%tl2551225798%_)
                        (letrec ((_%$%loop2551325801%_
                                  (lambda (_%$%hd2551125805%_
                                           _%$%arg2551725808%_)
                                    (if (gx#stx-pair? _%$%hd2551125805%_)
                                        (let ((_%$%e2551425810%_
                                               (gx#syntax-e
                                                _%$%hd2551125805%_)))
                                          (let ((_%$%lp-tl2551625817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2551425810%_)))
                                                (_%$%lp-hd2551525814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2551425810%_))))
                                            (_%$%loop2551325801%_
                                             _%$%lp-tl2551625817%_
                                             (cons _%$%lp-hd2551525814%_
                                                   _%$%arg2551725808%_))))
                                        (let ((_%$%arg2551825820%_
                                               (reverse _%$%arg2551725808%_)))
                                          (let ((_%$%g2550225823%_
                                                 _%$%arg2551825820%_)
                                                (_%$%g2550325825%_
                                                 _%$%hd2550825789%_))
                                            (if (_%dotted-identifier?25472%_
                                                 _%$%g2550325825%_)
                                                (_%__kont2718227183%_
                                                 _%$%g2550225823%_
                                                 _%$%g2550325825%_)
                                                (_%__match2725427255%_
                                                 _%$%e2550425775%_
                                                 _%$%hd2550525779%_
                                                 _%$%tl2550625782%_
                                                 _%$%e2550725785%_
                                                 _%$%hd2550825789%_
                                                 _%$%tl2550925792%_))))))))
                          (_%$%loop2551325801%_ _%$%target2551025795%_ '()))))
                     (_%__match2724027241%_
                      (lambda (_%$%e2550425775%_
                               _%$%hd2550525779%_
                               _%$%tl2550625782%_
                               _%$%e2550725785%_
                               _%$%hd2550825789%_
                               _%$%tl2550925792%_
                               _%__splice2718427185%_
                               _%$%target2551025795%_
                               _%$%tl2551225798%_)
                        (if (gx#stx-null? _%$%tl2551225798%_)
                            (_%__match2724227243%_
                             _%$%e2550425775%_
                             _%$%hd2550525779%_
                             _%$%tl2550625782%_
                             _%$%e2550725785%_
                             _%$%hd2550825789%_
                             _%$%tl2550925792%_
                             _%__splice2718427185%_
                             _%$%target2551025795%_
                             _%$%tl2551225798%_)
                            (if (gx#stx-pair? _%$%tl2550925792%_)
                                (let ((_%$%e2552825691%_
                                       (gx#syntax-e _%$%tl2550925792%_)))
                                  (let ((_%$%tl2553025698%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2552825691%_)))
                                        (_%$%hd2552925695%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2552825691%_))))
                                    (if (gx#stx-pair/null? _%$%tl2553025698%_)
                                        (let ((_%__splice2718827189%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl2553025698%_
                                                '0)))
                                          (let ((_%$%tl2553325704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2718827189%_
                                                    '1)))
                                                (_%$%target2553125701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2718827189%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl2553325704%_)
                                                (_%__match2726827269%_
                                                 _%$%e2550425775%_
                                                 _%$%hd2550525779%_
                                                 _%$%tl2550625782%_
                                                 _%$%e2550725785%_
                                                 _%$%hd2550825789%_
                                                 _%$%tl2550925792%_
                                                 _%$%e2552825691%_
                                                 _%$%hd2552925695%_
                                                 _%$%tl2553025698%_
                                                 _%__splice2718827189%_
                                                 _%$%target2553125701%_
                                                 _%$%tl2553325704%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g2547925566%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g2547925566%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g2547925566%_))))))
                     (_%__match2722227223%_
                      (lambda (_%$%e2548425921%_
                               _%$%hd2548525925%_
                               _%$%tl2548625928%_
                               _%$%e2548725931%_
                               _%$%hd2548825935%_
                               _%$%tl2548925938%_
                               _%__splice2718027181%_
                               _%$%target2549025941%_
                               _%$%tl2549225944%_
                               _%$%e2549925947%_
                               _%$%hd2550025951%_
                               _%$%tl2550125954%_)
                        (letrec ((_%$%loop2549325957%_
                                  (lambda (_%$%hd2549125961%_
                                           _%$%arg2549725964%_)
                                    (if (gx#stx-pair? _%$%hd2549125961%_)
                                        (let ((_%$%e2549425966%_
                                               (gx#syntax-e
                                                _%$%hd2549125961%_)))
                                          (let ((_%$%lp-tl2549625973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2549425966%_)))
                                                (_%$%lp-hd2549525970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2549425966%_))))
                                            (_%$%loop2549325957%_
                                             _%$%lp-tl2549625973%_
                                             (cons _%$%lp-hd2549525970%_
                                                   _%$%arg2549725964%_))))
                                        (let ((_%$%arg2549825976%_
                                               (reverse _%$%arg2549725964%_)))
                                          (let ((_%$%g2548125979%_
                                                 _%$%hd2550025951%_)
                                                (_%$%g2548225981%_
                                                 _%$%arg2549825976%_)
                                                (_%$%g2548325982%_
                                                 _%$%hd2548825935%_))
                                            (if (and (_%dotted-identifier?25472%_
                                                      _%$%g2548325982%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%$%g2600126004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g2600226007%_)
                       (cons _%$%g2600126004%_ _%$%g2600226007%_))
                     '()
                     _%$%g2548225981%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2717827179%_
                                                 _%$%g2548125979%_
                                                 _%$%g2548225981%_
                                                 _%$%g2548325982%_)
                                                (let ((_%__splice2718427185%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl2548925938%_
                                                        '0)))
                                                  (let ((_%$%tl2551225798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2718427185%_
                                                            '1)))
                                                        (_%$%target2551025795%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2718427185%_
                                                            '0))))
                                                    (_%__match2724027241%_
                                                     _%$%e2548425921%_
                                                     _%$%hd2548525925%_
                                                     _%$%tl2548625928%_
                                                     _%$%e2548725931%_
                                                     _%$%hd2548825935%_
                                                     _%$%tl2548925938%_
                                                     _%__splice2718427185%_
                                                     _%$%target2551025795%_
                                                     _%$%tl2551225798%_))))))))))
                          (_%$%loop2549325957%_ _%$%target2549025941%_ '())))))
                (if (gx#stx-pair? _%__stx2717527176%_)
                    (let ((_%$%e2548425921%_
                           (gx#syntax-e _%__stx2717527176%_)))
                      (let ((_%$%tl2548625928%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2548425921%_)))
                            (_%$%hd2548525925%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2548425921%_))))
                        (if (gx#stx-pair? _%$%tl2548625928%_)
                            (let ((_%$%e2548725931%_
                                   (gx#syntax-e _%$%tl2548625928%_)))
                              (let ((_%$%tl2548925938%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2548725931%_)))
                                    (_%$%hd2548825935%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2548725931%_))))
                                (if (gx#stx-pair/null? _%$%tl2548925938%_)
                                    (if (let ((__tmp27713
                                               (gx#stx-length
                                                _%$%tl2548925938%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27713 '1))
                                        (let ((_%__splice2718027181%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl2548925938%_
                                                '1)))
                                          (let ((_%$%tl2549225944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2718027181%_
                                                    '1)))
                                                (_%$%target2549025941%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2718027181%_
                                                    '0))))
                                            (if (gx#stx-pair?
                                                 _%$%tl2549225944%_)
                                                (let ((_%$%e2549925947%_
                                                       (gx#syntax-e
                                                        _%$%tl2549225944%_)))
                                                  (let ((_%$%tl2550125954%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e2549925947%_)))
                                                        (_%$%hd2550025951%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e2549925947%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2550125954%_)
                                                        (_%__match2722227223%_
                                                         _%$%e2548425921%_
                                                         _%$%hd2548525925%_
                                                         _%$%tl2548625928%_
                                                         _%$%e2548725931%_
                                                         _%$%hd2548825935%_
                                                         _%$%tl2548925938%_
                                                         _%__splice2718027181%_
                                                         _%$%target2549025941%_
                                                         _%$%tl2549225944%_
                                                         _%$%e2549925947%_
                                                         _%$%hd2550025951%_
                                                         _%$%tl2550125954%_)
                                                        (let ((_%__splice2718427185%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl2548925938%_
                                                                '0)))
                                                          (let ((_%$%tl2551225798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2718427185%_ '1)))
                        (_%$%target2551025795%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2718427185%_ '0))))
                    (if (gx#stx-null? _%$%tl2551225798%_)
                        (_%__match2724227243%_
                         _%$%e2548425921%_
                         _%$%hd2548525925%_
                         _%$%tl2548625928%_
                         _%$%e2548725931%_
                         _%$%hd2548825935%_
                         _%$%tl2548925938%_
                         _%__splice2718427185%_
                         _%$%target2551025795%_
                         _%$%tl2551225798%_)
                        (if (gx#stx-pair? _%$%tl2548925938%_)
                            (let ((_%$%e2552825691%_
                                   (gx#syntax-e _%$%tl2548925938%_)))
                              (let ((_%$%tl2553025698%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2552825691%_)))
                                    (_%$%hd2552925695%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2552825691%_))))
                                (if (gx#stx-pair/null? _%$%tl2553025698%_)
                                    (let ((_%__splice2718827189%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl2553025698%_
                                            '0)))
                                      (let ((_%$%tl2553325704%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2718827189%_
                                                '1)))
                                            (_%$%target2553125701%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2718827189%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl2553325704%_)
                                            (_%__match2726827269%_
                                             _%$%e2548425921%_
                                             _%$%hd2548525925%_
                                             _%$%tl2548625928%_
                                             _%$%e2548725931%_
                                             _%$%hd2548825935%_
                                             _%$%tl2548925938%_
                                             _%$%e2552825691%_
                                             _%$%hd2552925695%_
                                             _%$%tl2553025698%_
                                             _%__splice2718827189%_
                                             _%$%target2553125701%_
                                             _%$%tl2553325704%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g2547925566%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2547925566%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2547925566%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2718427185%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl2548925938%_
                                                        '0)))
                                                  (let ((_%$%tl2551225798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2718427185%_
                                                            '1)))
                                                        (_%$%target2551025795%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2718427185%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2551225798%_)
                                                        (_%__match2724227243%_
                                                         _%$%e2548425921%_
                                                         _%$%hd2548525925%_
                                                         _%$%tl2548625928%_
                                                         _%$%e2548725931%_
                                                         _%$%hd2548825935%_
                                                         _%$%tl2548925938%_
                                                         _%__splice2718427185%_
                                                         _%$%target2551025795%_
                                                         _%$%tl2551225798%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl2548925938%_)
                                                            (let ((_%$%e2552825691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl2548925938%_)))
                      (let ((_%$%tl2553025698%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2552825691%_)))
                            (_%$%hd2552925695%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2552825691%_))))
                        (if (gx#stx-pair/null? _%$%tl2553025698%_)
                            (let ((_%__splice2718827189%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl2553025698%_
                                    '0)))
                              (let ((_%$%tl2553325704%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2718827189%_
                                        '1)))
                                    (_%$%target2553125701%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2718827189%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl2553325704%_)
                                    (_%__match2726827269%_
                                     _%$%e2548425921%_
                                     _%$%hd2548525925%_
                                     _%$%tl2548625928%_
                                     _%$%e2548725931%_
                                     _%$%hd2548825935%_
                                     _%$%tl2548925938%_
                                     _%$%e2552825691%_
                                     _%$%hd2552925695%_
                                     _%$%tl2553025698%_
                                     _%__splice2718827189%_
                                     _%$%target2553125701%_
                                     _%$%tl2553325704%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2547925566%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2547925566%_)))))
                    (let () (declare (not safe)) (_%$%g2547925566%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2718427185%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl2548925938%_
                                                '0)))
                                          (let ((_%$%tl2551225798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2718427185%_
                                                    '1)))
                                                (_%$%target2551025795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2718427185%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl2551225798%_)
                                                (_%__match2724227243%_
                                                 _%$%e2548425921%_
                                                 _%$%hd2548525925%_
                                                 _%$%tl2548625928%_
                                                 _%$%e2548725931%_
                                                 _%$%hd2548825935%_
                                                 _%$%tl2548925938%_
                                                 _%__splice2718427185%_
                                                 _%$%target2551025795%_
                                                 _%$%tl2551225798%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl2548925938%_)
                                                    (let ((_%$%e2552825691%_
                                                           (gx#syntax-e
                                                            _%$%tl2548925938%_)))
                                                      (let ((_%$%tl2553025698%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e2552825691%_)))
                    (_%$%hd2552925695%_
                     (let () (declare (not safe)) (##car _%$%e2552825691%_))))
                (if (gx#stx-pair/null? _%$%tl2553025698%_)
                    (let ((_%__splice2718827189%_
                           (gx#syntax-split-splice->vector
                            _%$%tl2553025698%_
                            '0)))
                      (let ((_%$%tl2553325704%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2718827189%_ '1)))
                            (_%$%target2553125701%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2718827189%_ '0))))
                        (if (gx#stx-null? _%$%tl2553325704%_)
                            (_%__match2726827269%_
                             _%$%e2548425921%_
                             _%$%hd2548525925%_
                             _%$%tl2548625928%_
                             _%$%e2548725931%_
                             _%$%hd2548825935%_
                             _%$%tl2548925938%_
                             _%$%e2552825691%_
                             _%$%hd2552925695%_
                             _%$%tl2553025698%_
                             _%__splice2718827189%_
                             _%$%target2553125701%_
                             _%$%tl2553325704%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g2547925566%_)))))
                    (let () (declare (not safe)) (_%$%g2547925566%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g2547925566%_)))))))
                                    (if (gx#stx-pair? _%$%tl2548925938%_)
                                        (let ((_%$%e2552825691%_
                                               (gx#syntax-e
                                                _%$%tl2548925938%_)))
                                          (let ((_%$%tl2553025698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2552825691%_)))
                                                (_%$%hd2552925695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2552825691%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl2553025698%_)
                                                (let ((_%__splice2718827189%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl2553025698%_
                                                        '0)))
                                                  (let ((_%$%tl2553325704%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2718827189%_
                                                            '1)))
                                                        (_%$%target2553125701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2718827189%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2553325704%_)
                                                        (_%__match2726827269%_
                                                         _%$%e2548425921%_
                                                         _%$%hd2548525925%_
                                                         _%$%tl2548625928%_
                                                         _%$%e2548725931%_
                                                         _%$%hd2548825935%_
                                                         _%$%tl2548925938%_
                                                         _%$%e2552825691%_
                                                         _%$%hd2552925695%_
                                                         _%$%tl2553025698%_
                                                         _%__splice2718827189%_
                                                         _%$%target2553125701%_
                                                         _%$%tl2553325704%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g2547925566%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g2547925566%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g2547925566%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2547925566%_)))))
                    (let () (declare (not safe)) (_%$%g2547925566%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26110%_)
        (let* ((_%__stx2729727298%_ _%$stx26110%_)
               (_%$%g2611526155%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2729727298%_))))
          (let ((_%__kont2730027301%_
                 (lambda (_%$%g2611726291%_ _%$%g2611826293%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%$%g2611826293%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g2611726291%_ '()))
                                     '())))))
                (_%__kont2730227303%_
                 (lambda (_%$%g2612826220%_
                          _%$%g2612926222%_
                          _%$%g2613026223%_
                          _%$%g2613126224%_)
                   (cons _%$%g2613126224%_
                         (cons (cons _%$%g2613126224%_
                                     (cons _%$%g2613026223%_
                                           (cons _%$%g2612926222%_ '())))
                               (foldr (lambda (_%$%g2624526248%_
                                               _%$%g2624626251%_)
                                        (cons _%$%g2624526248%_
                                              _%$%g2624626251%_))
                                      '()
                                      _%$%g2612826220%_))))))
            (let* ((_%__match2735227353%_
                    (lambda (_%$%e2613226162%_
                             _%$%hd2613326166%_
                             _%$%tl2613426169%_
                             _%$%e2613526172%_
                             _%$%hd2613626176%_
                             _%$%tl2613726179%_
                             _%$%e2613826182%_
                             _%$%hd2613926186%_
                             _%$%tl2614026189%_
                             _%__splice2730427305%_
                             _%$%target2614126192%_
                             _%$%tl2614326195%_)
                      (letrec ((_%$%loop2614426198%_
                                (lambda (_%$%hd2614226202%_
                                         _%$%rest2614826205%_)
                                  (if (gx#stx-pair? _%$%hd2614226202%_)
                                      (let ((_%$%e2614526207%_
                                             (gx#syntax-e _%$%hd2614226202%_)))
                                        (let ((_%$%lp-tl2614726214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2614526207%_)))
                                              (_%$%lp-hd2614626211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2614526207%_))))
                                          (_%$%loop2614426198%_
                                           _%$%lp-tl2614726214%_
                                           (cons _%$%lp-hd2614626211%_
                                                 _%$%rest2614826205%_))))
                                      (let ((_%$%rest2614926217%_
                                             (reverse _%$%rest2614826205%_)))
                                        (_%__kont2730227303%_
                                         _%$%rest2614926217%_
                                         _%$%hd2613926186%_
                                         _%$%hd2613626176%_
                                         _%$%hd2613326166%_))))))
                        (_%$%loop2614426198%_ _%$%target2614126192%_ '()))))
                   (_%__match2732627327%_
                    (lambda (_%$%e2611926261%_
                             _%$%hd2612026265%_
                             _%$%tl2612126268%_
                             _%$%e2612226271%_
                             _%$%hd2612326275%_
                             _%$%tl2612426278%_
                             _%$%e2612526281%_
                             _%$%hd2612626285%_
                             _%$%tl2612726288%_)
                      (let ((_%$%g2611726291%_ _%$%hd2612626285%_)
                            (_%$%g2611826293%_ _%$%hd2612326275%_))
                        (if (gx#identifier? _%$%g2611726291%_)
                            (_%__kont2730027301%_
                             _%$%g2611726291%_
                             _%$%g2611826293%_)
                            (if (gx#stx-pair/null? _%$%tl2612726288%_)
                                (let ((_%__splice2730427305%_
                                       (gx#syntax-split-splice->vector
                                        _%$%tl2612726288%_
                                        '0)))
                                  (let ((_%$%tl2614326195%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2730427305%_
                                            '1)))
                                        (_%$%target2614126192%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2730427305%_
                                            '0))))
                                    (if (gx#stx-null? _%$%tl2614326195%_)
                                        (_%__match2735227353%_
                                         _%$%e2611926261%_
                                         _%$%hd2612026265%_
                                         _%$%tl2612126268%_
                                         _%$%e2612226271%_
                                         _%$%hd2612326275%_
                                         _%$%tl2612426278%_
                                         _%$%e2612526281%_
                                         _%$%hd2612626285%_
                                         _%$%tl2612726288%_
                                         _%__splice2730427305%_
                                         _%$%target2614126192%_
                                         _%$%tl2614326195%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g2611526155%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g2611526155%_))))))))
              (if (gx#stx-pair? _%__stx2729727298%_)
                  (let ((_%$%e2611926261%_ (gx#syntax-e _%__stx2729727298%_)))
                    (let ((_%$%tl2612126268%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e2611926261%_)))
                          (_%$%hd2612026265%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e2611926261%_))))
                      (if (gx#stx-pair? _%$%tl2612126268%_)
                          (let ((_%$%e2612226271%_
                                 (gx#syntax-e _%$%tl2612126268%_)))
                            (let ((_%$%tl2612426278%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2612226271%_)))
                                  (_%$%hd2612326275%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2612226271%_))))
                              (if (gx#stx-pair? _%$%tl2612426278%_)
                                  (let ((_%$%e2612526281%_
                                         (gx#syntax-e _%$%tl2612426278%_)))
                                    (let ((_%$%tl2612726288%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2612526281%_)))
                                          (_%$%hd2612626285%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2612526281%_))))
                                      (if (gx#stx-null? _%$%tl2612726288%_)
                                          (_%__match2732627327%_
                                           _%$%e2611926261%_
                                           _%$%hd2612026265%_
                                           _%$%tl2612126268%_
                                           _%$%e2612226271%_
                                           _%$%hd2612326275%_
                                           _%$%tl2612426278%_
                                           _%$%e2612526281%_
                                           _%$%hd2612626285%_
                                           _%$%tl2612726288%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl2612726288%_)
                                              (let ((_%__splice2730427305%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl2612726288%_
                                                      '0)))
                                                (let ((_%$%tl2614326195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2730427305%_
                                                          '1)))
                                                      (_%$%target2614126192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2730427305%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2614326195%_)
                                                      (_%__match2735227353%_
                                                       _%$%e2611926261%_
                                                       _%$%hd2612026265%_
                                                       _%$%tl2612126268%_
                                                       _%$%e2612226271%_
                                                       _%$%hd2612326275%_
                                                       _%$%tl2612426278%_
                                                       _%$%e2612526281%_
                                                       _%$%hd2612626285%_
                                                       _%$%tl2612726288%_
                                                       _%__splice2730427305%_
                                                       _%$%target2614126192%_
                                                       _%$%tl2614326195%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g2611526155%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g2611526155%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g2611526155%_)))))
                          (let () (declare (not safe)) (_%$%g2611526155%_)))))
                  (let () (declare (not safe)) (_%$%g2611526155%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26313%_)
        (let* ((_%__stx2735527356%_ _%$stx26313%_)
               (_%$%g2631826370%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2735527356%_))))
          (let ((_%__kont2735827359%_
                 (lambda (_%$%g2632026544%_
                          _%$%g2632126546%_
                          _%$%g2632226547%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%$%g2632226547%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g2632126546%_ '()))
                                     (cons _%$%g2632026544%_ '()))))))
                (_%__kont2736027361%_
                 (lambda (_%$%g2633526455%_
                          _%$%g2633626457%_
                          _%$%g2633726458%_
                          _%$%g2633826459%_
                          _%$%g2633926460%_
                          _%$%g2634026461%_)
                   (cons _%$%g2634026461%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%$%g2633926460%_
                                           (cons _%$%g2633826459%_
                                                 (foldr (lambda (_%$%g2648826491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g2648926494%_)
                  (cons _%$%g2648826491%_ _%$%g2648926494%_))
                '()
                _%$%g2633726458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g2633626457%_
                                     (cons _%$%g2633526455%_ '())))))))
            (let* ((_%__match2743027431%_
                    (lambda (_%$%e2634126377%_
                             _%$%hd2634226381%_
                             _%$%tl2634326384%_
                             _%$%e2634426387%_
                             _%$%hd2634526391%_
                             _%$%tl2634626394%_
                             _%$%e2634726397%_
                             _%$%hd2634826401%_
                             _%$%tl2634926404%_
                             _%__splice2736227363%_
                             _%$%target2635026407%_
                             _%$%tl2635226410%_
                             _%$%e2635926413%_
                             _%$%hd2636026417%_
                             _%$%tl2636126420%_
                             _%$%e2636226423%_
                             _%$%hd2636326427%_
                             _%$%tl2636426430%_)
                      (letrec ((_%$%loop2635326433%_
                                (lambda (_%$%hd2635126437%_
                                         _%$%path2635726440%_)
                                  (if (gx#stx-pair? _%$%hd2635126437%_)
                                      (let ((_%$%e2635426442%_
                                             (gx#syntax-e _%$%hd2635126437%_)))
                                        (let ((_%$%lp-tl2635626449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2635426442%_)))
                                              (_%$%lp-hd2635526446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2635426442%_))))
                                          (_%$%loop2635326433%_
                                           _%$%lp-tl2635626449%_
                                           (cons _%$%lp-hd2635526446%_
                                                 _%$%path2635726440%_))))
                                      (let ((_%$%path2635826452%_
                                             (reverse _%$%path2635726440%_)))
                                        (_%__kont2736027361%_
                                         _%$%hd2636326427%_
                                         _%$%hd2636026417%_
                                         _%$%path2635826452%_
                                         _%$%hd2634826401%_
                                         _%$%hd2634526391%_
                                         _%$%hd2634226381%_))))))
                        (_%$%loop2635326433%_ _%$%target2635026407%_ '()))))
                   (_%__match2739027391%_
                    (lambda (_%$%e2632326504%_
                             _%$%hd2632426508%_
                             _%$%tl2632526511%_
                             _%$%e2632626514%_
                             _%$%hd2632726518%_
                             _%$%tl2632826521%_
                             _%$%e2632926524%_
                             _%$%hd2633026528%_
                             _%$%tl2633126531%_
                             _%$%e2633226534%_
                             _%$%hd2633326538%_
                             _%$%tl2633426541%_)
                      (let ((_%$%g2632026544%_ _%$%hd2633326538%_)
                            (_%$%g2632126546%_ _%$%hd2633026528%_)
                            (_%$%g2632226547%_ _%$%hd2632726518%_))
                        (if (gx#identifier? _%$%g2632126546%_)
                            (_%__kont2735827359%_
                             _%$%g2632026544%_
                             _%$%g2632126546%_
                             _%$%g2632226547%_)
                            (if (gx#stx-pair/null? _%$%tl2633126531%_)
                                (if (let ((__tmp27714
                                           (gx#stx-length _%$%tl2633126531%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27714 '2))
                                    (let ((_%__splice2736227363%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl2633126531%_
                                            '2)))
                                      (let ((_%$%tl2635226410%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2736227363%_
                                                '1)))
                                            (_%$%target2635026407%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2736227363%_
                                                '0))))
                                        (if (gx#stx-pair? _%$%tl2635226410%_)
                                            (let ((_%$%e2635926413%_
                                                   (gx#syntax-e
                                                    _%$%tl2635226410%_)))
                                              (let ((_%$%tl2636126420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2635926413%_)))
                                                    (_%$%hd2636026417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2635926413%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl2636126420%_)
                                                    (let ((_%$%e2636226423%_
                                                           (gx#syntax-e
                                                            _%$%tl2636126420%_)))
                                                      (let ((_%$%tl2636426430%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e2636226423%_)))
                    (_%$%hd2636326427%_
                     (let () (declare (not safe)) (##car _%$%e2636226423%_))))
                (if (gx#stx-null? _%$%tl2636426430%_)
                    (_%__match2743027431%_
                     _%$%e2632326504%_
                     _%$%hd2632426508%_
                     _%$%tl2632526511%_
                     _%$%e2632626514%_
                     _%$%hd2632726518%_
                     _%$%tl2632826521%_
                     _%$%e2632926524%_
                     _%$%hd2633026528%_
                     _%$%tl2633126531%_
                     _%__splice2736227363%_
                     _%$%target2635026407%_
                     _%$%tl2635226410%_
                     _%$%e2635926413%_
                     _%$%hd2636026417%_
                     _%$%tl2636126420%_
                     _%$%e2636226423%_
                     _%$%hd2636326427%_
                     _%$%tl2636426430%_)
                    (let () (declare (not safe)) (_%$%g2631826370%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g2631826370%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g2631826370%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2631826370%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g2631826370%_))))))))
              (if (gx#stx-pair? _%__stx2735527356%_)
                  (let ((_%$%e2632326504%_ (gx#syntax-e _%__stx2735527356%_)))
                    (let ((_%$%tl2632526511%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e2632326504%_)))
                          (_%$%hd2632426508%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e2632326504%_))))
                      (if (gx#stx-pair? _%$%tl2632526511%_)
                          (let ((_%$%e2632626514%_
                                 (gx#syntax-e _%$%tl2632526511%_)))
                            (let ((_%$%tl2632826521%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2632626514%_)))
                                  (_%$%hd2632726518%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2632626514%_))))
                              (if (gx#stx-pair? _%$%tl2632826521%_)
                                  (let ((_%$%e2632926524%_
                                         (gx#syntax-e _%$%tl2632826521%_)))
                                    (let ((_%$%tl2633126531%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2632926524%_)))
                                          (_%$%hd2633026528%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2632926524%_))))
                                      (if (gx#stx-pair? _%$%tl2633126531%_)
                                          (let ((_%$%e2633226534%_
                                                 (gx#syntax-e
                                                  _%$%tl2633126531%_)))
                                            (let ((_%$%tl2633426541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e2633226534%_)))
                                                  (_%$%hd2633326538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e2633226534%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl2633426541%_)
                                                  (_%__match2739027391%_
                                                   _%$%e2632326504%_
                                                   _%$%hd2632426508%_
                                                   _%$%tl2632526511%_
                                                   _%$%e2632626514%_
                                                   _%$%hd2632726518%_
                                                   _%$%tl2632826521%_
                                                   _%$%e2632926524%_
                                                   _%$%hd2633026528%_
                                                   _%$%tl2633126531%_
                                                   _%$%e2633226534%_
                                                   _%$%hd2633326538%_
                                                   _%$%tl2633426541%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl2633126531%_)
                                                      (if (let ((__tmp27715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%$%tl2633126531%_)))
                    (declare (not safe))
                    (##fx>= __tmp27715 '2))
                  (let ((_%__splice2736227363%_
                         (gx#syntax-split-splice->vector
                          _%$%tl2633126531%_
                          '2)))
                    (let ((_%$%tl2635226410%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2736227363%_ '1)))
                          (_%$%target2635026407%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2736227363%_ '0))))
                      (if (gx#stx-pair? _%$%tl2635226410%_)
                          (let ((_%$%e2635926413%_
                                 (gx#syntax-e _%$%tl2635226410%_)))
                            (let ((_%$%tl2636126420%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2635926413%_)))
                                  (_%$%hd2636026417%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2635926413%_))))
                              (if (gx#stx-pair? _%$%tl2636126420%_)
                                  (let ((_%$%e2636226423%_
                                         (gx#syntax-e _%$%tl2636126420%_)))
                                    (let ((_%$%tl2636426430%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2636226423%_)))
                                          (_%$%hd2636326427%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2636226423%_))))
                                      (if (gx#stx-null? _%$%tl2636426430%_)
                                          (_%__match2743027431%_
                                           _%$%e2632326504%_
                                           _%$%hd2632426508%_
                                           _%$%tl2632526511%_
                                           _%$%e2632626514%_
                                           _%$%hd2632726518%_
                                           _%$%tl2632826521%_
                                           _%$%e2632926524%_
                                           _%$%hd2633026528%_
                                           _%$%tl2633126531%_
                                           _%__splice2736227363%_
                                           _%$%target2635026407%_
                                           _%$%tl2635226410%_
                                           _%$%e2635926413%_
                                           _%$%hd2636026417%_
                                           _%$%tl2636126420%_
                                           _%$%e2636226423%_
                                           _%$%hd2636326427%_
                                           _%$%tl2636426430%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g2631826370%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g2631826370%_)))))
                          (let () (declare (not safe)) (_%$%g2631826370%_)))))
                  (let () (declare (not safe)) (_%$%g2631826370%_)))
              (let () (declare (not safe)) (_%$%g2631826370%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl2633126531%_)
                                              (if (let ((__tmp27716
                                                         (gx#stx-length
                                                          _%$%tl2633126531%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27716 '2))
                                                  (let ((_%__splice2736227363%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl2633126531%_
                                                          '2)))
                                                    (let ((_%$%tl2635226410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2736227363%_
                                                              '1)))
                                                          (_%$%target2635026407%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2736227363%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl2635226410%_)
                                                          (let ((_%$%e2635926413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl2635226410%_)))
                    (let ((_%$%tl2636126420%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e2635926413%_)))
                          (_%$%hd2636026417%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e2635926413%_))))
                      (if (gx#stx-pair? _%$%tl2636126420%_)
                          (let ((_%$%e2636226423%_
                                 (gx#syntax-e _%$%tl2636126420%_)))
                            (let ((_%$%tl2636426430%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2636226423%_)))
                                  (_%$%hd2636326427%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2636226423%_))))
                              (if (gx#stx-null? _%$%tl2636426430%_)
                                  (_%__match2743027431%_
                                   _%$%e2632326504%_
                                   _%$%hd2632426508%_
                                   _%$%tl2632526511%_
                                   _%$%e2632626514%_
                                   _%$%hd2632726518%_
                                   _%$%tl2632826521%_
                                   _%$%e2632926524%_
                                   _%$%hd2633026528%_
                                   _%$%tl2633126531%_
                                   _%__splice2736227363%_
                                   _%$%target2635026407%_
                                   _%$%tl2635226410%_
                                   _%$%e2635926413%_
                                   _%$%hd2636026417%_
                                   _%$%tl2636126420%_
                                   _%$%e2636226423%_
                                   _%$%hd2636326427%_
                                   _%$%tl2636426430%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g2631826370%_)))))
                          (let () (declare (not safe)) (_%$%g2631826370%_)))))
                  (let () (declare (not safe)) (_%$%g2631826370%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g2631826370%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g2631826370%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g2631826370%_)))))
                          (let () (declare (not safe)) (_%$%g2631826370%_)))))
                  (let () (declare (not safe)) (_%$%g2631826370%_))))))))))
