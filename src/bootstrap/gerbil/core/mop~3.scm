(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27283_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24809%_)
        (letrec ((_%body-opt?24812%_
                  (lambda (_%key24815%_)
                    (let ((__tmp27255 (gx#stx-e _%key24815%_)))
                      (declare (not safe))
                      (##memq __tmp27255
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
          (gx#stx-plist? _%stx24809%_ _%body-opt?24812%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22572%_
               _%id22574%_
               _%super-ref22575%_
               _%slots22576%_
               _%body22577%_)
        (letrec ((_%wrap22579%_
                  (lambda (_%e-stx24806%_)
                    (gx#stx-wrap-source
                     _%e-stx24806%_
                     (gx#stx-source _%stx22572%_))))
                 (_%make-id22581%_
                  (lambda _%args24803%_
                    (apply gx#stx-identifier _%id22574%_ _%args24803%_)))
                 (_%get-mixin-slots22582%_
                  (lambda (_%super24773%_ _%slots24775%_)
                    (letrec* ((_%tab24777%_ (make-hash-table-eq))
                              (_%dedup24779%_
                               (lambda (_%mixins24790%_)
                                 (let _%lp24793%_ ((_%rest24796%_
                                                    _%mixins24790%_)
                                                   (_%r24798%_ '()))
                                   (if (pair? _%rest24796%_)
                                       (let ((_%slot24800%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24796%_))))
                                         (if (hash-get
                                              _%tab24777%_
                                              _%slot24800%_)
                                             (_%lp24793%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24796%_))
                                              _%r24798%_)
                                             (begin
                                               (hash-put!
                                                _%tab24777%_
                                                _%slot24800%_
                                                '#t)
                                               (_%lp24793%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24796%_))
                                                (cons _%slot24800%_
                                                      _%r24798%_)))))
                                       (reverse _%r24798%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24781%_)
                         (hash-put! _%tab24777%_ (gx#stx-e _%slot24781%_) '#t))
                       _%slots24775%_)
                      (if (not _%super24773%_)
                          '()
                          (if (gx#identifier? _%super24773%_)
                              (_%dedup24779%_
                               (_%get-mixin-slots-r22583%_ _%super24773%_))
                              (_%dedup24779%_
                               (concatenate
                                (map _%get-mixin-slots-r22583%_
                                     _%super24773%_))))))))
                 (_%get-mixin-slots-r22583%_
                  (lambda (_%type-id24767%_)
                    (let ((_%info24770%_
                           (gx#syntax-local-value _%type-id24767%_)))
                      (let ((__tmp27257
                             (let ((__obj27045 _%info24770%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27045
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27045
                                      '5
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27045
                                    'slots))))
                            (__tmp27256
                             (concatenate
                              (map _%get-mixin-slots-r22583%_
                                   (let ((__obj27046 _%info24770%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27046
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27046
                                            '4
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27046
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27257 __tmp27256))))))
          (gx#check-duplicate-identifiers _%slots22576%_ _%stx22572%_)
          (let* ((_%name22585%_ (symbol->string (gx#stx-e _%id22574%_)))
                 (_%super22588%_
                  (map gx#syntax-local-value _%super-ref22575%_))
                 (_%struct?22591%_ (gx#stx-getq 'struct: _%body22577%_))
                 (_%g2259422602%_
                  (lambda (_%g2259522598%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2259522598%_)))
                 (_%g2259324763%_
                  (lambda (_%g2259522606%_)
                    ((lambda (_%L22609%_)
                       (let* ((_%g2262522633%_
                               (lambda (_%g2262622629%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2262622629%_)))
                              (_%g2262424759%_
                               (lambda (_%g2262622637%_)
                                 ((lambda (_%L22640%_)
                                    (let* ((_%g2265322661%_
                                            (lambda (_%g2265422657%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2265422657%_)))
                                           (_%g2265224755%_
                                            (lambda (_%g2265422665%_)
                                              ((lambda (_%L22668%_)
                                                 (let* ((_%g2268122689%_
                                                         (lambda (_%g2268222685%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2268222685%_)))
                                                        (_%g2268024751%_
                                                         (lambda (_%g2268222693%_)
                                                           ((lambda (_%L22696%_)
                                                              (let* ((_%g2270922717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2271022713%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2271022713%_)))
                             (_%g2270824747%_
                              (lambda (_%g2271022721%_)
                                ((lambda (_%L22724%_)
                                   (let* ((_%g2273722754%_
                                           (lambda (_%g2273822750%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2273822750%_)))
                                          (_%g2273624743%_
                                           (lambda (_%g2273822758%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2273822758%_)
                                                 (let ((_g27258_
                                                        (gx#syntax-split-splice
                                                         _%g2273822758%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27259_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27258_)
                          (##values-length _g27258_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27259_ 2)))
                   (error "Context expects 2 values" _g27259_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2274022761%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27258_
                                                               0)))
                                                           (_%tl2274222764%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27258_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2274222764%_)
                                                           (letrec ((_%loop2274322767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2274122771%_ _%slot2274722774%_)
                               (if (gx#stx-pair? _%hd2274122771%_)
                                   (let ((_%e2274422777%_
                                          (gx#syntax-e _%hd2274122771%_)))
                                     (let ((_%lp-hd2274522781%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2274422777%_)))
                                           (_%lp-tl2274622784%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2274422777%_))))
                                       (_%loop2274322767%_
                                        _%lp-tl2274622784%_
                                        (cons _%lp-hd2274522781%_
                                              _%slot2274722774%_))))
                                   (let ((_%slot2274822787%_
                                          (reverse _%slot2274722774%_)))
                                     ((lambda (_%L22791%_)
                                        (let* ((_%g2280822825%_
                                                (lambda (_%g2280922821%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2280922821%_)))
                                               (_%g2280724734%_
                                                (lambda (_%g2280922829%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2280922829%_)
                                                      (let ((_g27260_
                                                             (gx#syntax-split-splice
                                                              _%g2280922829%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27260_)
                               (##values-length _g27260_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27261_ 2)))
                        (error "Context expects 2 values" _g27261_)))
                  (let ((_%target2281122832%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27260_ 0)))
                        (_%tl2281322835%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27260_ 1))))
                    (if (gx#stx-null? _%tl2281322835%_)
                        (letrec ((_%loop2281422838%_
                                  (lambda (_%hd2281222842%_ _%getf2281822845%_)
                                    (if (gx#stx-pair? _%hd2281222842%_)
                                        (let ((_%e2281522848%_
                                               (gx#syntax-e _%hd2281222842%_)))
                                          (let ((_%lp-hd2281622852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2281522848%_)))
                                                (_%lp-tl2281722855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2281522848%_))))
                                            (_%loop2281422838%_
                                             _%lp-tl2281722855%_
                                             (cons _%lp-hd2281622852%_
                                                   _%getf2281822845%_))))
                                        (let ((_%getf2281922858%_
                                               (reverse _%getf2281822845%_)))
                                          ((lambda (_%L22862%_)
                                             (let* ((_%g2287922896%_
                                                     (lambda (_%g2288022892%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2288022892%_)))
                                                    (_%g2287824725%_
                                                     (lambda (_%g2288022900%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2288022900%_)
                                                           (let ((_g27262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2288022900%_ '0)))
                     (begin
                       (let ((_g27263_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27262_)
                                    (##values-length _g27262_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27263_ 2)))
                             (error "Context expects 2 values" _g27263_)))
                       (let ((_%target2288222903%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27262_ 0)))
                             (_%tl2288422906%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27262_ 1))))
                         (if (gx#stx-null? _%tl2288422906%_)
                             (letrec ((_%loop2288522909%_
                                       (lambda (_%hd2288322913%_
                                                _%setf2288922916%_)
                                         (if (gx#stx-pair? _%hd2288322913%_)
                                             (let ((_%e2288622919%_
                                                    (gx#syntax-e
                                                     _%hd2288322913%_)))
                                               (let ((_%lp-hd2288722923%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2288622919%_)))
                                                     (_%lp-tl2288822926%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2288622919%_))))
                                                 (_%loop2288522909%_
                                                  _%lp-tl2288822926%_
                                                  (cons _%lp-hd2288722923%_
                                                        _%setf2288922916%_))))
                                             (let ((_%setf2289022929%_
                                                    (reverse _%setf2288922916%_)))
                                               ((lambda (_%L22933%_)
                                                  (let* ((_%mixin-slots22950%_
                                                          (_%get-mixin-slots22582%_
                                                           _%super-ref22575%_
                                                           _%slots22576%_))
                                                         (_%g2295322970%_
                                                          (lambda (_%g2295422966%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2295422966%_)))
                                                         (_%g2295224721%_
                                                          (lambda (_%g2295422974%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2295422974%_)
                        (let ((_g27264_
                               (gx#syntax-split-splice _%g2295422974%_ '0)))
                          (begin
                            (let ((_g27265_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27264_)
                                         (##values-length _g27264_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27265_ 2)))
                                  (error "Context expects 2 values" _g27265_)))
                            (let ((_%target2295622977%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27264_ 0)))
                                  (_%tl2295822980%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27264_ 1))))
                              (if (gx#stx-null? _%tl2295822980%_)
                                  (letrec ((_%loop2295922983%_
                                            (lambda (_%hd2295722987%_
                                                     _%mixin-slot2296322990%_)
                                              (if (gx#stx-pair?
                                                   _%hd2295722987%_)
                                                  (let ((_%e2296022993%_
                                                         (gx#syntax-e
                                                          _%hd2295722987%_)))
                                                    (let ((_%lp-hd2296122997%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2296022993%_)))
                                                          (_%lp-tl2296223000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2296022993%_))))
                                                      (_%loop2295922983%_
                                                       _%lp-tl2296223000%_
                                                       (cons _%lp-hd2296122997%_
                                                             _%mixin-slot2296322990%_))))
                                                  (let ((_%mixin-slot2296423003%_
                                                         (reverse _%mixin-slot2296322990%_)))
                                                    ((lambda (_%L23007%_)
                                                       (let* ((_%g2302523042%_
                                                               (lambda (_%g2302623038%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2302623038%_)))
                      (_%g2302424712%_
                       (lambda (_%g2302623046%_)
                         (if (gx#stx-pair/null? _%g2302623046%_)
                             (let ((_g27266_
                                    (gx#syntax-split-splice
                                     _%g2302623046%_
                                     '0)))
                               (begin
                                 (let ((_g27267_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27266_)
                                              (##values-length _g27266_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27267_ 2)))
                                       (error "Context expects 2 values"
                                              _g27267_)))
                                 (let ((_%target2302823049%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27266_ 0)))
                                       (_%tl2303023052%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27266_ 1))))
                                   (if (gx#stx-null? _%tl2303023052%_)
                                       (letrec ((_%loop2303123055%_
                                                 (lambda (_%hd2302923059%_
                                                          _%mixin-getf2303523062%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2302923059%_)
                                                       (let ((_%e2303223065%_
                                                              (gx#syntax-e
                                                               _%hd2302923059%_)))
                                                         (let ((_%lp-hd2303323069%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2303223065%_)))
                       (_%lp-tl2303423072%_
                        (let () (declare (not safe)) (##cdr _%e2303223065%_))))
                   (_%loop2303123055%_
                    _%lp-tl2303423072%_
                    (cons _%lp-hd2303323069%_ _%mixin-getf2303523062%_))))
               (let ((_%mixin-getf2303623075%_
                      (reverse _%mixin-getf2303523062%_)))
                 ((lambda (_%L23079%_)
                    (let* ((_%g2309623113%_
                            (lambda (_%g2309723109%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2309723109%_)))
                           (_%g2309524703%_
                            (lambda (_%g2309723117%_)
                              (if (gx#stx-pair/null? _%g2309723117%_)
                                  (let ((_g27268_
                                         (gx#syntax-split-splice
                                          _%g2309723117%_
                                          '0)))
                                    (begin
                                      (let ((_g27269_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27268_)
                                                   (##values-length _g27268_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27269_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27269_)))
                                      (let ((_%target2309923120%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27268_ 0)))
                                            (_%tl2310123123%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27268_ 1))))
                                        (if (gx#stx-null? _%tl2310123123%_)
                                            (letrec ((_%loop2310223126%_
                                                      (lambda (_%hd2310023130%_
                                                               _%mixin-setf2310623133%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2310023130%_)
                                                            (let ((_%e2310323136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2310023130%_)))
                      (let ((_%lp-hd2310423140%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2310323136%_)))
                            (_%lp-tl2310523143%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2310323136%_))))
                        (_%loop2310223126%_
                         _%lp-tl2310523143%_
                         (cons _%lp-hd2310423140%_ _%mixin-setf2310623133%_))))
                    (let ((_%mixin-setf2310723146%_
                           (reverse _%mixin-setf2310623133%_)))
                      ((lambda (_%L23150%_)
                         (let* ((_%g2316723184%_
                                 (lambda (_%g2316823180%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2316823180%_)))
                                (_%g2316624686%_
                                 (lambda (_%g2316823188%_)
                                   (if (gx#stx-pair/null? _%g2316823188%_)
                                       (let ((_g27270_
                                              (gx#syntax-split-splice
                                               _%g2316823188%_
                                               '0)))
                                         (begin
                                           (let ((_g27271_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27270_)
                                                        (##values-length
                                                         _g27270_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27271_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27271_)))
                                           (let ((_%target2317023191%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27270_ 0)))
                                                 (_%tl2317223194%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27270_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2317223194%_)
                                                 (letrec ((_%loop2317323197%_
                                                           (lambda (_%hd2317123201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2317723204%_)
                     (if (gx#stx-pair? _%hd2317123201%_)
                         (let ((_%e2317423207%_
                                (gx#syntax-e _%hd2317123201%_)))
                           (let ((_%lp-hd2317523211%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2317423207%_)))
                                 (_%lp-tl2317623214%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2317423207%_))))
                             (_%loop2317323197%_
                              _%lp-tl2317623214%_
                              (cons _%lp-hd2317523211%_ _%ugetf2317723204%_))))
                         (let ((_%ugetf2317823217%_
                                (reverse _%ugetf2317723204%_)))
                           ((lambda (_%L23221%_)
                              (let* ((_%g2323823255%_
                                      (lambda (_%g2323923251%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2323923251%_)))
                                     (_%g2323724669%_
                                      (lambda (_%g2323923259%_)
                                        (if (gx#stx-pair/null? _%g2323923259%_)
                                            (let ((_g27272_
                                                   (gx#syntax-split-splice
                                                    _%g2323923259%_
                                                    '0)))
                                              (begin
                                                (let ((_g27273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27272_)
                                                             (##values-length
                                                              _g27272_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27273_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2324123262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27272_
                                                          0)))
                                                      (_%tl2324323265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27272_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2324323265%_)
                                                      (letrec ((_%loop2324423268%_
                                                                (lambda (_%hd2324223272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2324823275%_)
                          (if (gx#stx-pair? _%hd2324223272%_)
                              (let ((_%e2324523278%_
                                     (gx#syntax-e _%hd2324223272%_)))
                                (let ((_%lp-hd2324623282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2324523278%_)))
                                      (_%lp-tl2324723285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2324523278%_))))
                                  (_%loop2324423268%_
                                   _%lp-tl2324723285%_
                                   (cons _%lp-hd2324623282%_
                                         _%usetf2324823275%_))))
                              (let ((_%usetf2324923288%_
                                     (reverse _%usetf2324823275%_)))
                                ((lambda (_%L23292%_)
                                   (let* ((_%g2330923326%_
                                           (lambda (_%g2331023322%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2331023322%_)))
                                          (_%g2330824652%_
                                           (lambda (_%g2331023330%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2331023330%_)
                                                 (let ((_g27274_
                                                        (gx#syntax-split-splice
                                                         _%g2331023330%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27275_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27274_)
                          (##values-length _g27274_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27275_ 2)))
                   (error "Context expects 2 values" _g27275_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2331223333%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27274_
                                                               0)))
                                                           (_%tl2331423336%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27274_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2331423336%_)
                                                           (letrec ((_%loop2331523339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2331323343%_
                                      _%mixin-ugetf2331923346%_)
                               (if (gx#stx-pair? _%hd2331323343%_)
                                   (let ((_%e2331623349%_
                                          (gx#syntax-e _%hd2331323343%_)))
                                     (let ((_%lp-hd2331723353%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2331623349%_)))
                                           (_%lp-tl2331823356%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2331623349%_))))
                                       (_%loop2331523339%_
                                        _%lp-tl2331823356%_
                                        (cons _%lp-hd2331723353%_
                                              _%mixin-ugetf2331923346%_))))
                                   (let ((_%mixin-ugetf2332023359%_
                                          (reverse _%mixin-ugetf2331923346%_)))
                                     ((lambda (_%L23363%_)
                                        (let* ((_%g2338023397%_
                                                (lambda (_%g2338123393%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2338123393%_)))
                                               (_%g2337924635%_
                                                (lambda (_%g2338123401%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2338123401%_)
                                                      (let ((_g27276_
                                                             (gx#syntax-split-splice
                                                              _%g2338123401%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27276_)
                               (##values-length _g27276_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27277_ 2)))
                        (error "Context expects 2 values" _g27277_)))
                  (let ((_%target2338323404%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27276_ 0)))
                        (_%tl2338523407%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27276_ 1))))
                    (if (gx#stx-null? _%tl2338523407%_)
                        (letrec ((_%loop2338623410%_
                                  (lambda (_%hd2338423414%_
                                           _%mixin-usetf2339023417%_)
                                    (if (gx#stx-pair? _%hd2338423414%_)
                                        (let ((_%e2338723420%_
                                               (gx#syntax-e _%hd2338423414%_)))
                                          (let ((_%lp-hd2338823424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2338723420%_)))
                                                (_%lp-tl2338923427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2338723420%_))))
                                            (_%loop2338623410%_
                                             _%lp-tl2338923427%_
                                             (cons _%lp-hd2338823424%_
                                                   _%mixin-usetf2339023417%_))))
                                        (let ((_%mixin-usetf2339123430%_
                                               (reverse _%mixin-usetf2339023417%_)))
                                          ((lambda (_%L23434%_)
                                             (let* ((_%type-slots23469%_
                                                     (if (gx#stx-null?
                                                          _%slots22576%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L22933%_
                                _%L22862%_
                                _%L22791%_)
                               (foldr (lambda (_%g2345423459%_
                                               _%g2345523462%_
                                               _%g2345623464%_
                                               _%g2345723466%_)
                                        (cons (cons _%g2345623464%_
                                                    (cons _%g2345523462%_
                                                          (cons _%g2345423459%_
                                                                '())))
                                              _%g2345723466%_))
                                      '()
                                      _%L22933%_
                                      _%L22862%_
                                      _%L22791%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23490%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots22950%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L23150%_
                                _%L23079%_
                                _%L23007%_)
                               (foldr (lambda (_%g2347523480%_
                                               _%g2347623483%_
                                               _%g2347723485%_
                                               _%g2347823487%_)
                                        (cons (cons _%g2347723485%_
                                                    (cons _%g2347623483%_
                                                          (cons _%g2347523480%_
                                                                '())))
                                              _%g2347823487%_))
                                      '()
                                      _%L23150%_
                                      _%L23079%_
                                      _%L23007%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23497%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22577%_)))
                           (if _%$e23493%_ _%$e23493%_ _%id22574%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23504%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22577%_)))
                           (if _%$e23500%_
                               _%$e23500%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%L22609%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23519%_
                                                     (let ((_%$e23515%_
                                                            (let ((_%e2350623508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22577%_)))
                      (if _%e2350623508%_
                          (let ((_%e23512%_ _%e2350623508%_))
                            (cons 'constructor: (cons _%e23512%_ '())))
                          '#f))))
               (if _%$e23515%_ _%$e23515%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23560%_
                                                     (let* ((_%properties23522%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22577%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23537%_
                     (let ((_%$e23525%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22577%_))))
                       (if _%$e23525%_
                           ((lambda (_%print23529%_)
                              (let ((_%print23532%_
                                     (if (eq? _%print23529%_ '#t)
                                         _%slots22576%_
                                         _%print23529%_)))
                                (cons (cons 'print: _%print23532%_)
                                      _%properties23522%_)))
                            _%$e23525%_)
                           _%properties23522%_)))
                    (_%properties23552%_
                     (let ((_%$e23540%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22577%_))))
                       (if _%$e23540%_
                           ((lambda (_%equal23544%_)
                              (let ((_%equal23547%_
                                     (if (eq? _%equal23544%_ '#t)
                                         _%slots22576%_
                                         _%equal23544%_)))
                                (cons (cons 'equal: _%equal23547%_)
                                      _%properties23537%_)))
                            _%$e23540%_)
                           _%properties23537%_)))
                    (_%properties23555%_
                     (if (gx#stx-e (gx#stx-getq 'acyclic: _%body22577%_))
                         (cons (cons 'acyclic: '#t) '())
                         '())))
               _%properties23555%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23601%_
                                                     (if (null? _%properties23560%_)
                                                         '()
                                                         (let* ((_%g2356323571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2356423567%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2356423567%_)))
                        (_%g2356223597%_
                         (lambda (_%g2356423575%_)
                           ((lambda (_%L23578%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%L23578%_ '()))
                                          '())))
                            _%g2356423575%_))))
                   (_%g2356223597%_ _%properties23560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23613%_
                                                     (let ((_%$e23604%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22577%_)))
                                                       (if _%$e23604%_
                                                           ((lambda (_%metaclass23608%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23608%_)
                          _%metaclass23608%_
                          '#f))
                    _%$e23604%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23616%_
                                                     (if _%metaclass23613%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23619%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22577%_)))
                                                    (_%type-struct23622%_
                                                     (cons 'struct:
                                                           (cons _%struct?22591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23625%_
                                                     (cons 'final:
                                                           (cons _%final?23619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2362823645%_
                                                     (lambda (_%g2362923641%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2362923641%_)))
                                                    (_%g2362724631%_
                                                     (lambda (_%g2362923649%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2362923649%_)
                                                           (let ((_g27278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2362923649%_ '0)))
                     (begin
                       (let ((_g27279_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27278_)
                                    (##values-length _g27278_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27279_ 2)))
                             (error "Context expects 2 values" _g27279_)))
                       (let ((_%target2363123652%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27278_ 0)))
                             (_%tl2363323655%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27278_ 1))))
                         (if (gx#stx-null? _%tl2363323655%_)
                             (letrec ((_%loop2363423658%_
                                       (lambda (_%hd2363223662%_
                                                _%type-body2363823665%_)
                                         (if (gx#stx-pair? _%hd2363223662%_)
                                             (let ((_%e2363523668%_
                                                    (gx#syntax-e
                                                     _%hd2363223662%_)))
                                               (let ((_%lp-hd2363623672%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2363523668%_)))
                                                     (_%lp-tl2363723675%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2363523668%_))))
                                                 (_%loop2363423658%_
                                                  _%lp-tl2363723675%_
                                                  (cons _%lp-hd2363623672%_
                                                        _%type-body2363823665%_))))
                                             (let ((_%type-body2363923678%_
                                                    (reverse _%type-body2363823665%_)))
                                               ((lambda (_%L23682%_)
                                                  (let* ((_%g2370323711%_
                                                          (lambda (_%g2370423707%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2370423707%_)))
                                                         (_%g2370224619%_
                                                          (lambda (_%g2370423715%_)
                                                            ((lambda (_%L23718%_)
                                                               (let* ((_%g2373123739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2373223735%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2373223735%_)))
                              (_%g2373024548%_
                               (lambda (_%g2373223743%_)
                                 ((lambda (_%L23746%_)
                                    (let* ((_%g2375923767%_
                                            (lambda (_%g2376023763%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2376023763%_)))
                                           (_%g2375824513%_
                                            (lambda (_%g2376023771%_)
                                              ((lambda (_%L23774%_)
                                                 (let* ((_%g2378723795%_
                                                         (lambda (_%g2378823791%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2378823791%_)))
                                                        (_%g2378624427%_
                                                         (lambda (_%g2378823799%_)
                                                           ((lambda (_%L23802%_)
                                                              (let* ((_%g2381523823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2381623819%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2381623819%_)))
                             (_%g2381424415%_
                              (lambda (_%g2381623827%_)
                                ((lambda (_%L23830%_)
                                   (let* ((_%g2384323851%_
                                           (lambda (_%g2384423847%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2384423847%_)))
                                          (_%g2384224411%_
                                           (lambda (_%g2384423855%_)
                                             ((lambda (_%L23858%_)
                                                (let* ((_%g2387123879%_
                                                        (lambda (_%g2387223875%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2387223875%_)))
                                                       (_%g2387024407%_
                                                        (lambda (_%g2387223883%_)
                                                          ((lambda (_%L23886%_)
                                                             (let* ((_%g2389923907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2390023903%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2390023903%_)))
                            (_%g2389824372%_
                             (lambda (_%g2390023911%_)
                               ((lambda (_%L23914%_)
                                  (let* ((_%g2392723935%_
                                          (lambda (_%g2392823931%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2392823931%_)))
                                         (_%g2392624301%_
                                          (lambda (_%g2392823939%_)
                                            ((lambda (_%L23942%_)
                                               (let* ((_%g2395523963%_
                                                       (lambda (_%g2395623959%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2395623959%_)))
                                                      (_%g2395424297%_
                                                       (lambda (_%g2395623967%_)
                                                         ((lambda (_%L23970%_)
                                                            (let* ((_%g2398323991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2398423987%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2398423987%_)))
                           (_%g2398224293%_
                            (lambda (_%g2398423995%_)
                              ((lambda (_%L23998%_)
                                 (let* ((_%g2401124019%_
                                         (lambda (_%g2401224015%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2401224015%_)))
                                        (_%g2401024289%_
                                         (lambda (_%g2401224023%_)
                                           ((lambda (_%L24026%_)
                                              (let* ((_%g2403924047%_
                                                      (lambda (_%g2404024043%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2404024043%_)))
                                                     (_%g2403824263%_
                                                      (lambda (_%g2404024051%_)
                                                        ((lambda (_%L24054%_)
                                                           (let* ((_%g2406724075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2406824071%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2406824071%_)))
                          (_%g2406624237%_
                           (lambda (_%g2406824079%_)
                             ((lambda (_%L24082%_)
                                (let* ((_%g2409524103%_
                                        (lambda (_%g2409624099%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2409624099%_)))
                                       (_%g2409424211%_
                                        (lambda (_%g2409624107%_)
                                          ((lambda (_%L24110%_)
                                             (let* ((_%g2412324131%_
                                                     (lambda (_%g2412424127%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2412424127%_)))
                                                    (_%g2412224185%_
                                                     (lambda (_%g2412424135%_)
                                                       ((lambda (_%L24138%_)
                                                          (let* ((_%g2415124159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2415224155%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2415224155%_)))
                         (_%g2415024181%_
                          (lambda (_%g2415224163%_)
                            ((lambda (_%L24166%_)
                               (_%wrap22579%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%L23718%_
                                            (cons _%L24166%_ '())))))
                             _%g2415224163%_))))
                    (_%g2415024181%_
                     (_%wrap22579%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%L22609%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%L23746%_
                                                          (cons 'name:
                                                                (cons _%L23774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%L23830%_
                                          (cons 'super:
                                                (cons _%L23802%_
                                                      (cons 'struct?:
                                                            (cons _%L23858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%L23886%_
                                      (cons 'metaclass:
                                            (cons _%L23914%_
                                                  (cons 'constructor-method:
                                                        (cons _%L23942%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L23970%_
                                  (cons 'constructor:
                                        (cons _%L23998%_
                                              (cons 'predicate:
                                                    (cons _%L24026%_
                                                          (cons 'accessors:
                                                                (cons _%L24054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%L24082%_
                                          (cons 'unchecked-accessors:
                                                (cons _%L24110%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%L24138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2412424135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2412224185%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%L23292%_
                                                         _%L22791%_)
                                                        (foldr (lambda (_%g2418824195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2418924198%_
                                _%g2419024200%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2418924198%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2418824195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2419024200%_))
                       (begin
                         (gx#syntax-check-splice-targets _%L23434%_ _%L23007%_)
                         (foldr (lambda (_%g2419124203%_
                                         _%g2419224206%_
                                         _%g2419324208%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2419224206%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2419124203%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2419324208%_))
                                '()
                                _%L23434%_
                                _%L23007%_))
                       _%L23292%_
                       _%L22791%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2409624107%_))))
                                  (_%g2409424211%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%L23221%_
                                            _%L22791%_)
                                           (foldr (lambda (_%g2421424221%_
                                                           _%g2421524224%_
                                                           _%g2421624226%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2421524224%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2421424221%_ '()))
                                          '()))))
                  _%g2421624226%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L23363%_
                                                     _%L23007%_)
                                                    (foldr (lambda (_%g2421724229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2421824232%_
                            _%g2421924234%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2421824232%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2421724229%_
                                                               '()))
                                                   '()))))
                           _%g2421924234%_))
                   '()
                   _%L23363%_
                   _%L23007%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%L23221%_
                                                  _%L22791%_))))))
                              _%g2406824079%_))))
                     (_%g2406624237%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%L22933%_
                               _%L22791%_)
                              (foldr (lambda (_%g2424024247%_
                                              _%g2424124250%_
                                              _%g2424224252%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2424124250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2424024247%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2424224252%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%L23150%_
                                        _%L23007%_)
                                       (foldr (lambda (_%g2424324255%_
                                                       _%g2424424258%_
                                                       _%g2424524260%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2424424258%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2424324255%_ '()))
                                      '()))))
              _%g2424524260%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L23150%_
                                              _%L23007%_))
                                     _%L22933%_
                                     _%L22791%_))))))
                 _%g2404024051%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2403824263%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%L22862%_
                                                          _%L22791%_)
                                                         (foldr (lambda (_%g2426624273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2426724276%_
                                 _%g2426824278%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2426724276%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2426624273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2426824278%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%L23079%_
                           _%L23007%_)
                          (foldr (lambda (_%g2426924281%_
                                          _%g2427024284%_
                                          _%g2427124286%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2427024284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2426924281%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2427124286%_))
                                 '()
                                 _%L23079%_
                                 _%L23007%_))
                        _%L22862%_
                        _%L22791%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2401224023%_))))
                                   (_%g2401024289%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%L22696%_ '())))))
                               _%g2398423995%_))))
                      (_%g2398224293%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%L22668%_ '())))))
                  _%g2395623967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2395424297%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%L22640%_
                                                              '())))))
                                             _%g2392823939%_))))
                                    (_%g2392624301%_
                                     (if (null? _%type-constructor23519%_)
                                         '#f
                                         (let* ((_%g2430524320%_
                                                 (lambda (_%g2430624316%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2430624316%_)))
                                                (_%g2430424368%_
                                                 (lambda (_%g2430624324%_)
                                                   (if (gx#stx-pair?
                                                        _%g2430624324%_)
                                                       (let ((_%e2430824327%_
                                                              (gx#syntax-e
                                                               _%g2430624324%_)))
                                                         (let ((_%hd2430924331%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2430824327%_)))
                       (_%tl2431024334%_
                        (let () (declare (not safe)) (##cdr _%e2430824327%_))))
                   (if (gx#stx-datum? _%hd2430924331%_)
                       (let ((_%e2431124337%_ (gx#stx-e _%hd2430924331%_)))
                         (if (equal? _%e2431124337%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2431024334%_)
                                 (let ((_%e2431224341%_
                                        (gx#syntax-e _%tl2431024334%_)))
                                   (let ((_%hd2431324345%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2431224341%_)))
                                         (_%tl2431424348%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2431224341%_))))
                                     (if (gx#stx-null? _%tl2431424348%_)
                                         ((lambda (_%L24351%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L24351%_ '())))
                                          _%hd2431324345%_)
                                         (_%g2430524320%_ _%g2430624324%_))))
                                 (_%g2430524320%_ _%g2430624324%_))
                             (_%g2430524320%_ _%g2430624324%_)))
                       (_%g2430524320%_ _%g2430624324%_))))
               (_%g2430524320%_ _%g2430624324%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2430424368%_
                                            _%type-constructor23519%_))))))
                                _%g2390023911%_))))
                       (_%g2389824372%_
                        (if _%metaclass23613%_
                            (let* ((_%g2437624384%_
                                    (lambda (_%g2437724380%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2437724380%_)))
                                   (_%g2437524403%_
                                    (lambda (_%g2437724388%_)
                                      ((lambda (_%L24391%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%L24391%_ '())))
                                       _%g2437724388%_))))
                              (_%g2437524403%_ _%metaclass23613%_))
                            '#f))))
                   _%g2387223883%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2387024407%_
                                                   _%final?23619%_)))
                                              _%g2384423855%_))))
                                     (_%g2384224411%_ _%struct?22591%_)))
                                 _%g2381623827%_))))
                        (_%g2381424415%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2441824421%_
                                                     _%g2441924424%_)
                                              (cons _%g2441824421%_
                                                    _%g2441924424%_))
                                            '()
                                            _%L22791%_)
                                     '())))))
                    _%g2378823799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2378624427%_
                                                    (let* ((_%g2443124448%_
                                                            (lambda (_%g2443224444%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2443224444%_)))
                                                           (_%g2443024509%_
                                                            (lambda (_%g2443224452%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2443224452%_)
                          (let ((_g27280_
                                 (gx#syntax-split-splice _%g2443224452%_ '0)))
                            (begin
                              (let ((_g27281_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27280_)
                                           (##values-length _g27280_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27281_ 2)))
                                    (error "Context expects 2 values"
                                           _g27281_)))
                              (let ((_%target2443424455%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27280_ 0)))
                                    (_%tl2443624458%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27280_ 1))))
                                (if (gx#stx-null? _%tl2443624458%_)
                                    (letrec ((_%loop2443724461%_
                                              (lambda (_%hd2443524465%_
                                                       _%super-id2444124468%_)
                                                (if (gx#stx-pair?
                                                     _%hd2443524465%_)
                                                    (let ((_%e2443824471%_
                                                           (gx#syntax-e
                                                            _%hd2443524465%_)))
                                                      (let ((_%lp-hd2443924475%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2443824471%_)))
                    (_%lp-tl2444024478%_
                     (let () (declare (not safe)) (##cdr _%e2443824471%_))))
                (_%loop2443724461%_
                 _%lp-tl2444024478%_
                 (cons _%lp-hd2443924475%_ _%super-id2444124468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2444224481%_
                                                           (reverse _%super-id2444124468%_)))
                                                      ((lambda (_%L24485%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2450024503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2450124506%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2450024503%_ '()))
                                      _%g2450124506%_))
                              '()
                              _%L24485%_)))
               _%super-id2444224481%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2443724461%_
                                       _%target2443424455%_
                                       '()))
                                    (_%g2443124448%_ _%g2443224452%_)))))
                          (_%g2443124448%_ _%g2443224452%_)))))
              (_%g2443024509%_ _%super-ref22575%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2376023771%_))))
                                      (_%g2375824513%_
                                       (let* ((_%g2451724525%_
                                               (lambda (_%g2451824521%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2451824521%_)))
                                              (_%g2451624544%_
                                               (lambda (_%g2451824529%_)
                                                 ((lambda (_%L24532%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%L24532%_
                                                                '())))
                                                  _%g2451824529%_))))
                                         (_%g2451624544%_
                                          (cadr _%type-name23497%_))))))
                                  _%g2373223743%_))))
                         (_%g2373024548%_
                          (let* ((_%g2455224567%_
                                  (lambda (_%g2455324563%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2455324563%_)))
                                 (_%g2455124615%_
                                  (lambda (_%g2455324571%_)
                                    (if (gx#stx-pair? _%g2455324571%_)
                                        (let ((_%e2455524574%_
                                               (gx#syntax-e _%g2455324571%_)))
                                          (let ((_%hd2455624578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2455524574%_)))
                                                (_%tl2455724581%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2455524574%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2455624578%_)
                                                (let ((_%e2455824584%_
                                                       (gx#stx-e
                                                        _%hd2455624578%_)))
                                                  (if (equal? _%e2455824584%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2455724581%_)
                                                          (let ((_%e2455924588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2455724581%_)))
                    (let ((_%hd2456024592%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2455924588%_)))
                          (_%tl2456124595%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2455924588%_))))
                      (if (gx#stx-null? _%tl2456124595%_)
                          ((lambda (_%L24598%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%L24598%_ '())))
                           _%hd2456024592%_)
                          (_%g2455224567%_ _%g2455324571%_))))
                  (_%g2455224567%_ _%g2455324571%_))
              (_%g2455224567%_ _%g2455324571%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2455224567%_
                                                 _%g2455324571%_))))
                                        (_%g2455224567%_ _%g2455324571%_)))))
                            (_%g2455124615%_ _%type-id23504%_)))))
                     _%g2370423715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2370224619%_
                                                     (_%wrap22579%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%L22640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L22724%_
                                (cons _%L22668%_
                                      (cons _%L22696%_
                                            (foldr (lambda (_%g2462224625%_
                                                            _%g2462324628%_)
                                                     (cons _%g2462224625%_
                                                           _%g2462324628%_))
                                                   '()
                                                   _%L23682%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2363923678%_))))))
                               (_%loop2363423658%_ _%target2363123652%_ '()))
                             (_%g2362823645%_ _%g2362923649%_)))))
                   (_%g2362823645%_ _%g2362923649%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2362724631%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23490%_
                                                                _%type-slots23469%_)
                                                         _%type-properties23601%_)
                                                  _%type-metaclass23616%_)
                                           _%type-final23625%_)
                                    _%type-struct23622%_)
                             _%type-constructor23519%_)
                      _%type-name23497%_)
               _%type-id23504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2339123430%_))))))
                          (_%loop2338623410%_ _%target2338323404%_ '()))
                        (_%g2338023397%_ _%g2338123401%_)))))
              (_%g2338023397%_ _%g2338123401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2337924635%_
                                           (gx#stx-map
                                            (lambda (_%g2463824640%_)
                                              (_%make-id22581%_
                                               '"&"
                                               _%g2463824640%_))
                                            (foldr (lambda (_%g2464324646%_
                                                            _%g2464424649%_)
                                                     (cons _%g2464324646%_
                                                           _%g2464424649%_))
                                                   '()
                                                   _%L23150%_)))))
                                      _%mixin-ugetf2332023359%_))))))
                     (_%loop2331523339%_ _%target2331223333%_ '()))
                   (_%g2330923326%_ _%g2331023330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2330923326%_
                                                  _%g2331023330%_)))))
                                     (_%g2330824652%_
                                      (gx#stx-map
                                       (lambda (_%g2465524657%_)
                                         (_%make-id22581%_
                                          '"&"
                                          _%g2465524657%_))
                                       (foldr (lambda (_%g2466024663%_
                                                       _%g2466124666%_)
                                                (cons _%g2466024663%_
                                                      _%g2466124666%_))
                                              '()
                                              _%L23079%_)))))
                                 _%usetf2324923288%_))))))
                (_%loop2324423268%_ _%target2324123262%_ '()))
              (_%g2323823255%_ _%g2323923259%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2323823255%_
                                             _%g2323923259%_)))))
                                (_%g2323724669%_
                                 (gx#stx-map
                                  (lambda (_%g2467224674%_)
                                    (_%make-id22581%_ '"&" _%g2467224674%_))
                                  (foldr (lambda (_%g2467724680%_
                                                  _%g2467824683%_)
                                           (cons _%g2467724680%_
                                                 _%g2467824683%_))
                                         '()
                                         _%L22933%_)))))
                            _%ugetf2317823217%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2317323197%_
                                                    _%target2317023191%_
                                                    '()))
                                                 (_%g2316723184%_
                                                  _%g2316823188%_)))))
                                       (_%g2316723184%_ _%g2316823188%_)))))
                           (_%g2316624686%_
                            (gx#stx-map
                             (lambda (_%g2468924691%_)
                               (_%make-id22581%_ '"&" _%g2468924691%_))
                             (foldr (lambda (_%g2469424697%_ _%g2469524700%_)
                                      (cons _%g2469424697%_ _%g2469524700%_))
                                    '()
                                    _%L22862%_)))))
                       _%mixin-setf2310723146%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2310223126%_
                                               _%target2309923120%_
                                               '()))
                                            (_%g2309623113%_
                                             _%g2309723117%_)))))
                                  (_%g2309623113%_ _%g2309723117%_)))))
                      (_%g2309524703%_
                       (gx#stx-map
                        (lambda (_%g2470624708%_)
                          (_%make-id22581%_
                           _%name22585%_
                           '"-"
                           _%g2470624708%_
                           '"-set!"))
                        _%mixin-slots22950%_))))
                  _%mixin-getf2303623075%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2303123055%_
                                          _%target2302823049%_
                                          '()))
                                       (_%g2302523042%_ _%g2302623046%_)))))
                             (_%g2302523042%_ _%g2302623046%_)))))
                 (_%g2302424712%_
                  (gx#stx-map
                   (lambda (_%g2471524717%_)
                     (_%make-id22581%_ _%name22585%_ '"-" _%g2471524717%_))
                   _%mixin-slots22950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2296423003%_))))))
                                    (_%loop2295922983%_
                                     _%target2295622977%_
                                     '()))
                                  (_%g2295322970%_ _%g2295422974%_)))))
                        (_%g2295322970%_ _%g2295422974%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2295224721%_
                                                     _%mixin-slots22950%_)))
                                                _%setf2289022929%_))))))
                               (_%loop2288522909%_ _%target2288222903%_ '()))
                             (_%g2287922896%_ _%g2288022900%_)))))
                   (_%g2287922896%_ _%g2288022900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2287824725%_
                                                (gx#stx-map
                                                 (lambda (_%g2472824730%_)
                                                   (_%make-id22581%_
                                                    _%name22585%_
                                                    '"-"
                                                    _%g2472824730%_
                                                    '"-set!"))
                                                 _%slots22576%_))))
                                           _%getf2281922858%_))))))
                          (_%loop2281422838%_ _%target2281122832%_ '()))
                        (_%g2280822825%_ _%g2280922829%_)))))
              (_%g2280822825%_ _%g2280922829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2280724734%_
                                           (gx#stx-map
                                            (lambda (_%g2473724739%_)
                                              (_%make-id22581%_
                                               _%name22585%_
                                               '"-"
                                               _%g2473724739%_))
                                            _%slots22576%_))))
                                      _%slot2274822787%_))))))
                     (_%loop2274322767%_ _%target2274022761%_ '()))
                   (_%g2273722754%_ _%g2273822758%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2273722754%_
                                                  _%g2273822758%_)))))
                                     (_%g2273624743%_ _%slots22576%_)))
                                 _%g2271022721%_))))
                        (_%g2270824747%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22588%_)))))
                    _%g2268222693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2268024751%_
                                                    (_%make-id22581%_
                                                     _%name22585%_
                                                     '"?"))))
                                               _%g2265422665%_))))
                                      (_%g2265224755%_
                                       (_%make-id22581%_
                                        '"make-"
                                        _%name22585%_))))
                                  _%g2262622637%_))))
                         (_%g2262424759%_
                          (_%make-id22581%_ _%name22585%_ '"::t"))))
                     _%g2259522606%_))))
            (_%g2259324763%_ _%id22574%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24830%_)
        (let* ((_%g2483424853%_
                (lambda (_%g2483524849%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2483524849%_)))
               (_%g2483324910%_
                (lambda (_%g2483524857%_)
                  (if (gx#stx-pair? _%g2483524857%_)
                      (let ((_%e2483924860%_ (gx#syntax-e _%g2483524857%_)))
                        (let ((_%hd2484024864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2483924860%_)))
                              (_%tl2484124867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2483924860%_))))
                          (if (gx#stx-pair? _%tl2484124867%_)
                              (let ((_%e2484224870%_
                                     (gx#syntax-e _%tl2484124867%_)))
                                (let ((_%hd2484324874%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2484224870%_)))
                                      (_%tl2484424877%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2484224870%_))))
                                  (if (gx#stx-pair? _%tl2484424877%_)
                                      (let ((_%e2484524880%_
                                             (gx#syntax-e _%tl2484424877%_)))
                                        (let ((_%hd2484624884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2484524880%_)))
                                              (_%tl2484724887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2484524880%_))))
                                          ((lambda (_%L24890%_
                                                    _%L24892%_
                                                    _%L24893%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%L24893%_
                                                         (cons _%L24892%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L24890%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2484724887%_
                                           _%hd2484624884%_
                                           _%hd2484324874%_)))
                                      (_%g2483424853%_ _%g2483524857%_))))
                              (_%g2483424853%_ _%g2483524857%_))))
                      (_%g2483424853%_ _%g2483524857%_)))))
          (_%g2483324910%_ _%$stx24830%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24914%_)
        (letrec ((_%generate24917%_
                  (lambda (_%hd25001%_ _%slots25003%_ _%body25004%_)
                    (let* ((_%__stx2676926770%_ _%hd25001%_)
                           (_%g2500725019%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2676926770%_))))
                      (let ((_%__kont2677226773%_
                             (lambda (_%L25047%_ _%L25049%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24914%_
                                _%L25049%_
                                (gx#syntax->list _%L25047%_)
                                _%slots25003%_
                                _%body25004%_)))
                            (_%__kont2677426775%_
                             (lambda ()
                               (if (gx#identifier? _%hd25001%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24914%_
                                    _%hd25001%_
                                    '()
                                    _%slots25003%_
                                    _%body25004%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx24914%_
                                    _%hd25001%_)))))
                        (let ((_%__match2678226783%_
                               (lambda (_%e2501125037%_
                                        _%hd2501225041%_
                                        _%tl2501325044%_)
                                 (let ((_%L25047%_ _%tl2501325044%_)
                                       (_%L25049%_ _%hd2501225041%_))
                                   (if (and (gx#stx-list? _%L25047%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%L25047%_))
                                       (_%__kont2677226773%_
                                        _%L25047%_
                                        _%L25049%_)
                                       (_%__kont2677426775%_))))))
                          (if (gx#stx-pair? _%__stx2676926770%_)
                              (let ((_%e2501125037%_
                                     (gx#syntax-e _%__stx2676926770%_)))
                                (let ((_%tl2501325044%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2501125037%_)))
                                      (_%hd2501225041%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2501125037%_))))
                                  (_%__match2678226783%_
                                   _%e2501125037%_
                                   _%hd2501225041%_
                                   _%tl2501325044%_)))
                              (_%__kont2677426775%_))))))))
          (let* ((_%g2492024939%_
                  (lambda (_%g2492124935%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2492124935%_)))
                 (_%g2491924997%_
                  (lambda (_%g2492124943%_)
                    (if (gx#stx-pair? _%g2492124943%_)
                        (let ((_%e2492524946%_ (gx#syntax-e _%g2492124943%_)))
                          (let ((_%hd2492624950%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2492524946%_)))
                                (_%tl2492724953%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2492524946%_))))
                            (if (gx#stx-pair? _%tl2492724953%_)
                                (let ((_%e2492824956%_
                                       (gx#syntax-e _%tl2492724953%_)))
                                  (let ((_%hd2492924960%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2492824956%_)))
                                        (_%tl2493024963%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2492824956%_))))
                                    (if (gx#stx-pair? _%tl2493024963%_)
                                        (let ((_%e2493124966%_
                                               (gx#syntax-e _%tl2493024963%_)))
                                          (let ((_%hd2493224970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2493124966%_)))
                                                (_%tl2493324973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2493124966%_))))
                                            ((lambda (_%L24976%_
                                                      _%L24978%_
                                                      _%L24979%_)
                                               (if (and (gx#identifier-list?
                                                         _%L24978%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%L24976%_))
                                                   (_%generate24917%_
                                                    _%L24979%_
                                                    _%L24978%_
                                                    _%L24976%_)
                                                   (_%g2492024939%_
                                                    _%g2492124943%_)))
                                             _%tl2493324973%_
                                             _%hd2493224970%_
                                             _%hd2492924960%_)))
                                        (_%g2492024939%_ _%g2492124943%_))))
                                (_%g2492024939%_ _%g2492124943%_))))
                        (_%g2492024939%_ _%g2492124943%_)))))
            (_%g2491924997%_ _%stx24914%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25066%_)
        (letrec ((_%wrap25069%_
                  (lambda (_%e-stx25415%_)
                    (gx#stx-wrap-source
                     _%e-stx25415%_
                     (gx#stx-source _%stx25066%_))))
                 (_%method-opt?25071%_
                  (lambda (_%x25412%_)
                    (let ((__tmp27282 (gx#stx-e _%x25412%_)))
                      (declare (not safe))
                      (##memq __tmp27282 '(rebind:))))))
          (let* ((_%g2507325102%_
                  (lambda (_%g2507425098%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2507425098%_)))
                 (_%g2507225408%_
                  (lambda (_%g2507425106%_)
                    (if (gx#stx-pair? _%g2507425106%_)
                        (let ((_%e2507925109%_ (gx#syntax-e _%g2507425106%_)))
                          (let ((_%hd2508025113%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2507925109%_)))
                                (_%tl2508125116%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2507925109%_))))
                            (if (gx#stx-pair? _%tl2508125116%_)
                                (let ((_%e2508225119%_
                                       (gx#syntax-e _%tl2508125116%_)))
                                  (let ((_%hd2508325123%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2508225119%_)))
                                        (_%tl2508425126%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2508225119%_))))
                                    (if (gx#stx-pair? _%hd2508325123%_)
                                        (let ((_%e2508525129%_
                                               (gx#syntax-e _%hd2508325123%_)))
                                          (let ((_%hd2508625133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2508525129%_)))
                                                (_%tl2508725136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2508525129%_))))
                                            (if (gx#identifier?
                                                 _%hd2508625133%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27283_|
                                                     _%hd2508625133%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2508725136%_)
                                                        (let ((_%e2508825139%_
                                                               (gx#syntax-e
                                                                _%tl2508725136%_)))
                                                          (let ((_%hd2508925143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2508825139%_)))
                        (_%tl2509025146%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2508825139%_))))
                    (if (gx#stx-pair? _%tl2509025146%_)
                        (let ((_%e2509125149%_ (gx#syntax-e _%tl2509025146%_)))
                          (let ((_%hd2509225153%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2509125149%_)))
                                (_%tl2509325156%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2509125149%_))))
                            (if (gx#stx-null? _%tl2509325156%_)
                                (if (gx#stx-pair? _%tl2508425126%_)
                                    (let ((_%e2509425159%_
                                           (gx#syntax-e _%tl2508425126%_)))
                                      (let ((_%hd2509525163%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2509425159%_)))
                                            (_%tl2509625166%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2509425159%_))))
                                        ((lambda (_%L25169%_
                                                  _%L25171%_
                                                  _%L25172%_
                                                  _%L25173%_)
                                           (if (and (gx#identifier? _%L25173%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%L25172%_))
                                                    (gx#stx-plist?
                                                     _%L25169%_
                                                     _%method-opt?25071%_))
                                               (let* ((_%klass25200%_
                                                       (gx#syntax-local-value
                                                        _%L25172%_))
                                                      (_%rebind?25203%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%L25169%_)))
                                                      (_%g2520625214%_
                                                       (lambda (_%g2520725210%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2520725210%_)))
                                                      (_%g2520525398%_
                                                       (lambda (_%g2520725218%_)
                                                         ((lambda (_%L25221%_)
                                                            (let* ((_%g2523625244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2523725240%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2523725240%_)))
                           (_%g2523525394%_
                            (lambda (_%g2523725248%_)
                              ((lambda (_%L25251%_)
                                 (let* ((_%g2526425272%_
                                         (lambda (_%g2526525268%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2526525268%_)))
                                        (_%g2526325390%_
                                         (lambda (_%g2526525276%_)
                                           ((lambda (_%L25279%_)
                                              (let* ((_%g2529225300%_
                                                      (lambda (_%g2529325296%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2529325296%_)))
                                                     (_%g2529125386%_
                                                      (lambda (_%g2529325304%_)
                                                        ((lambda (_%L25307%_)
                                                           (let* ((_%g2532025328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2532125324%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2532125324%_)))
                          (_%g2531925382%_
                           (lambda (_%g2532125332%_)
                             ((lambda (_%L25335%_)
                                (let* ((_%g2534825356%_
                                        (lambda (_%g2534925352%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2534925352%_)))
                                       (_%g2534725378%_
                                        (lambda (_%g2534925360%_)
                                          ((lambda (_%L25363%_)
                                             (_%wrap25069%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%L25307%_
                                                          (cons _%L25363%_
                                                                '())))))
                                           _%g2534925360%_))))
                                  (_%g2534725378%_
                                   (_%wrap25069%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%L25221%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L25173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%L25251%_ (cons _%L25335%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2532125332%_))))
                     (_%g2531925382%_ _%rebind?25203%_)))
                 _%g2529325304%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2529125386%_
                                                 (_%wrap25069%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%L25251%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%L25279%_
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
                                                      (cons _%L25221%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25173%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%L25171%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2526525276%_))))
                                   (_%g2526325390%_
                                    (gx#stx-identifier
                                     _%L25172%_
                                     '@next-method))))
                               _%g2523725248%_))))
                      (_%g2523525394%_
                       (gx#stx-identifier
                        _%L25172%_
                        _%L25172%_
                        '"::"
                        _%L25173%_))))
                  _%g2520725218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2520525398%_
                                                  (let ((__obj27047
                                                         _%klass25200%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27047
                                                           'gerbil.core#runtime-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27047
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#runtime-type-info::t
                                                         __obj27047
                                                         'type-descriptor)))))
                                               (if (gx#identifier? _%L25173%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                          _%L25172%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25066%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; invalid class type"
                                                        _%stx25066%_
                                                        _%L25172%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25066%_
                                                    _%L25173%_))))
                                         _%tl2509625166%_
                                         _%hd2509525163%_
                                         _%hd2509225153%_
                                         _%hd2508925143%_)))
                                    (_%g2507325102%_ _%g2507425106%_))
                                (_%g2507325102%_ _%g2507425106%_))))
                        (_%g2507325102%_ _%g2507425106%_))))
                (_%g2507325102%_ _%g2507425106%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2507325102%_
                                                     _%g2507425106%_))
                                                (_%g2507325102%_
                                                 _%g2507425106%_))))
                                        (_%g2507325102%_ _%g2507425106%_))))
                                (_%g2507325102%_ _%g2507425106%_))))
                        (_%g2507325102%_ _%g2507425106%_)))))
            (_%g2507225408%_ _%stx25066%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25418%_)
        (letrec ((_%dotted-identifier?25421%_
                  (lambda (_%id26054%_)
                    (if (gx#identifier? _%id26054%_)
                        (let ((_%id-str26057%_
                               (symbol->string (gx#stx-e _%id26054%_))))
                          (if (string-index _%id-str26057%_ '#\.)
                              (let* ((_%split26060%_
                                      (string-split _%id-str26057%_ '#\.))
                                     (__tmp27284 (length _%split26060%_)))
                                (declare (not safe))
                                (##fx= __tmp27284 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25423%_
                  (lambda (_%id26043%_)
                    (let* ((_%id-str26046%_
                            (symbol->string (gx#stx-e _%id26043%_)))
                           (_%split26049%_
                            (string-split _%id-str26046%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26043%_
                             (car _%split26049%_))
                            (cons (gx#stx-identifier
                                   _%id26043%_
                                   (cadr _%split26049%_))
                                  '()))))))
          (let* ((_%__stx2678526786%_ _%stx25418%_)
                 (_%g2542825515%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2678526786%_))))
            (let ((_%__kont2678826789%_
                   (lambda (_%L25936%_ _%L25938%_ _%L25939%_)
                     (let* ((_%g2596725982%_
                             (lambda (_%g2596825978%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2596825978%_)))
                            (_%g2596626035%_
                             (lambda (_%g2596825986%_)
                               (if (gx#stx-pair? _%g2596825986%_)
                                   (let ((_%e2597125989%_
                                          (gx#syntax-e _%g2596825986%_)))
                                     (let ((_%hd2597225993%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2597125989%_)))
                                           (_%tl2597325996%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2597125989%_))))
                                       (if (gx#stx-pair? _%tl2597325996%_)
                                           (let ((_%e2597425999%_
                                                  (gx#syntax-e
                                                   _%tl2597325996%_)))
                                             (let ((_%hd2597526003%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2597425999%_)))
                                                   (_%tl2597626006%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2597425999%_))))
                                               (if (gx#stx-null?
                                                    _%tl2597626006%_)
                                                   ((lambda (_%L26009%_
                                                             _%L26011%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%L26011%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L26009%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2602626029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2602726032%_)
                   (cons _%g2602626029%_ _%g2602726032%_))
                 '()
                 _%L25938%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2597526003%_
                                                    _%hd2597225993%_)
                                                   (_%g2596725982%_
                                                    _%g2596825986%_))))
                                           (_%g2596725982%_ _%g2596825986%_))))
                                   (_%g2596725982%_ _%g2596825986%_)))))
                       (_%g2596626035%_ (_%split-dotted25423%_ _%L25939%_)))))
                  (_%__kont2679226793%_
                   (lambda (_%L25778%_ _%L25780%_)
                     (let* ((_%g2579725812%_
                             (lambda (_%g2579825808%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2579825808%_)))
                            (_%g2579625865%_
                             (lambda (_%g2579825816%_)
                               (if (gx#stx-pair? _%g2579825816%_)
                                   (let ((_%e2580125819%_
                                          (gx#syntax-e _%g2579825816%_)))
                                     (let ((_%hd2580225823%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2580125819%_)))
                                           (_%tl2580325826%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2580125819%_))))
                                       (if (gx#stx-pair? _%tl2580325826%_)
                                           (let ((_%e2580425829%_
                                                  (gx#syntax-e
                                                   _%tl2580325826%_)))
                                             (let ((_%hd2580525833%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2580425829%_)))
                                                   (_%tl2580625836%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2580425829%_))))
                                               (if (gx#stx-null?
                                                    _%tl2580625836%_)
                                                   ((lambda (_%L25839%_
                                                             _%L25841%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%L25841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25839%_ '()))
                                (foldr (lambda (_%g2585625859%_
                                                _%g2585725862%_)
                                         (cons _%g2585625859%_
                                               _%g2585725862%_))
                                       '()
                                       _%L25778%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2580525833%_
                                                    _%hd2580225823%_)
                                                   (_%g2579725812%_
                                                    _%g2579825816%_))))
                                           (_%g2579725812%_ _%g2579825816%_))))
                                   (_%g2579725812%_ _%g2579825816%_)))))
                       (_%g2579625865%_ (_%split-dotted25423%_ _%L25780%_)))))
                  (_%__kont2679626797%_
                   (lambda (_%L25682%_ _%L25684%_ _%L25685%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%L25684%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L25685%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2571225715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2571325718%_)
                          (cons _%g2571225715%_ _%g2571325718%_))
                        '()
                        _%L25682%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2680026801%_
                   (lambda (_%L25582%_ _%L25584%_ _%L25585%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%L25584%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L25585%_ '()))
                                       (foldr (lambda (_%g2560625609%_
                                                       _%g2560725612%_)
                                                (cons _%g2560625609%_
                                                      _%g2560725612%_))
                                              '()
                                              _%L25582%_)))))))
              (let* ((_%__match2690426905%_
                      (lambda (_%e2549225522%_
                               _%hd2549325526%_
                               _%tl2549425529%_
                               _%e2549525532%_
                               _%hd2549625536%_
                               _%tl2549725539%_
                               _%e2549825542%_
                               _%hd2549925546%_
                               _%tl2550025549%_
                               _%__splice2680226803%_
                               _%target2550125552%_
                               _%tl2550325555%_)
                        (letrec ((_%loop2550425558%_
                                  (lambda (_%hd2550225562%_ _%arg2550825565%_)
                                    (if (gx#stx-pair? _%hd2550225562%_)
                                        (let ((_%e2550525568%_
                                               (gx#syntax-e _%hd2550225562%_)))
                                          (let ((_%lp-tl2550725575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2550525568%_)))
                                                (_%lp-hd2550625572%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2550525568%_))))
                                            (_%loop2550425558%_
                                             _%lp-tl2550725575%_
                                             (cons _%lp-hd2550625572%_
                                                   _%arg2550825565%_))))
                                        (let ((_%arg2550925578%_
                                               (reverse _%arg2550825565%_)))
                                          (let ((_%L25582%_ _%arg2550925578%_)
                                                (_%L25584%_ _%hd2549925546%_)
                                                (_%L25585%_ _%hd2549625536%_))
                                            (if (gx#identifier? _%L25585%_)
                                                (_%__kont2680026801%_
                                                 _%L25582%_
                                                 _%L25584%_
                                                 _%L25585%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2542825515%_)))))))))
                          (_%loop2550425558%_ _%target2550125552%_ '()))))
                     (_%__match2687826879%_
                      (lambda (_%e2547125622%_
                               _%hd2547225626%_
                               _%tl2547325629%_
                               _%e2547425632%_
                               _%hd2547525636%_
                               _%tl2547625639%_
                               _%e2547725642%_
                               _%hd2547825646%_
                               _%tl2547925649%_
                               _%__splice2679826799%_
                               _%target2548025652%_
                               _%tl2548225655%_)
                        (letrec ((_%loop2548325658%_
                                  (lambda (_%hd2548125662%_ _%arg2548725665%_)
                                    (if (gx#stx-pair? _%hd2548125662%_)
                                        (let ((_%e2548425668%_
                                               (gx#syntax-e _%hd2548125662%_)))
                                          (let ((_%lp-tl2548625675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2548425668%_)))
                                                (_%lp-hd2548525672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2548425668%_))))
                                            (_%loop2548325658%_
                                             _%lp-tl2548625675%_
                                             (cons _%lp-hd2548525672%_
                                                   _%arg2548725665%_))))
                                        (let ((_%arg2548825678%_
                                               (reverse _%arg2548725665%_)))
                                          (let ((_%L25682%_ _%arg2548825678%_)
                                                (_%L25684%_ _%hd2547825646%_)
                                                (_%L25685%_ _%hd2547525636%_))
                                            (if (and (gx#identifier?
                                                      _%L25685%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2570425707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2570525710%_)
                       (cons _%g2570425707%_ _%g2570525710%_))
                     '()
                     _%L25682%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2679626797%_
                                                 _%L25682%_
                                                 _%L25684%_
                                                 _%L25685%_)
                                                (_%__match2690426905%_
                                                 _%e2547125622%_
                                                 _%hd2547225626%_
                                                 _%tl2547325629%_
                                                 _%e2547425632%_
                                                 _%hd2547525636%_
                                                 _%tl2547625639%_
                                                 _%e2547725642%_
                                                 _%hd2547825646%_
                                                 _%tl2547925649%_
                                                 _%__splice2679826799%_
                                                 _%target2548025652%_
                                                 _%tl2548225655%_))))))))
                          (_%loop2548325658%_ _%target2548025652%_ '()))))
                     (_%__match2686426865%_
                      (lambda (_%e2547125622%_
                               _%hd2547225626%_
                               _%tl2547325629%_
                               _%e2547425632%_
                               _%hd2547525636%_
                               _%tl2547625639%_)
                        (if (gx#stx-pair? _%tl2547625639%_)
                            (let ((_%e2547725642%_
                                   (gx#syntax-e _%tl2547625639%_)))
                              (let ((_%tl2547925649%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2547725642%_)))
                                    (_%hd2547825646%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2547725642%_))))
                                (if (gx#stx-pair/null? _%tl2547925649%_)
                                    (let ((_%__splice2679826799%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2547925649%_
                                            '0)))
                                      (let ((_%tl2548225655%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2679826799%_
                                                '1)))
                                            (_%target2548025652%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2679826799%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2548225655%_)
                                            (_%__match2687826879%_
                                             _%e2547125622%_
                                             _%hd2547225626%_
                                             _%tl2547325629%_
                                             _%e2547425632%_
                                             _%hd2547525636%_
                                             _%tl2547625639%_
                                             _%e2547725642%_
                                             _%hd2547825646%_
                                             _%tl2547925649%_
                                             _%__splice2679826799%_
                                             _%target2548025652%_
                                             _%tl2548225655%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2542825515%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2542825515%_)))))
                            (let () (declare (not safe)) (_%g2542825515%_)))))
                     (_%__match2685226853%_
                      (lambda (_%e2545325728%_
                               _%hd2545425732%_
                               _%tl2545525735%_
                               _%e2545625738%_
                               _%hd2545725742%_
                               _%tl2545825745%_
                               _%__splice2679426795%_
                               _%target2545925748%_
                               _%tl2546125751%_)
                        (letrec ((_%loop2546225754%_
                                  (lambda (_%hd2546025758%_ _%arg2546625761%_)
                                    (if (gx#stx-pair? _%hd2546025758%_)
                                        (let ((_%e2546325764%_
                                               (gx#syntax-e _%hd2546025758%_)))
                                          (let ((_%lp-tl2546525771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2546325764%_)))
                                                (_%lp-hd2546425768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2546325764%_))))
                                            (_%loop2546225754%_
                                             _%lp-tl2546525771%_
                                             (cons _%lp-hd2546425768%_
                                                   _%arg2546625761%_))))
                                        (let ((_%arg2546725774%_
                                               (reverse _%arg2546625761%_)))
                                          (let ((_%L25778%_ _%arg2546725774%_)
                                                (_%L25780%_ _%hd2545725742%_))
                                            (if (_%dotted-identifier?25421%_
                                                 _%L25780%_)
                                                (_%__kont2679226793%_
                                                 _%L25778%_
                                                 _%L25780%_)
                                                (_%__match2686426865%_
                                                 _%e2545325728%_
                                                 _%hd2545425732%_
                                                 _%tl2545525735%_
                                                 _%e2545625738%_
                                                 _%hd2545725742%_
                                                 _%tl2545825745%_))))))))
                          (_%loop2546225754%_ _%target2545925748%_ '()))))
                     (_%__match2685026851%_
                      (lambda (_%e2545325728%_
                               _%hd2545425732%_
                               _%tl2545525735%_
                               _%e2545625738%_
                               _%hd2545725742%_
                               _%tl2545825745%_
                               _%__splice2679426795%_
                               _%target2545925748%_
                               _%tl2546125751%_)
                        (if (gx#stx-null? _%tl2546125751%_)
                            (_%__match2685226853%_
                             _%e2545325728%_
                             _%hd2545425732%_
                             _%tl2545525735%_
                             _%e2545625738%_
                             _%hd2545725742%_
                             _%tl2545825745%_
                             _%__splice2679426795%_
                             _%target2545925748%_
                             _%tl2546125751%_)
                            (if (gx#stx-pair? _%tl2545825745%_)
                                (let ((_%e2547725642%_
                                       (gx#syntax-e _%tl2545825745%_)))
                                  (let ((_%tl2547925649%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2547725642%_)))
                                        (_%hd2547825646%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2547725642%_))))
                                    (if (gx#stx-pair/null? _%tl2547925649%_)
                                        (let ((_%__splice2679826799%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2547925649%_
                                                '0)))
                                          (let ((_%tl2548225655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679826799%_
                                                    '1)))
                                                (_%target2548025652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679826799%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2548225655%_)
                                                (_%__match2687826879%_
                                                 _%e2545325728%_
                                                 _%hd2545425732%_
                                                 _%tl2545525735%_
                                                 _%e2545625738%_
                                                 _%hd2545725742%_
                                                 _%tl2545825745%_
                                                 _%e2547725642%_
                                                 _%hd2547825646%_
                                                 _%tl2547925649%_
                                                 _%__splice2679826799%_
                                                 _%target2548025652%_
                                                 _%tl2548225655%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2542825515%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2542825515%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2542825515%_))))))
                     (_%__match2683226833%_
                      (lambda (_%e2543325876%_
                               _%hd2543425880%_
                               _%tl2543525883%_
                               _%e2543625886%_
                               _%hd2543725890%_
                               _%tl2543825893%_
                               _%__splice2679026791%_
                               _%target2543925896%_
                               _%tl2544125899%_
                               _%e2544825902%_
                               _%hd2544925906%_
                               _%tl2545025909%_)
                        (letrec ((_%loop2544225912%_
                                  (lambda (_%hd2544025916%_ _%arg2544625919%_)
                                    (if (gx#stx-pair? _%hd2544025916%_)
                                        (let ((_%e2544325922%_
                                               (gx#syntax-e _%hd2544025916%_)))
                                          (let ((_%lp-tl2544525929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2544325922%_)))
                                                (_%lp-hd2544425926%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2544325922%_))))
                                            (_%loop2544225912%_
                                             _%lp-tl2544525929%_
                                             (cons _%lp-hd2544425926%_
                                                   _%arg2544625919%_))))
                                        (let ((_%arg2544725932%_
                                               (reverse _%arg2544625919%_)))
                                          (let ((_%L25936%_ _%hd2544925906%_)
                                                (_%L25938%_ _%arg2544725932%_)
                                                (_%L25939%_ _%hd2543725890%_))
                                            (if (and (_%dotted-identifier?25421%_
                                                      _%L25939%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2595825961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2595925964%_)
                       (cons _%g2595825961%_ _%g2595925964%_))
                     '()
                     _%L25938%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2678826789%_
                                                 _%L25936%_
                                                 _%L25938%_
                                                 _%L25939%_)
                                                (let ((_%__splice2679426795%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2543825893%_
                                                        '0)))
                                                  (let ((_%tl2546125751%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679426795%_
                                                            '1)))
                                                        (_%target2545925748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679426795%_
                                                            '0))))
                                                    (_%__match2685026851%_
                                                     _%e2543325876%_
                                                     _%hd2543425880%_
                                                     _%tl2543525883%_
                                                     _%e2543625886%_
                                                     _%hd2543725890%_
                                                     _%tl2543825893%_
                                                     _%__splice2679426795%_
                                                     _%target2545925748%_
                                                     _%tl2546125751%_))))))))))
                          (_%loop2544225912%_ _%target2543925896%_ '())))))
                (if (gx#stx-pair? _%__stx2678526786%_)
                    (let ((_%e2543325876%_ (gx#syntax-e _%__stx2678526786%_)))
                      (let ((_%tl2543525883%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2543325876%_)))
                            (_%hd2543425880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2543325876%_))))
                        (if (gx#stx-pair? _%tl2543525883%_)
                            (let ((_%e2543625886%_
                                   (gx#syntax-e _%tl2543525883%_)))
                              (let ((_%tl2543825893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2543625886%_)))
                                    (_%hd2543725890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2543625886%_))))
                                (if (gx#stx-pair/null? _%tl2543825893%_)
                                    (if (let ((__tmp27285
                                               (gx#stx-length
                                                _%tl2543825893%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27285 '1))
                                        (let ((_%__splice2679026791%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2543825893%_
                                                '1)))
                                          (let ((_%tl2544125899%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679026791%_
                                                    '1)))
                                                (_%target2543925896%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679026791%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2544125899%_)
                                                (let ((_%e2544825902%_
                                                       (gx#syntax-e
                                                        _%tl2544125899%_)))
                                                  (let ((_%tl2545025909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2544825902%_)))
                                                        (_%hd2544925906%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2544825902%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2545025909%_)
                                                        (_%__match2683226833%_
                                                         _%e2543325876%_
                                                         _%hd2543425880%_
                                                         _%tl2543525883%_
                                                         _%e2543625886%_
                                                         _%hd2543725890%_
                                                         _%tl2543825893%_
                                                         _%__splice2679026791%_
                                                         _%target2543925896%_
                                                         _%tl2544125899%_
                                                         _%e2544825902%_
                                                         _%hd2544925906%_
                                                         _%tl2545025909%_)
                                                        (let ((_%__splice2679426795%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl2543825893%_
                                                                '0)))
                                                          (let ((_%tl2546125751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2679426795%_ '1)))
                        (_%target2545925748%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2679426795%_ '0))))
                    (if (gx#stx-null? _%tl2546125751%_)
                        (_%__match2685226853%_
                         _%e2543325876%_
                         _%hd2543425880%_
                         _%tl2543525883%_
                         _%e2543625886%_
                         _%hd2543725890%_
                         _%tl2543825893%_
                         _%__splice2679426795%_
                         _%target2545925748%_
                         _%tl2546125751%_)
                        (if (gx#stx-pair? _%tl2543825893%_)
                            (let ((_%e2547725642%_
                                   (gx#syntax-e _%tl2543825893%_)))
                              (let ((_%tl2547925649%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2547725642%_)))
                                    (_%hd2547825646%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2547725642%_))))
                                (if (gx#stx-pair/null? _%tl2547925649%_)
                                    (let ((_%__splice2679826799%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2547925649%_
                                            '0)))
                                      (let ((_%tl2548225655%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2679826799%_
                                                '1)))
                                            (_%target2548025652%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2679826799%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2548225655%_)
                                            (_%__match2687826879%_
                                             _%e2543325876%_
                                             _%hd2543425880%_
                                             _%tl2543525883%_
                                             _%e2543625886%_
                                             _%hd2543725890%_
                                             _%tl2543825893%_
                                             _%e2547725642%_
                                             _%hd2547825646%_
                                             _%tl2547925649%_
                                             _%__splice2679826799%_
                                             _%target2548025652%_
                                             _%tl2548225655%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2542825515%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2542825515%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2542825515%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2679426795%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2543825893%_
                                                        '0)))
                                                  (let ((_%tl2546125751%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679426795%_
                                                            '1)))
                                                        (_%target2545925748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679426795%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2546125751%_)
                                                        (_%__match2685226853%_
                                                         _%e2543325876%_
                                                         _%hd2543425880%_
                                                         _%tl2543525883%_
                                                         _%e2543625886%_
                                                         _%hd2543725890%_
                                                         _%tl2543825893%_
                                                         _%__splice2679426795%_
                                                         _%target2545925748%_
                                                         _%tl2546125751%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2543825893%_)
                                                            (let ((_%e2547725642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2543825893%_)))
                      (let ((_%tl2547925649%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2547725642%_)))
                            (_%hd2547825646%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2547725642%_))))
                        (if (gx#stx-pair/null? _%tl2547925649%_)
                            (let ((_%__splice2679826799%_
                                   (gx#syntax-split-splice->vector
                                    _%tl2547925649%_
                                    '0)))
                              (let ((_%tl2548225655%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2679826799%_
                                        '1)))
                                    (_%target2548025652%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2679826799%_
                                        '0))))
                                (if (gx#stx-null? _%tl2548225655%_)
                                    (_%__match2687826879%_
                                     _%e2543325876%_
                                     _%hd2543425880%_
                                     _%tl2543525883%_
                                     _%e2543625886%_
                                     _%hd2543725890%_
                                     _%tl2543825893%_
                                     _%e2547725642%_
                                     _%hd2547825646%_
                                     _%tl2547925649%_
                                     _%__splice2679826799%_
                                     _%target2548025652%_
                                     _%tl2548225655%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2542825515%_)))))
                            (let () (declare (not safe)) (_%g2542825515%_)))))
                    (let () (declare (not safe)) (_%g2542825515%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2679426795%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2543825893%_
                                                '0)))
                                          (let ((_%tl2546125751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679426795%_
                                                    '1)))
                                                (_%target2545925748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679426795%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2546125751%_)
                                                (_%__match2685226853%_
                                                 _%e2543325876%_
                                                 _%hd2543425880%_
                                                 _%tl2543525883%_
                                                 _%e2543625886%_
                                                 _%hd2543725890%_
                                                 _%tl2543825893%_
                                                 _%__splice2679426795%_
                                                 _%target2545925748%_
                                                 _%tl2546125751%_)
                                                (if (gx#stx-pair?
                                                     _%tl2543825893%_)
                                                    (let ((_%e2547725642%_
                                                           (gx#syntax-e
                                                            _%tl2543825893%_)))
                                                      (let ((_%tl2547925649%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2547725642%_)))
                    (_%hd2547825646%_
                     (let () (declare (not safe)) (##car _%e2547725642%_))))
                (if (gx#stx-pair/null? _%tl2547925649%_)
                    (let ((_%__splice2679826799%_
                           (gx#syntax-split-splice->vector
                            _%tl2547925649%_
                            '0)))
                      (let ((_%tl2548225655%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2679826799%_ '1)))
                            (_%target2548025652%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2679826799%_ '0))))
                        (if (gx#stx-null? _%tl2548225655%_)
                            (_%__match2687826879%_
                             _%e2543325876%_
                             _%hd2543425880%_
                             _%tl2543525883%_
                             _%e2543625886%_
                             _%hd2543725890%_
                             _%tl2543825893%_
                             _%e2547725642%_
                             _%hd2547825646%_
                             _%tl2547925649%_
                             _%__splice2679826799%_
                             _%target2548025652%_
                             _%tl2548225655%_)
                            (let () (declare (not safe)) (_%g2542825515%_)))))
                    (let () (declare (not safe)) (_%g2542825515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2542825515%_)))))))
                                    (if (gx#stx-pair? _%tl2543825893%_)
                                        (let ((_%e2547725642%_
                                               (gx#syntax-e _%tl2543825893%_)))
                                          (let ((_%tl2547925649%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2547725642%_)))
                                                (_%hd2547825646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2547725642%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2547925649%_)
                                                (let ((_%__splice2679826799%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2547925649%_
                                                        '0)))
                                                  (let ((_%tl2548225655%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679826799%_
                                                            '1)))
                                                        (_%target2548025652%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679826799%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2548225655%_)
                                                        (_%__match2687826879%_
                                                         _%e2543325876%_
                                                         _%hd2543425880%_
                                                         _%tl2543525883%_
                                                         _%e2543625886%_
                                                         _%hd2543725890%_
                                                         _%tl2543825893%_
                                                         _%e2547725642%_
                                                         _%hd2547825646%_
                                                         _%tl2547925649%_
                                                         _%__splice2679826799%_
                                                         _%target2548025652%_
                                                         _%tl2548225655%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2542825515%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2542825515%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2542825515%_))))))
                            (let () (declare (not safe)) (_%g2542825515%_)))))
                    (let () (declare (not safe)) (_%g2542825515%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26067%_)
        (let* ((_%__stx2690726908%_ _%$stx26067%_)
               (_%g2607226112%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2690726908%_))))
          (let ((_%__kont2691026911%_
                 (lambda (_%L26250%_ _%L26252%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%L26252%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26250%_ '()))
                                     '())))))
                (_%__kont2691226913%_
                 (lambda (_%L26179%_ _%L26181%_ _%L26182%_ _%L26183%_)
                   (cons _%L26183%_
                         (cons (cons _%L26183%_
                                     (cons _%L26182%_ (cons _%L26181%_ '())))
                               (foldr (lambda (_%g2620426207%_ _%g2620526210%_)
                                        (cons _%g2620426207%_ _%g2620526210%_))
                                      '()
                                      _%L26179%_))))))
            (let* ((_%__match2696226963%_
                    (lambda (_%e2608926119%_
                             _%hd2609026123%_
                             _%tl2609126126%_
                             _%e2609226129%_
                             _%hd2609326133%_
                             _%tl2609426136%_
                             _%e2609526139%_
                             _%hd2609626143%_
                             _%tl2609726146%_
                             _%__splice2691426915%_
                             _%target2609826149%_
                             _%tl2610026152%_)
                      (letrec ((_%loop2610126155%_
                                (lambda (_%hd2609926159%_ _%rest2610526162%_)
                                  (if (gx#stx-pair? _%hd2609926159%_)
                                      (let ((_%e2610226165%_
                                             (gx#syntax-e _%hd2609926159%_)))
                                        (let ((_%lp-tl2610426172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2610226165%_)))
                                              (_%lp-hd2610326169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2610226165%_))))
                                          (_%loop2610126155%_
                                           _%lp-tl2610426172%_
                                           (cons _%lp-hd2610326169%_
                                                 _%rest2610526162%_))))
                                      (let ((_%rest2610626175%_
                                             (reverse _%rest2610526162%_)))
                                        (_%__kont2691226913%_
                                         _%rest2610626175%_
                                         _%hd2609626143%_
                                         _%hd2609326133%_
                                         _%hd2609026123%_))))))
                        (_%loop2610126155%_ _%target2609826149%_ '()))))
                   (_%__match2693626937%_
                    (lambda (_%e2607626220%_
                             _%hd2607726224%_
                             _%tl2607826227%_
                             _%e2607926230%_
                             _%hd2608026234%_
                             _%tl2608126237%_
                             _%e2608226240%_
                             _%hd2608326244%_
                             _%tl2608426247%_)
                      (let ((_%L26250%_ _%hd2608326244%_)
                            (_%L26252%_ _%hd2608026234%_))
                        (if (gx#identifier? _%L26250%_)
                            (_%__kont2691026911%_ _%L26250%_ _%L26252%_)
                            (if (gx#stx-pair/null? _%tl2608426247%_)
                                (let ((_%__splice2691426915%_
                                       (gx#syntax-split-splice->vector
                                        _%tl2608426247%_
                                        '0)))
                                  (let ((_%tl2610026152%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2691426915%_
                                            '1)))
                                        (_%target2609826149%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2691426915%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2610026152%_)
                                        (_%__match2696226963%_
                                         _%e2607626220%_
                                         _%hd2607726224%_
                                         _%tl2607826227%_
                                         _%e2607926230%_
                                         _%hd2608026234%_
                                         _%tl2608126237%_
                                         _%e2608226240%_
                                         _%hd2608326244%_
                                         _%tl2608426247%_
                                         _%__splice2691426915%_
                                         _%target2609826149%_
                                         _%tl2610026152%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2607226112%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2607226112%_))))))))
              (if (gx#stx-pair? _%__stx2690726908%_)
                  (let ((_%e2607626220%_ (gx#syntax-e _%__stx2690726908%_)))
                    (let ((_%tl2607826227%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2607626220%_)))
                          (_%hd2607726224%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2607626220%_))))
                      (if (gx#stx-pair? _%tl2607826227%_)
                          (let ((_%e2607926230%_
                                 (gx#syntax-e _%tl2607826227%_)))
                            (let ((_%tl2608126237%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2607926230%_)))
                                  (_%hd2608026234%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2607926230%_))))
                              (if (gx#stx-pair? _%tl2608126237%_)
                                  (let ((_%e2608226240%_
                                         (gx#syntax-e _%tl2608126237%_)))
                                    (let ((_%tl2608426247%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2608226240%_)))
                                          (_%hd2608326244%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2608226240%_))))
                                      (if (gx#stx-null? _%tl2608426247%_)
                                          (_%__match2693626937%_
                                           _%e2607626220%_
                                           _%hd2607726224%_
                                           _%tl2607826227%_
                                           _%e2607926230%_
                                           _%hd2608026234%_
                                           _%tl2608126237%_
                                           _%e2608226240%_
                                           _%hd2608326244%_
                                           _%tl2608426247%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2608426247%_)
                                              (let ((_%__splice2691426915%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl2608426247%_
                                                      '0)))
                                                (let ((_%tl2610026152%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2691426915%_
                                                          '1)))
                                                      (_%target2609826149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2691426915%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2610026152%_)
                                                      (_%__match2696226963%_
                                                       _%e2607626220%_
                                                       _%hd2607726224%_
                                                       _%tl2607826227%_
                                                       _%e2607926230%_
                                                       _%hd2608026234%_
                                                       _%tl2608126237%_
                                                       _%e2608226240%_
                                                       _%hd2608326244%_
                                                       _%tl2608426247%_
                                                       _%__splice2691426915%_
                                                       _%target2609826149%_
                                                       _%tl2610026152%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2607226112%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2607226112%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2607226112%_)))))
                          (let () (declare (not safe)) (_%g2607226112%_)))))
                  (let () (declare (not safe)) (_%g2607226112%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26272%_)
        (let* ((_%__stx2696526966%_ _%$stx26272%_)
               (_%g2627726329%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2696526966%_))))
          (let ((_%__kont2696826969%_
                 (lambda (_%L26505%_ _%L26507%_ _%L26508%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%L26508%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26507%_ '()))
                                     (cons _%L26505%_ '()))))))
                (_%__kont2697026971%_
                 (lambda (_%L26416%_
                          _%L26418%_
                          _%L26419%_
                          _%L26420%_
                          _%L26421%_
                          _%L26422%_)
                   (cons _%L26422%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%L26421%_
                                           (cons _%L26420%_
                                                 (foldr (lambda (_%g2644926452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2645026455%_)
                  (cons _%g2644926452%_ _%g2645026455%_))
                '()
                _%L26419%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L26418%_ (cons _%L26416%_ '())))))))
            (let* ((_%__match2704027041%_
                    (lambda (_%e2630026336%_
                             _%hd2630126340%_
                             _%tl2630226343%_
                             _%e2630326346%_
                             _%hd2630426350%_
                             _%tl2630526353%_
                             _%e2630626356%_
                             _%hd2630726360%_
                             _%tl2630826363%_
                             _%__splice2697226973%_
                             _%target2630926366%_
                             _%tl2631126369%_
                             _%e2631826372%_
                             _%hd2631926376%_
                             _%tl2632026379%_
                             _%e2632126382%_
                             _%hd2632226386%_
                             _%tl2632326389%_)
                      (letrec ((_%loop2631226392%_
                                (lambda (_%hd2631026396%_ _%path2631626399%_)
                                  (if (gx#stx-pair? _%hd2631026396%_)
                                      (let ((_%e2631326402%_
                                             (gx#syntax-e _%hd2631026396%_)))
                                        (let ((_%lp-tl2631526409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2631326402%_)))
                                              (_%lp-hd2631426406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2631326402%_))))
                                          (_%loop2631226392%_
                                           _%lp-tl2631526409%_
                                           (cons _%lp-hd2631426406%_
                                                 _%path2631626399%_))))
                                      (let ((_%path2631726412%_
                                             (reverse _%path2631626399%_)))
                                        (_%__kont2697026971%_
                                         _%hd2632226386%_
                                         _%hd2631926376%_
                                         _%path2631726412%_
                                         _%hd2630726360%_
                                         _%hd2630426350%_
                                         _%hd2630126340%_))))))
                        (_%loop2631226392%_ _%target2630926366%_ '()))))
                   (_%__match2700027001%_
                    (lambda (_%e2628226465%_
                             _%hd2628326469%_
                             _%tl2628426472%_
                             _%e2628526475%_
                             _%hd2628626479%_
                             _%tl2628726482%_
                             _%e2628826485%_
                             _%hd2628926489%_
                             _%tl2629026492%_
                             _%e2629126495%_
                             _%hd2629226499%_
                             _%tl2629326502%_)
                      (let ((_%L26505%_ _%hd2629226499%_)
                            (_%L26507%_ _%hd2628926489%_)
                            (_%L26508%_ _%hd2628626479%_))
                        (if (gx#identifier? _%L26507%_)
                            (_%__kont2696826969%_
                             _%L26505%_
                             _%L26507%_
                             _%L26508%_)
                            (if (gx#stx-pair/null? _%tl2629026492%_)
                                (if (let ((__tmp27286
                                           (gx#stx-length _%tl2629026492%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27286 '2))
                                    (let ((_%__splice2697226973%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2629026492%_
                                            '2)))
                                      (let ((_%tl2631126369%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2697226973%_
                                                '1)))
                                            (_%target2630926366%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2697226973%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2631126369%_)
                                            (let ((_%e2631826372%_
                                                   (gx#syntax-e
                                                    _%tl2631126369%_)))
                                              (let ((_%tl2632026379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2631826372%_)))
                                                    (_%hd2631926376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2631826372%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2632026379%_)
                                                    (let ((_%e2632126382%_
                                                           (gx#syntax-e
                                                            _%tl2632026379%_)))
                                                      (let ((_%tl2632326389%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2632126382%_)))
                    (_%hd2632226386%_
                     (let () (declare (not safe)) (##car _%e2632126382%_))))
                (if (gx#stx-null? _%tl2632326389%_)
                    (_%__match2704027041%_
                     _%e2628226465%_
                     _%hd2628326469%_
                     _%tl2628426472%_
                     _%e2628526475%_
                     _%hd2628626479%_
                     _%tl2628726482%_
                     _%e2628826485%_
                     _%hd2628926489%_
                     _%tl2629026492%_
                     _%__splice2697226973%_
                     _%target2630926366%_
                     _%tl2631126369%_
                     _%e2631826372%_
                     _%hd2631926376%_
                     _%tl2632026379%_
                     _%e2632126382%_
                     _%hd2632226386%_
                     _%tl2632326389%_)
                    (let () (declare (not safe)) (_%g2627726329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2627726329%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2627726329%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2627726329%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2627726329%_))))))))
              (if (gx#stx-pair? _%__stx2696526966%_)
                  (let ((_%e2628226465%_ (gx#syntax-e _%__stx2696526966%_)))
                    (let ((_%tl2628426472%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2628226465%_)))
                          (_%hd2628326469%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2628226465%_))))
                      (if (gx#stx-pair? _%tl2628426472%_)
                          (let ((_%e2628526475%_
                                 (gx#syntax-e _%tl2628426472%_)))
                            (let ((_%tl2628726482%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2628526475%_)))
                                  (_%hd2628626479%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2628526475%_))))
                              (if (gx#stx-pair? _%tl2628726482%_)
                                  (let ((_%e2628826485%_
                                         (gx#syntax-e _%tl2628726482%_)))
                                    (let ((_%tl2629026492%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2628826485%_)))
                                          (_%hd2628926489%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2628826485%_))))
                                      (if (gx#stx-pair? _%tl2629026492%_)
                                          (let ((_%e2629126495%_
                                                 (gx#syntax-e
                                                  _%tl2629026492%_)))
                                            (let ((_%tl2629326502%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2629126495%_)))
                                                  (_%hd2629226499%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2629126495%_))))
                                              (if (gx#stx-null?
                                                   _%tl2629326502%_)
                                                  (_%__match2700027001%_
                                                   _%e2628226465%_
                                                   _%hd2628326469%_
                                                   _%tl2628426472%_
                                                   _%e2628526475%_
                                                   _%hd2628626479%_
                                                   _%tl2628726482%_
                                                   _%e2628826485%_
                                                   _%hd2628926489%_
                                                   _%tl2629026492%_
                                                   _%e2629126495%_
                                                   _%hd2629226499%_
                                                   _%tl2629326502%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2629026492%_)
                                                      (if (let ((__tmp27287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2629026492%_)))
                    (declare (not safe))
                    (##fx>= __tmp27287 '2))
                  (let ((_%__splice2697226973%_
                         (gx#syntax-split-splice->vector _%tl2629026492%_ '2)))
                    (let ((_%tl2631126369%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2697226973%_ '1)))
                          (_%target2630926366%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2697226973%_ '0))))
                      (if (gx#stx-pair? _%tl2631126369%_)
                          (let ((_%e2631826372%_
                                 (gx#syntax-e _%tl2631126369%_)))
                            (let ((_%tl2632026379%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2631826372%_)))
                                  (_%hd2631926376%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2631826372%_))))
                              (if (gx#stx-pair? _%tl2632026379%_)
                                  (let ((_%e2632126382%_
                                         (gx#syntax-e _%tl2632026379%_)))
                                    (let ((_%tl2632326389%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2632126382%_)))
                                          (_%hd2632226386%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2632126382%_))))
                                      (if (gx#stx-null? _%tl2632326389%_)
                                          (_%__match2704027041%_
                                           _%e2628226465%_
                                           _%hd2628326469%_
                                           _%tl2628426472%_
                                           _%e2628526475%_
                                           _%hd2628626479%_
                                           _%tl2628726482%_
                                           _%e2628826485%_
                                           _%hd2628926489%_
                                           _%tl2629026492%_
                                           _%__splice2697226973%_
                                           _%target2630926366%_
                                           _%tl2631126369%_
                                           _%e2631826372%_
                                           _%hd2631926376%_
                                           _%tl2632026379%_
                                           _%e2632126382%_
                                           _%hd2632226386%_
                                           _%tl2632326389%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2627726329%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2627726329%_)))))
                          (let () (declare (not safe)) (_%g2627726329%_)))))
                  (let () (declare (not safe)) (_%g2627726329%_)))
              (let () (declare (not safe)) (_%g2627726329%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2629026492%_)
                                              (if (let ((__tmp27288
                                                         (gx#stx-length
                                                          _%tl2629026492%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27288 '2))
                                                  (let ((_%__splice2697226973%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl2629026492%_
                                                          '2)))
                                                    (let ((_%tl2631126369%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2697226973%_
                                                              '1)))
                                                          (_%target2630926366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2697226973%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2631126369%_)
                                                          (let ((_%e2631826372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2631126369%_)))
                    (let ((_%tl2632026379%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2631826372%_)))
                          (_%hd2631926376%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2631826372%_))))
                      (if (gx#stx-pair? _%tl2632026379%_)
                          (let ((_%e2632126382%_
                                 (gx#syntax-e _%tl2632026379%_)))
                            (let ((_%tl2632326389%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2632126382%_)))
                                  (_%hd2632226386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2632126382%_))))
                              (if (gx#stx-null? _%tl2632326389%_)
                                  (_%__match2704027041%_
                                   _%e2628226465%_
                                   _%hd2628326469%_
                                   _%tl2628426472%_
                                   _%e2628526475%_
                                   _%hd2628626479%_
                                   _%tl2628726482%_
                                   _%e2628826485%_
                                   _%hd2628926489%_
                                   _%tl2629026492%_
                                   _%__splice2697226973%_
                                   _%target2630926366%_
                                   _%tl2631126369%_
                                   _%e2631826372%_
                                   _%hd2631926376%_
                                   _%tl2632026379%_
                                   _%e2632126382%_
                                   _%hd2632226386%_
                                   _%tl2632326389%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2627726329%_)))))
                          (let () (declare (not safe)) (_%g2627726329%_)))))
                  (let () (declare (not safe)) (_%g2627726329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2627726329%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2627726329%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2627726329%_)))))
                          (let () (declare (not safe)) (_%g2627726329%_)))))
                  (let () (declare (not safe)) (_%g2627726329%_))))))))))
