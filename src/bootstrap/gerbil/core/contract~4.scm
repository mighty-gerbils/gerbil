(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g92288_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g92289_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g92290_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx48761%_)
        (let* ((_%g4876448782%_
                (lambda (_%g4876548778%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4876548778%_)))
               (_%g4876348977%_
                (lambda (_%g4876548786%_)
                  (if (gx#stx-pair? _%g4876548786%_)
                      (let ((_%e4876848789%_ (gx#syntax-e _%g4876548786%_)))
                        (let ((_%hd4876948793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4876848789%_)))
                              (_%tl4877048796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4876848789%_))))
                          (if (gx#stx-pair? _%tl4877048796%_)
                              (let ((_%e4877148799%_
                                     (gx#syntax-e _%tl4877048796%_)))
                                (let ((_%hd4877248803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4877148799%_)))
                                      (_%tl4877348806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4877148799%_))))
                                  (if (gx#stx-pair? _%tl4877348806%_)
                                      (let ((_%e4877448809%_
                                             (gx#syntax-e _%tl4877348806%_)))
                                        (let ((_%hd4877548813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4877448809%_)))
                                              (_%tl4877648816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4877448809%_))))
                                          (if (gx#stx-null? _%tl4877648816%_)
                                              ((lambda (_%L48819%_ _%L48821%_)
                                                 (if (gx#identifier?
                                                      _%L48819%_)
                                                     (let ((_%meta48838%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx48761%_
                                                               _%L48819%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta48838%_))
                                                           (let* ((_%g4884348858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4884448854%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4884448854%_)))
                          (_%g4884248905%_
                           (lambda (_%g4884448862%_)
                             (if (gx#stx-pair? _%g4884448862%_)
                                 (let ((_%e4884748865%_
                                        (gx#syntax-e _%g4884448862%_)))
                                   (let ((_%hd4884848869%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4884748865%_)))
                                         (_%tl4884948872%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4884748865%_))))
                                     (if (gx#stx-pair? _%tl4884948872%_)
                                         (let ((_%e4885048875%_
                                                (gx#syntax-e
                                                 _%tl4884948872%_)))
                                           (let ((_%hd4885148879%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4885048875%_)))
                                                 (_%tl4885248882%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4885048875%_))))
                                             (if (gx#stx-null?
                                                  _%tl4885248882%_)
                                                 ((lambda (_%L48885%_
                                                           _%L48887%_)
                                                    (if (let ((__tmp92286
                                                               (let ((__obj92124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta48838%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj92124
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj92124
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj92124 'id)))))
                  (declare (not safe))
                  (##memq __tmp92286 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48887%_ '()))
                            (cons _%L48821%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48887%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L48821%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L48885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L48887%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4885148879%_
                                                  _%hd4884848869%_)
                                                 (_%g4884348858%_
                                                  _%g4884448862%_))))
                                         (_%g4884348858%_ _%g4884448862%_))))
                                 (_%g4884348858%_ _%g4884448862%_)))))
                     (_%g4884248905%_
                      (list (let ((__obj92125 _%meta48838%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92125
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92125
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92125
                                   'type-descriptor)))
                            (let ((__obj92126 _%meta48838%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92126
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92126
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92126
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta48838%_))
                       (let* ((_%g4891148926%_
                               (lambda (_%g4891248922%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4891248922%_)))
                              (_%g4891048971%_
                               (lambda (_%g4891248930%_)
                                 (if (gx#stx-pair? _%g4891248930%_)
                                     (let ((_%e4891548933%_
                                            (gx#syntax-e _%g4891248930%_)))
                                       (let ((_%hd4891648937%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4891548933%_)))
                                             (_%tl4891748940%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4891548933%_))))
                                         (if (gx#stx-pair? _%tl4891748940%_)
                                             (let ((_%e4891848943%_
                                                    (gx#syntax-e
                                                     _%tl4891748940%_)))
                                               (let ((_%hd4891948947%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4891848943%_)))
                                                     (_%tl4892048950%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4891848943%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4892048950%_)
                                                     ((lambda (_%L48953%_
                                                               _%L48955%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L48955%_ '()))
                            (cons (cons _%L48953%_ (cons _%L48821%_ '()))
                                  '()))))
              _%hd4891948947%_
              _%hd4891648937%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4891148926%_
                                                      _%g4891248930%_))))
                                             (_%g4891148926%_
                                              _%g4891248930%_))))
                                     (_%g4891148926%_ _%g4891248930%_)))))
                         (_%g4891048971%_
                          (list (let ((__obj92123 _%meta48838%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj92123
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj92123
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj92123
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx48761%_
                                   _%L48819%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx48761%_
                        _%L48819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4876448782%_
                                                      _%g4876548786%_)))
                                               _%hd4877548813%_
                                               _%hd4877248803%_)
                                              (_%g4876448782%_
                                               _%g4876548786%_))))
                                      (_%g4876448782%_ _%g4876548786%_))))
                              (_%g4876448782%_ _%g4876548786%_))))
                      (_%g4876448782%_ _%g4876548786%_)))))
          (_%g4876348977%_ _%stx48761%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx48981%_)
        (let* ((_%g4898449002%_
                (lambda (_%g4898548998%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4898548998%_)))
               (_%g4898349196%_
                (lambda (_%g4898549006%_)
                  (if (gx#stx-pair? _%g4898549006%_)
                      (let ((_%e4898849009%_ (gx#syntax-e _%g4898549006%_)))
                        (let ((_%hd4898949013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4898849009%_)))
                              (_%tl4899049016%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4898849009%_))))
                          (if (gx#stx-pair? _%tl4899049016%_)
                              (let ((_%e4899149019%_
                                     (gx#syntax-e _%tl4899049016%_)))
                                (let ((_%hd4899249023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4899149019%_)))
                                      (_%tl4899349026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4899149019%_))))
                                  (if (gx#stx-pair? _%tl4899349026%_)
                                      (let ((_%e4899449029%_
                                             (gx#syntax-e _%tl4899349026%_)))
                                        (let ((_%hd4899549033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4899449029%_)))
                                              (_%tl4899649036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4899449029%_))))
                                          (if (gx#stx-null? _%tl4899649036%_)
                                              ((lambda (_%L49039%_ _%L49041%_)
                                                 (if (gx#identifier?
                                                      _%L49039%_)
                                                     (let ((_%meta49057%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx48981%_
                                                               _%L49039%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49057%_))
                                                           (let* ((_%g4906249077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4906349073%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4906349073%_)))
                          (_%g4906149124%_
                           (lambda (_%g4906349081%_)
                             (if (gx#stx-pair? _%g4906349081%_)
                                 (let ((_%e4906649084%_
                                        (gx#syntax-e _%g4906349081%_)))
                                   (let ((_%hd4906749088%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4906649084%_)))
                                         (_%tl4906849091%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4906649084%_))))
                                     (if (gx#stx-pair? _%tl4906849091%_)
                                         (let ((_%e4906949094%_
                                                (gx#syntax-e
                                                 _%tl4906849091%_)))
                                           (let ((_%hd4907049098%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4906949094%_)))
                                                 (_%tl4907149101%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4906949094%_))))
                                             (if (gx#stx-null?
                                                  _%tl4907149101%_)
                                                 ((lambda (_%L49104%_
                                                           _%L49106%_)
                                                    (if (let ((__tmp92287
                                                               (let ((__obj92128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49057%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj92128
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj92128
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj92128 'id)))))
                  (declare (not safe))
                  (##memq __tmp92287 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L49106%_ '()))
                            (cons _%L49041%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L49106%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L49041%_ '()))
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
                                    (cons (cons _%L49104%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons '"bad cast"
                                                (cons _%L49041%_
                                                      (cons _%L49104%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4907049098%_
                                                  _%hd4906749088%_)
                                                 (_%g4906249077%_
                                                  _%g4906349081%_))))
                                         (_%g4906249077%_ _%g4906349081%_))))
                                 (_%g4906249077%_ _%g4906349081%_)))))
                     (_%g4906149124%_
                      (list (let ((__obj92129 _%meta49057%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92129
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92129
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92129
                                   'type-descriptor)))
                            (let ((__obj92130 _%meta49057%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92130
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92130
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92130
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49057%_))
                       (let* ((_%g4913049145%_
                               (lambda (_%g4913149141%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4913149141%_)))
                              (_%g4912949190%_
                               (lambda (_%g4913149149%_)
                                 (if (gx#stx-pair? _%g4913149149%_)
                                     (let ((_%e4913449152%_
                                            (gx#syntax-e _%g4913149149%_)))
                                       (let ((_%hd4913549156%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4913449152%_)))
                                             (_%tl4913649159%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4913449152%_))))
                                         (if (gx#stx-pair? _%tl4913649159%_)
                                             (let ((_%e4913749162%_
                                                    (gx#syntax-e
                                                     _%tl4913649159%_)))
                                               (let ((_%hd4913849166%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4913749162%_)))
                                                     (_%tl4913949169%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4913749162%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4913949169%_)
                                                     ((lambda (_%L49172%_
                                                               _%L49174%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L49174%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L49041%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L49172%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4913849166%_
              _%hd4913549156%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4913049145%_
                                                      _%g4913149149%_))))
                                             (_%g4913049145%_
                                              _%g4913149149%_))))
                                     (_%g4913049145%_ _%g4913149149%_)))))
                         (_%g4912949190%_
                          (list (let ((__obj92127 _%meta49057%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj92127
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj92127
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj92127
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx48981%_
                                   _%L49039%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx48981%_
                        _%L49039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4898449002%_
                                                      _%g4898549006%_)))
                                               _%hd4899549033%_
                                               _%hd4899249023%_)
                                              (_%g4898449002%_
                                               _%g4898549006%_))))
                                      (_%g4898449002%_ _%g4898549006%_))))
                              (_%g4898449002%_ _%g4898549006%_))))
                      (_%g4898449002%_ _%g4898549006%_)))))
          (_%g4898349196%_ _%stx48981%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx49200%_)
        (let* ((_%g4920349221%_
                (lambda (_%g4920449217%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4920449217%_)))
               (_%g4920249307%_
                (lambda (_%g4920449225%_)
                  (if (gx#stx-pair? _%g4920449225%_)
                      (let ((_%e4920749228%_ (gx#syntax-e _%g4920449225%_)))
                        (let ((_%hd4920849232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4920749228%_)))
                              (_%tl4920949235%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4920749228%_))))
                          (if (gx#stx-pair? _%tl4920949235%_)
                              (let ((_%e4921049238%_
                                     (gx#syntax-e _%tl4920949235%_)))
                                (let ((_%hd4921149242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4921049238%_)))
                                      (_%tl4921249245%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4921049238%_))))
                                  (if (gx#stx-pair? _%tl4921249245%_)
                                      (let ((_%e4921349248%_
                                             (gx#syntax-e _%tl4921249245%_)))
                                        (let ((_%hd4921449252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4921349248%_)))
                                              (_%tl4921549255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4921349248%_))))
                                          (if (gx#stx-null? _%tl4921549255%_)
                                              ((lambda (_%L49258%_ _%L49260%_)
                                                 (if (gx#identifier?
                                                      _%L49258%_)
                                                     (let* ((_%g4927649284%_
                                                             (lambda (_%g4927749280%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4927749280%_)))
                                                            (_%g4927549303%_
                                                             (lambda (_%g4927749288%_)
                                                               ((lambda (_%L49291%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L49291%_ '()))
                                      (cons _%L49260%_ '()))))
                        _%g4927749288%_))))
               (_%g4927549303%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx49200%_
                   _%L49258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4920349221%_
                                                      _%g4920449225%_)))
                                               _%hd4921449252%_
                                               _%hd4921149242%_)
                                              (_%g4920349221%_
                                               _%g4920449225%_))))
                                      (_%g4920349221%_ _%g4920449225%_))))
                              (_%g4920349221%_ _%g4920449225%_))))
                      (_%g4920349221%_ _%g4920449225%_)))))
          (_%g4920249307%_ _%stx49200%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx49311%_)
        (let* ((_%__stx8621986220%_ _%$stx49311%_)
               (_%g4931749401%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8621986220%_))))
          (let ((_%__kont8622286223%_
                 (lambda (_%L49711%_ _%L49713%_ _%L49714%_ _%L49715%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%L49715%_
                                           (cons _%L49713%_
                                                 (foldr (lambda (_%g4973949742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4974049745%_)
                  (cons _%g4973949742%_ _%g4974049745%_))
                '()
                _%L49711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L49714%_ '())))))
                (_%__kont8622686227%_
                 (lambda (_%L49587%_ _%L49589%_ _%L49590%_ _%L49591%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%L49591%_
                                           (cons _%L49589%_
                                                 (foldr (lambda (_%g4961549618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4961649621%_)
                  (cons _%g4961549618%_ _%g4961649621%_))
                '()
                _%L49587%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L49590%_ '())))))
                (_%__kont8623086231%_
                 (lambda (_%L49468%_ _%L49470%_ _%L49471%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%L49471%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%L49470%_
                                                       (foldr (lambda (_%g4949149494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4949249497%_)
                        (cons _%g4949149494%_ _%g4949249497%_))
                      '()
                      _%L49468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8634486345%_
                    (lambda (_%e4937849408%_
                             _%hd4937949412%_
                             _%tl4938049415%_
                             _%e4938149418%_
                             _%hd4938249422%_
                             _%tl4938349425%_
                             _%e4938449428%_
                             _%hd4938549432%_
                             _%tl4938649435%_
                             _%__splice8623286233%_
                             _%target4938749438%_
                             _%tl4938949441%_)
                      (letrec ((_%loop4939049444%_
                                (lambda (_%hd4938849448%_ _%rest4939449451%_)
                                  (if (gx#stx-pair? _%hd4938849448%_)
                                      (let ((_%e4939149454%_
                                             (gx#syntax-e _%hd4938849448%_)))
                                        (let ((_%lp-tl4939349461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4939149454%_)))
                                              (_%lp-hd4939249458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4939149454%_))))
                                          (_%loop4939049444%_
                                           _%lp-tl4939349461%_
                                           (cons _%lp-hd4939249458%_
                                                 _%rest4939449451%_))))
                                      (let ((_%rest4939549464%_
                                             (reverse _%rest4939449451%_)))
                                        (_%__kont8623086231%_
                                         _%rest4939549464%_
                                         _%hd4938549432%_
                                         _%hd4938249422%_))))))
                        (_%loop4939049444%_ _%target4938749438%_ '()))))
                   (_%__match8631886319%_
                    (lambda (_%e4935149507%_
                             _%hd4935249511%_
                             _%tl4935349514%_
                             _%e4935449517%_
                             _%hd4935549521%_
                             _%tl4935649524%_
                             _%e4935749527%_
                             _%hd4935849531%_
                             _%tl4935949534%_
                             _%e4936049537%_
                             _%hd4936149541%_
                             _%tl4936249544%_
                             _%e4936349547%_
                             _%hd4936449551%_
                             _%tl4936549554%_
                             _%__splice8622886229%_
                             _%target4936649557%_
                             _%tl4936849560%_)
                      (letrec ((_%loop4936949563%_
                                (lambda (_%hd4936749567%_ _%rest4937349570%_)
                                  (if (gx#stx-pair? _%hd4936749567%_)
                                      (let ((_%e4937049573%_
                                             (gx#syntax-e _%hd4936749567%_)))
                                        (let ((_%lp-tl4937249580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4937049573%_)))
                                              (_%lp-hd4937149577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4937049573%_))))
                                          (_%loop4936949563%_
                                           _%lp-tl4937249580%_
                                           (cons _%lp-hd4937149577%_
                                                 _%rest4937349570%_))))
                                      (let ((_%rest4937449583%_
                                             (reverse _%rest4937349570%_)))
                                        (_%__kont8622686227%_
                                         _%rest4937449583%_
                                         _%hd4936449551%_
                                         _%hd4936149541%_
                                         _%hd4935549521%_))))))
                        (_%loop4936949563%_ _%target4936649557%_ '()))))
                   (_%__match8627686277%_
                    (lambda (_%e4932349631%_
                             _%hd4932449635%_
                             _%tl4932549638%_
                             _%e4932649641%_
                             _%hd4932749645%_
                             _%tl4932849648%_
                             _%e4932949651%_
                             _%hd4933049655%_
                             _%tl4933149658%_
                             _%e4933249661%_
                             _%hd4933349665%_
                             _%tl4933449668%_
                             _%e4933549671%_
                             _%hd4933649675%_
                             _%tl4933749678%_
                             _%__splice8622486225%_
                             _%target4933849681%_
                             _%tl4934049684%_)
                      (letrec ((_%loop4934149687%_
                                (lambda (_%hd4933949691%_ _%rest4934549694%_)
                                  (if (gx#stx-pair? _%hd4933949691%_)
                                      (let ((_%e4934249697%_
                                             (gx#syntax-e _%hd4933949691%_)))
                                        (let ((_%lp-tl4934449704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4934249697%_)))
                                              (_%lp-hd4934349701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4934249697%_))))
                                          (_%loop4934149687%_
                                           _%lp-tl4934449704%_
                                           (cons _%lp-hd4934349701%_
                                                 _%rest4934549694%_))))
                                      (let ((_%rest4934649707%_
                                             (reverse _%rest4934549694%_)))
                                        (_%__kont8622286223%_
                                         _%rest4934649707%_
                                         _%hd4933649675%_
                                         _%hd4933349665%_
                                         _%hd4932749645%_))))))
                        (_%loop4934149687%_ _%target4933849681%_ '())))))
              (if (gx#stx-pair? _%__stx8621986220%_)
                  (let ((_%e4932349631%_ (gx#syntax-e _%__stx8621986220%_)))
                    (let ((_%tl4932549638%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4932349631%_)))
                          (_%hd4932449635%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4932349631%_))))
                      (if (gx#stx-pair? _%tl4932549638%_)
                          (let ((_%e4932649641%_
                                 (gx#syntax-e _%tl4932549638%_)))
                            (let ((_%tl4932849648%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4932649641%_)))
                                  (_%hd4932749645%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4932649641%_))))
                              (if (gx#stx-pair? _%tl4932849648%_)
                                  (let ((_%e4932949651%_
                                         (gx#syntax-e _%tl4932849648%_)))
                                    (let ((_%tl4933149658%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4932949651%_)))
                                          (_%hd4933049655%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4932949651%_))))
                                      (if (gx#identifier? _%hd4933049655%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g92288_|
                                               _%hd4933049655%_)
                                              (if (gx#stx-pair?
                                                   _%tl4933149658%_)
                                                  (let ((_%e4933249661%_
                                                         (gx#syntax-e
                                                          _%tl4933149658%_)))
                                                    (let ((_%tl4933449668%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4933249661%_)))
                                                          (_%hd4933349665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4933249661%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4933449668%_)
                                                          (let ((_%e4933549671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4933449668%_)))
                    (let ((_%tl4933749678%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4933549671%_)))
                          (_%hd4933649675%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4933549671%_))))
                      (if (gx#stx-pair/null? _%tl4933749678%_)
                          (let ((_%__splice8622486225%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4933749678%_
                                  '0)))
                            (let ((_%tl4934049684%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8622486225%_ '1)))
                                  (_%target4933849681%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8622486225%_
                                      '0))))
                              (if (gx#stx-null? _%tl4934049684%_)
                                  (_%__match8627686277%_
                                   _%e4932349631%_
                                   _%hd4932449635%_
                                   _%tl4932549638%_
                                   _%e4932649641%_
                                   _%hd4932749645%_
                                   _%tl4932849648%_
                                   _%e4932949651%_
                                   _%hd4933049655%_
                                   _%tl4933149658%_
                                   _%e4933249661%_
                                   _%hd4933349665%_
                                   _%tl4933449668%_
                                   _%e4933549671%_
                                   _%hd4933649675%_
                                   _%tl4933749678%_
                                   _%__splice8622486225%_
                                   _%target4933849681%_
                                   _%tl4934049684%_)
                                  (if (gx#stx-pair/null? _%tl4933149658%_)
                                      (let ((_%__splice8623286233%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4933149658%_
                                              '0)))
                                        (let ((_%tl4938949441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8623286233%_
                                                  '1)))
                                              (_%target4938749438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8623286233%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4938949441%_)
                                              (_%__match8634486345%_
                                               _%e4932349631%_
                                               _%hd4932449635%_
                                               _%tl4932549638%_
                                               _%e4932649641%_
                                               _%hd4932749645%_
                                               _%tl4932849648%_
                                               _%e4932949651%_
                                               _%hd4933049655%_
                                               _%tl4933149658%_
                                               _%__splice8623286233%_
                                               _%target4938749438%_
                                               _%tl4938949441%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4931749401%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4931749401%_))))))
                          (if (gx#stx-pair/null? _%tl4933149658%_)
                              (let ((_%__splice8623286233%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4933149658%_
                                      '0)))
                                (let ((_%tl4938949441%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8623286233%_
                                          '1)))
                                      (_%target4938749438%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8623286233%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4938949441%_)
                                      (_%__match8634486345%_
                                       _%e4932349631%_
                                       _%hd4932449635%_
                                       _%tl4932549638%_
                                       _%e4932649641%_
                                       _%hd4932749645%_
                                       _%tl4932849648%_
                                       _%e4932949651%_
                                       _%hd4933049655%_
                                       _%tl4933149658%_
                                       _%__splice8623286233%_
                                       _%target4938749438%_
                                       _%tl4938949441%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4931749401%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4931749401%_))))))
                  (if (gx#stx-pair/null? _%tl4933149658%_)
                      (let ((_%__splice8623286233%_
                             (gx#syntax-split-splice->vector
                              _%tl4933149658%_
                              '0)))
                        (let ((_%tl4938949441%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8623286233%_ '1)))
                              (_%target4938749438%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8623286233%_ '0))))
                          (if (gx#stx-null? _%tl4938949441%_)
                              (_%__match8634486345%_
                               _%e4932349631%_
                               _%hd4932449635%_
                               _%tl4932549638%_
                               _%e4932649641%_
                               _%hd4932749645%_
                               _%tl4932849648%_
                               _%e4932949651%_
                               _%hd4933049655%_
                               _%tl4933149658%_
                               _%__splice8623286233%_
                               _%target4938749438%_
                               _%tl4938949441%_)
                              (let ()
                                (declare (not safe))
                                (_%g4931749401%_)))))
                      (let () (declare (not safe)) (_%g4931749401%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4933149658%_)
                                                      (let ((_%__splice8623286233%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4933149658%_
                                                              '0)))
                                                        (let ((_%tl4938949441%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8623286233%_ '1)))
                      (_%target4938749438%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8623286233%_ '0))))
                  (if (gx#stx-null? _%tl4938949441%_)
                      (_%__match8634486345%_
                       _%e4932349631%_
                       _%hd4932449635%_
                       _%tl4932549638%_
                       _%e4932649641%_
                       _%hd4932749645%_
                       _%tl4932849648%_
                       _%e4932949651%_
                       _%hd4933049655%_
                       _%tl4933149658%_
                       _%__splice8623286233%_
                       _%target4938749438%_
                       _%tl4938949441%_)
                      (let () (declare (not safe)) (_%g4931749401%_)))))
              (let () (declare (not safe)) (_%g4931749401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g92289_|
                                                   _%hd4933049655%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4933149658%_)
                                                      (let ((_%e4936049537%_
                                                             (gx#syntax-e
                                                              _%tl4933149658%_)))
                                                        (let ((_%tl4936249544%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4936049537%_)))
                      (_%hd4936149541%_
                       (let () (declare (not safe)) (##car _%e4936049537%_))))
                  (if (gx#stx-pair? _%tl4936249544%_)
                      (let ((_%e4936349547%_ (gx#syntax-e _%tl4936249544%_)))
                        (let ((_%tl4936549554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4936349547%_)))
                              (_%hd4936449551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4936349547%_))))
                          (if (gx#stx-pair/null? _%tl4936549554%_)
                              (let ((_%__splice8622886229%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4936549554%_
                                      '0)))
                                (let ((_%tl4936849560%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8622886229%_
                                          '1)))
                                      (_%target4936649557%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8622886229%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4936849560%_)
                                      (_%__match8631886319%_
                                       _%e4932349631%_
                                       _%hd4932449635%_
                                       _%tl4932549638%_
                                       _%e4932649641%_
                                       _%hd4932749645%_
                                       _%tl4932849648%_
                                       _%e4932949651%_
                                       _%hd4933049655%_
                                       _%tl4933149658%_
                                       _%e4936049537%_
                                       _%hd4936149541%_
                                       _%tl4936249544%_
                                       _%e4936349547%_
                                       _%hd4936449551%_
                                       _%tl4936549554%_
                                       _%__splice8622886229%_
                                       _%target4936649557%_
                                       _%tl4936849560%_)
                                      (if (gx#stx-pair/null? _%tl4933149658%_)
                                          (let ((_%__splice8623286233%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4933149658%_
                                                  '0)))
                                            (let ((_%tl4938949441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8623286233%_
                                                      '1)))
                                                  (_%target4938749438%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8623286233%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4938949441%_)
                                                  (_%__match8634486345%_
                                                   _%e4932349631%_
                                                   _%hd4932449635%_
                                                   _%tl4932549638%_
                                                   _%e4932649641%_
                                                   _%hd4932749645%_
                                                   _%tl4932849648%_
                                                   _%e4932949651%_
                                                   _%hd4933049655%_
                                                   _%tl4933149658%_
                                                   _%__splice8623286233%_
                                                   _%target4938749438%_
                                                   _%tl4938949441%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4931749401%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4931749401%_))))))
                              (if (gx#stx-pair/null? _%tl4933149658%_)
                                  (let ((_%__splice8623286233%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4933149658%_
                                          '0)))
                                    (let ((_%tl4938949441%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8623286233%_
                                              '1)))
                                          (_%target4938749438%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8623286233%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4938949441%_)
                                          (_%__match8634486345%_
                                           _%e4932349631%_
                                           _%hd4932449635%_
                                           _%tl4932549638%_
                                           _%e4932649641%_
                                           _%hd4932749645%_
                                           _%tl4932849648%_
                                           _%e4932949651%_
                                           _%hd4933049655%_
                                           _%tl4933149658%_
                                           _%__splice8623286233%_
                                           _%target4938749438%_
                                           _%tl4938949441%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4931749401%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4931749401%_))))))
                      (if (gx#stx-pair/null? _%tl4933149658%_)
                          (let ((_%__splice8623286233%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4933149658%_
                                  '0)))
                            (let ((_%tl4938949441%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8623286233%_ '1)))
                                  (_%target4938749438%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8623286233%_
                                      '0))))
                              (if (gx#stx-null? _%tl4938949441%_)
                                  (_%__match8634486345%_
                                   _%e4932349631%_
                                   _%hd4932449635%_
                                   _%tl4932549638%_
                                   _%e4932649641%_
                                   _%hd4932749645%_
                                   _%tl4932849648%_
                                   _%e4932949651%_
                                   _%hd4933049655%_
                                   _%tl4933149658%_
                                   _%__splice8623286233%_
                                   _%target4938749438%_
                                   _%tl4938949441%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4931749401%_)))))
                          (let () (declare (not safe)) (_%g4931749401%_))))))
              (if (gx#stx-pair/null? _%tl4933149658%_)
                  (let ((_%__splice8623286233%_
                         (gx#syntax-split-splice->vector _%tl4933149658%_ '0)))
                    (let ((_%tl4938949441%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8623286233%_ '1)))
                          (_%target4938749438%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8623286233%_ '0))))
                      (if (gx#stx-null? _%tl4938949441%_)
                          (_%__match8634486345%_
                           _%e4932349631%_
                           _%hd4932449635%_
                           _%tl4932549638%_
                           _%e4932649641%_
                           _%hd4932749645%_
                           _%tl4932849648%_
                           _%e4932949651%_
                           _%hd4933049655%_
                           _%tl4933149658%_
                           _%__splice8623286233%_
                           _%target4938749438%_
                           _%tl4938949441%_)
                          (let () (declare (not safe)) (_%g4931749401%_)))))
                  (let () (declare (not safe)) (_%g4931749401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4933149658%_)
                                                      (let ((_%__splice8623286233%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4933149658%_
                                                              '0)))
                                                        (let ((_%tl4938949441%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8623286233%_ '1)))
                      (_%target4938749438%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8623286233%_ '0))))
                  (if (gx#stx-null? _%tl4938949441%_)
                      (_%__match8634486345%_
                       _%e4932349631%_
                       _%hd4932449635%_
                       _%tl4932549638%_
                       _%e4932649641%_
                       _%hd4932749645%_
                       _%tl4932849648%_
                       _%e4932949651%_
                       _%hd4933049655%_
                       _%tl4933149658%_
                       _%__splice8623286233%_
                       _%target4938749438%_
                       _%tl4938949441%_)
                      (let () (declare (not safe)) (_%g4931749401%_)))))
              (let () (declare (not safe)) (_%g4931749401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4933149658%_)
                                              (let ((_%__splice8623286233%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4933149658%_
                                                      '0)))
                                                (let ((_%tl4938949441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8623286233%_
                                                          '1)))
                                                      (_%target4938749438%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8623286233%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4938949441%_)
                                                      (_%__match8634486345%_
                                                       _%e4932349631%_
                                                       _%hd4932449635%_
                                                       _%tl4932549638%_
                                                       _%e4932649641%_
                                                       _%hd4932749645%_
                                                       _%tl4932849648%_
                                                       _%e4932949651%_
                                                       _%hd4933049655%_
                                                       _%tl4933149658%_
                                                       _%__splice8623286233%_
                                                       _%target4938749438%_
                                                       _%tl4938949441%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4931749401%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4931749401%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4931749401%_)))))
                          (let () (declare (not safe)) (_%g4931749401%_)))))
                  (let () (declare (not safe)) (_%g4931749401%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx49755%_)
        (let* ((_%__stx8634786348%_ _%$stx49755%_)
               (_%g4976049796%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8634786348%_))))
          (let ((_%__kont8635086351%_
                 (lambda (_%L49914%_ _%L49916%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L49916%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L49914%_
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
                           (cons _%L49916%_
                                 (cons _%L49914%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8635286353%_
                 (lambda (_%L49853%_ _%L49855%_ _%L49856%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L49856%_ (cons _%L49855%_ '())))
                               (cons _%L49853%_ '()))))))
            (if (gx#stx-pair? _%__stx8634786348%_)
                (let ((_%e4976449884%_ (gx#syntax-e _%__stx8634786348%_)))
                  (let ((_%tl4976649891%_
                         (let () (declare (not safe)) (##cdr _%e4976449884%_)))
                        (_%hd4976549888%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4976449884%_))))
                    (if (gx#stx-pair? _%tl4976649891%_)
                        (let ((_%e4976749894%_ (gx#syntax-e _%tl4976649891%_)))
                          (let ((_%tl4976949901%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4976749894%_)))
                                (_%hd4976849898%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4976749894%_))))
                            (if (gx#stx-pair? _%tl4976949901%_)
                                (let ((_%e4977049904%_
                                       (gx#syntax-e _%tl4976949901%_)))
                                  (let ((_%tl4977249911%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4977049904%_)))
                                        (_%hd4977149908%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4977049904%_))))
                                    (if (gx#stx-null? _%tl4977249911%_)
                                        (_%__kont8635086351%_
                                         _%hd4977149908%_
                                         _%hd4976849898%_)
                                        (if (gx#stx-pair? _%tl4977249911%_)
                                            (let ((_%e4978549833%_
                                                   (gx#syntax-e
                                                    _%tl4977249911%_)))
                                              (let ((_%tl4978749840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4978549833%_)))
                                                    (_%hd4978649837%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4978549833%_))))
                                                (if (gx#identifier?
                                                     _%hd4978649837%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g92290_|
                                                         _%hd4978649837%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4978749840%_)
                                                            (let ((_%e4978849843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4978749840%_)))
                      (let ((_%tl4979049850%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4978849843%_)))
                            (_%hd4978949847%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4978849843%_))))
                        (if (gx#stx-null? _%tl4979049850%_)
                            (_%__kont8635286353%_
                             _%hd4978949847%_
                             _%hd4977149908%_
                             _%hd4976849898%_)
                            (let () (declare (not safe)) (_%g4976049796%_)))))
                    (let () (declare (not safe)) (_%g4976049796%_)))
                (let () (declare (not safe)) (_%g4976049796%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4976049796%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4976049796%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4976049796%_)))))
                        (let () (declare (not safe)) (_%g4976049796%_)))))
                (let () (declare (not safe)) (_%g4976049796%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx49935%_)
        (let ((_%g4993849945%_
               (lambda (_%g4993949941%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4993949941%_))))
          (_%g4993849945%_ _%$stx49935%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx49949%_)
        (let ((_%g4995249959%_
               (lambda (_%g4995349955%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4995349955%_))))
          (_%g4995249959%_ _%$stx49949%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx49963%_)
        (let* ((_%g4996749981%_
                (lambda (_%g4996849977%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4996849977%_)))
               (_%g4996650022%_
                (lambda (_%g4996849985%_)
                  (if (gx#stx-pair? _%g4996849985%_)
                      (let ((_%e4997049988%_ (gx#syntax-e _%g4996849985%_)))
                        (let ((_%hd4997149992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4997049988%_)))
                              (_%tl4997249995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4997049988%_))))
                          (if (gx#stx-pair? _%tl4997249995%_)
                              (let ((_%e4997349998%_
                                     (gx#syntax-e _%tl4997249995%_)))
                                (let ((_%hd4997450002%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4997349998%_)))
                                      (_%tl4997550005%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4997349998%_))))
                                  (if (gx#stx-null? _%tl4997550005%_)
                                      ((lambda (_%L50008%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L50008%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L50008%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4997450002%_)
                                      (_%g4996749981%_ _%g4996849985%_))))
                              (_%g4996749981%_ _%g4996849985%_))))
                      (_%g4996749981%_ _%g4996849985%_)))))
          (_%g4996650022%_ _%$stx49963%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx50026%_)
        (let* ((_%g5002950052%_
                (lambda (_%g5003050048%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5003050048%_)))
               (_%g5002850176%_
                (lambda (_%g5003050056%_)
                  (if (gx#stx-pair? _%g5003050056%_)
                      (let ((_%e5003550059%_ (gx#syntax-e _%g5003050056%_)))
                        (let ((_%hd5003650063%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5003550059%_)))
                              (_%tl5003750066%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5003550059%_))))
                          (if (gx#stx-pair? _%tl5003750066%_)
                              (let ((_%e5003850069%_
                                     (gx#syntax-e _%tl5003750066%_)))
                                (let ((_%hd5003950073%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5003850069%_)))
                                      (_%tl5004050076%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5003850069%_))))
                                  (if (gx#stx-pair? _%tl5004050076%_)
                                      (let ((_%e5004150079%_
                                             (gx#syntax-e _%tl5004050076%_)))
                                        (let ((_%hd5004250083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5004150079%_)))
                                              (_%tl5004350086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5004150079%_))))
                                          (if (gx#stx-pair? _%tl5004350086%_)
                                              (let ((_%e5004450089%_
                                                     (gx#syntax-e
                                                      _%tl5004350086%_)))
                                                (let ((_%hd5004550093%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5004450089%_)))
                                                      (_%tl5004650096%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5004450089%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5004650096%_)
                                                      ((lambda (_%L50099%_
                                                                _%L50101%_
                                                                _%L50102%_
                                                                _%L50103%_)
                                                         (let* ((_%g5012350131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g5012450127%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g5012450127%_)))
                        (_%g5012250150%_
                         (lambda (_%g5012450135%_)
                           ((lambda (_%L50138%_)
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
                                (cons _%L50138%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L50101%_ '()))
                                      (cons 'value:
                                            (cons _%L50099%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g5012450135%_))))
                   (_%g5012250150%_
                    (let ((_%$e50162%_
                           (let ((_%$e50154%_ (gx#stx-source _%L50102%_)))
                             (if _%$e50154%_
                                 _%$e50154%_
                                 (let ((_%$e50158%_
                                        (gx#stx-source _%stx50026%_)))
                                   (if _%$e50158%_
                                       _%$e50158%_
                                       (gx#stx-source _%L50103%_)))))))
                      (if _%$e50162%_
                          ((lambda (_%locat50166%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g5016850170%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat50166%_
                                   '#t
                                   _%g5016850170%_)))))
                           _%$e50162%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd5004550093%_
               _%hd5004250083%_
               _%hd5003950073%_
               _%hd5003650063%_)
              (_%g5002950052%_ _%g5003050056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5002950052%_
                                               _%g5003050056%_))))
                                      (_%g5002950052%_ _%g5003050056%_))))
                              (_%g5002950052%_ _%g5003050056%_))))
                      (_%g5002950052%_ _%g5003050056%_)))))
          (_%g5002850176%_ _%stx50026%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx50180%_)
        (let* ((_%g5018350198%_
                (lambda (_%g5018450194%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5018450194%_)))
               (_%g5018250294%_
                (lambda (_%g5018450202%_)
                  (if (gx#stx-pair? _%g5018450202%_)
                      (let ((_%e5018750205%_ (gx#syntax-e _%g5018450202%_)))
                        (let ((_%hd5018850209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5018750205%_)))
                              (_%tl5018950212%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5018750205%_))))
                          (if (gx#stx-pair? _%tl5018950212%_)
                              (let ((_%e5019050215%_
                                     (gx#syntax-e _%tl5018950212%_)))
                                (let ((_%hd5019150219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5019050215%_)))
                                      (_%tl5019250222%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5019050215%_))))
                                  (if (gx#stx-null? _%tl5019250222%_)
                                      ((lambda (_%L50225%_ _%L50227%_)
                                         (let* ((_%g5024150249%_
                                                 (lambda (_%g5024250245%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5024250245%_)))
                                                (_%g5024050268%_
                                                 (lambda (_%g5024250253%_)
                                                   ((lambda (_%L50256%_)
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
                                                        (cons _%L50256%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L50225%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5024250253%_))))
                                           (_%g5024050268%_
                                            (let ((_%$e50280%_
                                                   (let ((_%$e50272%_
                                                          (gx#stx-source
                                                           _%L50225%_)))
                                                     (if _%$e50272%_
                                                         _%$e50272%_
                                                         (let ((_%$e50276%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx50180%_)))
                   (if _%$e50276%_ _%$e50276%_ (gx#stx-source _%L50227%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e50280%_
                                                  ((lambda (_%locat50284%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g5028650288%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat50284%_
                                                           '#t
                                                           _%g5028650288%_)))))
                                                   _%$e50280%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd5019150219%_
                                       _%hd5018850209%_)
                                      (_%g5018350198%_ _%g5018450202%_))))
                              (_%g5018350198%_ _%g5018450202%_))))
                      (_%g5018350198%_ _%g5018450202%_)))))
          (_%g5018250294%_ _%stx50180%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx50298%_)
        (let* ((_%g5030250316%_
                (lambda (_%g5030350312%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5030350312%_)))
               (_%g5030150357%_
                (lambda (_%g5030350320%_)
                  (if (gx#stx-pair? _%g5030350320%_)
                      (let ((_%e5030550323%_ (gx#syntax-e _%g5030350320%_)))
                        (let ((_%hd5030650327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5030550323%_)))
                              (_%tl5030750330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5030550323%_))))
                          (if (gx#stx-pair? _%tl5030750330%_)
                              (let ((_%e5030850333%_
                                     (gx#syntax-e _%tl5030750330%_)))
                                (let ((_%hd5030950337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5030850333%_)))
                                      (_%tl5031050340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5030850333%_))))
                                  (if (gx#stx-null? _%tl5031050340%_)
                                      ((lambda (_%L50343%_)
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
                         (cons _%L50343%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5030950337%_)
                                      (_%g5030250316%_ _%g5030350320%_))))
                              (_%g5030250316%_ _%g5030350320%_))))
                      (_%g5030250316%_ _%g5030350320%_)))))
          (_%g5030150357%_ _%$stx50298%_))))))
