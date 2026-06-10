(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
    (lambda (_%stx23855%_ _%klass23857%_)
      (|gerbil/core/mop~MOP-5[1]#emit-system-class|
       _%stx23855%_
       _%klass23857%_
       '()
       '())))
  (define |gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
    (lambda (_%stx23812%_ _%klass23814%_ _%fields23815%_)
      (let* ((_%fields23847%_
              (let _%loop23817%_ ((_%rest23820%_ _%fields23815%_)
                                  (_%normalized23822%_ '()))
                (if (pair? _%rest23820%_)
                    (let ((_%field23824%_ (car _%rest23820%_))
                          (_%rest23826%_ (cdr _%rest23820%_)))
                      (if (memq _%field23824%_ _%rest23826%_)
                          (let ((_%$e23828%_
                                 (agetq _%field23824%_ _%normalized23822%_)))
                            (if _%$e23828%_
                                ((lambda (_%previous23832%_)
                                   (let ((_%normalized-field23835%_
                                          (make-symbol
                                           '"super-"
                                           _%previous23832%_)))
                                     (_%loop23817%_
                                      _%rest23826%_
                                      (cons (cons _%field23824%_
                                                  _%normalized-field23835%_)
                                            _%normalized23822%_))))
                                 _%$e23828%_)
                                (let ((_%normalized-field23840%_
                                       (make-symbol '"super-" _%field23824%_)))
                                  (_%loop23817%_
                                   _%rest23826%_
                                   (cons (cons _%field23824%_
                                               _%normalized-field23840%_)
                                         _%normalized23822%_)))))
                          (_%loop23817%_
                           _%rest23826%_
                           (cons (cons _%field23824%_ _%field23824%_)
                                 _%normalized23822%_))))
                    (foldl (lambda (_%n23843%_ _%r23845%_)
                             (cons (cdr _%n23843%_) _%r23845%_))
                           '()
                           _%normalized23822%_))))
             (_%field-offsets23850%_ (iota (length _%fields23847%_) '1)))
        (|gerbil/core/mop~MOP-5[1]#emit-system-class|
         _%stx23812%_
         _%klass23814%_
         _%fields23847%_
         _%field-offsets23850%_))))
  (define |gerbil/core/mop~MOP-5[1]#emit-system-class|
    (lambda (_%stx23461%_
             _%klass23463%_
             _%fields23464%_
             _%field-offsets23465%_)
      (let* ((_%$%g2346723539%_
              (lambda (_%$%g2346823535%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g2346823535%_)))
             (_%$%g2346623808%_
              (lambda (_%$%g2346823543%_)
                (if (gx#stx-pair? _%$%g2346823543%_)
                    (let ((_%$%e2347723546%_ (gx#syntax-e _%$%g2346823543%_)))
                      (let ((_%$%hd2347823550%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2347723546%_)))
                            (_%$%tl2347923553%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2347723546%_))))
                        (if (gx#stx-pair? _%$%tl2347923553%_)
                            (let ((_%$%e2348023556%_
                                   (gx#syntax-e _%$%tl2347923553%_)))
                              (let ((_%$%hd2348123560%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2348023556%_)))
                                    (_%$%tl2348223563%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2348023556%_))))
                                (if (gx#stx-pair? _%$%tl2348223563%_)
                                    (let ((_%$%e2348323566%_
                                           (gx#syntax-e _%$%tl2348223563%_)))
                                      (let ((_%$%hd2348423570%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2348323566%_)))
                                            (_%$%tl2348523573%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2348323566%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%hd2348423570%_)
                                            (let ((_g24215_
                                                   (gx#syntax-split-splice
                                                    _%$%hd2348423570%_
                                                    '0)))
                                              (begin
                                                (let ((_g24216_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g24215_)
                                                             (##values-length
                                                              _g24215_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g24216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g24216_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2348623576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g24215_
                                                          0)))
                                                      (_%$%tl2348823579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g24215_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2348823579%_)
                                                      (letrec ((_%$%loop2348923582%_
                                                                (lambda (_%$%hd2348723586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%field2349323589%_)
                          (if (gx#stx-pair? _%$%hd2348723586%_)
                              (let ((_%$%e2349023591%_
                                     (gx#syntax-e _%$%hd2348723586%_)))
                                (let ((_%$%lp-hd2349123595%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2349023591%_)))
                                      (_%$%lp-tl2349223598%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2349023591%_))))
                                  (_%$%loop2348923582%_
                                   _%$%lp-tl2349223598%_
                                   (cons _%$%lp-hd2349123595%_
                                         _%$%field2349323589%_))))
                              (let ((_%$%field2349423601%_
                                     (reverse _%$%field2349323589%_)))
                                (if (gx#stx-pair? _%$%tl2348523573%_)
                                    (let ((_%$%e2349523604%_
                                           (gx#syntax-e _%$%tl2348523573%_)))
                                      (let ((_%$%hd2349623608%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2349523604%_)))
                                            (_%$%tl2349723611%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2349523604%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%hd2349623608%_)
                                            (let ((_g24217_
                                                   (gx#syntax-split-splice
                                                    _%$%hd2349623608%_
                                                    '0)))
                                              (begin
                                                (let ((_g24218_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g24217_)
                                                             (##values-length
                                                              _g24217_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g24218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g24218_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2349823614%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g24217_
                                                          0)))
                                                      (_%$%tl2350023617%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g24217_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2350023617%_)
                                                      (letrec ((_%$%loop2350123620%_
                                                                (lambda (_%$%hd2349923624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%field-offset2350523627%_)
                          (if (gx#stx-pair? _%$%hd2349923624%_)
                              (let ((_%$%e2350223629%_
                                     (gx#syntax-e _%$%hd2349923624%_)))
                                (let ((_%$%lp-hd2350323633%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2350223629%_)))
                                      (_%$%lp-tl2350423636%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2350223629%_))))
                                  (_%$%loop2350123620%_
                                   _%$%lp-tl2350423636%_
                                   (cons _%$%lp-hd2350323633%_
                                         _%$%field-offset2350523627%_))))
                              (let ((_%$%field-offset2350623639%_
                                     (reverse _%$%field-offset2350523627%_)))
                                (if (gx#stx-pair? _%$%tl2349723611%_)
                                    (let ((_%$%e2350723642%_
                                           (gx#syntax-e _%$%tl2349723611%_)))
                                      (let ((_%$%hd2350823646%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2350723642%_)))
                                            (_%$%tl2350923649%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2350723642%_))))
                                        (if (gx#stx-pair? _%$%hd2350823646%_)
                                            (let ((_%$%e2351023652%_
                                                   (gx#syntax-e
                                                    _%$%hd2350823646%_)))
                                              (let ((_%$%hd2351123656%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2351023652%_)))
                                                    (_%$%tl2351223659%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2351023652%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl2351223659%_)
                                                    (let ((_%$%e2351323662%_
                                                           (gx#syntax-e
                                                            _%$%tl2351223659%_)))
                                                      (let ((_%$%hd2351423666%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2351323662%_)))
                    (_%$%tl2351523669%_
                     (let () (declare (not safe)) (##cdr _%$%e2351323662%_))))
                (if (gx#stx-pair? _%$%tl2351523669%_)
                    (let ((_%$%e2351623672%_ (gx#syntax-e _%$%tl2351523669%_)))
                      (let ((_%$%hd2351723676%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2351623672%_)))
                            (_%$%tl2351823679%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2351623672%_))))
                        (if (gx#stx-pair? _%$%tl2351823679%_)
                            (let ((_%$%e2351923682%_
                                   (gx#syntax-e _%$%tl2351823679%_)))
                              (let ((_%$%hd2352023686%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2351923682%_)))
                                    (_%$%tl2352123689%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2351923682%_))))
                                (if (gx#stx-pair/null? _%$%hd2352023686%_)
                                    (let ((_g24219_
                                           (gx#syntax-split-splice
                                            _%$%hd2352023686%_
                                            '0)))
                                      (begin
                                        (let ((_g24220_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g24219_)
                                                     (##values-length _g24219_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g24220_ 2)))
                                              (error "Context expects 2 values"
                                                     _g24220_)))
                                        (let ((_%$%target2352223692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g24219_ 0)))
                                              (_%$%tl2352423695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g24219_ 1))))
                                          (if (gx#stx-null? _%$%tl2352423695%_)
                                              (letrec ((_%$%loop2352523698%_
                                                        (lambda (_%$%hd2352323702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%super2352923705%_)
                  (if (gx#stx-pair? _%$%hd2352323702%_)
                      (let ((_%$%e2352623707%_
                             (gx#syntax-e _%$%hd2352323702%_)))
                        (let ((_%$%lp-hd2352723711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2352623707%_)))
                              (_%$%lp-tl2352823714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2352623707%_))))
                          (_%$%loop2352523698%_
                           _%$%lp-tl2352823714%_
                           (cons _%$%lp-hd2352723711%_
                                 _%$%super2352923705%_))))
                      (let ((_%$%super2353023717%_
                             (reverse _%$%super2352923705%_)))
                        (if (gx#stx-pair? _%$%tl2352123689%_)
                            (let ((_%$%e2353123720%_
                                   (gx#syntax-e _%$%tl2352123689%_)))
                              (let ((_%$%hd2353223724%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2353123720%_)))
                                    (_%$%tl2353323727%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2353123720%_))))
                                (if (gx#stx-null? _%$%tl2353323727%_)
                                    (if (gx#stx-null? _%$%tl2350923649%_)
                                        ((lambda (_%$%g2346923730%_
                                                  _%$%g2347023732%_
                                                  _%$%g2347123733%_
                                                  _%$%g2347223734%_
                                                  _%$%g2347323735%_
                                                  _%$%g2347423736%_
                                                  _%$%g2347523737%_
                                                  _%$%g2347623738%_)
                                           (gx#stx-wrap-source
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'defsyntax)
                                                  (cons _%$%g2347223734%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'make-class-type-info)
                            (cons 'id:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%g2347623738%_ '()))
                                        (cons 'name:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%$%g2347523737%_
                                                                '()))
                                                    (cons 'super:
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@list)
                              (foldr (lambda (_%$%g2378823794%_
                                              _%$%g2378923797%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote-syntax)
                                                   (cons _%$%g2378823794%_
                                                         '()))
                                             _%$%g2378923797%_))
                                     '()
                                     _%$%g2347023732%_))
                        (cons 'slots:
                              (cons (cons (gx#datum->syntax '#f '@list) '())
                                    (cons 'system?:
                                          (cons '#t
                                                (cons 'type-descriptor:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote-syntax)
                          (cons _%$%g2347123733%_ '()))
                    (cons 'predicate:
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _%$%g2346923730%_ '()))
                                (cons 'accessors:
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  '())
                                            (cons 'mutators:
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@list)
                                                              '())
                                                        (cons 'unchecked-accessors:
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@list)
                                  '())
                            (cons 'unchecked-mutators:
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              '())
                                        (cons 'slot-offsets:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (begin
                                                            (gx#syntax-check-splice-targets
                                                             _%$%g2347323735%_
                                                             _%$%g2347423736%_)
                                                            (foldr (lambda (_%$%g2379023800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g2379123803%_
                                    _%$%g2379223805%_)
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%$%g2379123803%_
                                                           '()))
                                               (cons '::
                                                     (cons _%$%g2379023800%_
                                                           '()))))
                                   _%$%g2379223805%_))
                           '()
                           _%$%g2347323735%_
                           _%$%g2347423736%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gx#stx-source _%stx23461%_)))
                                         _%$%hd2353223724%_
                                         _%$%super2353023717%_
                                         _%$%hd2351723676%_
                                         _%$%hd2351423666%_
                                         _%$%field-offset2350623639%_
                                         _%$%field2349423601%_
                                         _%$%hd2348123560%_
                                         _%$%hd2347823550%_)
                                        (_%$%g2346723539%_ _%$%g2346823543%_))
                                    (_%$%g2346723539%_ _%$%g2346823543%_))))
                            (_%$%g2346723539%_ _%$%g2346823543%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop2352523698%_
                                                 _%$%target2352223692%_
                                                 '()))
                                              (_%$%g2346723539%_
                                               _%$%g2346823543%_)))))
                                    (_%$%g2346723539%_ _%$%g2346823543%_))))
                            (_%$%g2346723539%_ _%$%g2346823543%_))))
                    (_%$%g2346723539%_ _%$%g2346823543%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2346723539%_
                                                     _%$%g2346823543%_))))
                                            (_%$%g2346723539%_
                                             _%$%g2346823543%_))))
                                    (_%$%g2346723539%_ _%$%g2346823543%_)))))))
                (_%$%loop2350123620%_ _%$%target2349823614%_ '()))
              (_%$%g2346723539%_ _%$%g2346823543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2346723539%_
                                             _%$%g2346823543%_))))
                                    (_%$%g2346723539%_ _%$%g2346823543%_)))))))
                (_%$%loop2348923582%_ _%$%target2348623576%_ '()))
              (_%$%g2346723539%_ _%$%g2346823543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2346723539%_
                                             _%$%g2346823543%_))))
                                    (_%$%g2346723539%_ _%$%g2346823543%_))))
                            (_%$%g2346723539%_ _%$%g2346823543%_))))
                    (_%$%g2346723539%_ _%$%g2346823543%_)))))
        (_%$%g2346623808%_
         (list (class-type-id _%klass23463%_)
               (class-type-name _%klass23463%_)
               _%fields23464%_
               _%field-offsets23465%_
               _%stx23461%_)))))
  (define |gerbil/core/mop~MOP-5[:0:]#defsystem-class-info|
    (lambda (_%stx23862%_)
      (let* ((_%$%g2386523900%_
              (lambda (_%$%g2386623896%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g2386623896%_)))
             (_%$%g2386424043%_
              (lambda (_%$%g2386623904%_)
                (if (gx#stx-pair? _%$%g2386623904%_)
                    (let ((_%$%e2387123907%_ (gx#syntax-e _%$%g2386623904%_)))
                      (let ((_%$%hd2387223911%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2387123907%_)))
                            (_%$%tl2387323914%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2387123907%_))))
                        (if (gx#stx-pair? _%$%tl2387323914%_)
                            (let ((_%$%e2387423917%_
                                   (gx#syntax-e _%$%tl2387323914%_)))
                              (let ((_%$%hd2387523921%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2387423917%_)))
                                    (_%$%tl2387623924%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2387423917%_))))
                                (if (gx#stx-pair? _%$%tl2387623924%_)
                                    (let ((_%$%e2387723927%_
                                           (gx#syntax-e _%$%tl2387623924%_)))
                                      (let ((_%$%hd2387823931%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2387723927%_)))
                                            (_%$%tl2387923934%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2387723927%_))))
                                        (if (gx#stx-pair? _%$%tl2387923934%_)
                                            (let ((_%$%e2388023937%_
                                                   (gx#syntax-e
                                                    _%$%tl2387923934%_)))
                                              (let ((_%$%hd2388123941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2388023937%_)))
                                                    (_%$%tl2388223944%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2388023937%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%hd2388123941%_)
                                                    (let ((_g24221_
                                                           (gx#syntax-split-splice
                                                            _%$%hd2388123941%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g24222_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g24221_)
                             (##values-length _g24221_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g24222_ 2)))
                      (error "Context expects 2 values" _g24222_)))
                (let ((_%$%target2388323947%_
                       (let () (declare (not safe)) (##values-ref _g24221_ 0)))
                      (_%$%tl2388523950%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g24221_ 1))))
                  (if (gx#stx-null? _%$%tl2388523950%_)
                      (letrec ((_%$%loop2388623953%_
                                (lambda (_%$%hd2388423957%_
                                         _%$%super2389023960%_)
                                  (if (gx#stx-pair? _%$%hd2388423957%_)
                                      (let ((_%$%e2388723962%_
                                             (gx#syntax-e _%$%hd2388423957%_)))
                                        (let ((_%$%lp-hd2388823966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2388723962%_)))
                                              (_%$%lp-tl2388923969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2388723962%_))))
                                          (_%$%loop2388623953%_
                                           _%$%lp-tl2388923969%_
                                           (cons _%$%lp-hd2388823966%_
                                                 _%$%super2389023960%_))))
                                      (let ((_%$%super2389123972%_
                                             (reverse _%$%super2389023960%_)))
                                        (if (gx#stx-pair? _%$%tl2388223944%_)
                                            (let ((_%$%e2389223975%_
                                                   (gx#syntax-e
                                                    _%$%tl2388223944%_)))
                                              (let ((_%$%hd2389323979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2389223975%_)))
                                                    (_%$%tl2389423982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2389223975%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl2389423982%_)
                                                    ((lambda (_%$%g2386723985%_
                                                              _%$%g2386823987%_
                                                              _%$%g2386923988%_
                                                              _%$%g2387023989%_)
                                                       (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g2387023989%_)
                        (gx#identifier? _%$%g2386923988%_)
                        (andmap gx#identifier?
                                (foldr (lambda (_%$%g2401424017%_
                                                _%$%g2401524020%_)
                                         (cons _%$%g2401424017%_
                                               _%$%g2401524020%_))
                                       '()
                                       _%$%g2386823987%_))
                        (gx#identifier? _%$%g2386723985%_))
                   (let* ((_%klass24023%_ (gx#eval-syntax _%$%g2386923988%_))
                          (_%props24026%_
                           (class-type-properties _%klass24023%_))
                          (_%$e24031%_ (agetq 'system-type: _%props24026%_)))
                     (if _%$e24031%_
                         ((lambda (_%type24035%_)
                            (let ((_%fields24038%_
                                   (type-field-list _%type24035%_)))
                              (|gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
                               _%stx23862%_
                               _%klass24023%_
                               _%fields24038%_)))
                          _%$e24031%_)
                         (|gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
                          _%stx23862%_
                          _%klass24023%_)))
                   (_%$%g2386523900%_ _%$%g2386623904%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$%hd2389323979%_
                                                     _%$%super2389123972%_
                                                     _%$%hd2387823931%_
                                                     _%$%hd2387523921%_)
                                                    (_%$%g2386523900%_
                                                     _%$%g2386623904%_))))
                                            (_%$%g2386523900%_
                                             _%$%g2386623904%_)))))))
                        (_%$%loop2388623953%_ _%$%target2388323947%_ '()))
                      (_%$%g2386523900%_ _%$%g2386623904%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2386523900%_
                                                     _%$%g2386623904%_))))
                                            (_%$%g2386523900%_
                                             _%$%g2386623904%_))))
                                    (_%$%g2386523900%_ _%$%g2386623904%_))))
                            (_%$%g2386523900%_ _%$%g2386623904%_))))
                    (_%$%g2386523900%_ _%$%g2386623904%_)))))
        (_%$%g2386424043%_ _%stx23862%_)))))
