(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27237_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24791%_)
        (letrec ((_%body-opt?24794%_
                  (lambda (_%key24797%_)
                    (let ((__tmp27209 (gx#stx-e _%key24797%_)))
                      (declare (not safe))
                      (##memq __tmp27209
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:))))))
          (gx#stx-plist? _%stx24791%_ _%body-opt?24794%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22557%_
               _%id22559%_
               _%super-ref22560%_
               _%slots22561%_
               _%body22562%_)
        (letrec ((_%wrap22564%_
                  (lambda (_%e-stx24788%_)
                    (gx#stx-wrap-source
                     _%e-stx24788%_
                     (gx#stx-source _%stx22557%_))))
                 (_%make-id22566%_
                  (lambda _%args24785%_
                    (apply gx#stx-identifier _%id22559%_ _%args24785%_)))
                 (_%get-mixin-slots22567%_
                  (lambda (_%super24755%_ _%slots24757%_)
                    (letrec* ((_%tab24759%_ (make-hash-table-eq))
                              (_%dedup24761%_
                               (lambda (_%mixins24772%_)
                                 (let _%lp24775%_ ((_%rest24778%_
                                                    _%mixins24772%_)
                                                   (_%r24780%_ '()))
                                   (if (pair? _%rest24778%_)
                                       (let ((_%slot24782%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24778%_))))
                                         (if (hash-get
                                              _%tab24759%_
                                              _%slot24782%_)
                                             (_%lp24775%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24778%_))
                                              _%r24780%_)
                                             (begin
                                               (hash-put!
                                                _%tab24759%_
                                                _%slot24782%_
                                                '#t)
                                               (_%lp24775%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24778%_))
                                                (cons _%slot24782%_
                                                      _%r24780%_)))))
                                       (reverse _%r24780%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24763%_)
                         (hash-put! _%tab24759%_ (gx#stx-e _%slot24763%_) '#t))
                       _%slots24757%_)
                      (if (not _%super24755%_)
                          '()
                          (if (gx#identifier? _%super24755%_)
                              (_%dedup24761%_
                               (_%get-mixin-slots-r22568%_ _%super24755%_))
                              (_%dedup24761%_
                               (concatenate
                                (map _%get-mixin-slots-r22568%_
                                     _%super24755%_))))))))
                 (_%get-mixin-slots-r22568%_
                  (lambda (_%type-id24749%_)
                    (let ((_%info24752%_
                           (gx#syntax-local-value _%type-id24749%_)))
                      (let ((__tmp27211
                             (let ((__obj27026 _%info24752%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27026
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27026
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27026
                                    'slots))))
                            (__tmp27210
                             (concatenate
                              (map _%get-mixin-slots-r22568%_
                                   (let ((__obj27027 _%info24752%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27027
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27027
                                            '3
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27027
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27211 __tmp27210))))))
          (gx#check-duplicate-identifiers _%slots22561%_ _%stx22557%_)
          (let* ((_%name22570%_ (symbol->string (gx#stx-e _%id22559%_)))
                 (_%super22573%_
                  (map gx#syntax-local-value _%super-ref22560%_))
                 (_%struct?22576%_ (gx#stx-getq 'struct: _%body22562%_))
                 (_%g2257922587%_
                  (lambda (_%g2258022583%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2258022583%_)))
                 (_%g2257824745%_
                  (lambda (_%g2258022591%_)
                    ((lambda (_%L22594%_)
                       (let* ((_%g2261022618%_
                               (lambda (_%g2261122614%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2261122614%_)))
                              (_%g2260924741%_
                               (lambda (_%g2261122622%_)
                                 ((lambda (_%L22625%_)
                                    (let* ((_%g2263822646%_
                                            (lambda (_%g2263922642%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2263922642%_)))
                                           (_%g2263724737%_
                                            (lambda (_%g2263922650%_)
                                              ((lambda (_%L22653%_)
                                                 (let* ((_%g2266622674%_
                                                         (lambda (_%g2266722670%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2266722670%_)))
                                                        (_%g2266524733%_
                                                         (lambda (_%g2266722678%_)
                                                           ((lambda (_%L22681%_)
                                                              (let* ((_%g2269422702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2269522698%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2269522698%_)))
                             (_%g2269324729%_
                              (lambda (_%g2269522706%_)
                                ((lambda (_%L22709%_)
                                   (let* ((_%g2272222739%_
                                           (lambda (_%g2272322735%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2272322735%_)))
                                          (_%g2272124725%_
                                           (lambda (_%g2272322743%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2272322743%_)
                                                 (let ((_g27212_
                                                        (gx#syntax-split-splice
                                                         _%g2272322743%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27213_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27212_)
                          (##vector-length _g27212_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27213_ 2)))
                   (error "Context expects 2 values" _g27213_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2272522746%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27212_
                                                               0)))
                                                           (_%tl2272722749%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27212_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2272722749%_)
                                                           (letrec ((_%loop2272822752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2272622756%_ _%slot2273222759%_)
                               (if (gx#stx-pair? _%hd2272622756%_)
                                   (let ((_%e2272922762%_
                                          (gx#syntax-e _%hd2272622756%_)))
                                     (let ((_%lp-hd2273022766%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2272922762%_)))
                                           (_%lp-tl2273122769%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2272922762%_))))
                                       (_%loop2272822752%_
                                        _%lp-tl2273122769%_
                                        (cons _%lp-hd2273022766%_
                                              _%slot2273222759%_))))
                                   (let ((_%slot2273322772%_
                                          (reverse _%slot2273222759%_)))
                                     ((lambda (_%L22776%_)
                                        (let* ((_%g2279322810%_
                                                (lambda (_%g2279422806%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2279422806%_)))
                                               (_%g2279224716%_
                                                (lambda (_%g2279422814%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2279422814%_)
                                                      (let ((_g27214_
                                                             (gx#syntax-split-splice
                                                              _%g2279422814%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27214_)
                               (##vector-length _g27214_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27215_ 2)))
                        (error "Context expects 2 values" _g27215_)))
                  (let ((_%target2279622817%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27214_ 0)))
                        (_%tl2279822820%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27214_ 1))))
                    (if (gx#stx-null? _%tl2279822820%_)
                        (letrec ((_%loop2279922823%_
                                  (lambda (_%hd2279722827%_ _%getf2280322830%_)
                                    (if (gx#stx-pair? _%hd2279722827%_)
                                        (let ((_%e2280022833%_
                                               (gx#syntax-e _%hd2279722827%_)))
                                          (let ((_%lp-hd2280122837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2280022833%_)))
                                                (_%lp-tl2280222840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2280022833%_))))
                                            (_%loop2279922823%_
                                             _%lp-tl2280222840%_
                                             (cons _%lp-hd2280122837%_
                                                   _%getf2280322830%_))))
                                        (let ((_%getf2280422843%_
                                               (reverse _%getf2280322830%_)))
                                          ((lambda (_%L22847%_)
                                             (let* ((_%g2286422881%_
                                                     (lambda (_%g2286522877%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2286522877%_)))
                                                    (_%g2286324707%_
                                                     (lambda (_%g2286522885%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2286522885%_)
                                                           (let ((_g27216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2286522885%_ '0)))
                     (begin
                       (let ((_g27217_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27216_)
                                    (##vector-length _g27216_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27217_ 2)))
                             (error "Context expects 2 values" _g27217_)))
                       (let ((_%target2286722888%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27216_ 0)))
                             (_%tl2286922891%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27216_ 1))))
                         (if (gx#stx-null? _%tl2286922891%_)
                             (letrec ((_%loop2287022894%_
                                       (lambda (_%hd2286822898%_
                                                _%setf2287422901%_)
                                         (if (gx#stx-pair? _%hd2286822898%_)
                                             (let ((_%e2287122904%_
                                                    (gx#syntax-e
                                                     _%hd2286822898%_)))
                                               (let ((_%lp-hd2287222908%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2287122904%_)))
                                                     (_%lp-tl2287322911%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2287122904%_))))
                                                 (_%loop2287022894%_
                                                  _%lp-tl2287322911%_
                                                  (cons _%lp-hd2287222908%_
                                                        _%setf2287422901%_))))
                                             (let ((_%setf2287522914%_
                                                    (reverse _%setf2287422901%_)))
                                               ((lambda (_%L22918%_)
                                                  (let* ((_%mixin-slots22935%_
                                                          (_%get-mixin-slots22567%_
                                                           _%super-ref22560%_
                                                           _%slots22561%_))
                                                         (_%g2293822955%_
                                                          (lambda (_%g2293922951%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2293922951%_)))
                                                         (_%g2293724703%_
                                                          (lambda (_%g2293922959%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2293922959%_)
                        (let ((_g27218_
                               (gx#syntax-split-splice _%g2293922959%_ '0)))
                          (begin
                            (let ((_g27219_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27218_)
                                         (##vector-length _g27218_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27219_ 2)))
                                  (error "Context expects 2 values" _g27219_)))
                            (let ((_%target2294122962%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g27218_ 0)))
                                  (_%tl2294322965%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g27218_ 1))))
                              (if (gx#stx-null? _%tl2294322965%_)
                                  (letrec ((_%loop2294422968%_
                                            (lambda (_%hd2294222972%_
                                                     _%mixin-slot2294822975%_)
                                              (if (gx#stx-pair?
                                                   _%hd2294222972%_)
                                                  (let ((_%e2294522978%_
                                                         (gx#syntax-e
                                                          _%hd2294222972%_)))
                                                    (let ((_%lp-hd2294622982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2294522978%_)))
                                                          (_%lp-tl2294722985%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2294522978%_))))
                                                      (_%loop2294422968%_
                                                       _%lp-tl2294722985%_
                                                       (cons _%lp-hd2294622982%_
                                                             _%mixin-slot2294822975%_))))
                                                  (let ((_%mixin-slot2294922988%_
                                                         (reverse _%mixin-slot2294822975%_)))
                                                    ((lambda (_%L22992%_)
                                                       (let* ((_%g2301023027%_
                                                               (lambda (_%g2301123023%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2301123023%_)))
                      (_%g2300924694%_
                       (lambda (_%g2301123031%_)
                         (if (gx#stx-pair/null? _%g2301123031%_)
                             (let ((_g27220_
                                    (gx#syntax-split-splice
                                     _%g2301123031%_
                                     '0)))
                               (begin
                                 (let ((_g27221_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27220_)
                                              (##vector-length _g27220_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27221_ 2)))
                                       (error "Context expects 2 values"
                                              _g27221_)))
                                 (let ((_%target2301323034%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27220_ 0)))
                                       (_%tl2301523037%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27220_ 1))))
                                   (if (gx#stx-null? _%tl2301523037%_)
                                       (letrec ((_%loop2301623040%_
                                                 (lambda (_%hd2301423044%_
                                                          _%mixin-getf2302023047%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2301423044%_)
                                                       (let ((_%e2301723050%_
                                                              (gx#syntax-e
                                                               _%hd2301423044%_)))
                                                         (let ((_%lp-hd2301823054%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2301723050%_)))
                       (_%lp-tl2301923057%_
                        (let () (declare (not safe)) (##cdr _%e2301723050%_))))
                   (_%loop2301623040%_
                    _%lp-tl2301923057%_
                    (cons _%lp-hd2301823054%_ _%mixin-getf2302023047%_))))
               (let ((_%mixin-getf2302123060%_
                      (reverse _%mixin-getf2302023047%_)))
                 ((lambda (_%L23064%_)
                    (let* ((_%g2308123098%_
                            (lambda (_%g2308223094%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2308223094%_)))
                           (_%g2308024685%_
                            (lambda (_%g2308223102%_)
                              (if (gx#stx-pair/null? _%g2308223102%_)
                                  (let ((_g27222_
                                         (gx#syntax-split-splice
                                          _%g2308223102%_
                                          '0)))
                                    (begin
                                      (let ((_g27223_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27222_)
                                                   (##vector-length _g27222_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27223_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27223_)))
                                      (let ((_%target2308423105%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g27222_ 0)))
                                            (_%tl2308623108%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g27222_ 1))))
                                        (if (gx#stx-null? _%tl2308623108%_)
                                            (letrec ((_%loop2308723111%_
                                                      (lambda (_%hd2308523115%_
                                                               _%mixin-setf2309123118%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2308523115%_)
                                                            (let ((_%e2308823121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2308523115%_)))
                      (let ((_%lp-hd2308923125%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2308823121%_)))
                            (_%lp-tl2309023128%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2308823121%_))))
                        (_%loop2308723111%_
                         _%lp-tl2309023128%_
                         (cons _%lp-hd2308923125%_ _%mixin-setf2309123118%_))))
                    (let ((_%mixin-setf2309223131%_
                           (reverse _%mixin-setf2309123118%_)))
                      ((lambda (_%L23135%_)
                         (let* ((_%g2315223169%_
                                 (lambda (_%g2315323165%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2315323165%_)))
                                (_%g2315124668%_
                                 (lambda (_%g2315323173%_)
                                   (if (gx#stx-pair/null? _%g2315323173%_)
                                       (let ((_g27224_
                                              (gx#syntax-split-splice
                                               _%g2315323173%_
                                               '0)))
                                         (begin
                                           (let ((_g27225_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27224_)
                                                        (##vector-length
                                                         _g27224_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27225_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27225_)))
                                           (let ((_%target2315523176%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g27224_ 0)))
                                                 (_%tl2315723179%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g27224_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2315723179%_)
                                                 (letrec ((_%loop2315823182%_
                                                           (lambda (_%hd2315623186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2316223189%_)
                     (if (gx#stx-pair? _%hd2315623186%_)
                         (let ((_%e2315923192%_
                                (gx#syntax-e _%hd2315623186%_)))
                           (let ((_%lp-hd2316023196%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2315923192%_)))
                                 (_%lp-tl2316123199%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2315923192%_))))
                             (_%loop2315823182%_
                              _%lp-tl2316123199%_
                              (cons _%lp-hd2316023196%_ _%ugetf2316223189%_))))
                         (let ((_%ugetf2316323202%_
                                (reverse _%ugetf2316223189%_)))
                           ((lambda (_%L23206%_)
                              (let* ((_%g2322323240%_
                                      (lambda (_%g2322423236%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2322423236%_)))
                                     (_%g2322224651%_
                                      (lambda (_%g2322423244%_)
                                        (if (gx#stx-pair/null? _%g2322423244%_)
                                            (let ((_g27226_
                                                   (gx#syntax-split-splice
                                                    _%g2322423244%_
                                                    '0)))
                                              (begin
                                                (let ((_g27227_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27226_)
                                                             (##vector-length
                                                              _g27226_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27227_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2322623247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g27226_
                                                          0)))
                                                      (_%tl2322823250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g27226_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2322823250%_)
                                                      (letrec ((_%loop2322923253%_
                                                                (lambda (_%hd2322723257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2323323260%_)
                          (if (gx#stx-pair? _%hd2322723257%_)
                              (let ((_%e2323023263%_
                                     (gx#syntax-e _%hd2322723257%_)))
                                (let ((_%lp-hd2323123267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2323023263%_)))
                                      (_%lp-tl2323223270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2323023263%_))))
                                  (_%loop2322923253%_
                                   _%lp-tl2323223270%_
                                   (cons _%lp-hd2323123267%_
                                         _%usetf2323323260%_))))
                              (let ((_%usetf2323423273%_
                                     (reverse _%usetf2323323260%_)))
                                ((lambda (_%L23277%_)
                                   (let* ((_%g2329423311%_
                                           (lambda (_%g2329523307%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2329523307%_)))
                                          (_%g2329324634%_
                                           (lambda (_%g2329523315%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2329523315%_)
                                                 (let ((_g27228_
                                                        (gx#syntax-split-splice
                                                         _%g2329523315%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27229_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27228_)
                          (##vector-length _g27228_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27229_ 2)))
                   (error "Context expects 2 values" _g27229_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2329723318%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27228_
                                                               0)))
                                                           (_%tl2329923321%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27228_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2329923321%_)
                                                           (letrec ((_%loop2330023324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2329823328%_
                                      _%mixin-ugetf2330423331%_)
                               (if (gx#stx-pair? _%hd2329823328%_)
                                   (let ((_%e2330123334%_
                                          (gx#syntax-e _%hd2329823328%_)))
                                     (let ((_%lp-hd2330223338%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2330123334%_)))
                                           (_%lp-tl2330323341%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2330123334%_))))
                                       (_%loop2330023324%_
                                        _%lp-tl2330323341%_
                                        (cons _%lp-hd2330223338%_
                                              _%mixin-ugetf2330423331%_))))
                                   (let ((_%mixin-ugetf2330523344%_
                                          (reverse _%mixin-ugetf2330423331%_)))
                                     ((lambda (_%L23348%_)
                                        (let* ((_%g2336523382%_
                                                (lambda (_%g2336623378%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2336623378%_)))
                                               (_%g2336424617%_
                                                (lambda (_%g2336623386%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2336623386%_)
                                                      (let ((_g27230_
                                                             (gx#syntax-split-splice
                                                              _%g2336623386%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27230_)
                               (##vector-length _g27230_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27231_ 2)))
                        (error "Context expects 2 values" _g27231_)))
                  (let ((_%target2336823389%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27230_ 0)))
                        (_%tl2337023392%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27230_ 1))))
                    (if (gx#stx-null? _%tl2337023392%_)
                        (letrec ((_%loop2337123395%_
                                  (lambda (_%hd2336923399%_
                                           _%mixin-usetf2337523402%_)
                                    (if (gx#stx-pair? _%hd2336923399%_)
                                        (let ((_%e2337223405%_
                                               (gx#syntax-e _%hd2336923399%_)))
                                          (let ((_%lp-hd2337323409%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2337223405%_)))
                                                (_%lp-tl2337423412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2337223405%_))))
                                            (_%loop2337123395%_
                                             _%lp-tl2337423412%_
                                             (cons _%lp-hd2337323409%_
                                                   _%mixin-usetf2337523402%_))))
                                        (let ((_%mixin-usetf2337623415%_
                                               (reverse _%mixin-usetf2337523402%_)))
                                          ((lambda (_%L23419%_)
                                             (let* ((_%type-slots23454%_
                                                     (if (gx#stx-null?
                                                          _%slots22561%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L22918%_
                                _%L22847%_
                                _%L22776%_)
                               (foldr (lambda (_%g2343923444%_
                                               _%g2344023447%_
                                               _%g2344123449%_
                                               _%g2344223451%_)
                                        (cons (cons _%g2344123449%_
                                                    (cons _%g2344023447%_
                                                          (cons _%g2343923444%_
                                                                '())))
                                              _%g2344223451%_))
                                      '()
                                      _%L22918%_
                                      _%L22847%_
                                      _%L22776%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23475%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots22935%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L23135%_
                                _%L23064%_
                                _%L22992%_)
                               (foldr (lambda (_%g2346023465%_
                                               _%g2346123468%_
                                               _%g2346223470%_
                                               _%g2346323472%_)
                                        (cons (cons _%g2346223470%_
                                                    (cons _%g2346123468%_
                                                          (cons _%g2346023465%_
                                                                '())))
                                              _%g2346323472%_))
                                      '()
                                      _%L23135%_
                                      _%L23064%_
                                      _%L22992%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23482%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22562%_)))
                           (if _%$e23478%_ _%$e23478%_ _%id22559%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23489%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22562%_)))
                           (if _%$e23485%_
                               _%$e23485%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%L22594%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23504%_
                                                     (let ((_%$e23500%_
                                                            (let ((_%e2349123493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22562%_)))
                      (if _%e2349123493%_
                          (let ((_%e23497%_ _%e2349123493%_))
                            (cons 'constructor: (cons _%e23497%_ '())))
                          '#f))))
               (if _%$e23500%_ _%$e23500%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23542%_
                                                     (let* ((_%properties23507%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22562%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23522%_
                     (let ((_%$e23510%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22562%_))))
                       (if _%$e23510%_
                           ((lambda (_%print23514%_)
                              (let ((_%print23517%_
                                     (if (eq? _%print23514%_ '#t)
                                         _%slots22561%_
                                         _%print23514%_)))
                                (cons (cons 'print: _%print23517%_)
                                      _%properties23507%_)))
                            _%$e23510%_)
                           _%properties23507%_)))
                    (_%properties23537%_
                     (let ((_%$e23525%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22562%_))))
                       (if _%$e23525%_
                           ((lambda (_%equal23529%_)
                              (let ((_%equal23532%_
                                     (if (eq? _%equal23529%_ '#t)
                                         _%slots22561%_
                                         _%equal23529%_)))
                                (cons (cons 'equal: _%equal23532%_)
                                      _%properties23522%_)))
                            _%$e23525%_)
                           _%properties23522%_))))
               _%properties23537%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23583%_
                                                     (if (null? _%properties23542%_)
                                                         '()
                                                         (let* ((_%g2354523553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2354623549%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2354623549%_)))
                        (_%g2354423579%_
                         (lambda (_%g2354623557%_)
                           ((lambda (_%L23560%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%L23560%_ '()))
                                          '())))
                            _%g2354623557%_))))
                   (_%g2354423579%_ _%properties23542%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23595%_
                                                     (let ((_%$e23586%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22562%_)))
                                                       (if _%$e23586%_
                                                           ((lambda (_%metaclass23590%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23590%_)
                          _%metaclass23590%_
                          '#f))
                    _%$e23586%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23598%_
                                                     (if _%metaclass23595%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23601%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22562%_)))
                                                    (_%type-struct23604%_
                                                     (cons 'struct:
                                                           (cons _%struct?22576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23607%_
                                                     (cons 'final:
                                                           (cons _%final?23601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2361023627%_
                                                     (lambda (_%g2361123623%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2361123623%_)))
                                                    (_%g2360924613%_
                                                     (lambda (_%g2361123631%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2361123631%_)
                                                           (let ((_g27232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2361123631%_ '0)))
                     (begin
                       (let ((_g27233_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27232_)
                                    (##vector-length _g27232_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27233_ 2)))
                             (error "Context expects 2 values" _g27233_)))
                       (let ((_%target2361323634%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27232_ 0)))
                             (_%tl2361523637%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27232_ 1))))
                         (if (gx#stx-null? _%tl2361523637%_)
                             (letrec ((_%loop2361623640%_
                                       (lambda (_%hd2361423644%_
                                                _%type-body2362023647%_)
                                         (if (gx#stx-pair? _%hd2361423644%_)
                                             (let ((_%e2361723650%_
                                                    (gx#syntax-e
                                                     _%hd2361423644%_)))
                                               (let ((_%lp-hd2361823654%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2361723650%_)))
                                                     (_%lp-tl2361923657%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2361723650%_))))
                                                 (_%loop2361623640%_
                                                  _%lp-tl2361923657%_
                                                  (cons _%lp-hd2361823654%_
                                                        _%type-body2362023647%_))))
                                             (let ((_%type-body2362123660%_
                                                    (reverse _%type-body2362023647%_)))
                                               ((lambda (_%L23664%_)
                                                  (let* ((_%g2368523693%_
                                                          (lambda (_%g2368623689%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2368623689%_)))
                                                         (_%g2368424601%_
                                                          (lambda (_%g2368623697%_)
                                                            ((lambda (_%L23700%_)
                                                               (let* ((_%g2371323721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2371423717%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2371423717%_)))
                              (_%g2371224530%_
                               (lambda (_%g2371423725%_)
                                 ((lambda (_%L23728%_)
                                    (let* ((_%g2374123749%_
                                            (lambda (_%g2374223745%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2374223745%_)))
                                           (_%g2374024495%_
                                            (lambda (_%g2374223753%_)
                                              ((lambda (_%L23756%_)
                                                 (let* ((_%g2376923777%_
                                                         (lambda (_%g2377023773%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2377023773%_)))
                                                        (_%g2376824409%_
                                                         (lambda (_%g2377023781%_)
                                                           ((lambda (_%L23784%_)
                                                              (let* ((_%g2379723805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2379823801%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2379823801%_)))
                             (_%g2379624397%_
                              (lambda (_%g2379823809%_)
                                ((lambda (_%L23812%_)
                                   (let* ((_%g2382523833%_
                                           (lambda (_%g2382623829%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2382623829%_)))
                                          (_%g2382424393%_
                                           (lambda (_%g2382623837%_)
                                             ((lambda (_%L23840%_)
                                                (let* ((_%g2385323861%_
                                                        (lambda (_%g2385423857%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2385423857%_)))
                                                       (_%g2385224389%_
                                                        (lambda (_%g2385423865%_)
                                                          ((lambda (_%L23868%_)
                                                             (let* ((_%g2388123889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2388223885%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2388223885%_)))
                            (_%g2388024354%_
                             (lambda (_%g2388223893%_)
                               ((lambda (_%L23896%_)
                                  (let* ((_%g2390923917%_
                                          (lambda (_%g2391023913%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2391023913%_)))
                                         (_%g2390824283%_
                                          (lambda (_%g2391023921%_)
                                            ((lambda (_%L23924%_)
                                               (let* ((_%g2393723945%_
                                                       (lambda (_%g2393823941%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2393823941%_)))
                                                      (_%g2393624279%_
                                                       (lambda (_%g2393823949%_)
                                                         ((lambda (_%L23952%_)
                                                            (let* ((_%g2396523973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2396623969%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2396623969%_)))
                           (_%g2396424275%_
                            (lambda (_%g2396623977%_)
                              ((lambda (_%L23980%_)
                                 (let* ((_%g2399324001%_
                                         (lambda (_%g2399423997%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2399423997%_)))
                                        (_%g2399224271%_
                                         (lambda (_%g2399424005%_)
                                           ((lambda (_%L24008%_)
                                              (let* ((_%g2402124029%_
                                                      (lambda (_%g2402224025%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2402224025%_)))
                                                     (_%g2402024245%_
                                                      (lambda (_%g2402224033%_)
                                                        ((lambda (_%L24036%_)
                                                           (let* ((_%g2404924057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2405024053%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2405024053%_)))
                          (_%g2404824219%_
                           (lambda (_%g2405024061%_)
                             ((lambda (_%L24064%_)
                                (let* ((_%g2407724085%_
                                        (lambda (_%g2407824081%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2407824081%_)))
                                       (_%g2407624193%_
                                        (lambda (_%g2407824089%_)
                                          ((lambda (_%L24092%_)
                                             (let* ((_%g2410524113%_
                                                     (lambda (_%g2410624109%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2410624109%_)))
                                                    (_%g2410424167%_
                                                     (lambda (_%g2410624117%_)
                                                       ((lambda (_%L24120%_)
                                                          (let* ((_%g2413324141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2413424137%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2413424137%_)))
                         (_%g2413224163%_
                          (lambda (_%g2413424145%_)
                            ((lambda (_%L24148%_)
                               (_%wrap22564%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%L23700%_
                                            (cons _%L24148%_ '())))))
                             _%g2413424145%_))))
                    (_%g2413224163%_
                     (_%wrap22564%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%L22594%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%L23728%_
                                                          (cons 'name:
                                                                (cons _%L23756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%L23812%_
                                          (cons 'super:
                                                (cons _%L23784%_
                                                      (cons 'struct?:
                                                            (cons _%L23840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%L23868%_
                                      (cons 'metaclass:
                                            (cons _%L23896%_
                                                  (cons 'constructor-method:
                                                        (cons _%L23924%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L23952%_
                                  (cons 'constructor:
                                        (cons _%L23980%_
                                              (cons 'predicate:
                                                    (cons _%L24008%_
                                                          (cons 'accessors:
                                                                (cons _%L24036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%L24064%_
                                          (cons 'unchecked-accessors:
                                                (cons _%L24092%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%L24120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2410624117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2410424167%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%L23277%_
                                                         _%L22776%_)
                                                        (foldr (lambda (_%g2417024177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2417124180%_
                                _%g2417224182%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2417124180%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2417024177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2417224182%_))
                       (begin
                         (gx#syntax-check-splice-targets _%L23419%_ _%L22992%_)
                         (foldr (lambda (_%g2417324185%_
                                         _%g2417424188%_
                                         _%g2417524190%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2417424188%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2417324185%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2417524190%_))
                                '()
                                _%L23419%_
                                _%L22992%_))
                       _%L23277%_
                       _%L22776%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2407824089%_))))
                                  (_%g2407624193%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%L23206%_
                                            _%L22776%_)
                                           (foldr (lambda (_%g2419624203%_
                                                           _%g2419724206%_
                                                           _%g2419824208%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2419724206%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2419624203%_ '()))
                                          '()))))
                  _%g2419824208%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L23348%_
                                                     _%L22992%_)
                                                    (foldr (lambda (_%g2419924211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2420024214%_
                            _%g2420124216%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2420024214%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2419924211%_
                                                               '()))
                                                   '()))))
                           _%g2420124216%_))
                   '()
                   _%L23348%_
                   _%L22992%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%L23206%_
                                                  _%L22776%_))))))
                              _%g2405024061%_))))
                     (_%g2404824219%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%L22918%_
                               _%L22776%_)
                              (foldr (lambda (_%g2422224229%_
                                              _%g2422324232%_
                                              _%g2422424234%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2422324232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2422224229%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2422424234%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%L23135%_
                                        _%L22992%_)
                                       (foldr (lambda (_%g2422524237%_
                                                       _%g2422624240%_
                                                       _%g2422724242%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2422624240%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2422524237%_ '()))
                                      '()))))
              _%g2422724242%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L23135%_
                                              _%L22992%_))
                                     _%L22918%_
                                     _%L22776%_))))))
                 _%g2402224033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2402024245%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%L22847%_
                                                          _%L22776%_)
                                                         (foldr (lambda (_%g2424824255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2424924258%_
                                 _%g2425024260%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2424924258%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2424824255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2425024260%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%L23064%_
                           _%L22992%_)
                          (foldr (lambda (_%g2425124263%_
                                          _%g2425224266%_
                                          _%g2425324268%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2425224266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2425124263%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2425324268%_))
                                 '()
                                 _%L23064%_
                                 _%L22992%_))
                        _%L22847%_
                        _%L22776%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2399424005%_))))
                                   (_%g2399224271%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%L22681%_ '())))))
                               _%g2396623977%_))))
                      (_%g2396424275%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%L22653%_ '())))))
                  _%g2393823949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2393624279%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%L22625%_
                                                              '())))))
                                             _%g2391023921%_))))
                                    (_%g2390824283%_
                                     (if (null? _%type-constructor23504%_)
                                         '#f
                                         (let* ((_%g2428724302%_
                                                 (lambda (_%g2428824298%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2428824298%_)))
                                                (_%g2428624350%_
                                                 (lambda (_%g2428824306%_)
                                                   (if (gx#stx-pair?
                                                        _%g2428824306%_)
                                                       (let ((_%e2429024309%_
                                                              (gx#syntax-e
                                                               _%g2428824306%_)))
                                                         (let ((_%hd2429124313%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2429024309%_)))
                       (_%tl2429224316%_
                        (let () (declare (not safe)) (##cdr _%e2429024309%_))))
                   (if (gx#stx-datum? _%hd2429124313%_)
                       (let ((_%e2429324319%_ (gx#stx-e _%hd2429124313%_)))
                         (if (equal? _%e2429324319%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2429224316%_)
                                 (let ((_%e2429424323%_
                                        (gx#syntax-e _%tl2429224316%_)))
                                   (let ((_%hd2429524327%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2429424323%_)))
                                         (_%tl2429624330%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2429424323%_))))
                                     (if (gx#stx-null? _%tl2429624330%_)
                                         ((lambda (_%L24333%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L24333%_ '())))
                                          _%hd2429524327%_)
                                         (_%g2428724302%_ _%g2428824306%_))))
                                 (_%g2428724302%_ _%g2428824306%_))
                             (_%g2428724302%_ _%g2428824306%_)))
                       (_%g2428724302%_ _%g2428824306%_))))
               (_%g2428724302%_ _%g2428824306%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2428624350%_
                                            _%type-constructor23504%_))))))
                                _%g2388223893%_))))
                       (_%g2388024354%_
                        (if _%metaclass23595%_
                            (let* ((_%g2435824366%_
                                    (lambda (_%g2435924362%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2435924362%_)))
                                   (_%g2435724385%_
                                    (lambda (_%g2435924370%_)
                                      ((lambda (_%L24373%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%L24373%_ '())))
                                       _%g2435924370%_))))
                              (_%g2435724385%_ _%metaclass23595%_))
                            '#f))))
                   _%g2385423865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2385224389%_
                                                   _%final?23601%_)))
                                              _%g2382623837%_))))
                                     (_%g2382424393%_ _%struct?22576%_)))
                                 _%g2379823809%_))))
                        (_%g2379624397%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2440024403%_
                                                     _%g2440124406%_)
                                              (cons _%g2440024403%_
                                                    _%g2440124406%_))
                                            '()
                                            _%L22776%_)
                                     '())))))
                    _%g2377023781%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2376824409%_
                                                    (let* ((_%g2441324430%_
                                                            (lambda (_%g2441424426%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2441424426%_)))
                                                           (_%g2441224491%_
                                                            (lambda (_%g2441424434%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2441424434%_)
                          (let ((_g27234_
                                 (gx#syntax-split-splice _%g2441424434%_ '0)))
                            (begin
                              (let ((_g27235_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27234_)
                                           (##vector-length _g27234_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27235_ 2)))
                                    (error "Context expects 2 values"
                                           _g27235_)))
                              (let ((_%target2441624437%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27234_ 0)))
                                    (_%tl2441824440%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27234_ 1))))
                                (if (gx#stx-null? _%tl2441824440%_)
                                    (letrec ((_%loop2441924443%_
                                              (lambda (_%hd2441724447%_
                                                       _%super-id2442324450%_)
                                                (if (gx#stx-pair?
                                                     _%hd2441724447%_)
                                                    (let ((_%e2442024453%_
                                                           (gx#syntax-e
                                                            _%hd2441724447%_)))
                                                      (let ((_%lp-hd2442124457%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2442024453%_)))
                    (_%lp-tl2442224460%_
                     (let () (declare (not safe)) (##cdr _%e2442024453%_))))
                (_%loop2441924443%_
                 _%lp-tl2442224460%_
                 (cons _%lp-hd2442124457%_ _%super-id2442324450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2442424463%_
                                                           (reverse _%super-id2442324450%_)))
                                                      ((lambda (_%L24467%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2448224485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2448324488%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2448224485%_ '()))
                                      _%g2448324488%_))
                              '()
                              _%L24467%_)))
               _%super-id2442424463%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2441924443%_
                                       _%target2441624437%_
                                       '()))
                                    (_%g2441324430%_ _%g2441424434%_)))))
                          (_%g2441324430%_ _%g2441424434%_)))))
              (_%g2441224491%_ _%super-ref22560%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2374223753%_))))
                                      (_%g2374024495%_
                                       (let* ((_%g2449924507%_
                                               (lambda (_%g2450024503%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2450024503%_)))
                                              (_%g2449824526%_
                                               (lambda (_%g2450024511%_)
                                                 ((lambda (_%L24514%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%L24514%_
                                                                '())))
                                                  _%g2450024511%_))))
                                         (_%g2449824526%_
                                          (cadr _%type-name23482%_))))))
                                  _%g2371423725%_))))
                         (_%g2371224530%_
                          (let* ((_%g2453424549%_
                                  (lambda (_%g2453524545%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2453524545%_)))
                                 (_%g2453324597%_
                                  (lambda (_%g2453524553%_)
                                    (if (gx#stx-pair? _%g2453524553%_)
                                        (let ((_%e2453724556%_
                                               (gx#syntax-e _%g2453524553%_)))
                                          (let ((_%hd2453824560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2453724556%_)))
                                                (_%tl2453924563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2453724556%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2453824560%_)
                                                (let ((_%e2454024566%_
                                                       (gx#stx-e
                                                        _%hd2453824560%_)))
                                                  (if (equal? _%e2454024566%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2453924563%_)
                                                          (let ((_%e2454124570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2453924563%_)))
                    (let ((_%hd2454224574%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2454124570%_)))
                          (_%tl2454324577%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2454124570%_))))
                      (if (gx#stx-null? _%tl2454324577%_)
                          ((lambda (_%L24580%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%L24580%_ '())))
                           _%hd2454224574%_)
                          (_%g2453424549%_ _%g2453524553%_))))
                  (_%g2453424549%_ _%g2453524553%_))
              (_%g2453424549%_ _%g2453524553%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2453424549%_
                                                 _%g2453524553%_))))
                                        (_%g2453424549%_ _%g2453524553%_)))))
                            (_%g2453324597%_ _%type-id23489%_)))))
                     _%g2368623697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2368424601%_
                                                     (_%wrap22564%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%L22625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L22709%_
                                (cons _%L22653%_
                                      (cons _%L22681%_
                                            (foldr (lambda (_%g2460424607%_
                                                            _%g2460524610%_)
                                                     (cons _%g2460424607%_
                                                           _%g2460524610%_))
                                                   '()
                                                   _%L23664%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2362123660%_))))))
                               (_%loop2361623640%_ _%target2361323634%_ '()))
                             (_%g2361023627%_ _%g2361123631%_)))))
                   (_%g2361023627%_ _%g2361123631%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2360924613%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23475%_
                                                                _%type-slots23454%_)
                                                         _%type-properties23583%_)
                                                  _%type-metaclass23598%_)
                                           _%type-final23607%_)
                                    _%type-struct23604%_)
                             _%type-constructor23504%_)
                      _%type-name23482%_)
               _%type-id23489%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2337623415%_))))))
                          (_%loop2337123395%_ _%target2336823389%_ '()))
                        (_%g2336523382%_ _%g2336623386%_)))))
              (_%g2336523382%_ _%g2336623386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2336424617%_
                                           (gx#stx-map
                                            (lambda (_%g2462024622%_)
                                              (_%make-id22566%_
                                               '"&"
                                               _%g2462024622%_))
                                            (foldr (lambda (_%g2462524628%_
                                                            _%g2462624631%_)
                                                     (cons _%g2462524628%_
                                                           _%g2462624631%_))
                                                   '()
                                                   _%L23135%_)))))
                                      _%mixin-ugetf2330523344%_))))))
                     (_%loop2330023324%_ _%target2329723318%_ '()))
                   (_%g2329423311%_ _%g2329523315%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2329423311%_
                                                  _%g2329523315%_)))))
                                     (_%g2329324634%_
                                      (gx#stx-map
                                       (lambda (_%g2463724639%_)
                                         (_%make-id22566%_
                                          '"&"
                                          _%g2463724639%_))
                                       (foldr (lambda (_%g2464224645%_
                                                       _%g2464324648%_)
                                                (cons _%g2464224645%_
                                                      _%g2464324648%_))
                                              '()
                                              _%L23064%_)))))
                                 _%usetf2323423273%_))))))
                (_%loop2322923253%_ _%target2322623247%_ '()))
              (_%g2322323240%_ _%g2322423244%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2322323240%_
                                             _%g2322423244%_)))))
                                (_%g2322224651%_
                                 (gx#stx-map
                                  (lambda (_%g2465424656%_)
                                    (_%make-id22566%_ '"&" _%g2465424656%_))
                                  (foldr (lambda (_%g2465924662%_
                                                  _%g2466024665%_)
                                           (cons _%g2465924662%_
                                                 _%g2466024665%_))
                                         '()
                                         _%L22918%_)))))
                            _%ugetf2316323202%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2315823182%_
                                                    _%target2315523176%_
                                                    '()))
                                                 (_%g2315223169%_
                                                  _%g2315323173%_)))))
                                       (_%g2315223169%_ _%g2315323173%_)))))
                           (_%g2315124668%_
                            (gx#stx-map
                             (lambda (_%g2467124673%_)
                               (_%make-id22566%_ '"&" _%g2467124673%_))
                             (foldr (lambda (_%g2467624679%_ _%g2467724682%_)
                                      (cons _%g2467624679%_ _%g2467724682%_))
                                    '()
                                    _%L22847%_)))))
                       _%mixin-setf2309223131%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2308723111%_
                                               _%target2308423105%_
                                               '()))
                                            (_%g2308123098%_
                                             _%g2308223102%_)))))
                                  (_%g2308123098%_ _%g2308223102%_)))))
                      (_%g2308024685%_
                       (gx#stx-map
                        (lambda (_%g2468824690%_)
                          (_%make-id22566%_
                           _%name22570%_
                           '"-"
                           _%g2468824690%_
                           '"-set!"))
                        _%mixin-slots22935%_))))
                  _%mixin-getf2302123060%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2301623040%_
                                          _%target2301323034%_
                                          '()))
                                       (_%g2301023027%_ _%g2301123031%_)))))
                             (_%g2301023027%_ _%g2301123031%_)))))
                 (_%g2300924694%_
                  (gx#stx-map
                   (lambda (_%g2469724699%_)
                     (_%make-id22566%_ _%name22570%_ '"-" _%g2469724699%_))
                   _%mixin-slots22935%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2294922988%_))))))
                                    (_%loop2294422968%_
                                     _%target2294122962%_
                                     '()))
                                  (_%g2293822955%_ _%g2293922959%_)))))
                        (_%g2293822955%_ _%g2293922959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2293724703%_
                                                     _%mixin-slots22935%_)))
                                                _%setf2287522914%_))))))
                               (_%loop2287022894%_ _%target2286722888%_ '()))
                             (_%g2286422881%_ _%g2286522885%_)))))
                   (_%g2286422881%_ _%g2286522885%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2286324707%_
                                                (gx#stx-map
                                                 (lambda (_%g2471024712%_)
                                                   (_%make-id22566%_
                                                    _%name22570%_
                                                    '"-"
                                                    _%g2471024712%_
                                                    '"-set!"))
                                                 _%slots22561%_))))
                                           _%getf2280422843%_))))))
                          (_%loop2279922823%_ _%target2279622817%_ '()))
                        (_%g2279322810%_ _%g2279422814%_)))))
              (_%g2279322810%_ _%g2279422814%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2279224716%_
                                           (gx#stx-map
                                            (lambda (_%g2471924721%_)
                                              (_%make-id22566%_
                                               _%name22570%_
                                               '"-"
                                               _%g2471924721%_))
                                            _%slots22561%_))))
                                      _%slot2273322772%_))))))
                     (_%loop2272822752%_ _%target2272522746%_ '()))
                   (_%g2272222739%_ _%g2272322743%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2272222739%_
                                                  _%g2272322743%_)))))
                                     (_%g2272124725%_ _%slots22561%_)))
                                 _%g2269522706%_))))
                        (_%g2269324729%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22573%_)))))
                    _%g2266722678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2266524733%_
                                                    (_%make-id22566%_
                                                     _%name22570%_
                                                     '"?"))))
                                               _%g2263922650%_))))
                                      (_%g2263724737%_
                                       (_%make-id22566%_
                                        '"make-"
                                        _%name22570%_))))
                                  _%g2261122622%_))))
                         (_%g2260924741%_
                          (_%make-id22566%_ _%name22570%_ '"::t"))))
                     _%g2258022591%_))))
            (_%g2257824745%_ _%id22559%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24812%_)
        (let* ((_%g2481624835%_
                (lambda (_%g2481724831%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2481724831%_)))
               (_%g2481524892%_
                (lambda (_%g2481724839%_)
                  (if (gx#stx-pair? _%g2481724839%_)
                      (let ((_%e2482124842%_ (gx#syntax-e _%g2481724839%_)))
                        (let ((_%hd2482224846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2482124842%_)))
                              (_%tl2482324849%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2482124842%_))))
                          (if (gx#stx-pair? _%tl2482324849%_)
                              (let ((_%e2482424852%_
                                     (gx#syntax-e _%tl2482324849%_)))
                                (let ((_%hd2482524856%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2482424852%_)))
                                      (_%tl2482624859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2482424852%_))))
                                  (if (gx#stx-pair? _%tl2482624859%_)
                                      (let ((_%e2482724862%_
                                             (gx#syntax-e _%tl2482624859%_)))
                                        (let ((_%hd2482824866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2482724862%_)))
                                              (_%tl2482924869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2482724862%_))))
                                          ((lambda (_%L24872%_
                                                    _%L24874%_
                                                    _%L24875%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%L24875%_
                                                         (cons _%L24874%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L24872%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2482924869%_
                                           _%hd2482824866%_
                                           _%hd2482524856%_)))
                                      (_%g2481624835%_ _%g2481724839%_))))
                              (_%g2481624835%_ _%g2481724839%_))))
                      (_%g2481624835%_ _%g2481724839%_)))))
          (_%g2481524892%_ _%$stx24812%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24896%_)
        (letrec ((_%generate24899%_
                  (lambda (_%hd24983%_ _%slots24985%_ _%body24986%_)
                    (let* ((_%__stx2675126752%_ _%hd24983%_)
                           (_%g2498925001%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2675126752%_))))
                      (let ((_%__kont2675426755%_
                             (lambda (_%L25029%_ _%L25031%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24896%_
                                _%L25031%_
                                (gx#syntax->list _%L25029%_)
                                _%slots24985%_
                                _%body24986%_)))
                            (_%__kont2675626757%_
                             (lambda ()
                               (if (gx#identifier? _%hd24983%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24896%_
                                    _%hd24983%_
                                    '()
                                    _%slots24985%_
                                    _%body24986%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _%stx24896%_
                                    _%hd24983%_)))))
                        (let ((_%__match2676426765%_
                               (lambda (_%e2499325019%_
                                        _%hd2499425023%_
                                        _%tl2499525026%_)
                                 (let ((_%L25029%_ _%tl2499525026%_)
                                       (_%L25031%_ _%hd2499425023%_))
                                   (if (and (gx#stx-list? _%L25029%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%L25029%_))
                                       (_%__kont2675426755%_
                                        _%L25029%_
                                        _%L25031%_)
                                       (_%__kont2675626757%_))))))
                          (if (gx#stx-pair? _%__stx2675126752%_)
                              (let ((_%e2499325019%_
                                     (gx#syntax-e _%__stx2675126752%_)))
                                (let ((_%tl2499525026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2499325019%_)))
                                      (_%hd2499425023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2499325019%_))))
                                  (_%__match2676426765%_
                                   _%e2499325019%_
                                   _%hd2499425023%_
                                   _%tl2499525026%_)))
                              (_%__kont2675626757%_))))))))
          (let* ((_%g2490224921%_
                  (lambda (_%g2490324917%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2490324917%_)))
                 (_%g2490124979%_
                  (lambda (_%g2490324925%_)
                    (if (gx#stx-pair? _%g2490324925%_)
                        (let ((_%e2490724928%_ (gx#syntax-e _%g2490324925%_)))
                          (let ((_%hd2490824932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2490724928%_)))
                                (_%tl2490924935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2490724928%_))))
                            (if (gx#stx-pair? _%tl2490924935%_)
                                (let ((_%e2491024938%_
                                       (gx#syntax-e _%tl2490924935%_)))
                                  (let ((_%hd2491124942%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2491024938%_)))
                                        (_%tl2491224945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2491024938%_))))
                                    (if (gx#stx-pair? _%tl2491224945%_)
                                        (let ((_%e2491324948%_
                                               (gx#syntax-e _%tl2491224945%_)))
                                          (let ((_%hd2491424952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2491324948%_)))
                                                (_%tl2491524955%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2491324948%_))))
                                            ((lambda (_%L24958%_
                                                      _%L24960%_
                                                      _%L24961%_)
                                               (if (and (gx#identifier-list?
                                                         _%L24960%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%L24958%_))
                                                   (_%generate24899%_
                                                    _%L24961%_
                                                    _%L24960%_
                                                    _%L24958%_)
                                                   (_%g2490224921%_
                                                    _%g2490324925%_)))
                                             _%tl2491524955%_
                                             _%hd2491424952%_
                                             _%hd2491124942%_)))
                                        (_%g2490224921%_ _%g2490324925%_))))
                                (_%g2490224921%_ _%g2490324925%_))))
                        (_%g2490224921%_ _%g2490324925%_)))))
            (_%g2490124979%_ _%stx24896%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25048%_)
        (letrec ((_%wrap25051%_
                  (lambda (_%e-stx25397%_)
                    (gx#stx-wrap-source
                     _%e-stx25397%_
                     (gx#stx-source _%stx25048%_))))
                 (_%method-opt?25053%_
                  (lambda (_%x25394%_)
                    (let ((__tmp27236 (gx#stx-e _%x25394%_)))
                      (declare (not safe))
                      (##memq __tmp27236 '(rebind:))))))
          (let* ((_%g2505525084%_
                  (lambda (_%g2505625080%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2505625080%_)))
                 (_%g2505425390%_
                  (lambda (_%g2505625088%_)
                    (if (gx#stx-pair? _%g2505625088%_)
                        (let ((_%e2506125091%_ (gx#syntax-e _%g2505625088%_)))
                          (let ((_%hd2506225095%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2506125091%_)))
                                (_%tl2506325098%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2506125091%_))))
                            (if (gx#stx-pair? _%tl2506325098%_)
                                (let ((_%e2506425101%_
                                       (gx#syntax-e _%tl2506325098%_)))
                                  (let ((_%hd2506525105%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2506425101%_)))
                                        (_%tl2506625108%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2506425101%_))))
                                    (if (gx#stx-pair? _%hd2506525105%_)
                                        (let ((_%e2506725111%_
                                               (gx#syntax-e _%hd2506525105%_)))
                                          (let ((_%hd2506825115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2506725111%_)))
                                                (_%tl2506925118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2506725111%_))))
                                            (if (gx#identifier?
                                                 _%hd2506825115%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27237_|
                                                     _%hd2506825115%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2506925118%_)
                                                        (let ((_%e2507025121%_
                                                               (gx#syntax-e
                                                                _%tl2506925118%_)))
                                                          (let ((_%hd2507125125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2507025121%_)))
                        (_%tl2507225128%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2507025121%_))))
                    (if (gx#stx-pair? _%tl2507225128%_)
                        (let ((_%e2507325131%_ (gx#syntax-e _%tl2507225128%_)))
                          (let ((_%hd2507425135%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2507325131%_)))
                                (_%tl2507525138%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2507325131%_))))
                            (if (gx#stx-null? _%tl2507525138%_)
                                (if (gx#stx-pair? _%tl2506625108%_)
                                    (let ((_%e2507625141%_
                                           (gx#syntax-e _%tl2506625108%_)))
                                      (let ((_%hd2507725145%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2507625141%_)))
                                            (_%tl2507825148%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2507625141%_))))
                                        ((lambda (_%L25151%_
                                                  _%L25153%_
                                                  _%L25154%_
                                                  _%L25155%_)
                                           (if (and (gx#identifier? _%L25155%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                       _%L25154%_))
                                                    (gx#stx-plist?
                                                     _%L25151%_
                                                     _%method-opt?25053%_))
                                               (let* ((_%klass25182%_
                                                       (gx#syntax-local-value
                                                        _%L25154%_))
                                                      (_%rebind?25185%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%L25151%_)))
                                                      (_%g2518825196%_
                                                       (lambda (_%g2518925192%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2518925192%_)))
                                                      (_%g2518725380%_
                                                       (lambda (_%g2518925200%_)
                                                         ((lambda (_%L25203%_)
                                                            (let* ((_%g2521825226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2521925222%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2521925222%_)))
                           (_%g2521725376%_
                            (lambda (_%g2521925230%_)
                              ((lambda (_%L25233%_)
                                 (let* ((_%g2524625254%_
                                         (lambda (_%g2524725250%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2524725250%_)))
                                        (_%g2524525372%_
                                         (lambda (_%g2524725258%_)
                                           ((lambda (_%L25261%_)
                                              (let* ((_%g2527425282%_
                                                      (lambda (_%g2527525278%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2527525278%_)))
                                                     (_%g2527325368%_
                                                      (lambda (_%g2527525286%_)
                                                        ((lambda (_%L25289%_)
                                                           (let* ((_%g2530225310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2530325306%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2530325306%_)))
                          (_%g2530125364%_
                           (lambda (_%g2530325314%_)
                             ((lambda (_%L25317%_)
                                (let* ((_%g2533025338%_
                                        (lambda (_%g2533125334%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2533125334%_)))
                                       (_%g2532925360%_
                                        (lambda (_%g2533125342%_)
                                          ((lambda (_%L25345%_)
                                             (_%wrap25051%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%L25289%_
                                                          (cons _%L25345%_
                                                                '())))))
                                           _%g2533125342%_))))
                                  (_%g2532925360%_
                                   (_%wrap25051%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%L25203%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L25155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%L25233%_ (cons _%L25317%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2530325314%_))))
                     (_%g2530125364%_ _%rebind?25185%_)))
                 _%g2527525286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2527325368%_
                                                 (_%wrap25051%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%L25233%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%L25261%_
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
                                                      (cons _%L25203%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25155%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%L25153%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2524725258%_))))
                                   (_%g2524525372%_
                                    (gx#stx-identifier
                                     _%L25154%_
                                     '@next-method))))
                               _%g2521925230%_))))
                      (_%g2521725376%_
                       (gx#stx-identifier
                        _%L25154%_
                        _%L25154%_
                        '"::"
                        _%L25155%_))))
                  _%g2518925200%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2518725380%_
                                                  (let ((__obj27028
                                                         _%klass25182%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27028
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27028
                                                           '12
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj27028
                                                         'type-descriptor)))))
                                               (if (gx#identifier? _%L25155%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                          _%L25154%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25048%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; expected type identifier"
                                                        _%stx25048%_
                                                        _%L25154%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25048%_
                                                    _%L25155%_))))
                                         _%tl2507825148%_
                                         _%hd2507725145%_
                                         _%hd2507425135%_
                                         _%hd2507125125%_)))
                                    (_%g2505525084%_ _%g2505625088%_))
                                (_%g2505525084%_ _%g2505625088%_))))
                        (_%g2505525084%_ _%g2505625088%_))))
                (_%g2505525084%_ _%g2505625088%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2505525084%_
                                                     _%g2505625088%_))
                                                (_%g2505525084%_
                                                 _%g2505625088%_))))
                                        (_%g2505525084%_ _%g2505625088%_))))
                                (_%g2505525084%_ _%g2505625088%_))))
                        (_%g2505525084%_ _%g2505625088%_)))))
            (_%g2505425390%_ _%stx25048%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25400%_)
        (letrec ((_%dotted-identifier?25403%_
                  (lambda (_%id26036%_)
                    (if (gx#identifier? _%id26036%_)
                        (let ((_%id-str26039%_
                               (symbol->string (gx#stx-e _%id26036%_))))
                          (if (string-index _%id-str26039%_ '#\.)
                              (let* ((_%split26042%_
                                      (string-split _%id-str26039%_ '#\.))
                                     (__tmp27238 (length _%split26042%_)))
                                (declare (not safe))
                                (##fx= __tmp27238 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25405%_
                  (lambda (_%id26025%_)
                    (let* ((_%id-str26028%_
                            (symbol->string (gx#stx-e _%id26025%_)))
                           (_%split26031%_
                            (string-split _%id-str26028%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26025%_
                             (car _%split26031%_))
                            (cons (gx#stx-identifier
                                   _%id26025%_
                                   (cadr _%split26031%_))
                                  '()))))))
          (let* ((_%__stx2676726768%_ _%stx25400%_)
                 (_%g2541025497%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2676726768%_))))
            (let ((_%__kont2677026771%_
                   (lambda (_%L25918%_ _%L25920%_ _%L25921%_)
                     (let* ((_%g2594925964%_
                             (lambda (_%g2595025960%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2595025960%_)))
                            (_%g2594826017%_
                             (lambda (_%g2595025968%_)
                               (if (gx#stx-pair? _%g2595025968%_)
                                   (let ((_%e2595325971%_
                                          (gx#syntax-e _%g2595025968%_)))
                                     (let ((_%hd2595425975%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2595325971%_)))
                                           (_%tl2595525978%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2595325971%_))))
                                       (if (gx#stx-pair? _%tl2595525978%_)
                                           (let ((_%e2595625981%_
                                                  (gx#syntax-e
                                                   _%tl2595525978%_)))
                                             (let ((_%hd2595725985%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2595625981%_)))
                                                   (_%tl2595825988%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2595625981%_))))
                                               (if (gx#stx-null?
                                                    _%tl2595825988%_)
                                                   ((lambda (_%L25991%_
                                                             _%L25993%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%L25993%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L25991%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2600826011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2600926014%_)
                   (cons _%g2600826011%_ _%g2600926014%_))
                 '()
                 _%L25920%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2595725985%_
                                                    _%hd2595425975%_)
                                                   (_%g2594925964%_
                                                    _%g2595025968%_))))
                                           (_%g2594925964%_ _%g2595025968%_))))
                                   (_%g2594925964%_ _%g2595025968%_)))))
                       (_%g2594826017%_ (_%split-dotted25405%_ _%L25921%_)))))
                  (_%__kont2677426775%_
                   (lambda (_%L25760%_ _%L25762%_)
                     (let* ((_%g2577925794%_
                             (lambda (_%g2578025790%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2578025790%_)))
                            (_%g2577825847%_
                             (lambda (_%g2578025798%_)
                               (if (gx#stx-pair? _%g2578025798%_)
                                   (let ((_%e2578325801%_
                                          (gx#syntax-e _%g2578025798%_)))
                                     (let ((_%hd2578425805%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2578325801%_)))
                                           (_%tl2578525808%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2578325801%_))))
                                       (if (gx#stx-pair? _%tl2578525808%_)
                                           (let ((_%e2578625811%_
                                                  (gx#syntax-e
                                                   _%tl2578525808%_)))
                                             (let ((_%hd2578725815%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2578625811%_)))
                                                   (_%tl2578825818%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2578625811%_))))
                                               (if (gx#stx-null?
                                                    _%tl2578825818%_)
                                                   ((lambda (_%L25821%_
                                                             _%L25823%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%L25823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25821%_ '()))
                                (foldr (lambda (_%g2583825841%_
                                                _%g2583925844%_)
                                         (cons _%g2583825841%_
                                               _%g2583925844%_))
                                       '()
                                       _%L25760%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2578725815%_
                                                    _%hd2578425805%_)
                                                   (_%g2577925794%_
                                                    _%g2578025798%_))))
                                           (_%g2577925794%_ _%g2578025798%_))))
                                   (_%g2577925794%_ _%g2578025798%_)))))
                       (_%g2577825847%_ (_%split-dotted25405%_ _%L25762%_)))))
                  (_%__kont2677826779%_
                   (lambda (_%L25664%_ _%L25666%_ _%L25667%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%L25666%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L25667%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2569425697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2569525700%_)
                          (cons _%g2569425697%_ _%g2569525700%_))
                        '()
                        _%L25664%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2678226783%_
                   (lambda (_%L25564%_ _%L25566%_ _%L25567%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%L25566%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L25567%_ '()))
                                       (foldr (lambda (_%g2558825591%_
                                                       _%g2558925594%_)
                                                (cons _%g2558825591%_
                                                      _%g2558925594%_))
                                              '()
                                              _%L25564%_)))))))
              (let* ((_%__match2688626887%_
                      (lambda (_%e2547425504%_
                               _%hd2547525508%_
                               _%tl2547625511%_
                               _%e2547725514%_
                               _%hd2547825518%_
                               _%tl2547925521%_
                               _%e2548025524%_
                               _%hd2548125528%_
                               _%tl2548225531%_
                               _%__splice2678426785%_
                               _%target2548325534%_
                               _%tl2548525537%_)
                        (letrec ((_%loop2548625540%_
                                  (lambda (_%hd2548425544%_ _%arg2549025547%_)
                                    (if (gx#stx-pair? _%hd2548425544%_)
                                        (let ((_%e2548725550%_
                                               (gx#syntax-e _%hd2548425544%_)))
                                          (let ((_%lp-tl2548925557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2548725550%_)))
                                                (_%lp-hd2548825554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2548725550%_))))
                                            (_%loop2548625540%_
                                             _%lp-tl2548925557%_
                                             (cons _%lp-hd2548825554%_
                                                   _%arg2549025547%_))))
                                        (let ((_%arg2549125560%_
                                               (reverse _%arg2549025547%_)))
                                          (let ((_%L25564%_ _%arg2549125560%_)
                                                (_%L25566%_ _%hd2548125528%_)
                                                (_%L25567%_ _%hd2547825518%_))
                                            (if (gx#identifier? _%L25567%_)
                                                (_%__kont2678226783%_
                                                 _%L25564%_
                                                 _%L25566%_
                                                 _%L25567%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2541025497%_)))))))))
                          (_%loop2548625540%_ _%target2548325534%_ '()))))
                     (_%__match2686026861%_
                      (lambda (_%e2545325604%_
                               _%hd2545425608%_
                               _%tl2545525611%_
                               _%e2545625614%_
                               _%hd2545725618%_
                               _%tl2545825621%_
                               _%e2545925624%_
                               _%hd2546025628%_
                               _%tl2546125631%_
                               _%__splice2678026781%_
                               _%target2546225634%_
                               _%tl2546425637%_)
                        (letrec ((_%loop2546525640%_
                                  (lambda (_%hd2546325644%_ _%arg2546925647%_)
                                    (if (gx#stx-pair? _%hd2546325644%_)
                                        (let ((_%e2546625650%_
                                               (gx#syntax-e _%hd2546325644%_)))
                                          (let ((_%lp-tl2546825657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2546625650%_)))
                                                (_%lp-hd2546725654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2546625650%_))))
                                            (_%loop2546525640%_
                                             _%lp-tl2546825657%_
                                             (cons _%lp-hd2546725654%_
                                                   _%arg2546925647%_))))
                                        (let ((_%arg2547025660%_
                                               (reverse _%arg2546925647%_)))
                                          (let ((_%L25664%_ _%arg2547025660%_)
                                                (_%L25666%_ _%hd2546025628%_)
                                                (_%L25667%_ _%hd2545725618%_))
                                            (if (and (gx#identifier?
                                                      _%L25667%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2568625689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2568725692%_)
                       (cons _%g2568625689%_ _%g2568725692%_))
                     '()
                     _%L25664%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2677826779%_
                                                 _%L25664%_
                                                 _%L25666%_
                                                 _%L25667%_)
                                                (_%__match2688626887%_
                                                 _%e2545325604%_
                                                 _%hd2545425608%_
                                                 _%tl2545525611%_
                                                 _%e2545625614%_
                                                 _%hd2545725618%_
                                                 _%tl2545825621%_
                                                 _%e2545925624%_
                                                 _%hd2546025628%_
                                                 _%tl2546125631%_
                                                 _%__splice2678026781%_
                                                 _%target2546225634%_
                                                 _%tl2546425637%_))))))))
                          (_%loop2546525640%_ _%target2546225634%_ '()))))
                     (_%__match2684626847%_
                      (lambda (_%e2545325604%_
                               _%hd2545425608%_
                               _%tl2545525611%_
                               _%e2545625614%_
                               _%hd2545725618%_
                               _%tl2545825621%_)
                        (if (gx#stx-pair? _%tl2545825621%_)
                            (let ((_%e2545925624%_
                                   (gx#syntax-e _%tl2545825621%_)))
                              (let ((_%tl2546125631%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2545925624%_)))
                                    (_%hd2546025628%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2545925624%_))))
                                (if (gx#stx-pair/null? _%tl2546125631%_)
                                    (let ((_%__splice2678026781%_
                                           (gx#syntax-split-splice
                                            _%tl2546125631%_
                                            '0)))
                                      (let ((_%tl2546425637%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2678026781%_
                                                '1)))
                                            (_%target2546225634%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2678026781%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2546425637%_)
                                            (_%__match2686026861%_
                                             _%e2545325604%_
                                             _%hd2545425608%_
                                             _%tl2545525611%_
                                             _%e2545625614%_
                                             _%hd2545725618%_
                                             _%tl2545825621%_
                                             _%e2545925624%_
                                             _%hd2546025628%_
                                             _%tl2546125631%_
                                             _%__splice2678026781%_
                                             _%target2546225634%_
                                             _%tl2546425637%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2541025497%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2541025497%_)))))
                            (let () (declare (not safe)) (_%g2541025497%_)))))
                     (_%__match2683426835%_
                      (lambda (_%e2543525710%_
                               _%hd2543625714%_
                               _%tl2543725717%_
                               _%e2543825720%_
                               _%hd2543925724%_
                               _%tl2544025727%_
                               _%__splice2677626777%_
                               _%target2544125730%_
                               _%tl2544325733%_)
                        (letrec ((_%loop2544425736%_
                                  (lambda (_%hd2544225740%_ _%arg2544825743%_)
                                    (if (gx#stx-pair? _%hd2544225740%_)
                                        (let ((_%e2544525746%_
                                               (gx#syntax-e _%hd2544225740%_)))
                                          (let ((_%lp-tl2544725753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2544525746%_)))
                                                (_%lp-hd2544625750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2544525746%_))))
                                            (_%loop2544425736%_
                                             _%lp-tl2544725753%_
                                             (cons _%lp-hd2544625750%_
                                                   _%arg2544825743%_))))
                                        (let ((_%arg2544925756%_
                                               (reverse _%arg2544825743%_)))
                                          (let ((_%L25760%_ _%arg2544925756%_)
                                                (_%L25762%_ _%hd2543925724%_))
                                            (if (_%dotted-identifier?25403%_
                                                 _%L25762%_)
                                                (_%__kont2677426775%_
                                                 _%L25760%_
                                                 _%L25762%_)
                                                (_%__match2684626847%_
                                                 _%e2543525710%_
                                                 _%hd2543625714%_
                                                 _%tl2543725717%_
                                                 _%e2543825720%_
                                                 _%hd2543925724%_
                                                 _%tl2544025727%_))))))))
                          (_%loop2544425736%_ _%target2544125730%_ '()))))
                     (_%__match2683226833%_
                      (lambda (_%e2543525710%_
                               _%hd2543625714%_
                               _%tl2543725717%_
                               _%e2543825720%_
                               _%hd2543925724%_
                               _%tl2544025727%_
                               _%__splice2677626777%_
                               _%target2544125730%_
                               _%tl2544325733%_)
                        (if (gx#stx-null? _%tl2544325733%_)
                            (_%__match2683426835%_
                             _%e2543525710%_
                             _%hd2543625714%_
                             _%tl2543725717%_
                             _%e2543825720%_
                             _%hd2543925724%_
                             _%tl2544025727%_
                             _%__splice2677626777%_
                             _%target2544125730%_
                             _%tl2544325733%_)
                            (if (gx#stx-pair? _%tl2544025727%_)
                                (let ((_%e2545925624%_
                                       (gx#syntax-e _%tl2544025727%_)))
                                  (let ((_%tl2546125631%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2545925624%_)))
                                        (_%hd2546025628%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2545925624%_))))
                                    (if (gx#stx-pair/null? _%tl2546125631%_)
                                        (let ((_%__splice2678026781%_
                                               (gx#syntax-split-splice
                                                _%tl2546125631%_
                                                '0)))
                                          (let ((_%tl2546425637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2678026781%_
                                                    '1)))
                                                (_%target2546225634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2678026781%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2546425637%_)
                                                (_%__match2686026861%_
                                                 _%e2543525710%_
                                                 _%hd2543625714%_
                                                 _%tl2543725717%_
                                                 _%e2543825720%_
                                                 _%hd2543925724%_
                                                 _%tl2544025727%_
                                                 _%e2545925624%_
                                                 _%hd2546025628%_
                                                 _%tl2546125631%_
                                                 _%__splice2678026781%_
                                                 _%target2546225634%_
                                                 _%tl2546425637%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2541025497%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2541025497%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2541025497%_))))))
                     (_%__match2681426815%_
                      (lambda (_%e2541525858%_
                               _%hd2541625862%_
                               _%tl2541725865%_
                               _%e2541825868%_
                               _%hd2541925872%_
                               _%tl2542025875%_
                               _%__splice2677226773%_
                               _%target2542125878%_
                               _%tl2542325881%_
                               _%e2543025884%_
                               _%hd2543125888%_
                               _%tl2543225891%_)
                        (letrec ((_%loop2542425894%_
                                  (lambda (_%hd2542225898%_ _%arg2542825901%_)
                                    (if (gx#stx-pair? _%hd2542225898%_)
                                        (let ((_%e2542525904%_
                                               (gx#syntax-e _%hd2542225898%_)))
                                          (let ((_%lp-tl2542725911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2542525904%_)))
                                                (_%lp-hd2542625908%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2542525904%_))))
                                            (_%loop2542425894%_
                                             _%lp-tl2542725911%_
                                             (cons _%lp-hd2542625908%_
                                                   _%arg2542825901%_))))
                                        (let ((_%arg2542925914%_
                                               (reverse _%arg2542825901%_)))
                                          (let ((_%L25918%_ _%hd2543125888%_)
                                                (_%L25920%_ _%arg2542925914%_)
                                                (_%L25921%_ _%hd2541925872%_))
                                            (if (and (_%dotted-identifier?25403%_
                                                      _%L25921%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2594025943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2594125946%_)
                       (cons _%g2594025943%_ _%g2594125946%_))
                     '()
                     _%L25920%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2677026771%_
                                                 _%L25918%_
                                                 _%L25920%_
                                                 _%L25921%_)
                                                (let ((_%__splice2677626777%_
                                                       (gx#syntax-split-splice
                                                        _%tl2542025875%_
                                                        '0)))
                                                  (let ((_%tl2544325733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2677626777%_
                                                            '1)))
                                                        (_%target2544125730%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2677626777%_
                                                            '0))))
                                                    (_%__match2683226833%_
                                                     _%e2541525858%_
                                                     _%hd2541625862%_
                                                     _%tl2541725865%_
                                                     _%e2541825868%_
                                                     _%hd2541925872%_
                                                     _%tl2542025875%_
                                                     _%__splice2677626777%_
                                                     _%target2544125730%_
                                                     _%tl2544325733%_))))))))))
                          (_%loop2542425894%_ _%target2542125878%_ '())))))
                (if (gx#stx-pair? _%__stx2676726768%_)
                    (let ((_%e2541525858%_ (gx#syntax-e _%__stx2676726768%_)))
                      (let ((_%tl2541725865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2541525858%_)))
                            (_%hd2541625862%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2541525858%_))))
                        (if (gx#stx-pair? _%tl2541725865%_)
                            (let ((_%e2541825868%_
                                   (gx#syntax-e _%tl2541725865%_)))
                              (let ((_%tl2542025875%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2541825868%_)))
                                    (_%hd2541925872%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2541825868%_))))
                                (if (gx#stx-pair/null? _%tl2542025875%_)
                                    (if (let ((__tmp27239
                                               (gx#stx-length
                                                _%tl2542025875%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27239 '1))
                                        (let ((_%__splice2677226773%_
                                               (gx#syntax-split-splice
                                                _%tl2542025875%_
                                                '1)))
                                          (let ((_%tl2542325881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2677226773%_
                                                    '1)))
                                                (_%target2542125878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2677226773%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2542325881%_)
                                                (let ((_%e2543025884%_
                                                       (gx#syntax-e
                                                        _%tl2542325881%_)))
                                                  (let ((_%tl2543225891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2543025884%_)))
                                                        (_%hd2543125888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2543025884%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2543225891%_)
                                                        (_%__match2681426815%_
                                                         _%e2541525858%_
                                                         _%hd2541625862%_
                                                         _%tl2541725865%_
                                                         _%e2541825868%_
                                                         _%hd2541925872%_
                                                         _%tl2542025875%_
                                                         _%__splice2677226773%_
                                                         _%target2542125878%_
                                                         _%tl2542325881%_
                                                         _%e2543025884%_
                                                         _%hd2543125888%_
                                                         _%tl2543225891%_)
                                                        (let ((_%__splice2677626777%_
                                                               (gx#syntax-split-splice
                                                                _%tl2542025875%_
                                                                '0)))
                                                          (let ((_%tl2544325733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2677626777%_ '1)))
                        (_%target2544125730%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2677626777%_ '0))))
                    (if (gx#stx-null? _%tl2544325733%_)
                        (_%__match2683426835%_
                         _%e2541525858%_
                         _%hd2541625862%_
                         _%tl2541725865%_
                         _%e2541825868%_
                         _%hd2541925872%_
                         _%tl2542025875%_
                         _%__splice2677626777%_
                         _%target2544125730%_
                         _%tl2544325733%_)
                        (if (gx#stx-pair? _%tl2542025875%_)
                            (let ((_%e2545925624%_
                                   (gx#syntax-e _%tl2542025875%_)))
                              (let ((_%tl2546125631%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2545925624%_)))
                                    (_%hd2546025628%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2545925624%_))))
                                (if (gx#stx-pair/null? _%tl2546125631%_)
                                    (let ((_%__splice2678026781%_
                                           (gx#syntax-split-splice
                                            _%tl2546125631%_
                                            '0)))
                                      (let ((_%tl2546425637%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2678026781%_
                                                '1)))
                                            (_%target2546225634%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2678026781%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2546425637%_)
                                            (_%__match2686026861%_
                                             _%e2541525858%_
                                             _%hd2541625862%_
                                             _%tl2541725865%_
                                             _%e2541825868%_
                                             _%hd2541925872%_
                                             _%tl2542025875%_
                                             _%e2545925624%_
                                             _%hd2546025628%_
                                             _%tl2546125631%_
                                             _%__splice2678026781%_
                                             _%target2546225634%_
                                             _%tl2546425637%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2541025497%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2541025497%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2541025497%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2677626777%_
                                                       (gx#syntax-split-splice
                                                        _%tl2542025875%_
                                                        '0)))
                                                  (let ((_%tl2544325733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2677626777%_
                                                            '1)))
                                                        (_%target2544125730%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2677626777%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2544325733%_)
                                                        (_%__match2683426835%_
                                                         _%e2541525858%_
                                                         _%hd2541625862%_
                                                         _%tl2541725865%_
                                                         _%e2541825868%_
                                                         _%hd2541925872%_
                                                         _%tl2542025875%_
                                                         _%__splice2677626777%_
                                                         _%target2544125730%_
                                                         _%tl2544325733%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2542025875%_)
                                                            (let ((_%e2545925624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2542025875%_)))
                      (let ((_%tl2546125631%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2545925624%_)))
                            (_%hd2546025628%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2545925624%_))))
                        (if (gx#stx-pair/null? _%tl2546125631%_)
                            (let ((_%__splice2678026781%_
                                   (gx#syntax-split-splice
                                    _%tl2546125631%_
                                    '0)))
                              (let ((_%tl2546425637%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2678026781%_
                                        '1)))
                                    (_%target2546225634%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2678026781%_
                                        '0))))
                                (if (gx#stx-null? _%tl2546425637%_)
                                    (_%__match2686026861%_
                                     _%e2541525858%_
                                     _%hd2541625862%_
                                     _%tl2541725865%_
                                     _%e2541825868%_
                                     _%hd2541925872%_
                                     _%tl2542025875%_
                                     _%e2545925624%_
                                     _%hd2546025628%_
                                     _%tl2546125631%_
                                     _%__splice2678026781%_
                                     _%target2546225634%_
                                     _%tl2546425637%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2541025497%_)))))
                            (let () (declare (not safe)) (_%g2541025497%_)))))
                    (let () (declare (not safe)) (_%g2541025497%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2677626777%_
                                               (gx#syntax-split-splice
                                                _%tl2542025875%_
                                                '0)))
                                          (let ((_%tl2544325733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2677626777%_
                                                    '1)))
                                                (_%target2544125730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2677626777%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2544325733%_)
                                                (_%__match2683426835%_
                                                 _%e2541525858%_
                                                 _%hd2541625862%_
                                                 _%tl2541725865%_
                                                 _%e2541825868%_
                                                 _%hd2541925872%_
                                                 _%tl2542025875%_
                                                 _%__splice2677626777%_
                                                 _%target2544125730%_
                                                 _%tl2544325733%_)
                                                (if (gx#stx-pair?
                                                     _%tl2542025875%_)
                                                    (let ((_%e2545925624%_
                                                           (gx#syntax-e
                                                            _%tl2542025875%_)))
                                                      (let ((_%tl2546125631%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2545925624%_)))
                    (_%hd2546025628%_
                     (let () (declare (not safe)) (##car _%e2545925624%_))))
                (if (gx#stx-pair/null? _%tl2546125631%_)
                    (let ((_%__splice2678026781%_
                           (gx#syntax-split-splice _%tl2546125631%_ '0)))
                      (let ((_%tl2546425637%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2678026781%_ '1)))
                            (_%target2546225634%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2678026781%_ '0))))
                        (if (gx#stx-null? _%tl2546425637%_)
                            (_%__match2686026861%_
                             _%e2541525858%_
                             _%hd2541625862%_
                             _%tl2541725865%_
                             _%e2541825868%_
                             _%hd2541925872%_
                             _%tl2542025875%_
                             _%e2545925624%_
                             _%hd2546025628%_
                             _%tl2546125631%_
                             _%__splice2678026781%_
                             _%target2546225634%_
                             _%tl2546425637%_)
                            (let () (declare (not safe)) (_%g2541025497%_)))))
                    (let () (declare (not safe)) (_%g2541025497%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2541025497%_)))))))
                                    (if (gx#stx-pair? _%tl2542025875%_)
                                        (let ((_%e2545925624%_
                                               (gx#syntax-e _%tl2542025875%_)))
                                          (let ((_%tl2546125631%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2545925624%_)))
                                                (_%hd2546025628%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2545925624%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2546125631%_)
                                                (let ((_%__splice2678026781%_
                                                       (gx#syntax-split-splice
                                                        _%tl2546125631%_
                                                        '0)))
                                                  (let ((_%tl2546425637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2678026781%_
                                                            '1)))
                                                        (_%target2546225634%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2678026781%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2546425637%_)
                                                        (_%__match2686026861%_
                                                         _%e2541525858%_
                                                         _%hd2541625862%_
                                                         _%tl2541725865%_
                                                         _%e2541825868%_
                                                         _%hd2541925872%_
                                                         _%tl2542025875%_
                                                         _%e2545925624%_
                                                         _%hd2546025628%_
                                                         _%tl2546125631%_
                                                         _%__splice2678026781%_
                                                         _%target2546225634%_
                                                         _%tl2546425637%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2541025497%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2541025497%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2541025497%_))))))
                            (let () (declare (not safe)) (_%g2541025497%_)))))
                    (let () (declare (not safe)) (_%g2541025497%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26049%_)
        (let* ((_%__stx2688926890%_ _%$stx26049%_)
               (_%g2605426094%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2688926890%_))))
          (let ((_%__kont2689226893%_
                 (lambda (_%L26232%_ _%L26234%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%L26234%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26232%_ '()))
                                     '())))))
                (_%__kont2689426895%_
                 (lambda (_%L26161%_ _%L26163%_ _%L26164%_ _%L26165%_)
                   (cons _%L26165%_
                         (cons (cons _%L26165%_
                                     (cons _%L26164%_ (cons _%L26163%_ '())))
                               (foldr (lambda (_%g2618626189%_ _%g2618726192%_)
                                        (cons _%g2618626189%_ _%g2618726192%_))
                                      '()
                                      _%L26161%_))))))
            (let* ((_%__match2694426945%_
                    (lambda (_%e2607126101%_
                             _%hd2607226105%_
                             _%tl2607326108%_
                             _%e2607426111%_
                             _%hd2607526115%_
                             _%tl2607626118%_
                             _%e2607726121%_
                             _%hd2607826125%_
                             _%tl2607926128%_
                             _%__splice2689626897%_
                             _%target2608026131%_
                             _%tl2608226134%_)
                      (letrec ((_%loop2608326137%_
                                (lambda (_%hd2608126141%_ _%rest2608726144%_)
                                  (if (gx#stx-pair? _%hd2608126141%_)
                                      (let ((_%e2608426147%_
                                             (gx#syntax-e _%hd2608126141%_)))
                                        (let ((_%lp-tl2608626154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2608426147%_)))
                                              (_%lp-hd2608526151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2608426147%_))))
                                          (_%loop2608326137%_
                                           _%lp-tl2608626154%_
                                           (cons _%lp-hd2608526151%_
                                                 _%rest2608726144%_))))
                                      (let ((_%rest2608826157%_
                                             (reverse _%rest2608726144%_)))
                                        (_%__kont2689426895%_
                                         _%rest2608826157%_
                                         _%hd2607826125%_
                                         _%hd2607526115%_
                                         _%hd2607226105%_))))))
                        (_%loop2608326137%_ _%target2608026131%_ '()))))
                   (_%__match2691826919%_
                    (lambda (_%e2605826202%_
                             _%hd2605926206%_
                             _%tl2606026209%_
                             _%e2606126212%_
                             _%hd2606226216%_
                             _%tl2606326219%_
                             _%e2606426222%_
                             _%hd2606526226%_
                             _%tl2606626229%_)
                      (let ((_%L26232%_ _%hd2606526226%_)
                            (_%L26234%_ _%hd2606226216%_))
                        (if (gx#identifier? _%L26232%_)
                            (_%__kont2689226893%_ _%L26232%_ _%L26234%_)
                            (if (gx#stx-pair/null? _%tl2606626229%_)
                                (let ((_%__splice2689626897%_
                                       (gx#syntax-split-splice
                                        _%tl2606626229%_
                                        '0)))
                                  (let ((_%tl2608226134%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2689626897%_
                                            '1)))
                                        (_%target2608026131%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2689626897%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2608226134%_)
                                        (_%__match2694426945%_
                                         _%e2605826202%_
                                         _%hd2605926206%_
                                         _%tl2606026209%_
                                         _%e2606126212%_
                                         _%hd2606226216%_
                                         _%tl2606326219%_
                                         _%e2606426222%_
                                         _%hd2606526226%_
                                         _%tl2606626229%_
                                         _%__splice2689626897%_
                                         _%target2608026131%_
                                         _%tl2608226134%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2605426094%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2605426094%_))))))))
              (if (gx#stx-pair? _%__stx2688926890%_)
                  (let ((_%e2605826202%_ (gx#syntax-e _%__stx2688926890%_)))
                    (let ((_%tl2606026209%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2605826202%_)))
                          (_%hd2605926206%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2605826202%_))))
                      (if (gx#stx-pair? _%tl2606026209%_)
                          (let ((_%e2606126212%_
                                 (gx#syntax-e _%tl2606026209%_)))
                            (let ((_%tl2606326219%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2606126212%_)))
                                  (_%hd2606226216%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2606126212%_))))
                              (if (gx#stx-pair? _%tl2606326219%_)
                                  (let ((_%e2606426222%_
                                         (gx#syntax-e _%tl2606326219%_)))
                                    (let ((_%tl2606626229%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2606426222%_)))
                                          (_%hd2606526226%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2606426222%_))))
                                      (if (gx#stx-null? _%tl2606626229%_)
                                          (_%__match2691826919%_
                                           _%e2605826202%_
                                           _%hd2605926206%_
                                           _%tl2606026209%_
                                           _%e2606126212%_
                                           _%hd2606226216%_
                                           _%tl2606326219%_
                                           _%e2606426222%_
                                           _%hd2606526226%_
                                           _%tl2606626229%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2606626229%_)
                                              (let ((_%__splice2689626897%_
                                                     (gx#syntax-split-splice
                                                      _%tl2606626229%_
                                                      '0)))
                                                (let ((_%tl2608226134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2689626897%_
                                                          '1)))
                                                      (_%target2608026131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2689626897%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2608226134%_)
                                                      (_%__match2694426945%_
                                                       _%e2605826202%_
                                                       _%hd2605926206%_
                                                       _%tl2606026209%_
                                                       _%e2606126212%_
                                                       _%hd2606226216%_
                                                       _%tl2606326219%_
                                                       _%e2606426222%_
                                                       _%hd2606526226%_
                                                       _%tl2606626229%_
                                                       _%__splice2689626897%_
                                                       _%target2608026131%_
                                                       _%tl2608226134%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2605426094%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2605426094%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2605426094%_)))))
                          (let () (declare (not safe)) (_%g2605426094%_)))))
                  (let () (declare (not safe)) (_%g2605426094%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26254%_)
        (let* ((_%__stx2694726948%_ _%$stx26254%_)
               (_%g2625926311%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2694726948%_))))
          (let ((_%__kont2695026951%_
                 (lambda (_%L26487%_ _%L26489%_ _%L26490%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%L26490%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26489%_ '()))
                                     (cons _%L26487%_ '()))))))
                (_%__kont2695226953%_
                 (lambda (_%L26398%_
                          _%L26400%_
                          _%L26401%_
                          _%L26402%_
                          _%L26403%_
                          _%L26404%_)
                   (cons _%L26404%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%L26403%_
                                           (cons _%L26402%_
                                                 (foldr (lambda (_%g2643126434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2643226437%_)
                  (cons _%g2643126434%_ _%g2643226437%_))
                '()
                _%L26401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L26400%_ (cons _%L26398%_ '())))))))
            (let* ((_%__match2702227023%_
                    (lambda (_%e2628226318%_
                             _%hd2628326322%_
                             _%tl2628426325%_
                             _%e2628526328%_
                             _%hd2628626332%_
                             _%tl2628726335%_
                             _%e2628826338%_
                             _%hd2628926342%_
                             _%tl2629026345%_
                             _%__splice2695426955%_
                             _%target2629126348%_
                             _%tl2629326351%_
                             _%e2630026354%_
                             _%hd2630126358%_
                             _%tl2630226361%_
                             _%e2630326364%_
                             _%hd2630426368%_
                             _%tl2630526371%_)
                      (letrec ((_%loop2629426374%_
                                (lambda (_%hd2629226378%_ _%path2629826381%_)
                                  (if (gx#stx-pair? _%hd2629226378%_)
                                      (let ((_%e2629526384%_
                                             (gx#syntax-e _%hd2629226378%_)))
                                        (let ((_%lp-tl2629726391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2629526384%_)))
                                              (_%lp-hd2629626388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2629526384%_))))
                                          (_%loop2629426374%_
                                           _%lp-tl2629726391%_
                                           (cons _%lp-hd2629626388%_
                                                 _%path2629826381%_))))
                                      (let ((_%path2629926394%_
                                             (reverse _%path2629826381%_)))
                                        (_%__kont2695226953%_
                                         _%hd2630426368%_
                                         _%hd2630126358%_
                                         _%path2629926394%_
                                         _%hd2628926342%_
                                         _%hd2628626332%_
                                         _%hd2628326322%_))))))
                        (_%loop2629426374%_ _%target2629126348%_ '()))))
                   (_%__match2698226983%_
                    (lambda (_%e2626426447%_
                             _%hd2626526451%_
                             _%tl2626626454%_
                             _%e2626726457%_
                             _%hd2626826461%_
                             _%tl2626926464%_
                             _%e2627026467%_
                             _%hd2627126471%_
                             _%tl2627226474%_
                             _%e2627326477%_
                             _%hd2627426481%_
                             _%tl2627526484%_)
                      (let ((_%L26487%_ _%hd2627426481%_)
                            (_%L26489%_ _%hd2627126471%_)
                            (_%L26490%_ _%hd2626826461%_))
                        (if (gx#identifier? _%L26489%_)
                            (_%__kont2695026951%_
                             _%L26487%_
                             _%L26489%_
                             _%L26490%_)
                            (if (gx#stx-pair/null? _%tl2627226474%_)
                                (if (let ((__tmp27240
                                           (gx#stx-length _%tl2627226474%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27240 '2))
                                    (let ((_%__splice2695426955%_
                                           (gx#syntax-split-splice
                                            _%tl2627226474%_
                                            '2)))
                                      (let ((_%tl2629326351%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2695426955%_
                                                '1)))
                                            (_%target2629126348%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2695426955%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2629326351%_)
                                            (let ((_%e2630026354%_
                                                   (gx#syntax-e
                                                    _%tl2629326351%_)))
                                              (let ((_%tl2630226361%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2630026354%_)))
                                                    (_%hd2630126358%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2630026354%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2630226361%_)
                                                    (let ((_%e2630326364%_
                                                           (gx#syntax-e
                                                            _%tl2630226361%_)))
                                                      (let ((_%tl2630526371%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2630326364%_)))
                    (_%hd2630426368%_
                     (let () (declare (not safe)) (##car _%e2630326364%_))))
                (if (gx#stx-null? _%tl2630526371%_)
                    (_%__match2702227023%_
                     _%e2626426447%_
                     _%hd2626526451%_
                     _%tl2626626454%_
                     _%e2626726457%_
                     _%hd2626826461%_
                     _%tl2626926464%_
                     _%e2627026467%_
                     _%hd2627126471%_
                     _%tl2627226474%_
                     _%__splice2695426955%_
                     _%target2629126348%_
                     _%tl2629326351%_
                     _%e2630026354%_
                     _%hd2630126358%_
                     _%tl2630226361%_
                     _%e2630326364%_
                     _%hd2630426368%_
                     _%tl2630526371%_)
                    (let () (declare (not safe)) (_%g2625926311%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2625926311%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2625926311%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2625926311%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2625926311%_))))))))
              (if (gx#stx-pair? _%__stx2694726948%_)
                  (let ((_%e2626426447%_ (gx#syntax-e _%__stx2694726948%_)))
                    (let ((_%tl2626626454%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2626426447%_)))
                          (_%hd2626526451%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2626426447%_))))
                      (if (gx#stx-pair? _%tl2626626454%_)
                          (let ((_%e2626726457%_
                                 (gx#syntax-e _%tl2626626454%_)))
                            (let ((_%tl2626926464%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2626726457%_)))
                                  (_%hd2626826461%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2626726457%_))))
                              (if (gx#stx-pair? _%tl2626926464%_)
                                  (let ((_%e2627026467%_
                                         (gx#syntax-e _%tl2626926464%_)))
                                    (let ((_%tl2627226474%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2627026467%_)))
                                          (_%hd2627126471%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2627026467%_))))
                                      (if (gx#stx-pair? _%tl2627226474%_)
                                          (let ((_%e2627326477%_
                                                 (gx#syntax-e
                                                  _%tl2627226474%_)))
                                            (let ((_%tl2627526484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2627326477%_)))
                                                  (_%hd2627426481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2627326477%_))))
                                              (if (gx#stx-null?
                                                   _%tl2627526484%_)
                                                  (_%__match2698226983%_
                                                   _%e2626426447%_
                                                   _%hd2626526451%_
                                                   _%tl2626626454%_
                                                   _%e2626726457%_
                                                   _%hd2626826461%_
                                                   _%tl2626926464%_
                                                   _%e2627026467%_
                                                   _%hd2627126471%_
                                                   _%tl2627226474%_
                                                   _%e2627326477%_
                                                   _%hd2627426481%_
                                                   _%tl2627526484%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2627226474%_)
                                                      (if (let ((__tmp27241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2627226474%_)))
                    (declare (not safe))
                    (##fx>= __tmp27241 '2))
                  (let ((_%__splice2695426955%_
                         (gx#syntax-split-splice _%tl2627226474%_ '2)))
                    (let ((_%tl2629326351%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2695426955%_ '1)))
                          (_%target2629126348%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2695426955%_ '0))))
                      (if (gx#stx-pair? _%tl2629326351%_)
                          (let ((_%e2630026354%_
                                 (gx#syntax-e _%tl2629326351%_)))
                            (let ((_%tl2630226361%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2630026354%_)))
                                  (_%hd2630126358%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2630026354%_))))
                              (if (gx#stx-pair? _%tl2630226361%_)
                                  (let ((_%e2630326364%_
                                         (gx#syntax-e _%tl2630226361%_)))
                                    (let ((_%tl2630526371%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2630326364%_)))
                                          (_%hd2630426368%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2630326364%_))))
                                      (if (gx#stx-null? _%tl2630526371%_)
                                          (_%__match2702227023%_
                                           _%e2626426447%_
                                           _%hd2626526451%_
                                           _%tl2626626454%_
                                           _%e2626726457%_
                                           _%hd2626826461%_
                                           _%tl2626926464%_
                                           _%e2627026467%_
                                           _%hd2627126471%_
                                           _%tl2627226474%_
                                           _%__splice2695426955%_
                                           _%target2629126348%_
                                           _%tl2629326351%_
                                           _%e2630026354%_
                                           _%hd2630126358%_
                                           _%tl2630226361%_
                                           _%e2630326364%_
                                           _%hd2630426368%_
                                           _%tl2630526371%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2625926311%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2625926311%_)))))
                          (let () (declare (not safe)) (_%g2625926311%_)))))
                  (let () (declare (not safe)) (_%g2625926311%_)))
              (let () (declare (not safe)) (_%g2625926311%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2627226474%_)
                                              (if (let ((__tmp27242
                                                         (gx#stx-length
                                                          _%tl2627226474%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27242 '2))
                                                  (let ((_%__splice2695426955%_
                                                         (gx#syntax-split-splice
                                                          _%tl2627226474%_
                                                          '2)))
                                                    (let ((_%tl2629326351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2695426955%_
                                                              '1)))
                                                          (_%target2629126348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2695426955%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2629326351%_)
                                                          (let ((_%e2630026354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2629326351%_)))
                    (let ((_%tl2630226361%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2630026354%_)))
                          (_%hd2630126358%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2630026354%_))))
                      (if (gx#stx-pair? _%tl2630226361%_)
                          (let ((_%e2630326364%_
                                 (gx#syntax-e _%tl2630226361%_)))
                            (let ((_%tl2630526371%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2630326364%_)))
                                  (_%hd2630426368%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2630326364%_))))
                              (if (gx#stx-null? _%tl2630526371%_)
                                  (_%__match2702227023%_
                                   _%e2626426447%_
                                   _%hd2626526451%_
                                   _%tl2626626454%_
                                   _%e2626726457%_
                                   _%hd2626826461%_
                                   _%tl2626926464%_
                                   _%e2627026467%_
                                   _%hd2627126471%_
                                   _%tl2627226474%_
                                   _%__splice2695426955%_
                                   _%target2629126348%_
                                   _%tl2629326351%_
                                   _%e2630026354%_
                                   _%hd2630126358%_
                                   _%tl2630226361%_
                                   _%e2630326364%_
                                   _%hd2630426368%_
                                   _%tl2630526371%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2625926311%_)))))
                          (let () (declare (not safe)) (_%g2625926311%_)))))
                  (let () (declare (not safe)) (_%g2625926311%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2625926311%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2625926311%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2625926311%_)))))
                          (let () (declare (not safe)) (_%g2625926311%_)))))
                  (let () (declare (not safe)) (_%g2625926311%_))))))))))
