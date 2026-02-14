(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g283021_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g283022_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g283023_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx232996%_)
        (let* ((_%g232999233017%_
                (lambda (_%g233000233013%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g233000233013%_)))
               (_%g232998233212%_
                (lambda (_%g233000233021%_)
                  (if (gx#stx-pair? _%g233000233021%_)
                      (let ((_%e233003233024%_
                             (gx#syntax-e _%g233000233021%_)))
                        (let ((_%hd233004233028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233003233024%_)))
                              (_%tl233005233031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233003233024%_))))
                          (if (gx#stx-pair? _%tl233005233031%_)
                              (let ((_%e233006233034%_
                                     (gx#syntax-e _%tl233005233031%_)))
                                (let ((_%hd233007233038%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e233006233034%_)))
                                      (_%tl233008233041%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e233006233034%_))))
                                  (if (gx#stx-pair? _%tl233008233041%_)
                                      (let ((_%e233009233044%_
                                             (gx#syntax-e _%tl233008233041%_)))
                                        (let ((_%hd233010233048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e233009233044%_)))
                                              (_%tl233011233051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e233009233044%_))))
                                          (if (gx#stx-null? _%tl233011233051%_)
                                              ((lambda (_%g233001233054%_
                                                        _%g233002233056%_)
                                                 (if (gx#identifier?
                                                      _%g233001233054%_)
                                                     (let ((_%meta233073%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx232996%_
                                                               _%g233001233054%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta233073%_))
                                                           (let* ((_%g233078233093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g233079233089%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g233079233089%_)))
                          (_%g233077233140%_
                           (lambda (_%g233079233097%_)
                             (if (gx#stx-pair? _%g233079233097%_)
                                 (let ((_%e233082233100%_
                                        (gx#syntax-e _%g233079233097%_)))
                                   (let ((_%hd233083233104%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e233082233100%_)))
                                         (_%tl233084233107%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e233082233100%_))))
                                     (if (gx#stx-pair? _%tl233084233107%_)
                                         (let ((_%e233085233110%_
                                                (gx#syntax-e
                                                 _%tl233084233107%_)))
                                           (let ((_%hd233086233114%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e233085233110%_)))
                                                 (_%tl233087233117%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e233085233110%_))))
                                             (if (gx#stx-null?
                                                  _%tl233087233117%_)
                                                 ((lambda (_%g233080233120%_
                                                           _%g233081233122%_)
                                                    (if (let ((__tmp283019
                                                               (let ((__obj282848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta233073%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj282848
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj282848
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj282848 'id)))))
                  (declare (not safe))
                  (##memq __tmp283019 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g233081233122%_ '()))
                            (cons _%g233002233056%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g233081233122%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g233002233056%_
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%g233080233120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g233002233056%_
                                                (cons (cons _%g233080233120%_
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
                                                  _%hd233086233114%_
                                                  _%hd233083233104%_)
                                                 (_%g233078233093%_
                                                  _%g233079233097%_))))
                                         (_%g233078233093%_
                                          _%g233079233097%_))))
                                 (_%g233078233093%_ _%g233079233097%_)))))
                     (_%g233077233140%_
                      (list (let ((__obj282849 _%meta233073%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj282849
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj282849
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj282849
                                   'type-descriptor)))
                            (let ((__obj282850 _%meta233073%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj282850
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj282850
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj282850
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta233073%_))
                       (let* ((_%g233146233161%_
                               (lambda (_%g233147233157%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g233147233157%_)))
                              (_%g233145233206%_
                               (lambda (_%g233147233165%_)
                                 (if (gx#stx-pair? _%g233147233165%_)
                                     (let ((_%e233150233168%_
                                            (gx#syntax-e _%g233147233165%_)))
                                       (let ((_%hd233151233172%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e233150233168%_)))
                                             (_%tl233152233175%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e233150233168%_))))
                                         (if (gx#stx-pair? _%tl233152233175%_)
                                             (let ((_%e233153233178%_
                                                    (gx#syntax-e
                                                     _%tl233152233175%_)))
                                               (let ((_%hd233154233182%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e233153233178%_)))
                                                     (_%tl233155233185%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e233153233178%_))))
                                                 (if (gx#stx-null?
                                                      _%tl233155233185%_)
                                                     ((lambda (_%g233148233188%_
                                                               _%g233149233190%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g233149233190%_ '()))
                            (cons (cons _%g233148233188%_
                                        (cons _%g233002233056%_ '()))
                                  '()))))
              _%hd233154233182%_
              _%hd233151233172%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g233146233161%_
                                                      _%g233147233165%_))))
                                             (_%g233146233161%_
                                              _%g233147233165%_))))
                                     (_%g233146233161%_ _%g233147233165%_)))))
                         (_%g233145233206%_
                          (list (let ((__obj282847 _%meta233073%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj282847
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj282847
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj282847
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx232996%_
                                   _%g233001233054%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx232996%_
                        _%g233001233054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g232999233017%_
                                                      _%g233000233021%_)))
                                               _%hd233010233048%_
                                               _%hd233007233038%_)
                                              (_%g232999233017%_
                                               _%g233000233021%_))))
                                      (_%g232999233017%_ _%g233000233021%_))))
                              (_%g232999233017%_ _%g233000233021%_))))
                      (_%g232999233017%_ _%g233000233021%_)))))
          (_%g232998233212%_ _%stx232996%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx233216%_)
        (let* ((_%g233219233237%_
                (lambda (_%g233220233233%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g233220233233%_)))
               (_%g233218233431%_
                (lambda (_%g233220233241%_)
                  (if (gx#stx-pair? _%g233220233241%_)
                      (let ((_%e233223233244%_
                             (gx#syntax-e _%g233220233241%_)))
                        (let ((_%hd233224233248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233223233244%_)))
                              (_%tl233225233251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233223233244%_))))
                          (if (gx#stx-pair? _%tl233225233251%_)
                              (let ((_%e233226233254%_
                                     (gx#syntax-e _%tl233225233251%_)))
                                (let ((_%hd233227233258%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e233226233254%_)))
                                      (_%tl233228233261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e233226233254%_))))
                                  (if (gx#stx-pair? _%tl233228233261%_)
                                      (let ((_%e233229233264%_
                                             (gx#syntax-e _%tl233228233261%_)))
                                        (let ((_%hd233230233268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e233229233264%_)))
                                              (_%tl233231233271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e233229233264%_))))
                                          (if (gx#stx-null? _%tl233231233271%_)
                                              ((lambda (_%g233221233274%_
                                                        _%g233222233276%_)
                                                 (if (gx#identifier?
                                                      _%g233221233274%_)
                                                     (let ((_%meta233292%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx233216%_
                                                               _%g233221233274%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta233292%_))
                                                           (let* ((_%g233297233312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g233298233308%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g233298233308%_)))
                          (_%g233296233359%_
                           (lambda (_%g233298233316%_)
                             (if (gx#stx-pair? _%g233298233316%_)
                                 (let ((_%e233301233319%_
                                        (gx#syntax-e _%g233298233316%_)))
                                   (let ((_%hd233302233323%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e233301233319%_)))
                                         (_%tl233303233326%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e233301233319%_))))
                                     (if (gx#stx-pair? _%tl233303233326%_)
                                         (let ((_%e233304233329%_
                                                (gx#syntax-e
                                                 _%tl233303233326%_)))
                                           (let ((_%hd233305233333%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e233304233329%_)))
                                                 (_%tl233306233336%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e233304233329%_))))
                                             (if (gx#stx-null?
                                                  _%tl233306233336%_)
                                                 ((lambda (_%g233299233339%_
                                                           _%g233300233341%_)
                                                    (if (let ((__tmp283020
                                                               (let ((__obj282852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta233292%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj282852
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj282852
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj282852 'id)))))
                  (declare (not safe))
                  (##memq __tmp283020 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g233300233341%_ '()))
                            (cons _%g233222233276%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g233300233341%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g233222233276%_
                                                          '()))
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
                                    (cons (cons _%g233299233339%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g233222233276%_
                                                (cons (cons _%g233299233339%_
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
                                                  _%hd233305233333%_
                                                  _%hd233302233323%_)
                                                 (_%g233297233312%_
                                                  _%g233298233316%_))))
                                         (_%g233297233312%_
                                          _%g233298233316%_))))
                                 (_%g233297233312%_ _%g233298233316%_)))))
                     (_%g233296233359%_
                      (list (let ((__obj282853 _%meta233292%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj282853
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj282853
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj282853
                                   'type-descriptor)))
                            (let ((__obj282854 _%meta233292%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj282854
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj282854
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj282854
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta233292%_))
                       (let* ((_%g233365233380%_
                               (lambda (_%g233366233376%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g233366233376%_)))
                              (_%g233364233425%_
                               (lambda (_%g233366233384%_)
                                 (if (gx#stx-pair? _%g233366233384%_)
                                     (let ((_%e233369233387%_
                                            (gx#syntax-e _%g233366233384%_)))
                                       (let ((_%hd233370233391%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e233369233387%_)))
                                             (_%tl233371233394%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e233369233387%_))))
                                         (if (gx#stx-pair? _%tl233371233394%_)
                                             (let ((_%e233372233397%_
                                                    (gx#syntax-e
                                                     _%tl233371233394%_)))
                                               (let ((_%hd233373233401%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e233372233397%_)))
                                                     (_%tl233374233404%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e233372233397%_))))
                                                 (if (gx#stx-null?
                                                      _%tl233374233404%_)
                                                     ((lambda (_%g233367233407%_
                                                               _%g233368233409%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g233368233409%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g233222233276%_
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%g233367233407%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd233373233401%_
              _%hd233370233391%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g233365233380%_
                                                      _%g233366233384%_))))
                                             (_%g233365233380%_
                                              _%g233366233384%_))))
                                     (_%g233365233380%_ _%g233366233384%_)))))
                         (_%g233364233425%_
                          (list (let ((__obj282851 _%meta233292%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj282851
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj282851
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj282851
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx233216%_
                                   _%g233221233274%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx233216%_
                        _%g233221233274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g233219233237%_
                                                      _%g233220233241%_)))
                                               _%hd233230233268%_
                                               _%hd233227233258%_)
                                              (_%g233219233237%_
                                               _%g233220233241%_))))
                                      (_%g233219233237%_ _%g233220233241%_))))
                              (_%g233219233237%_ _%g233220233241%_))))
                      (_%g233219233237%_ _%g233220233241%_)))))
          (_%g233218233431%_ _%stx233216%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx233435%_)
        (let* ((_%g233438233456%_
                (lambda (_%g233439233452%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g233439233452%_)))
               (_%g233437233542%_
                (lambda (_%g233439233460%_)
                  (if (gx#stx-pair? _%g233439233460%_)
                      (let ((_%e233442233463%_
                             (gx#syntax-e _%g233439233460%_)))
                        (let ((_%hd233443233467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233442233463%_)))
                              (_%tl233444233470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233442233463%_))))
                          (if (gx#stx-pair? _%tl233444233470%_)
                              (let ((_%e233445233473%_
                                     (gx#syntax-e _%tl233444233470%_)))
                                (let ((_%hd233446233477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e233445233473%_)))
                                      (_%tl233447233480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e233445233473%_))))
                                  (if (gx#stx-pair? _%tl233447233480%_)
                                      (let ((_%e233448233483%_
                                             (gx#syntax-e _%tl233447233480%_)))
                                        (let ((_%hd233449233487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e233448233483%_)))
                                              (_%tl233450233490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e233448233483%_))))
                                          (if (gx#stx-null? _%tl233450233490%_)
                                              ((lambda (_%g233440233493%_
                                                        _%g233441233495%_)
                                                 (if (gx#identifier?
                                                      _%g233440233493%_)
                                                     (let* ((_%g233511233519%_
                                                             (lambda (_%g233512233515%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g233512233515%_)))
                                                            (_%g233510233538%_
                                                             (lambda (_%g233512233523%_)
                                                               ((lambda (_%g233513233526%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%g233513233526%_ '()))
                                      (cons _%g233441233495%_ '()))))
                        _%g233512233523%_))))
               (_%g233510233538%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx233435%_
                   _%g233440233493%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g233438233456%_
                                                      _%g233439233460%_)))
                                               _%hd233449233487%_
                                               _%hd233446233477%_)
                                              (_%g233438233456%_
                                               _%g233439233460%_))))
                                      (_%g233438233456%_ _%g233439233460%_))))
                              (_%g233438233456%_ _%g233439233460%_))))
                      (_%g233438233456%_ _%g233439233460%_)))))
          (_%g233437233542%_ _%stx233435%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx233546%_)
        (let* ((_%__stx276194276195%_ _%$stx233546%_)
               (_%g233552233636%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx276194276195%_))))
          (let ((_%__kont276197276198%_
                 (lambda (_%g233554233940%_
                          _%g233555233942%_
                          _%g233556233943%_
                          _%g233557233944%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g233557233944%_
                                           (cons _%g233555233942%_
                                                 (foldr (lambda (_%g233968233971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g233969233974%_)
                  (cons _%g233968233971%_ _%g233969233974%_))
                '()
                _%g233554233940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g233556233943%_ '())))))
                (_%__kont276201276202%_
                 (lambda (_%g233582233818%_
                          _%g233583233820%_
                          _%g233584233821%_
                          _%g233585233822%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g233585233822%_
                                           (cons _%g233583233820%_
                                                 (foldr (lambda (_%g233846233849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g233847233852%_)
                  (cons _%g233846233849%_ _%g233847233852%_))
                '()
                _%g233582233818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g233584233821%_ '())))))
                (_%__kont276205276206%_
                 (lambda (_%g233610233701%_
                          _%g233611233703%_
                          _%g233612233704%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g233612233704%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g233611233703%_
                                                       (foldr (lambda (_%g233724233727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g233725233730%_)
                        (cons _%g233724233727%_ _%g233725233730%_))
                      '()
                      _%g233610233701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match276319276320%_
                    (lambda (_%e233613233643%_
                             _%hd233614233647%_
                             _%tl233615233650%_
                             _%e233616233653%_
                             _%hd233617233657%_
                             _%tl233618233660%_
                             _%e233619233663%_
                             _%hd233620233667%_
                             _%tl233621233670%_
                             _%__splice276207276208%_
                             _%target233622233673%_
                             _%tl233624233676%_)
                      (letrec ((_%loop233625233679%_
                                (lambda (_%hd233623233683%_
                                         _%rest233629233686%_)
                                  (if (gx#stx-pair? _%hd233623233683%_)
                                      (let ((_%e233626233688%_
                                             (gx#syntax-e _%hd233623233683%_)))
                                        (let ((_%lp-tl233628233695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e233626233688%_)))
                                              (_%lp-hd233627233692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e233626233688%_))))
                                          (_%loop233625233679%_
                                           _%lp-tl233628233695%_
                                           (cons _%lp-hd233627233692%_
                                                 _%rest233629233686%_))))
                                      (let ((_%rest233630233698%_
                                             (reverse _%rest233629233686%_)))
                                        (_%__kont276205276206%_
                                         _%rest233630233698%_
                                         _%hd233620233667%_
                                         _%hd233617233657%_))))))
                        (_%loop233625233679%_ _%target233622233673%_ '()))))
                   (_%__match276293276294%_
                    (lambda (_%e233586233740%_
                             _%hd233587233744%_
                             _%tl233588233747%_
                             _%e233589233750%_
                             _%hd233590233754%_
                             _%tl233591233757%_
                             _%e233592233760%_
                             _%hd233593233764%_
                             _%tl233594233767%_
                             _%e233595233770%_
                             _%hd233596233774%_
                             _%tl233597233777%_
                             _%e233598233780%_
                             _%hd233599233784%_
                             _%tl233600233787%_
                             _%__splice276203276204%_
                             _%target233601233790%_
                             _%tl233603233793%_)
                      (letrec ((_%loop233604233796%_
                                (lambda (_%hd233602233800%_
                                         _%rest233608233803%_)
                                  (if (gx#stx-pair? _%hd233602233800%_)
                                      (let ((_%e233605233805%_
                                             (gx#syntax-e _%hd233602233800%_)))
                                        (let ((_%lp-tl233607233812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e233605233805%_)))
                                              (_%lp-hd233606233809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e233605233805%_))))
                                          (_%loop233604233796%_
                                           _%lp-tl233607233812%_
                                           (cons _%lp-hd233606233809%_
                                                 _%rest233608233803%_))))
                                      (let ((_%rest233609233815%_
                                             (reverse _%rest233608233803%_)))
                                        (_%__kont276201276202%_
                                         _%rest233609233815%_
                                         _%hd233599233784%_
                                         _%hd233596233774%_
                                         _%hd233590233754%_))))))
                        (_%loop233604233796%_ _%target233601233790%_ '()))))
                   (_%__match276251276252%_
                    (lambda (_%e233558233862%_
                             _%hd233559233866%_
                             _%tl233560233869%_
                             _%e233561233872%_
                             _%hd233562233876%_
                             _%tl233563233879%_
                             _%e233564233882%_
                             _%hd233565233886%_
                             _%tl233566233889%_
                             _%e233567233892%_
                             _%hd233568233896%_
                             _%tl233569233899%_
                             _%e233570233902%_
                             _%hd233571233906%_
                             _%tl233572233909%_
                             _%__splice276199276200%_
                             _%target233573233912%_
                             _%tl233575233915%_)
                      (letrec ((_%loop233576233918%_
                                (lambda (_%hd233574233922%_
                                         _%rest233580233925%_)
                                  (if (gx#stx-pair? _%hd233574233922%_)
                                      (let ((_%e233577233927%_
                                             (gx#syntax-e _%hd233574233922%_)))
                                        (let ((_%lp-tl233579233934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e233577233927%_)))
                                              (_%lp-hd233578233931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e233577233927%_))))
                                          (_%loop233576233918%_
                                           _%lp-tl233579233934%_
                                           (cons _%lp-hd233578233931%_
                                                 _%rest233580233925%_))))
                                      (let ((_%rest233581233937%_
                                             (reverse _%rest233580233925%_)))
                                        (_%__kont276197276198%_
                                         _%rest233581233937%_
                                         _%hd233571233906%_
                                         _%hd233568233896%_
                                         _%hd233562233876%_))))))
                        (_%loop233576233918%_ _%target233573233912%_ '())))))
              (if (gx#stx-pair? _%__stx276194276195%_)
                  (let ((_%e233558233862%_
                         (gx#syntax-e _%__stx276194276195%_)))
                    (let ((_%tl233560233869%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e233558233862%_)))
                          (_%hd233559233866%_
                           (let ()
                             (declare (not safe))
                             (##car _%e233558233862%_))))
                      (if (gx#stx-pair? _%tl233560233869%_)
                          (let ((_%e233561233872%_
                                 (gx#syntax-e _%tl233560233869%_)))
                            (let ((_%tl233563233879%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e233561233872%_)))
                                  (_%hd233562233876%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e233561233872%_))))
                              (if (gx#stx-pair? _%tl233563233879%_)
                                  (let ((_%e233564233882%_
                                         (gx#syntax-e _%tl233563233879%_)))
                                    (let ((_%tl233566233889%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e233564233882%_)))
                                          (_%hd233565233886%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e233564233882%_))))
                                      (if (gx#identifier? _%hd233565233886%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g283021_|
                                               _%hd233565233886%_)
                                              (if (gx#stx-pair?
                                                   _%tl233566233889%_)
                                                  (let ((_%e233567233892%_
                                                         (gx#syntax-e
                                                          _%tl233566233889%_)))
                                                    (let ((_%tl233569233899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e233567233892%_)))
                                                          (_%hd233568233896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e233567233892%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl233569233899%_)
                                                          (let ((_%e233570233902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl233569233899%_)))
                    (let ((_%tl233572233909%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e233570233902%_)))
                          (_%hd233571233906%_
                           (let ()
                             (declare (not safe))
                             (##car _%e233570233902%_))))
                      (if (gx#stx-pair/null? _%tl233572233909%_)
                          (let ((_%__splice276199276200%_
                                 (gx#syntax-split-splice->vector
                                  _%tl233572233909%_
                                  '0)))
                            (let ((_%tl233575233915%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276199276200%_
                                      '1)))
                                  (_%target233573233912%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276199276200%_
                                      '0))))
                              (if (gx#stx-null? _%tl233575233915%_)
                                  (_%__match276251276252%_
                                   _%e233558233862%_
                                   _%hd233559233866%_
                                   _%tl233560233869%_
                                   _%e233561233872%_
                                   _%hd233562233876%_
                                   _%tl233563233879%_
                                   _%e233564233882%_
                                   _%hd233565233886%_
                                   _%tl233566233889%_
                                   _%e233567233892%_
                                   _%hd233568233896%_
                                   _%tl233569233899%_
                                   _%e233570233902%_
                                   _%hd233571233906%_
                                   _%tl233572233909%_
                                   _%__splice276199276200%_
                                   _%target233573233912%_
                                   _%tl233575233915%_)
                                  (if (gx#stx-pair/null? _%tl233566233889%_)
                                      (let ((_%__splice276207276208%_
                                             (gx#syntax-split-splice->vector
                                              _%tl233566233889%_
                                              '0)))
                                        (let ((_%tl233624233676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice276207276208%_
                                                  '1)))
                                              (_%target233622233673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice276207276208%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl233624233676%_)
                                              (_%__match276319276320%_
                                               _%e233558233862%_
                                               _%hd233559233866%_
                                               _%tl233560233869%_
                                               _%e233561233872%_
                                               _%hd233562233876%_
                                               _%tl233563233879%_
                                               _%e233564233882%_
                                               _%hd233565233886%_
                                               _%tl233566233889%_
                                               _%__splice276207276208%_
                                               _%target233622233673%_
                                               _%tl233624233676%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g233552233636%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g233552233636%_))))))
                          (if (gx#stx-pair/null? _%tl233566233889%_)
                              (let ((_%__splice276207276208%_
                                     (gx#syntax-split-splice->vector
                                      _%tl233566233889%_
                                      '0)))
                                (let ((_%tl233624233676%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276207276208%_
                                          '1)))
                                      (_%target233622233673%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276207276208%_
                                          '0))))
                                  (if (gx#stx-null? _%tl233624233676%_)
                                      (_%__match276319276320%_
                                       _%e233558233862%_
                                       _%hd233559233866%_
                                       _%tl233560233869%_
                                       _%e233561233872%_
                                       _%hd233562233876%_
                                       _%tl233563233879%_
                                       _%e233564233882%_
                                       _%hd233565233886%_
                                       _%tl233566233889%_
                                       _%__splice276207276208%_
                                       _%target233622233673%_
                                       _%tl233624233676%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g233552233636%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g233552233636%_))))))
                  (if (gx#stx-pair/null? _%tl233566233889%_)
                      (let ((_%__splice276207276208%_
                             (gx#syntax-split-splice->vector
                              _%tl233566233889%_
                              '0)))
                        (let ((_%tl233624233676%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276207276208%_ '1)))
                              (_%target233622233673%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276207276208%_ '0))))
                          (if (gx#stx-null? _%tl233624233676%_)
                              (_%__match276319276320%_
                               _%e233558233862%_
                               _%hd233559233866%_
                               _%tl233560233869%_
                               _%e233561233872%_
                               _%hd233562233876%_
                               _%tl233563233879%_
                               _%e233564233882%_
                               _%hd233565233886%_
                               _%tl233566233889%_
                               _%__splice276207276208%_
                               _%target233622233673%_
                               _%tl233624233676%_)
                              (let ()
                                (declare (not safe))
                                (_%g233552233636%_)))))
                      (let () (declare (not safe)) (_%g233552233636%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl233566233889%_)
                                                      (let ((_%__splice276207276208%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl233566233889%_
                                                              '0)))
                                                        (let ((_%tl233624233676%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice276207276208%_ '1)))
                      (_%target233622233673%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276207276208%_ '0))))
                  (if (gx#stx-null? _%tl233624233676%_)
                      (_%__match276319276320%_
                       _%e233558233862%_
                       _%hd233559233866%_
                       _%tl233560233869%_
                       _%e233561233872%_
                       _%hd233562233876%_
                       _%tl233563233879%_
                       _%e233564233882%_
                       _%hd233565233886%_
                       _%tl233566233889%_
                       _%__splice276207276208%_
                       _%target233622233673%_
                       _%tl233624233676%_)
                      (let () (declare (not safe)) (_%g233552233636%_)))))
              (let () (declare (not safe)) (_%g233552233636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g283022_|
                                                   _%hd233565233886%_)
                                                  (if (gx#stx-pair?
                                                       _%tl233566233889%_)
                                                      (let ((_%e233595233770%_
                                                             (gx#syntax-e
                                                              _%tl233566233889%_)))
                                                        (let ((_%tl233597233777%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e233595233770%_)))
                      (_%hd233596233774%_
                       (let ()
                         (declare (not safe))
                         (##car _%e233595233770%_))))
                  (if (gx#stx-pair? _%tl233597233777%_)
                      (let ((_%e233598233780%_
                             (gx#syntax-e _%tl233597233777%_)))
                        (let ((_%tl233600233787%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233598233780%_)))
                              (_%hd233599233784%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233598233780%_))))
                          (if (gx#stx-pair/null? _%tl233600233787%_)
                              (let ((_%__splice276203276204%_
                                     (gx#syntax-split-splice->vector
                                      _%tl233600233787%_
                                      '0)))
                                (let ((_%tl233603233793%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276203276204%_
                                          '1)))
                                      (_%target233601233790%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276203276204%_
                                          '0))))
                                  (if (gx#stx-null? _%tl233603233793%_)
                                      (_%__match276293276294%_
                                       _%e233558233862%_
                                       _%hd233559233866%_
                                       _%tl233560233869%_
                                       _%e233561233872%_
                                       _%hd233562233876%_
                                       _%tl233563233879%_
                                       _%e233564233882%_
                                       _%hd233565233886%_
                                       _%tl233566233889%_
                                       _%e233595233770%_
                                       _%hd233596233774%_
                                       _%tl233597233777%_
                                       _%e233598233780%_
                                       _%hd233599233784%_
                                       _%tl233600233787%_
                                       _%__splice276203276204%_
                                       _%target233601233790%_
                                       _%tl233603233793%_)
                                      (if (gx#stx-pair/null?
                                           _%tl233566233889%_)
                                          (let ((_%__splice276207276208%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl233566233889%_
                                                  '0)))
                                            (let ((_%tl233624233676%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice276207276208%_
                                                      '1)))
                                                  (_%target233622233673%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice276207276208%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl233624233676%_)
                                                  (_%__match276319276320%_
                                                   _%e233558233862%_
                                                   _%hd233559233866%_
                                                   _%tl233560233869%_
                                                   _%e233561233872%_
                                                   _%hd233562233876%_
                                                   _%tl233563233879%_
                                                   _%e233564233882%_
                                                   _%hd233565233886%_
                                                   _%tl233566233889%_
                                                   _%__splice276207276208%_
                                                   _%target233622233673%_
                                                   _%tl233624233676%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g233552233636%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g233552233636%_))))))
                              (if (gx#stx-pair/null? _%tl233566233889%_)
                                  (let ((_%__splice276207276208%_
                                         (gx#syntax-split-splice->vector
                                          _%tl233566233889%_
                                          '0)))
                                    (let ((_%tl233624233676%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276207276208%_
                                              '1)))
                                          (_%target233622233673%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276207276208%_
                                              '0))))
                                      (if (gx#stx-null? _%tl233624233676%_)
                                          (_%__match276319276320%_
                                           _%e233558233862%_
                                           _%hd233559233866%_
                                           _%tl233560233869%_
                                           _%e233561233872%_
                                           _%hd233562233876%_
                                           _%tl233563233879%_
                                           _%e233564233882%_
                                           _%hd233565233886%_
                                           _%tl233566233889%_
                                           _%__splice276207276208%_
                                           _%target233622233673%_
                                           _%tl233624233676%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g233552233636%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g233552233636%_))))))
                      (if (gx#stx-pair/null? _%tl233566233889%_)
                          (let ((_%__splice276207276208%_
                                 (gx#syntax-split-splice->vector
                                  _%tl233566233889%_
                                  '0)))
                            (let ((_%tl233624233676%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276207276208%_
                                      '1)))
                                  (_%target233622233673%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276207276208%_
                                      '0))))
                              (if (gx#stx-null? _%tl233624233676%_)
                                  (_%__match276319276320%_
                                   _%e233558233862%_
                                   _%hd233559233866%_
                                   _%tl233560233869%_
                                   _%e233561233872%_
                                   _%hd233562233876%_
                                   _%tl233563233879%_
                                   _%e233564233882%_
                                   _%hd233565233886%_
                                   _%tl233566233889%_
                                   _%__splice276207276208%_
                                   _%target233622233673%_
                                   _%tl233624233676%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g233552233636%_)))))
                          (let () (declare (not safe)) (_%g233552233636%_))))))
              (if (gx#stx-pair/null? _%tl233566233889%_)
                  (let ((_%__splice276207276208%_
                         (gx#syntax-split-splice->vector
                          _%tl233566233889%_
                          '0)))
                    (let ((_%tl233624233676%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276207276208%_ '1)))
                          (_%target233622233673%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276207276208%_ '0))))
                      (if (gx#stx-null? _%tl233624233676%_)
                          (_%__match276319276320%_
                           _%e233558233862%_
                           _%hd233559233866%_
                           _%tl233560233869%_
                           _%e233561233872%_
                           _%hd233562233876%_
                           _%tl233563233879%_
                           _%e233564233882%_
                           _%hd233565233886%_
                           _%tl233566233889%_
                           _%__splice276207276208%_
                           _%target233622233673%_
                           _%tl233624233676%_)
                          (let () (declare (not safe)) (_%g233552233636%_)))))
                  (let () (declare (not safe)) (_%g233552233636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl233566233889%_)
                                                      (let ((_%__splice276207276208%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl233566233889%_
                                                              '0)))
                                                        (let ((_%tl233624233676%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice276207276208%_ '1)))
                      (_%target233622233673%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276207276208%_ '0))))
                  (if (gx#stx-null? _%tl233624233676%_)
                      (_%__match276319276320%_
                       _%e233558233862%_
                       _%hd233559233866%_
                       _%tl233560233869%_
                       _%e233561233872%_
                       _%hd233562233876%_
                       _%tl233563233879%_
                       _%e233564233882%_
                       _%hd233565233886%_
                       _%tl233566233889%_
                       _%__splice276207276208%_
                       _%target233622233673%_
                       _%tl233624233676%_)
                      (let () (declare (not safe)) (_%g233552233636%_)))))
              (let () (declare (not safe)) (_%g233552233636%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl233566233889%_)
                                              (let ((_%__splice276207276208%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl233566233889%_
                                                      '0)))
                                                (let ((_%tl233624233676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276207276208%_
                                                          '1)))
                                                      (_%target233622233673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276207276208%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl233624233676%_)
                                                      (_%__match276319276320%_
                                                       _%e233558233862%_
                                                       _%hd233559233866%_
                                                       _%tl233560233869%_
                                                       _%e233561233872%_
                                                       _%hd233562233876%_
                                                       _%tl233563233879%_
                                                       _%e233564233882%_
                                                       _%hd233565233886%_
                                                       _%tl233566233889%_
                                                       _%__splice276207276208%_
                                                       _%target233622233673%_
                                                       _%tl233624233676%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g233552233636%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g233552233636%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g233552233636%_)))))
                          (let () (declare (not safe)) (_%g233552233636%_)))))
                  (let () (declare (not safe)) (_%g233552233636%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx233984%_)
        (let* ((_%__stx276322276323%_ _%$stx233984%_)
               (_%g233989234025%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx276322276323%_))))
          (let ((_%__kont276325276326%_
                 (lambda (_%g233991234143%_ _%g233992234145%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g233992234145%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g233991234143%_
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
                           (cons _%g233992234145%_
                                 (cons _%g233991234143%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont276327276328%_
                 (lambda (_%g234002234082%_
                          _%g234003234084%_
                          _%g234004234085%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g234004234085%_
                                           (cons _%g234003234084%_ '())))
                               (cons _%g234002234082%_ '()))))))
            (if (gx#stx-pair? _%__stx276322276323%_)
                (let ((_%e233993234113%_ (gx#syntax-e _%__stx276322276323%_)))
                  (let ((_%tl233995234120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233993234113%_)))
                        (_%hd233994234117%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233993234113%_))))
                    (if (gx#stx-pair? _%tl233995234120%_)
                        (let ((_%e233996234123%_
                               (gx#syntax-e _%tl233995234120%_)))
                          (let ((_%tl233998234130%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e233996234123%_)))
                                (_%hd233997234127%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e233996234123%_))))
                            (if (gx#stx-pair? _%tl233998234130%_)
                                (let ((_%e233999234133%_
                                       (gx#syntax-e _%tl233998234130%_)))
                                  (let ((_%tl234001234140%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233999234133%_)))
                                        (_%hd234000234137%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233999234133%_))))
                                    (if (gx#stx-null? _%tl234001234140%_)
                                        (_%__kont276325276326%_
                                         _%hd234000234137%_
                                         _%hd233997234127%_)
                                        (if (gx#stx-pair? _%tl234001234140%_)
                                            (let ((_%e234014234062%_
                                                   (gx#syntax-e
                                                    _%tl234001234140%_)))
                                              (let ((_%tl234016234069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e234014234062%_)))
                                                    (_%hd234015234066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e234014234062%_))))
                                                (if (gx#identifier?
                                                     _%hd234015234066%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g283023_|
                                                         _%hd234015234066%_)
                                                        (if (gx#stx-pair?
                                                             _%tl234016234069%_)
                                                            (let ((_%e234017234072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl234016234069%_)))
                      (let ((_%tl234019234079%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234017234072%_)))
                            (_%hd234018234076%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234017234072%_))))
                        (if (gx#stx-null? _%tl234019234079%_)
                            (_%__kont276327276328%_
                             _%hd234018234076%_
                             _%hd234000234137%_
                             _%hd233997234127%_)
                            (let ()
                              (declare (not safe))
                              (_%g233989234025%_)))))
                    (let () (declare (not safe)) (_%g233989234025%_)))
                (let () (declare (not safe)) (_%g233989234025%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g233989234025%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g233989234025%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g233989234025%_)))))
                        (let () (declare (not safe)) (_%g233989234025%_)))))
                (let () (declare (not safe)) (_%g233989234025%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx234164%_)
        (let ((_%g234167234174%_
               (lambda (_%g234168234170%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g234168234170%_))))
          (_%g234167234174%_ _%$stx234164%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx234178%_)
        (let ((_%g234181234188%_
               (lambda (_%g234182234184%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g234182234184%_))))
          (_%g234181234188%_ _%$stx234178%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx234192%_)
        (let* ((_%g234196234210%_
                (lambda (_%g234197234206%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g234197234206%_)))
               (_%g234195234251%_
                (lambda (_%g234197234214%_)
                  (if (gx#stx-pair? _%g234197234214%_)
                      (let ((_%e234199234217%_
                             (gx#syntax-e _%g234197234214%_)))
                        (let ((_%hd234200234221%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234199234217%_)))
                              (_%tl234201234224%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234199234217%_))))
                          (if (gx#stx-pair? _%tl234201234224%_)
                              (let ((_%e234202234227%_
                                     (gx#syntax-e _%tl234201234224%_)))
                                (let ((_%hd234203234231%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e234202234227%_)))
                                      (_%tl234204234234%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e234202234227%_))))
                                  (if (gx#stx-null? _%tl234204234234%_)
                                      ((lambda (_%g234198234237%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%g234198234237%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%g234198234237%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd234203234231%_)
                                      (_%g234196234210%_ _%g234197234214%_))))
                              (_%g234196234210%_ _%g234197234214%_))))
                      (_%g234196234210%_ _%g234197234214%_)))))
          (_%g234195234251%_ _%$stx234192%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx234255%_)
        (let* ((_%g234258234281%_
                (lambda (_%g234259234277%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g234259234277%_)))
               (_%g234257234405%_
                (lambda (_%g234259234285%_)
                  (if (gx#stx-pair? _%g234259234285%_)
                      (let ((_%e234264234288%_
                             (gx#syntax-e _%g234259234285%_)))
                        (let ((_%hd234265234292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234264234288%_)))
                              (_%tl234266234295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234264234288%_))))
                          (if (gx#stx-pair? _%tl234266234295%_)
                              (let ((_%e234267234298%_
                                     (gx#syntax-e _%tl234266234295%_)))
                                (let ((_%hd234268234302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e234267234298%_)))
                                      (_%tl234269234305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e234267234298%_))))
                                  (if (gx#stx-pair? _%tl234269234305%_)
                                      (let ((_%e234270234308%_
                                             (gx#syntax-e _%tl234269234305%_)))
                                        (let ((_%hd234271234312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234270234308%_)))
                                              (_%tl234272234315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234270234308%_))))
                                          (if (gx#stx-pair? _%tl234272234315%_)
                                              (let ((_%e234273234318%_
                                                     (gx#syntax-e
                                                      _%tl234272234315%_)))
                                                (let ((_%hd234274234322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234273234318%_)))
                                                      (_%tl234275234325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234273234318%_))))
                                                  (if (gx#stx-null?
                                                       _%tl234275234325%_)
                                                      ((lambda (_%g234260234328%_
                                                                _%g234261234330%_
                                                                _%g234262234331%_
                                                                _%g234263234332%_)
                                                         (let* ((_%g234352234360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g234353234356%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g234353234356%_)))
                        (_%g234351234379%_
                         (lambda (_%g234353234364%_)
                           ((lambda (_%g234354234367%_)
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
                                (cons _%g234354234367%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g234261234330%_ '()))
                                      (cons 'value:
                                            (cons _%g234260234328%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g234353234364%_))))
                   (_%g234351234379%_
                    (let ((_%$e234391%_
                           (let ((_%$e234383%_
                                  (gx#stx-source _%g234262234331%_)))
                             (if _%$e234383%_
                                 _%$e234383%_
                                 (let ((_%$e234387%_
                                        (gx#stx-source _%stx234255%_)))
                                   (if _%$e234387%_
                                       _%$e234387%_
                                       (gx#stx-source _%g234263234332%_)))))))
                      (if _%$e234391%_
                          ((lambda (_%locat234395%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g234397234399%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat234395%_
                                   '#t
                                   _%g234397234399%_)))))
                           _%$e234391%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd234274234322%_
               _%hd234271234312%_
               _%hd234268234302%_
               _%hd234265234292%_)
              (_%g234258234281%_ _%g234259234285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g234258234281%_
                                               _%g234259234285%_))))
                                      (_%g234258234281%_ _%g234259234285%_))))
                              (_%g234258234281%_ _%g234259234285%_))))
                      (_%g234258234281%_ _%g234259234285%_)))))
          (_%g234257234405%_ _%stx234255%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx234409%_)
        (let* ((_%g234412234427%_
                (lambda (_%g234413234423%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g234413234423%_)))
               (_%g234411234523%_
                (lambda (_%g234413234431%_)
                  (if (gx#stx-pair? _%g234413234431%_)
                      (let ((_%e234416234434%_
                             (gx#syntax-e _%g234413234431%_)))
                        (let ((_%hd234417234438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234416234434%_)))
                              (_%tl234418234441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234416234434%_))))
                          (if (gx#stx-pair? _%tl234418234441%_)
                              (let ((_%e234419234444%_
                                     (gx#syntax-e _%tl234418234441%_)))
                                (let ((_%hd234420234448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e234419234444%_)))
                                      (_%tl234421234451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e234419234444%_))))
                                  (if (gx#stx-null? _%tl234421234451%_)
                                      ((lambda (_%g234414234454%_
                                                _%g234415234456%_)
                                         (let* ((_%g234470234478%_
                                                 (lambda (_%g234471234474%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g234471234474%_)))
                                                (_%g234469234497%_
                                                 (lambda (_%g234471234482%_)
                                                   ((lambda (_%g234472234485%_)
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
                                                        (cons _%g234472234485%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%g234414234454%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g234471234482%_))))
                                           (_%g234469234497%_
                                            (let ((_%$e234509%_
                                                   (let ((_%$e234501%_
                                                          (gx#stx-source
                                                           _%g234414234454%_)))
                                                     (if _%$e234501%_
                                                         _%$e234501%_
                                                         (let ((_%$e234505%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx234409%_)))
                   (if _%$e234505%_
                       _%$e234505%_
                       (gx#stx-source _%g234415234456%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e234509%_
                                                  ((lambda (_%locat234513%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g234515234517%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat234513%_
                                                           '#t
                                                           _%g234515234517%_)))))
                                                   _%$e234509%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd234420234448%_
                                       _%hd234417234438%_)
                                      (_%g234412234427%_ _%g234413234431%_))))
                              (_%g234412234427%_ _%g234413234431%_))))
                      (_%g234412234427%_ _%g234413234431%_)))))
          (_%g234411234523%_ _%stx234409%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx234527%_)
        (let* ((_%g234531234545%_
                (lambda (_%g234532234541%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g234532234541%_)))
               (_%g234530234586%_
                (lambda (_%g234532234549%_)
                  (if (gx#stx-pair? _%g234532234549%_)
                      (let ((_%e234534234552%_
                             (gx#syntax-e _%g234532234549%_)))
                        (let ((_%hd234535234556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234534234552%_)))
                              (_%tl234536234559%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234534234552%_))))
                          (if (gx#stx-pair? _%tl234536234559%_)
                              (let ((_%e234537234562%_
                                     (gx#syntax-e _%tl234536234559%_)))
                                (let ((_%hd234538234566%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e234537234562%_)))
                                      (_%tl234539234569%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e234537234562%_))))
                                  (if (gx#stx-null? _%tl234539234569%_)
                                      ((lambda (_%g234533234572%_)
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
                         (cons _%g234533234572%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd234538234566%_)
                                      (_%g234531234545%_ _%g234532234549%_))))
                              (_%g234531234545%_ _%g234532234549%_))))
                      (_%g234531234545%_ _%g234532234549%_)))))
          (_%g234530234586%_ _%$stx234527%_))))))
