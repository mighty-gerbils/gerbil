(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g88397_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx48295%_)
        (let* ((_%g4829848316%_
                (lambda (_%g4829948312%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4829948312%_)))
               (_%g4829748511%_
                (lambda (_%g4829948320%_)
                  (if (gx#stx-pair? _%g4829948320%_)
                      (let ((_%e4830248323%_ (gx#syntax-e _%g4829948320%_)))
                        (let ((_%hd4830348327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4830248323%_)))
                              (_%tl4830448330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4830248323%_))))
                          (if (gx#stx-pair? _%tl4830448330%_)
                              (let ((_%e4830548333%_
                                     (gx#syntax-e _%tl4830448330%_)))
                                (let ((_%hd4830648337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4830548333%_)))
                                      (_%tl4830748340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4830548333%_))))
                                  (if (gx#stx-pair? _%tl4830748340%_)
                                      (let ((_%e4830848343%_
                                             (gx#syntax-e _%tl4830748340%_)))
                                        (let ((_%hd4830948347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4830848343%_)))
                                              (_%tl4831048350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4830848343%_))))
                                          (if (gx#stx-null? _%tl4831048350%_)
                                              ((lambda (_%L48353%_ _%L48355%_)
                                                 (if (gx#identifier?
                                                      _%L48353%_)
                                                     (let ((_%meta48372%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx48295%_
                                                               _%L48353%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta48372%_))
                                                           (let* ((_%g4837748392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4837848388%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4837848388%_)))
                          (_%g4837648439%_
                           (lambda (_%g4837848396%_)
                             (if (gx#stx-pair? _%g4837848396%_)
                                 (let ((_%e4838148399%_
                                        (gx#syntax-e _%g4837848396%_)))
                                   (let ((_%hd4838248403%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4838148399%_)))
                                         (_%tl4838348406%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4838148399%_))))
                                     (if (gx#stx-pair? _%tl4838348406%_)
                                         (let ((_%e4838448409%_
                                                (gx#syntax-e
                                                 _%tl4838348406%_)))
                                           (let ((_%hd4838548413%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4838448409%_)))
                                                 (_%tl4838648416%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4838448409%_))))
                                             (if (gx#stx-null?
                                                  _%tl4838648416%_)
                                                 ((lambda (_%L48419%_
                                                           _%L48421%_)
                                                    (if (let ((__tmp88395
                                                               (let ((__obj88239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta48372%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj88239
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj88239
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj88239 'id)))))
                  (declare (not safe))
                  (##memq __tmp88395 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48421%_ '()))
                            (cons _%L48355%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48421%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L48355%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L48419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L48421%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4838548413%_
                                                  _%hd4838248403%_)
                                                 (_%g4837748392%_
                                                  _%g4837848396%_))))
                                         (_%g4837748392%_ _%g4837848396%_))))
                                 (_%g4837748392%_ _%g4837848396%_)))))
                     (_%g4837648439%_
                      (list (let ((__obj88240 _%meta48372%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj88240
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj88240
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj88240
                                   'type-descriptor)))
                            (let ((__obj88241 _%meta48372%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj88241
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj88241
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj88241
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta48372%_))
                       (let* ((_%g4844548460%_
                               (lambda (_%g4844648456%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4844648456%_)))
                              (_%g4844448505%_
                               (lambda (_%g4844648464%_)
                                 (if (gx#stx-pair? _%g4844648464%_)
                                     (let ((_%e4844948467%_
                                            (gx#syntax-e _%g4844648464%_)))
                                       (let ((_%hd4845048471%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4844948467%_)))
                                             (_%tl4845148474%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4844948467%_))))
                                         (if (gx#stx-pair? _%tl4845148474%_)
                                             (let ((_%e4845248477%_
                                                    (gx#syntax-e
                                                     _%tl4845148474%_)))
                                               (let ((_%hd4845348481%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4845248477%_)))
                                                     (_%tl4845448484%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4845248477%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4845448484%_)
                                                     ((lambda (_%L48487%_
                                                               _%L48489%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L48489%_ '()))
                            (cons (cons _%L48487%_ (cons _%L48355%_ '()))
                                  '()))))
              _%hd4845348481%_
              _%hd4845048471%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4844548460%_
                                                      _%g4844648464%_))))
                                             (_%g4844548460%_
                                              _%g4844648464%_))))
                                     (_%g4844548460%_ _%g4844648464%_)))))
                         (_%g4844448505%_
                          (list (let ((__obj88238 _%meta48372%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj88238
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj88238
                                         '7
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj88238
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx48295%_
                                   _%L48353%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx48295%_
                        _%L48353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4829848316%_
                                                      _%g4829948320%_)))
                                               _%hd4830948347%_
                                               _%hd4830648337%_)
                                              (_%g4829848316%_
                                               _%g4829948320%_))))
                                      (_%g4829848316%_ _%g4829948320%_))))
                              (_%g4829848316%_ _%g4829948320%_))))
                      (_%g4829848316%_ _%g4829948320%_)))))
          (_%g4829748511%_ _%stx48295%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx48515%_)
        (let* ((_%g4851848536%_
                (lambda (_%g4851948532%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4851948532%_)))
               (_%g4851748730%_
                (lambda (_%g4851948540%_)
                  (if (gx#stx-pair? _%g4851948540%_)
                      (let ((_%e4852248543%_ (gx#syntax-e _%g4851948540%_)))
                        (let ((_%hd4852348547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4852248543%_)))
                              (_%tl4852448550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4852248543%_))))
                          (if (gx#stx-pair? _%tl4852448550%_)
                              (let ((_%e4852548553%_
                                     (gx#syntax-e _%tl4852448550%_)))
                                (let ((_%hd4852648557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4852548553%_)))
                                      (_%tl4852748560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4852548553%_))))
                                  (if (gx#stx-pair? _%tl4852748560%_)
                                      (let ((_%e4852848563%_
                                             (gx#syntax-e _%tl4852748560%_)))
                                        (let ((_%hd4852948567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4852848563%_)))
                                              (_%tl4853048570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4852848563%_))))
                                          (if (gx#stx-null? _%tl4853048570%_)
                                              ((lambda (_%L48573%_ _%L48575%_)
                                                 (if (gx#identifier?
                                                      _%L48573%_)
                                                     (let ((_%meta48591%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx48515%_
                                                               _%L48573%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta48591%_))
                                                           (let* ((_%g4859648611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4859748607%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4859748607%_)))
                          (_%g4859548658%_
                           (lambda (_%g4859748615%_)
                             (if (gx#stx-pair? _%g4859748615%_)
                                 (let ((_%e4860048618%_
                                        (gx#syntax-e _%g4859748615%_)))
                                   (let ((_%hd4860148622%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4860048618%_)))
                                         (_%tl4860248625%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4860048618%_))))
                                     (if (gx#stx-pair? _%tl4860248625%_)
                                         (let ((_%e4860348628%_
                                                (gx#syntax-e
                                                 _%tl4860248625%_)))
                                           (let ((_%hd4860448632%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4860348628%_)))
                                                 (_%tl4860548635%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4860348628%_))))
                                             (if (gx#stx-null?
                                                  _%tl4860548635%_)
                                                 ((lambda (_%L48638%_
                                                           _%L48640%_)
                                                    (if (let ((__tmp88396
                                                               (let ((__obj88243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta48591%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj88243
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj88243
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj88243 'id)))))
                  (declare (not safe))
                  (##memq __tmp88396 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48640%_ '()))
                            (cons _%L48575%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48640%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L48575%_ '()))
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
                                    (cons (cons _%L48638%_
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
                                                (cons _%L48575%_
                                                      (cons _%L48638%_
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
                                                  _%hd4860448632%_
                                                  _%hd4860148622%_)
                                                 (_%g4859648611%_
                                                  _%g4859748615%_))))
                                         (_%g4859648611%_ _%g4859748615%_))))
                                 (_%g4859648611%_ _%g4859748615%_)))))
                     (_%g4859548658%_
                      (list (let ((__obj88244 _%meta48591%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj88244
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj88244
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj88244
                                   'type-descriptor)))
                            (let ((__obj88245 _%meta48591%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj88245
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj88245
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj88245
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta48591%_))
                       (let* ((_%g4866448679%_
                               (lambda (_%g4866548675%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4866548675%_)))
                              (_%g4866348724%_
                               (lambda (_%g4866548683%_)
                                 (if (gx#stx-pair? _%g4866548683%_)
                                     (let ((_%e4866848686%_
                                            (gx#syntax-e _%g4866548683%_)))
                                       (let ((_%hd4866948690%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4866848686%_)))
                                             (_%tl4867048693%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4866848686%_))))
                                         (if (gx#stx-pair? _%tl4867048693%_)
                                             (let ((_%e4867148696%_
                                                    (gx#syntax-e
                                                     _%tl4867048693%_)))
                                               (let ((_%hd4867248700%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4867148696%_)))
                                                     (_%tl4867348703%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4867148696%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4867348703%_)
                                                     ((lambda (_%L48706%_
                                                               _%L48708%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L48708%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L48575%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L48706%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4867248700%_
              _%hd4866948690%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4866448679%_
                                                      _%g4866548683%_))))
                                             (_%g4866448679%_
                                              _%g4866548683%_))))
                                     (_%g4866448679%_ _%g4866548683%_)))))
                         (_%g4866348724%_
                          (list (let ((__obj88242 _%meta48591%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj88242
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj88242
                                         '7
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj88242
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx48515%_
                                   _%L48573%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx48515%_
                        _%L48573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4851848536%_
                                                      _%g4851948540%_)))
                                               _%hd4852948567%_
                                               _%hd4852648557%_)
                                              (_%g4851848536%_
                                               _%g4851948540%_))))
                                      (_%g4851848536%_ _%g4851948540%_))))
                              (_%g4851848536%_ _%g4851948540%_))))
                      (_%g4851848536%_ _%g4851948540%_)))))
          (_%g4851748730%_ _%stx48515%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx48734%_)
        (let* ((_%g4873748755%_
                (lambda (_%g4873848751%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4873848751%_)))
               (_%g4873648841%_
                (lambda (_%g4873848759%_)
                  (if (gx#stx-pair? _%g4873848759%_)
                      (let ((_%e4874148762%_ (gx#syntax-e _%g4873848759%_)))
                        (let ((_%hd4874248766%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4874148762%_)))
                              (_%tl4874348769%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4874148762%_))))
                          (if (gx#stx-pair? _%tl4874348769%_)
                              (let ((_%e4874448772%_
                                     (gx#syntax-e _%tl4874348769%_)))
                                (let ((_%hd4874548776%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4874448772%_)))
                                      (_%tl4874648779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4874448772%_))))
                                  (if (gx#stx-pair? _%tl4874648779%_)
                                      (let ((_%e4874748782%_
                                             (gx#syntax-e _%tl4874648779%_)))
                                        (let ((_%hd4874848786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4874748782%_)))
                                              (_%tl4874948789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4874748782%_))))
                                          (if (gx#stx-null? _%tl4874948789%_)
                                              ((lambda (_%L48792%_ _%L48794%_)
                                                 (if (gx#identifier?
                                                      _%L48792%_)
                                                     (let* ((_%g4881048818%_
                                                             (lambda (_%g4881148814%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4881148814%_)))
                                                            (_%g4880948837%_
                                                             (lambda (_%g4881148822%_)
                                                               ((lambda (_%L48825%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L48825%_ '()))
                                      (cons _%L48794%_ '()))))
                        _%g4881148822%_))))
               (_%g4880948837%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx48734%_
                   _%L48792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4873748755%_
                                                      _%g4873848759%_)))
                                               _%hd4874848786%_
                                               _%hd4874548776%_)
                                              (_%g4873748755%_
                                               _%g4873848759%_))))
                                      (_%g4873748755%_ _%g4873848759%_))))
                              (_%g4873748755%_ _%g4873848759%_))))
                      (_%g4873748755%_ _%g4873848759%_)))))
          (_%g4873648841%_ _%stx48734%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx48845%_)
        (let* ((_%__stx8267482675%_ _%$stx48845%_)
               (_%g4885048886%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8267482675%_))))
          (let ((_%__kont8267782678%_
                 (lambda (_%L49004%_ _%L49006%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L49006%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L49004%_
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
                           (cons _%L49006%_
                                 (cons _%L49004%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8267982680%_
                 (lambda (_%L48943%_ _%L48945%_ _%L48946%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L48946%_ (cons _%L48945%_ '())))
                               (cons _%L48943%_ '()))))))
            (if (gx#stx-pair? _%__stx8267482675%_)
                (let ((_%e4885448974%_ (gx#syntax-e _%__stx8267482675%_)))
                  (let ((_%tl4885648981%_
                         (let () (declare (not safe)) (##cdr _%e4885448974%_)))
                        (_%hd4885548978%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4885448974%_))))
                    (if (gx#stx-pair? _%tl4885648981%_)
                        (let ((_%e4885748984%_ (gx#syntax-e _%tl4885648981%_)))
                          (let ((_%tl4885948991%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4885748984%_)))
                                (_%hd4885848988%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4885748984%_))))
                            (if (gx#stx-pair? _%tl4885948991%_)
                                (let ((_%e4886048994%_
                                       (gx#syntax-e _%tl4885948991%_)))
                                  (let ((_%tl4886249001%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4886048994%_)))
                                        (_%hd4886148998%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4886048994%_))))
                                    (if (gx#stx-null? _%tl4886249001%_)
                                        (_%__kont8267782678%_
                                         _%hd4886148998%_
                                         _%hd4885848988%_)
                                        (if (gx#stx-pair? _%tl4886249001%_)
                                            (let ((_%e4887548923%_
                                                   (gx#syntax-e
                                                    _%tl4886249001%_)))
                                              (let ((_%tl4887748930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4887548923%_)))
                                                    (_%hd4887648927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4887548923%_))))
                                                (if (gx#identifier?
                                                     _%hd4887648927%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g88397_|
                                                         _%hd4887648927%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4887748930%_)
                                                            (let ((_%e4887848933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4887748930%_)))
                      (let ((_%tl4888048940%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4887848933%_)))
                            (_%hd4887948937%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4887848933%_))))
                        (if (gx#stx-null? _%tl4888048940%_)
                            (_%__kont8267982680%_
                             _%hd4887948937%_
                             _%hd4886148998%_
                             _%hd4885848988%_)
                            (let () (declare (not safe)) (_%g4885048886%_)))))
                    (let () (declare (not safe)) (_%g4885048886%_)))
                (let () (declare (not safe)) (_%g4885048886%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4885048886%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4885048886%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4885048886%_)))))
                        (let () (declare (not safe)) (_%g4885048886%_)))))
                (let () (declare (not safe)) (_%g4885048886%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx49025%_)
        (let ((_%g4902849035%_
               (lambda (_%g4902949031%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4902949031%_))))
          (_%g4902849035%_ _%$stx49025%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx49039%_)
        (let ((_%g4904249049%_
               (lambda (_%g4904349045%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4904349045%_))))
          (_%g4904249049%_ _%$stx49039%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx49053%_)
        (let* ((_%g4905749071%_
                (lambda (_%g4905849067%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4905849067%_)))
               (_%g4905649112%_
                (lambda (_%g4905849075%_)
                  (if (gx#stx-pair? _%g4905849075%_)
                      (let ((_%e4906049078%_ (gx#syntax-e _%g4905849075%_)))
                        (let ((_%hd4906149082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4906049078%_)))
                              (_%tl4906249085%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4906049078%_))))
                          (if (gx#stx-pair? _%tl4906249085%_)
                              (let ((_%e4906349088%_
                                     (gx#syntax-e _%tl4906249085%_)))
                                (let ((_%hd4906449092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4906349088%_)))
                                      (_%tl4906549095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4906349088%_))))
                                  (if (gx#stx-null? _%tl4906549095%_)
                                      ((lambda (_%L49098%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L49098%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L49098%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4906449092%_)
                                      (_%g4905749071%_ _%g4905849075%_))))
                              (_%g4905749071%_ _%g4905849075%_))))
                      (_%g4905749071%_ _%g4905849075%_)))))
          (_%g4905649112%_ _%$stx49053%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx49116%_)
        (let* ((_%g4911949142%_
                (lambda (_%g4912049138%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4912049138%_)))
               (_%g4911849266%_
                (lambda (_%g4912049146%_)
                  (if (gx#stx-pair? _%g4912049146%_)
                      (let ((_%e4912549149%_ (gx#syntax-e _%g4912049146%_)))
                        (let ((_%hd4912649153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4912549149%_)))
                              (_%tl4912749156%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4912549149%_))))
                          (if (gx#stx-pair? _%tl4912749156%_)
                              (let ((_%e4912849159%_
                                     (gx#syntax-e _%tl4912749156%_)))
                                (let ((_%hd4912949163%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4912849159%_)))
                                      (_%tl4913049166%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4912849159%_))))
                                  (if (gx#stx-pair? _%tl4913049166%_)
                                      (let ((_%e4913149169%_
                                             (gx#syntax-e _%tl4913049166%_)))
                                        (let ((_%hd4913249173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4913149169%_)))
                                              (_%tl4913349176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4913149169%_))))
                                          (if (gx#stx-pair? _%tl4913349176%_)
                                              (let ((_%e4913449179%_
                                                     (gx#syntax-e
                                                      _%tl4913349176%_)))
                                                (let ((_%hd4913549183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4913449179%_)))
                                                      (_%tl4913649186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4913449179%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4913649186%_)
                                                      ((lambda (_%L49189%_
                                                                _%L49191%_
                                                                _%L49192%_
                                                                _%L49193%_)
                                                         (let* ((_%g4921349221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4921449217%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4921449217%_)))
                        (_%g4921249240%_
                         (lambda (_%g4921449225%_)
                           ((lambda (_%L49228%_)
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
                                (cons _%L49228%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L49191%_ '()))
                                      (cons 'value:
                                            (cons _%L49189%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4921449225%_))))
                   (_%g4921249240%_
                    (let ((_%$e49252%_
                           (let ((_%$e49244%_ (gx#stx-source _%L49192%_)))
                             (if _%$e49244%_
                                 _%$e49244%_
                                 (let ((_%$e49248%_
                                        (gx#stx-source _%stx49116%_)))
                                   (if _%$e49248%_
                                       _%$e49248%_
                                       (gx#stx-source _%L49193%_)))))))
                      (if _%$e49252%_
                          ((lambda (_%locat49256%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4925849260%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat49256%_
                                   '#t
                                   _%g4925849260%_)))))
                           _%$e49252%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4913549183%_
               _%hd4913249173%_
               _%hd4912949163%_
               _%hd4912649153%_)
              (_%g4911949142%_ _%g4912049146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4911949142%_
                                               _%g4912049146%_))))
                                      (_%g4911949142%_ _%g4912049146%_))))
                              (_%g4911949142%_ _%g4912049146%_))))
                      (_%g4911949142%_ _%g4912049146%_)))))
          (_%g4911849266%_ _%stx49116%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx49270%_)
        (let* ((_%g4927349288%_
                (lambda (_%g4927449284%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4927449284%_)))
               (_%g4927249384%_
                (lambda (_%g4927449292%_)
                  (if (gx#stx-pair? _%g4927449292%_)
                      (let ((_%e4927749295%_ (gx#syntax-e _%g4927449292%_)))
                        (let ((_%hd4927849299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4927749295%_)))
                              (_%tl4927949302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4927749295%_))))
                          (if (gx#stx-pair? _%tl4927949302%_)
                              (let ((_%e4928049305%_
                                     (gx#syntax-e _%tl4927949302%_)))
                                (let ((_%hd4928149309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4928049305%_)))
                                      (_%tl4928249312%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4928049305%_))))
                                  (if (gx#stx-null? _%tl4928249312%_)
                                      ((lambda (_%L49315%_ _%L49317%_)
                                         (let* ((_%g4933149339%_
                                                 (lambda (_%g4933249335%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4933249335%_)))
                                                (_%g4933049358%_
                                                 (lambda (_%g4933249343%_)
                                                   ((lambda (_%L49346%_)
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
                                                        (cons _%L49346%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L49315%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4933249343%_))))
                                           (_%g4933049358%_
                                            (let ((_%$e49370%_
                                                   (let ((_%$e49362%_
                                                          (gx#stx-source
                                                           _%L49315%_)))
                                                     (if _%$e49362%_
                                                         _%$e49362%_
                                                         (let ((_%$e49366%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx49270%_)))
                   (if _%$e49366%_ _%$e49366%_ (gx#stx-source _%L49317%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e49370%_
                                                  ((lambda (_%locat49374%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4937649378%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat49374%_
                                                           '#t
                                                           _%g4937649378%_)))))
                                                   _%$e49370%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4928149309%_
                                       _%hd4927849299%_)
                                      (_%g4927349288%_ _%g4927449292%_))))
                              (_%g4927349288%_ _%g4927449292%_))))
                      (_%g4927349288%_ _%g4927449292%_)))))
          (_%g4927249384%_ _%stx49270%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx49388%_)
        (let* ((_%g4939249406%_
                (lambda (_%g4939349402%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4939349402%_)))
               (_%g4939149447%_
                (lambda (_%g4939349410%_)
                  (if (gx#stx-pair? _%g4939349410%_)
                      (let ((_%e4939549413%_ (gx#syntax-e _%g4939349410%_)))
                        (let ((_%hd4939649417%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4939549413%_)))
                              (_%tl4939749420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4939549413%_))))
                          (if (gx#stx-pair? _%tl4939749420%_)
                              (let ((_%e4939849423%_
                                     (gx#syntax-e _%tl4939749420%_)))
                                (let ((_%hd4939949427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4939849423%_)))
                                      (_%tl4940049430%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4939849423%_))))
                                  (if (gx#stx-null? _%tl4940049430%_)
                                      ((lambda (_%L49433%_)
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
                         (cons _%L49433%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4939949427%_)
                                      (_%g4939249406%_ _%g4939349410%_))))
                              (_%g4939249406%_ _%g4939349410%_))))
                      (_%g4939249406%_ _%g4939349410%_)))))
          (_%g4939149447%_ _%$stx49388%_))))))
