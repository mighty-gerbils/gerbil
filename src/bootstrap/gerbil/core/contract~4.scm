(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g99609_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g99610_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g99611_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx49584%_)
        (let* ((_%g4958749605%_
                (lambda (_%g4958849601%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4958849601%_)))
               (_%g4958649800%_
                (lambda (_%g4958849609%_)
                  (if (gx#stx-pair? _%g4958849609%_)
                      (let ((_%e4959149612%_ (gx#syntax-e _%g4958849609%_)))
                        (let ((_%hd4959249616%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4959149612%_)))
                              (_%tl4959349619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4959149612%_))))
                          (if (gx#stx-pair? _%tl4959349619%_)
                              (let ((_%e4959449622%_
                                     (gx#syntax-e _%tl4959349619%_)))
                                (let ((_%hd4959549626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4959449622%_)))
                                      (_%tl4959649629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4959449622%_))))
                                  (if (gx#stx-pair? _%tl4959649629%_)
                                      (let ((_%e4959749632%_
                                             (gx#syntax-e _%tl4959649629%_)))
                                        (let ((_%hd4959849636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4959749632%_)))
                                              (_%tl4959949639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4959749632%_))))
                                          (if (gx#stx-null? _%tl4959949639%_)
                                              ((lambda (_%g4958949642%_
                                                        _%g4959049644%_)
                                                 (if (gx#identifier?
                                                      _%g4958949642%_)
                                                     (let ((_%meta49661%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49584%_
                                                               _%g4958949642%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49661%_))
                                                           (let* ((_%g4966649681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4966749677%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4966749677%_)))
                          (_%g4966549728%_
                           (lambda (_%g4966749685%_)
                             (if (gx#stx-pair? _%g4966749685%_)
                                 (let ((_%e4967049688%_
                                        (gx#syntax-e _%g4966749685%_)))
                                   (let ((_%hd4967149692%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4967049688%_)))
                                         (_%tl4967249695%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4967049688%_))))
                                     (if (gx#stx-pair? _%tl4967249695%_)
                                         (let ((_%e4967349698%_
                                                (gx#syntax-e
                                                 _%tl4967249695%_)))
                                           (let ((_%hd4967449702%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4967349698%_)))
                                                 (_%tl4967549705%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4967349698%_))))
                                             (if (gx#stx-null?
                                                  _%tl4967549705%_)
                                                 ((lambda (_%g4966849708%_
                                                           _%g4966949710%_)
                                                    (if (let ((__tmp99607
                                                               (let ((__obj99436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49661%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj99436
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj99436
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj99436 'id)))))
                  (declare (not safe))
                  (##memq __tmp99607 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4966949710%_ '()))
                            (cons _%g4959049644%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4966949710%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4959049644%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%g4966849708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g4959049644%_
                                                (cons (cons _%g4966849708%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '()))
              (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4967449702%_
                                                  _%hd4967149692%_)
                                                 (_%g4966649681%_
                                                  _%g4966749685%_))))
                                         (_%g4966649681%_ _%g4966749685%_))))
                                 (_%g4966649681%_ _%g4966749685%_)))))
                     (_%g4966549728%_
                      (list (let ((__obj99437 _%meta49661%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj99437
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj99437
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj99437
                                   'type-descriptor)))
                            (let ((__obj99438 _%meta49661%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj99438
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj99438
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj99438
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49661%_))
                       (let* ((_%g4973449749%_
                               (lambda (_%g4973549745%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4973549745%_)))
                              (_%g4973349794%_
                               (lambda (_%g4973549753%_)
                                 (if (gx#stx-pair? _%g4973549753%_)
                                     (let ((_%e4973849756%_
                                            (gx#syntax-e _%g4973549753%_)))
                                       (let ((_%hd4973949760%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4973849756%_)))
                                             (_%tl4974049763%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4973849756%_))))
                                         (if (gx#stx-pair? _%tl4974049763%_)
                                             (let ((_%e4974149766%_
                                                    (gx#syntax-e
                                                     _%tl4974049763%_)))
                                               (let ((_%hd4974249770%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4974149766%_)))
                                                     (_%tl4974349773%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4974149766%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4974349773%_)
                                                     ((lambda (_%g4973649776%_
                                                               _%g4973749778%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g4973749778%_ '()))
                            (cons (cons _%g4973649776%_
                                        (cons _%g4959049644%_ '()))
                                  '()))))
              _%hd4974249770%_
              _%hd4973949760%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4973449749%_
                                                      _%g4973549753%_))))
                                             (_%g4973449749%_
                                              _%g4973549753%_))))
                                     (_%g4973449749%_ _%g4973549753%_)))))
                         (_%g4973349794%_
                          (list (let ((__obj99435 _%meta49661%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj99435
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj99435
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj99435
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49584%_
                                   _%g4958949642%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49584%_
                        _%g4958949642%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4958749605%_
                                                      _%g4958849609%_)))
                                               _%hd4959849636%_
                                               _%hd4959549626%_)
                                              (_%g4958749605%_
                                               _%g4958849609%_))))
                                      (_%g4958749605%_ _%g4958849609%_))))
                              (_%g4958749605%_ _%g4958849609%_))))
                      (_%g4958749605%_ _%g4958849609%_)))))
          (_%g4958649800%_ _%stx49584%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx49804%_)
        (let* ((_%g4980749825%_
                (lambda (_%g4980849821%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4980849821%_)))
               (_%g4980650019%_
                (lambda (_%g4980849829%_)
                  (if (gx#stx-pair? _%g4980849829%_)
                      (let ((_%e4981149832%_ (gx#syntax-e _%g4980849829%_)))
                        (let ((_%hd4981249836%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4981149832%_)))
                              (_%tl4981349839%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4981149832%_))))
                          (if (gx#stx-pair? _%tl4981349839%_)
                              (let ((_%e4981449842%_
                                     (gx#syntax-e _%tl4981349839%_)))
                                (let ((_%hd4981549846%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4981449842%_)))
                                      (_%tl4981649849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4981449842%_))))
                                  (if (gx#stx-pair? _%tl4981649849%_)
                                      (let ((_%e4981749852%_
                                             (gx#syntax-e _%tl4981649849%_)))
                                        (let ((_%hd4981849856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4981749852%_)))
                                              (_%tl4981949859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4981749852%_))))
                                          (if (gx#stx-null? _%tl4981949859%_)
                                              ((lambda (_%g4980949862%_
                                                        _%g4981049864%_)
                                                 (if (gx#identifier?
                                                      _%g4980949862%_)
                                                     (let ((_%meta49880%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49804%_
                                                               _%g4980949862%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49880%_))
                                                           (let* ((_%g4988549900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4988649896%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4988649896%_)))
                          (_%g4988449947%_
                           (lambda (_%g4988649904%_)
                             (if (gx#stx-pair? _%g4988649904%_)
                                 (let ((_%e4988949907%_
                                        (gx#syntax-e _%g4988649904%_)))
                                   (let ((_%hd4989049911%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4988949907%_)))
                                         (_%tl4989149914%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4988949907%_))))
                                     (if (gx#stx-pair? _%tl4989149914%_)
                                         (let ((_%e4989249917%_
                                                (gx#syntax-e
                                                 _%tl4989149914%_)))
                                           (let ((_%hd4989349921%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4989249917%_)))
                                                 (_%tl4989449924%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4989249917%_))))
                                             (if (gx#stx-null?
                                                  _%tl4989449924%_)
                                                 ((lambda (_%g4988749927%_
                                                           _%g4988849929%_)
                                                    (if (let ((__tmp99608
                                                               (let ((__obj99440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49880%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj99440
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj99440
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj99440 'id)))))
                  (declare (not safe))
                  (##memq __tmp99608 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4988849929%_ '()))
                            (cons _%g4981049864%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4988849929%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4981049864%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'or)
                              (cons (cons (gx#datum->syntax '#f 'not)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons _%g4988749927%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g4981049864%_
                                                (cons (cons _%g4988749927%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '()))
              (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4989349921%_
                                                  _%hd4989049911%_)
                                                 (_%g4988549900%_
                                                  _%g4988649904%_))))
                                         (_%g4988549900%_ _%g4988649904%_))))
                                 (_%g4988549900%_ _%g4988649904%_)))))
                     (_%g4988449947%_
                      (list (let ((__obj99441 _%meta49880%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj99441
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj99441
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj99441
                                   'type-descriptor)))
                            (let ((__obj99442 _%meta49880%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj99442
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj99442
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj99442
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49880%_))
                       (let* ((_%g4995349968%_
                               (lambda (_%g4995449964%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4995449964%_)))
                              (_%g4995250013%_
                               (lambda (_%g4995449972%_)
                                 (if (gx#stx-pair? _%g4995449972%_)
                                     (let ((_%e4995749975%_
                                            (gx#syntax-e _%g4995449972%_)))
                                       (let ((_%hd4995849979%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4995749975%_)))
                                             (_%tl4995949982%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4995749975%_))))
                                         (if (gx#stx-pair? _%tl4995949982%_)
                                             (let ((_%e4996049985%_
                                                    (gx#syntax-e
                                                     _%tl4995949982%_)))
                                               (let ((_%hd4996149989%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4996049985%_)))
                                                     (_%tl4996249992%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4996049985%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4996249992%_)
                                                     ((lambda (_%g4995549995%_
                                                               _%g4995649997%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g4995649997%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4981049864%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%g4995549995%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4996149989%_
              _%hd4995849979%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4995349968%_
                                                      _%g4995449972%_))))
                                             (_%g4995349968%_
                                              _%g4995449972%_))))
                                     (_%g4995349968%_ _%g4995449972%_)))))
                         (_%g4995250013%_
                          (list (let ((__obj99439 _%meta49880%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj99439
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj99439
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj99439
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49804%_
                                   _%g4980949862%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49804%_
                        _%g4980949862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4980749825%_
                                                      _%g4980849829%_)))
                                               _%hd4981849856%_
                                               _%hd4981549846%_)
                                              (_%g4980749825%_
                                               _%g4980849829%_))))
                                      (_%g4980749825%_ _%g4980849829%_))))
                              (_%g4980749825%_ _%g4980849829%_))))
                      (_%g4980749825%_ _%g4980849829%_)))))
          (_%g4980650019%_ _%stx49804%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx50023%_)
        (let* ((_%g5002650044%_
                (lambda (_%g5002750040%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5002750040%_)))
               (_%g5002550130%_
                (lambda (_%g5002750048%_)
                  (if (gx#stx-pair? _%g5002750048%_)
                      (let ((_%e5003050051%_ (gx#syntax-e _%g5002750048%_)))
                        (let ((_%hd5003150055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5003050051%_)))
                              (_%tl5003250058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5003050051%_))))
                          (if (gx#stx-pair? _%tl5003250058%_)
                              (let ((_%e5003350061%_
                                     (gx#syntax-e _%tl5003250058%_)))
                                (let ((_%hd5003450065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5003350061%_)))
                                      (_%tl5003550068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5003350061%_))))
                                  (if (gx#stx-pair? _%tl5003550068%_)
                                      (let ((_%e5003650071%_
                                             (gx#syntax-e _%tl5003550068%_)))
                                        (let ((_%hd5003750075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5003650071%_)))
                                              (_%tl5003850078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5003650071%_))))
                                          (if (gx#stx-null? _%tl5003850078%_)
                                              ((lambda (_%g5002850081%_
                                                        _%g5002950083%_)
                                                 (if (gx#identifier?
                                                      _%g5002850081%_)
                                                     (let* ((_%g5009950107%_
                                                             (lambda (_%g5010050103%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g5010050103%_)))
                                                            (_%g5009850126%_
                                                             (lambda (_%g5010050111%_)
                                                               ((lambda (_%g5010150114%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%g5010150114%_ '()))
                                      (cons _%g5002950083%_ '()))))
                        _%g5010050111%_))))
               (_%g5009850126%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx50023%_
                   _%g5002850081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5002650044%_
                                                      _%g5002750048%_)))
                                               _%hd5003750075%_
                                               _%hd5003450065%_)
                                              (_%g5002650044%_
                                               _%g5002750048%_))))
                                      (_%g5002650044%_ _%g5002750048%_))))
                              (_%g5002650044%_ _%g5002750048%_))))
                      (_%g5002650044%_ _%g5002750048%_)))))
          (_%g5002550130%_ _%stx50023%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx50134%_)
        (let* ((_%__stx9278292783%_ _%$stx50134%_)
               (_%g5014050224%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9278292783%_))))
          (let ((_%__kont9278592786%_
                 (lambda (_%g5014250528%_
                          _%g5014350530%_
                          _%g5014450531%_
                          _%g5014550532%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5014550532%_
                                           (cons _%g5014350530%_
                                                 (foldr (lambda (_%g5055650559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5055750562%_)
                  (cons _%g5055650559%_ _%g5055750562%_))
                '()
                _%g5014250528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5014450531%_ '())))))
                (_%__kont9278992790%_
                 (lambda (_%g5017050406%_
                          _%g5017150408%_
                          _%g5017250409%_
                          _%g5017350410%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5017350410%_
                                           (cons _%g5017150408%_
                                                 (foldr (lambda (_%g5043450437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5043550440%_)
                  (cons _%g5043450437%_ _%g5043550440%_))
                '()
                _%g5017050406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5017250409%_ '())))))
                (_%__kont9279392794%_
                 (lambda (_%g5019850289%_ _%g5019950291%_ _%g5020050292%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g5020050292%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g5019950291%_
                                                       (foldr (lambda (_%g5031250315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5031350318%_)
                        (cons _%g5031250315%_ _%g5031350318%_))
                      '()
                      _%g5019850289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9290792908%_
                    (lambda (_%e5020150231%_
                             _%hd5020250235%_
                             _%tl5020350238%_
                             _%e5020450241%_
                             _%hd5020550245%_
                             _%tl5020650248%_
                             _%e5020750251%_
                             _%hd5020850255%_
                             _%tl5020950258%_
                             _%__splice9279592796%_
                             _%target5021050261%_
                             _%tl5021250264%_)
                      (letrec ((_%loop5021350267%_
                                (lambda (_%hd5021150271%_ _%rest5021750274%_)
                                  (if (gx#stx-pair? _%hd5021150271%_)
                                      (let ((_%e5021450276%_
                                             (gx#syntax-e _%hd5021150271%_)))
                                        (let ((_%lp-tl5021650283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5021450276%_)))
                                              (_%lp-hd5021550280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5021450276%_))))
                                          (_%loop5021350267%_
                                           _%lp-tl5021650283%_
                                           (cons _%lp-hd5021550280%_
                                                 _%rest5021750274%_))))
                                      (let ((_%rest5021850286%_
                                             (reverse _%rest5021750274%_)))
                                        (_%__kont9279392794%_
                                         _%rest5021850286%_
                                         _%hd5020850255%_
                                         _%hd5020550245%_))))))
                        (_%loop5021350267%_ _%target5021050261%_ '()))))
                   (_%__match9288192882%_
                    (lambda (_%e5017450328%_
                             _%hd5017550332%_
                             _%tl5017650335%_
                             _%e5017750338%_
                             _%hd5017850342%_
                             _%tl5017950345%_
                             _%e5018050348%_
                             _%hd5018150352%_
                             _%tl5018250355%_
                             _%e5018350358%_
                             _%hd5018450362%_
                             _%tl5018550365%_
                             _%e5018650368%_
                             _%hd5018750372%_
                             _%tl5018850375%_
                             _%__splice9279192792%_
                             _%target5018950378%_
                             _%tl5019150381%_)
                      (letrec ((_%loop5019250384%_
                                (lambda (_%hd5019050388%_ _%rest5019650391%_)
                                  (if (gx#stx-pair? _%hd5019050388%_)
                                      (let ((_%e5019350393%_
                                             (gx#syntax-e _%hd5019050388%_)))
                                        (let ((_%lp-tl5019550400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5019350393%_)))
                                              (_%lp-hd5019450397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5019350393%_))))
                                          (_%loop5019250384%_
                                           _%lp-tl5019550400%_
                                           (cons _%lp-hd5019450397%_
                                                 _%rest5019650391%_))))
                                      (let ((_%rest5019750403%_
                                             (reverse _%rest5019650391%_)))
                                        (_%__kont9278992790%_
                                         _%rest5019750403%_
                                         _%hd5018750372%_
                                         _%hd5018450362%_
                                         _%hd5017850342%_))))))
                        (_%loop5019250384%_ _%target5018950378%_ '()))))
                   (_%__match9283992840%_
                    (lambda (_%e5014650450%_
                             _%hd5014750454%_
                             _%tl5014850457%_
                             _%e5014950460%_
                             _%hd5015050464%_
                             _%tl5015150467%_
                             _%e5015250470%_
                             _%hd5015350474%_
                             _%tl5015450477%_
                             _%e5015550480%_
                             _%hd5015650484%_
                             _%tl5015750487%_
                             _%e5015850490%_
                             _%hd5015950494%_
                             _%tl5016050497%_
                             _%__splice9278792788%_
                             _%target5016150500%_
                             _%tl5016350503%_)
                      (letrec ((_%loop5016450506%_
                                (lambda (_%hd5016250510%_ _%rest5016850513%_)
                                  (if (gx#stx-pair? _%hd5016250510%_)
                                      (let ((_%e5016550515%_
                                             (gx#syntax-e _%hd5016250510%_)))
                                        (let ((_%lp-tl5016750522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5016550515%_)))
                                              (_%lp-hd5016650519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5016550515%_))))
                                          (_%loop5016450506%_
                                           _%lp-tl5016750522%_
                                           (cons _%lp-hd5016650519%_
                                                 _%rest5016850513%_))))
                                      (let ((_%rest5016950525%_
                                             (reverse _%rest5016850513%_)))
                                        (_%__kont9278592786%_
                                         _%rest5016950525%_
                                         _%hd5015950494%_
                                         _%hd5015650484%_
                                         _%hd5015050464%_))))))
                        (_%loop5016450506%_ _%target5016150500%_ '())))))
              (if (gx#stx-pair? _%__stx9278292783%_)
                  (let ((_%e5014650450%_ (gx#syntax-e _%__stx9278292783%_)))
                    (let ((_%tl5014850457%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5014650450%_)))
                          (_%hd5014750454%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5014650450%_))))
                      (if (gx#stx-pair? _%tl5014850457%_)
                          (let ((_%e5014950460%_
                                 (gx#syntax-e _%tl5014850457%_)))
                            (let ((_%tl5015150467%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5014950460%_)))
                                  (_%hd5015050464%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5014950460%_))))
                              (if (gx#stx-pair? _%tl5015150467%_)
                                  (let ((_%e5015250470%_
                                         (gx#syntax-e _%tl5015150467%_)))
                                    (let ((_%tl5015450477%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5015250470%_)))
                                          (_%hd5015350474%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5015250470%_))))
                                      (if (gx#identifier? _%hd5015350474%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g99609_|
                                               _%hd5015350474%_)
                                              (if (gx#stx-pair?
                                                   _%tl5015450477%_)
                                                  (let ((_%e5015550480%_
                                                         (gx#syntax-e
                                                          _%tl5015450477%_)))
                                                    (let ((_%tl5015750487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5015550480%_)))
                                                          (_%hd5015650484%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5015550480%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5015750487%_)
                                                          (let ((_%e5015850490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5015750487%_)))
                    (let ((_%tl5016050497%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5015850490%_)))
                          (_%hd5015950494%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5015850490%_))))
                      (if (gx#stx-pair/null? _%tl5016050497%_)
                          (let ((_%__splice9278792788%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5016050497%_
                                  '0)))
                            (let ((_%tl5016350503%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9278792788%_ '1)))
                                  (_%target5016150500%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9278792788%_
                                      '0))))
                              (if (gx#stx-null? _%tl5016350503%_)
                                  (_%__match9283992840%_
                                   _%e5014650450%_
                                   _%hd5014750454%_
                                   _%tl5014850457%_
                                   _%e5014950460%_
                                   _%hd5015050464%_
                                   _%tl5015150467%_
                                   _%e5015250470%_
                                   _%hd5015350474%_
                                   _%tl5015450477%_
                                   _%e5015550480%_
                                   _%hd5015650484%_
                                   _%tl5015750487%_
                                   _%e5015850490%_
                                   _%hd5015950494%_
                                   _%tl5016050497%_
                                   _%__splice9278792788%_
                                   _%target5016150500%_
                                   _%tl5016350503%_)
                                  (if (gx#stx-pair/null? _%tl5015450477%_)
                                      (let ((_%__splice9279592796%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5015450477%_
                                              '0)))
                                        (let ((_%tl5021250264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9279592796%_
                                                  '1)))
                                              (_%target5021050261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9279592796%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5021250264%_)
                                              (_%__match9290792908%_
                                               _%e5014650450%_
                                               _%hd5014750454%_
                                               _%tl5014850457%_
                                               _%e5014950460%_
                                               _%hd5015050464%_
                                               _%tl5015150467%_
                                               _%e5015250470%_
                                               _%hd5015350474%_
                                               _%tl5015450477%_
                                               _%__splice9279592796%_
                                               _%target5021050261%_
                                               _%tl5021250264%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5014050224%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5014050224%_))))))
                          (if (gx#stx-pair/null? _%tl5015450477%_)
                              (let ((_%__splice9279592796%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5015450477%_
                                      '0)))
                                (let ((_%tl5021250264%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9279592796%_
                                          '1)))
                                      (_%target5021050261%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9279592796%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5021250264%_)
                                      (_%__match9290792908%_
                                       _%e5014650450%_
                                       _%hd5014750454%_
                                       _%tl5014850457%_
                                       _%e5014950460%_
                                       _%hd5015050464%_
                                       _%tl5015150467%_
                                       _%e5015250470%_
                                       _%hd5015350474%_
                                       _%tl5015450477%_
                                       _%__splice9279592796%_
                                       _%target5021050261%_
                                       _%tl5021250264%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5014050224%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5014050224%_))))))
                  (if (gx#stx-pair/null? _%tl5015450477%_)
                      (let ((_%__splice9279592796%_
                             (gx#syntax-split-splice->vector
                              _%tl5015450477%_
                              '0)))
                        (let ((_%tl5021250264%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9279592796%_ '1)))
                              (_%target5021050261%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9279592796%_ '0))))
                          (if (gx#stx-null? _%tl5021250264%_)
                              (_%__match9290792908%_
                               _%e5014650450%_
                               _%hd5014750454%_
                               _%tl5014850457%_
                               _%e5014950460%_
                               _%hd5015050464%_
                               _%tl5015150467%_
                               _%e5015250470%_
                               _%hd5015350474%_
                               _%tl5015450477%_
                               _%__splice9279592796%_
                               _%target5021050261%_
                               _%tl5021250264%_)
                              (let ()
                                (declare (not safe))
                                (_%g5014050224%_)))))
                      (let () (declare (not safe)) (_%g5014050224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5015450477%_)
                                                      (let ((_%__splice9279592796%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5015450477%_
                                                              '0)))
                                                        (let ((_%tl5021250264%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9279592796%_ '1)))
                      (_%target5021050261%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9279592796%_ '0))))
                  (if (gx#stx-null? _%tl5021250264%_)
                      (_%__match9290792908%_
                       _%e5014650450%_
                       _%hd5014750454%_
                       _%tl5014850457%_
                       _%e5014950460%_
                       _%hd5015050464%_
                       _%tl5015150467%_
                       _%e5015250470%_
                       _%hd5015350474%_
                       _%tl5015450477%_
                       _%__splice9279592796%_
                       _%target5021050261%_
                       _%tl5021250264%_)
                      (let () (declare (not safe)) (_%g5014050224%_)))))
              (let () (declare (not safe)) (_%g5014050224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g99610_|
                                                   _%hd5015350474%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5015450477%_)
                                                      (let ((_%e5018350358%_
                                                             (gx#syntax-e
                                                              _%tl5015450477%_)))
                                                        (let ((_%tl5018550365%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5018350358%_)))
                      (_%hd5018450362%_
                       (let () (declare (not safe)) (##car _%e5018350358%_))))
                  (if (gx#stx-pair? _%tl5018550365%_)
                      (let ((_%e5018650368%_ (gx#syntax-e _%tl5018550365%_)))
                        (let ((_%tl5018850375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5018650368%_)))
                              (_%hd5018750372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5018650368%_))))
                          (if (gx#stx-pair/null? _%tl5018850375%_)
                              (let ((_%__splice9279192792%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5018850375%_
                                      '0)))
                                (let ((_%tl5019150381%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9279192792%_
                                          '1)))
                                      (_%target5018950378%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9279192792%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5019150381%_)
                                      (_%__match9288192882%_
                                       _%e5014650450%_
                                       _%hd5014750454%_
                                       _%tl5014850457%_
                                       _%e5014950460%_
                                       _%hd5015050464%_
                                       _%tl5015150467%_
                                       _%e5015250470%_
                                       _%hd5015350474%_
                                       _%tl5015450477%_
                                       _%e5018350358%_
                                       _%hd5018450362%_
                                       _%tl5018550365%_
                                       _%e5018650368%_
                                       _%hd5018750372%_
                                       _%tl5018850375%_
                                       _%__splice9279192792%_
                                       _%target5018950378%_
                                       _%tl5019150381%_)
                                      (if (gx#stx-pair/null? _%tl5015450477%_)
                                          (let ((_%__splice9279592796%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5015450477%_
                                                  '0)))
                                            (let ((_%tl5021250264%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9279592796%_
                                                      '1)))
                                                  (_%target5021050261%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9279592796%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5021250264%_)
                                                  (_%__match9290792908%_
                                                   _%e5014650450%_
                                                   _%hd5014750454%_
                                                   _%tl5014850457%_
                                                   _%e5014950460%_
                                                   _%hd5015050464%_
                                                   _%tl5015150467%_
                                                   _%e5015250470%_
                                                   _%hd5015350474%_
                                                   _%tl5015450477%_
                                                   _%__splice9279592796%_
                                                   _%target5021050261%_
                                                   _%tl5021250264%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5014050224%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5014050224%_))))))
                              (if (gx#stx-pair/null? _%tl5015450477%_)
                                  (let ((_%__splice9279592796%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5015450477%_
                                          '0)))
                                    (let ((_%tl5021250264%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9279592796%_
                                              '1)))
                                          (_%target5021050261%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9279592796%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5021250264%_)
                                          (_%__match9290792908%_
                                           _%e5014650450%_
                                           _%hd5014750454%_
                                           _%tl5014850457%_
                                           _%e5014950460%_
                                           _%hd5015050464%_
                                           _%tl5015150467%_
                                           _%e5015250470%_
                                           _%hd5015350474%_
                                           _%tl5015450477%_
                                           _%__splice9279592796%_
                                           _%target5021050261%_
                                           _%tl5021250264%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5014050224%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5014050224%_))))))
                      (if (gx#stx-pair/null? _%tl5015450477%_)
                          (let ((_%__splice9279592796%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5015450477%_
                                  '0)))
                            (let ((_%tl5021250264%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9279592796%_ '1)))
                                  (_%target5021050261%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9279592796%_
                                      '0))))
                              (if (gx#stx-null? _%tl5021250264%_)
                                  (_%__match9290792908%_
                                   _%e5014650450%_
                                   _%hd5014750454%_
                                   _%tl5014850457%_
                                   _%e5014950460%_
                                   _%hd5015050464%_
                                   _%tl5015150467%_
                                   _%e5015250470%_
                                   _%hd5015350474%_
                                   _%tl5015450477%_
                                   _%__splice9279592796%_
                                   _%target5021050261%_
                                   _%tl5021250264%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5014050224%_)))))
                          (let () (declare (not safe)) (_%g5014050224%_))))))
              (if (gx#stx-pair/null? _%tl5015450477%_)
                  (let ((_%__splice9279592796%_
                         (gx#syntax-split-splice->vector _%tl5015450477%_ '0)))
                    (let ((_%tl5021250264%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9279592796%_ '1)))
                          (_%target5021050261%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9279592796%_ '0))))
                      (if (gx#stx-null? _%tl5021250264%_)
                          (_%__match9290792908%_
                           _%e5014650450%_
                           _%hd5014750454%_
                           _%tl5014850457%_
                           _%e5014950460%_
                           _%hd5015050464%_
                           _%tl5015150467%_
                           _%e5015250470%_
                           _%hd5015350474%_
                           _%tl5015450477%_
                           _%__splice9279592796%_
                           _%target5021050261%_
                           _%tl5021250264%_)
                          (let () (declare (not safe)) (_%g5014050224%_)))))
                  (let () (declare (not safe)) (_%g5014050224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5015450477%_)
                                                      (let ((_%__splice9279592796%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5015450477%_
                                                              '0)))
                                                        (let ((_%tl5021250264%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9279592796%_ '1)))
                      (_%target5021050261%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9279592796%_ '0))))
                  (if (gx#stx-null? _%tl5021250264%_)
                      (_%__match9290792908%_
                       _%e5014650450%_
                       _%hd5014750454%_
                       _%tl5014850457%_
                       _%e5014950460%_
                       _%hd5015050464%_
                       _%tl5015150467%_
                       _%e5015250470%_
                       _%hd5015350474%_
                       _%tl5015450477%_
                       _%__splice9279592796%_
                       _%target5021050261%_
                       _%tl5021250264%_)
                      (let () (declare (not safe)) (_%g5014050224%_)))))
              (let () (declare (not safe)) (_%g5014050224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5015450477%_)
                                              (let ((_%__splice9279592796%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5015450477%_
                                                      '0)))
                                                (let ((_%tl5021250264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9279592796%_
                                                          '1)))
                                                      (_%target5021050261%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9279592796%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5021250264%_)
                                                      (_%__match9290792908%_
                                                       _%e5014650450%_
                                                       _%hd5014750454%_
                                                       _%tl5014850457%_
                                                       _%e5014950460%_
                                                       _%hd5015050464%_
                                                       _%tl5015150467%_
                                                       _%e5015250470%_
                                                       _%hd5015350474%_
                                                       _%tl5015450477%_
                                                       _%__splice9279592796%_
                                                       _%target5021050261%_
                                                       _%tl5021250264%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5014050224%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5014050224%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5014050224%_)))))
                          (let () (declare (not safe)) (_%g5014050224%_)))))
                  (let () (declare (not safe)) (_%g5014050224%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx50572%_)
        (let* ((_%__stx9291092911%_ _%$stx50572%_)
               (_%g5057750613%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9291092911%_))))
          (let ((_%__kont9291392914%_
                 (lambda (_%g5057950731%_ _%g5058050733%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g5058050733%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g5057950731%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'val)
                                                             '()))
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'contract-violation!)
                           (cons _%g5058050733%_
                                 (cons _%g5057950731%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9291592916%_
                 (lambda (_%g5059050670%_ _%g5059150672%_ _%g5059250673%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g5059250673%_
                                           (cons _%g5059150672%_ '())))
                               (cons _%g5059050670%_ '()))))))
            (if (gx#stx-pair? _%__stx9291092911%_)
                (let ((_%e5058150701%_ (gx#syntax-e _%__stx9291092911%_)))
                  (let ((_%tl5058350708%_
                         (let () (declare (not safe)) (##cdr _%e5058150701%_)))
                        (_%hd5058250705%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5058150701%_))))
                    (if (gx#stx-pair? _%tl5058350708%_)
                        (let ((_%e5058450711%_ (gx#syntax-e _%tl5058350708%_)))
                          (let ((_%tl5058650718%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5058450711%_)))
                                (_%hd5058550715%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5058450711%_))))
                            (if (gx#stx-pair? _%tl5058650718%_)
                                (let ((_%e5058750721%_
                                       (gx#syntax-e _%tl5058650718%_)))
                                  (let ((_%tl5058950728%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5058750721%_)))
                                        (_%hd5058850725%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5058750721%_))))
                                    (if (gx#stx-null? _%tl5058950728%_)
                                        (_%__kont9291392914%_
                                         _%hd5058850725%_
                                         _%hd5058550715%_)
                                        (if (gx#stx-pair? _%tl5058950728%_)
                                            (let ((_%e5060250650%_
                                                   (gx#syntax-e
                                                    _%tl5058950728%_)))
                                              (let ((_%tl5060450657%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5060250650%_)))
                                                    (_%hd5060350654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5060250650%_))))
                                                (if (gx#identifier?
                                                     _%hd5060350654%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g99611_|
                                                         _%hd5060350654%_)
                                                        (if (gx#stx-pair?
                                                             _%tl5060450657%_)
                                                            (let ((_%e5060550660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl5060450657%_)))
                      (let ((_%tl5060750667%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5060550660%_)))
                            (_%hd5060650664%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5060550660%_))))
                        (if (gx#stx-null? _%tl5060750667%_)
                            (_%__kont9291592916%_
                             _%hd5060650664%_
                             _%hd5058850725%_
                             _%hd5058550715%_)
                            (let () (declare (not safe)) (_%g5057750613%_)))))
                    (let () (declare (not safe)) (_%g5057750613%_)))
                (let () (declare (not safe)) (_%g5057750613%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5057750613%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5057750613%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5057750613%_)))))
                        (let () (declare (not safe)) (_%g5057750613%_)))))
                (let () (declare (not safe)) (_%g5057750613%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx50752%_)
        (let ((_%g5075550762%_
               (lambda (_%g5075650758%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5075650758%_))))
          (_%g5075550762%_ _%$stx50752%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx50766%_)
        (let ((_%g5076950776%_
               (lambda (_%g5077050772%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5077050772%_))))
          (_%g5076950776%_ _%$stx50766%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx50780%_)
        (let* ((_%g5078450798%_
                (lambda (_%g5078550794%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5078550794%_)))
               (_%g5078350839%_
                (lambda (_%g5078550802%_)
                  (if (gx#stx-pair? _%g5078550802%_)
                      (let ((_%e5078750805%_ (gx#syntax-e _%g5078550802%_)))
                        (let ((_%hd5078850809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5078750805%_)))
                              (_%tl5078950812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5078750805%_))))
                          (if (gx#stx-pair? _%tl5078950812%_)
                              (let ((_%e5079050815%_
                                     (gx#syntax-e _%tl5078950812%_)))
                                (let ((_%hd5079150819%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5079050815%_)))
                                      (_%tl5079250822%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5079050815%_))))
                                  (if (gx#stx-null? _%tl5079250822%_)
                                      ((lambda (_%g5078650825%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%g5078650825%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%g5078650825%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5079150819%_)
                                      (_%g5078450798%_ _%g5078550802%_))))
                              (_%g5078450798%_ _%g5078550802%_))))
                      (_%g5078450798%_ _%g5078550802%_)))))
          (_%g5078350839%_ _%$stx50780%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx50843%_)
        (let* ((_%g5084650869%_
                (lambda (_%g5084750865%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5084750865%_)))
               (_%g5084550993%_
                (lambda (_%g5084750873%_)
                  (if (gx#stx-pair? _%g5084750873%_)
                      (let ((_%e5085250876%_ (gx#syntax-e _%g5084750873%_)))
                        (let ((_%hd5085350880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5085250876%_)))
                              (_%tl5085450883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5085250876%_))))
                          (if (gx#stx-pair? _%tl5085450883%_)
                              (let ((_%e5085550886%_
                                     (gx#syntax-e _%tl5085450883%_)))
                                (let ((_%hd5085650890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5085550886%_)))
                                      (_%tl5085750893%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5085550886%_))))
                                  (if (gx#stx-pair? _%tl5085750893%_)
                                      (let ((_%e5085850896%_
                                             (gx#syntax-e _%tl5085750893%_)))
                                        (let ((_%hd5085950900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5085850896%_)))
                                              (_%tl5086050903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5085850896%_))))
                                          (if (gx#stx-pair? _%tl5086050903%_)
                                              (let ((_%e5086150906%_
                                                     (gx#syntax-e
                                                      _%tl5086050903%_)))
                                                (let ((_%hd5086250910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5086150906%_)))
                                                      (_%tl5086350913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5086150906%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5086350913%_)
                                                      ((lambda (_%g5084850916%_
                                                                _%g5084950918%_
                                                                _%g5085050919%_
                                                                _%g5085150920%_)
                                                         (let* ((_%g5094050948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g5094150944%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g5094150944%_)))
                        (_%g5093950967%_
                         (lambda (_%g5094150952%_)
                           ((lambda (_%g5094250955%_)
                              (cons (gx#datum->syntax '#f 'abort!)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'raise-contract-violation-error)
                                                (cons '"contract violation"
                                                      (cons 'context:
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g5094250955%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g5084950918%_ '()))
                                      (cons 'value:
                                            (cons _%g5084850916%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g5094150952%_))))
                   (_%g5093950967%_
                    (let ((_%$e50979%_
                           (let ((_%$e50971%_ (gx#stx-source _%g5085050919%_)))
                             (if _%$e50971%_
                                 _%$e50971%_
                                 (let ((_%$e50975%_
                                        (gx#stx-source _%stx50843%_)))
                                   (if _%$e50975%_
                                       _%$e50975%_
                                       (gx#stx-source _%g5085150920%_)))))))
                      (if _%$e50979%_
                          ((lambda (_%locat50983%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g5098550987%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat50983%_
                                   '#t
                                   _%g5098550987%_)))))
                           _%$e50979%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd5086250910%_
               _%hd5085950900%_
               _%hd5085650890%_
               _%hd5085350880%_)
              (_%g5084650869%_ _%g5084750873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5084650869%_
                                               _%g5084750873%_))))
                                      (_%g5084650869%_ _%g5084750873%_))))
                              (_%g5084650869%_ _%g5084750873%_))))
                      (_%g5084650869%_ _%g5084750873%_)))))
          (_%g5084550993%_ _%stx50843%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx50997%_)
        (let* ((_%g5100051015%_
                (lambda (_%g5100151011%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5100151011%_)))
               (_%g5099951111%_
                (lambda (_%g5100151019%_)
                  (if (gx#stx-pair? _%g5100151019%_)
                      (let ((_%e5100451022%_ (gx#syntax-e _%g5100151019%_)))
                        (let ((_%hd5100551026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5100451022%_)))
                              (_%tl5100651029%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5100451022%_))))
                          (if (gx#stx-pair? _%tl5100651029%_)
                              (let ((_%e5100751032%_
                                     (gx#syntax-e _%tl5100651029%_)))
                                (let ((_%hd5100851036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5100751032%_)))
                                      (_%tl5100951039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5100751032%_))))
                                  (if (gx#stx-null? _%tl5100951039%_)
                                      ((lambda (_%g5100251042%_
                                                _%g5100351044%_)
                                         (let* ((_%g5105851066%_
                                                 (lambda (_%g5105951062%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5105951062%_)))
                                                (_%g5105751085%_
                                                 (lambda (_%g5105951070%_)
                                                   ((lambda (_%g5106051073%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'abort!)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'raise-contract-violation-error)
                                (cons '"nil (#f) derefence"
                                      (cons 'context:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%g5106051073%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%g5100251042%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5105951070%_))))
                                           (_%g5105751085%_
                                            (let ((_%$e51097%_
                                                   (let ((_%$e51089%_
                                                          (gx#stx-source
                                                           _%g5100251042%_)))
                                                     (if _%$e51089%_
                                                         _%$e51089%_
                                                         (let ((_%$e51093%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx50997%_)))
                   (if _%$e51093%_
                       _%$e51093%_
                       (gx#stx-source _%g5100351044%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e51097%_
                                                  ((lambda (_%locat51101%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g5110351105%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat51101%_
                                                           '#t
                                                           _%g5110351105%_)))))
                                                   _%$e51097%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd5100851036%_
                                       _%hd5100551026%_)
                                      (_%g5100051015%_ _%g5100151019%_))))
                              (_%g5100051015%_ _%g5100151019%_))))
                      (_%g5100051015%_ _%g5100151019%_)))))
          (_%g5099951111%_ _%stx50997%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx51115%_)
        (let* ((_%g5111951133%_
                (lambda (_%g5112051129%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5112051129%_)))
               (_%g5111851174%_
                (lambda (_%g5112051137%_)
                  (if (gx#stx-pair? _%g5112051137%_)
                      (let ((_%e5112251140%_ (gx#syntax-e _%g5112051137%_)))
                        (let ((_%hd5112351144%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5112251140%_)))
                              (_%tl5112451147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5112251140%_))))
                          (if (gx#stx-pair? _%tl5112451147%_)
                              (let ((_%e5112551150%_
                                     (gx#syntax-e _%tl5112451147%_)))
                                (let ((_%hd5112651154%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5112551150%_)))
                                      (_%tl5112751157%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5112551150%_))))
                                  (if (gx#stx-null? _%tl5112751157%_)
                                      ((lambda (_%g5112151160%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@abort)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _%g5112151160%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5112651154%_)
                                      (_%g5111951133%_ _%g5112051137%_))))
                              (_%g5111951133%_ _%g5112051137%_))))
                      (_%g5111951133%_ _%g5112051137%_)))))
          (_%g5111851174%_ _%$stx51115%_))))))
