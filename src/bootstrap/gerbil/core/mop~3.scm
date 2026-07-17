(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g28634_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx25776%_)
        (letrec ((_%body-opt?25779%_
                  (lambda (_%key25782%_)
                    (let ((__tmp28599 (gx#stx-e _%key25782%_)))
                      (declare (not safe))
                      (##memq __tmp28599
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
          (gx#stx-plist? _%stx25776%_ _%body-opt?25779%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx23552%_
               _%id23554%_
               _%super-ref23555%_
               _%slots23556%_
               _%body23557%_)
        (letrec ((_%wrap23559%_
                  (lambda (_%e-stx25773%_)
                    (gx#stx-wrap-source
                     _%e-stx25773%_
                     (gx#stx-source _%stx23552%_))))
                 (_%make-id23561%_
                  (lambda _%args25770%_
                    (apply gx#stx-identifier _%id23554%_ _%args25770%_)))
                 (_%get-mixin-slots23562%_
                  (lambda (_%super25740%_ _%slots25742%_)
                    (letrec* ((_%tab25744%_ (make-hash-table-eq))
                              (_%dedup25746%_
                               (lambda (_%mixins25757%_)
                                 (let _%lp25760%_ ((_%rest25763%_
                                                    _%mixins25757%_)
                                                   (_%r25765%_ '()))
                                   (if (pair? _%rest25763%_)
                                       (let ((_%slot25767%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest25763%_))))
                                         (if (hash-get
                                              _%tab25744%_
                                              _%slot25767%_)
                                             (_%lp25760%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest25763%_))
                                              _%r25765%_)
                                             (begin
                                               (hash-put!
                                                _%tab25744%_
                                                _%slot25767%_
                                                '#t)
                                               (_%lp25760%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest25763%_))
                                                (cons _%slot25767%_
                                                      _%r25765%_)))))
                                       (reverse _%r25765%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot25748%_)
                         (hash-put! _%tab25744%_ (gx#stx-e _%slot25748%_) '#t))
                       _%slots25742%_)
                      (if (not _%super25740%_)
                          '()
                          (if (gx#identifier? _%super25740%_)
                              (_%dedup25746%_
                               (_%get-mixin-slots-r23563%_ _%super25740%_))
                              (_%dedup25746%_
                               (concatenate
                                (map _%get-mixin-slots-r23563%_
                                     _%super25740%_))))))))
                 (_%get-mixin-slots-r23563%_
                  (lambda (_%type-id25734%_)
                    (let ((_%info25737%_
                           (gx#syntax-local-value _%type-id25734%_)))
                      (let ((__tmp28601
                             (let ((__obj28352 _%info25737%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj28352
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj28352
                                      '6
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj28352
                                    'slots))))
                            (__tmp28600
                             (concatenate
                              (map _%get-mixin-slots-r23563%_
                                   (let ((__obj28353 _%info25737%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj28353
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj28353
                                            '5
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj28353
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp28601 __tmp28600))))))
          (gx#check-duplicate-identifiers _%slots23556%_ _%stx23552%_)
          (let* ((_%name23565%_ (symbol->string (gx#stx-e _%id23554%_)))
                 (_%super23568%_
                  (map gx#syntax-local-value _%super-ref23555%_))
                 (_%struct?23571%_ (gx#stx-getq 'struct: _%body23557%_))
                 (_%$%g2357423582%_
                  (lambda (_%$%g2357523578%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g2357523578%_)))
                 (_%$%g2357325730%_
                  (lambda (_%$%g2357523586%_)
                    (let* ((_%$%g2360523613%_
                            (lambda (_%$%g2360623609%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2360623609%_)))
                           (_%$%g2360425726%_
                            (lambda (_%$%g2360623617%_)
                              (let* ((_%$%g2363323641%_
                                      (lambda (_%$%g2363423637%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2363423637%_)))
                                     (_%$%g2363225722%_
                                      (lambda (_%$%g2363423645%_)
                                        (let* ((_%$%g2366123669%_
                                                (lambda (_%$%g2366223665%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2366223665%_)))
                                               (_%$%g2366025718%_
                                                (lambda (_%$%g2366223673%_)
                                                  (let* ((_%$%g2368923697%_
                                                          (lambda (_%$%g2369023693%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2369023693%_)))
                                                         (_%$%g2368825714%_
                                                          (lambda (_%$%g2369023701%_)
                                                            (let* ((_%$%g2371723734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2371823730%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2371823730%_)))
                           (_%$%g2371625710%_
                            (lambda (_%$%g2371823738%_)
                              (if (gx#stx-pair/null? _%$%g2371823738%_)
                                  (let ((_g28602_
                                         (gx#syntax-split-splice
                                          _%$%g2371823738%_
                                          '0)))
                                    (begin
                                      (let ((_g28603_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g28602_)
                                                   (##values-length _g28602_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g28603_ 2)))
                                            (error "Context expects 2 values"
                                                   _g28603_)))
                                      (let ((_%$%target2372023741%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28602_ 0)))
                                            (_%$%tl2372223744%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28602_ 1))))
                                        (if (gx#stx-null? _%$%tl2372223744%_)
                                            (letrec ((_%$%loop2372323747%_
                                                      (lambda (_%$%hd2372123751%_
                                                               _%$%slot2372723754%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2372123751%_)
                                                            (let ((_%$%e2372423756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2372123751%_)))
                      (let ((_%$%lp-hd2372523760%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2372423756%_)))
                            (_%$%lp-tl2372623763%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2372423756%_))))
                        (_%$%loop2372323747%_
                         _%$%lp-tl2372623763%_
                         (cons _%$%lp-hd2372523760%_ _%$%slot2372723754%_))))
                    (let* ((_%$%slot2372823766%_
                            (reverse _%$%slot2372723754%_))
                           (_%$%g2378623803%_
                            (lambda (_%$%g2378723799%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2378723799%_)))
                           (_%$%g2378525701%_
                            (lambda (_%$%g2378723807%_)
                              (if (gx#stx-pair/null? _%$%g2378723807%_)
                                  (let ((_g28604_
                                         (gx#syntax-split-splice
                                          _%$%g2378723807%_
                                          '0)))
                                    (begin
                                      (let ((_g28605_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g28604_)
                                                   (##values-length _g28604_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g28605_ 2)))
                                            (error "Context expects 2 values"
                                                   _g28605_)))
                                      (let ((_%$%target2378923810%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28604_ 0)))
                                            (_%$%tl2379123813%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28604_ 1))))
                                        (if (gx#stx-null? _%$%tl2379123813%_)
                                            (letrec ((_%$%loop2379223816%_
                                                      (lambda (_%$%hd2379023820%_
                                                               _%$%getf2379623823%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2379023820%_)
                                                            (let ((_%$%e2379323825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2379023820%_)))
                      (let ((_%$%lp-hd2379423829%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2379323825%_)))
                            (_%$%lp-tl2379523832%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2379323825%_))))
                        (_%$%loop2379223816%_
                         _%$%lp-tl2379523832%_
                         (cons _%$%lp-hd2379423829%_ _%$%getf2379623823%_))))
                    (let* ((_%$%getf2379723835%_
                            (reverse _%$%getf2379623823%_))
                           (_%$%g2385523872%_
                            (lambda (_%$%g2385623868%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2385623868%_)))
                           (_%$%g2385425692%_
                            (lambda (_%$%g2385623876%_)
                              (if (gx#stx-pair/null? _%$%g2385623876%_)
                                  (let ((_g28606_
                                         (gx#syntax-split-splice
                                          _%$%g2385623876%_
                                          '0)))
                                    (begin
                                      (let ((_g28607_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g28606_)
                                                   (##values-length _g28606_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g28607_ 2)))
                                            (error "Context expects 2 values"
                                                   _g28607_)))
                                      (let ((_%$%target2385823879%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28606_ 0)))
                                            (_%$%tl2386023882%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28606_ 1))))
                                        (if (gx#stx-null? _%$%tl2386023882%_)
                                            (letrec ((_%$%loop2386123885%_
                                                      (lambda (_%$%hd2385923889%_
                                                               _%$%setf2386523892%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2385923889%_)
                                                            (let ((_%$%e2386223894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2385923889%_)))
                      (let ((_%$%lp-hd2386323898%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2386223894%_)))
                            (_%$%lp-tl2386423901%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2386223894%_))))
                        (_%$%loop2386123885%_
                         _%$%lp-tl2386423901%_
                         (cons _%$%lp-hd2386323898%_ _%$%setf2386523892%_))))
                    (let* ((_%$%setf2386623904%_
                            (reverse _%$%setf2386523892%_))
                           (_%mixin-slots23924%_
                            (_%get-mixin-slots23562%_
                             _%super-ref23555%_
                             _%slots23556%_))
                           (_%$%g2392723944%_
                            (lambda (_%$%g2392823940%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2392823940%_)))
                           (_%$%g2392625688%_
                            (lambda (_%$%g2392823948%_)
                              (if (gx#stx-pair/null? _%$%g2392823948%_)
                                  (let ((_g28608_
                                         (gx#syntax-split-splice
                                          _%$%g2392823948%_
                                          '0)))
                                    (begin
                                      (let ((_g28609_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g28608_)
                                                   (##values-length _g28608_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g28609_ 2)))
                                            (error "Context expects 2 values"
                                                   _g28609_)))
                                      (let ((_%$%target2393023951%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28608_ 0)))
                                            (_%$%tl2393223954%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28608_ 1))))
                                        (if (gx#stx-null? _%$%tl2393223954%_)
                                            (letrec ((_%$%loop2393323957%_
                                                      (lambda (_%$%hd2393123961%_
                                                               _%$%mixin-slot2393723964%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2393123961%_)
                                                            (let ((_%$%e2393423966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2393123961%_)))
                      (let ((_%$%lp-hd2393523970%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2393423966%_)))
                            (_%$%lp-tl2393623973%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2393423966%_))))
                        (_%$%loop2393323957%_
                         _%$%lp-tl2393623973%_
                         (cons _%$%lp-hd2393523970%_
                               _%$%mixin-slot2393723964%_))))
                    (let* ((_%$%mixin-slot2393823976%_
                            (reverse _%$%mixin-slot2393723964%_))
                           (_%$%g2399724014%_
                            (lambda (_%$%g2399824010%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2399824010%_)))
                           (_%$%g2399625679%_
                            (lambda (_%$%g2399824018%_)
                              (if (gx#stx-pair/null? _%$%g2399824018%_)
                                  (let ((_g28610_
                                         (gx#syntax-split-splice
                                          _%$%g2399824018%_
                                          '0)))
                                    (begin
                                      (let ((_g28611_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g28610_)
                                                   (##values-length _g28610_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g28611_ 2)))
                                            (error "Context expects 2 values"
                                                   _g28611_)))
                                      (let ((_%$%target2400024021%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28610_ 0)))
                                            (_%$%tl2400224024%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28610_ 1))))
                                        (if (gx#stx-null? _%$%tl2400224024%_)
                                            (letrec ((_%$%loop2400324027%_
                                                      (lambda (_%$%hd2400124031%_
                                                               _%$%mixin-getf2400724034%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2400124031%_)
                                                            (let ((_%$%e2400424036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2400124031%_)))
                      (let ((_%$%lp-hd2400524040%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2400424036%_)))
                            (_%$%lp-tl2400624043%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2400424036%_))))
                        (_%$%loop2400324027%_
                         _%$%lp-tl2400624043%_
                         (cons _%$%lp-hd2400524040%_
                               _%$%mixin-getf2400724034%_))))
                    (let* ((_%$%mixin-getf2400824046%_
                            (reverse _%$%mixin-getf2400724034%_))
                           (_%$%g2406624083%_
                            (lambda (_%$%g2406724079%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2406724079%_)))
                           (_%$%g2406525670%_
                            (lambda (_%$%g2406724087%_)
                              (if (gx#stx-pair/null? _%$%g2406724087%_)
                                  (let ((_g28612_
                                         (gx#syntax-split-splice
                                          _%$%g2406724087%_
                                          '0)))
                                    (begin
                                      (let ((_g28613_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g28612_)
                                                   (##values-length _g28612_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g28613_ 2)))
                                            (error "Context expects 2 values"
                                                   _g28613_)))
                                      (let ((_%$%target2406924090%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28612_ 0)))
                                            (_%$%tl2407124093%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28612_ 1))))
                                        (if (gx#stx-null? _%$%tl2407124093%_)
                                            (letrec ((_%$%loop2407224096%_
                                                      (lambda (_%$%hd2407024100%_
                                                               _%$%mixin-setf2407624103%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2407024100%_)
                                                            (let ((_%$%e2407324105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2407024100%_)))
                      (let ((_%$%lp-hd2407424109%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2407324105%_)))
                            (_%$%lp-tl2407524112%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2407324105%_))))
                        (_%$%loop2407224096%_
                         _%$%lp-tl2407524112%_
                         (cons _%$%lp-hd2407424109%_
                               _%$%mixin-setf2407624103%_))))
                    (let* ((_%$%mixin-setf2407724115%_
                            (reverse _%$%mixin-setf2407624103%_))
                           (_%$%g2413524152%_
                            (lambda (_%$%g2413624148%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2413624148%_)))
                           (_%$%g2413425653%_
                            (lambda (_%$%g2413624156%_)
                              (if (gx#stx-pair/null? _%$%g2413624156%_)
                                  (let ((_g28614_
                                         (gx#syntax-split-splice
                                          _%$%g2413624156%_
                                          '0)))
                                    (begin
                                      (let ((_g28615_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g28614_)
                                                   (##values-length _g28614_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g28615_ 2)))
                                            (error "Context expects 2 values"
                                                   _g28615_)))
                                      (let ((_%$%target2413824159%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28614_ 0)))
                                            (_%$%tl2414024162%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28614_ 1))))
                                        (if (gx#stx-null? _%$%tl2414024162%_)
                                            (letrec ((_%$%loop2414124165%_
                                                      (lambda (_%$%hd2413924169%_
                                                               _%$%ugetf2414524172%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2413924169%_)
                                                            (let ((_%$%e2414224174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2413924169%_)))
                      (let ((_%$%lp-hd2414324178%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2414224174%_)))
                            (_%$%lp-tl2414424181%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2414224174%_))))
                        (_%$%loop2414124165%_
                         _%$%lp-tl2414424181%_
                         (cons _%$%lp-hd2414324178%_ _%$%ugetf2414524172%_))))
                    (let* ((_%$%ugetf2414624184%_
                            (reverse _%$%ugetf2414524172%_))
                           (_%$%g2420424221%_
                            (lambda (_%$%g2420524217%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2420524217%_)))
                           (_%$%g2420325636%_
                            (lambda (_%$%g2420524225%_)
                              (if (gx#stx-pair/null? _%$%g2420524225%_)
                                  (let ((_g28616_
                                         (gx#syntax-split-splice
                                          _%$%g2420524225%_
                                          '0)))
                                    (begin
                                      (let ((_g28617_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g28616_)
                                                   (##values-length _g28616_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g28617_ 2)))
                                            (error "Context expects 2 values"
                                                   _g28617_)))
                                      (let ((_%$%target2420724228%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28616_ 0)))
                                            (_%$%tl2420924231%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28616_ 1))))
                                        (if (gx#stx-null? _%$%tl2420924231%_)
                                            (letrec ((_%$%loop2421024234%_
                                                      (lambda (_%$%hd2420824238%_
                                                               _%$%usetf2421424241%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2420824238%_)
                                                            (let ((_%$%e2421124243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2420824238%_)))
                      (let ((_%$%lp-hd2421224247%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2421124243%_)))
                            (_%$%lp-tl2421324250%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2421124243%_))))
                        (_%$%loop2421024234%_
                         _%$%lp-tl2421324250%_
                         (cons _%$%lp-hd2421224247%_ _%$%usetf2421424241%_))))
                    (let* ((_%$%usetf2421524253%_
                            (reverse _%$%usetf2421424241%_))
                           (_%$%g2427324290%_
                            (lambda (_%$%g2427424286%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2427424286%_)))
                           (_%$%g2427225619%_
                            (lambda (_%$%g2427424294%_)
                              (if (gx#stx-pair/null? _%$%g2427424294%_)
                                  (let ((_g28618_
                                         (gx#syntax-split-splice
                                          _%$%g2427424294%_
                                          '0)))
                                    (begin
                                      (let ((_g28619_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g28618_)
                                                   (##values-length _g28618_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g28619_ 2)))
                                            (error "Context expects 2 values"
                                                   _g28619_)))
                                      (let ((_%$%target2427624297%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28618_ 0)))
                                            (_%$%tl2427824300%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28618_ 1))))
                                        (if (gx#stx-null? _%$%tl2427824300%_)
                                            (letrec ((_%$%loop2427924303%_
                                                      (lambda (_%$%hd2427724307%_
                                                               _%$%mixin-ugetf2428324310%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2427724307%_)
                                                            (let ((_%$%e2428024312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2427724307%_)))
                      (let ((_%$%lp-hd2428124316%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2428024312%_)))
                            (_%$%lp-tl2428224319%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2428024312%_))))
                        (_%$%loop2427924303%_
                         _%$%lp-tl2428224319%_
                         (cons _%$%lp-hd2428124316%_
                               _%$%mixin-ugetf2428324310%_))))
                    (let* ((_%$%mixin-ugetf2428424322%_
                            (reverse _%$%mixin-ugetf2428324310%_))
                           (_%$%g2434224359%_
                            (lambda (_%$%g2434324355%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2434324355%_)))
                           (_%$%g2434125602%_
                            (lambda (_%$%g2434324363%_)
                              (if (gx#stx-pair/null? _%$%g2434324363%_)
                                  (let ((_g28620_
                                         (gx#syntax-split-splice
                                          _%$%g2434324363%_
                                          '0)))
                                    (begin
                                      (let ((_g28621_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g28620_)
                                                   (##values-length _g28620_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g28621_ 2)))
                                            (error "Context expects 2 values"
                                                   _g28621_)))
                                      (let ((_%$%target2434524366%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28620_ 0)))
                                            (_%$%tl2434724369%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28620_ 1))))
                                        (if (gx#stx-null? _%$%tl2434724369%_)
                                            (letrec ((_%$%loop2434824372%_
                                                      (lambda (_%$%hd2434624376%_
                                                               _%$%mixin-usetf2435224379%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2434624376%_)
                                                            (let ((_%$%e2434924381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2434624376%_)))
                      (let ((_%$%lp-hd2435024385%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2434924381%_)))
                            (_%$%lp-tl2435124388%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2434924381%_))))
                        (_%$%loop2434824372%_
                         _%$%lp-tl2435124388%_
                         (cons _%$%lp-hd2435024385%_
                               _%$%mixin-usetf2435224379%_))))
                    (let* ((_%$%mixin-usetf2435324391%_
                            (reverse _%$%mixin-usetf2435224379%_))
                           (_%type-slots24429%_
                            (if (gx#stx-null? _%slots23556%_)
                                '()
                                (cons 'slots:
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _%$%setf2386623904%_
                                               _%$%getf2379723835%_
                                               _%$%slot2372823766%_)
                                              (foldr (lambda (_%$%g2441424419%_
                                                              _%$%g2441524422%_
                                                              _%$%g2441624424%_
                                                              _%$%g2441724426%_)
                                                       (cons (cons _%$%g2441624424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g2441524422%_
                                 (cons _%$%g2441424419%_ '())))
                     _%$%g2441724426%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _%$%setf2386623904%_
                                                     _%$%getf2379723835%_
                                                     _%$%slot2372823766%_))
                                            '()))))
                           (_%type-mixin-slots24450%_
                            (if (gx#stx-null? _%mixin-slots23924%_)
                                '()
                                (cons 'mixin:
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _%$%mixin-setf2407724115%_
                                               _%$%mixin-getf2400824046%_
                                               _%$%mixin-slot2393823976%_)
                                              (foldr (lambda (_%$%g2443524440%_
                                                              _%$%g2443624443%_
                                                              _%$%g2443724445%_
                                                              _%$%g2443824447%_)
                                                       (cons (cons _%$%g2443724445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g2443624443%_
                                 (cons _%$%g2443524440%_ '())))
                     _%$%g2443824447%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _%$%mixin-setf2407724115%_
                                                     _%$%mixin-getf2400824046%_
                                                     _%$%mixin-slot2393823976%_))
                                            '()))))
                           (_%type-name24457%_
                            (cons 'name:
                                  (cons (let ((_%$e24453%_
                                               (gx#stx-getq
                                                'name:
                                                _%body23557%_)))
                                          (if _%$e24453%_
                                              _%$e24453%_
                                              _%id23554%_))
                                        '())))
                           (_%type-id24464%_
                            (cons 'id:
                                  (cons (let ((_%$e24460%_
                                               (gx#stx-getq
                                                'id:
                                                _%body23557%_)))
                                          (if _%$e24460%_
                                              _%$e24460%_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                                 _%$%g2357523586%_))))
                                        '())))
                           (_%type-constructor24478%_
                            (let ((_%$e24474%_
                                   (let ((_%$%e2446624468%_
                                          (gx#stx-getq
                                           'constructor:
                                           _%body23557%_)))
                                     (if _%$%e2446624468%_
                                         (let ((_%e24471%_ _%$%e2446624468%_))
                                           (cons 'constructor:
                                                 (cons _%e24471%_ '())))
                                         '#f))))
                              (if _%$e24474%_ _%$e24474%_ '())))
                           (_%properties24531%_
                            (let* ((_%properties24490%_
                                    (let ((_%$e24481%_
                                           (gx#stx-plist-assq
                                            'transparent:
                                            _%body23557%_)))
                                      (if _%$e24481%_
                                          (cons _%$e24481%_ '())
                                          '())))
                                   (_%properties24502%_
                                    (let ((_%$e24493%_
                                           (gx#stx-plist-assq
                                            'print:
                                            _%body23557%_)))
                                      (if _%$e24493%_
                                          (cons _%$e24493%_
                                                _%properties24490%_)
                                          _%properties24490%_)))
                                   (_%properties24514%_
                                    (let ((_%$e24505%_
                                           (gx#stx-plist-assq
                                            'equal:
                                            _%body23557%_)))
                                      (if _%$e24505%_
                                          (cons _%$e24505%_
                                                _%properties24502%_)
                                          _%properties24502%_)))
                                   (_%properties24526%_
                                    (let ((_%$e24517%_
                                           (gx#stx-plist-assq
                                            'acyclic:
                                            _%body23557%_)))
                                      (if _%$e24517%_
                                          (cons _%$e24517%_
                                                _%properties24514%_)
                                          _%properties24514%_))))
                              _%properties24526%_))
                           (_%type-properties24572%_
                            (if (null? _%properties24531%_)
                                '()
                                (let* ((_%$%g2453424542%_
                                        (lambda (_%$%g2453524538%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g2453524538%_)))
                                       (_%$%g2453324568%_
                                        (lambda (_%$%g2453524546%_)
                                          (cons 'properties:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%g2453524546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g2453324568%_ _%properties24531%_))))
                           (_%metaclass24584%_
                            (let ((_%$e24575%_
                                   (gx#stx-getq 'metaclass: _%body23557%_)))
                              (if _%$e24575%_
                                  (if (gx#identifier? _%$e24575%_)
                                      _%$e24575%_
                                      '#f)
                                  '#f)))
                           (_%type-metaclass24587%_
                            (if _%metaclass24584%_
                                (cons 'metaclass:
                                      (cons _%metaclass24584%_ '()))
                                '()))
                           (_%final?24590%_
                            (gx#stx-e (gx#stx-getq 'final: _%body23557%_)))
                           (_%type-struct24593%_
                            (cons 'struct: (cons _%struct?23571%_ '())))
                           (_%type-final24596%_
                            (cons 'final: (cons _%final?24590%_ '())))
                           (_%$%g2459924616%_
                            (lambda (_%$%g2460024612%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2460024612%_)))
                           (_%$%g2459825598%_
                            (lambda (_%$%g2460024620%_)
                              (if (gx#stx-pair/null? _%$%g2460024620%_)
                                  (let ((_g28622_
                                         (gx#syntax-split-splice
                                          _%$%g2460024620%_
                                          '0)))
                                    (begin
                                      (let ((_g28623_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g28622_)
                                                   (##values-length _g28622_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g28623_ 2)))
                                            (error "Context expects 2 values"
                                                   _g28623_)))
                                      (let ((_%$%target2460224623%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28622_ 0)))
                                            (_%$%tl2460424626%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g28622_ 1))))
                                        (if (gx#stx-null? _%$%tl2460424626%_)
                                            (letrec ((_%$%loop2460524629%_
                                                      (lambda (_%$%hd2460324633%_
                                                               _%$%type-body2460924636%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2460324633%_)
                                                            (let ((_%$%e2460624638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2460324633%_)))
                      (let ((_%$%lp-hd2460724642%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2460624638%_)))
                            (_%$%lp-tl2460824645%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2460624638%_))))
                        (_%$%loop2460524629%_
                         _%$%lp-tl2460824645%_
                         (cons _%$%lp-hd2460724642%_
                               _%$%type-body2460924636%_))))
                    (let* ((_%$%type-body2461024648%_
                            (reverse _%$%type-body2460924636%_))
                           (_%$%g2467224680%_
                            (lambda (_%$%g2467324676%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2467324676%_)))
                           (_%$%g2467125586%_
                            (lambda (_%$%g2467324684%_)
                              (let* ((_%$%g2470024708%_
                                      (lambda (_%$%g2470124704%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2470124704%_)))
                                     (_%$%g2469925515%_
                                      (lambda (_%$%g2470124712%_)
                                        (let* ((_%$%g2472824736%_
                                                (lambda (_%$%g2472924732%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2472924732%_)))
                                               (_%$%g2472725480%_
                                                (lambda (_%$%g2472924740%_)
                                                  (let* ((_%$%g2475624764%_
                                                          (lambda (_%$%g2475724760%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2475724760%_)))
                                                         (_%$%g2475525396%_
                                                          (lambda (_%$%g2475724768%_)
                                                            (let* ((_%$%g2478424792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2478524788%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2478524788%_)))
                           (_%$%g2478325384%_
                            (lambda (_%$%g2478524796%_)
                              (let* ((_%$%g2481224820%_
                                      (lambda (_%$%g2481324816%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2481324816%_)))
                                     (_%$%g2481125380%_
                                      (lambda (_%$%g2481324824%_)
                                        (let* ((_%$%g2484024848%_
                                                (lambda (_%$%g2484124844%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2484124844%_)))
                                               (_%$%g2483925376%_
                                                (lambda (_%$%g2484124852%_)
                                                  (let* ((_%$%g2486824876%_
                                                          (lambda (_%$%g2486924872%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2486924872%_)))
                                                         (_%$%g2486725341%_
                                                          (lambda (_%$%g2486924880%_)
                                                            (let* ((_%$%g2489624904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2489724900%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2489724900%_)))
                           (_%$%g2489525270%_
                            (lambda (_%$%g2489724908%_)
                              (let* ((_%$%g2492424932%_
                                      (lambda (_%$%g2492524928%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2492524928%_)))
                                     (_%$%g2492325266%_
                                      (lambda (_%$%g2492524936%_)
                                        (let* ((_%$%g2495224960%_
                                                (lambda (_%$%g2495324956%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2495324956%_)))
                                               (_%$%g2495125262%_
                                                (lambda (_%$%g2495324964%_)
                                                  (let* ((_%$%g2498024988%_
                                                          (lambda (_%$%g2498124984%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2498124984%_)))
                                                         (_%$%g2497925258%_
                                                          (lambda (_%$%g2498124992%_)
                                                            (let* ((_%$%g2500825016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2500925012%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2500925012%_)))
                           (_%$%g2500725232%_
                            (lambda (_%$%g2500925020%_)
                              (let* ((_%$%g2503625044%_
                                      (lambda (_%$%g2503725040%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2503725040%_)))
                                     (_%$%g2503525206%_
                                      (lambda (_%$%g2503725048%_)
                                        (let* ((_%$%g2506425072%_
                                                (lambda (_%$%g2506525068%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2506525068%_)))
                                               (_%$%g2506325180%_
                                                (lambda (_%$%g2506525076%_)
                                                  (let* ((_%$%g2509225100%_
                                                          (lambda (_%$%g2509325096%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2509325096%_)))
                                                         (_%$%g2509125154%_
                                                          (lambda (_%$%g2509325104%_)
                                                            (let* ((_%$%g2512025128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2512125124%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2512125124%_)))
                           (_%$%g2511925150%_
                            (lambda (_%$%g2512125132%_)
                              (_%wrap23559%_
                               (cons (gx#datum->syntax '#f 'begin)
                                     (cons _%$%g2467324684%_
                                           (cons _%$%g2512125132%_ '())))))))
                      (_%$%g2511925150%_
                       (_%wrap23559%_
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _%$%g2357523586%_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type-info)
                                                (cons 'id:
                                                      (cons _%$%g2470124712%_
                                                            (cons 'name:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%g2472924740%_
                                (cons 'slots:
                                      (cons _%$%g2478524796%_
                                            (cons 'super:
                                                  (cons _%$%g2475724768%_
                                                        (cons 'struct?:
                                                              (cons _%$%g2481324824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons 'final?:
                                  (cons _%$%g2484124852%_
                                        (cons 'metaclass:
                                              (cons _%$%g2486924880%_
                                                    (cons 'constructor-method:
                                                          (cons _%$%g2489724908%_
                                                                (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%g2492524936%_
                                    (cons 'constructor:
                                          (cons _%$%g2495324964%_
                                                (cons 'predicate:
                                                      (cons _%$%g2498124992%_
                                                            (cons 'accessors:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%g2500925020%_
                                (cons 'mutators:
                                      (cons _%$%g2503725048%_
                                            (cons 'unchecked-accessors:
                                                  (cons _%$%g2506525076%_
                                                        (cons 'unchecked-mutators:
                                                              (cons _%$%g2509325104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2509125154%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (begin
                                                             (gx#syntax-check-splice-targets
                                                              _%$%usetf2421524253%_
                                                              _%$%slot2372823766%_)
                                                             (foldr (lambda (_%$%g2515725164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g2515825167%_
                                     _%$%g2515925169%_)
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%$%g2515825167%_
                                                            '()))
                                                (cons '::
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote-syntax)
                          (cons _%$%g2515725164%_ '()))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$%g2515925169%_))
                            (begin
                              (gx#syntax-check-splice-targets
                               _%$%mixin-usetf2435324391%_
                               _%$%mixin-slot2393823976%_)
                              (foldr (lambda (_%$%g2516025172%_
                                              _%$%g2516125175%_
                                              _%$%g2516225177%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%$%g2516125175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%$%g2516025172%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g2516225177%_))
                                     '()
                                     _%$%mixin-usetf2435324391%_
                                     _%$%mixin-slot2393823976%_))
                            _%$%usetf2421524253%_
                            _%$%slot2372823766%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2506325180%_
                                           (cons (gx#datum->syntax '#f '@list)
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _%$%ugetf2414624184%_
                                                    _%$%slot2372823766%_)
                                                   (foldr (lambda (_%$%g2518325190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g2518425193%_
                           _%$%g2518525195%_)
                    (cons (cons (gx#datum->syntax '#f '@list)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%$%g2518425193%_ '()))
                                      (cons '::
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%$%g2518325190%_
                                                              '()))
                                                  '()))))
                          _%$%g2518525195%_))
                  (begin
                    (gx#syntax-check-splice-targets
                     _%$%mixin-ugetf2428424322%_
                     _%$%mixin-slot2393823976%_)
                    (foldr (lambda (_%$%g2518625198%_
                                    _%$%g2518725201%_
                                    _%$%g2518825203%_)
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%$%g2518725201%_
                                                           '()))
                                               (cons '::
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _%$%g2518625198%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%g2518825203%_))
                           '()
                           _%$%mixin-ugetf2428424322%_
                           _%$%mixin-slot2393823976%_))
                  _%$%ugetf2414624184%_
                  _%$%slot2372823766%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%$%g2503525206%_
                                 (cons (gx#datum->syntax '#f '@list)
                                       (begin
                                         (gx#syntax-check-splice-targets
                                          _%$%setf2386623904%_
                                          _%$%slot2372823766%_)
                                         (foldr (lambda (_%$%g2520925216%_
                                                         _%$%g2521025219%_
                                                         _%$%g2521125221%_)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@list)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%$%g2521025219%_ '()))
                            (cons '::
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _%$%g2520925216%_ '()))
                                        '()))))
                _%$%g2521125221%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%mixin-setf2407724115%_
                                                   _%$%mixin-slot2393823976%_)
                                                  (foldr (lambda (_%$%g2521225224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g2521325227%_
                          _%$%g2521425229%_)
                   (cons (cons (gx#datum->syntax '#f '@list)
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g2521325227%_ '()))
                                     (cons '::
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _%$%g2521225224%_
                                                             '()))
                                                 '()))))
                         _%$%g2521425229%_))
                 '()
                 _%$%mixin-setf2407724115%_
                 _%$%mixin-slot2393823976%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%setf2386623904%_
                                                _%$%slot2372823766%_))))))))
                      (_%$%g2500725232%_
                       (cons (gx#datum->syntax '#f '@list)
                             (begin
                               (gx#syntax-check-splice-targets
                                _%$%getf2379723835%_
                                _%$%slot2372823766%_)
                               (foldr (lambda (_%$%g2523525242%_
                                               _%$%g2523625245%_
                                               _%$%g2523725247%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%$%g2523625245%_ '()))
                  (cons '::
                        (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                    (cons _%$%g2523525242%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%g2523725247%_))
                                      (begin
                                        (gx#syntax-check-splice-targets
                                         _%$%mixin-getf2400824046%_
                                         _%$%mixin-slot2393823976%_)
                                        (foldr (lambda (_%$%g2523825250%_
                                                        _%$%g2523925253%_
                                                        _%$%g2524025255%_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%g2523925253%_ '()))
                           (cons '::
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'quote-syntax)
                                             (cons _%$%g2523825250%_ '()))
                                       '()))))
               _%$%g2524025255%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%$%mixin-getf2400824046%_
                                               _%$%mixin-slot2393823976%_))
                                      _%$%getf2379723835%_
                                      _%$%slot2372823766%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2497925258%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax)
                                                           (cons _%$%g2366223673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2495125262%_
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _%$%g2363423645%_
                                                       '())))))))
                                (_%$%g2492325266%_
                                 (cons (gx#datum->syntax '#f 'quote-syntax)
                                       (cons _%$%g2360623617%_ '())))))))
                      (_%$%g2489525270%_
                       (if (null? _%type-constructor24478%_)
                           '#f
                           (let* ((_%$%g2527425289%_
                                   (lambda (_%$%g2527525285%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g2527525285%_)))
                                  (_%$%g2527325337%_
                                   (lambda (_%$%g2527525293%_)
                                     (if (gx#stx-pair? _%$%g2527525293%_)
                                         (let ((_%$%e2527725296%_
                                                (gx#syntax-e
                                                 _%$%g2527525293%_)))
                                           (let ((_%$%hd2527825300%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e2527725296%_)))
                                                 (_%$%tl2527925303%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e2527725296%_))))
                                             (if (gx#stx-datum?
                                                  _%$%hd2527825300%_)
                                                 (let ((_%$%e2528025306%_
                                                        (gx#stx-e
                                                         _%$%hd2527825300%_)))
                                                   (if (equal? _%$%e2528025306%_
                                                               'constructor:)
                                                       (if (gx#stx-pair?
                                                            _%$%tl2527925303%_)
                                                           (let ((_%$%e2528125310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%tl2527925303%_)))
                     (let ((_%$%hd2528225314%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e2528125310%_)))
                           (_%$%tl2528325317%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e2528125310%_))))
                       (if (gx#stx-null? _%$%tl2528325317%_)
                           (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%$%hd2528225314%_ '()))
                           (_%$%g2527425289%_ _%$%g2527525293%_))))
                   (_%$%g2527425289%_ _%$%g2527525293%_))
               (_%$%g2527425289%_ _%$%g2527525293%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g2527425289%_
                                                  _%$%g2527525293%_))))
                                         (_%$%g2527425289%_
                                          _%$%g2527525293%_)))))
                             (_%$%g2527325337%_
                              _%type-constructor24478%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2486725341%_
                                                     (if _%metaclass24584%_
                                                         (let* ((_%$%g2534525353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%g2534625349%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g2534625349%_)))
                        (_%$%g2534425372%_
                         (lambda (_%$%g2534625357%_)
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _%$%g2534625357%_ '())))))
                   (_%$%g2534425372%_ _%metaclass24584%_))
                 '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2483925376%_
                                           _%final?24590%_)))))
                                (_%$%g2481125380%_ _%struct?23571%_)))))
                      (_%$%g2478325384%_
                       (cons (gx#datum->syntax '#f 'quote)
                             (cons (foldr (lambda (_%$%g2538725390%_
                                                   _%$%g2538825393%_)
                                            (cons _%$%g2538725390%_
                                                  _%$%g2538825393%_))
                                          '()
                                          _%$%slot2372823766%_)
                                   '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2475525396%_
                                                     (let* ((_%$%g2540025417%_
                                                             (lambda (_%$%g2540125413%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%$%g2540125413%_)))
                                                            (_%$%g2539925476%_
                                                             (lambda (_%$%g2540125421%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g2540125421%_)
                           (let ((_g28624_
                                  (gx#syntax-split-splice
                                   _%$%g2540125421%_
                                   '0)))
                             (begin
                               (let ((_g28625_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g28624_)
                                            (##values-length _g28624_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g28625_ 2)))
                                     (error "Context expects 2 values"
                                            _g28625_)))
                               (let ((_%$%target2540325424%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g28624_ 0)))
                                     (_%$%tl2540525427%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g28624_ 1))))
                                 (if (gx#stx-null? _%$%tl2540525427%_)
                                     (letrec ((_%$%loop2540625430%_
                                               (lambda (_%$%hd2540425434%_
                                                        _%$%super-id2541025437%_)
                                                 (if (gx#stx-pair?
                                                      _%$%hd2540425434%_)
                                                     (let ((_%$%e2540725439%_
                                                            (gx#syntax-e
                                                             _%$%hd2540425434%_)))
                                                       (let ((_%$%lp-hd2540825443%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e2540725439%_)))
                     (_%$%lp-tl2540925446%_
                      (let () (declare (not safe)) (##cdr _%$%e2540725439%_))))
                 (_%$%loop2540625430%_
                  _%$%lp-tl2540925446%_
                  (cons _%$%lp-hd2540825443%_ _%$%super-id2541025437%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%super-id2541125449%_
                                                            (reverse _%$%super-id2541025437%_)))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (foldr (lambda (_%$%g2546725470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g2546825473%_)
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%$%g2546725470%_ '()))
                                    _%$%g2546825473%_))
                            '()
                            _%$%super-id2541125449%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%$%loop2540625430%_
                                        _%$%target2540325424%_
                                        '()))
                                     (_%$%g2540025417%_ _%$%g2540125421%_)))))
                           (_%$%g2540025417%_ _%$%g2540125421%_)))))
               (_%$%g2539925476%_ _%super-ref23555%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2472725480%_
                                           (let* ((_%$%g2548425492%_
                                                   (lambda (_%$%g2548525488%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g2548525488%_)))
                                                  (_%$%g2548325511%_
                                                   (lambda (_%$%g2548525496%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%$%g2548525496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g2548325511%_
                                              (cadr _%type-name24457%_))))))))
                                (_%$%g2469925515%_
                                 (let* ((_%$%g2551925534%_
                                         (lambda (_%$%g2552025530%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2552025530%_)))
                                        (_%$%g2551825582%_
                                         (lambda (_%$%g2552025538%_)
                                           (if (gx#stx-pair? _%$%g2552025538%_)
                                               (let ((_%$%e2552225541%_
                                                      (gx#syntax-e
                                                       _%$%g2552025538%_)))
                                                 (let ((_%$%hd2552325545%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2552225541%_)))
                                                       (_%$%tl2552425548%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2552225541%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2552325545%_)
                                                       (let ((_%$%e2552525551%_
                                                              (gx#stx-e
                                                               _%$%hd2552325545%_)))
                                                         (if (equal? _%$%e2552525551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'id:)
                     (if (gx#stx-pair? _%$%tl2552425548%_)
                         (let ((_%$%e2552625555%_
                                (gx#syntax-e _%$%tl2552425548%_)))
                           (let ((_%$%hd2552725559%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2552625555%_)))
                                 (_%$%tl2552825562%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2552625555%_))))
                             (if (gx#stx-null? _%$%tl2552825562%_)
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%hd2552725559%_ '()))
                                 (_%$%g2551925534%_ _%$%g2552025538%_))))
                         (_%$%g2551925534%_ _%$%g2552025538%_))
                     (_%$%g2551925534%_ _%$%g2552025538%_)))
               (_%$%g2551925534%_ _%$%g2552025538%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2551925534%_
                                                _%$%g2552025538%_)))))
                                   (_%$%g2551825582%_ _%type-id24464%_)))))))
                      (_%$%g2467125586%_
                       (_%wrap23559%_
                        (cons (gx#datum->syntax '#f 'defclass-type)
                              (cons _%$%g2360623617%_
                                    (cons _%$%g2369023701%_
                                          (cons _%$%g2363423645%_
                                                (cons _%$%g2366223673%_
                                                      (foldr (lambda (_%$%g2558925592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g2559025595%_)
                       (cons _%$%g2558925592%_ _%$%g2559025595%_))
                     '()
                     _%$%type-body2461024648%_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2460524629%_
                                               _%$%target2460224623%_
                                               '()))
                                            (_%$%g2459924616%_
                                             _%$%g2460024620%_)))))
                                  (_%$%g2459924616%_ _%$%g2460024620%_)))))
                      (_%$%g2459825598%_
                       (let ((__tmp28626
                              (let ((__tmp28627
                                     (let ((__tmp28628
                                            (let ((__tmp28629
                                                   (let ((__tmp28630
                                                          (let ((__tmp28631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp28632
                                (let ()
                                  (declare (not safe))
                                  (##append
                                   _%type-slots24429%_
                                   _%type-mixin-slots24450%_))))
                           (declare (not safe))
                           (##append _%type-properties24572%_ __tmp28632))))
                    (declare (not safe))
                    (##append _%type-metaclass24587%_ __tmp28631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##append
                                                      _%type-final24596%_
                                                      __tmp28630))))
                                              (declare (not safe))
                                              (##append
                                               _%type-struct24593%_
                                               __tmp28629))))
                                       (declare (not safe))
                                       (##append
                                        _%type-constructor24478%_
                                        __tmp28628))))
                                (declare (not safe))
                                (##append _%type-name24457%_ __tmp28627))))
                         (declare (not safe))
                         (##append _%type-id24464%_ __tmp28626))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2434824372%_
                                               _%$%target2434524366%_
                                               '()))
                                            (_%$%g2434224359%_
                                             _%$%g2434324363%_)))))
                                  (_%$%g2434224359%_ _%$%g2434324363%_)))))
                      (_%$%g2434125602%_
                       (gx#stx-map
                        (lambda (_%$%g2560525607%_)
                          (_%make-id23561%_ '"&" _%$%g2560525607%_))
                        (foldr (lambda (_%$%g2561025613%_ _%$%g2561125616%_)
                                 (cons _%$%g2561025613%_ _%$%g2561125616%_))
                               '()
                               _%$%mixin-setf2407724115%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2427924303%_
                                               _%$%target2427624297%_
                                               '()))
                                            (_%$%g2427324290%_
                                             _%$%g2427424294%_)))))
                                  (_%$%g2427324290%_ _%$%g2427424294%_)))))
                      (_%$%g2427225619%_
                       (gx#stx-map
                        (lambda (_%$%g2562225624%_)
                          (_%make-id23561%_ '"&" _%$%g2562225624%_))
                        (foldr (lambda (_%$%g2562725630%_ _%$%g2562825633%_)
                                 (cons _%$%g2562725630%_ _%$%g2562825633%_))
                               '()
                               _%$%mixin-getf2400824046%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2421024234%_
                                               _%$%target2420724228%_
                                               '()))
                                            (_%$%g2420424221%_
                                             _%$%g2420524225%_)))))
                                  (_%$%g2420424221%_ _%$%g2420524225%_)))))
                      (_%$%g2420325636%_
                       (gx#stx-map
                        (lambda (_%$%g2563925641%_)
                          (_%make-id23561%_ '"&" _%$%g2563925641%_))
                        (foldr (lambda (_%$%g2564425647%_ _%$%g2564525650%_)
                                 (cons _%$%g2564425647%_ _%$%g2564525650%_))
                               '()
                               _%$%setf2386623904%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2414124165%_
                                               _%$%target2413824159%_
                                               '()))
                                            (_%$%g2413524152%_
                                             _%$%g2413624156%_)))))
                                  (_%$%g2413524152%_ _%$%g2413624156%_)))))
                      (_%$%g2413425653%_
                       (gx#stx-map
                        (lambda (_%$%g2565625658%_)
                          (_%make-id23561%_ '"&" _%$%g2565625658%_))
                        (foldr (lambda (_%$%g2566125664%_ _%$%g2566225667%_)
                                 (cons _%$%g2566125664%_ _%$%g2566225667%_))
                               '()
                               _%$%getf2379723835%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2407224096%_
                                               _%$%target2406924090%_
                                               '()))
                                            (_%$%g2406624083%_
                                             _%$%g2406724087%_)))))
                                  (_%$%g2406624083%_ _%$%g2406724087%_)))))
                      (_%$%g2406525670%_
                       (gx#stx-map
                        (lambda (_%$%g2567325675%_)
                          (_%make-id23561%_
                           _%name23565%_
                           '"-"
                           _%$%g2567325675%_
                           '"-set!"))
                        _%mixin-slots23924%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2400324027%_
                                               _%$%target2400024021%_
                                               '()))
                                            (_%$%g2399724014%_
                                             _%$%g2399824018%_)))))
                                  (_%$%g2399724014%_ _%$%g2399824018%_)))))
                      (_%$%g2399625679%_
                       (gx#stx-map
                        (lambda (_%$%g2568225684%_)
                          (_%make-id23561%_
                           _%name23565%_
                           '"-"
                           _%$%g2568225684%_))
                        _%mixin-slots23924%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2393323957%_
                                               _%$%target2393023951%_
                                               '()))
                                            (_%$%g2392723944%_
                                             _%$%g2392823948%_)))))
                                  (_%$%g2392723944%_ _%$%g2392823948%_)))))
                      (_%$%g2392625688%_ _%mixin-slots23924%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2386123885%_
                                               _%$%target2385823879%_
                                               '()))
                                            (_%$%g2385523872%_
                                             _%$%g2385623876%_)))))
                                  (_%$%g2385523872%_ _%$%g2385623876%_)))))
                      (_%$%g2385425692%_
                       (gx#stx-map
                        (lambda (_%$%g2569525697%_)
                          (_%make-id23561%_
                           _%name23565%_
                           '"-"
                           _%$%g2569525697%_
                           '"-set!"))
                        _%slots23556%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2379223816%_
                                               _%$%target2378923810%_
                                               '()))
                                            (_%$%g2378623803%_
                                             _%$%g2378723807%_)))))
                                  (_%$%g2378623803%_ _%$%g2378723807%_)))))
                      (_%$%g2378525701%_
                       (gx#stx-map
                        (lambda (_%$%g2570425706%_)
                          (_%make-id23561%_
                           _%name23565%_
                           '"-"
                           _%$%g2570425706%_))
                        _%slots23556%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2372323747%_
                                               _%$%target2372023741%_
                                               '()))
                                            (_%$%g2371723734%_
                                             _%$%g2371823738%_)))))
                                  (_%$%g2371723734%_ _%$%g2371823738%_)))))
                      (_%$%g2371625710%_ _%slots23556%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2368825714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                                              _%super23568%_)))))))
                                          (_%$%g2366025718%_
                                           (_%make-id23561%_
                                            _%name23565%_
                                            '"?"))))))
                                (_%$%g2363225722%_
                                 (_%make-id23561%_ '"make-" _%name23565%_))))))
                      (_%$%g2360425726%_
                       (_%make-id23561%_ _%name23565%_ '"::t"))))))
            (_%$%g2357325730%_ _%id23554%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx25797%_)
        (let* ((_%$%g2580125820%_
                (lambda (_%$%g2580225816%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g2580225816%_)))
               (_%$%g2580025877%_
                (lambda (_%$%g2580225824%_)
                  (if (gx#stx-pair? _%$%g2580225824%_)
                      (let ((_%$%e2580625827%_
                             (gx#syntax-e _%$%g2580225824%_)))
                        (let ((_%$%hd2580725831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2580625827%_)))
                              (_%$%tl2580825834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2580625827%_))))
                          (if (gx#stx-pair? _%$%tl2580825834%_)
                              (let ((_%$%e2580925837%_
                                     (gx#syntax-e _%$%tl2580825834%_)))
                                (let ((_%$%hd2581025841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2580925837%_)))
                                      (_%$%tl2581125844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2580925837%_))))
                                  (if (gx#stx-pair? _%$%tl2581125844%_)
                                      (let ((_%$%e2581225847%_
                                             (gx#syntax-e _%$%tl2581125844%_)))
                                        (let ((_%$%hd2581325851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2581225847%_)))
                                              (_%$%tl2581425854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2581225847%_))))
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defclass)
                                                (cons _%$%hd2581025841%_
                                                      (cons _%$%hd2581325851%_
                                                            (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '#t _%$%tl2581425854%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g2580125820%_ _%$%g2580225824%_))))
                              (_%$%g2580125820%_ _%$%g2580225824%_))))
                      (_%$%g2580125820%_ _%$%g2580225824%_)))))
          (_%$%g2580025877%_ _%$stx25797%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx25881%_)
        (letrec ((_%generate25884%_
                  (lambda (_%hd25968%_ _%slots25970%_ _%body25971%_)
                    (let* ((_%__stx2807528076%_ _%hd25968%_)
                           (_%$%g2597425986%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2807528076%_))))
                      (let ((_%__kont2807828079%_
                             (lambda (_%$%g2597626014%_ _%$%g2597726016%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx25881%_
                                _%$%g2597726016%_
                                (gx#syntax->list _%$%g2597626014%_)
                                _%slots25970%_
                                _%body25971%_)))
                            (_%__kont2808028081%_
                             (lambda ()
                               (if (gx#identifier? _%hd25968%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx25881%_
                                    _%hd25968%_
                                    '()
                                    _%slots25970%_
                                    _%body25971%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx25881%_
                                    _%hd25968%_)))))
                        (let ((_%__match2808828089%_
                               (lambda (_%$%e2597826004%_
                                        _%$%hd2597926008%_
                                        _%$%tl2598026011%_)
                                 (let ((_%$%g2597626014%_ _%$%tl2598026011%_)
                                       (_%$%g2597726016%_ _%$%hd2597926008%_))
                                   (if (and (gx#stx-list? _%$%g2597626014%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%$%g2597626014%_))
                                       (_%__kont2807828079%_
                                        _%$%g2597626014%_
                                        _%$%g2597726016%_)
                                       (_%__kont2808028081%_))))))
                          (if (gx#stx-pair? _%__stx2807528076%_)
                              (let ((_%$%e2597826004%_
                                     (gx#syntax-e _%__stx2807528076%_)))
                                (let ((_%$%tl2598026011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2597826004%_)))
                                      (_%$%hd2597926008%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2597826004%_))))
                                  (_%__match2808828089%_
                                   _%$%e2597826004%_
                                   _%$%hd2597926008%_
                                   _%$%tl2598026011%_)))
                              (_%__kont2808028081%_))))))))
          (let* ((_%$%g2588725906%_
                  (lambda (_%$%g2588825902%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g2588825902%_)))
                 (_%$%g2588625964%_
                  (lambda (_%$%g2588825910%_)
                    (if (gx#stx-pair? _%$%g2588825910%_)
                        (let ((_%$%e2589225913%_
                               (gx#syntax-e _%$%g2588825910%_)))
                          (let ((_%$%hd2589325917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2589225913%_)))
                                (_%$%tl2589425920%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2589225913%_))))
                            (if (gx#stx-pair? _%$%tl2589425920%_)
                                (let ((_%$%e2589525923%_
                                       (gx#syntax-e _%$%tl2589425920%_)))
                                  (let ((_%$%hd2589625927%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2589525923%_)))
                                        (_%$%tl2589725930%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2589525923%_))))
                                    (if (gx#stx-pair? _%$%tl2589725930%_)
                                        (let ((_%$%e2589825933%_
                                               (gx#syntax-e
                                                _%$%tl2589725930%_)))
                                          (let ((_%$%hd2589925937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2589825933%_)))
                                                (_%$%tl2590025940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2589825933%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd2589925937%_)
                                                     (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                      _%$%tl2590025940%_))
                                                (_%generate25884%_
                                                 _%$%hd2589625927%_
                                                 _%$%hd2589925937%_
                                                 _%$%tl2590025940%_)
                                                (_%$%g2588725906%_
                                                 _%$%g2588825910%_))))
                                        (_%$%g2588725906%_
                                         _%$%g2588825910%_))))
                                (_%$%g2588725906%_ _%$%g2588825910%_))))
                        (_%$%g2588725906%_ _%$%g2588825910%_)))))
            (_%$%g2588625964%_ _%stx25881%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx26033%_)
        (letrec ((_%wrap26036%_
                  (lambda (_%e-stx26382%_)
                    (gx#stx-wrap-source
                     _%e-stx26382%_
                     (gx#stx-source _%stx26033%_))))
                 (_%method-opt?26038%_
                  (lambda (_%x26379%_)
                    (let ((__tmp28633 (gx#stx-e _%x26379%_)))
                      (declare (not safe))
                      (##memq __tmp28633 '(rebind:))))))
          (let* ((_%$%g2604026069%_
                  (lambda (_%$%g2604126065%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g2604126065%_)))
                 (_%$%g2603926375%_
                  (lambda (_%$%g2604126073%_)
                    (if (gx#stx-pair? _%$%g2604126073%_)
                        (let ((_%$%e2604626076%_
                               (gx#syntax-e _%$%g2604126073%_)))
                          (let ((_%$%hd2604726080%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2604626076%_)))
                                (_%$%tl2604826083%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2604626076%_))))
                            (if (gx#stx-pair? _%$%tl2604826083%_)
                                (let ((_%$%e2604926086%_
                                       (gx#syntax-e _%$%tl2604826083%_)))
                                  (let ((_%$%hd2605026090%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2604926086%_)))
                                        (_%$%tl2605126093%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2604926086%_))))
                                    (if (gx#stx-pair? _%$%hd2605026090%_)
                                        (let ((_%$%e2605226096%_
                                               (gx#syntax-e
                                                _%$%hd2605026090%_)))
                                          (let ((_%$%hd2605326100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2605226096%_)))
                                                (_%$%tl2605426103%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2605226096%_))))
                                            (if (gx#identifier?
                                                 _%$%hd2605326100%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g28634_|
                                                     _%$%hd2605326100%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl2605426103%_)
                                                        (let ((_%$%e2605526106%_
                                                               (gx#syntax-e
                                                                _%$%tl2605426103%_)))
                                                          (let ((_%$%hd2605626110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e2605526106%_)))
                        (_%$%tl2605726113%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e2605526106%_))))
                    (if (gx#stx-pair? _%$%tl2605726113%_)
                        (let ((_%$%e2605826116%_
                               (gx#syntax-e _%$%tl2605726113%_)))
                          (let ((_%$%hd2605926120%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2605826116%_)))
                                (_%$%tl2606026123%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2605826116%_))))
                            (if (gx#stx-null? _%$%tl2606026123%_)
                                (if (gx#stx-pair? _%$%tl2605126093%_)
                                    (let ((_%$%e2606126126%_
                                           (gx#syntax-e _%$%tl2605126093%_)))
                                      (let ((_%$%hd2606226130%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2606126126%_)))
                                            (_%$%tl2606326133%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2606126126%_))))
                                        (if (and (gx#identifier?
                                                  _%$%hd2605626110%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                    _%$%hd2605926120%_))
                                                 (gx#stx-plist?
                                                  _%$%tl2606326133%_
                                                  _%method-opt?26038%_))
                                            (let* ((_%klass26167%_
                                                    (gx#syntax-local-value
                                                     _%$%hd2605926120%_))
                                                   (_%rebind?26170%_
                                                    (gx#stx-e
                                                     (gx#stx-getq
                                                      'rebind:
                                                      _%$%tl2606326133%_)))
                                                   (_%$%g2617326181%_
                                                    (lambda (_%$%g2617426177%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g2617426177%_)))
                                                   (_%$%g2617226365%_
                                                    (lambda (_%$%g2617426185%_)
                                                      (let* ((_%$%g2620326211%_
                                                              (lambda (_%$%g2620426207%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g2620426207%_)))
                     (_%$%g2620226361%_
                      (lambda (_%$%g2620426215%_)
                        (let* ((_%$%g2623126239%_
                                (lambda (_%$%g2623226235%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g2623226235%_)))
                               (_%$%g2623026357%_
                                (lambda (_%$%g2623226243%_)
                                  (let* ((_%$%g2625926267%_
                                          (lambda (_%$%g2626026263%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g2626026263%_)))
                                         (_%$%g2625826353%_
                                          (lambda (_%$%g2626026271%_)
                                            (let* ((_%$%g2628726295%_
                                                    (lambda (_%$%g2628826291%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g2628826291%_)))
                                                   (_%$%g2628626349%_
                                                    (lambda (_%$%g2628826299%_)
                                                      (let* ((_%$%g2631526323%_
                                                              (lambda (_%$%g2631626319%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g2631626319%_)))
                     (_%$%g2631426345%_
                      (lambda (_%$%g2631626327%_)
                        (_%wrap26036%_
                         (cons (gx#datum->syntax '#f 'begin)
                               (cons _%$%g2626026271%_
                                     (cons _%$%g2631626327%_ '())))))))
                (_%$%g2631426345%_
                 (_%wrap26036%_
                  (cons (gx#datum->syntax '#f 'bind-method!)
                        (cons _%$%g2617426185%_
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _%$%hd2605626110%_ '()))
                                    (cons _%$%g2620426215%_
                                          (cons _%$%g2628826299%_
                                                '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2628626349%_
                                               _%rebind?26170%_)))))
                                    (_%$%g2625826353%_
                                     (_%wrap26036%_
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%g2620426215%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'let-syntax)
                                                              (cons (cons (cons _%$%g2623226243%_
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
                                          (cons _%$%g2617426185%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'obj)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%$%hd2605626110%_ '()))
                    (cons (gx#datum->syntax '#f 'arg)
                          (cons (gx#datum->syntax '#f '...) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '())
                            (cons _%$%hd2606226130%_ '())))
                '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (_%$%g2623026357%_
                           (gx#stx-identifier
                            _%$%hd2605926120%_
                            '@next-method))))))
                (_%$%g2620226361%_
                 (gx#stx-identifier
                  _%$%hd2605926120%_
                  _%$%hd2605926120%_
                  '"::"
                  _%$%hd2605626110%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2617226365%_
                                               (let ((__obj28354
                                                      _%klass26167%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj28354
                                                        'gerbil/core#runtime-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj28354
                                                        '3
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#runtime-type-info::t
                                                      __obj28354
                                                      'type-descriptor)))))
                                            (if (gx#identifier?
                                                 _%$%hd2605626110%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%$%hd2605926120%_))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"bad syntax; illegal method options"
                                                     _%stx26033%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"bad syntax; invalid class type"
                                                     _%stx26033%_
                                                     _%$%hd2605926120%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; expected method identifier"
                                                 _%stx26033%_
                                                 _%$%hd2605626110%_)))))
                                    (_%$%g2604026069%_ _%$%g2604126073%_))
                                (_%$%g2604026069%_ _%$%g2604126073%_))))
                        (_%$%g2604026069%_ _%$%g2604126073%_))))
                (_%$%g2604026069%_ _%$%g2604126073%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2604026069%_
                                                     _%$%g2604126073%_))
                                                (_%$%g2604026069%_
                                                 _%$%g2604126073%_))))
                                        (_%$%g2604026069%_
                                         _%$%g2604126073%_))))
                                (_%$%g2604026069%_ _%$%g2604126073%_))))
                        (_%$%g2604026069%_ _%$%g2604126073%_)))))
            (_%$%g2603926375%_ _%stx26033%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx26385%_)
        (letrec ((_%dotted-identifier?26388%_
                  (lambda (_%id27013%_)
                    (if (gx#identifier? _%id27013%_)
                        (let ((_%id-str27016%_
                               (symbol->string (gx#stx-e _%id27013%_))))
                          (if (string-index _%id-str27016%_ '#\.)
                              (let* ((_%split27019%_
                                      (string-split _%id-str27016%_ '#\.))
                                     (__tmp28635 (length _%split27019%_)))
                                (declare (not safe))
                                (##fx= __tmp28635 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted26390%_
                  (lambda (_%id27002%_)
                    (let* ((_%id-str27005%_
                            (symbol->string (gx#stx-e _%id27002%_)))
                           (_%split27008%_
                            (string-split _%id-str27005%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id27002%_
                             (car _%split27008%_))
                            (cons (gx#stx-identifier
                                   _%id27002%_
                                   (cadr _%split27008%_))
                                  '()))))))
          (let* ((_%__stx2809128092%_ _%stx26385%_)
                 (_%$%g2639526482%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2809128092%_))))
            (let ((_%__kont2809428095%_
                   (lambda (_%$%g2639726895%_
                            _%$%g2639826897%_
                            _%$%g2639926898%_)
                     (let* ((_%$%g2692626941%_
                             (lambda (_%$%g2692726937%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g2692726937%_)))
                            (_%$%g2692526994%_
                             (lambda (_%$%g2692726945%_)
                               (if (gx#stx-pair? _%$%g2692726945%_)
                                   (let ((_%$%e2693026948%_
                                          (gx#syntax-e _%$%g2692726945%_)))
                                     (let ((_%$%hd2693126952%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e2693026948%_)))
                                           (_%$%tl2693226955%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e2693026948%_))))
                                       (if (gx#stx-pair? _%$%tl2693226955%_)
                                           (let ((_%$%e2693326958%_
                                                  (gx#syntax-e
                                                   _%$%tl2693226955%_)))
                                             (let ((_%$%hd2693426962%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e2693326958%_)))
                                                   (_%$%tl2693526965%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e2693326958%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl2693526965%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'apply)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'call-method)
                                                               (cons _%$%hd2693126952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _%$%hd2693426962%_ '()))
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (foldr (lambda (_%$%g2698526988%_
                                                               _%$%g2698626991%_)
                                                        (cons _%$%g2698526988%_
                                                              _%$%g2698626991%_))
                                                      '()
                                                      _%$%g2639826897%_))
                                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g2692626941%_
                                                    _%$%g2692726945%_))))
                                           (_%$%g2692626941%_
                                            _%$%g2692726945%_))))
                                   (_%$%g2692626941%_ _%$%g2692726945%_)))))
                       (_%$%g2692526994%_
                        (_%split-dotted26390%_ _%$%g2639926898%_)))))
                  (_%__kont2809828099%_
                   (lambda (_%$%g2641826739%_ _%$%g2641926741%_)
                     (let* ((_%$%g2675826773%_
                             (lambda (_%$%g2675926769%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g2675926769%_)))
                            (_%$%g2675726826%_
                             (lambda (_%$%g2675926777%_)
                               (if (gx#stx-pair? _%$%g2675926777%_)
                                   (let ((_%$%e2676226780%_
                                          (gx#syntax-e _%$%g2675926777%_)))
                                     (let ((_%$%hd2676326784%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e2676226780%_)))
                                           (_%$%tl2676426787%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e2676226780%_))))
                                       (if (gx#stx-pair? _%$%tl2676426787%_)
                                           (let ((_%$%e2676526790%_
                                                  (gx#syntax-e
                                                   _%$%tl2676426787%_)))
                                             (let ((_%$%hd2676626794%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e2676526790%_)))
                                                   (_%$%tl2676726797%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e2676526790%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl2676726797%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _%$%hd2676326784%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _%$%hd2676626794%_ '()))
                             (foldr (lambda (_%$%g2681726820%_
                                             _%$%g2681826823%_)
                                      (cons _%$%g2681726820%_
                                            _%$%g2681826823%_))
                                    '()
                                    _%$%g2641826739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g2675826773%_
                                                    _%$%g2675926777%_))))
                                           (_%$%g2675826773%_
                                            _%$%g2675926777%_))))
                                   (_%$%g2675826773%_ _%$%g2675926777%_)))))
                       (_%$%g2675726826%_
                        (_%split-dotted26390%_ _%$%g2641926741%_)))))
                  (_%__kont2810228103%_
                   (lambda (_%$%g2643526645%_
                            _%$%g2643626647%_
                            _%$%g2643726648%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%$%g2643626647%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%$%g2643726648%_
                                                         '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%$%g2667526678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g2667626681%_)
                          (cons _%$%g2667526678%_ _%$%g2667626681%_))
                        '()
                        _%$%g2643526645%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2810628107%_
                   (lambda (_%$%g2645626547%_
                            _%$%g2645726549%_
                            _%$%g2645826550%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%$%g2645726549%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%$%g2645826550%_ '()))
                                       (foldr (lambda (_%$%g2657126574%_
                                                       _%$%g2657226577%_)
                                                (cons _%$%g2657126574%_
                                                      _%$%g2657226577%_))
                                              '()
                                              _%$%g2645626547%_)))))))
              (let* ((_%__match2821028211%_
                      (lambda (_%$%e2645926489%_
                               _%$%hd2646026493%_
                               _%$%tl2646126496%_
                               _%$%e2646226499%_
                               _%$%hd2646326503%_
                               _%$%tl2646426506%_
                               _%$%e2646526509%_
                               _%$%hd2646626513%_
                               _%$%tl2646726516%_
                               _%__splice2810828109%_
                               _%$%target2646826519%_
                               _%$%tl2647026522%_)
                        (letrec ((_%$%loop2647126525%_
                                  (lambda (_%$%hd2646926529%_
                                           _%$%arg2647526532%_)
                                    (if (gx#stx-pair? _%$%hd2646926529%_)
                                        (let ((_%$%e2647226534%_
                                               (gx#syntax-e
                                                _%$%hd2646926529%_)))
                                          (let ((_%$%lp-tl2647426541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2647226534%_)))
                                                (_%$%lp-hd2647326538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2647226534%_))))
                                            (_%$%loop2647126525%_
                                             _%$%lp-tl2647426541%_
                                             (cons _%$%lp-hd2647326538%_
                                                   _%$%arg2647526532%_))))
                                        (let ((_%$%arg2647626544%_
                                               (reverse _%$%arg2647526532%_)))
                                          (let ((_%$%g2645626547%_
                                                 _%$%arg2647626544%_)
                                                (_%$%g2645726549%_
                                                 _%$%hd2646626513%_)
                                                (_%$%g2645826550%_
                                                 _%$%hd2646326503%_))
                                            (if (gx#identifier?
                                                 _%$%g2645826550%_)
                                                (_%__kont2810628107%_
                                                 _%$%g2645626547%_
                                                 _%$%g2645726549%_
                                                 _%$%g2645826550%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g2639526482%_)))))))))
                          (_%$%loop2647126525%_ _%$%target2646826519%_ '()))))
                     (_%__match2818428185%_
                      (lambda (_%$%e2643826587%_
                               _%$%hd2643926591%_
                               _%$%tl2644026594%_
                               _%$%e2644126597%_
                               _%$%hd2644226601%_
                               _%$%tl2644326604%_
                               _%$%e2644426607%_
                               _%$%hd2644526611%_
                               _%$%tl2644626614%_
                               _%__splice2810428105%_
                               _%$%target2644726617%_
                               _%$%tl2644926620%_)
                        (letrec ((_%$%loop2645026623%_
                                  (lambda (_%$%hd2644826627%_
                                           _%$%arg2645426630%_)
                                    (if (gx#stx-pair? _%$%hd2644826627%_)
                                        (let ((_%$%e2645126632%_
                                               (gx#syntax-e
                                                _%$%hd2644826627%_)))
                                          (let ((_%$%lp-tl2645326639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2645126632%_)))
                                                (_%$%lp-hd2645226636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2645126632%_))))
                                            (_%$%loop2645026623%_
                                             _%$%lp-tl2645326639%_
                                             (cons _%$%lp-hd2645226636%_
                                                   _%$%arg2645426630%_))))
                                        (let ((_%$%arg2645526642%_
                                               (reverse _%$%arg2645426630%_)))
                                          (let ((_%$%g2643526645%_
                                                 _%$%arg2645526642%_)
                                                (_%$%g2643626647%_
                                                 _%$%hd2644526611%_)
                                                (_%$%g2643726648%_
                                                 _%$%hd2644226601%_))
                                            (if (and (gx#identifier?
                                                      _%$%g2643726648%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%$%g2666726670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g2666826673%_)
                       (cons _%$%g2666726670%_ _%$%g2666826673%_))
                     '()
                     _%$%g2643526645%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2810228103%_
                                                 _%$%g2643526645%_
                                                 _%$%g2643626647%_
                                                 _%$%g2643726648%_)
                                                (_%__match2821028211%_
                                                 _%$%e2643826587%_
                                                 _%$%hd2643926591%_
                                                 _%$%tl2644026594%_
                                                 _%$%e2644126597%_
                                                 _%$%hd2644226601%_
                                                 _%$%tl2644326604%_
                                                 _%$%e2644426607%_
                                                 _%$%hd2644526611%_
                                                 _%$%tl2644626614%_
                                                 _%__splice2810428105%_
                                                 _%$%target2644726617%_
                                                 _%$%tl2644926620%_))))))))
                          (_%$%loop2645026623%_ _%$%target2644726617%_ '()))))
                     (_%__match2817028171%_
                      (lambda (_%$%e2643826587%_
                               _%$%hd2643926591%_
                               _%$%tl2644026594%_
                               _%$%e2644126597%_
                               _%$%hd2644226601%_
                               _%$%tl2644326604%_)
                        (if (gx#stx-pair? _%$%tl2644326604%_)
                            (let ((_%$%e2644426607%_
                                   (gx#syntax-e _%$%tl2644326604%_)))
                              (let ((_%$%tl2644626614%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2644426607%_)))
                                    (_%$%hd2644526611%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2644426607%_))))
                                (if (gx#stx-pair/null? _%$%tl2644626614%_)
                                    (let ((_%__splice2810428105%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl2644626614%_
                                            '0)))
                                      (let ((_%$%tl2644926620%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2810428105%_
                                                '1)))
                                            (_%$%target2644726617%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2810428105%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl2644926620%_)
                                            (_%__match2818428185%_
                                             _%$%e2643826587%_
                                             _%$%hd2643926591%_
                                             _%$%tl2644026594%_
                                             _%$%e2644126597%_
                                             _%$%hd2644226601%_
                                             _%$%tl2644326604%_
                                             _%$%e2644426607%_
                                             _%$%hd2644526611%_
                                             _%$%tl2644626614%_
                                             _%__splice2810428105%_
                                             _%$%target2644726617%_
                                             _%$%tl2644926620%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g2639526482%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2639526482%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2639526482%_)))))
                     (_%__match2815828159%_
                      (lambda (_%$%e2642026691%_
                               _%$%hd2642126695%_
                               _%$%tl2642226698%_
                               _%$%e2642326701%_
                               _%$%hd2642426705%_
                               _%$%tl2642526708%_
                               _%__splice2810028101%_
                               _%$%target2642626711%_
                               _%$%tl2642826714%_)
                        (letrec ((_%$%loop2642926717%_
                                  (lambda (_%$%hd2642726721%_
                                           _%$%arg2643326724%_)
                                    (if (gx#stx-pair? _%$%hd2642726721%_)
                                        (let ((_%$%e2643026726%_
                                               (gx#syntax-e
                                                _%$%hd2642726721%_)))
                                          (let ((_%$%lp-tl2643226733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2643026726%_)))
                                                (_%$%lp-hd2643126730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2643026726%_))))
                                            (_%$%loop2642926717%_
                                             _%$%lp-tl2643226733%_
                                             (cons _%$%lp-hd2643126730%_
                                                   _%$%arg2643326724%_))))
                                        (let ((_%$%arg2643426736%_
                                               (reverse _%$%arg2643326724%_)))
                                          (let ((_%$%g2641826739%_
                                                 _%$%arg2643426736%_)
                                                (_%$%g2641926741%_
                                                 _%$%hd2642426705%_))
                                            (if (_%dotted-identifier?26388%_
                                                 _%$%g2641926741%_)
                                                (_%__kont2809828099%_
                                                 _%$%g2641826739%_
                                                 _%$%g2641926741%_)
                                                (_%__match2817028171%_
                                                 _%$%e2642026691%_
                                                 _%$%hd2642126695%_
                                                 _%$%tl2642226698%_
                                                 _%$%e2642326701%_
                                                 _%$%hd2642426705%_
                                                 _%$%tl2642526708%_))))))))
                          (_%$%loop2642926717%_ _%$%target2642626711%_ '()))))
                     (_%__match2815628157%_
                      (lambda (_%$%e2642026691%_
                               _%$%hd2642126695%_
                               _%$%tl2642226698%_
                               _%$%e2642326701%_
                               _%$%hd2642426705%_
                               _%$%tl2642526708%_
                               _%__splice2810028101%_
                               _%$%target2642626711%_
                               _%$%tl2642826714%_)
                        (if (gx#stx-null? _%$%tl2642826714%_)
                            (_%__match2815828159%_
                             _%$%e2642026691%_
                             _%$%hd2642126695%_
                             _%$%tl2642226698%_
                             _%$%e2642326701%_
                             _%$%hd2642426705%_
                             _%$%tl2642526708%_
                             _%__splice2810028101%_
                             _%$%target2642626711%_
                             _%$%tl2642826714%_)
                            (if (gx#stx-pair? _%$%tl2642526708%_)
                                (let ((_%$%e2644426607%_
                                       (gx#syntax-e _%$%tl2642526708%_)))
                                  (let ((_%$%tl2644626614%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2644426607%_)))
                                        (_%$%hd2644526611%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2644426607%_))))
                                    (if (gx#stx-pair/null? _%$%tl2644626614%_)
                                        (let ((_%__splice2810428105%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl2644626614%_
                                                '0)))
                                          (let ((_%$%tl2644926620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2810428105%_
                                                    '1)))
                                                (_%$%target2644726617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2810428105%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl2644926620%_)
                                                (_%__match2818428185%_
                                                 _%$%e2642026691%_
                                                 _%$%hd2642126695%_
                                                 _%$%tl2642226698%_
                                                 _%$%e2642326701%_
                                                 _%$%hd2642426705%_
                                                 _%$%tl2642526708%_
                                                 _%$%e2644426607%_
                                                 _%$%hd2644526611%_
                                                 _%$%tl2644626614%_
                                                 _%__splice2810428105%_
                                                 _%$%target2644726617%_
                                                 _%$%tl2644926620%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g2639526482%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g2639526482%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g2639526482%_))))))
                     (_%__match2813828139%_
                      (lambda (_%$%e2640026837%_
                               _%$%hd2640126841%_
                               _%$%tl2640226844%_
                               _%$%e2640326847%_
                               _%$%hd2640426851%_
                               _%$%tl2640526854%_
                               _%__splice2809628097%_
                               _%$%target2640626857%_
                               _%$%tl2640826860%_
                               _%$%e2641526863%_
                               _%$%hd2641626867%_
                               _%$%tl2641726870%_)
                        (letrec ((_%$%loop2640926873%_
                                  (lambda (_%$%hd2640726877%_
                                           _%$%arg2641326880%_)
                                    (if (gx#stx-pair? _%$%hd2640726877%_)
                                        (let ((_%$%e2641026882%_
                                               (gx#syntax-e
                                                _%$%hd2640726877%_)))
                                          (let ((_%$%lp-tl2641226889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2641026882%_)))
                                                (_%$%lp-hd2641126886%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2641026882%_))))
                                            (_%$%loop2640926873%_
                                             _%$%lp-tl2641226889%_
                                             (cons _%$%lp-hd2641126886%_
                                                   _%$%arg2641326880%_))))
                                        (let ((_%$%arg2641426892%_
                                               (reverse _%$%arg2641326880%_)))
                                          (let ((_%$%g2639726895%_
                                                 _%$%hd2641626867%_)
                                                (_%$%g2639826897%_
                                                 _%$%arg2641426892%_)
                                                (_%$%g2639926898%_
                                                 _%$%hd2640426851%_))
                                            (if (and (_%dotted-identifier?26388%_
                                                      _%$%g2639926898%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%$%g2691726920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g2691826923%_)
                       (cons _%$%g2691726920%_ _%$%g2691826923%_))
                     '()
                     _%$%g2639826897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2809428095%_
                                                 _%$%g2639726895%_
                                                 _%$%g2639826897%_
                                                 _%$%g2639926898%_)
                                                (let ((_%__splice2810028101%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl2640526854%_
                                                        '0)))
                                                  (let ((_%$%tl2642826714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2810028101%_
                                                            '1)))
                                                        (_%$%target2642626711%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2810028101%_
                                                            '0))))
                                                    (_%__match2815628157%_
                                                     _%$%e2640026837%_
                                                     _%$%hd2640126841%_
                                                     _%$%tl2640226844%_
                                                     _%$%e2640326847%_
                                                     _%$%hd2640426851%_
                                                     _%$%tl2640526854%_
                                                     _%__splice2810028101%_
                                                     _%$%target2642626711%_
                                                     _%$%tl2642826714%_))))))))))
                          (_%$%loop2640926873%_ _%$%target2640626857%_ '())))))
                (if (gx#stx-pair? _%__stx2809128092%_)
                    (let ((_%$%e2640026837%_
                           (gx#syntax-e _%__stx2809128092%_)))
                      (let ((_%$%tl2640226844%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2640026837%_)))
                            (_%$%hd2640126841%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2640026837%_))))
                        (if (gx#stx-pair? _%$%tl2640226844%_)
                            (let ((_%$%e2640326847%_
                                   (gx#syntax-e _%$%tl2640226844%_)))
                              (let ((_%$%tl2640526854%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2640326847%_)))
                                    (_%$%hd2640426851%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2640326847%_))))
                                (if (gx#stx-pair/null? _%$%tl2640526854%_)
                                    (if (let ((__tmp28636
                                               (gx#stx-length
                                                _%$%tl2640526854%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp28636 '1))
                                        (let ((_%__splice2809628097%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl2640526854%_
                                                '1)))
                                          (let ((_%$%tl2640826860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2809628097%_
                                                    '1)))
                                                (_%$%target2640626857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2809628097%_
                                                    '0))))
                                            (if (gx#stx-pair?
                                                 _%$%tl2640826860%_)
                                                (let ((_%$%e2641526863%_
                                                       (gx#syntax-e
                                                        _%$%tl2640826860%_)))
                                                  (let ((_%$%tl2641726870%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e2641526863%_)))
                                                        (_%$%hd2641626867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e2641526863%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2641726870%_)
                                                        (_%__match2813828139%_
                                                         _%$%e2640026837%_
                                                         _%$%hd2640126841%_
                                                         _%$%tl2640226844%_
                                                         _%$%e2640326847%_
                                                         _%$%hd2640426851%_
                                                         _%$%tl2640526854%_
                                                         _%__splice2809628097%_
                                                         _%$%target2640626857%_
                                                         _%$%tl2640826860%_
                                                         _%$%e2641526863%_
                                                         _%$%hd2641626867%_
                                                         _%$%tl2641726870%_)
                                                        (let ((_%__splice2810028101%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl2640526854%_
                                                                '0)))
                                                          (let ((_%$%tl2642826714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2810028101%_ '1)))
                        (_%$%target2642626711%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2810028101%_ '0))))
                    (if (gx#stx-null? _%$%tl2642826714%_)
                        (_%__match2815828159%_
                         _%$%e2640026837%_
                         _%$%hd2640126841%_
                         _%$%tl2640226844%_
                         _%$%e2640326847%_
                         _%$%hd2640426851%_
                         _%$%tl2640526854%_
                         _%__splice2810028101%_
                         _%$%target2642626711%_
                         _%$%tl2642826714%_)
                        (if (gx#stx-pair? _%$%tl2640526854%_)
                            (let ((_%$%e2644426607%_
                                   (gx#syntax-e _%$%tl2640526854%_)))
                              (let ((_%$%tl2644626614%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2644426607%_)))
                                    (_%$%hd2644526611%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2644426607%_))))
                                (if (gx#stx-pair/null? _%$%tl2644626614%_)
                                    (let ((_%__splice2810428105%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl2644626614%_
                                            '0)))
                                      (let ((_%$%tl2644926620%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2810428105%_
                                                '1)))
                                            (_%$%target2644726617%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2810428105%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl2644926620%_)
                                            (_%__match2818428185%_
                                             _%$%e2640026837%_
                                             _%$%hd2640126841%_
                                             _%$%tl2640226844%_
                                             _%$%e2640326847%_
                                             _%$%hd2640426851%_
                                             _%$%tl2640526854%_
                                             _%$%e2644426607%_
                                             _%$%hd2644526611%_
                                             _%$%tl2644626614%_
                                             _%__splice2810428105%_
                                             _%$%target2644726617%_
                                             _%$%tl2644926620%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g2639526482%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2639526482%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2639526482%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2810028101%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl2640526854%_
                                                        '0)))
                                                  (let ((_%$%tl2642826714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2810028101%_
                                                            '1)))
                                                        (_%$%target2642626711%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2810028101%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2642826714%_)
                                                        (_%__match2815828159%_
                                                         _%$%e2640026837%_
                                                         _%$%hd2640126841%_
                                                         _%$%tl2640226844%_
                                                         _%$%e2640326847%_
                                                         _%$%hd2640426851%_
                                                         _%$%tl2640526854%_
                                                         _%__splice2810028101%_
                                                         _%$%target2642626711%_
                                                         _%$%tl2642826714%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl2640526854%_)
                                                            (let ((_%$%e2644426607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl2640526854%_)))
                      (let ((_%$%tl2644626614%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2644426607%_)))
                            (_%$%hd2644526611%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2644426607%_))))
                        (if (gx#stx-pair/null? _%$%tl2644626614%_)
                            (let ((_%__splice2810428105%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl2644626614%_
                                    '0)))
                              (let ((_%$%tl2644926620%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2810428105%_
                                        '1)))
                                    (_%$%target2644726617%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2810428105%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl2644926620%_)
                                    (_%__match2818428185%_
                                     _%$%e2640026837%_
                                     _%$%hd2640126841%_
                                     _%$%tl2640226844%_
                                     _%$%e2640326847%_
                                     _%$%hd2640426851%_
                                     _%$%tl2640526854%_
                                     _%$%e2644426607%_
                                     _%$%hd2644526611%_
                                     _%$%tl2644626614%_
                                     _%__splice2810428105%_
                                     _%$%target2644726617%_
                                     _%$%tl2644926620%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2639526482%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2639526482%_)))))
                    (let () (declare (not safe)) (_%$%g2639526482%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2810028101%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl2640526854%_
                                                '0)))
                                          (let ((_%$%tl2642826714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2810028101%_
                                                    '1)))
                                                (_%$%target2642626711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2810028101%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl2642826714%_)
                                                (_%__match2815828159%_
                                                 _%$%e2640026837%_
                                                 _%$%hd2640126841%_
                                                 _%$%tl2640226844%_
                                                 _%$%e2640326847%_
                                                 _%$%hd2640426851%_
                                                 _%$%tl2640526854%_
                                                 _%__splice2810028101%_
                                                 _%$%target2642626711%_
                                                 _%$%tl2642826714%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl2640526854%_)
                                                    (let ((_%$%e2644426607%_
                                                           (gx#syntax-e
                                                            _%$%tl2640526854%_)))
                                                      (let ((_%$%tl2644626614%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e2644426607%_)))
                    (_%$%hd2644526611%_
                     (let () (declare (not safe)) (##car _%$%e2644426607%_))))
                (if (gx#stx-pair/null? _%$%tl2644626614%_)
                    (let ((_%__splice2810428105%_
                           (gx#syntax-split-splice->vector
                            _%$%tl2644626614%_
                            '0)))
                      (let ((_%$%tl2644926620%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2810428105%_ '1)))
                            (_%$%target2644726617%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2810428105%_ '0))))
                        (if (gx#stx-null? _%$%tl2644926620%_)
                            (_%__match2818428185%_
                             _%$%e2640026837%_
                             _%$%hd2640126841%_
                             _%$%tl2640226844%_
                             _%$%e2640326847%_
                             _%$%hd2640426851%_
                             _%$%tl2640526854%_
                             _%$%e2644426607%_
                             _%$%hd2644526611%_
                             _%$%tl2644626614%_
                             _%__splice2810428105%_
                             _%$%target2644726617%_
                             _%$%tl2644926620%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g2639526482%_)))))
                    (let () (declare (not safe)) (_%$%g2639526482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g2639526482%_)))))))
                                    (if (gx#stx-pair? _%$%tl2640526854%_)
                                        (let ((_%$%e2644426607%_
                                               (gx#syntax-e
                                                _%$%tl2640526854%_)))
                                          (let ((_%$%tl2644626614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2644426607%_)))
                                                (_%$%hd2644526611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2644426607%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl2644626614%_)
                                                (let ((_%__splice2810428105%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl2644626614%_
                                                        '0)))
                                                  (let ((_%$%tl2644926620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2810428105%_
                                                            '1)))
                                                        (_%$%target2644726617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2810428105%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2644926620%_)
                                                        (_%__match2818428185%_
                                                         _%$%e2640026837%_
                                                         _%$%hd2640126841%_
                                                         _%$%tl2640226844%_
                                                         _%$%e2640326847%_
                                                         _%$%hd2640426851%_
                                                         _%$%tl2640526854%_
                                                         _%$%e2644426607%_
                                                         _%$%hd2644526611%_
                                                         _%$%tl2644626614%_
                                                         _%__splice2810428105%_
                                                         _%$%target2644726617%_
                                                         _%$%tl2644926620%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g2639526482%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g2639526482%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g2639526482%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2639526482%_)))))
                    (let () (declare (not safe)) (_%$%g2639526482%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx27026%_)
        (let* ((_%__stx2821328214%_ _%$stx27026%_)
               (_%$%g2703127071%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2821328214%_))))
          (let ((_%__kont2821628217%_
                 (lambda (_%$%g2703327207%_ _%$%g2703427209%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%$%g2703427209%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g2703327207%_ '()))
                                     '())))))
                (_%__kont2821828219%_
                 (lambda (_%$%g2704427136%_
                          _%$%g2704527138%_
                          _%$%g2704627139%_
                          _%$%g2704727140%_)
                   (cons _%$%g2704727140%_
                         (cons (cons _%$%g2704727140%_
                                     (cons _%$%g2704627139%_
                                           (cons _%$%g2704527138%_ '())))
                               (foldr (lambda (_%$%g2716127164%_
                                               _%$%g2716227167%_)
                                        (cons _%$%g2716127164%_
                                              _%$%g2716227167%_))
                                      '()
                                      _%$%g2704427136%_))))))
            (let* ((_%__match2826828269%_
                    (lambda (_%$%e2704827078%_
                             _%$%hd2704927082%_
                             _%$%tl2705027085%_
                             _%$%e2705127088%_
                             _%$%hd2705227092%_
                             _%$%tl2705327095%_
                             _%$%e2705427098%_
                             _%$%hd2705527102%_
                             _%$%tl2705627105%_
                             _%__splice2822028221%_
                             _%$%target2705727108%_
                             _%$%tl2705927111%_)
                      (letrec ((_%$%loop2706027114%_
                                (lambda (_%$%hd2705827118%_
                                         _%$%rest2706427121%_)
                                  (if (gx#stx-pair? _%$%hd2705827118%_)
                                      (let ((_%$%e2706127123%_
                                             (gx#syntax-e _%$%hd2705827118%_)))
                                        (let ((_%$%lp-tl2706327130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2706127123%_)))
                                              (_%$%lp-hd2706227127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2706127123%_))))
                                          (_%$%loop2706027114%_
                                           _%$%lp-tl2706327130%_
                                           (cons _%$%lp-hd2706227127%_
                                                 _%$%rest2706427121%_))))
                                      (let ((_%$%rest2706527133%_
                                             (reverse _%$%rest2706427121%_)))
                                        (_%__kont2821828219%_
                                         _%$%rest2706527133%_
                                         _%$%hd2705527102%_
                                         _%$%hd2705227092%_
                                         _%$%hd2704927082%_))))))
                        (_%$%loop2706027114%_ _%$%target2705727108%_ '()))))
                   (_%__match2824228243%_
                    (lambda (_%$%e2703527177%_
                             _%$%hd2703627181%_
                             _%$%tl2703727184%_
                             _%$%e2703827187%_
                             _%$%hd2703927191%_
                             _%$%tl2704027194%_
                             _%$%e2704127197%_
                             _%$%hd2704227201%_
                             _%$%tl2704327204%_)
                      (let ((_%$%g2703327207%_ _%$%hd2704227201%_)
                            (_%$%g2703427209%_ _%$%hd2703927191%_))
                        (if (gx#identifier? _%$%g2703327207%_)
                            (_%__kont2821628217%_
                             _%$%g2703327207%_
                             _%$%g2703427209%_)
                            (if (gx#stx-pair/null? _%$%tl2704327204%_)
                                (let ((_%__splice2822028221%_
                                       (gx#syntax-split-splice->vector
                                        _%$%tl2704327204%_
                                        '0)))
                                  (let ((_%$%tl2705927111%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2822028221%_
                                            '1)))
                                        (_%$%target2705727108%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2822028221%_
                                            '0))))
                                    (if (gx#stx-null? _%$%tl2705927111%_)
                                        (_%__match2826828269%_
                                         _%$%e2703527177%_
                                         _%$%hd2703627181%_
                                         _%$%tl2703727184%_
                                         _%$%e2703827187%_
                                         _%$%hd2703927191%_
                                         _%$%tl2704027194%_
                                         _%$%e2704127197%_
                                         _%$%hd2704227201%_
                                         _%$%tl2704327204%_
                                         _%__splice2822028221%_
                                         _%$%target2705727108%_
                                         _%$%tl2705927111%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g2703127071%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g2703127071%_))))))))
              (if (gx#stx-pair? _%__stx2821328214%_)
                  (let ((_%$%e2703527177%_ (gx#syntax-e _%__stx2821328214%_)))
                    (let ((_%$%tl2703727184%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e2703527177%_)))
                          (_%$%hd2703627181%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e2703527177%_))))
                      (if (gx#stx-pair? _%$%tl2703727184%_)
                          (let ((_%$%e2703827187%_
                                 (gx#syntax-e _%$%tl2703727184%_)))
                            (let ((_%$%tl2704027194%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2703827187%_)))
                                  (_%$%hd2703927191%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2703827187%_))))
                              (if (gx#stx-pair? _%$%tl2704027194%_)
                                  (let ((_%$%e2704127197%_
                                         (gx#syntax-e _%$%tl2704027194%_)))
                                    (let ((_%$%tl2704327204%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2704127197%_)))
                                          (_%$%hd2704227201%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2704127197%_))))
                                      (if (gx#stx-null? _%$%tl2704327204%_)
                                          (_%__match2824228243%_
                                           _%$%e2703527177%_
                                           _%$%hd2703627181%_
                                           _%$%tl2703727184%_
                                           _%$%e2703827187%_
                                           _%$%hd2703927191%_
                                           _%$%tl2704027194%_
                                           _%$%e2704127197%_
                                           _%$%hd2704227201%_
                                           _%$%tl2704327204%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl2704327204%_)
                                              (let ((_%__splice2822028221%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl2704327204%_
                                                      '0)))
                                                (let ((_%$%tl2705927111%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2822028221%_
                                                          '1)))
                                                      (_%$%target2705727108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2822028221%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2705927111%_)
                                                      (_%__match2826828269%_
                                                       _%$%e2703527177%_
                                                       _%$%hd2703627181%_
                                                       _%$%tl2703727184%_
                                                       _%$%e2703827187%_
                                                       _%$%hd2703927191%_
                                                       _%$%tl2704027194%_
                                                       _%$%e2704127197%_
                                                       _%$%hd2704227201%_
                                                       _%$%tl2704327204%_
                                                       _%__splice2822028221%_
                                                       _%$%target2705727108%_
                                                       _%$%tl2705927111%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g2703127071%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g2703127071%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g2703127071%_)))))
                          (let () (declare (not safe)) (_%$%g2703127071%_)))))
                  (let () (declare (not safe)) (_%$%g2703127071%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx27229%_)
        (let* ((_%__stx2827128272%_ _%$stx27229%_)
               (_%$%g2723427286%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2827128272%_))))
          (let ((_%__kont2827428275%_
                 (lambda (_%$%g2723627460%_
                          _%$%g2723727462%_
                          _%$%g2723827463%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%$%g2723827463%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g2723727462%_ '()))
                                     (cons _%$%g2723627460%_ '()))))))
                (_%__kont2827628277%_
                 (lambda (_%$%g2725127371%_
                          _%$%g2725227373%_
                          _%$%g2725327374%_
                          _%$%g2725427375%_
                          _%$%g2725527376%_
                          _%$%g2725627377%_)
                   (cons _%$%g2725627377%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%$%g2725527376%_
                                           (cons _%$%g2725427375%_
                                                 (foldr (lambda (_%$%g2740427407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g2740527410%_)
                  (cons _%$%g2740427407%_ _%$%g2740527410%_))
                '()
                _%$%g2725327374%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g2725227373%_
                                     (cons _%$%g2725127371%_ '())))))))
            (let* ((_%__match2834628347%_
                    (lambda (_%$%e2725727293%_
                             _%$%hd2725827297%_
                             _%$%tl2725927300%_
                             _%$%e2726027303%_
                             _%$%hd2726127307%_
                             _%$%tl2726227310%_
                             _%$%e2726327313%_
                             _%$%hd2726427317%_
                             _%$%tl2726527320%_
                             _%__splice2827828279%_
                             _%$%target2726627323%_
                             _%$%tl2726827326%_
                             _%$%e2727527329%_
                             _%$%hd2727627333%_
                             _%$%tl2727727336%_
                             _%$%e2727827339%_
                             _%$%hd2727927343%_
                             _%$%tl2728027346%_)
                      (letrec ((_%$%loop2726927349%_
                                (lambda (_%$%hd2726727353%_
                                         _%$%path2727327356%_)
                                  (if (gx#stx-pair? _%$%hd2726727353%_)
                                      (let ((_%$%e2727027358%_
                                             (gx#syntax-e _%$%hd2726727353%_)))
                                        (let ((_%$%lp-tl2727227365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2727027358%_)))
                                              (_%$%lp-hd2727127362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2727027358%_))))
                                          (_%$%loop2726927349%_
                                           _%$%lp-tl2727227365%_
                                           (cons _%$%lp-hd2727127362%_
                                                 _%$%path2727327356%_))))
                                      (let ((_%$%path2727427368%_
                                             (reverse _%$%path2727327356%_)))
                                        (_%__kont2827628277%_
                                         _%$%hd2727927343%_
                                         _%$%hd2727627333%_
                                         _%$%path2727427368%_
                                         _%$%hd2726427317%_
                                         _%$%hd2726127307%_
                                         _%$%hd2725827297%_))))))
                        (_%$%loop2726927349%_ _%$%target2726627323%_ '()))))
                   (_%__match2830628307%_
                    (lambda (_%$%e2723927420%_
                             _%$%hd2724027424%_
                             _%$%tl2724127427%_
                             _%$%e2724227430%_
                             _%$%hd2724327434%_
                             _%$%tl2724427437%_
                             _%$%e2724527440%_
                             _%$%hd2724627444%_
                             _%$%tl2724727447%_
                             _%$%e2724827450%_
                             _%$%hd2724927454%_
                             _%$%tl2725027457%_)
                      (let ((_%$%g2723627460%_ _%$%hd2724927454%_)
                            (_%$%g2723727462%_ _%$%hd2724627444%_)
                            (_%$%g2723827463%_ _%$%hd2724327434%_))
                        (if (gx#identifier? _%$%g2723727462%_)
                            (_%__kont2827428275%_
                             _%$%g2723627460%_
                             _%$%g2723727462%_
                             _%$%g2723827463%_)
                            (if (gx#stx-pair/null? _%$%tl2724727447%_)
                                (if (let ((__tmp28637
                                           (gx#stx-length _%$%tl2724727447%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp28637 '2))
                                    (let ((_%__splice2827828279%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl2724727447%_
                                            '2)))
                                      (let ((_%$%tl2726827326%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2827828279%_
                                                '1)))
                                            (_%$%target2726627323%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2827828279%_
                                                '0))))
                                        (if (gx#stx-pair? _%$%tl2726827326%_)
                                            (let ((_%$%e2727527329%_
                                                   (gx#syntax-e
                                                    _%$%tl2726827326%_)))
                                              (let ((_%$%tl2727727336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2727527329%_)))
                                                    (_%$%hd2727627333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2727527329%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl2727727336%_)
                                                    (let ((_%$%e2727827339%_
                                                           (gx#syntax-e
                                                            _%$%tl2727727336%_)))
                                                      (let ((_%$%tl2728027346%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e2727827339%_)))
                    (_%$%hd2727927343%_
                     (let () (declare (not safe)) (##car _%$%e2727827339%_))))
                (if (gx#stx-null? _%$%tl2728027346%_)
                    (_%__match2834628347%_
                     _%$%e2723927420%_
                     _%$%hd2724027424%_
                     _%$%tl2724127427%_
                     _%$%e2724227430%_
                     _%$%hd2724327434%_
                     _%$%tl2724427437%_
                     _%$%e2724527440%_
                     _%$%hd2724627444%_
                     _%$%tl2724727447%_
                     _%__splice2827828279%_
                     _%$%target2726627323%_
                     _%$%tl2726827326%_
                     _%$%e2727527329%_
                     _%$%hd2727627333%_
                     _%$%tl2727727336%_
                     _%$%e2727827339%_
                     _%$%hd2727927343%_
                     _%$%tl2728027346%_)
                    (let () (declare (not safe)) (_%$%g2723427286%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g2723427286%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g2723427286%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2723427286%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g2723427286%_))))))))
              (if (gx#stx-pair? _%__stx2827128272%_)
                  (let ((_%$%e2723927420%_ (gx#syntax-e _%__stx2827128272%_)))
                    (let ((_%$%tl2724127427%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e2723927420%_)))
                          (_%$%hd2724027424%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e2723927420%_))))
                      (if (gx#stx-pair? _%$%tl2724127427%_)
                          (let ((_%$%e2724227430%_
                                 (gx#syntax-e _%$%tl2724127427%_)))
                            (let ((_%$%tl2724427437%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2724227430%_)))
                                  (_%$%hd2724327434%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2724227430%_))))
                              (if (gx#stx-pair? _%$%tl2724427437%_)
                                  (let ((_%$%e2724527440%_
                                         (gx#syntax-e _%$%tl2724427437%_)))
                                    (let ((_%$%tl2724727447%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2724527440%_)))
                                          (_%$%hd2724627444%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2724527440%_))))
                                      (if (gx#stx-pair? _%$%tl2724727447%_)
                                          (let ((_%$%e2724827450%_
                                                 (gx#syntax-e
                                                  _%$%tl2724727447%_)))
                                            (let ((_%$%tl2725027457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e2724827450%_)))
                                                  (_%$%hd2724927454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e2724827450%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl2725027457%_)
                                                  (_%__match2830628307%_
                                                   _%$%e2723927420%_
                                                   _%$%hd2724027424%_
                                                   _%$%tl2724127427%_
                                                   _%$%e2724227430%_
                                                   _%$%hd2724327434%_
                                                   _%$%tl2724427437%_
                                                   _%$%e2724527440%_
                                                   _%$%hd2724627444%_
                                                   _%$%tl2724727447%_
                                                   _%$%e2724827450%_
                                                   _%$%hd2724927454%_
                                                   _%$%tl2725027457%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl2724727447%_)
                                                      (if (let ((__tmp28638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%$%tl2724727447%_)))
                    (declare (not safe))
                    (##fx>= __tmp28638 '2))
                  (let ((_%__splice2827828279%_
                         (gx#syntax-split-splice->vector
                          _%$%tl2724727447%_
                          '2)))
                    (let ((_%$%tl2726827326%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2827828279%_ '1)))
                          (_%$%target2726627323%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2827828279%_ '0))))
                      (if (gx#stx-pair? _%$%tl2726827326%_)
                          (let ((_%$%e2727527329%_
                                 (gx#syntax-e _%$%tl2726827326%_)))
                            (let ((_%$%tl2727727336%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2727527329%_)))
                                  (_%$%hd2727627333%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2727527329%_))))
                              (if (gx#stx-pair? _%$%tl2727727336%_)
                                  (let ((_%$%e2727827339%_
                                         (gx#syntax-e _%$%tl2727727336%_)))
                                    (let ((_%$%tl2728027346%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2727827339%_)))
                                          (_%$%hd2727927343%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2727827339%_))))
                                      (if (gx#stx-null? _%$%tl2728027346%_)
                                          (_%__match2834628347%_
                                           _%$%e2723927420%_
                                           _%$%hd2724027424%_
                                           _%$%tl2724127427%_
                                           _%$%e2724227430%_
                                           _%$%hd2724327434%_
                                           _%$%tl2724427437%_
                                           _%$%e2724527440%_
                                           _%$%hd2724627444%_
                                           _%$%tl2724727447%_
                                           _%__splice2827828279%_
                                           _%$%target2726627323%_
                                           _%$%tl2726827326%_
                                           _%$%e2727527329%_
                                           _%$%hd2727627333%_
                                           _%$%tl2727727336%_
                                           _%$%e2727827339%_
                                           _%$%hd2727927343%_
                                           _%$%tl2728027346%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g2723427286%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g2723427286%_)))))
                          (let () (declare (not safe)) (_%$%g2723427286%_)))))
                  (let () (declare (not safe)) (_%$%g2723427286%_)))
              (let () (declare (not safe)) (_%$%g2723427286%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl2724727447%_)
                                              (if (let ((__tmp28639
                                                         (gx#stx-length
                                                          _%$%tl2724727447%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp28639 '2))
                                                  (let ((_%__splice2827828279%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl2724727447%_
                                                          '2)))
                                                    (let ((_%$%tl2726827326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2827828279%_
                                                              '1)))
                                                          (_%$%target2726627323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2827828279%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl2726827326%_)
                                                          (let ((_%$%e2727527329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl2726827326%_)))
                    (let ((_%$%tl2727727336%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e2727527329%_)))
                          (_%$%hd2727627333%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e2727527329%_))))
                      (if (gx#stx-pair? _%$%tl2727727336%_)
                          (let ((_%$%e2727827339%_
                                 (gx#syntax-e _%$%tl2727727336%_)))
                            (let ((_%$%tl2728027346%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2727827339%_)))
                                  (_%$%hd2727927343%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2727827339%_))))
                              (if (gx#stx-null? _%$%tl2728027346%_)
                                  (_%__match2834628347%_
                                   _%$%e2723927420%_
                                   _%$%hd2724027424%_
                                   _%$%tl2724127427%_
                                   _%$%e2724227430%_
                                   _%$%hd2724327434%_
                                   _%$%tl2724427437%_
                                   _%$%e2724527440%_
                                   _%$%hd2724627444%_
                                   _%$%tl2724727447%_
                                   _%__splice2827828279%_
                                   _%$%target2726627323%_
                                   _%$%tl2726827326%_
                                   _%$%e2727527329%_
                                   _%$%hd2727627333%_
                                   _%$%tl2727727336%_
                                   _%$%e2727827339%_
                                   _%$%hd2727927343%_
                                   _%$%tl2728027346%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g2723427286%_)))))
                          (let () (declare (not safe)) (_%$%g2723427286%_)))))
                  (let () (declare (not safe)) (_%$%g2723427286%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g2723427286%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g2723427286%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g2723427286%_)))))
                          (let () (declare (not safe)) (_%$%g2723427286%_)))))
                  (let () (declare (not safe)) (_%$%g2723427286%_))))))))))
