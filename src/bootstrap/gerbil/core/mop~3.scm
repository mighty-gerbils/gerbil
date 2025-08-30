(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g26852_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24406%_)
        (letrec ((_%body-opt?24409%_
                  (lambda (_%key24412%_)
                    (let ((__tmp26824 (gx#stx-e _%key24412%_)))
                      (declare (not safe))
                      (##memq __tmp26824
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:))))))
          (gx#stx-plist? _%stx24406%_ _%body-opt?24409%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22172%_
               _%id22174%_
               _%super-ref22175%_
               _%slots22176%_
               _%body22177%_)
        (letrec ((_%wrap22179%_
                  (lambda (_%e-stx24403%_)
                    (gx#stx-wrap-source
                     _%e-stx24403%_
                     (gx#stx-source _%stx22172%_))))
                 (_%make-id22181%_
                  (lambda _%args24400%_
                    (apply gx#stx-identifier _%id22174%_ _%args24400%_)))
                 (_%get-mixin-slots22182%_
                  (lambda (_%super24370%_ _%slots24372%_)
                    (letrec* ((_%tab24374%_ (make-hash-table-eq))
                              (_%dedup24376%_
                               (lambda (_%mixins24387%_)
                                 (let _%lp24390%_ ((_%rest24393%_
                                                    _%mixins24387%_)
                                                   (_%r24395%_ '()))
                                   (if (pair? _%rest24393%_)
                                       (let ((_%slot24397%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24393%_))))
                                         (if (hash-get
                                              _%tab24374%_
                                              _%slot24397%_)
                                             (_%lp24390%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24393%_))
                                              _%r24395%_)
                                             (begin
                                               (hash-put!
                                                _%tab24374%_
                                                _%slot24397%_
                                                '#t)
                                               (_%lp24390%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24393%_))
                                                (cons _%slot24397%_
                                                      _%r24395%_)))))
                                       (reverse _%r24395%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24378%_)
                         (hash-put! _%tab24374%_ (gx#stx-e _%slot24378%_) '#t))
                       _%slots24372%_)
                      (if (not _%super24370%_)
                          '()
                          (if (gx#identifier? _%super24370%_)
                              (_%dedup24376%_
                               (_%get-mixin-slots-r22183%_ _%super24370%_))
                              (_%dedup24376%_
                               (concatenate
                                (map _%get-mixin-slots-r22183%_
                                     _%super24370%_))))))))
                 (_%get-mixin-slots-r22183%_
                  (lambda (_%type-id24364%_)
                    (let ((_%info24367%_
                           (gx#syntax-local-value _%type-id24364%_)))
                      (let ((__tmp26826
                             (let ((__obj26641 _%info24367%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj26641
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj26641
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj26641
                                    'slots))))
                            (__tmp26825
                             (concatenate
                              (map _%get-mixin-slots-r22183%_
                                   (let ((__obj26642 _%info24367%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj26642
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj26642
                                            '3
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj26642
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp26826 __tmp26825))))))
          (gx#check-duplicate-identifiers _%slots22176%_ _%stx22172%_)
          (let* ((_%name22185%_ (symbol->string (gx#stx-e _%id22174%_)))
                 (_%super22188%_
                  (map gx#syntax-local-value _%super-ref22175%_))
                 (_%struct?22191%_ (gx#stx-getq 'struct: _%body22177%_))
                 (_%g2219422202%_
                  (lambda (_%g2219522198%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2219522198%_)))
                 (_%g2219324360%_
                  (lambda (_%g2219522206%_)
                    ((lambda (_%L22209%_)
                       (let* ((_%g2222522233%_
                               (lambda (_%g2222622229%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2222622229%_)))
                              (_%g2222424356%_
                               (lambda (_%g2222622237%_)
                                 ((lambda (_%L22240%_)
                                    (let* ((_%g2225322261%_
                                            (lambda (_%g2225422257%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2225422257%_)))
                                           (_%g2225224352%_
                                            (lambda (_%g2225422265%_)
                                              ((lambda (_%L22268%_)
                                                 (let* ((_%g2228122289%_
                                                         (lambda (_%g2228222285%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2228222285%_)))
                                                        (_%g2228024348%_
                                                         (lambda (_%g2228222293%_)
                                                           ((lambda (_%L22296%_)
                                                              (let* ((_%g2230922317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2231022313%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2231022313%_)))
                             (_%g2230824344%_
                              (lambda (_%g2231022321%_)
                                ((lambda (_%L22324%_)
                                   (let* ((_%g2233722354%_
                                           (lambda (_%g2233822350%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2233822350%_)))
                                          (_%g2233624340%_
                                           (lambda (_%g2233822358%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2233822358%_)
                                                 (let ((_g26827_
                                                        (gx#syntax-split-splice
                                                         _%g2233822358%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g26828_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g26827_)
                          (##values-length _g26827_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g26828_ 2)))
                   (error "Context expects 2 values" _g26828_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2234022361%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g26827_
                                                               0)))
                                                           (_%tl2234222364%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g26827_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2234222364%_)
                                                           (letrec ((_%loop2234322367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2234122371%_ _%slot2234722374%_)
                               (if (gx#stx-pair? _%hd2234122371%_)
                                   (let ((_%e2234422377%_
                                          (gx#syntax-e _%hd2234122371%_)))
                                     (let ((_%lp-hd2234522381%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2234422377%_)))
                                           (_%lp-tl2234622384%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2234422377%_))))
                                       (_%loop2234322367%_
                                        _%lp-tl2234622384%_
                                        (cons _%lp-hd2234522381%_
                                              _%slot2234722374%_))))
                                   (let ((_%slot2234822387%_
                                          (reverse _%slot2234722374%_)))
                                     ((lambda (_%L22391%_)
                                        (let* ((_%g2240822425%_
                                                (lambda (_%g2240922421%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2240922421%_)))
                                               (_%g2240724331%_
                                                (lambda (_%g2240922429%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2240922429%_)
                                                      (let ((_g26829_
                                                             (gx#syntax-split-splice
                                                              _%g2240922429%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g26830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g26829_)
                               (##values-length _g26829_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g26830_ 2)))
                        (error "Context expects 2 values" _g26830_)))
                  (let ((_%target2241122432%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g26829_ 0)))
                        (_%tl2241322435%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g26829_ 1))))
                    (if (gx#stx-null? _%tl2241322435%_)
                        (letrec ((_%loop2241422438%_
                                  (lambda (_%hd2241222442%_ _%getf2241822445%_)
                                    (if (gx#stx-pair? _%hd2241222442%_)
                                        (let ((_%e2241522448%_
                                               (gx#syntax-e _%hd2241222442%_)))
                                          (let ((_%lp-hd2241622452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2241522448%_)))
                                                (_%lp-tl2241722455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2241522448%_))))
                                            (_%loop2241422438%_
                                             _%lp-tl2241722455%_
                                             (cons _%lp-hd2241622452%_
                                                   _%getf2241822445%_))))
                                        (let ((_%getf2241922458%_
                                               (reverse _%getf2241822445%_)))
                                          ((lambda (_%L22462%_)
                                             (let* ((_%g2247922496%_
                                                     (lambda (_%g2248022492%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2248022492%_)))
                                                    (_%g2247824322%_
                                                     (lambda (_%g2248022500%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2248022500%_)
                                                           (let ((_g26831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2248022500%_ '0)))
                     (begin
                       (let ((_g26832_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g26831_)
                                    (##values-length _g26831_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g26832_ 2)))
                             (error "Context expects 2 values" _g26832_)))
                       (let ((_%target2248222503%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g26831_ 0)))
                             (_%tl2248422506%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g26831_ 1))))
                         (if (gx#stx-null? _%tl2248422506%_)
                             (letrec ((_%loop2248522509%_
                                       (lambda (_%hd2248322513%_
                                                _%setf2248922516%_)
                                         (if (gx#stx-pair? _%hd2248322513%_)
                                             (let ((_%e2248622519%_
                                                    (gx#syntax-e
                                                     _%hd2248322513%_)))
                                               (let ((_%lp-hd2248722523%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2248622519%_)))
                                                     (_%lp-tl2248822526%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2248622519%_))))
                                                 (_%loop2248522509%_
                                                  _%lp-tl2248822526%_
                                                  (cons _%lp-hd2248722523%_
                                                        _%setf2248922516%_))))
                                             (let ((_%setf2249022529%_
                                                    (reverse _%setf2248922516%_)))
                                               ((lambda (_%L22533%_)
                                                  (let* ((_%mixin-slots22550%_
                                                          (_%get-mixin-slots22182%_
                                                           _%super-ref22175%_
                                                           _%slots22176%_))
                                                         (_%g2255322570%_
                                                          (lambda (_%g2255422566%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2255422566%_)))
                                                         (_%g2255224318%_
                                                          (lambda (_%g2255422574%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2255422574%_)
                        (let ((_g26833_
                               (gx#syntax-split-splice _%g2255422574%_ '0)))
                          (begin
                            (let ((_g26834_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g26833_)
                                         (##values-length _g26833_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g26834_ 2)))
                                  (error "Context expects 2 values" _g26834_)))
                            (let ((_%target2255622577%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g26833_ 0)))
                                  (_%tl2255822580%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g26833_ 1))))
                              (if (gx#stx-null? _%tl2255822580%_)
                                  (letrec ((_%loop2255922583%_
                                            (lambda (_%hd2255722587%_
                                                     _%mixin-slot2256322590%_)
                                              (if (gx#stx-pair?
                                                   _%hd2255722587%_)
                                                  (let ((_%e2256022593%_
                                                         (gx#syntax-e
                                                          _%hd2255722587%_)))
                                                    (let ((_%lp-hd2256122597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2256022593%_)))
                                                          (_%lp-tl2256222600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2256022593%_))))
                                                      (_%loop2255922583%_
                                                       _%lp-tl2256222600%_
                                                       (cons _%lp-hd2256122597%_
                                                             _%mixin-slot2256322590%_))))
                                                  (let ((_%mixin-slot2256422603%_
                                                         (reverse _%mixin-slot2256322590%_)))
                                                    ((lambda (_%L22607%_)
                                                       (let* ((_%g2262522642%_
                                                               (lambda (_%g2262622638%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2262622638%_)))
                      (_%g2262424309%_
                       (lambda (_%g2262622646%_)
                         (if (gx#stx-pair/null? _%g2262622646%_)
                             (let ((_g26835_
                                    (gx#syntax-split-splice
                                     _%g2262622646%_
                                     '0)))
                               (begin
                                 (let ((_g26836_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g26835_)
                                              (##values-length _g26835_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g26836_ 2)))
                                       (error "Context expects 2 values"
                                              _g26836_)))
                                 (let ((_%target2262822649%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g26835_ 0)))
                                       (_%tl2263022652%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g26835_ 1))))
                                   (if (gx#stx-null? _%tl2263022652%_)
                                       (letrec ((_%loop2263122655%_
                                                 (lambda (_%hd2262922659%_
                                                          _%mixin-getf2263522662%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2262922659%_)
                                                       (let ((_%e2263222665%_
                                                              (gx#syntax-e
                                                               _%hd2262922659%_)))
                                                         (let ((_%lp-hd2263322669%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2263222665%_)))
                       (_%lp-tl2263422672%_
                        (let () (declare (not safe)) (##cdr _%e2263222665%_))))
                   (_%loop2263122655%_
                    _%lp-tl2263422672%_
                    (cons _%lp-hd2263322669%_ _%mixin-getf2263522662%_))))
               (let ((_%mixin-getf2263622675%_
                      (reverse _%mixin-getf2263522662%_)))
                 ((lambda (_%L22679%_)
                    (let* ((_%g2269622713%_
                            (lambda (_%g2269722709%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2269722709%_)))
                           (_%g2269524300%_
                            (lambda (_%g2269722717%_)
                              (if (gx#stx-pair/null? _%g2269722717%_)
                                  (let ((_g26837_
                                         (gx#syntax-split-splice
                                          _%g2269722717%_
                                          '0)))
                                    (begin
                                      (let ((_g26838_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g26837_)
                                                   (##values-length _g26837_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g26838_ 2)))
                                            (error "Context expects 2 values"
                                                   _g26838_)))
                                      (let ((_%target2269922720%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g26837_ 0)))
                                            (_%tl2270122723%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g26837_ 1))))
                                        (if (gx#stx-null? _%tl2270122723%_)
                                            (letrec ((_%loop2270222726%_
                                                      (lambda (_%hd2270022730%_
                                                               _%mixin-setf2270622733%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2270022730%_)
                                                            (let ((_%e2270322736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2270022730%_)))
                      (let ((_%lp-hd2270422740%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2270322736%_)))
                            (_%lp-tl2270522743%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2270322736%_))))
                        (_%loop2270222726%_
                         _%lp-tl2270522743%_
                         (cons _%lp-hd2270422740%_ _%mixin-setf2270622733%_))))
                    (let ((_%mixin-setf2270722746%_
                           (reverse _%mixin-setf2270622733%_)))
                      ((lambda (_%L22750%_)
                         (let* ((_%g2276722784%_
                                 (lambda (_%g2276822780%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2276822780%_)))
                                (_%g2276624283%_
                                 (lambda (_%g2276822788%_)
                                   (if (gx#stx-pair/null? _%g2276822788%_)
                                       (let ((_g26839_
                                              (gx#syntax-split-splice
                                               _%g2276822788%_
                                               '0)))
                                         (begin
                                           (let ((_g26840_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g26839_)
                                                        (##values-length
                                                         _g26839_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g26840_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g26840_)))
                                           (let ((_%target2277022791%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g26839_ 0)))
                                                 (_%tl2277222794%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g26839_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2277222794%_)
                                                 (letrec ((_%loop2277322797%_
                                                           (lambda (_%hd2277122801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2277722804%_)
                     (if (gx#stx-pair? _%hd2277122801%_)
                         (let ((_%e2277422807%_
                                (gx#syntax-e _%hd2277122801%_)))
                           (let ((_%lp-hd2277522811%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2277422807%_)))
                                 (_%lp-tl2277622814%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2277422807%_))))
                             (_%loop2277322797%_
                              _%lp-tl2277622814%_
                              (cons _%lp-hd2277522811%_ _%ugetf2277722804%_))))
                         (let ((_%ugetf2277822817%_
                                (reverse _%ugetf2277722804%_)))
                           ((lambda (_%L22821%_)
                              (let* ((_%g2283822855%_
                                      (lambda (_%g2283922851%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2283922851%_)))
                                     (_%g2283724266%_
                                      (lambda (_%g2283922859%_)
                                        (if (gx#stx-pair/null? _%g2283922859%_)
                                            (let ((_g26841_
                                                   (gx#syntax-split-splice
                                                    _%g2283922859%_
                                                    '0)))
                                              (begin
                                                (let ((_g26842_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g26841_)
                                                             (##values-length
                                                              _g26841_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g26842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g26842_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2284122862%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g26841_
                                                          0)))
                                                      (_%tl2284322865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g26841_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2284322865%_)
                                                      (letrec ((_%loop2284422868%_
                                                                (lambda (_%hd2284222872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2284822875%_)
                          (if (gx#stx-pair? _%hd2284222872%_)
                              (let ((_%e2284522878%_
                                     (gx#syntax-e _%hd2284222872%_)))
                                (let ((_%lp-hd2284622882%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2284522878%_)))
                                      (_%lp-tl2284722885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2284522878%_))))
                                  (_%loop2284422868%_
                                   _%lp-tl2284722885%_
                                   (cons _%lp-hd2284622882%_
                                         _%usetf2284822875%_))))
                              (let ((_%usetf2284922888%_
                                     (reverse _%usetf2284822875%_)))
                                ((lambda (_%L22892%_)
                                   (let* ((_%g2290922926%_
                                           (lambda (_%g2291022922%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2291022922%_)))
                                          (_%g2290824249%_
                                           (lambda (_%g2291022930%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2291022930%_)
                                                 (let ((_g26843_
                                                        (gx#syntax-split-splice
                                                         _%g2291022930%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g26844_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g26843_)
                          (##values-length _g26843_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g26844_ 2)))
                   (error "Context expects 2 values" _g26844_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2291222933%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g26843_
                                                               0)))
                                                           (_%tl2291422936%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g26843_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2291422936%_)
                                                           (letrec ((_%loop2291522939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2291322943%_
                                      _%mixin-ugetf2291922946%_)
                               (if (gx#stx-pair? _%hd2291322943%_)
                                   (let ((_%e2291622949%_
                                          (gx#syntax-e _%hd2291322943%_)))
                                     (let ((_%lp-hd2291722953%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2291622949%_)))
                                           (_%lp-tl2291822956%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2291622949%_))))
                                       (_%loop2291522939%_
                                        _%lp-tl2291822956%_
                                        (cons _%lp-hd2291722953%_
                                              _%mixin-ugetf2291922946%_))))
                                   (let ((_%mixin-ugetf2292022959%_
                                          (reverse _%mixin-ugetf2291922946%_)))
                                     ((lambda (_%L22963%_)
                                        (let* ((_%g2298022997%_
                                                (lambda (_%g2298122993%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2298122993%_)))
                                               (_%g2297924232%_
                                                (lambda (_%g2298123001%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2298123001%_)
                                                      (let ((_g26845_
                                                             (gx#syntax-split-splice
                                                              _%g2298123001%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g26846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g26845_)
                               (##values-length _g26845_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g26846_ 2)))
                        (error "Context expects 2 values" _g26846_)))
                  (let ((_%target2298323004%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g26845_ 0)))
                        (_%tl2298523007%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g26845_ 1))))
                    (if (gx#stx-null? _%tl2298523007%_)
                        (letrec ((_%loop2298623010%_
                                  (lambda (_%hd2298423014%_
                                           _%mixin-usetf2299023017%_)
                                    (if (gx#stx-pair? _%hd2298423014%_)
                                        (let ((_%e2298723020%_
                                               (gx#syntax-e _%hd2298423014%_)))
                                          (let ((_%lp-hd2298823024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2298723020%_)))
                                                (_%lp-tl2298923027%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2298723020%_))))
                                            (_%loop2298623010%_
                                             _%lp-tl2298923027%_
                                             (cons _%lp-hd2298823024%_
                                                   _%mixin-usetf2299023017%_))))
                                        (let ((_%mixin-usetf2299123030%_
                                               (reverse _%mixin-usetf2299023017%_)))
                                          ((lambda (_%L23034%_)
                                             (let* ((_%type-slots23069%_
                                                     (if (gx#stx-null?
                                                          _%slots22176%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L22533%_
                                _%L22462%_
                                _%L22391%_)
                               (foldr (lambda (_%g2305423059%_
                                               _%g2305523062%_
                                               _%g2305623064%_
                                               _%g2305723066%_)
                                        (cons (cons _%g2305623064%_
                                                    (cons _%g2305523062%_
                                                          (cons _%g2305423059%_
                                                                '())))
                                              _%g2305723066%_))
                                      '()
                                      _%L22533%_
                                      _%L22462%_
                                      _%L22391%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23090%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots22550%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L22750%_
                                _%L22679%_
                                _%L22607%_)
                               (foldr (lambda (_%g2307523080%_
                                               _%g2307623083%_
                                               _%g2307723085%_
                                               _%g2307823087%_)
                                        (cons (cons _%g2307723085%_
                                                    (cons _%g2307623083%_
                                                          (cons _%g2307523080%_
                                                                '())))
                                              _%g2307823087%_))
                                      '()
                                      _%L22750%_
                                      _%L22679%_
                                      _%L22607%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23097%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22177%_)))
                           (if _%$e23093%_ _%$e23093%_ _%id22174%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23104%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22177%_)))
                           (if _%$e23100%_
                               _%$e23100%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%L22209%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23119%_
                                                     (let ((_%$e23115%_
                                                            (let ((_%e2310623108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22177%_)))
                      (if _%e2310623108%_
                          (let ((_%e23112%_ _%e2310623108%_))
                            (cons 'constructor: (cons _%e23112%_ '())))
                          '#f))))
               (if _%$e23115%_ _%$e23115%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23157%_
                                                     (let* ((_%properties23122%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22177%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23137%_
                     (let ((_%$e23125%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22177%_))))
                       (if _%$e23125%_
                           ((lambda (_%print23129%_)
                              (let ((_%print23132%_
                                     (if (eq? _%print23129%_ '#t)
                                         _%slots22176%_
                                         _%print23129%_)))
                                (cons (cons 'print: _%print23132%_)
                                      _%properties23122%_)))
                            _%$e23125%_)
                           _%properties23122%_)))
                    (_%properties23152%_
                     (let ((_%$e23140%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22177%_))))
                       (if _%$e23140%_
                           ((lambda (_%equal23144%_)
                              (let ((_%equal23147%_
                                     (if (eq? _%equal23144%_ '#t)
                                         _%slots22176%_
                                         _%equal23144%_)))
                                (cons (cons 'equal: _%equal23147%_)
                                      _%properties23137%_)))
                            _%$e23140%_)
                           _%properties23137%_))))
               _%properties23152%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23198%_
                                                     (if (null? _%properties23157%_)
                                                         '()
                                                         (let* ((_%g2316023168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2316123164%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2316123164%_)))
                        (_%g2315923194%_
                         (lambda (_%g2316123172%_)
                           ((lambda (_%L23175%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%L23175%_ '()))
                                          '())))
                            _%g2316123172%_))))
                   (_%g2315923194%_ _%properties23157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23210%_
                                                     (let ((_%$e23201%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22177%_)))
                                                       (if _%$e23201%_
                                                           ((lambda (_%metaclass23205%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23205%_)
                          _%metaclass23205%_
                          '#f))
                    _%$e23201%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23213%_
                                                     (if _%metaclass23210%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23216%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22177%_)))
                                                    (_%type-struct23219%_
                                                     (cons 'struct:
                                                           (cons _%struct?22191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23222%_
                                                     (cons 'final:
                                                           (cons _%final?23216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2322523242%_
                                                     (lambda (_%g2322623238%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2322623238%_)))
                                                    (_%g2322424228%_
                                                     (lambda (_%g2322623246%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2322623246%_)
                                                           (let ((_g26847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2322623246%_ '0)))
                     (begin
                       (let ((_g26848_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g26847_)
                                    (##values-length _g26847_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g26848_ 2)))
                             (error "Context expects 2 values" _g26848_)))
                       (let ((_%target2322823249%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g26847_ 0)))
                             (_%tl2323023252%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g26847_ 1))))
                         (if (gx#stx-null? _%tl2323023252%_)
                             (letrec ((_%loop2323123255%_
                                       (lambda (_%hd2322923259%_
                                                _%type-body2323523262%_)
                                         (if (gx#stx-pair? _%hd2322923259%_)
                                             (let ((_%e2323223265%_
                                                    (gx#syntax-e
                                                     _%hd2322923259%_)))
                                               (let ((_%lp-hd2323323269%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2323223265%_)))
                                                     (_%lp-tl2323423272%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2323223265%_))))
                                                 (_%loop2323123255%_
                                                  _%lp-tl2323423272%_
                                                  (cons _%lp-hd2323323269%_
                                                        _%type-body2323523262%_))))
                                             (let ((_%type-body2323623275%_
                                                    (reverse _%type-body2323523262%_)))
                                               ((lambda (_%L23279%_)
                                                  (let* ((_%g2330023308%_
                                                          (lambda (_%g2330123304%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2330123304%_)))
                                                         (_%g2329924216%_
                                                          (lambda (_%g2330123312%_)
                                                            ((lambda (_%L23315%_)
                                                               (let* ((_%g2332823336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2332923332%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2332923332%_)))
                              (_%g2332724145%_
                               (lambda (_%g2332923340%_)
                                 ((lambda (_%L23343%_)
                                    (let* ((_%g2335623364%_
                                            (lambda (_%g2335723360%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2335723360%_)))
                                           (_%g2335524110%_
                                            (lambda (_%g2335723368%_)
                                              ((lambda (_%L23371%_)
                                                 (let* ((_%g2338423392%_
                                                         (lambda (_%g2338523388%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2338523388%_)))
                                                        (_%g2338324024%_
                                                         (lambda (_%g2338523396%_)
                                                           ((lambda (_%L23399%_)
                                                              (let* ((_%g2341223420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2341323416%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2341323416%_)))
                             (_%g2341124012%_
                              (lambda (_%g2341323424%_)
                                ((lambda (_%L23427%_)
                                   (let* ((_%g2344023448%_
                                           (lambda (_%g2344123444%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2344123444%_)))
                                          (_%g2343924008%_
                                           (lambda (_%g2344123452%_)
                                             ((lambda (_%L23455%_)
                                                (let* ((_%g2346823476%_
                                                        (lambda (_%g2346923472%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2346923472%_)))
                                                       (_%g2346724004%_
                                                        (lambda (_%g2346923480%_)
                                                          ((lambda (_%L23483%_)
                                                             (let* ((_%g2349623504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2349723500%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2349723500%_)))
                            (_%g2349523969%_
                             (lambda (_%g2349723508%_)
                               ((lambda (_%L23511%_)
                                  (let* ((_%g2352423532%_
                                          (lambda (_%g2352523528%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2352523528%_)))
                                         (_%g2352323898%_
                                          (lambda (_%g2352523536%_)
                                            ((lambda (_%L23539%_)
                                               (let* ((_%g2355223560%_
                                                       (lambda (_%g2355323556%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2355323556%_)))
                                                      (_%g2355123894%_
                                                       (lambda (_%g2355323564%_)
                                                         ((lambda (_%L23567%_)
                                                            (let* ((_%g2358023588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2358123584%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2358123584%_)))
                           (_%g2357923890%_
                            (lambda (_%g2358123592%_)
                              ((lambda (_%L23595%_)
                                 (let* ((_%g2360823616%_
                                         (lambda (_%g2360923612%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2360923612%_)))
                                        (_%g2360723886%_
                                         (lambda (_%g2360923620%_)
                                           ((lambda (_%L23623%_)
                                              (let* ((_%g2363623644%_
                                                      (lambda (_%g2363723640%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2363723640%_)))
                                                     (_%g2363523860%_
                                                      (lambda (_%g2363723648%_)
                                                        ((lambda (_%L23651%_)
                                                           (let* ((_%g2366423672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2366523668%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2366523668%_)))
                          (_%g2366323834%_
                           (lambda (_%g2366523676%_)
                             ((lambda (_%L23679%_)
                                (let* ((_%g2369223700%_
                                        (lambda (_%g2369323696%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2369323696%_)))
                                       (_%g2369123808%_
                                        (lambda (_%g2369323704%_)
                                          ((lambda (_%L23707%_)
                                             (let* ((_%g2372023728%_
                                                     (lambda (_%g2372123724%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2372123724%_)))
                                                    (_%g2371923782%_
                                                     (lambda (_%g2372123732%_)
                                                       ((lambda (_%L23735%_)
                                                          (let* ((_%g2374823756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2374923752%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2374923752%_)))
                         (_%g2374723778%_
                          (lambda (_%g2374923760%_)
                            ((lambda (_%L23763%_)
                               (_%wrap22179%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%L23315%_
                                            (cons _%L23763%_ '())))))
                             _%g2374923760%_))))
                    (_%g2374723778%_
                     (_%wrap22179%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%L22209%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%L23343%_
                                                          (cons 'name:
                                                                (cons _%L23371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%L23427%_
                                          (cons 'super:
                                                (cons _%L23399%_
                                                      (cons 'struct?:
                                                            (cons _%L23455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%L23483%_
                                      (cons 'metaclass:
                                            (cons _%L23511%_
                                                  (cons 'constructor-method:
                                                        (cons _%L23539%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L23567%_
                                  (cons 'constructor:
                                        (cons _%L23595%_
                                              (cons 'predicate:
                                                    (cons _%L23623%_
                                                          (cons 'accessors:
                                                                (cons _%L23651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%L23679%_
                                          (cons 'unchecked-accessors:
                                                (cons _%L23707%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%L23735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2372123732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2371923782%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%L22892%_
                                                         _%L22391%_)
                                                        (foldr (lambda (_%g2378523792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2378623795%_
                                _%g2378723797%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2378623795%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2378523792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2378723797%_))
                       (begin
                         (gx#syntax-check-splice-targets _%L23034%_ _%L22607%_)
                         (foldr (lambda (_%g2378823800%_
                                         _%g2378923803%_
                                         _%g2379023805%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2378923803%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2378823800%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2379023805%_))
                                '()
                                _%L23034%_
                                _%L22607%_))
                       _%L22892%_
                       _%L22391%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2369323704%_))))
                                  (_%g2369123808%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%L22821%_
                                            _%L22391%_)
                                           (foldr (lambda (_%g2381123818%_
                                                           _%g2381223821%_
                                                           _%g2381323823%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2381223821%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2381123818%_ '()))
                                          '()))))
                  _%g2381323823%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L22963%_
                                                     _%L22607%_)
                                                    (foldr (lambda (_%g2381423826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2381523829%_
                            _%g2381623831%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2381523829%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2381423826%_
                                                               '()))
                                                   '()))))
                           _%g2381623831%_))
                   '()
                   _%L22963%_
                   _%L22607%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%L22821%_
                                                  _%L22391%_))))))
                              _%g2366523676%_))))
                     (_%g2366323834%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%L22533%_
                               _%L22391%_)
                              (foldr (lambda (_%g2383723844%_
                                              _%g2383823847%_
                                              _%g2383923849%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2383823847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2383723844%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2383923849%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%L22750%_
                                        _%L22607%_)
                                       (foldr (lambda (_%g2384023852%_
                                                       _%g2384123855%_
                                                       _%g2384223857%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2384123855%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2384023852%_ '()))
                                      '()))))
              _%g2384223857%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L22750%_
                                              _%L22607%_))
                                     _%L22533%_
                                     _%L22391%_))))))
                 _%g2363723648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2363523860%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%L22462%_
                                                          _%L22391%_)
                                                         (foldr (lambda (_%g2386323870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2386423873%_
                                 _%g2386523875%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2386423873%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2386323870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2386523875%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%L22679%_
                           _%L22607%_)
                          (foldr (lambda (_%g2386623878%_
                                          _%g2386723881%_
                                          _%g2386823883%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2386723881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2386623878%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2386823883%_))
                                 '()
                                 _%L22679%_
                                 _%L22607%_))
                        _%L22462%_
                        _%L22391%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2360923620%_))))
                                   (_%g2360723886%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%L22296%_ '())))))
                               _%g2358123592%_))))
                      (_%g2357923890%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%L22268%_ '())))))
                  _%g2355323564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2355123894%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%L22240%_
                                                              '())))))
                                             _%g2352523536%_))))
                                    (_%g2352323898%_
                                     (if (null? _%type-constructor23119%_)
                                         '#f
                                         (let* ((_%g2390223917%_
                                                 (lambda (_%g2390323913%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2390323913%_)))
                                                (_%g2390123965%_
                                                 (lambda (_%g2390323921%_)
                                                   (if (gx#stx-pair?
                                                        _%g2390323921%_)
                                                       (let ((_%e2390523924%_
                                                              (gx#syntax-e
                                                               _%g2390323921%_)))
                                                         (let ((_%hd2390623928%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2390523924%_)))
                       (_%tl2390723931%_
                        (let () (declare (not safe)) (##cdr _%e2390523924%_))))
                   (if (gx#stx-datum? _%hd2390623928%_)
                       (let ((_%e2390823934%_ (gx#stx-e _%hd2390623928%_)))
                         (if (equal? _%e2390823934%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2390723931%_)
                                 (let ((_%e2390923938%_
                                        (gx#syntax-e _%tl2390723931%_)))
                                   (let ((_%hd2391023942%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2390923938%_)))
                                         (_%tl2391123945%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2390923938%_))))
                                     (if (gx#stx-null? _%tl2391123945%_)
                                         ((lambda (_%L23948%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L23948%_ '())))
                                          _%hd2391023942%_)
                                         (_%g2390223917%_ _%g2390323921%_))))
                                 (_%g2390223917%_ _%g2390323921%_))
                             (_%g2390223917%_ _%g2390323921%_)))
                       (_%g2390223917%_ _%g2390323921%_))))
               (_%g2390223917%_ _%g2390323921%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2390123965%_
                                            _%type-constructor23119%_))))))
                                _%g2349723508%_))))
                       (_%g2349523969%_
                        (if _%metaclass23210%_
                            (let* ((_%g2397323981%_
                                    (lambda (_%g2397423977%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2397423977%_)))
                                   (_%g2397224000%_
                                    (lambda (_%g2397423985%_)
                                      ((lambda (_%L23988%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%L23988%_ '())))
                                       _%g2397423985%_))))
                              (_%g2397224000%_ _%metaclass23210%_))
                            '#f))))
                   _%g2346923480%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2346724004%_
                                                   _%final?23216%_)))
                                              _%g2344123452%_))))
                                     (_%g2343924008%_ _%struct?22191%_)))
                                 _%g2341323424%_))))
                        (_%g2341124012%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2401524018%_
                                                     _%g2401624021%_)
                                              (cons _%g2401524018%_
                                                    _%g2401624021%_))
                                            '()
                                            _%L22391%_)
                                     '())))))
                    _%g2338523396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2338324024%_
                                                    (let* ((_%g2402824045%_
                                                            (lambda (_%g2402924041%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2402924041%_)))
                                                           (_%g2402724106%_
                                                            (lambda (_%g2402924049%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2402924049%_)
                          (let ((_g26849_
                                 (gx#syntax-split-splice _%g2402924049%_ '0)))
                            (begin
                              (let ((_g26850_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g26849_)
                                           (##values-length _g26849_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g26850_ 2)))
                                    (error "Context expects 2 values"
                                           _g26850_)))
                              (let ((_%target2403124052%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g26849_ 0)))
                                    (_%tl2403324055%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g26849_ 1))))
                                (if (gx#stx-null? _%tl2403324055%_)
                                    (letrec ((_%loop2403424058%_
                                              (lambda (_%hd2403224062%_
                                                       _%super-id2403824065%_)
                                                (if (gx#stx-pair?
                                                     _%hd2403224062%_)
                                                    (let ((_%e2403524068%_
                                                           (gx#syntax-e
                                                            _%hd2403224062%_)))
                                                      (let ((_%lp-hd2403624072%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2403524068%_)))
                    (_%lp-tl2403724075%_
                     (let () (declare (not safe)) (##cdr _%e2403524068%_))))
                (_%loop2403424058%_
                 _%lp-tl2403724075%_
                 (cons _%lp-hd2403624072%_ _%super-id2403824065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2403924078%_
                                                           (reverse _%super-id2403824065%_)))
                                                      ((lambda (_%L24082%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2409724100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2409824103%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2409724100%_ '()))
                                      _%g2409824103%_))
                              '()
                              _%L24082%_)))
               _%super-id2403924078%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2403424058%_
                                       _%target2403124052%_
                                       '()))
                                    (_%g2402824045%_ _%g2402924049%_)))))
                          (_%g2402824045%_ _%g2402924049%_)))))
              (_%g2402724106%_ _%super-ref22175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2335723368%_))))
                                      (_%g2335524110%_
                                       (let* ((_%g2411424122%_
                                               (lambda (_%g2411524118%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2411524118%_)))
                                              (_%g2411324141%_
                                               (lambda (_%g2411524126%_)
                                                 ((lambda (_%L24129%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%L24129%_
                                                                '())))
                                                  _%g2411524126%_))))
                                         (_%g2411324141%_
                                          (cadr _%type-name23097%_))))))
                                  _%g2332923340%_))))
                         (_%g2332724145%_
                          (let* ((_%g2414924164%_
                                  (lambda (_%g2415024160%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2415024160%_)))
                                 (_%g2414824212%_
                                  (lambda (_%g2415024168%_)
                                    (if (gx#stx-pair? _%g2415024168%_)
                                        (let ((_%e2415224171%_
                                               (gx#syntax-e _%g2415024168%_)))
                                          (let ((_%hd2415324175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2415224171%_)))
                                                (_%tl2415424178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2415224171%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2415324175%_)
                                                (let ((_%e2415524181%_
                                                       (gx#stx-e
                                                        _%hd2415324175%_)))
                                                  (if (equal? _%e2415524181%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2415424178%_)
                                                          (let ((_%e2415624185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2415424178%_)))
                    (let ((_%hd2415724189%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2415624185%_)))
                          (_%tl2415824192%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2415624185%_))))
                      (if (gx#stx-null? _%tl2415824192%_)
                          ((lambda (_%L24195%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%L24195%_ '())))
                           _%hd2415724189%_)
                          (_%g2414924164%_ _%g2415024168%_))))
                  (_%g2414924164%_ _%g2415024168%_))
              (_%g2414924164%_ _%g2415024168%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2414924164%_
                                                 _%g2415024168%_))))
                                        (_%g2414924164%_ _%g2415024168%_)))))
                            (_%g2414824212%_ _%type-id23104%_)))))
                     _%g2330123312%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2329924216%_
                                                     (_%wrap22179%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%L22240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L22324%_
                                (cons _%L22268%_
                                      (cons _%L22296%_
                                            (foldr (lambda (_%g2421924222%_
                                                            _%g2422024225%_)
                                                     (cons _%g2421924222%_
                                                           _%g2422024225%_))
                                                   '()
                                                   _%L23279%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2323623275%_))))))
                               (_%loop2323123255%_ _%target2322823249%_ '()))
                             (_%g2322523242%_ _%g2322623246%_)))))
                   (_%g2322523242%_ _%g2322623246%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2322424228%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23090%_
                                                                _%type-slots23069%_)
                                                         _%type-properties23198%_)
                                                  _%type-metaclass23213%_)
                                           _%type-final23222%_)
                                    _%type-struct23219%_)
                             _%type-constructor23119%_)
                      _%type-name23097%_)
               _%type-id23104%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2299123030%_))))))
                          (_%loop2298623010%_ _%target2298323004%_ '()))
                        (_%g2298022997%_ _%g2298123001%_)))))
              (_%g2298022997%_ _%g2298123001%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2297924232%_
                                           (gx#stx-map
                                            (lambda (_%g2423524237%_)
                                              (_%make-id22181%_
                                               '"&"
                                               _%g2423524237%_))
                                            (foldr (lambda (_%g2424024243%_
                                                            _%g2424124246%_)
                                                     (cons _%g2424024243%_
                                                           _%g2424124246%_))
                                                   '()
                                                   _%L22750%_)))))
                                      _%mixin-ugetf2292022959%_))))))
                     (_%loop2291522939%_ _%target2291222933%_ '()))
                   (_%g2290922926%_ _%g2291022930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2290922926%_
                                                  _%g2291022930%_)))))
                                     (_%g2290824249%_
                                      (gx#stx-map
                                       (lambda (_%g2425224254%_)
                                         (_%make-id22181%_
                                          '"&"
                                          _%g2425224254%_))
                                       (foldr (lambda (_%g2425724260%_
                                                       _%g2425824263%_)
                                                (cons _%g2425724260%_
                                                      _%g2425824263%_))
                                              '()
                                              _%L22679%_)))))
                                 _%usetf2284922888%_))))))
                (_%loop2284422868%_ _%target2284122862%_ '()))
              (_%g2283822855%_ _%g2283922859%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2283822855%_
                                             _%g2283922859%_)))))
                                (_%g2283724266%_
                                 (gx#stx-map
                                  (lambda (_%g2426924271%_)
                                    (_%make-id22181%_ '"&" _%g2426924271%_))
                                  (foldr (lambda (_%g2427424277%_
                                                  _%g2427524280%_)
                                           (cons _%g2427424277%_
                                                 _%g2427524280%_))
                                         '()
                                         _%L22533%_)))))
                            _%ugetf2277822817%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2277322797%_
                                                    _%target2277022791%_
                                                    '()))
                                                 (_%g2276722784%_
                                                  _%g2276822788%_)))))
                                       (_%g2276722784%_ _%g2276822788%_)))))
                           (_%g2276624283%_
                            (gx#stx-map
                             (lambda (_%g2428624288%_)
                               (_%make-id22181%_ '"&" _%g2428624288%_))
                             (foldr (lambda (_%g2429124294%_ _%g2429224297%_)
                                      (cons _%g2429124294%_ _%g2429224297%_))
                                    '()
                                    _%L22462%_)))))
                       _%mixin-setf2270722746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2270222726%_
                                               _%target2269922720%_
                                               '()))
                                            (_%g2269622713%_
                                             _%g2269722717%_)))))
                                  (_%g2269622713%_ _%g2269722717%_)))))
                      (_%g2269524300%_
                       (gx#stx-map
                        (lambda (_%g2430324305%_)
                          (_%make-id22181%_
                           _%name22185%_
                           '"-"
                           _%g2430324305%_
                           '"-set!"))
                        _%mixin-slots22550%_))))
                  _%mixin-getf2263622675%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2263122655%_
                                          _%target2262822649%_
                                          '()))
                                       (_%g2262522642%_ _%g2262622646%_)))))
                             (_%g2262522642%_ _%g2262622646%_)))))
                 (_%g2262424309%_
                  (gx#stx-map
                   (lambda (_%g2431224314%_)
                     (_%make-id22181%_ _%name22185%_ '"-" _%g2431224314%_))
                   _%mixin-slots22550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2256422603%_))))))
                                    (_%loop2255922583%_
                                     _%target2255622577%_
                                     '()))
                                  (_%g2255322570%_ _%g2255422574%_)))))
                        (_%g2255322570%_ _%g2255422574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2255224318%_
                                                     _%mixin-slots22550%_)))
                                                _%setf2249022529%_))))))
                               (_%loop2248522509%_ _%target2248222503%_ '()))
                             (_%g2247922496%_ _%g2248022500%_)))))
                   (_%g2247922496%_ _%g2248022500%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2247824322%_
                                                (gx#stx-map
                                                 (lambda (_%g2432524327%_)
                                                   (_%make-id22181%_
                                                    _%name22185%_
                                                    '"-"
                                                    _%g2432524327%_
                                                    '"-set!"))
                                                 _%slots22176%_))))
                                           _%getf2241922458%_))))))
                          (_%loop2241422438%_ _%target2241122432%_ '()))
                        (_%g2240822425%_ _%g2240922429%_)))))
              (_%g2240822425%_ _%g2240922429%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2240724331%_
                                           (gx#stx-map
                                            (lambda (_%g2433424336%_)
                                              (_%make-id22181%_
                                               _%name22185%_
                                               '"-"
                                               _%g2433424336%_))
                                            _%slots22176%_))))
                                      _%slot2234822387%_))))))
                     (_%loop2234322367%_ _%target2234022361%_ '()))
                   (_%g2233722354%_ _%g2233822358%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2233722354%_
                                                  _%g2233822358%_)))))
                                     (_%g2233624340%_ _%slots22176%_)))
                                 _%g2231022321%_))))
                        (_%g2230824344%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22188%_)))))
                    _%g2228222293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2228024348%_
                                                    (_%make-id22181%_
                                                     _%name22185%_
                                                     '"?"))))
                                               _%g2225422265%_))))
                                      (_%g2225224352%_
                                       (_%make-id22181%_
                                        '"make-"
                                        _%name22185%_))))
                                  _%g2222622237%_))))
                         (_%g2222424356%_
                          (_%make-id22181%_ _%name22185%_ '"::t"))))
                     _%g2219522206%_))))
            (_%g2219324360%_ _%id22174%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24427%_)
        (let* ((_%g2443124450%_
                (lambda (_%g2443224446%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2443224446%_)))
               (_%g2443024507%_
                (lambda (_%g2443224454%_)
                  (if (gx#stx-pair? _%g2443224454%_)
                      (let ((_%e2443624457%_ (gx#syntax-e _%g2443224454%_)))
                        (let ((_%hd2443724461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2443624457%_)))
                              (_%tl2443824464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2443624457%_))))
                          (if (gx#stx-pair? _%tl2443824464%_)
                              (let ((_%e2443924467%_
                                     (gx#syntax-e _%tl2443824464%_)))
                                (let ((_%hd2444024471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2443924467%_)))
                                      (_%tl2444124474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2443924467%_))))
                                  (if (gx#stx-pair? _%tl2444124474%_)
                                      (let ((_%e2444224477%_
                                             (gx#syntax-e _%tl2444124474%_)))
                                        (let ((_%hd2444324481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2444224477%_)))
                                              (_%tl2444424484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2444224477%_))))
                                          ((lambda (_%L24487%_
                                                    _%L24489%_
                                                    _%L24490%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%L24490%_
                                                         (cons _%L24489%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L24487%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2444424484%_
                                           _%hd2444324481%_
                                           _%hd2444024471%_)))
                                      (_%g2443124450%_ _%g2443224454%_))))
                              (_%g2443124450%_ _%g2443224454%_))))
                      (_%g2443124450%_ _%g2443224454%_)))))
          (_%g2443024507%_ _%$stx24427%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24511%_)
        (letrec ((_%generate24514%_
                  (lambda (_%hd24598%_ _%slots24600%_ _%body24601%_)
                    (let* ((_%__stx2636626367%_ _%hd24598%_)
                           (_%g2460424616%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2636626367%_))))
                      (let ((_%__kont2636926370%_
                             (lambda (_%L24644%_ _%L24646%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24511%_
                                _%L24646%_
                                (gx#syntax->list _%L24644%_)
                                _%slots24600%_
                                _%body24601%_)))
                            (_%__kont2637126372%_
                             (lambda ()
                               (if (gx#identifier? _%hd24598%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24511%_
                                    _%hd24598%_
                                    '()
                                    _%slots24600%_
                                    _%body24601%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _%stx24511%_
                                    _%hd24598%_)))))
                        (let ((_%__match2637926380%_
                               (lambda (_%e2460824634%_
                                        _%hd2460924638%_
                                        _%tl2461024641%_)
                                 (let ((_%L24644%_ _%tl2461024641%_)
                                       (_%L24646%_ _%hd2460924638%_))
                                   (if (and (gx#stx-list? _%L24644%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%L24644%_))
                                       (_%__kont2636926370%_
                                        _%L24644%_
                                        _%L24646%_)
                                       (_%__kont2637126372%_))))))
                          (if (gx#stx-pair? _%__stx2636626367%_)
                              (let ((_%e2460824634%_
                                     (gx#syntax-e _%__stx2636626367%_)))
                                (let ((_%tl2461024641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2460824634%_)))
                                      (_%hd2460924638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2460824634%_))))
                                  (_%__match2637926380%_
                                   _%e2460824634%_
                                   _%hd2460924638%_
                                   _%tl2461024641%_)))
                              (_%__kont2637126372%_))))))))
          (let* ((_%g2451724536%_
                  (lambda (_%g2451824532%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2451824532%_)))
                 (_%g2451624594%_
                  (lambda (_%g2451824540%_)
                    (if (gx#stx-pair? _%g2451824540%_)
                        (let ((_%e2452224543%_ (gx#syntax-e _%g2451824540%_)))
                          (let ((_%hd2452324547%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2452224543%_)))
                                (_%tl2452424550%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2452224543%_))))
                            (if (gx#stx-pair? _%tl2452424550%_)
                                (let ((_%e2452524553%_
                                       (gx#syntax-e _%tl2452424550%_)))
                                  (let ((_%hd2452624557%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2452524553%_)))
                                        (_%tl2452724560%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2452524553%_))))
                                    (if (gx#stx-pair? _%tl2452724560%_)
                                        (let ((_%e2452824563%_
                                               (gx#syntax-e _%tl2452724560%_)))
                                          (let ((_%hd2452924567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2452824563%_)))
                                                (_%tl2453024570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2452824563%_))))
                                            ((lambda (_%L24573%_
                                                      _%L24575%_
                                                      _%L24576%_)
                                               (if (and (gx#identifier-list?
                                                         _%L24575%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%L24573%_))
                                                   (_%generate24514%_
                                                    _%L24576%_
                                                    _%L24575%_
                                                    _%L24573%_)
                                                   (_%g2451724536%_
                                                    _%g2451824540%_)))
                                             _%tl2453024570%_
                                             _%hd2452924567%_
                                             _%hd2452624557%_)))
                                        (_%g2451724536%_ _%g2451824540%_))))
                                (_%g2451724536%_ _%g2451824540%_))))
                        (_%g2451724536%_ _%g2451824540%_)))))
            (_%g2451624594%_ _%stx24511%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx24663%_)
        (letrec ((_%wrap24666%_
                  (lambda (_%e-stx25012%_)
                    (gx#stx-wrap-source
                     _%e-stx25012%_
                     (gx#stx-source _%stx24663%_))))
                 (_%method-opt?24668%_
                  (lambda (_%x25009%_)
                    (let ((__tmp26851 (gx#stx-e _%x25009%_)))
                      (declare (not safe))
                      (##memq __tmp26851 '(rebind:))))))
          (let* ((_%g2467024699%_
                  (lambda (_%g2467124695%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2467124695%_)))
                 (_%g2466925005%_
                  (lambda (_%g2467124703%_)
                    (if (gx#stx-pair? _%g2467124703%_)
                        (let ((_%e2467624706%_ (gx#syntax-e _%g2467124703%_)))
                          (let ((_%hd2467724710%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2467624706%_)))
                                (_%tl2467824713%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2467624706%_))))
                            (if (gx#stx-pair? _%tl2467824713%_)
                                (let ((_%e2467924716%_
                                       (gx#syntax-e _%tl2467824713%_)))
                                  (let ((_%hd2468024720%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2467924716%_)))
                                        (_%tl2468124723%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2467924716%_))))
                                    (if (gx#stx-pair? _%hd2468024720%_)
                                        (let ((_%e2468224726%_
                                               (gx#syntax-e _%hd2468024720%_)))
                                          (let ((_%hd2468324730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2468224726%_)))
                                                (_%tl2468424733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2468224726%_))))
                                            (if (gx#identifier?
                                                 _%hd2468324730%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g26852_|
                                                     _%hd2468324730%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2468424733%_)
                                                        (let ((_%e2468524736%_
                                                               (gx#syntax-e
                                                                _%tl2468424733%_)))
                                                          (let ((_%hd2468624740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2468524736%_)))
                        (_%tl2468724743%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2468524736%_))))
                    (if (gx#stx-pair? _%tl2468724743%_)
                        (let ((_%e2468824746%_ (gx#syntax-e _%tl2468724743%_)))
                          (let ((_%hd2468924750%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2468824746%_)))
                                (_%tl2469024753%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2468824746%_))))
                            (if (gx#stx-null? _%tl2469024753%_)
                                (if (gx#stx-pair? _%tl2468124723%_)
                                    (let ((_%e2469124756%_
                                           (gx#syntax-e _%tl2468124723%_)))
                                      (let ((_%hd2469224760%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2469124756%_)))
                                            (_%tl2469324763%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2469124756%_))))
                                        ((lambda (_%L24766%_
                                                  _%L24768%_
                                                  _%L24769%_
                                                  _%L24770%_)
                                           (if (and (gx#identifier? _%L24770%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                       _%L24769%_))
                                                    (gx#stx-plist?
                                                     _%L24766%_
                                                     _%method-opt?24668%_))
                                               (let* ((_%klass24797%_
                                                       (gx#syntax-local-value
                                                        _%L24769%_))
                                                      (_%rebind?24800%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%L24766%_)))
                                                      (_%g2480324811%_
                                                       (lambda (_%g2480424807%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2480424807%_)))
                                                      (_%g2480224995%_
                                                       (lambda (_%g2480424815%_)
                                                         ((lambda (_%L24818%_)
                                                            (let* ((_%g2483324841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2483424837%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2483424837%_)))
                           (_%g2483224991%_
                            (lambda (_%g2483424845%_)
                              ((lambda (_%L24848%_)
                                 (let* ((_%g2486124869%_
                                         (lambda (_%g2486224865%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2486224865%_)))
                                        (_%g2486024987%_
                                         (lambda (_%g2486224873%_)
                                           ((lambda (_%L24876%_)
                                              (let* ((_%g2488924897%_
                                                      (lambda (_%g2489024893%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2489024893%_)))
                                                     (_%g2488824983%_
                                                      (lambda (_%g2489024901%_)
                                                        ((lambda (_%L24904%_)
                                                           (let* ((_%g2491724925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2491824921%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2491824921%_)))
                          (_%g2491624979%_
                           (lambda (_%g2491824929%_)
                             ((lambda (_%L24932%_)
                                (let* ((_%g2494524953%_
                                        (lambda (_%g2494624949%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2494624949%_)))
                                       (_%g2494424975%_
                                        (lambda (_%g2494624957%_)
                                          ((lambda (_%L24960%_)
                                             (_%wrap24666%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%L24904%_
                                                          (cons _%L24960%_
                                                                '())))))
                                           _%g2494624957%_))))
                                  (_%g2494424975%_
                                   (_%wrap24666%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%L24818%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L24770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%L24848%_ (cons _%L24932%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2491824929%_))))
                     (_%g2491624979%_ _%rebind?24800%_)))
                 _%g2489024901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2488824983%_
                                                 (_%wrap24666%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%L24848%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%L24876%_
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
                                                      (cons _%L24818%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L24770%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%L24768%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2486224873%_))))
                                   (_%g2486024987%_
                                    (gx#stx-identifier
                                     _%L24769%_
                                     '@next-method))))
                               _%g2483424845%_))))
                      (_%g2483224991%_
                       (gx#stx-identifier
                        _%L24769%_
                        _%L24769%_
                        '"::"
                        _%L24770%_))))
                  _%g2480424815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2480224995%_
                                                  (let ((__obj26643
                                                         _%klass24797%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj26643
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj26643
                                                           '12
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj26643
                                                         'type-descriptor)))))
                                               (if (gx#identifier? _%L24770%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                          _%L24769%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx24663%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; expected type identifier"
                                                        _%stx24663%_
                                                        _%L24769%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx24663%_
                                                    _%L24770%_))))
                                         _%tl2469324763%_
                                         _%hd2469224760%_
                                         _%hd2468924750%_
                                         _%hd2468624740%_)))
                                    (_%g2467024699%_ _%g2467124703%_))
                                (_%g2467024699%_ _%g2467124703%_))))
                        (_%g2467024699%_ _%g2467124703%_))))
                (_%g2467024699%_ _%g2467124703%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2467024699%_
                                                     _%g2467124703%_))
                                                (_%g2467024699%_
                                                 _%g2467124703%_))))
                                        (_%g2467024699%_ _%g2467124703%_))))
                                (_%g2467024699%_ _%g2467124703%_))))
                        (_%g2467024699%_ _%g2467124703%_)))))
            (_%g2466925005%_ _%stx24663%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25015%_)
        (letrec ((_%dotted-identifier?25018%_
                  (lambda (_%id25651%_)
                    (if (gx#identifier? _%id25651%_)
                        (let ((_%id-str25654%_
                               (symbol->string (gx#stx-e _%id25651%_))))
                          (if (string-index _%id-str25654%_ '#\.)
                              (let* ((_%split25657%_
                                      (string-split _%id-str25654%_ '#\.))
                                     (__tmp26853 (length _%split25657%_)))
                                (declare (not safe))
                                (##fx= __tmp26853 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25020%_
                  (lambda (_%id25640%_)
                    (let* ((_%id-str25643%_
                            (symbol->string (gx#stx-e _%id25640%_)))
                           (_%split25646%_
                            (string-split _%id-str25643%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id25640%_
                             (car _%split25646%_))
                            (cons (gx#stx-identifier
                                   _%id25640%_
                                   (cadr _%split25646%_))
                                  '()))))))
          (let* ((_%__stx2638226383%_ _%stx25015%_)
                 (_%g2502525112%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2638226383%_))))
            (let ((_%__kont2638526386%_
                   (lambda (_%L25533%_ _%L25535%_ _%L25536%_)
                     (let* ((_%g2556425579%_
                             (lambda (_%g2556525575%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2556525575%_)))
                            (_%g2556325632%_
                             (lambda (_%g2556525583%_)
                               (if (gx#stx-pair? _%g2556525583%_)
                                   (let ((_%e2556825586%_
                                          (gx#syntax-e _%g2556525583%_)))
                                     (let ((_%hd2556925590%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2556825586%_)))
                                           (_%tl2557025593%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2556825586%_))))
                                       (if (gx#stx-pair? _%tl2557025593%_)
                                           (let ((_%e2557125596%_
                                                  (gx#syntax-e
                                                   _%tl2557025593%_)))
                                             (let ((_%hd2557225600%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2557125596%_)))
                                                   (_%tl2557325603%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2557125596%_))))
                                               (if (gx#stx-null?
                                                    _%tl2557325603%_)
                                                   ((lambda (_%L25606%_
                                                             _%L25608%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%L25608%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L25606%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2562325626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2562425629%_)
                   (cons _%g2562325626%_ _%g2562425629%_))
                 '()
                 _%L25535%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2557225600%_
                                                    _%hd2556925590%_)
                                                   (_%g2556425579%_
                                                    _%g2556525583%_))))
                                           (_%g2556425579%_ _%g2556525583%_))))
                                   (_%g2556425579%_ _%g2556525583%_)))))
                       (_%g2556325632%_ (_%split-dotted25020%_ _%L25536%_)))))
                  (_%__kont2638926390%_
                   (lambda (_%L25375%_ _%L25377%_)
                     (let* ((_%g2539425409%_
                             (lambda (_%g2539525405%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2539525405%_)))
                            (_%g2539325462%_
                             (lambda (_%g2539525413%_)
                               (if (gx#stx-pair? _%g2539525413%_)
                                   (let ((_%e2539825416%_
                                          (gx#syntax-e _%g2539525413%_)))
                                     (let ((_%hd2539925420%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2539825416%_)))
                                           (_%tl2540025423%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2539825416%_))))
                                       (if (gx#stx-pair? _%tl2540025423%_)
                                           (let ((_%e2540125426%_
                                                  (gx#syntax-e
                                                   _%tl2540025423%_)))
                                             (let ((_%hd2540225430%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2540125426%_)))
                                                   (_%tl2540325433%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2540125426%_))))
                                               (if (gx#stx-null?
                                                    _%tl2540325433%_)
                                                   ((lambda (_%L25436%_
                                                             _%L25438%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%L25438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25436%_ '()))
                                (foldr (lambda (_%g2545325456%_
                                                _%g2545425459%_)
                                         (cons _%g2545325456%_
                                               _%g2545425459%_))
                                       '()
                                       _%L25375%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2540225430%_
                                                    _%hd2539925420%_)
                                                   (_%g2539425409%_
                                                    _%g2539525413%_))))
                                           (_%g2539425409%_ _%g2539525413%_))))
                                   (_%g2539425409%_ _%g2539525413%_)))))
                       (_%g2539325462%_ (_%split-dotted25020%_ _%L25377%_)))))
                  (_%__kont2639326394%_
                   (lambda (_%L25279%_ _%L25281%_ _%L25282%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%L25281%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L25282%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2530925312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2531025315%_)
                          (cons _%g2530925312%_ _%g2531025315%_))
                        '()
                        _%L25279%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2639726398%_
                   (lambda (_%L25179%_ _%L25181%_ _%L25182%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%L25181%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L25182%_ '()))
                                       (foldr (lambda (_%g2520325206%_
                                                       _%g2520425209%_)
                                                (cons _%g2520325206%_
                                                      _%g2520425209%_))
                                              '()
                                              _%L25179%_)))))))
              (let* ((_%__match2650126502%_
                      (lambda (_%e2508925119%_
                               _%hd2509025123%_
                               _%tl2509125126%_
                               _%e2509225129%_
                               _%hd2509325133%_
                               _%tl2509425136%_
                               _%e2509525139%_
                               _%hd2509625143%_
                               _%tl2509725146%_
                               _%__splice2639926400%_
                               _%target2509825149%_
                               _%tl2510025152%_)
                        (letrec ((_%loop2510125155%_
                                  (lambda (_%hd2509925159%_ _%arg2510525162%_)
                                    (if (gx#stx-pair? _%hd2509925159%_)
                                        (let ((_%e2510225165%_
                                               (gx#syntax-e _%hd2509925159%_)))
                                          (let ((_%lp-tl2510425172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2510225165%_)))
                                                (_%lp-hd2510325169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2510225165%_))))
                                            (_%loop2510125155%_
                                             _%lp-tl2510425172%_
                                             (cons _%lp-hd2510325169%_
                                                   _%arg2510525162%_))))
                                        (let ((_%arg2510625175%_
                                               (reverse _%arg2510525162%_)))
                                          (let ((_%L25179%_ _%arg2510625175%_)
                                                (_%L25181%_ _%hd2509625143%_)
                                                (_%L25182%_ _%hd2509325133%_))
                                            (if (gx#identifier? _%L25182%_)
                                                (_%__kont2639726398%_
                                                 _%L25179%_
                                                 _%L25181%_
                                                 _%L25182%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2502525112%_)))))))))
                          (_%loop2510125155%_ _%target2509825149%_ '()))))
                     (_%__match2647526476%_
                      (lambda (_%e2506825219%_
                               _%hd2506925223%_
                               _%tl2507025226%_
                               _%e2507125229%_
                               _%hd2507225233%_
                               _%tl2507325236%_
                               _%e2507425239%_
                               _%hd2507525243%_
                               _%tl2507625246%_
                               _%__splice2639526396%_
                               _%target2507725249%_
                               _%tl2507925252%_)
                        (letrec ((_%loop2508025255%_
                                  (lambda (_%hd2507825259%_ _%arg2508425262%_)
                                    (if (gx#stx-pair? _%hd2507825259%_)
                                        (let ((_%e2508125265%_
                                               (gx#syntax-e _%hd2507825259%_)))
                                          (let ((_%lp-tl2508325272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2508125265%_)))
                                                (_%lp-hd2508225269%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2508125265%_))))
                                            (_%loop2508025255%_
                                             _%lp-tl2508325272%_
                                             (cons _%lp-hd2508225269%_
                                                   _%arg2508425262%_))))
                                        (let ((_%arg2508525275%_
                                               (reverse _%arg2508425262%_)))
                                          (let ((_%L25279%_ _%arg2508525275%_)
                                                (_%L25281%_ _%hd2507525243%_)
                                                (_%L25282%_ _%hd2507225233%_))
                                            (if (and (gx#identifier?
                                                      _%L25282%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2530125304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2530225307%_)
                       (cons _%g2530125304%_ _%g2530225307%_))
                     '()
                     _%L25279%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2639326394%_
                                                 _%L25279%_
                                                 _%L25281%_
                                                 _%L25282%_)
                                                (_%__match2650126502%_
                                                 _%e2506825219%_
                                                 _%hd2506925223%_
                                                 _%tl2507025226%_
                                                 _%e2507125229%_
                                                 _%hd2507225233%_
                                                 _%tl2507325236%_
                                                 _%e2507425239%_
                                                 _%hd2507525243%_
                                                 _%tl2507625246%_
                                                 _%__splice2639526396%_
                                                 _%target2507725249%_
                                                 _%tl2507925252%_))))))))
                          (_%loop2508025255%_ _%target2507725249%_ '()))))
                     (_%__match2646126462%_
                      (lambda (_%e2506825219%_
                               _%hd2506925223%_
                               _%tl2507025226%_
                               _%e2507125229%_
                               _%hd2507225233%_
                               _%tl2507325236%_)
                        (if (gx#stx-pair? _%tl2507325236%_)
                            (let ((_%e2507425239%_
                                   (gx#syntax-e _%tl2507325236%_)))
                              (let ((_%tl2507625246%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2507425239%_)))
                                    (_%hd2507525243%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2507425239%_))))
                                (if (gx#stx-pair/null? _%tl2507625246%_)
                                    (let ((_%__splice2639526396%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2507625246%_
                                            '0)))
                                      (let ((_%tl2507925252%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2639526396%_
                                                '1)))
                                            (_%target2507725249%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2639526396%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2507925252%_)
                                            (_%__match2647526476%_
                                             _%e2506825219%_
                                             _%hd2506925223%_
                                             _%tl2507025226%_
                                             _%e2507125229%_
                                             _%hd2507225233%_
                                             _%tl2507325236%_
                                             _%e2507425239%_
                                             _%hd2507525243%_
                                             _%tl2507625246%_
                                             _%__splice2639526396%_
                                             _%target2507725249%_
                                             _%tl2507925252%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2502525112%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2502525112%_)))))
                            (let () (declare (not safe)) (_%g2502525112%_)))))
                     (_%__match2644926450%_
                      (lambda (_%e2505025325%_
                               _%hd2505125329%_
                               _%tl2505225332%_
                               _%e2505325335%_
                               _%hd2505425339%_
                               _%tl2505525342%_
                               _%__splice2639126392%_
                               _%target2505625345%_
                               _%tl2505825348%_)
                        (letrec ((_%loop2505925351%_
                                  (lambda (_%hd2505725355%_ _%arg2506325358%_)
                                    (if (gx#stx-pair? _%hd2505725355%_)
                                        (let ((_%e2506025361%_
                                               (gx#syntax-e _%hd2505725355%_)))
                                          (let ((_%lp-tl2506225368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2506025361%_)))
                                                (_%lp-hd2506125365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2506025361%_))))
                                            (_%loop2505925351%_
                                             _%lp-tl2506225368%_
                                             (cons _%lp-hd2506125365%_
                                                   _%arg2506325358%_))))
                                        (let ((_%arg2506425371%_
                                               (reverse _%arg2506325358%_)))
                                          (let ((_%L25375%_ _%arg2506425371%_)
                                                (_%L25377%_ _%hd2505425339%_))
                                            (if (_%dotted-identifier?25018%_
                                                 _%L25377%_)
                                                (_%__kont2638926390%_
                                                 _%L25375%_
                                                 _%L25377%_)
                                                (_%__match2646126462%_
                                                 _%e2505025325%_
                                                 _%hd2505125329%_
                                                 _%tl2505225332%_
                                                 _%e2505325335%_
                                                 _%hd2505425339%_
                                                 _%tl2505525342%_))))))))
                          (_%loop2505925351%_ _%target2505625345%_ '()))))
                     (_%__match2644726448%_
                      (lambda (_%e2505025325%_
                               _%hd2505125329%_
                               _%tl2505225332%_
                               _%e2505325335%_
                               _%hd2505425339%_
                               _%tl2505525342%_
                               _%__splice2639126392%_
                               _%target2505625345%_
                               _%tl2505825348%_)
                        (if (gx#stx-null? _%tl2505825348%_)
                            (_%__match2644926450%_
                             _%e2505025325%_
                             _%hd2505125329%_
                             _%tl2505225332%_
                             _%e2505325335%_
                             _%hd2505425339%_
                             _%tl2505525342%_
                             _%__splice2639126392%_
                             _%target2505625345%_
                             _%tl2505825348%_)
                            (if (gx#stx-pair? _%tl2505525342%_)
                                (let ((_%e2507425239%_
                                       (gx#syntax-e _%tl2505525342%_)))
                                  (let ((_%tl2507625246%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2507425239%_)))
                                        (_%hd2507525243%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2507425239%_))))
                                    (if (gx#stx-pair/null? _%tl2507625246%_)
                                        (let ((_%__splice2639526396%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2507625246%_
                                                '0)))
                                          (let ((_%tl2507925252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2639526396%_
                                                    '1)))
                                                (_%target2507725249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2639526396%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2507925252%_)
                                                (_%__match2647526476%_
                                                 _%e2505025325%_
                                                 _%hd2505125329%_
                                                 _%tl2505225332%_
                                                 _%e2505325335%_
                                                 _%hd2505425339%_
                                                 _%tl2505525342%_
                                                 _%e2507425239%_
                                                 _%hd2507525243%_
                                                 _%tl2507625246%_
                                                 _%__splice2639526396%_
                                                 _%target2507725249%_
                                                 _%tl2507925252%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2502525112%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2502525112%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2502525112%_))))))
                     (_%__match2642926430%_
                      (lambda (_%e2503025473%_
                               _%hd2503125477%_
                               _%tl2503225480%_
                               _%e2503325483%_
                               _%hd2503425487%_
                               _%tl2503525490%_
                               _%__splice2638726388%_
                               _%target2503625493%_
                               _%tl2503825496%_
                               _%e2504525499%_
                               _%hd2504625503%_
                               _%tl2504725506%_)
                        (letrec ((_%loop2503925509%_
                                  (lambda (_%hd2503725513%_ _%arg2504325516%_)
                                    (if (gx#stx-pair? _%hd2503725513%_)
                                        (let ((_%e2504025519%_
                                               (gx#syntax-e _%hd2503725513%_)))
                                          (let ((_%lp-tl2504225526%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2504025519%_)))
                                                (_%lp-hd2504125523%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2504025519%_))))
                                            (_%loop2503925509%_
                                             _%lp-tl2504225526%_
                                             (cons _%lp-hd2504125523%_
                                                   _%arg2504325516%_))))
                                        (let ((_%arg2504425529%_
                                               (reverse _%arg2504325516%_)))
                                          (let ((_%L25533%_ _%hd2504625503%_)
                                                (_%L25535%_ _%arg2504425529%_)
                                                (_%L25536%_ _%hd2503425487%_))
                                            (if (and (_%dotted-identifier?25018%_
                                                      _%L25536%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2555525558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2555625561%_)
                       (cons _%g2555525558%_ _%g2555625561%_))
                     '()
                     _%L25535%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2638526386%_
                                                 _%L25533%_
                                                 _%L25535%_
                                                 _%L25536%_)
                                                (let ((_%__splice2639126392%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2503525490%_
                                                        '0)))
                                                  (let ((_%tl2505825348%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2639126392%_
                                                            '1)))
                                                        (_%target2505625345%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2639126392%_
                                                            '0))))
                                                    (_%__match2644726448%_
                                                     _%e2503025473%_
                                                     _%hd2503125477%_
                                                     _%tl2503225480%_
                                                     _%e2503325483%_
                                                     _%hd2503425487%_
                                                     _%tl2503525490%_
                                                     _%__splice2639126392%_
                                                     _%target2505625345%_
                                                     _%tl2505825348%_))))))))))
                          (_%loop2503925509%_ _%target2503625493%_ '())))))
                (if (gx#stx-pair? _%__stx2638226383%_)
                    (let ((_%e2503025473%_ (gx#syntax-e _%__stx2638226383%_)))
                      (let ((_%tl2503225480%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2503025473%_)))
                            (_%hd2503125477%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2503025473%_))))
                        (if (gx#stx-pair? _%tl2503225480%_)
                            (let ((_%e2503325483%_
                                   (gx#syntax-e _%tl2503225480%_)))
                              (let ((_%tl2503525490%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2503325483%_)))
                                    (_%hd2503425487%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2503325483%_))))
                                (if (gx#stx-pair/null? _%tl2503525490%_)
                                    (if (let ((__tmp26854
                                               (gx#stx-length
                                                _%tl2503525490%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp26854 '1))
                                        (let ((_%__splice2638726388%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2503525490%_
                                                '1)))
                                          (let ((_%tl2503825496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2638726388%_
                                                    '1)))
                                                (_%target2503625493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2638726388%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2503825496%_)
                                                (let ((_%e2504525499%_
                                                       (gx#syntax-e
                                                        _%tl2503825496%_)))
                                                  (let ((_%tl2504725506%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2504525499%_)))
                                                        (_%hd2504625503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2504525499%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2504725506%_)
                                                        (_%__match2642926430%_
                                                         _%e2503025473%_
                                                         _%hd2503125477%_
                                                         _%tl2503225480%_
                                                         _%e2503325483%_
                                                         _%hd2503425487%_
                                                         _%tl2503525490%_
                                                         _%__splice2638726388%_
                                                         _%target2503625493%_
                                                         _%tl2503825496%_
                                                         _%e2504525499%_
                                                         _%hd2504625503%_
                                                         _%tl2504725506%_)
                                                        (let ((_%__splice2639126392%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl2503525490%_
                                                                '0)))
                                                          (let ((_%tl2505825348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2639126392%_ '1)))
                        (_%target2505625345%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2639126392%_ '0))))
                    (if (gx#stx-null? _%tl2505825348%_)
                        (_%__match2644926450%_
                         _%e2503025473%_
                         _%hd2503125477%_
                         _%tl2503225480%_
                         _%e2503325483%_
                         _%hd2503425487%_
                         _%tl2503525490%_
                         _%__splice2639126392%_
                         _%target2505625345%_
                         _%tl2505825348%_)
                        (if (gx#stx-pair? _%tl2503525490%_)
                            (let ((_%e2507425239%_
                                   (gx#syntax-e _%tl2503525490%_)))
                              (let ((_%tl2507625246%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2507425239%_)))
                                    (_%hd2507525243%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2507425239%_))))
                                (if (gx#stx-pair/null? _%tl2507625246%_)
                                    (let ((_%__splice2639526396%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2507625246%_
                                            '0)))
                                      (let ((_%tl2507925252%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2639526396%_
                                                '1)))
                                            (_%target2507725249%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2639526396%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2507925252%_)
                                            (_%__match2647526476%_
                                             _%e2503025473%_
                                             _%hd2503125477%_
                                             _%tl2503225480%_
                                             _%e2503325483%_
                                             _%hd2503425487%_
                                             _%tl2503525490%_
                                             _%e2507425239%_
                                             _%hd2507525243%_
                                             _%tl2507625246%_
                                             _%__splice2639526396%_
                                             _%target2507725249%_
                                             _%tl2507925252%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2502525112%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2502525112%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2502525112%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2639126392%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2503525490%_
                                                        '0)))
                                                  (let ((_%tl2505825348%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2639126392%_
                                                            '1)))
                                                        (_%target2505625345%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2639126392%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2505825348%_)
                                                        (_%__match2644926450%_
                                                         _%e2503025473%_
                                                         _%hd2503125477%_
                                                         _%tl2503225480%_
                                                         _%e2503325483%_
                                                         _%hd2503425487%_
                                                         _%tl2503525490%_
                                                         _%__splice2639126392%_
                                                         _%target2505625345%_
                                                         _%tl2505825348%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2503525490%_)
                                                            (let ((_%e2507425239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2503525490%_)))
                      (let ((_%tl2507625246%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2507425239%_)))
                            (_%hd2507525243%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2507425239%_))))
                        (if (gx#stx-pair/null? _%tl2507625246%_)
                            (let ((_%__splice2639526396%_
                                   (gx#syntax-split-splice->vector
                                    _%tl2507625246%_
                                    '0)))
                              (let ((_%tl2507925252%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2639526396%_
                                        '1)))
                                    (_%target2507725249%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2639526396%_
                                        '0))))
                                (if (gx#stx-null? _%tl2507925252%_)
                                    (_%__match2647526476%_
                                     _%e2503025473%_
                                     _%hd2503125477%_
                                     _%tl2503225480%_
                                     _%e2503325483%_
                                     _%hd2503425487%_
                                     _%tl2503525490%_
                                     _%e2507425239%_
                                     _%hd2507525243%_
                                     _%tl2507625246%_
                                     _%__splice2639526396%_
                                     _%target2507725249%_
                                     _%tl2507925252%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2502525112%_)))))
                            (let () (declare (not safe)) (_%g2502525112%_)))))
                    (let () (declare (not safe)) (_%g2502525112%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2639126392%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2503525490%_
                                                '0)))
                                          (let ((_%tl2505825348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2639126392%_
                                                    '1)))
                                                (_%target2505625345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2639126392%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2505825348%_)
                                                (_%__match2644926450%_
                                                 _%e2503025473%_
                                                 _%hd2503125477%_
                                                 _%tl2503225480%_
                                                 _%e2503325483%_
                                                 _%hd2503425487%_
                                                 _%tl2503525490%_
                                                 _%__splice2639126392%_
                                                 _%target2505625345%_
                                                 _%tl2505825348%_)
                                                (if (gx#stx-pair?
                                                     _%tl2503525490%_)
                                                    (let ((_%e2507425239%_
                                                           (gx#syntax-e
                                                            _%tl2503525490%_)))
                                                      (let ((_%tl2507625246%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2507425239%_)))
                    (_%hd2507525243%_
                     (let () (declare (not safe)) (##car _%e2507425239%_))))
                (if (gx#stx-pair/null? _%tl2507625246%_)
                    (let ((_%__splice2639526396%_
                           (gx#syntax-split-splice->vector
                            _%tl2507625246%_
                            '0)))
                      (let ((_%tl2507925252%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2639526396%_ '1)))
                            (_%target2507725249%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2639526396%_ '0))))
                        (if (gx#stx-null? _%tl2507925252%_)
                            (_%__match2647526476%_
                             _%e2503025473%_
                             _%hd2503125477%_
                             _%tl2503225480%_
                             _%e2503325483%_
                             _%hd2503425487%_
                             _%tl2503525490%_
                             _%e2507425239%_
                             _%hd2507525243%_
                             _%tl2507625246%_
                             _%__splice2639526396%_
                             _%target2507725249%_
                             _%tl2507925252%_)
                            (let () (declare (not safe)) (_%g2502525112%_)))))
                    (let () (declare (not safe)) (_%g2502525112%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2502525112%_)))))))
                                    (if (gx#stx-pair? _%tl2503525490%_)
                                        (let ((_%e2507425239%_
                                               (gx#syntax-e _%tl2503525490%_)))
                                          (let ((_%tl2507625246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2507425239%_)))
                                                (_%hd2507525243%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2507425239%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2507625246%_)
                                                (let ((_%__splice2639526396%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2507625246%_
                                                        '0)))
                                                  (let ((_%tl2507925252%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2639526396%_
                                                            '1)))
                                                        (_%target2507725249%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2639526396%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2507925252%_)
                                                        (_%__match2647526476%_
                                                         _%e2503025473%_
                                                         _%hd2503125477%_
                                                         _%tl2503225480%_
                                                         _%e2503325483%_
                                                         _%hd2503425487%_
                                                         _%tl2503525490%_
                                                         _%e2507425239%_
                                                         _%hd2507525243%_
                                                         _%tl2507625246%_
                                                         _%__splice2639526396%_
                                                         _%target2507725249%_
                                                         _%tl2507925252%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2502525112%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2502525112%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2502525112%_))))))
                            (let () (declare (not safe)) (_%g2502525112%_)))))
                    (let () (declare (not safe)) (_%g2502525112%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx25664%_)
        (let* ((_%__stx2650426505%_ _%$stx25664%_)
               (_%g2566925709%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2650426505%_))))
          (let ((_%__kont2650726508%_
                 (lambda (_%L25847%_ _%L25849%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%L25849%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L25847%_ '()))
                                     '())))))
                (_%__kont2650926510%_
                 (lambda (_%L25776%_ _%L25778%_ _%L25779%_ _%L25780%_)
                   (cons _%L25780%_
                         (cons (cons _%L25780%_
                                     (cons _%L25779%_ (cons _%L25778%_ '())))
                               (foldr (lambda (_%g2580125804%_ _%g2580225807%_)
                                        (cons _%g2580125804%_ _%g2580225807%_))
                                      '()
                                      _%L25776%_))))))
            (let* ((_%__match2655926560%_
                    (lambda (_%e2568625716%_
                             _%hd2568725720%_
                             _%tl2568825723%_
                             _%e2568925726%_
                             _%hd2569025730%_
                             _%tl2569125733%_
                             _%e2569225736%_
                             _%hd2569325740%_
                             _%tl2569425743%_
                             _%__splice2651126512%_
                             _%target2569525746%_
                             _%tl2569725749%_)
                      (letrec ((_%loop2569825752%_
                                (lambda (_%hd2569625756%_ _%rest2570225759%_)
                                  (if (gx#stx-pair? _%hd2569625756%_)
                                      (let ((_%e2569925762%_
                                             (gx#syntax-e _%hd2569625756%_)))
                                        (let ((_%lp-tl2570125769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2569925762%_)))
                                              (_%lp-hd2570025766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2569925762%_))))
                                          (_%loop2569825752%_
                                           _%lp-tl2570125769%_
                                           (cons _%lp-hd2570025766%_
                                                 _%rest2570225759%_))))
                                      (let ((_%rest2570325772%_
                                             (reverse _%rest2570225759%_)))
                                        (_%__kont2650926510%_
                                         _%rest2570325772%_
                                         _%hd2569325740%_
                                         _%hd2569025730%_
                                         _%hd2568725720%_))))))
                        (_%loop2569825752%_ _%target2569525746%_ '()))))
                   (_%__match2653326534%_
                    (lambda (_%e2567325817%_
                             _%hd2567425821%_
                             _%tl2567525824%_
                             _%e2567625827%_
                             _%hd2567725831%_
                             _%tl2567825834%_
                             _%e2567925837%_
                             _%hd2568025841%_
                             _%tl2568125844%_)
                      (let ((_%L25847%_ _%hd2568025841%_)
                            (_%L25849%_ _%hd2567725831%_))
                        (if (gx#identifier? _%L25847%_)
                            (_%__kont2650726508%_ _%L25847%_ _%L25849%_)
                            (if (gx#stx-pair/null? _%tl2568125844%_)
                                (let ((_%__splice2651126512%_
                                       (gx#syntax-split-splice->vector
                                        _%tl2568125844%_
                                        '0)))
                                  (let ((_%tl2569725749%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2651126512%_
                                            '1)))
                                        (_%target2569525746%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2651126512%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2569725749%_)
                                        (_%__match2655926560%_
                                         _%e2567325817%_
                                         _%hd2567425821%_
                                         _%tl2567525824%_
                                         _%e2567625827%_
                                         _%hd2567725831%_
                                         _%tl2567825834%_
                                         _%e2567925837%_
                                         _%hd2568025841%_
                                         _%tl2568125844%_
                                         _%__splice2651126512%_
                                         _%target2569525746%_
                                         _%tl2569725749%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2566925709%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2566925709%_))))))))
              (if (gx#stx-pair? _%__stx2650426505%_)
                  (let ((_%e2567325817%_ (gx#syntax-e _%__stx2650426505%_)))
                    (let ((_%tl2567525824%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2567325817%_)))
                          (_%hd2567425821%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2567325817%_))))
                      (if (gx#stx-pair? _%tl2567525824%_)
                          (let ((_%e2567625827%_
                                 (gx#syntax-e _%tl2567525824%_)))
                            (let ((_%tl2567825834%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2567625827%_)))
                                  (_%hd2567725831%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2567625827%_))))
                              (if (gx#stx-pair? _%tl2567825834%_)
                                  (let ((_%e2567925837%_
                                         (gx#syntax-e _%tl2567825834%_)))
                                    (let ((_%tl2568125844%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2567925837%_)))
                                          (_%hd2568025841%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2567925837%_))))
                                      (if (gx#stx-null? _%tl2568125844%_)
                                          (_%__match2653326534%_
                                           _%e2567325817%_
                                           _%hd2567425821%_
                                           _%tl2567525824%_
                                           _%e2567625827%_
                                           _%hd2567725831%_
                                           _%tl2567825834%_
                                           _%e2567925837%_
                                           _%hd2568025841%_
                                           _%tl2568125844%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2568125844%_)
                                              (let ((_%__splice2651126512%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl2568125844%_
                                                      '0)))
                                                (let ((_%tl2569725749%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2651126512%_
                                                          '1)))
                                                      (_%target2569525746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2651126512%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2569725749%_)
                                                      (_%__match2655926560%_
                                                       _%e2567325817%_
                                                       _%hd2567425821%_
                                                       _%tl2567525824%_
                                                       _%e2567625827%_
                                                       _%hd2567725831%_
                                                       _%tl2567825834%_
                                                       _%e2567925837%_
                                                       _%hd2568025841%_
                                                       _%tl2568125844%_
                                                       _%__splice2651126512%_
                                                       _%target2569525746%_
                                                       _%tl2569725749%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2566925709%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2566925709%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2566925709%_)))))
                          (let () (declare (not safe)) (_%g2566925709%_)))))
                  (let () (declare (not safe)) (_%g2566925709%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx25869%_)
        (let* ((_%__stx2656226563%_ _%$stx25869%_)
               (_%g2587425926%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2656226563%_))))
          (let ((_%__kont2656526566%_
                 (lambda (_%L26102%_ _%L26104%_ _%L26105%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%L26105%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26104%_ '()))
                                     (cons _%L26102%_ '()))))))
                (_%__kont2656726568%_
                 (lambda (_%L26013%_
                          _%L26015%_
                          _%L26016%_
                          _%L26017%_
                          _%L26018%_
                          _%L26019%_)
                   (cons _%L26019%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%L26018%_
                                           (cons _%L26017%_
                                                 (foldr (lambda (_%g2604626049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2604726052%_)
                  (cons _%g2604626049%_ _%g2604726052%_))
                '()
                _%L26016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L26015%_ (cons _%L26013%_ '())))))))
            (let* ((_%__match2663726638%_
                    (lambda (_%e2589725933%_
                             _%hd2589825937%_
                             _%tl2589925940%_
                             _%e2590025943%_
                             _%hd2590125947%_
                             _%tl2590225950%_
                             _%e2590325953%_
                             _%hd2590425957%_
                             _%tl2590525960%_
                             _%__splice2656926570%_
                             _%target2590625963%_
                             _%tl2590825966%_
                             _%e2591525969%_
                             _%hd2591625973%_
                             _%tl2591725976%_
                             _%e2591825979%_
                             _%hd2591925983%_
                             _%tl2592025986%_)
                      (letrec ((_%loop2590925989%_
                                (lambda (_%hd2590725993%_ _%path2591325996%_)
                                  (if (gx#stx-pair? _%hd2590725993%_)
                                      (let ((_%e2591025999%_
                                             (gx#syntax-e _%hd2590725993%_)))
                                        (let ((_%lp-tl2591226006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2591025999%_)))
                                              (_%lp-hd2591126003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2591025999%_))))
                                          (_%loop2590925989%_
                                           _%lp-tl2591226006%_
                                           (cons _%lp-hd2591126003%_
                                                 _%path2591325996%_))))
                                      (let ((_%path2591426009%_
                                             (reverse _%path2591325996%_)))
                                        (_%__kont2656726568%_
                                         _%hd2591925983%_
                                         _%hd2591625973%_
                                         _%path2591426009%_
                                         _%hd2590425957%_
                                         _%hd2590125947%_
                                         _%hd2589825937%_))))))
                        (_%loop2590925989%_ _%target2590625963%_ '()))))
                   (_%__match2659726598%_
                    (lambda (_%e2587926062%_
                             _%hd2588026066%_
                             _%tl2588126069%_
                             _%e2588226072%_
                             _%hd2588326076%_
                             _%tl2588426079%_
                             _%e2588526082%_
                             _%hd2588626086%_
                             _%tl2588726089%_
                             _%e2588826092%_
                             _%hd2588926096%_
                             _%tl2589026099%_)
                      (let ((_%L26102%_ _%hd2588926096%_)
                            (_%L26104%_ _%hd2588626086%_)
                            (_%L26105%_ _%hd2588326076%_))
                        (if (gx#identifier? _%L26104%_)
                            (_%__kont2656526566%_
                             _%L26102%_
                             _%L26104%_
                             _%L26105%_)
                            (if (gx#stx-pair/null? _%tl2588726089%_)
                                (if (let ((__tmp26855
                                           (gx#stx-length _%tl2588726089%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp26855 '2))
                                    (let ((_%__splice2656926570%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2588726089%_
                                            '2)))
                                      (let ((_%tl2590825966%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2656926570%_
                                                '1)))
                                            (_%target2590625963%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2656926570%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2590825966%_)
                                            (let ((_%e2591525969%_
                                                   (gx#syntax-e
                                                    _%tl2590825966%_)))
                                              (let ((_%tl2591725976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2591525969%_)))
                                                    (_%hd2591625973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2591525969%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2591725976%_)
                                                    (let ((_%e2591825979%_
                                                           (gx#syntax-e
                                                            _%tl2591725976%_)))
                                                      (let ((_%tl2592025986%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2591825979%_)))
                    (_%hd2591925983%_
                     (let () (declare (not safe)) (##car _%e2591825979%_))))
                (if (gx#stx-null? _%tl2592025986%_)
                    (_%__match2663726638%_
                     _%e2587926062%_
                     _%hd2588026066%_
                     _%tl2588126069%_
                     _%e2588226072%_
                     _%hd2588326076%_
                     _%tl2588426079%_
                     _%e2588526082%_
                     _%hd2588626086%_
                     _%tl2588726089%_
                     _%__splice2656926570%_
                     _%target2590625963%_
                     _%tl2590825966%_
                     _%e2591525969%_
                     _%hd2591625973%_
                     _%tl2591725976%_
                     _%e2591825979%_
                     _%hd2591925983%_
                     _%tl2592025986%_)
                    (let () (declare (not safe)) (_%g2587425926%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2587425926%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2587425926%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2587425926%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2587425926%_))))))))
              (if (gx#stx-pair? _%__stx2656226563%_)
                  (let ((_%e2587926062%_ (gx#syntax-e _%__stx2656226563%_)))
                    (let ((_%tl2588126069%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2587926062%_)))
                          (_%hd2588026066%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2587926062%_))))
                      (if (gx#stx-pair? _%tl2588126069%_)
                          (let ((_%e2588226072%_
                                 (gx#syntax-e _%tl2588126069%_)))
                            (let ((_%tl2588426079%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2588226072%_)))
                                  (_%hd2588326076%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2588226072%_))))
                              (if (gx#stx-pair? _%tl2588426079%_)
                                  (let ((_%e2588526082%_
                                         (gx#syntax-e _%tl2588426079%_)))
                                    (let ((_%tl2588726089%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2588526082%_)))
                                          (_%hd2588626086%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2588526082%_))))
                                      (if (gx#stx-pair? _%tl2588726089%_)
                                          (let ((_%e2588826092%_
                                                 (gx#syntax-e
                                                  _%tl2588726089%_)))
                                            (let ((_%tl2589026099%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2588826092%_)))
                                                  (_%hd2588926096%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2588826092%_))))
                                              (if (gx#stx-null?
                                                   _%tl2589026099%_)
                                                  (_%__match2659726598%_
                                                   _%e2587926062%_
                                                   _%hd2588026066%_
                                                   _%tl2588126069%_
                                                   _%e2588226072%_
                                                   _%hd2588326076%_
                                                   _%tl2588426079%_
                                                   _%e2588526082%_
                                                   _%hd2588626086%_
                                                   _%tl2588726089%_
                                                   _%e2588826092%_
                                                   _%hd2588926096%_
                                                   _%tl2589026099%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2588726089%_)
                                                      (if (let ((__tmp26856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2588726089%_)))
                    (declare (not safe))
                    (##fx>= __tmp26856 '2))
                  (let ((_%__splice2656926570%_
                         (gx#syntax-split-splice->vector _%tl2588726089%_ '2)))
                    (let ((_%tl2590825966%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2656926570%_ '1)))
                          (_%target2590625963%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2656926570%_ '0))))
                      (if (gx#stx-pair? _%tl2590825966%_)
                          (let ((_%e2591525969%_
                                 (gx#syntax-e _%tl2590825966%_)))
                            (let ((_%tl2591725976%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2591525969%_)))
                                  (_%hd2591625973%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2591525969%_))))
                              (if (gx#stx-pair? _%tl2591725976%_)
                                  (let ((_%e2591825979%_
                                         (gx#syntax-e _%tl2591725976%_)))
                                    (let ((_%tl2592025986%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2591825979%_)))
                                          (_%hd2591925983%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2591825979%_))))
                                      (if (gx#stx-null? _%tl2592025986%_)
                                          (_%__match2663726638%_
                                           _%e2587926062%_
                                           _%hd2588026066%_
                                           _%tl2588126069%_
                                           _%e2588226072%_
                                           _%hd2588326076%_
                                           _%tl2588426079%_
                                           _%e2588526082%_
                                           _%hd2588626086%_
                                           _%tl2588726089%_
                                           _%__splice2656926570%_
                                           _%target2590625963%_
                                           _%tl2590825966%_
                                           _%e2591525969%_
                                           _%hd2591625973%_
                                           _%tl2591725976%_
                                           _%e2591825979%_
                                           _%hd2591925983%_
                                           _%tl2592025986%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2587425926%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2587425926%_)))))
                          (let () (declare (not safe)) (_%g2587425926%_)))))
                  (let () (declare (not safe)) (_%g2587425926%_)))
              (let () (declare (not safe)) (_%g2587425926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2588726089%_)
                                              (if (let ((__tmp26857
                                                         (gx#stx-length
                                                          _%tl2588726089%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp26857 '2))
                                                  (let ((_%__splice2656926570%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl2588726089%_
                                                          '2)))
                                                    (let ((_%tl2590825966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2656926570%_
                                                              '1)))
                                                          (_%target2590625963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2656926570%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2590825966%_)
                                                          (let ((_%e2591525969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2590825966%_)))
                    (let ((_%tl2591725976%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2591525969%_)))
                          (_%hd2591625973%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2591525969%_))))
                      (if (gx#stx-pair? _%tl2591725976%_)
                          (let ((_%e2591825979%_
                                 (gx#syntax-e _%tl2591725976%_)))
                            (let ((_%tl2592025986%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2591825979%_)))
                                  (_%hd2591925983%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2591825979%_))))
                              (if (gx#stx-null? _%tl2592025986%_)
                                  (_%__match2663726638%_
                                   _%e2587926062%_
                                   _%hd2588026066%_
                                   _%tl2588126069%_
                                   _%e2588226072%_
                                   _%hd2588326076%_
                                   _%tl2588426079%_
                                   _%e2588526082%_
                                   _%hd2588626086%_
                                   _%tl2588726089%_
                                   _%__splice2656926570%_
                                   _%target2590625963%_
                                   _%tl2590825966%_
                                   _%e2591525969%_
                                   _%hd2591625973%_
                                   _%tl2591725976%_
                                   _%e2591825979%_
                                   _%hd2591925983%_
                                   _%tl2592025986%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2587425926%_)))))
                          (let () (declare (not safe)) (_%g2587425926%_)))))
                  (let () (declare (not safe)) (_%g2587425926%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2587425926%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2587425926%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2587425926%_)))))
                          (let () (declare (not safe)) (_%g2587425926%_)))))
                  (let () (declare (not safe)) (_%g2587425926%_))))))))))
