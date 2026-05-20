(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27702_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24851%_)
        (letrec ((_%body-opt?24854%_
                  (lambda (_%key24857%_)
                    (let ((__tmp27674 (gx#stx-e _%key24857%_)))
                      (declare (not safe))
                      (##memq __tmp27674
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
          (gx#stx-plist? _%stx24851%_ _%body-opt?24854%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22639%_
               _%id22641%_
               _%super-ref22642%_
               _%slots22643%_
               _%body22644%_)
        (letrec ((_%wrap22646%_
                  (lambda (_%e-stx24848%_)
                    (gx#stx-wrap-source
                     _%e-stx24848%_
                     (gx#stx-source _%stx22639%_))))
                 (_%make-id22648%_
                  (lambda _%args24845%_
                    (apply gx#stx-identifier _%id22641%_ _%args24845%_)))
                 (_%get-mixin-slots22649%_
                  (lambda (_%super24815%_ _%slots24817%_)
                    (letrec* ((_%tab24819%_ (make-hash-table-eq))
                              (_%dedup24821%_
                               (lambda (_%mixins24832%_)
                                 (let _%lp24835%_ ((_%rest24838%_
                                                    _%mixins24832%_)
                                                   (_%r24840%_ '()))
                                   (if (pair? _%rest24838%_)
                                       (let ((_%slot24842%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24838%_))))
                                         (if (hash-get
                                              _%tab24819%_
                                              _%slot24842%_)
                                             (_%lp24835%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24838%_))
                                              _%r24840%_)
                                             (begin
                                               (hash-put!
                                                _%tab24819%_
                                                _%slot24842%_
                                                '#t)
                                               (_%lp24835%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24838%_))
                                                (cons _%slot24842%_
                                                      _%r24840%_)))))
                                       (reverse _%r24840%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24823%_)
                         (hash-put! _%tab24819%_ (gx#stx-e _%slot24823%_) '#t))
                       _%slots24817%_)
                      (if (not _%super24815%_)
                          '()
                          (if (gx#identifier? _%super24815%_)
                              (_%dedup24821%_
                               (_%get-mixin-slots-r22650%_ _%super24815%_))
                              (_%dedup24821%_
                               (concatenate
                                (map _%get-mixin-slots-r22650%_
                                     _%super24815%_))))))))
                 (_%get-mixin-slots-r22650%_
                  (lambda (_%type-id24809%_)
                    (let ((_%info24812%_
                           (gx#syntax-local-value _%type-id24809%_)))
                      (let ((__tmp27676
                             (let ((__obj27427 _%info24812%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27427
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27427
                                      '6
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27427
                                    'slots))))
                            (__tmp27675
                             (concatenate
                              (map _%get-mixin-slots-r22650%_
                                   (let ((__obj27428 _%info24812%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27428
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27428
                                            '5
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27428
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27676 __tmp27675))))))
          (gx#check-duplicate-identifiers _%slots22643%_ _%stx22639%_)
          (let* ((_%name22652%_ (symbol->string (gx#stx-e _%id22641%_)))
                 (_%super22655%_
                  (map gx#syntax-local-value _%super-ref22642%_))
                 (_%struct?22658%_ (gx#stx-getq 'struct: _%body22644%_))
                 (_%g2266122669%_
                  (lambda (_%g2266222665%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2266222665%_)))
                 (_%g2266024805%_
                  (lambda (_%g2266222673%_)
                    ((lambda (_%g2266322676%_)
                       (let* ((_%g2269222700%_
                               (lambda (_%g2269322696%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2269322696%_)))
                              (_%g2269124801%_
                               (lambda (_%g2269322704%_)
                                 ((lambda (_%g2269422707%_)
                                    (let* ((_%g2272022728%_
                                            (lambda (_%g2272122724%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2272122724%_)))
                                           (_%g2271924797%_
                                            (lambda (_%g2272122732%_)
                                              ((lambda (_%g2272222735%_)
                                                 (let* ((_%g2274822756%_
                                                         (lambda (_%g2274922752%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2274922752%_)))
                                                        (_%g2274724793%_
                                                         (lambda (_%g2274922760%_)
                                                           ((lambda (_%g2275022763%_)
                                                              (let* ((_%g2277622784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2277722780%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2277722780%_)))
                             (_%g2277524789%_
                              (lambda (_%g2277722788%_)
                                ((lambda (_%g2277822791%_)
                                   (let* ((_%g2280422821%_
                                           (lambda (_%g2280522817%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2280522817%_)))
                                          (_%g2280324785%_
                                           (lambda (_%g2280522825%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2280522825%_)
                                                 (let ((_g27677_
                                                        (gx#syntax-split-splice
                                                         _%g2280522825%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27678_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27677_)
                          (##values-length _g27677_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27678_ 2)))
                   (error "Context expects 2 values" _g27678_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2280722828%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27677_
                                                               0)))
                                                           (_%tl2280922831%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27677_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2280922831%_)
                                                           (letrec ((_%loop2281022834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2280822838%_ _%slot2281422841%_)
                               (if (gx#stx-pair? _%hd2280822838%_)
                                   (let ((_%e2281122843%_
                                          (gx#syntax-e _%hd2280822838%_)))
                                     (let ((_%lp-hd2281222847%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2281122843%_)))
                                           (_%lp-tl2281322850%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2281122843%_))))
                                       (_%loop2281022834%_
                                        _%lp-tl2281322850%_
                                        (cons _%lp-hd2281222847%_
                                              _%slot2281422841%_))))
                                   (let ((_%slot2281522853%_
                                          (reverse _%slot2281422841%_)))
                                     ((lambda (_%g2280622856%_)
                                        (let* ((_%g2287322890%_
                                                (lambda (_%g2287422886%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2287422886%_)))
                                               (_%g2287224776%_
                                                (lambda (_%g2287422894%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2287422894%_)
                                                      (let ((_g27679_
                                                             (gx#syntax-split-splice
                                                              _%g2287422894%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27679_)
                               (##values-length _g27679_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27680_ 2)))
                        (error "Context expects 2 values" _g27680_)))
                  (let ((_%target2287622897%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27679_ 0)))
                        (_%tl2287822900%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27679_ 1))))
                    (if (gx#stx-null? _%tl2287822900%_)
                        (letrec ((_%loop2287922903%_
                                  (lambda (_%hd2287722907%_ _%getf2288322910%_)
                                    (if (gx#stx-pair? _%hd2287722907%_)
                                        (let ((_%e2288022912%_
                                               (gx#syntax-e _%hd2287722907%_)))
                                          (let ((_%lp-hd2288122916%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2288022912%_)))
                                                (_%lp-tl2288222919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2288022912%_))))
                                            (_%loop2287922903%_
                                             _%lp-tl2288222919%_
                                             (cons _%lp-hd2288122916%_
                                                   _%getf2288322910%_))))
                                        (let ((_%getf2288422922%_
                                               (reverse _%getf2288322910%_)))
                                          ((lambda (_%g2287522925%_)
                                             (let* ((_%g2294222959%_
                                                     (lambda (_%g2294322955%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2294322955%_)))
                                                    (_%g2294124767%_
                                                     (lambda (_%g2294322963%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2294322963%_)
                                                           (let ((_g27681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2294322963%_ '0)))
                     (begin
                       (let ((_g27682_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27681_)
                                    (##values-length _g27681_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27682_ 2)))
                             (error "Context expects 2 values" _g27682_)))
                       (let ((_%target2294522966%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27681_ 0)))
                             (_%tl2294722969%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27681_ 1))))
                         (if (gx#stx-null? _%tl2294722969%_)
                             (letrec ((_%loop2294822972%_
                                       (lambda (_%hd2294622976%_
                                                _%setf2295222979%_)
                                         (if (gx#stx-pair? _%hd2294622976%_)
                                             (let ((_%e2294922981%_
                                                    (gx#syntax-e
                                                     _%hd2294622976%_)))
                                               (let ((_%lp-hd2295022985%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2294922981%_)))
                                                     (_%lp-tl2295122988%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2294922981%_))))
                                                 (_%loop2294822972%_
                                                  _%lp-tl2295122988%_
                                                  (cons _%lp-hd2295022985%_
                                                        _%setf2295222979%_))))
                                             (let ((_%setf2295322991%_
                                                    (reverse _%setf2295222979%_)))
                                               ((lambda (_%g2294422994%_)
                                                  (let* ((_%mixin-slots23011%_
                                                          (_%get-mixin-slots22649%_
                                                           _%super-ref22642%_
                                                           _%slots22643%_))
                                                         (_%g2301423031%_
                                                          (lambda (_%g2301523027%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2301523027%_)))
                                                         (_%g2301324763%_
                                                          (lambda (_%g2301523035%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2301523035%_)
                        (let ((_g27683_
                               (gx#syntax-split-splice _%g2301523035%_ '0)))
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
                                  (error "Context expects 2 values" _g27684_)))
                            (let ((_%target2301723038%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27683_ 0)))
                                  (_%tl2301923041%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27683_ 1))))
                              (if (gx#stx-null? _%tl2301923041%_)
                                  (letrec ((_%loop2302023044%_
                                            (lambda (_%hd2301823048%_
                                                     _%mixin-slot2302423051%_)
                                              (if (gx#stx-pair?
                                                   _%hd2301823048%_)
                                                  (let ((_%e2302123053%_
                                                         (gx#syntax-e
                                                          _%hd2301823048%_)))
                                                    (let ((_%lp-hd2302223057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2302123053%_)))
                                                          (_%lp-tl2302323060%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2302123053%_))))
                                                      (_%loop2302023044%_
                                                       _%lp-tl2302323060%_
                                                       (cons _%lp-hd2302223057%_
                                                             _%mixin-slot2302423051%_))))
                                                  (let ((_%mixin-slot2302523063%_
                                                         (reverse _%mixin-slot2302423051%_)))
                                                    ((lambda (_%g2301623066%_)
                                                       (let* ((_%g2308423101%_
                                                               (lambda (_%g2308523097%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2308523097%_)))
                      (_%g2308324754%_
                       (lambda (_%g2308523105%_)
                         (if (gx#stx-pair/null? _%g2308523105%_)
                             (let ((_g27685_
                                    (gx#syntax-split-splice
                                     _%g2308523105%_
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
                                 (let ((_%target2308723108%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27685_ 0)))
                                       (_%tl2308923111%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27685_ 1))))
                                   (if (gx#stx-null? _%tl2308923111%_)
                                       (letrec ((_%loop2309023114%_
                                                 (lambda (_%hd2308823118%_
                                                          _%mixin-getf2309423121%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2308823118%_)
                                                       (let ((_%e2309123123%_
                                                              (gx#syntax-e
                                                               _%hd2308823118%_)))
                                                         (let ((_%lp-hd2309223127%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2309123123%_)))
                       (_%lp-tl2309323130%_
                        (let () (declare (not safe)) (##cdr _%e2309123123%_))))
                   (_%loop2309023114%_
                    _%lp-tl2309323130%_
                    (cons _%lp-hd2309223127%_ _%mixin-getf2309423121%_))))
               (let ((_%mixin-getf2309523133%_
                      (reverse _%mixin-getf2309423121%_)))
                 ((lambda (_%g2308623136%_)
                    (let* ((_%g2315323170%_
                            (lambda (_%g2315423166%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2315423166%_)))
                           (_%g2315224745%_
                            (lambda (_%g2315423174%_)
                              (if (gx#stx-pair/null? _%g2315423174%_)
                                  (let ((_g27687_
                                         (gx#syntax-split-splice
                                          _%g2315423174%_
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
                                      (let ((_%target2315623177%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27687_ 0)))
                                            (_%tl2315823180%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27687_ 1))))
                                        (if (gx#stx-null? _%tl2315823180%_)
                                            (letrec ((_%loop2315923183%_
                                                      (lambda (_%hd2315723187%_
                                                               _%mixin-setf2316323190%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2315723187%_)
                                                            (let ((_%e2316023192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2315723187%_)))
                      (let ((_%lp-hd2316123196%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2316023192%_)))
                            (_%lp-tl2316223199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2316023192%_))))
                        (_%loop2315923183%_
                         _%lp-tl2316223199%_
                         (cons _%lp-hd2316123196%_ _%mixin-setf2316323190%_))))
                    (let ((_%mixin-setf2316423202%_
                           (reverse _%mixin-setf2316323190%_)))
                      ((lambda (_%g2315523205%_)
                         (let* ((_%g2322223239%_
                                 (lambda (_%g2322323235%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2322323235%_)))
                                (_%g2322124728%_
                                 (lambda (_%g2322323243%_)
                                   (if (gx#stx-pair/null? _%g2322323243%_)
                                       (let ((_g27689_
                                              (gx#syntax-split-splice
                                               _%g2322323243%_
                                               '0)))
                                         (begin
                                           (let ((_g27690_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27689_)
                                                        (##values-length
                                                         _g27689_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27690_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27690_)))
                                           (let ((_%target2322523246%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27689_ 0)))
                                                 (_%tl2322723249%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27689_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2322723249%_)
                                                 (letrec ((_%loop2322823252%_
                                                           (lambda (_%hd2322623256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2323223259%_)
                     (if (gx#stx-pair? _%hd2322623256%_)
                         (let ((_%e2322923261%_
                                (gx#syntax-e _%hd2322623256%_)))
                           (let ((_%lp-hd2323023265%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2322923261%_)))
                                 (_%lp-tl2323123268%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2322923261%_))))
                             (_%loop2322823252%_
                              _%lp-tl2323123268%_
                              (cons _%lp-hd2323023265%_ _%ugetf2323223259%_))))
                         (let ((_%ugetf2323323271%_
                                (reverse _%ugetf2323223259%_)))
                           ((lambda (_%g2322423274%_)
                              (let* ((_%g2329123308%_
                                      (lambda (_%g2329223304%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2329223304%_)))
                                     (_%g2329024711%_
                                      (lambda (_%g2329223312%_)
                                        (if (gx#stx-pair/null? _%g2329223312%_)
                                            (let ((_g27691_
                                                   (gx#syntax-split-splice
                                                    _%g2329223312%_
                                                    '0)))
                                              (begin
                                                (let ((_g27692_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27691_)
                                                             (##values-length
                                                              _g27691_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27692_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2329423315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27691_
                                                          0)))
                                                      (_%tl2329623318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27691_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2329623318%_)
                                                      (letrec ((_%loop2329723321%_
                                                                (lambda (_%hd2329523325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2330123328%_)
                          (if (gx#stx-pair? _%hd2329523325%_)
                              (let ((_%e2329823330%_
                                     (gx#syntax-e _%hd2329523325%_)))
                                (let ((_%lp-hd2329923334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2329823330%_)))
                                      (_%lp-tl2330023337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2329823330%_))))
                                  (_%loop2329723321%_
                                   _%lp-tl2330023337%_
                                   (cons _%lp-hd2329923334%_
                                         _%usetf2330123328%_))))
                              (let ((_%usetf2330223340%_
                                     (reverse _%usetf2330123328%_)))
                                ((lambda (_%g2329323343%_)
                                   (let* ((_%g2336023377%_
                                           (lambda (_%g2336123373%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2336123373%_)))
                                          (_%g2335924694%_
                                           (lambda (_%g2336123381%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2336123381%_)
                                                 (let ((_g27693_
                                                        (gx#syntax-split-splice
                                                         _%g2336123381%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27694_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27693_)
                          (##values-length _g27693_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27694_ 2)))
                   (error "Context expects 2 values" _g27694_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2336323384%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27693_
                                                               0)))
                                                           (_%tl2336523387%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27693_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2336523387%_)
                                                           (letrec ((_%loop2336623390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2336423394%_
                                      _%mixin-ugetf2337023397%_)
                               (if (gx#stx-pair? _%hd2336423394%_)
                                   (let ((_%e2336723399%_
                                          (gx#syntax-e _%hd2336423394%_)))
                                     (let ((_%lp-hd2336823403%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2336723399%_)))
                                           (_%lp-tl2336923406%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2336723399%_))))
                                       (_%loop2336623390%_
                                        _%lp-tl2336923406%_
                                        (cons _%lp-hd2336823403%_
                                              _%mixin-ugetf2337023397%_))))
                                   (let ((_%mixin-ugetf2337123409%_
                                          (reverse _%mixin-ugetf2337023397%_)))
                                     ((lambda (_%g2336223412%_)
                                        (let* ((_%g2342923446%_
                                                (lambda (_%g2343023442%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2343023442%_)))
                                               (_%g2342824677%_
                                                (lambda (_%g2343023450%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2343023450%_)
                                                      (let ((_g27695_
                                                             (gx#syntax-split-splice
                                                              _%g2343023450%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27695_)
                               (##values-length _g27695_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27696_ 2)))
                        (error "Context expects 2 values" _g27696_)))
                  (let ((_%target2343223453%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27695_ 0)))
                        (_%tl2343423456%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27695_ 1))))
                    (if (gx#stx-null? _%tl2343423456%_)
                        (letrec ((_%loop2343523459%_
                                  (lambda (_%hd2343323463%_
                                           _%mixin-usetf2343923466%_)
                                    (if (gx#stx-pair? _%hd2343323463%_)
                                        (let ((_%e2343623468%_
                                               (gx#syntax-e _%hd2343323463%_)))
                                          (let ((_%lp-hd2343723472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2343623468%_)))
                                                (_%lp-tl2343823475%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2343623468%_))))
                                            (_%loop2343523459%_
                                             _%lp-tl2343823475%_
                                             (cons _%lp-hd2343723472%_
                                                   _%mixin-usetf2343923466%_))))
                                        (let ((_%mixin-usetf2344023478%_
                                               (reverse _%mixin-usetf2343923466%_)))
                                          ((lambda (_%g2343123481%_)
                                             (let* ((_%type-slots23516%_
                                                     (if (gx#stx-null?
                                                          _%slots22643%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2294422994%_
                                _%g2287522925%_
                                _%g2280622856%_)
                               (foldr (lambda (_%g2350123506%_
                                               _%g2350223509%_
                                               _%g2350323511%_
                                               _%g2350423513%_)
                                        (cons (cons _%g2350323511%_
                                                    (cons _%g2350223509%_
                                                          (cons _%g2350123506%_
                                                                '())))
                                              _%g2350423513%_))
                                      '()
                                      _%g2294422994%_
                                      _%g2287522925%_
                                      _%g2280622856%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23537%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots23011%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2315523205%_
                                _%g2308623136%_
                                _%g2301623066%_)
                               (foldr (lambda (_%g2352223527%_
                                               _%g2352323530%_
                                               _%g2352423532%_
                                               _%g2352523534%_)
                                        (cons (cons _%g2352423532%_
                                                    (cons _%g2352323530%_
                                                          (cons _%g2352223527%_
                                                                '())))
                                              _%g2352523534%_))
                                      '()
                                      _%g2315523205%_
                                      _%g2308623136%_
                                      _%g2301623066%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23544%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22644%_)))
                           (if _%$e23540%_ _%$e23540%_ _%id22641%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23551%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22644%_)))
                           (if _%$e23547%_
                               _%$e23547%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%g2266322676%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23565%_
                                                     (let ((_%$e23561%_
                                                            (let ((_%e2355323555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22644%_)))
                      (if _%e2355323555%_
                          (let ((_%e23558%_ _%e2355323555%_))
                            (cons 'constructor: (cons _%e23558%_ '())))
                          '#f))))
               (if _%$e23561%_ _%$e23561%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23606%_
                                                     (let* ((_%properties23568%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22644%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23583%_
                     (let ((_%$e23571%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22644%_))))
                       (if _%$e23571%_
                           ((lambda (_%print23575%_)
                              (let ((_%print23578%_
                                     (if (eq? _%print23575%_ '#t)
                                         _%slots22643%_
                                         _%print23575%_)))
                                (cons (cons 'print: _%print23578%_)
                                      _%properties23568%_)))
                            _%$e23571%_)
                           _%properties23568%_)))
                    (_%properties23598%_
                     (let ((_%$e23586%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22644%_))))
                       (if _%$e23586%_
                           ((lambda (_%equal23590%_)
                              (let ((_%equal23593%_
                                     (if (eq? _%equal23590%_ '#t)
                                         _%slots22643%_
                                         _%equal23590%_)))
                                (cons (cons 'equal: _%equal23593%_)
                                      _%properties23583%_)))
                            _%$e23586%_)
                           _%properties23583%_)))
                    (_%properties23601%_
                     (if (gx#stx-e (gx#stx-getq 'acyclic: _%body22644%_))
                         (cons (cons 'acyclic: '#t) _%properties23598%_)
                         _%properties23598%_)))
               _%properties23601%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23647%_
                                                     (if (null? _%properties23606%_)
                                                         '()
                                                         (let* ((_%g2360923617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2361023613%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2361023613%_)))
                        (_%g2360823643%_
                         (lambda (_%g2361023621%_)
                           ((lambda (_%g2361123624%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%g2361123624%_ '()))
                                          '())))
                            _%g2361023621%_))))
                   (_%g2360823643%_ _%properties23606%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23659%_
                                                     (let ((_%$e23650%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22644%_)))
                                                       (if _%$e23650%_
                                                           ((lambda (_%metaclass23654%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23654%_)
                          _%metaclass23654%_
                          '#f))
                    _%$e23650%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23662%_
                                                     (if _%metaclass23659%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23665%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22644%_)))
                                                    (_%type-struct23668%_
                                                     (cons 'struct:
                                                           (cons _%struct?22658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23671%_
                                                     (cons 'final:
                                                           (cons _%final?23665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2367423691%_
                                                     (lambda (_%g2367523687%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2367523687%_)))
                                                    (_%g2367324673%_
                                                     (lambda (_%g2367523695%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2367523695%_)
                                                           (let ((_g27697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2367523695%_ '0)))
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
                             (error "Context expects 2 values" _g27698_)))
                       (let ((_%target2367723698%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27697_ 0)))
                             (_%tl2367923701%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27697_ 1))))
                         (if (gx#stx-null? _%tl2367923701%_)
                             (letrec ((_%loop2368023704%_
                                       (lambda (_%hd2367823708%_
                                                _%type-body2368423711%_)
                                         (if (gx#stx-pair? _%hd2367823708%_)
                                             (let ((_%e2368123713%_
                                                    (gx#syntax-e
                                                     _%hd2367823708%_)))
                                               (let ((_%lp-hd2368223717%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2368123713%_)))
                                                     (_%lp-tl2368323720%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2368123713%_))))
                                                 (_%loop2368023704%_
                                                  _%lp-tl2368323720%_
                                                  (cons _%lp-hd2368223717%_
                                                        _%type-body2368423711%_))))
                                             (let ((_%type-body2368523723%_
                                                    (reverse _%type-body2368423711%_)))
                                               ((lambda (_%g2367623726%_)
                                                  (let* ((_%g2374723755%_
                                                          (lambda (_%g2374823751%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2374823751%_)))
                                                         (_%g2374624661%_
                                                          (lambda (_%g2374823759%_)
                                                            ((lambda (_%g2374923762%_)
                                                               (let* ((_%g2377523783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2377623779%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2377623779%_)))
                              (_%g2377424590%_
                               (lambda (_%g2377623787%_)
                                 ((lambda (_%g2377723790%_)
                                    (let* ((_%g2380323811%_
                                            (lambda (_%g2380423807%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2380423807%_)))
                                           (_%g2380224555%_
                                            (lambda (_%g2380423815%_)
                                              ((lambda (_%g2380523818%_)
                                                 (let* ((_%g2383123839%_
                                                         (lambda (_%g2383223835%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2383223835%_)))
                                                        (_%g2383024471%_
                                                         (lambda (_%g2383223843%_)
                                                           ((lambda (_%g2383323846%_)
                                                              (let* ((_%g2385923867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2386023863%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2386023863%_)))
                             (_%g2385824459%_
                              (lambda (_%g2386023871%_)
                                ((lambda (_%g2386123874%_)
                                   (let* ((_%g2388723895%_
                                           (lambda (_%g2388823891%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2388823891%_)))
                                          (_%g2388624455%_
                                           (lambda (_%g2388823899%_)
                                             ((lambda (_%g2388923902%_)
                                                (let* ((_%g2391523923%_
                                                        (lambda (_%g2391623919%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2391623919%_)))
                                                       (_%g2391424451%_
                                                        (lambda (_%g2391623927%_)
                                                          ((lambda (_%g2391723930%_)
                                                             (let* ((_%g2394323951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2394423947%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2394423947%_)))
                            (_%g2394224416%_
                             (lambda (_%g2394423955%_)
                               ((lambda (_%g2394523958%_)
                                  (let* ((_%g2397123979%_
                                          (lambda (_%g2397223975%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2397223975%_)))
                                         (_%g2397024345%_
                                          (lambda (_%g2397223983%_)
                                            ((lambda (_%g2397323986%_)
                                               (let* ((_%g2399924007%_
                                                       (lambda (_%g2400024003%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2400024003%_)))
                                                      (_%g2399824341%_
                                                       (lambda (_%g2400024011%_)
                                                         ((lambda (_%g2400124014%_)
                                                            (let* ((_%g2402724035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2402824031%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2402824031%_)))
                           (_%g2402624337%_
                            (lambda (_%g2402824039%_)
                              ((lambda (_%g2402924042%_)
                                 (let* ((_%g2405524063%_
                                         (lambda (_%g2405624059%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2405624059%_)))
                                        (_%g2405424333%_
                                         (lambda (_%g2405624067%_)
                                           ((lambda (_%g2405724070%_)
                                              (let* ((_%g2408324091%_
                                                      (lambda (_%g2408424087%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2408424087%_)))
                                                     (_%g2408224307%_
                                                      (lambda (_%g2408424095%_)
                                                        ((lambda (_%g2408524098%_)
                                                           (let* ((_%g2411124119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2411224115%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2411224115%_)))
                          (_%g2411024281%_
                           (lambda (_%g2411224123%_)
                             ((lambda (_%g2411324126%_)
                                (let* ((_%g2413924147%_
                                        (lambda (_%g2414024143%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2414024143%_)))
                                       (_%g2413824255%_
                                        (lambda (_%g2414024151%_)
                                          ((lambda (_%g2414124154%_)
                                             (let* ((_%g2416724175%_
                                                     (lambda (_%g2416824171%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2416824171%_)))
                                                    (_%g2416624229%_
                                                     (lambda (_%g2416824179%_)
                                                       ((lambda (_%g2416924182%_)
                                                          (let* ((_%g2419524203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2419624199%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2419624199%_)))
                         (_%g2419424225%_
                          (lambda (_%g2419624207%_)
                            ((lambda (_%g2419724210%_)
                               (_%wrap22646%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%g2374923762%_
                                            (cons _%g2419724210%_ '())))))
                             _%g2419624207%_))))
                    (_%g2419424225%_
                     (_%wrap22646%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%g2266322676%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%g2377723790%_
                                                          (cons 'name:
                                                                (cons _%g2380523818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%g2386123874%_
                                          (cons 'super:
                                                (cons _%g2383323846%_
                                                      (cons 'struct?:
                                                            (cons _%g2388923902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%g2391723930%_
                                      (cons 'metaclass:
                                            (cons _%g2394523958%_
                                                  (cons 'constructor-method:
                                                        (cons _%g2397323986%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g2400124014%_
                                  (cons 'constructor:
                                        (cons _%g2402924042%_
                                              (cons 'predicate:
                                                    (cons _%g2405724070%_
                                                          (cons 'accessors:
                                                                (cons _%g2408524098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%g2411324126%_
                                          (cons 'unchecked-accessors:
                                                (cons _%g2414124154%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%g2416924182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2416824179%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2416624229%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%g2329323343%_
                                                         _%g2280622856%_)
                                                        (foldr (lambda (_%g2423224239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2423324242%_
                                _%g2423424244%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2423324242%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2423224239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2423424244%_))
                       (begin
                         (gx#syntax-check-splice-targets
                          _%g2343123481%_
                          _%g2301623066%_)
                         (foldr (lambda (_%g2423524247%_
                                         _%g2423624250%_
                                         _%g2423724252%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2423624250%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2423524247%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2423724252%_))
                                '()
                                _%g2343123481%_
                                _%g2301623066%_))
                       _%g2329323343%_
                       _%g2280622856%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2414024151%_))))
                                  (_%g2413824255%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%g2322423274%_
                                            _%g2280622856%_)
                                           (foldr (lambda (_%g2425824265%_
                                                           _%g2425924268%_
                                                           _%g2426024270%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2425924268%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2425824265%_ '()))
                                          '()))))
                  _%g2426024270%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g2336223412%_
                                                     _%g2301623066%_)
                                                    (foldr (lambda (_%g2426124273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2426224276%_
                            _%g2426324278%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2426224276%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2426124273%_
                                                               '()))
                                                   '()))))
                           _%g2426324278%_))
                   '()
                   _%g2336223412%_
                   _%g2301623066%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2322423274%_
                                                  _%g2280622856%_))))))
                              _%g2411224123%_))))
                     (_%g2411024281%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%g2294422994%_
                               _%g2280622856%_)
                              (foldr (lambda (_%g2428424291%_
                                              _%g2428524294%_
                                              _%g2428624296%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2428524294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2428424291%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2428624296%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%g2315523205%_
                                        _%g2301623066%_)
                                       (foldr (lambda (_%g2428724299%_
                                                       _%g2428824302%_
                                                       _%g2428924304%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2428824302%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2428724299%_ '()))
                                      '()))))
              _%g2428924304%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%g2315523205%_
                                              _%g2301623066%_))
                                     _%g2294422994%_
                                     _%g2280622856%_))))))
                 _%g2408424095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2408224307%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%g2287522925%_
                                                          _%g2280622856%_)
                                                         (foldr (lambda (_%g2431024317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2431124320%_
                                 _%g2431224322%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2431124320%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2431024317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2431224322%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%g2308623136%_
                           _%g2301623066%_)
                          (foldr (lambda (_%g2431324325%_
                                          _%g2431424328%_
                                          _%g2431524330%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2431424328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2431324325%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2431524330%_))
                                 '()
                                 _%g2308623136%_
                                 _%g2301623066%_))
                        _%g2287522925%_
                        _%g2280622856%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2405624067%_))))
                                   (_%g2405424333%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g2275022763%_ '())))))
                               _%g2402824039%_))))
                      (_%g2402624337%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%g2272222735%_ '())))))
                  _%g2400024011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2399824341%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%g2269422707%_
                                                              '())))))
                                             _%g2397223983%_))))
                                    (_%g2397024345%_
                                     (if (null? _%type-constructor23565%_)
                                         '#f
                                         (let* ((_%g2434924364%_
                                                 (lambda (_%g2435024360%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2435024360%_)))
                                                (_%g2434824412%_
                                                 (lambda (_%g2435024368%_)
                                                   (if (gx#stx-pair?
                                                        _%g2435024368%_)
                                                       (let ((_%e2435224371%_
                                                              (gx#syntax-e
                                                               _%g2435024368%_)))
                                                         (let ((_%hd2435324375%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2435224371%_)))
                       (_%tl2435424378%_
                        (let () (declare (not safe)) (##cdr _%e2435224371%_))))
                   (if (gx#stx-datum? _%hd2435324375%_)
                       (let ((_%e2435524381%_ (gx#stx-e _%hd2435324375%_)))
                         (if (equal? _%e2435524381%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2435424378%_)
                                 (let ((_%e2435624385%_
                                        (gx#syntax-e _%tl2435424378%_)))
                                   (let ((_%hd2435724389%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2435624385%_)))
                                         (_%tl2435824392%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2435624385%_))))
                                     (if (gx#stx-null? _%tl2435824392%_)
                                         ((lambda (_%g2435124395%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2435124395%_ '())))
                                          _%hd2435724389%_)
                                         (_%g2434924364%_ _%g2435024368%_))))
                                 (_%g2434924364%_ _%g2435024368%_))
                             (_%g2434924364%_ _%g2435024368%_)))
                       (_%g2434924364%_ _%g2435024368%_))))
               (_%g2434924364%_ _%g2435024368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2434824412%_
                                            _%type-constructor23565%_))))))
                                _%g2394423955%_))))
                       (_%g2394224416%_
                        (if _%metaclass23659%_
                            (let* ((_%g2442024428%_
                                    (lambda (_%g2442124424%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2442124424%_)))
                                   (_%g2441924447%_
                                    (lambda (_%g2442124432%_)
                                      ((lambda (_%g2442224435%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%g2442224435%_ '())))
                                       _%g2442124432%_))))
                              (_%g2441924447%_ _%metaclass23659%_))
                            '#f))))
                   _%g2391623927%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2391424451%_
                                                   _%final?23665%_)))
                                              _%g2388823899%_))))
                                     (_%g2388624455%_ _%struct?22658%_)))
                                 _%g2386023871%_))))
                        (_%g2385824459%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2446224465%_
                                                     _%g2446324468%_)
                                              (cons _%g2446224465%_
                                                    _%g2446324468%_))
                                            '()
                                            _%g2280622856%_)
                                     '())))))
                    _%g2383223843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2383024471%_
                                                    (let* ((_%g2447524492%_
                                                            (lambda (_%g2447624488%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2447624488%_)))
                                                           (_%g2447424551%_
                                                            (lambda (_%g2447624496%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2447624496%_)
                          (let ((_g27699_
                                 (gx#syntax-split-splice _%g2447624496%_ '0)))
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
                              (let ((_%target2447824499%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27699_ 0)))
                                    (_%tl2448024502%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27699_ 1))))
                                (if (gx#stx-null? _%tl2448024502%_)
                                    (letrec ((_%loop2448124505%_
                                              (lambda (_%hd2447924509%_
                                                       _%super-id2448524512%_)
                                                (if (gx#stx-pair?
                                                     _%hd2447924509%_)
                                                    (let ((_%e2448224514%_
                                                           (gx#syntax-e
                                                            _%hd2447924509%_)))
                                                      (let ((_%lp-hd2448324518%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2448224514%_)))
                    (_%lp-tl2448424521%_
                     (let () (declare (not safe)) (##cdr _%e2448224514%_))))
                (_%loop2448124505%_
                 _%lp-tl2448424521%_
                 (cons _%lp-hd2448324518%_ _%super-id2448524512%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2448624524%_
                                                           (reverse _%super-id2448524512%_)))
                                                      ((lambda (_%g2447724527%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2454224545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2454324548%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2454224545%_ '()))
                                      _%g2454324548%_))
                              '()
                              _%g2447724527%_)))
               _%super-id2448624524%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2448124505%_
                                       _%target2447824499%_
                                       '()))
                                    (_%g2447524492%_ _%g2447624496%_)))))
                          (_%g2447524492%_ _%g2447624496%_)))))
              (_%g2447424551%_ _%super-ref22642%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2380423815%_))))
                                      (_%g2380224555%_
                                       (let* ((_%g2455924567%_
                                               (lambda (_%g2456024563%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2456024563%_)))
                                              (_%g2455824586%_
                                               (lambda (_%g2456024571%_)
                                                 ((lambda (_%g2456124574%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2456124574%_
                                                                '())))
                                                  _%g2456024571%_))))
                                         (_%g2455824586%_
                                          (cadr _%type-name23544%_))))))
                                  _%g2377623787%_))))
                         (_%g2377424590%_
                          (let* ((_%g2459424609%_
                                  (lambda (_%g2459524605%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2459524605%_)))
                                 (_%g2459324657%_
                                  (lambda (_%g2459524613%_)
                                    (if (gx#stx-pair? _%g2459524613%_)
                                        (let ((_%e2459724616%_
                                               (gx#syntax-e _%g2459524613%_)))
                                          (let ((_%hd2459824620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2459724616%_)))
                                                (_%tl2459924623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2459724616%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2459824620%_)
                                                (let ((_%e2460024626%_
                                                       (gx#stx-e
                                                        _%hd2459824620%_)))
                                                  (if (equal? _%e2460024626%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2459924623%_)
                                                          (let ((_%e2460124630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2459924623%_)))
                    (let ((_%hd2460224634%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2460124630%_)))
                          (_%tl2460324637%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2460124630%_))))
                      (if (gx#stx-null? _%tl2460324637%_)
                          ((lambda (_%g2459624640%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%g2459624640%_ '())))
                           _%hd2460224634%_)
                          (_%g2459424609%_ _%g2459524613%_))))
                  (_%g2459424609%_ _%g2459524613%_))
              (_%g2459424609%_ _%g2459524613%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2459424609%_
                                                 _%g2459524613%_))))
                                        (_%g2459424609%_ _%g2459524613%_)))))
                            (_%g2459324657%_ _%type-id23551%_)))))
                     _%g2374823759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2374624661%_
                                                     (_%wrap22646%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%g2269422707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g2277822791%_
                                (cons _%g2272222735%_
                                      (cons _%g2275022763%_
                                            (foldr (lambda (_%g2466424667%_
                                                            _%g2466524670%_)
                                                     (cons _%g2466424667%_
                                                           _%g2466524670%_))
                                                   '()
                                                   _%g2367623726%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2368523723%_))))))
                               (_%loop2368023704%_ _%target2367723698%_ '()))
                             (_%g2367423691%_ _%g2367523695%_)))))
                   (_%g2367423691%_ _%g2367523695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2367324673%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23537%_
                                                                _%type-slots23516%_)
                                                         _%type-properties23647%_)
                                                  _%type-metaclass23662%_)
                                           _%type-final23671%_)
                                    _%type-struct23668%_)
                             _%type-constructor23565%_)
                      _%type-name23544%_)
               _%type-id23551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2344023478%_))))))
                          (_%loop2343523459%_ _%target2343223453%_ '()))
                        (_%g2342923446%_ _%g2343023450%_)))))
              (_%g2342923446%_ _%g2343023450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2342824677%_
                                           (gx#stx-map
                                            (lambda (_%g2468024682%_)
                                              (_%make-id22648%_
                                               '"&"
                                               _%g2468024682%_))
                                            (foldr (lambda (_%g2468524688%_
                                                            _%g2468624691%_)
                                                     (cons _%g2468524688%_
                                                           _%g2468624691%_))
                                                   '()
                                                   _%g2315523205%_)))))
                                      _%mixin-ugetf2337123409%_))))))
                     (_%loop2336623390%_ _%target2336323384%_ '()))
                   (_%g2336023377%_ _%g2336123381%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2336023377%_
                                                  _%g2336123381%_)))))
                                     (_%g2335924694%_
                                      (gx#stx-map
                                       (lambda (_%g2469724699%_)
                                         (_%make-id22648%_
                                          '"&"
                                          _%g2469724699%_))
                                       (foldr (lambda (_%g2470224705%_
                                                       _%g2470324708%_)
                                                (cons _%g2470224705%_
                                                      _%g2470324708%_))
                                              '()
                                              _%g2308623136%_)))))
                                 _%usetf2330223340%_))))))
                (_%loop2329723321%_ _%target2329423315%_ '()))
              (_%g2329123308%_ _%g2329223312%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2329123308%_
                                             _%g2329223312%_)))))
                                (_%g2329024711%_
                                 (gx#stx-map
                                  (lambda (_%g2471424716%_)
                                    (_%make-id22648%_ '"&" _%g2471424716%_))
                                  (foldr (lambda (_%g2471924722%_
                                                  _%g2472024725%_)
                                           (cons _%g2471924722%_
                                                 _%g2472024725%_))
                                         '()
                                         _%g2294422994%_)))))
                            _%ugetf2323323271%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2322823252%_
                                                    _%target2322523246%_
                                                    '()))
                                                 (_%g2322223239%_
                                                  _%g2322323243%_)))))
                                       (_%g2322223239%_ _%g2322323243%_)))))
                           (_%g2322124728%_
                            (gx#stx-map
                             (lambda (_%g2473124733%_)
                               (_%make-id22648%_ '"&" _%g2473124733%_))
                             (foldr (lambda (_%g2473624739%_ _%g2473724742%_)
                                      (cons _%g2473624739%_ _%g2473724742%_))
                                    '()
                                    _%g2287522925%_)))))
                       _%mixin-setf2316423202%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2315923183%_
                                               _%target2315623177%_
                                               '()))
                                            (_%g2315323170%_
                                             _%g2315423174%_)))))
                                  (_%g2315323170%_ _%g2315423174%_)))))
                      (_%g2315224745%_
                       (gx#stx-map
                        (lambda (_%g2474824750%_)
                          (_%make-id22648%_
                           _%name22652%_
                           '"-"
                           _%g2474824750%_
                           '"-set!"))
                        _%mixin-slots23011%_))))
                  _%mixin-getf2309523133%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2309023114%_
                                          _%target2308723108%_
                                          '()))
                                       (_%g2308423101%_ _%g2308523105%_)))))
                             (_%g2308423101%_ _%g2308523105%_)))))
                 (_%g2308324754%_
                  (gx#stx-map
                   (lambda (_%g2475724759%_)
                     (_%make-id22648%_ _%name22652%_ '"-" _%g2475724759%_))
                   _%mixin-slots23011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2302523063%_))))))
                                    (_%loop2302023044%_
                                     _%target2301723038%_
                                     '()))
                                  (_%g2301423031%_ _%g2301523035%_)))))
                        (_%g2301423031%_ _%g2301523035%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2301324763%_
                                                     _%mixin-slots23011%_)))
                                                _%setf2295322991%_))))))
                               (_%loop2294822972%_ _%target2294522966%_ '()))
                             (_%g2294222959%_ _%g2294322963%_)))))
                   (_%g2294222959%_ _%g2294322963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2294124767%_
                                                (gx#stx-map
                                                 (lambda (_%g2477024772%_)
                                                   (_%make-id22648%_
                                                    _%name22652%_
                                                    '"-"
                                                    _%g2477024772%_
                                                    '"-set!"))
                                                 _%slots22643%_))))
                                           _%getf2288422922%_))))))
                          (_%loop2287922903%_ _%target2287622897%_ '()))
                        (_%g2287322890%_ _%g2287422894%_)))))
              (_%g2287322890%_ _%g2287422894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2287224776%_
                                           (gx#stx-map
                                            (lambda (_%g2477924781%_)
                                              (_%make-id22648%_
                                               _%name22652%_
                                               '"-"
                                               _%g2477924781%_))
                                            _%slots22643%_))))
                                      _%slot2281522853%_))))))
                     (_%loop2281022834%_ _%target2280722828%_ '()))
                   (_%g2280422821%_ _%g2280522825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2280422821%_
                                                  _%g2280522825%_)))))
                                     (_%g2280324785%_ _%slots22643%_)))
                                 _%g2277722788%_))))
                        (_%g2277524789%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22655%_)))))
                    _%g2274922760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2274724793%_
                                                    (_%make-id22648%_
                                                     _%name22652%_
                                                     '"?"))))
                                               _%g2272122732%_))))
                                      (_%g2271924797%_
                                       (_%make-id22648%_
                                        '"make-"
                                        _%name22652%_))))
                                  _%g2269322704%_))))
                         (_%g2269124801%_
                          (_%make-id22648%_ _%name22652%_ '"::t"))))
                     _%g2266222673%_))))
            (_%g2266024805%_ _%id22641%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24872%_)
        (let* ((_%g2487624895%_
                (lambda (_%g2487724891%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2487724891%_)))
               (_%g2487524952%_
                (lambda (_%g2487724899%_)
                  (if (gx#stx-pair? _%g2487724899%_)
                      (let ((_%e2488124902%_ (gx#syntax-e _%g2487724899%_)))
                        (let ((_%hd2488224906%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2488124902%_)))
                              (_%tl2488324909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2488124902%_))))
                          (if (gx#stx-pair? _%tl2488324909%_)
                              (let ((_%e2488424912%_
                                     (gx#syntax-e _%tl2488324909%_)))
                                (let ((_%hd2488524916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2488424912%_)))
                                      (_%tl2488624919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2488424912%_))))
                                  (if (gx#stx-pair? _%tl2488624919%_)
                                      (let ((_%e2488724922%_
                                             (gx#syntax-e _%tl2488624919%_)))
                                        (let ((_%hd2488824926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2488724922%_)))
                                              (_%tl2488924929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2488724922%_))))
                                          ((lambda (_%g2487824932%_
                                                    _%g2487924934%_
                                                    _%g2488024935%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%g2488024935%_
                                                         (cons _%g2487924934%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%g2487824932%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2488924929%_
                                           _%hd2488824926%_
                                           _%hd2488524916%_)))
                                      (_%g2487624895%_ _%g2487724899%_))))
                              (_%g2487624895%_ _%g2487724899%_))))
                      (_%g2487624895%_ _%g2487724899%_)))))
          (_%g2487524952%_ _%$stx24872%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24956%_)
        (letrec ((_%generate24959%_
                  (lambda (_%hd25043%_ _%slots25045%_ _%body25046%_)
                    (let* ((_%__stx2715027151%_ _%hd25043%_)
                           (_%g2504925061%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2715027151%_))))
                      (let ((_%__kont2715327154%_
                             (lambda (_%g2505125089%_ _%g2505225091%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24956%_
                                _%g2505225091%_
                                (gx#syntax->list _%g2505125089%_)
                                _%slots25045%_
                                _%body25046%_)))
                            (_%__kont2715527156%_
                             (lambda ()
                               (if (gx#identifier? _%hd25043%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24956%_
                                    _%hd25043%_
                                    '()
                                    _%slots25045%_
                                    _%body25046%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx24956%_
                                    _%hd25043%_)))))
                        (let ((_%__match2716327164%_
                               (lambda (_%e2505325079%_
                                        _%hd2505425083%_
                                        _%tl2505525086%_)
                                 (let ((_%g2505125089%_ _%tl2505525086%_)
                                       (_%g2505225091%_ _%hd2505425083%_))
                                   (if (and (gx#stx-list? _%g2505125089%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%g2505125089%_))
                                       (_%__kont2715327154%_
                                        _%g2505125089%_
                                        _%g2505225091%_)
                                       (_%__kont2715527156%_))))))
                          (if (gx#stx-pair? _%__stx2715027151%_)
                              (let ((_%e2505325079%_
                                     (gx#syntax-e _%__stx2715027151%_)))
                                (let ((_%tl2505525086%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2505325079%_)))
                                      (_%hd2505425083%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2505325079%_))))
                                  (_%__match2716327164%_
                                   _%e2505325079%_
                                   _%hd2505425083%_
                                   _%tl2505525086%_)))
                              (_%__kont2715527156%_))))))))
          (let* ((_%g2496224981%_
                  (lambda (_%g2496324977%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2496324977%_)))
                 (_%g2496125039%_
                  (lambda (_%g2496324985%_)
                    (if (gx#stx-pair? _%g2496324985%_)
                        (let ((_%e2496724988%_ (gx#syntax-e _%g2496324985%_)))
                          (let ((_%hd2496824992%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2496724988%_)))
                                (_%tl2496924995%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2496724988%_))))
                            (if (gx#stx-pair? _%tl2496924995%_)
                                (let ((_%e2497024998%_
                                       (gx#syntax-e _%tl2496924995%_)))
                                  (let ((_%hd2497125002%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2497024998%_)))
                                        (_%tl2497225005%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2497024998%_))))
                                    (if (gx#stx-pair? _%tl2497225005%_)
                                        (let ((_%e2497325008%_
                                               (gx#syntax-e _%tl2497225005%_)))
                                          (let ((_%hd2497425012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2497325008%_)))
                                                (_%tl2497525015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2497325008%_))))
                                            ((lambda (_%g2496425018%_
                                                      _%g2496525020%_
                                                      _%g2496625021%_)
                                               (if (and (gx#identifier-list?
                                                         _%g2496525020%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%g2496425018%_))
                                                   (_%generate24959%_
                                                    _%g2496625021%_
                                                    _%g2496525020%_
                                                    _%g2496425018%_)
                                                   (_%g2496224981%_
                                                    _%g2496324985%_)))
                                             _%tl2497525015%_
                                             _%hd2497425012%_
                                             _%hd2497125002%_)))
                                        (_%g2496224981%_ _%g2496324985%_))))
                                (_%g2496224981%_ _%g2496324985%_))))
                        (_%g2496224981%_ _%g2496324985%_)))))
            (_%g2496125039%_ _%stx24956%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25108%_)
        (letrec ((_%wrap25111%_
                  (lambda (_%e-stx25457%_)
                    (gx#stx-wrap-source
                     _%e-stx25457%_
                     (gx#stx-source _%stx25108%_))))
                 (_%method-opt?25113%_
                  (lambda (_%x25454%_)
                    (let ((__tmp27701 (gx#stx-e _%x25454%_)))
                      (declare (not safe))
                      (##memq __tmp27701 '(rebind:))))))
          (let* ((_%g2511525144%_
                  (lambda (_%g2511625140%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2511625140%_)))
                 (_%g2511425450%_
                  (lambda (_%g2511625148%_)
                    (if (gx#stx-pair? _%g2511625148%_)
                        (let ((_%e2512125151%_ (gx#syntax-e _%g2511625148%_)))
                          (let ((_%hd2512225155%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2512125151%_)))
                                (_%tl2512325158%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2512125151%_))))
                            (if (gx#stx-pair? _%tl2512325158%_)
                                (let ((_%e2512425161%_
                                       (gx#syntax-e _%tl2512325158%_)))
                                  (let ((_%hd2512525165%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2512425161%_)))
                                        (_%tl2512625168%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2512425161%_))))
                                    (if (gx#stx-pair? _%hd2512525165%_)
                                        (let ((_%e2512725171%_
                                               (gx#syntax-e _%hd2512525165%_)))
                                          (let ((_%hd2512825175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2512725171%_)))
                                                (_%tl2512925178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2512725171%_))))
                                            (if (gx#identifier?
                                                 _%hd2512825175%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27702_|
                                                     _%hd2512825175%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2512925178%_)
                                                        (let ((_%e2513025181%_
                                                               (gx#syntax-e
                                                                _%tl2512925178%_)))
                                                          (let ((_%hd2513125185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2513025181%_)))
                        (_%tl2513225188%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2513025181%_))))
                    (if (gx#stx-pair? _%tl2513225188%_)
                        (let ((_%e2513325191%_ (gx#syntax-e _%tl2513225188%_)))
                          (let ((_%hd2513425195%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2513325191%_)))
                                (_%tl2513525198%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2513325191%_))))
                            (if (gx#stx-null? _%tl2513525198%_)
                                (if (gx#stx-pair? _%tl2512625168%_)
                                    (let ((_%e2513625201%_
                                           (gx#syntax-e _%tl2512625168%_)))
                                      (let ((_%hd2513725205%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2513625201%_)))
                                            (_%tl2513825208%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2513625201%_))))
                                        ((lambda (_%g2511725211%_
                                                  _%g2511825213%_
                                                  _%g2511925214%_
                                                  _%g2512025215%_)
                                           (if (and (gx#identifier?
                                                     _%g2512025215%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%g2511925214%_))
                                                    (gx#stx-plist?
                                                     _%g2511725211%_
                                                     _%method-opt?25113%_))
                                               (let* ((_%klass25242%_
                                                       (gx#syntax-local-value
                                                        _%g2511925214%_))
                                                      (_%rebind?25245%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%g2511725211%_)))
                                                      (_%g2524825256%_
                                                       (lambda (_%g2524925252%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2524925252%_)))
                                                      (_%g2524725440%_
                                                       (lambda (_%g2524925260%_)
                                                         ((lambda (_%g2525025263%_)
                                                            (let* ((_%g2527825286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2527925282%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2527925282%_)))
                           (_%g2527725436%_
                            (lambda (_%g2527925290%_)
                              ((lambda (_%g2528025293%_)
                                 (let* ((_%g2530625314%_
                                         (lambda (_%g2530725310%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2530725310%_)))
                                        (_%g2530525432%_
                                         (lambda (_%g2530725318%_)
                                           ((lambda (_%g2530825321%_)
                                              (let* ((_%g2533425342%_
                                                      (lambda (_%g2533525338%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2533525338%_)))
                                                     (_%g2533325428%_
                                                      (lambda (_%g2533525346%_)
                                                        ((lambda (_%g2533625349%_)
                                                           (let* ((_%g2536225370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2536325366%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2536325366%_)))
                          (_%g2536125424%_
                           (lambda (_%g2536325374%_)
                             ((lambda (_%g2536425377%_)
                                (let* ((_%g2539025398%_
                                        (lambda (_%g2539125394%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2539125394%_)))
                                       (_%g2538925420%_
                                        (lambda (_%g2539125402%_)
                                          ((lambda (_%g2539225405%_)
                                             (_%wrap25111%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%g2533625349%_
                                                          (cons _%g2539225405%_
                                                                '())))))
                                           _%g2539125402%_))))
                                  (_%g2538925420%_
                                   (_%wrap25111%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%g2525025263%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2512025215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g2528025293%_ (cons _%g2536425377%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2536325374%_))))
                     (_%g2536125424%_ _%rebind?25245%_)))
                 _%g2533525346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2533325428%_
                                                 (_%wrap25111%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%g2528025293%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%g2530825321%_
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
                                                      (cons _%g2525025263%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2512025215%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%g2511825213%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2530725318%_))))
                                   (_%g2530525432%_
                                    (gx#stx-identifier
                                     _%g2511925214%_
                                     '@next-method))))
                               _%g2527925290%_))))
                      (_%g2527725436%_
                       (gx#stx-identifier
                        _%g2511925214%_
                        _%g2511925214%_
                        '"::"
                        _%g2512025215%_))))
                  _%g2524925260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2524725440%_
                                                  (let ((__obj27429
                                                         _%klass25242%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27429
                                                           'gerbil.core#runtime-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27429
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#runtime-type-info::t
                                                         __obj27429
                                                         'type-descriptor)))))
                                               (if (gx#identifier?
                                                    _%g2512025215%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                          _%g2511925214%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25108%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; invalid class type"
                                                        _%stx25108%_
                                                        _%g2511925214%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25108%_
                                                    _%g2512025215%_))))
                                         _%tl2513825208%_
                                         _%hd2513725205%_
                                         _%hd2513425195%_
                                         _%hd2513125185%_)))
                                    (_%g2511525144%_ _%g2511625148%_))
                                (_%g2511525144%_ _%g2511625148%_))))
                        (_%g2511525144%_ _%g2511625148%_))))
                (_%g2511525144%_ _%g2511625148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2511525144%_
                                                     _%g2511625148%_))
                                                (_%g2511525144%_
                                                 _%g2511625148%_))))
                                        (_%g2511525144%_ _%g2511625148%_))))
                                (_%g2511525144%_ _%g2511625148%_))))
                        (_%g2511525144%_ _%g2511625148%_)))))
            (_%g2511425450%_ _%stx25108%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25460%_)
        (letrec ((_%dotted-identifier?25463%_
                  (lambda (_%id26088%_)
                    (if (gx#identifier? _%id26088%_)
                        (let ((_%id-str26091%_
                               (symbol->string (gx#stx-e _%id26088%_))))
                          (if (string-index _%id-str26091%_ '#\.)
                              (let* ((_%split26094%_
                                      (string-split _%id-str26091%_ '#\.))
                                     (__tmp27703 (length _%split26094%_)))
                                (declare (not safe))
                                (##fx= __tmp27703 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25465%_
                  (lambda (_%id26077%_)
                    (let* ((_%id-str26080%_
                            (symbol->string (gx#stx-e _%id26077%_)))
                           (_%split26083%_
                            (string-split _%id-str26080%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26077%_
                             (car _%split26083%_))
                            (cons (gx#stx-identifier
                                   _%id26077%_
                                   (cadr _%split26083%_))
                                  '()))))))
          (let* ((_%__stx2716627167%_ _%stx25460%_)
                 (_%g2547025557%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2716627167%_))))
            (let ((_%__kont2716927170%_
                   (lambda (_%g2547225970%_ _%g2547325972%_ _%g2547425973%_)
                     (let* ((_%g2600126016%_
                             (lambda (_%g2600226012%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2600226012%_)))
                            (_%g2600026069%_
                             (lambda (_%g2600226020%_)
                               (if (gx#stx-pair? _%g2600226020%_)
                                   (let ((_%e2600526023%_
                                          (gx#syntax-e _%g2600226020%_)))
                                     (let ((_%hd2600626027%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2600526023%_)))
                                           (_%tl2600726030%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2600526023%_))))
                                       (if (gx#stx-pair? _%tl2600726030%_)
                                           (let ((_%e2600826033%_
                                                  (gx#syntax-e
                                                   _%tl2600726030%_)))
                                             (let ((_%hd2600926037%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2600826033%_)))
                                                   (_%tl2601026040%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2600826033%_))))
                                               (if (gx#stx-null?
                                                    _%tl2601026040%_)
                                                   ((lambda (_%g2600326043%_
                                                             _%g2600426045%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%g2600426045%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g2600326043%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2606026063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2606126066%_)
                   (cons _%g2606026063%_ _%g2606126066%_))
                 '()
                 _%g2547325972%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2600926037%_
                                                    _%hd2600626027%_)
                                                   (_%g2600126016%_
                                                    _%g2600226020%_))))
                                           (_%g2600126016%_ _%g2600226020%_))))
                                   (_%g2600126016%_ _%g2600226020%_)))))
                       (_%g2600026069%_
                        (_%split-dotted25465%_ _%g2547425973%_)))))
                  (_%__kont2717327174%_
                   (lambda (_%g2549325814%_ _%g2549425816%_)
                     (let* ((_%g2583325848%_
                             (lambda (_%g2583425844%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2583425844%_)))
                            (_%g2583225901%_
                             (lambda (_%g2583425852%_)
                               (if (gx#stx-pair? _%g2583425852%_)
                                   (let ((_%e2583725855%_
                                          (gx#syntax-e _%g2583425852%_)))
                                     (let ((_%hd2583825859%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2583725855%_)))
                                           (_%tl2583925862%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2583725855%_))))
                                       (if (gx#stx-pair? _%tl2583925862%_)
                                           (let ((_%e2584025865%_
                                                  (gx#syntax-e
                                                   _%tl2583925862%_)))
                                             (let ((_%hd2584125869%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2584025865%_)))
                                                   (_%tl2584225872%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2584025865%_))))
                                               (if (gx#stx-null?
                                                    _%tl2584225872%_)
                                                   ((lambda (_%g2583525875%_
                                                             _%g2583625877%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%g2583625877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2583525875%_ '()))
                                (foldr (lambda (_%g2589225895%_
                                                _%g2589325898%_)
                                         (cons _%g2589225895%_
                                               _%g2589325898%_))
                                       '()
                                       _%g2549325814%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2584125869%_
                                                    _%hd2583825859%_)
                                                   (_%g2583325848%_
                                                    _%g2583425852%_))))
                                           (_%g2583325848%_ _%g2583425852%_))))
                                   (_%g2583325848%_ _%g2583425852%_)))))
                       (_%g2583225901%_
                        (_%split-dotted25465%_ _%g2549425816%_)))))
                  (_%__kont2717727178%_
                   (lambda (_%g2551025720%_ _%g2551125722%_ _%g2551225723%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%g2551125722%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2551225723%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2575025753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2575125756%_)
                          (cons _%g2575025753%_ _%g2575125756%_))
                        '()
                        _%g2551025720%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2718127182%_
                   (lambda (_%g2553125622%_ _%g2553225624%_ _%g2553325625%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%g2553225624%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2553325625%_ '()))
                                       (foldr (lambda (_%g2564625649%_
                                                       _%g2564725652%_)
                                                (cons _%g2564625649%_
                                                      _%g2564725652%_))
                                              '()
                                              _%g2553125622%_)))))))
              (let* ((_%__match2728527286%_
                      (lambda (_%e2553425564%_
                               _%hd2553525568%_
                               _%tl2553625571%_
                               _%e2553725574%_
                               _%hd2553825578%_
                               _%tl2553925581%_
                               _%e2554025584%_
                               _%hd2554125588%_
                               _%tl2554225591%_
                               _%__splice2718327184%_
                               _%target2554325594%_
                               _%tl2554525597%_)
                        (letrec ((_%loop2554625600%_
                                  (lambda (_%hd2554425604%_ _%arg2555025607%_)
                                    (if (gx#stx-pair? _%hd2554425604%_)
                                        (let ((_%e2554725609%_
                                               (gx#syntax-e _%hd2554425604%_)))
                                          (let ((_%lp-tl2554925616%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2554725609%_)))
                                                (_%lp-hd2554825613%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2554725609%_))))
                                            (_%loop2554625600%_
                                             _%lp-tl2554925616%_
                                             (cons _%lp-hd2554825613%_
                                                   _%arg2555025607%_))))
                                        (let ((_%arg2555125619%_
                                               (reverse _%arg2555025607%_)))
                                          (let ((_%g2553125622%_
                                                 _%arg2555125619%_)
                                                (_%g2553225624%_
                                                 _%hd2554125588%_)
                                                (_%g2553325625%_
                                                 _%hd2553825578%_))
                                            (if (gx#identifier?
                                                 _%g2553325625%_)
                                                (_%__kont2718127182%_
                                                 _%g2553125622%_
                                                 _%g2553225624%_
                                                 _%g2553325625%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2547025557%_)))))))))
                          (_%loop2554625600%_ _%target2554325594%_ '()))))
                     (_%__match2725927260%_
                      (lambda (_%e2551325662%_
                               _%hd2551425666%_
                               _%tl2551525669%_
                               _%e2551625672%_
                               _%hd2551725676%_
                               _%tl2551825679%_
                               _%e2551925682%_
                               _%hd2552025686%_
                               _%tl2552125689%_
                               _%__splice2717927180%_
                               _%target2552225692%_
                               _%tl2552425695%_)
                        (letrec ((_%loop2552525698%_
                                  (lambda (_%hd2552325702%_ _%arg2552925705%_)
                                    (if (gx#stx-pair? _%hd2552325702%_)
                                        (let ((_%e2552625707%_
                                               (gx#syntax-e _%hd2552325702%_)))
                                          (let ((_%lp-tl2552825714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2552625707%_)))
                                                (_%lp-hd2552725711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2552625707%_))))
                                            (_%loop2552525698%_
                                             _%lp-tl2552825714%_
                                             (cons _%lp-hd2552725711%_
                                                   _%arg2552925705%_))))
                                        (let ((_%arg2553025717%_
                                               (reverse _%arg2552925705%_)))
                                          (let ((_%g2551025720%_
                                                 _%arg2553025717%_)
                                                (_%g2551125722%_
                                                 _%hd2552025686%_)
                                                (_%g2551225723%_
                                                 _%hd2551725676%_))
                                            (if (and (gx#identifier?
                                                      _%g2551225723%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2574225745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2574325748%_)
                       (cons _%g2574225745%_ _%g2574325748%_))
                     '()
                     _%g2551025720%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2717727178%_
                                                 _%g2551025720%_
                                                 _%g2551125722%_
                                                 _%g2551225723%_)
                                                (_%__match2728527286%_
                                                 _%e2551325662%_
                                                 _%hd2551425666%_
                                                 _%tl2551525669%_
                                                 _%e2551625672%_
                                                 _%hd2551725676%_
                                                 _%tl2551825679%_
                                                 _%e2551925682%_
                                                 _%hd2552025686%_
                                                 _%tl2552125689%_
                                                 _%__splice2717927180%_
                                                 _%target2552225692%_
                                                 _%tl2552425695%_))))))))
                          (_%loop2552525698%_ _%target2552225692%_ '()))))
                     (_%__match2724527246%_
                      (lambda (_%e2551325662%_
                               _%hd2551425666%_
                               _%tl2551525669%_
                               _%e2551625672%_
                               _%hd2551725676%_
                               _%tl2551825679%_)
                        (if (gx#stx-pair? _%tl2551825679%_)
                            (let ((_%e2551925682%_
                                   (gx#syntax-e _%tl2551825679%_)))
                              (let ((_%tl2552125689%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2551925682%_)))
                                    (_%hd2552025686%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2551925682%_))))
                                (if (gx#stx-pair/null? _%tl2552125689%_)
                                    (let ((_%__splice2717927180%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2552125689%_
                                            '0)))
                                      (let ((_%tl2552425695%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2717927180%_
                                                '1)))
                                            (_%target2552225692%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2717927180%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2552425695%_)
                                            (_%__match2725927260%_
                                             _%e2551325662%_
                                             _%hd2551425666%_
                                             _%tl2551525669%_
                                             _%e2551625672%_
                                             _%hd2551725676%_
                                             _%tl2551825679%_
                                             _%e2551925682%_
                                             _%hd2552025686%_
                                             _%tl2552125689%_
                                             _%__splice2717927180%_
                                             _%target2552225692%_
                                             _%tl2552425695%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2547025557%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2547025557%_)))))
                            (let () (declare (not safe)) (_%g2547025557%_)))))
                     (_%__match2723327234%_
                      (lambda (_%e2549525766%_
                               _%hd2549625770%_
                               _%tl2549725773%_
                               _%e2549825776%_
                               _%hd2549925780%_
                               _%tl2550025783%_
                               _%__splice2717527176%_
                               _%target2550125786%_
                               _%tl2550325789%_)
                        (letrec ((_%loop2550425792%_
                                  (lambda (_%hd2550225796%_ _%arg2550825799%_)
                                    (if (gx#stx-pair? _%hd2550225796%_)
                                        (let ((_%e2550525801%_
                                               (gx#syntax-e _%hd2550225796%_)))
                                          (let ((_%lp-tl2550725808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2550525801%_)))
                                                (_%lp-hd2550625805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2550525801%_))))
                                            (_%loop2550425792%_
                                             _%lp-tl2550725808%_
                                             (cons _%lp-hd2550625805%_
                                                   _%arg2550825799%_))))
                                        (let ((_%arg2550925811%_
                                               (reverse _%arg2550825799%_)))
                                          (let ((_%g2549325814%_
                                                 _%arg2550925811%_)
                                                (_%g2549425816%_
                                                 _%hd2549925780%_))
                                            (if (_%dotted-identifier?25463%_
                                                 _%g2549425816%_)
                                                (_%__kont2717327174%_
                                                 _%g2549325814%_
                                                 _%g2549425816%_)
                                                (_%__match2724527246%_
                                                 _%e2549525766%_
                                                 _%hd2549625770%_
                                                 _%tl2549725773%_
                                                 _%e2549825776%_
                                                 _%hd2549925780%_
                                                 _%tl2550025783%_))))))))
                          (_%loop2550425792%_ _%target2550125786%_ '()))))
                     (_%__match2723127232%_
                      (lambda (_%e2549525766%_
                               _%hd2549625770%_
                               _%tl2549725773%_
                               _%e2549825776%_
                               _%hd2549925780%_
                               _%tl2550025783%_
                               _%__splice2717527176%_
                               _%target2550125786%_
                               _%tl2550325789%_)
                        (if (gx#stx-null? _%tl2550325789%_)
                            (_%__match2723327234%_
                             _%e2549525766%_
                             _%hd2549625770%_
                             _%tl2549725773%_
                             _%e2549825776%_
                             _%hd2549925780%_
                             _%tl2550025783%_
                             _%__splice2717527176%_
                             _%target2550125786%_
                             _%tl2550325789%_)
                            (if (gx#stx-pair? _%tl2550025783%_)
                                (let ((_%e2551925682%_
                                       (gx#syntax-e _%tl2550025783%_)))
                                  (let ((_%tl2552125689%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2551925682%_)))
                                        (_%hd2552025686%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2551925682%_))))
                                    (if (gx#stx-pair/null? _%tl2552125689%_)
                                        (let ((_%__splice2717927180%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2552125689%_
                                                '0)))
                                          (let ((_%tl2552425695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2717927180%_
                                                    '1)))
                                                (_%target2552225692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2717927180%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2552425695%_)
                                                (_%__match2725927260%_
                                                 _%e2549525766%_
                                                 _%hd2549625770%_
                                                 _%tl2549725773%_
                                                 _%e2549825776%_
                                                 _%hd2549925780%_
                                                 _%tl2550025783%_
                                                 _%e2551925682%_
                                                 _%hd2552025686%_
                                                 _%tl2552125689%_
                                                 _%__splice2717927180%_
                                                 _%target2552225692%_
                                                 _%tl2552425695%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2547025557%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2547025557%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2547025557%_))))))
                     (_%__match2721327214%_
                      (lambda (_%e2547525912%_
                               _%hd2547625916%_
                               _%tl2547725919%_
                               _%e2547825922%_
                               _%hd2547925926%_
                               _%tl2548025929%_
                               _%__splice2717127172%_
                               _%target2548125932%_
                               _%tl2548325935%_
                               _%e2549025938%_
                               _%hd2549125942%_
                               _%tl2549225945%_)
                        (letrec ((_%loop2548425948%_
                                  (lambda (_%hd2548225952%_ _%arg2548825955%_)
                                    (if (gx#stx-pair? _%hd2548225952%_)
                                        (let ((_%e2548525957%_
                                               (gx#syntax-e _%hd2548225952%_)))
                                          (let ((_%lp-tl2548725964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2548525957%_)))
                                                (_%lp-hd2548625961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2548525957%_))))
                                            (_%loop2548425948%_
                                             _%lp-tl2548725964%_
                                             (cons _%lp-hd2548625961%_
                                                   _%arg2548825955%_))))
                                        (let ((_%arg2548925967%_
                                               (reverse _%arg2548825955%_)))
                                          (let ((_%g2547225970%_
                                                 _%hd2549125942%_)
                                                (_%g2547325972%_
                                                 _%arg2548925967%_)
                                                (_%g2547425973%_
                                                 _%hd2547925926%_))
                                            (if (and (_%dotted-identifier?25463%_
                                                      _%g2547425973%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2599225995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2599325998%_)
                       (cons _%g2599225995%_ _%g2599325998%_))
                     '()
                     _%g2547325972%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2716927170%_
                                                 _%g2547225970%_
                                                 _%g2547325972%_
                                                 _%g2547425973%_)
                                                (let ((_%__splice2717527176%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2548025929%_
                                                        '0)))
                                                  (let ((_%tl2550325789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2717527176%_
                                                            '1)))
                                                        (_%target2550125786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2717527176%_
                                                            '0))))
                                                    (_%__match2723127232%_
                                                     _%e2547525912%_
                                                     _%hd2547625916%_
                                                     _%tl2547725919%_
                                                     _%e2547825922%_
                                                     _%hd2547925926%_
                                                     _%tl2548025929%_
                                                     _%__splice2717527176%_
                                                     _%target2550125786%_
                                                     _%tl2550325789%_))))))))))
                          (_%loop2548425948%_ _%target2548125932%_ '())))))
                (if (gx#stx-pair? _%__stx2716627167%_)
                    (let ((_%e2547525912%_ (gx#syntax-e _%__stx2716627167%_)))
                      (let ((_%tl2547725919%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2547525912%_)))
                            (_%hd2547625916%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2547525912%_))))
                        (if (gx#stx-pair? _%tl2547725919%_)
                            (let ((_%e2547825922%_
                                   (gx#syntax-e _%tl2547725919%_)))
                              (let ((_%tl2548025929%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2547825922%_)))
                                    (_%hd2547925926%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2547825922%_))))
                                (if (gx#stx-pair/null? _%tl2548025929%_)
                                    (if (let ((__tmp27704
                                               (gx#stx-length
                                                _%tl2548025929%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27704 '1))
                                        (let ((_%__splice2717127172%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2548025929%_
                                                '1)))
                                          (let ((_%tl2548325935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2717127172%_
                                                    '1)))
                                                (_%target2548125932%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2717127172%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2548325935%_)
                                                (let ((_%e2549025938%_
                                                       (gx#syntax-e
                                                        _%tl2548325935%_)))
                                                  (let ((_%tl2549225945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2549025938%_)))
                                                        (_%hd2549125942%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2549025938%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2549225945%_)
                                                        (_%__match2721327214%_
                                                         _%e2547525912%_
                                                         _%hd2547625916%_
                                                         _%tl2547725919%_
                                                         _%e2547825922%_
                                                         _%hd2547925926%_
                                                         _%tl2548025929%_
                                                         _%__splice2717127172%_
                                                         _%target2548125932%_
                                                         _%tl2548325935%_
                                                         _%e2549025938%_
                                                         _%hd2549125942%_
                                                         _%tl2549225945%_)
                                                        (let ((_%__splice2717527176%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl2548025929%_
                                                                '0)))
                                                          (let ((_%tl2550325789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2717527176%_ '1)))
                        (_%target2550125786%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2717527176%_ '0))))
                    (if (gx#stx-null? _%tl2550325789%_)
                        (_%__match2723327234%_
                         _%e2547525912%_
                         _%hd2547625916%_
                         _%tl2547725919%_
                         _%e2547825922%_
                         _%hd2547925926%_
                         _%tl2548025929%_
                         _%__splice2717527176%_
                         _%target2550125786%_
                         _%tl2550325789%_)
                        (if (gx#stx-pair? _%tl2548025929%_)
                            (let ((_%e2551925682%_
                                   (gx#syntax-e _%tl2548025929%_)))
                              (let ((_%tl2552125689%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2551925682%_)))
                                    (_%hd2552025686%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2551925682%_))))
                                (if (gx#stx-pair/null? _%tl2552125689%_)
                                    (let ((_%__splice2717927180%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2552125689%_
                                            '0)))
                                      (let ((_%tl2552425695%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2717927180%_
                                                '1)))
                                            (_%target2552225692%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2717927180%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2552425695%_)
                                            (_%__match2725927260%_
                                             _%e2547525912%_
                                             _%hd2547625916%_
                                             _%tl2547725919%_
                                             _%e2547825922%_
                                             _%hd2547925926%_
                                             _%tl2548025929%_
                                             _%e2551925682%_
                                             _%hd2552025686%_
                                             _%tl2552125689%_
                                             _%__splice2717927180%_
                                             _%target2552225692%_
                                             _%tl2552425695%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2547025557%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2547025557%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2547025557%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2717527176%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2548025929%_
                                                        '0)))
                                                  (let ((_%tl2550325789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2717527176%_
                                                            '1)))
                                                        (_%target2550125786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2717527176%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2550325789%_)
                                                        (_%__match2723327234%_
                                                         _%e2547525912%_
                                                         _%hd2547625916%_
                                                         _%tl2547725919%_
                                                         _%e2547825922%_
                                                         _%hd2547925926%_
                                                         _%tl2548025929%_
                                                         _%__splice2717527176%_
                                                         _%target2550125786%_
                                                         _%tl2550325789%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2548025929%_)
                                                            (let ((_%e2551925682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2548025929%_)))
                      (let ((_%tl2552125689%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2551925682%_)))
                            (_%hd2552025686%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2551925682%_))))
                        (if (gx#stx-pair/null? _%tl2552125689%_)
                            (let ((_%__splice2717927180%_
                                   (gx#syntax-split-splice->vector
                                    _%tl2552125689%_
                                    '0)))
                              (let ((_%tl2552425695%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2717927180%_
                                        '1)))
                                    (_%target2552225692%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2717927180%_
                                        '0))))
                                (if (gx#stx-null? _%tl2552425695%_)
                                    (_%__match2725927260%_
                                     _%e2547525912%_
                                     _%hd2547625916%_
                                     _%tl2547725919%_
                                     _%e2547825922%_
                                     _%hd2547925926%_
                                     _%tl2548025929%_
                                     _%e2551925682%_
                                     _%hd2552025686%_
                                     _%tl2552125689%_
                                     _%__splice2717927180%_
                                     _%target2552225692%_
                                     _%tl2552425695%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2547025557%_)))))
                            (let () (declare (not safe)) (_%g2547025557%_)))))
                    (let () (declare (not safe)) (_%g2547025557%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2717527176%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2548025929%_
                                                '0)))
                                          (let ((_%tl2550325789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2717527176%_
                                                    '1)))
                                                (_%target2550125786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2717527176%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2550325789%_)
                                                (_%__match2723327234%_
                                                 _%e2547525912%_
                                                 _%hd2547625916%_
                                                 _%tl2547725919%_
                                                 _%e2547825922%_
                                                 _%hd2547925926%_
                                                 _%tl2548025929%_
                                                 _%__splice2717527176%_
                                                 _%target2550125786%_
                                                 _%tl2550325789%_)
                                                (if (gx#stx-pair?
                                                     _%tl2548025929%_)
                                                    (let ((_%e2551925682%_
                                                           (gx#syntax-e
                                                            _%tl2548025929%_)))
                                                      (let ((_%tl2552125689%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2551925682%_)))
                    (_%hd2552025686%_
                     (let () (declare (not safe)) (##car _%e2551925682%_))))
                (if (gx#stx-pair/null? _%tl2552125689%_)
                    (let ((_%__splice2717927180%_
                           (gx#syntax-split-splice->vector
                            _%tl2552125689%_
                            '0)))
                      (let ((_%tl2552425695%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2717927180%_ '1)))
                            (_%target2552225692%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2717927180%_ '0))))
                        (if (gx#stx-null? _%tl2552425695%_)
                            (_%__match2725927260%_
                             _%e2547525912%_
                             _%hd2547625916%_
                             _%tl2547725919%_
                             _%e2547825922%_
                             _%hd2547925926%_
                             _%tl2548025929%_
                             _%e2551925682%_
                             _%hd2552025686%_
                             _%tl2552125689%_
                             _%__splice2717927180%_
                             _%target2552225692%_
                             _%tl2552425695%_)
                            (let () (declare (not safe)) (_%g2547025557%_)))))
                    (let () (declare (not safe)) (_%g2547025557%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2547025557%_)))))))
                                    (if (gx#stx-pair? _%tl2548025929%_)
                                        (let ((_%e2551925682%_
                                               (gx#syntax-e _%tl2548025929%_)))
                                          (let ((_%tl2552125689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2551925682%_)))
                                                (_%hd2552025686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2551925682%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2552125689%_)
                                                (let ((_%__splice2717927180%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2552125689%_
                                                        '0)))
                                                  (let ((_%tl2552425695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2717927180%_
                                                            '1)))
                                                        (_%target2552225692%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2717927180%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2552425695%_)
                                                        (_%__match2725927260%_
                                                         _%e2547525912%_
                                                         _%hd2547625916%_
                                                         _%tl2547725919%_
                                                         _%e2547825922%_
                                                         _%hd2547925926%_
                                                         _%tl2548025929%_
                                                         _%e2551925682%_
                                                         _%hd2552025686%_
                                                         _%tl2552125689%_
                                                         _%__splice2717927180%_
                                                         _%target2552225692%_
                                                         _%tl2552425695%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2547025557%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2547025557%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2547025557%_))))))
                            (let () (declare (not safe)) (_%g2547025557%_)))))
                    (let () (declare (not safe)) (_%g2547025557%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26101%_)
        (let* ((_%__stx2728827289%_ _%$stx26101%_)
               (_%g2610626146%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2728827289%_))))
          (let ((_%__kont2729127292%_
                 (lambda (_%g2610826282%_ _%g2610926284%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%g2610926284%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2610826282%_ '()))
                                     '())))))
                (_%__kont2729327294%_
                 (lambda (_%g2611926211%_
                          _%g2612026213%_
                          _%g2612126214%_
                          _%g2612226215%_)
                   (cons _%g2612226215%_
                         (cons (cons _%g2612226215%_
                                     (cons _%g2612126214%_
                                           (cons _%g2612026213%_ '())))
                               (foldr (lambda (_%g2623626239%_ _%g2623726242%_)
                                        (cons _%g2623626239%_ _%g2623726242%_))
                                      '()
                                      _%g2611926211%_))))))
            (let* ((_%__match2734327344%_
                    (lambda (_%e2612326153%_
                             _%hd2612426157%_
                             _%tl2612526160%_
                             _%e2612626163%_
                             _%hd2612726167%_
                             _%tl2612826170%_
                             _%e2612926173%_
                             _%hd2613026177%_
                             _%tl2613126180%_
                             _%__splice2729527296%_
                             _%target2613226183%_
                             _%tl2613426186%_)
                      (letrec ((_%loop2613526189%_
                                (lambda (_%hd2613326193%_ _%rest2613926196%_)
                                  (if (gx#stx-pair? _%hd2613326193%_)
                                      (let ((_%e2613626198%_
                                             (gx#syntax-e _%hd2613326193%_)))
                                        (let ((_%lp-tl2613826205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2613626198%_)))
                                              (_%lp-hd2613726202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2613626198%_))))
                                          (_%loop2613526189%_
                                           _%lp-tl2613826205%_
                                           (cons _%lp-hd2613726202%_
                                                 _%rest2613926196%_))))
                                      (let ((_%rest2614026208%_
                                             (reverse _%rest2613926196%_)))
                                        (_%__kont2729327294%_
                                         _%rest2614026208%_
                                         _%hd2613026177%_
                                         _%hd2612726167%_
                                         _%hd2612426157%_))))))
                        (_%loop2613526189%_ _%target2613226183%_ '()))))
                   (_%__match2731727318%_
                    (lambda (_%e2611026252%_
                             _%hd2611126256%_
                             _%tl2611226259%_
                             _%e2611326262%_
                             _%hd2611426266%_
                             _%tl2611526269%_
                             _%e2611626272%_
                             _%hd2611726276%_
                             _%tl2611826279%_)
                      (let ((_%g2610826282%_ _%hd2611726276%_)
                            (_%g2610926284%_ _%hd2611426266%_))
                        (if (gx#identifier? _%g2610826282%_)
                            (_%__kont2729127292%_
                             _%g2610826282%_
                             _%g2610926284%_)
                            (if (gx#stx-pair/null? _%tl2611826279%_)
                                (let ((_%__splice2729527296%_
                                       (gx#syntax-split-splice->vector
                                        _%tl2611826279%_
                                        '0)))
                                  (let ((_%tl2613426186%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2729527296%_
                                            '1)))
                                        (_%target2613226183%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2729527296%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2613426186%_)
                                        (_%__match2734327344%_
                                         _%e2611026252%_
                                         _%hd2611126256%_
                                         _%tl2611226259%_
                                         _%e2611326262%_
                                         _%hd2611426266%_
                                         _%tl2611526269%_
                                         _%e2611626272%_
                                         _%hd2611726276%_
                                         _%tl2611826279%_
                                         _%__splice2729527296%_
                                         _%target2613226183%_
                                         _%tl2613426186%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2610626146%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2610626146%_))))))))
              (if (gx#stx-pair? _%__stx2728827289%_)
                  (let ((_%e2611026252%_ (gx#syntax-e _%__stx2728827289%_)))
                    (let ((_%tl2611226259%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2611026252%_)))
                          (_%hd2611126256%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2611026252%_))))
                      (if (gx#stx-pair? _%tl2611226259%_)
                          (let ((_%e2611326262%_
                                 (gx#syntax-e _%tl2611226259%_)))
                            (let ((_%tl2611526269%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2611326262%_)))
                                  (_%hd2611426266%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2611326262%_))))
                              (if (gx#stx-pair? _%tl2611526269%_)
                                  (let ((_%e2611626272%_
                                         (gx#syntax-e _%tl2611526269%_)))
                                    (let ((_%tl2611826279%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2611626272%_)))
                                          (_%hd2611726276%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2611626272%_))))
                                      (if (gx#stx-null? _%tl2611826279%_)
                                          (_%__match2731727318%_
                                           _%e2611026252%_
                                           _%hd2611126256%_
                                           _%tl2611226259%_
                                           _%e2611326262%_
                                           _%hd2611426266%_
                                           _%tl2611526269%_
                                           _%e2611626272%_
                                           _%hd2611726276%_
                                           _%tl2611826279%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2611826279%_)
                                              (let ((_%__splice2729527296%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl2611826279%_
                                                      '0)))
                                                (let ((_%tl2613426186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2729527296%_
                                                          '1)))
                                                      (_%target2613226183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2729527296%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2613426186%_)
                                                      (_%__match2734327344%_
                                                       _%e2611026252%_
                                                       _%hd2611126256%_
                                                       _%tl2611226259%_
                                                       _%e2611326262%_
                                                       _%hd2611426266%_
                                                       _%tl2611526269%_
                                                       _%e2611626272%_
                                                       _%hd2611726276%_
                                                       _%tl2611826279%_
                                                       _%__splice2729527296%_
                                                       _%target2613226183%_
                                                       _%tl2613426186%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2610626146%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2610626146%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2610626146%_)))))
                          (let () (declare (not safe)) (_%g2610626146%_)))))
                  (let () (declare (not safe)) (_%g2610626146%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26304%_)
        (let* ((_%__stx2734627347%_ _%$stx26304%_)
               (_%g2630926361%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2734627347%_))))
          (let ((_%__kont2734927350%_
                 (lambda (_%g2631126535%_ _%g2631226537%_ _%g2631326538%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%g2631326538%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2631226537%_ '()))
                                     (cons _%g2631126535%_ '()))))))
                (_%__kont2735127352%_
                 (lambda (_%g2632626446%_
                          _%g2632726448%_
                          _%g2632826449%_
                          _%g2632926450%_
                          _%g2633026451%_
                          _%g2633126452%_)
                   (cons _%g2633126452%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%g2633026451%_
                                           (cons _%g2632926450%_
                                                 (foldr (lambda (_%g2647926482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2648026485%_)
                  (cons _%g2647926482%_ _%g2648026485%_))
                '()
                _%g2632826449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g2632726448%_
                                     (cons _%g2632626446%_ '())))))))
            (let* ((_%__match2742127422%_
                    (lambda (_%e2633226368%_
                             _%hd2633326372%_
                             _%tl2633426375%_
                             _%e2633526378%_
                             _%hd2633626382%_
                             _%tl2633726385%_
                             _%e2633826388%_
                             _%hd2633926392%_
                             _%tl2634026395%_
                             _%__splice2735327354%_
                             _%target2634126398%_
                             _%tl2634326401%_
                             _%e2635026404%_
                             _%hd2635126408%_
                             _%tl2635226411%_
                             _%e2635326414%_
                             _%hd2635426418%_
                             _%tl2635526421%_)
                      (letrec ((_%loop2634426424%_
                                (lambda (_%hd2634226428%_ _%path2634826431%_)
                                  (if (gx#stx-pair? _%hd2634226428%_)
                                      (let ((_%e2634526433%_
                                             (gx#syntax-e _%hd2634226428%_)))
                                        (let ((_%lp-tl2634726440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2634526433%_)))
                                              (_%lp-hd2634626437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2634526433%_))))
                                          (_%loop2634426424%_
                                           _%lp-tl2634726440%_
                                           (cons _%lp-hd2634626437%_
                                                 _%path2634826431%_))))
                                      (let ((_%path2634926443%_
                                             (reverse _%path2634826431%_)))
                                        (_%__kont2735127352%_
                                         _%hd2635426418%_
                                         _%hd2635126408%_
                                         _%path2634926443%_
                                         _%hd2633926392%_
                                         _%hd2633626382%_
                                         _%hd2633326372%_))))))
                        (_%loop2634426424%_ _%target2634126398%_ '()))))
                   (_%__match2738127382%_
                    (lambda (_%e2631426495%_
                             _%hd2631526499%_
                             _%tl2631626502%_
                             _%e2631726505%_
                             _%hd2631826509%_
                             _%tl2631926512%_
                             _%e2632026515%_
                             _%hd2632126519%_
                             _%tl2632226522%_
                             _%e2632326525%_
                             _%hd2632426529%_
                             _%tl2632526532%_)
                      (let ((_%g2631126535%_ _%hd2632426529%_)
                            (_%g2631226537%_ _%hd2632126519%_)
                            (_%g2631326538%_ _%hd2631826509%_))
                        (if (gx#identifier? _%g2631226537%_)
                            (_%__kont2734927350%_
                             _%g2631126535%_
                             _%g2631226537%_
                             _%g2631326538%_)
                            (if (gx#stx-pair/null? _%tl2632226522%_)
                                (if (let ((__tmp27705
                                           (gx#stx-length _%tl2632226522%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27705 '2))
                                    (let ((_%__splice2735327354%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2632226522%_
                                            '2)))
                                      (let ((_%tl2634326401%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2735327354%_
                                                '1)))
                                            (_%target2634126398%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2735327354%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2634326401%_)
                                            (let ((_%e2635026404%_
                                                   (gx#syntax-e
                                                    _%tl2634326401%_)))
                                              (let ((_%tl2635226411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2635026404%_)))
                                                    (_%hd2635126408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2635026404%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2635226411%_)
                                                    (let ((_%e2635326414%_
                                                           (gx#syntax-e
                                                            _%tl2635226411%_)))
                                                      (let ((_%tl2635526421%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2635326414%_)))
                    (_%hd2635426418%_
                     (let () (declare (not safe)) (##car _%e2635326414%_))))
                (if (gx#stx-null? _%tl2635526421%_)
                    (_%__match2742127422%_
                     _%e2631426495%_
                     _%hd2631526499%_
                     _%tl2631626502%_
                     _%e2631726505%_
                     _%hd2631826509%_
                     _%tl2631926512%_
                     _%e2632026515%_
                     _%hd2632126519%_
                     _%tl2632226522%_
                     _%__splice2735327354%_
                     _%target2634126398%_
                     _%tl2634326401%_
                     _%e2635026404%_
                     _%hd2635126408%_
                     _%tl2635226411%_
                     _%e2635326414%_
                     _%hd2635426418%_
                     _%tl2635526421%_)
                    (let () (declare (not safe)) (_%g2630926361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2630926361%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2630926361%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2630926361%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2630926361%_))))))))
              (if (gx#stx-pair? _%__stx2734627347%_)
                  (let ((_%e2631426495%_ (gx#syntax-e _%__stx2734627347%_)))
                    (let ((_%tl2631626502%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2631426495%_)))
                          (_%hd2631526499%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2631426495%_))))
                      (if (gx#stx-pair? _%tl2631626502%_)
                          (let ((_%e2631726505%_
                                 (gx#syntax-e _%tl2631626502%_)))
                            (let ((_%tl2631926512%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2631726505%_)))
                                  (_%hd2631826509%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2631726505%_))))
                              (if (gx#stx-pair? _%tl2631926512%_)
                                  (let ((_%e2632026515%_
                                         (gx#syntax-e _%tl2631926512%_)))
                                    (let ((_%tl2632226522%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2632026515%_)))
                                          (_%hd2632126519%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2632026515%_))))
                                      (if (gx#stx-pair? _%tl2632226522%_)
                                          (let ((_%e2632326525%_
                                                 (gx#syntax-e
                                                  _%tl2632226522%_)))
                                            (let ((_%tl2632526532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2632326525%_)))
                                                  (_%hd2632426529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2632326525%_))))
                                              (if (gx#stx-null?
                                                   _%tl2632526532%_)
                                                  (_%__match2738127382%_
                                                   _%e2631426495%_
                                                   _%hd2631526499%_
                                                   _%tl2631626502%_
                                                   _%e2631726505%_
                                                   _%hd2631826509%_
                                                   _%tl2631926512%_
                                                   _%e2632026515%_
                                                   _%hd2632126519%_
                                                   _%tl2632226522%_
                                                   _%e2632326525%_
                                                   _%hd2632426529%_
                                                   _%tl2632526532%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2632226522%_)
                                                      (if (let ((__tmp27706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2632226522%_)))
                    (declare (not safe))
                    (##fx>= __tmp27706 '2))
                  (let ((_%__splice2735327354%_
                         (gx#syntax-split-splice->vector _%tl2632226522%_ '2)))
                    (let ((_%tl2634326401%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2735327354%_ '1)))
                          (_%target2634126398%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2735327354%_ '0))))
                      (if (gx#stx-pair? _%tl2634326401%_)
                          (let ((_%e2635026404%_
                                 (gx#syntax-e _%tl2634326401%_)))
                            (let ((_%tl2635226411%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2635026404%_)))
                                  (_%hd2635126408%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2635026404%_))))
                              (if (gx#stx-pair? _%tl2635226411%_)
                                  (let ((_%e2635326414%_
                                         (gx#syntax-e _%tl2635226411%_)))
                                    (let ((_%tl2635526421%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2635326414%_)))
                                          (_%hd2635426418%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2635326414%_))))
                                      (if (gx#stx-null? _%tl2635526421%_)
                                          (_%__match2742127422%_
                                           _%e2631426495%_
                                           _%hd2631526499%_
                                           _%tl2631626502%_
                                           _%e2631726505%_
                                           _%hd2631826509%_
                                           _%tl2631926512%_
                                           _%e2632026515%_
                                           _%hd2632126519%_
                                           _%tl2632226522%_
                                           _%__splice2735327354%_
                                           _%target2634126398%_
                                           _%tl2634326401%_
                                           _%e2635026404%_
                                           _%hd2635126408%_
                                           _%tl2635226411%_
                                           _%e2635326414%_
                                           _%hd2635426418%_
                                           _%tl2635526421%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2630926361%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2630926361%_)))))
                          (let () (declare (not safe)) (_%g2630926361%_)))))
                  (let () (declare (not safe)) (_%g2630926361%_)))
              (let () (declare (not safe)) (_%g2630926361%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2632226522%_)
                                              (if (let ((__tmp27707
                                                         (gx#stx-length
                                                          _%tl2632226522%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27707 '2))
                                                  (let ((_%__splice2735327354%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl2632226522%_
                                                          '2)))
                                                    (let ((_%tl2634326401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2735327354%_
                                                              '1)))
                                                          (_%target2634126398%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2735327354%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2634326401%_)
                                                          (let ((_%e2635026404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2634326401%_)))
                    (let ((_%tl2635226411%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2635026404%_)))
                          (_%hd2635126408%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2635026404%_))))
                      (if (gx#stx-pair? _%tl2635226411%_)
                          (let ((_%e2635326414%_
                                 (gx#syntax-e _%tl2635226411%_)))
                            (let ((_%tl2635526421%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2635326414%_)))
                                  (_%hd2635426418%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2635326414%_))))
                              (if (gx#stx-null? _%tl2635526421%_)
                                  (_%__match2742127422%_
                                   _%e2631426495%_
                                   _%hd2631526499%_
                                   _%tl2631626502%_
                                   _%e2631726505%_
                                   _%hd2631826509%_
                                   _%tl2631926512%_
                                   _%e2632026515%_
                                   _%hd2632126519%_
                                   _%tl2632226522%_
                                   _%__splice2735327354%_
                                   _%target2634126398%_
                                   _%tl2634326401%_
                                   _%e2635026404%_
                                   _%hd2635126408%_
                                   _%tl2635226411%_
                                   _%e2635326414%_
                                   _%hd2635426418%_
                                   _%tl2635526421%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2630926361%_)))))
                          (let () (declare (not safe)) (_%g2630926361%_)))))
                  (let () (declare (not safe)) (_%g2630926361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2630926361%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2630926361%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2630926361%_)))))
                          (let () (declare (not safe)) (_%g2630926361%_)))))
                  (let () (declare (not safe)) (_%g2630926361%_))))))))))
