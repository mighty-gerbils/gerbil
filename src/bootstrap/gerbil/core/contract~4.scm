(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g87621_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g87624_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g87627_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx43163%_)
        (let* ((_%$%g4316743200%_
                (lambda (_%$%g4316843196%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4316843196%_)))
               (_%$%g4316643412%_
                (lambda (_%$%g4316843204%_)
                  (if (gx#stx-pair? _%$%g4316843204%_)
                      (let ((_%$%e4318243207%_
                             (gx#syntax-e _%$%g4316843204%_)))
                        (let ((_%$%hd4318343211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4318243207%_)))
                              (_%$%tl4318443214%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4318243207%_))))
                          (if (gx#stx-pair? _%$%tl4318443214%_)
                              (let ((_%$%e4318543217%_
                                     (gx#syntax-e _%$%tl4318443214%_)))
                                (let ((_%$%hd4318643221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4318543217%_)))
                                      (_%$%tl4318743224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4318543217%_))))
                                  (if (gx#stx-pair? _%$%tl4318743224%_)
                                      (let ((_%$%e4318843227%_
                                             (gx#syntax-e _%$%tl4318743224%_)))
                                        (let ((_%$%hd4318943231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4318843227%_)))
                                              (_%$%tl4319043234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4318843227%_))))
                                          (if (gx#stx-datum?
                                               _%$%hd4318943231%_)
                                              (let ((_%$%e4319143237%_
                                                     (gx#stx-e
                                                      _%$%hd4318943231%_)))
                                                (if (equal? _%$%e4319143237%_
                                                            'runtime:)
                                                    (if (gx#stx-pair?
                                                         _%$%tl4319043234%_)
                                                        (let ((_%$%e4319243241%_
                                                               (gx#syntax-e
                                                                _%$%tl4319043234%_)))
                                                          (let ((_%$%hd4319343245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4319243241%_)))
                        (_%$%tl4319443248%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4319243241%_))))
                    (if (gx#stx-null? _%$%tl4319443248%_)
                        ((lambda (_%$%g4318043251%_ _%$%g4318143253%_)
                           (if (gx#identifier? _%$%g4318043251%_)
                               (let ((_%meta43273%_
                                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                       _%stx43163%_
                                       _%$%g4318043251%_)))
                                 (if (gerbil/core/mop~MOP-2#class-type-info?
                                      _%meta43273%_)
                                     (let* ((_%$%g4327843293%_
                                             (lambda (_%$%g4327943289%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g4327943289%_)))
                                            (_%$%g4327743340%_
                                             (lambda (_%$%g4327943297%_)
                                               (if (gx#stx-pair?
                                                    _%$%g4327943297%_)
                                                   (let ((_%$%e4328243300%_
                                                          (gx#syntax-e
                                                           _%$%g4327943297%_)))
                                                     (let ((_%$%hd4328343304%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e4328243300%_)))
                                                           (_%$%tl4328443307%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e4328243300%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%tl4328443307%_)
                                                           (let ((_%$%e4328543310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%tl4328443307%_)))
                     (let ((_%$%hd4328643314%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e4328543310%_)))
                           (_%$%tl4328743317%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e4328543310%_))))
                       (if (gx#stx-null? _%$%tl4328743317%_)
                           ((lambda (_%$%g4328043320%_ _%$%g4328143322%_)
                              (if (memq (gerbil/core/mop~MOP-2#!class-type-id
                                         _%meta43273%_)
                                        '(t void))
                                  (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@type)
                                                    (cons _%$%g4328143322%_
                                                          '()))
                                              (cons _%$%g4318143253%_ '())))
                                  (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@type)
                                                    (cons _%$%g4328143322%_
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'val)
                              (cons _%$%g4318143253%_ '()))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons _%$%g4328043320%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          (cons (gx#datum->syntax '#f 'val)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'runtime-contract-violation!)
                                                            (cons _%$%g4318143253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%$%g4328043320%_
                                      (cons (gx#datum->syntax '#f 'val) '()))
                                (cons (gx#datum->syntax '#f 'val) '()))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                            _%$%hd4328643314%_
                            _%$%hd4328343304%_)
                           (_%$%g4327843293%_ _%$%g4327943297%_))))
                   (_%$%g4327843293%_ _%$%g4327943297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g4327843293%_
                                                    _%$%g4327943297%_)))))
                                       (_%$%g4327743340%_
                                        (list (gerbil/core/mop~MOP-2#!class-type-descriptor
                                               _%meta43273%_)
                                              (gerbil/core/mop~MOP-2#!class-type-predicate
                                               _%meta43273%_))))
                                     (if (gerbil/core/contract~InterfaceInfo#interface-info?
                                          _%meta43273%_)
                                         (let* ((_%$%g4334643361%_
                                                 (lambda (_%$%g4334743357%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g4334743357%_)))
                                                (_%$%g4334543406%_
                                                 (lambda (_%$%g4334743365%_)
                                                   (if (gx#stx-pair?
                                                        _%$%g4334743365%_)
                                                       (let ((_%$%e4335043368%_
                                                              (gx#syntax-e
                                                               _%$%g4334743365%_)))
                                                         (let ((_%$%hd4335143372%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e4335043368%_)))
                       (_%$%tl4335243375%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e4335043368%_))))
                   (if (gx#stx-pair? _%$%tl4335243375%_)
                       (let ((_%$%e4335343378%_
                              (gx#syntax-e _%$%tl4335243375%_)))
                         (let ((_%$%hd4335443382%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4335343378%_)))
                               (_%$%tl4335543385%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4335343378%_))))
                           (if (gx#stx-null? _%$%tl4335543385%_)
                               ((lambda (_%$%g4334843388%_ _%$%g4334943390%_)
                                  (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@type)
                                                    (cons _%$%g4334943390%_
                                                          '()))
                                              (cons (cons _%$%g4334843388%_
                                                          (cons _%$%g4318143253%_
                                                                '()))
                                                    '()))))
                                _%$%hd4335443382%_
                                _%$%hd4335143372%_)
                               (_%$%g4334643361%_ _%$%g4334743365%_))))
                       (_%$%g4334643361%_ _%$%g4334743365%_))))
               (_%$%g4334643361%_ _%$%g4334743365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g4334543406%_
                                            (list (gerbil/core/mop~MOP-2#!runtime-type-descriptor
                                                   _%meta43273%_)
                                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                                   _%stx43163%_
                                                   _%$%g4318043251%_))))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"not a class type or interface"
                                          _%stx43163%_
                                          _%$%g4318043251%_))))
                               (_%$%g4316743200%_ _%$%g4316843204%_)))
                         _%$%hd4319343245%_
                         _%$%hd4318643221%_)
                        (_%$%g4316743200%_ _%$%g4316843204%_))))
                (_%$%g4316743200%_ _%$%g4316843204%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4316743200%_
                                                     _%$%g4316843204%_)))
                                              (_%$%g4316743200%_
                                               _%$%g4316843204%_))))
                                      (_%$%g4316743200%_ _%$%g4316843204%_))))
                              (_%$%g4316743200%_ _%$%g4316843204%_))))
                      (_%$%g4316743200%_ _%$%g4316843204%_))))
               (_%$%g4316543605%_
                (lambda (_%$%g4316843416%_)
                  (if (gx#stx-pair? _%$%g4316843416%_)
                      (let ((_%$%e4317143419%_
                             (gx#syntax-e _%$%g4316843416%_)))
                        (let ((_%$%hd4317243423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4317143419%_)))
                              (_%$%tl4317343426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4317143419%_))))
                          (if (gx#stx-pair? _%$%tl4317343426%_)
                              (let ((_%$%e4317443429%_
                                     (gx#syntax-e _%$%tl4317343426%_)))
                                (let ((_%$%hd4317543433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4317443429%_)))
                                      (_%$%tl4317643436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4317443429%_))))
                                  (if (gx#stx-pair? _%$%tl4317643436%_)
                                      (let ((_%$%e4317743439%_
                                             (gx#syntax-e _%$%tl4317643436%_)))
                                        (let ((_%$%hd4317843443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4317743439%_)))
                                              (_%$%tl4317943446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4317743439%_))))
                                          (if (gx#stx-null? _%$%tl4317943446%_)
                                              ((lambda (_%$%g4316943449%_
                                                        _%$%g4317043451%_)
                                                 (if (gx#identifier?
                                                      _%$%g4316943449%_)
                                                     (let ((_%meta43466%_
                                                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                             _%stx43163%_
                                                             _%$%g4316943449%_)))
                                                       (if (gerbil/core/mop~MOP-2#class-type-info?
                                                            _%meta43466%_)
                                                           (let* ((_%$%g4347143486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g4347243482%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g4347243482%_)))
                          (_%$%g4347043533%_
                           (lambda (_%$%g4347243490%_)
                             (if (gx#stx-pair? _%$%g4347243490%_)
                                 (let ((_%$%e4347543493%_
                                        (gx#syntax-e _%$%g4347243490%_)))
                                   (let ((_%$%hd4347643497%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e4347543493%_)))
                                         (_%$%tl4347743500%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e4347543493%_))))
                                     (if (gx#stx-pair? _%$%tl4347743500%_)
                                         (let ((_%$%e4347843503%_
                                                (gx#syntax-e
                                                 _%$%tl4347743500%_)))
                                           (let ((_%$%hd4347943507%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4347843503%_)))
                                                 (_%$%tl4348043510%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4347843503%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl4348043510%_)
                                                 ((lambda (_%$%g4347343513%_
                                                           _%$%g4347443515%_)
                                                    (if (memq (gerbil/core/mop~MOP-2#!class-type-id
                                                               _%meta43466%_)
                                                              '(t void))
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%$%g4347443515%_ '()))
                            (cons _%$%g4317043451%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%$%g4347443515%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%$%g4317043451%_
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%$%g4347343513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%$%g4317043451%_
                                                (cons (cons _%$%g4347343513%_
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
                                                  _%$%hd4347943507%_
                                                  _%$%hd4347643497%_)
                                                 (_%$%g4347143486%_
                                                  _%$%g4347243490%_))))
                                         (_%$%g4347143486%_
                                          _%$%g4347243490%_))))
                                 (_%$%g4347143486%_ _%$%g4347243490%_)))))
                     (_%$%g4347043533%_
                      (list (gerbil/core/mop~MOP-2#!class-type-descriptor
                             _%meta43466%_)
                            (gerbil/core/mop~MOP-2#!class-type-predicate
                             _%meta43466%_))))
                   (if (gerbil/core/contract~InterfaceInfo#interface-info?
                        _%meta43466%_)
                       (let* ((_%$%g4353943554%_
                               (lambda (_%$%g4354043550%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g4354043550%_)))
                              (_%$%g4353843599%_
                               (lambda (_%$%g4354043558%_)
                                 (if (gx#stx-pair? _%$%g4354043558%_)
                                     (let ((_%$%e4354343561%_
                                            (gx#syntax-e _%$%g4354043558%_)))
                                       (let ((_%$%hd4354443565%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4354343561%_)))
                                             (_%$%tl4354543568%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4354343561%_))))
                                         (if (gx#stx-pair? _%$%tl4354543568%_)
                                             (let ((_%$%e4354643571%_
                                                    (gx#syntax-e
                                                     _%$%tl4354543568%_)))
                                               (let ((_%$%hd4354743575%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4354643571%_)))
                                                     (_%$%tl4354843578%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4354643571%_))))
                                                 (if (gx#stx-null?
                                                      _%$%tl4354843578%_)
                                                     ((lambda (_%$%g4354143581%_
                                                               _%$%g4354243583%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%$%g4354243583%_ '()))
                            (cons (cons _%$%g4354143581%_
                                        (cons _%$%g4317043451%_ '()))
                                  '()))))
              _%$%hd4354743575%_
              _%$%hd4354443565%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4353943554%_
                                                      _%$%g4354043558%_))))
                                             (_%$%g4353943554%_
                                              _%$%g4354043558%_))))
                                     (_%$%g4353943554%_ _%$%g4354043558%_)))))
                         (_%$%g4353843599%_
                          (list (gerbil/core/mop~MOP-2#!runtime-type-descriptor
                                 _%meta43466%_)
                                (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                 _%stx43163%_
                                 _%$%g4316943449%_))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx43163%_
                        _%$%g4316943449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4316643412%_
                                                      _%$%g4316843416%_)))
                                               _%$%hd4317843443%_
                                               _%$%hd4317543433%_)
                                              (_%$%g4316643412%_
                                               _%$%g4316843416%_))))
                                      (_%$%g4316643412%_ _%$%g4316843416%_))))
                              (_%$%g4316643412%_ _%$%g4316843416%_))))
                      (_%$%g4316643412%_ _%$%g4316843416%_)))))
          (_%$%g4316543605%_ _%stx43163%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx43609%_)
        (let* ((_%$%g4361243630%_
                (lambda (_%$%g4361343626%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4361343626%_)))
               (_%$%g4361143824%_
                (lambda (_%$%g4361343634%_)
                  (if (gx#stx-pair? _%$%g4361343634%_)
                      (let ((_%$%e4361643637%_
                             (gx#syntax-e _%$%g4361343634%_)))
                        (let ((_%$%hd4361743641%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4361643637%_)))
                              (_%$%tl4361843644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4361643637%_))))
                          (if (gx#stx-pair? _%$%tl4361843644%_)
                              (let ((_%$%e4361943647%_
                                     (gx#syntax-e _%$%tl4361843644%_)))
                                (let ((_%$%hd4362043651%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4361943647%_)))
                                      (_%$%tl4362143654%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4361943647%_))))
                                  (if (gx#stx-pair? _%$%tl4362143654%_)
                                      (let ((_%$%e4362243657%_
                                             (gx#syntax-e _%$%tl4362143654%_)))
                                        (let ((_%$%hd4362343661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4362243657%_)))
                                              (_%$%tl4362443664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4362243657%_))))
                                          (if (gx#stx-null? _%$%tl4362443664%_)
                                              ((lambda (_%$%g4361443667%_
                                                        _%$%g4361543669%_)
                                                 (if (gx#identifier?
                                                      _%$%g4361443667%_)
                                                     (let ((_%meta43685%_
                                                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                             _%stx43609%_
                                                             _%$%g4361443667%_)))
                                                       (if (gerbil/core/mop~MOP-2#class-type-info?
                                                            _%meta43685%_)
                                                           (let* ((_%$%g4369043705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g4369143701%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g4369143701%_)))
                          (_%$%g4368943752%_
                           (lambda (_%$%g4369143709%_)
                             (if (gx#stx-pair? _%$%g4369143709%_)
                                 (let ((_%$%e4369443712%_
                                        (gx#syntax-e _%$%g4369143709%_)))
                                   (let ((_%$%hd4369543716%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e4369443712%_)))
                                         (_%$%tl4369643719%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e4369443712%_))))
                                     (if (gx#stx-pair? _%$%tl4369643719%_)
                                         (let ((_%$%e4369743722%_
                                                (gx#syntax-e
                                                 _%$%tl4369643719%_)))
                                           (let ((_%$%hd4369843726%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4369743722%_)))
                                                 (_%$%tl4369943729%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4369743722%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl4369943729%_)
                                                 ((lambda (_%$%g4369243732%_
                                                           _%$%g4369343734%_)
                                                    (if (memq (gerbil/core/mop~MOP-2#!class-type-id
                                                               _%meta43685%_)
                                                              '(t void))
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%$%g4369343734%_ '()))
                            (cons _%$%g4361543669%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%$%g4369343734%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%$%g4361543669%_
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
                                    (cons (cons _%$%g4369243732%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%$%g4361543669%_
                                                (cons (cons _%$%g4369243732%_
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
                                                  _%$%hd4369843726%_
                                                  _%$%hd4369543716%_)
                                                 (_%$%g4369043705%_
                                                  _%$%g4369143709%_))))
                                         (_%$%g4369043705%_
                                          _%$%g4369143709%_))))
                                 (_%$%g4369043705%_ _%$%g4369143709%_)))))
                     (_%$%g4368943752%_
                      (list (gerbil/core/mop~MOP-2#!class-type-descriptor
                             _%meta43685%_)
                            (gerbil/core/mop~MOP-2#!class-type-predicate
                             _%meta43685%_))))
                   (if (gerbil/core/contract~InterfaceInfo#interface-info?
                        _%meta43685%_)
                       (let* ((_%$%g4375843773%_
                               (lambda (_%$%g4375943769%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g4375943769%_)))
                              (_%$%g4375743818%_
                               (lambda (_%$%g4375943777%_)
                                 (if (gx#stx-pair? _%$%g4375943777%_)
                                     (let ((_%$%e4376243780%_
                                            (gx#syntax-e _%$%g4375943777%_)))
                                       (let ((_%$%hd4376343784%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4376243780%_)))
                                             (_%$%tl4376443787%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4376243780%_))))
                                         (if (gx#stx-pair? _%$%tl4376443787%_)
                                             (let ((_%$%e4376543790%_
                                                    (gx#syntax-e
                                                     _%$%tl4376443787%_)))
                                               (let ((_%$%hd4376643794%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4376543790%_)))
                                                     (_%$%tl4376743797%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4376543790%_))))
                                                 (if (gx#stx-null?
                                                      _%$%tl4376743797%_)
                                                     ((lambda (_%$%g4376043800%_
                                                               _%$%g4376143802%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%$%g4376143802%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%$%g4361543669%_
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%$%g4376043800%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%$%hd4376643794%_
              _%$%hd4376343784%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4375843773%_
                                                      _%$%g4375943777%_))))
                                             (_%$%g4375843773%_
                                              _%$%g4375943777%_))))
                                     (_%$%g4375843773%_ _%$%g4375943777%_)))))
                         (_%$%g4375743818%_
                          (list (gerbil/core/mop~MOP-2#!runtime-type-descriptor
                                 _%meta43685%_)
                                (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                 _%stx43609%_
                                 _%$%g4361443667%_))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx43609%_
                        _%$%g4361443667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4361243630%_
                                                      _%$%g4361343634%_)))
                                               _%$%hd4362343661%_
                                               _%$%hd4362043651%_)
                                              (_%$%g4361243630%_
                                               _%$%g4361343634%_))))
                                      (_%$%g4361243630%_ _%$%g4361343634%_))))
                              (_%$%g4361243630%_ _%$%g4361343634%_))))
                      (_%$%g4361243630%_ _%$%g4361343634%_)))))
          (_%$%g4361143824%_ _%stx43609%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx43828%_)
        (let* ((_%$%g4383143849%_
                (lambda (_%$%g4383243845%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4383243845%_)))
               (_%$%g4383043935%_
                (lambda (_%$%g4383243853%_)
                  (if (gx#stx-pair? _%$%g4383243853%_)
                      (let ((_%$%e4383543856%_
                             (gx#syntax-e _%$%g4383243853%_)))
                        (let ((_%$%hd4383643860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4383543856%_)))
                              (_%$%tl4383743863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4383543856%_))))
                          (if (gx#stx-pair? _%$%tl4383743863%_)
                              (let ((_%$%e4383843866%_
                                     (gx#syntax-e _%$%tl4383743863%_)))
                                (let ((_%$%hd4383943870%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4383843866%_)))
                                      (_%$%tl4384043873%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4383843866%_))))
                                  (if (gx#stx-pair? _%$%tl4384043873%_)
                                      (let ((_%$%e4384143876%_
                                             (gx#syntax-e _%$%tl4384043873%_)))
                                        (let ((_%$%hd4384243880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4384143876%_)))
                                              (_%$%tl4384343883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4384143876%_))))
                                          (if (gx#stx-null? _%$%tl4384343883%_)
                                              ((lambda (_%$%g4383343886%_
                                                        _%$%g4383443888%_)
                                                 (if (gx#identifier?
                                                      _%$%g4383343886%_)
                                                     (let* ((_%$%g4390443912%_
                                                             (lambda (_%$%g4390543908%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%$%g4390543908%_)))
                                                            (_%$%g4390343931%_
                                                             (lambda (_%$%g4390543916%_)
                                                               ((lambda (_%$%g4390643919%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%g4390643919%_ '()))
                                      (cons _%$%g4383443888%_ '()))))
                        _%$%g4390543916%_))))
               (_%$%g4390343931%_
                (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                 _%stx43828%_
                 _%$%g4383343886%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4383143849%_
                                                      _%$%g4383243853%_)))
                                               _%$%hd4384243880%_
                                               _%$%hd4383943870%_)
                                              (_%$%g4383143849%_
                                               _%$%g4383243853%_))))
                                      (_%$%g4383143849%_ _%$%g4383243853%_))))
                              (_%$%g4383143849%_ _%$%g4383243853%_))))
                      (_%$%g4383143849%_ _%$%g4383243853%_)))))
          (_%$%g4383043935%_ _%stx43828%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx43939%_)
        (let* ((_%$%g4394544029%_
                (lambda (_%$%g4394644025%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4394644025%_)))
               (_%$%g4394444126%_
                (lambda (_%$%g4394644033%_)
                  (if (gx#stx-pair? _%$%g4394644033%_)
                      (let ((_%$%e4400644036%_
                             (gx#syntax-e _%$%g4394644033%_)))
                        (let ((_%$%hd4400744040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4400644036%_)))
                              (_%$%tl4400844043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4400644036%_))))
                          (if (gx#stx-pair? _%$%tl4400844043%_)
                              (let ((_%$%e4400944046%_
                                     (gx#syntax-e _%$%tl4400844043%_)))
                                (let ((_%$%hd4401044050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4400944046%_)))
                                      (_%$%tl4401144053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4400944046%_))))
                                  (if (gx#stx-pair? _%$%tl4401144053%_)
                                      (let ((_%$%e4401244056%_
                                             (gx#syntax-e _%$%tl4401144053%_)))
                                        (let ((_%$%hd4401344060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4401244056%_)))
                                              (_%$%tl4401444063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4401244056%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4401444063%_)
                                              (let ((_g87619_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4401444063%_
                                                      '0)))
                                                (begin
                                                  (let ((_g87620_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g87619_)
                                                               (##values-length
                                                                _g87619_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g87620_ 2)))
                (error "Context expects 2 values" _g87620_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4401544066%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g87619_
                                                            0)))
                                                        (_%$%tl4401744069%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g87619_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4401744069%_)
                                                        (letrec ((_%$%loop4401844072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4401644076%_ _%$%rest4402244079%_)
                            (if (gx#stx-pair? _%$%hd4401644076%_)
                                (let ((_%$%e4401944081%_
                                       (gx#syntax-e _%$%hd4401644076%_)))
                                  (let ((_%$%lp-hd4402044085%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4401944081%_)))
                                        (_%$%lp-tl4402144088%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4401944081%_))))
                                    (_%$%loop4401844072%_
                                     _%$%lp-tl4402144088%_
                                     (cons _%$%lp-hd4402044085%_
                                           _%$%rest4402244079%_))))
                                (let ((_%$%rest4402344091%_
                                       (reverse _%$%rest4402244079%_)))
                                  ((lambda (_%$%g4400344094%_
                                            _%$%g4400444096%_
                                            _%$%g4400544097%_)
                                     (cons (gx#datum->syntax '#f 'with-lock)
                                           (cons _%$%g4400544097%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g4400444096%_
                                 (foldr (lambda (_%$%g4411744120%_
                                                 _%$%g4411844123%_)
                                          (cons _%$%g4411744120%_
                                                _%$%g4411844123%_))
                                        '()
                                        _%$%g4400344094%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%rest4402344091%_
                                   _%$%hd4401344060%_
                                   _%$%hd4401044050%_))))))
                  (_%$%loop4401844072%_ _%$%target4401544066%_ '()))
                (_%$%g4394544029%_ _%$%g4394644033%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4394544029%_
                                               _%$%g4394644033%_))))
                                      (_%$%g4394544029%_ _%$%g4394644033%_))))
                              (_%$%g4394544029%_ _%$%g4394644033%_))))
                      (_%$%g4394544029%_ _%$%g4394644033%_))))
               (_%$%g4394344248%_
                (lambda (_%$%g4394644130%_)
                  (if (gx#stx-pair? _%$%g4394644130%_)
                      (let ((_%$%e4397944133%_
                             (gx#syntax-e _%$%g4394644130%_)))
                        (let ((_%$%hd4398044137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4397944133%_)))
                              (_%$%tl4398144140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4397944133%_))))
                          (if (gx#stx-pair? _%$%tl4398144140%_)
                              (let ((_%$%e4398244143%_
                                     (gx#syntax-e _%$%tl4398144140%_)))
                                (let ((_%$%hd4398344147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4398244143%_)))
                                      (_%$%tl4398444150%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4398244143%_))))
                                  (if (gx#stx-pair? _%$%tl4398444150%_)
                                      (let ((_%$%e4398544153%_
                                             (gx#syntax-e _%$%tl4398444150%_)))
                                        (let ((_%$%hd4398644157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4398544153%_)))
                                              (_%$%tl4398744160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4398544153%_))))
                                          (if (gx#identifier?
                                               _%$%hd4398644157%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g87621_|
                                                   _%$%hd4398644157%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl4398744160%_)
                                                      (let ((_%$%e4398844163%_
                                                             (gx#syntax-e
                                                              _%$%tl4398744160%_)))
                                                        (let ((_%$%hd4398944167%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e4398844163%_)))
                      (_%$%tl4399044170%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e4398844163%_))))
                  (if (gx#stx-pair? _%$%tl4399044170%_)
                      (let ((_%$%e4399144173%_
                             (gx#syntax-e _%$%tl4399044170%_)))
                        (let ((_%$%hd4399244177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4399144173%_)))
                              (_%$%tl4399344180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4399144173%_))))
                          (if (gx#stx-pair/null? _%$%tl4399344180%_)
                              (let ((_g87622_
                                     (gx#syntax-split-splice
                                      _%$%tl4399344180%_
                                      '0)))
                                (begin
                                  (let ((_g87623_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g87622_)
                                               (##values-length _g87622_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g87623_ 2)))
                                        (error "Context expects 2 values"
                                               _g87623_)))
                                  (let ((_%$%target4399444183%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g87622_ 0)))
                                        (_%$%tl4399644186%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g87622_ 1))))
                                    (if (gx#stx-null? _%$%tl4399644186%_)
                                        (letrec ((_%$%loop4399744189%_
                                                  (lambda (_%$%hd4399544193%_
                                                           _%$%rest4400144196%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4399544193%_)
                                                        (let ((_%$%e4399844198%_
                                                               (gx#syntax-e
                                                                _%$%hd4399544193%_)))
                                                          (let ((_%$%lp-hd4399944202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4399844198%_)))
                        (_%$%lp-tl4400044205%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4399844198%_))))
                    (_%$%loop4399744189%_
                     _%$%lp-tl4400044205%_
                     (cons _%$%lp-hd4399944202%_ _%$%rest4400144196%_))))
                (let ((_%$%rest4400244208%_ (reverse _%$%rest4400144196%_)))
                  ((lambda (_%$%g4397544211%_
                            _%$%g4397644213%_
                            _%$%g4397744214%_
                            _%$%g4397844215%_)
                     (cons (gx#datum->syntax '#f ':)
                           (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                       (cons _%$%g4397844215%_
                                             (cons _%$%g4397644213%_
                                                   (foldr (lambda (_%$%g4423944242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g4424044245%_)
                    (cons _%$%g4423944242%_ _%$%g4424044245%_))
                  '()
                  _%$%g4397544211%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons _%$%g4397744214%_ '()))))
                   _%$%rest4400244208%_
                   _%$%hd4399244177%_
                   _%$%hd4398944167%_
                   _%$%hd4398344147%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4399744189%_
                                           _%$%target4399444183%_
                                           '()))
                                        (_%$%g4394444126%_
                                         _%$%g4394644130%_)))))
                              (_%$%g4394444126%_ _%$%g4394644130%_))))
                      (_%$%g4394444126%_ _%$%g4394644130%_))))
              (_%$%g4394444126%_ _%$%g4394644130%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4394444126%_
                                                   _%$%g4394644130%_))
                                              (_%$%g4394444126%_
                                               _%$%g4394644130%_))))
                                      (_%$%g4394444126%_ _%$%g4394644130%_))))
                              (_%$%g4394444126%_ _%$%g4394644130%_))))
                      (_%$%g4394444126%_ _%$%g4394644130%_))))
               (_%$%g4394244370%_
                (lambda (_%$%g4394644252%_)
                  (if (gx#stx-pair? _%$%g4394644252%_)
                      (let ((_%$%e4395144255%_
                             (gx#syntax-e _%$%g4394644252%_)))
                        (let ((_%$%hd4395244259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4395144255%_)))
                              (_%$%tl4395344262%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4395144255%_))))
                          (if (gx#stx-pair? _%$%tl4395344262%_)
                              (let ((_%$%e4395444265%_
                                     (gx#syntax-e _%$%tl4395344262%_)))
                                (let ((_%$%hd4395544269%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4395444265%_)))
                                      (_%$%tl4395644272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4395444265%_))))
                                  (if (gx#stx-pair? _%$%tl4395644272%_)
                                      (let ((_%$%e4395744275%_
                                             (gx#syntax-e _%$%tl4395644272%_)))
                                        (let ((_%$%hd4395844279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4395744275%_)))
                                              (_%$%tl4395944282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4395744275%_))))
                                          (if (gx#identifier?
                                               _%$%hd4395844279%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g87624_|
                                                   _%$%hd4395844279%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl4395944282%_)
                                                      (let ((_%$%e4396044285%_
                                                             (gx#syntax-e
                                                              _%$%tl4395944282%_)))
                                                        (let ((_%$%hd4396144289%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e4396044285%_)))
                      (_%$%tl4396244292%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e4396044285%_))))
                  (if (gx#stx-pair? _%$%tl4396244292%_)
                      (let ((_%$%e4396344295%_
                             (gx#syntax-e _%$%tl4396244292%_)))
                        (let ((_%$%hd4396444299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4396344295%_)))
                              (_%$%tl4396544302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4396344295%_))))
                          (if (gx#stx-pair/null? _%$%tl4396544302%_)
                              (let ((_g87625_
                                     (gx#syntax-split-splice
                                      _%$%tl4396544302%_
                                      '0)))
                                (begin
                                  (let ((_g87626_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g87625_)
                                               (##values-length _g87625_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g87626_ 2)))
                                        (error "Context expects 2 values"
                                               _g87626_)))
                                  (let ((_%$%target4396644305%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g87625_ 0)))
                                        (_%$%tl4396844308%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g87625_ 1))))
                                    (if (gx#stx-null? _%$%tl4396844308%_)
                                        (letrec ((_%$%loop4396944311%_
                                                  (lambda (_%$%hd4396744315%_
                                                           _%$%rest4397344318%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4396744315%_)
                                                        (let ((_%$%e4397044320%_
                                                               (gx#syntax-e
                                                                _%$%hd4396744315%_)))
                                                          (let ((_%$%lp-hd4397144324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4397044320%_)))
                        (_%$%lp-tl4397244327%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4397044320%_))))
                    (_%$%loop4396944311%_
                     _%$%lp-tl4397244327%_
                     (cons _%$%lp-hd4397144324%_ _%$%rest4397344318%_))))
                (let ((_%$%rest4397444330%_ (reverse _%$%rest4397344318%_)))
                  ((lambda (_%$%g4394744333%_
                            _%$%g4394844335%_
                            _%$%g4394944336%_
                            _%$%g4395044337%_)
                     (cons (gx#datum->syntax '#f ':-)
                           (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                       (cons _%$%g4395044337%_
                                             (cons _%$%g4394844335%_
                                                   (foldr (lambda (_%$%g4436144364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g4436244367%_)
                    (cons _%$%g4436144364%_ _%$%g4436244367%_))
                  '()
                  _%$%g4394744333%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons _%$%g4394944336%_ '()))))
                   _%$%rest4397444330%_
                   _%$%hd4396444299%_
                   _%$%hd4396144289%_
                   _%$%hd4395544269%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4396944311%_
                                           _%$%target4396644305%_
                                           '()))
                                        (_%$%g4394344248%_
                                         _%$%g4394644252%_)))))
                              (_%$%g4394344248%_ _%$%g4394644252%_))))
                      (_%$%g4394344248%_ _%$%g4394644252%_))))
              (_%$%g4394344248%_ _%$%g4394644252%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4394344248%_
                                                   _%$%g4394644252%_))
                                              (_%$%g4394344248%_
                                               _%$%g4394644252%_))))
                                      (_%$%g4394344248%_ _%$%g4394644252%_))))
                              (_%$%g4394344248%_ _%$%g4394644252%_))))
                      (_%$%g4394344248%_ _%$%g4394644252%_)))))
          (_%$%g4394244370%_ _%$stx43939%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx44377%_)
        (let* ((_%$%g4438244418%_
                (lambda (_%$%g4438344414%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4438344414%_)))
               (_%$%g4438144499%_
                (lambda (_%$%g4438344422%_)
                  (if (gx#stx-pair? _%$%g4438344422%_)
                      (let ((_%$%e4439844425%_
                             (gx#syntax-e _%$%g4438344422%_)))
                        (let ((_%$%hd4439944429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4439844425%_)))
                              (_%$%tl4440044432%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4439844425%_))))
                          (if (gx#stx-pair? _%$%tl4440044432%_)
                              (let ((_%$%e4440144435%_
                                     (gx#syntax-e _%$%tl4440044432%_)))
                                (let ((_%$%hd4440244439%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4440144435%_)))
                                      (_%$%tl4440344442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4440144435%_))))
                                  (if (gx#stx-pair? _%$%tl4440344442%_)
                                      (let ((_%$%e4440444445%_
                                             (gx#syntax-e _%$%tl4440344442%_)))
                                        (let ((_%$%hd4440544449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4440444445%_)))
                                              (_%$%tl4440644452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4440444445%_))))
                                          (if (gx#stx-pair? _%$%tl4440644452%_)
                                              (let ((_%$%e4440744455%_
                                                     (gx#syntax-e
                                                      _%$%tl4440644452%_)))
                                                (let ((_%$%hd4440844459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4440744455%_)))
                                                      (_%$%tl4440944462%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4440744455%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd4440844459%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~TypeCast[1]#_g87627_|
                                                           _%$%hd4440844459%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl4440944462%_)
                                                              (let ((_%$%e4441044465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl4440944462%_)))
                        (let ((_%$%hd4441144469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4441044465%_)))
                              (_%$%tl4441244472%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4441044465%_))))
                          (if (gx#stx-null? _%$%tl4441244472%_)
                              ((lambda (_%$%g4439544475%_
                                        _%$%g4439644477%_
                                        _%$%g4439744478%_)
                                 (cons (gx#datum->syntax '#f ':-)
                                       (cons (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%$%g4439744478%_
                                                         (cons _%$%g4439644477%_
                                                               '())))
                                             (cons _%$%g4439544475%_ '()))))
                               _%$%hd4441144469%_
                               _%$%hd4440544449%_
                               _%$%hd4440244439%_)
                              (_%$%g4438244418%_ _%$%g4438344422%_))))
                      (_%$%g4438244418%_ _%$%g4438344422%_))
                  (_%$%g4438244418%_ _%$%g4438344422%_))
              (_%$%g4438244418%_ _%$%g4438344422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4438244418%_
                                               _%$%g4438344422%_))))
                                      (_%$%g4438244418%_ _%$%g4438344422%_))))
                              (_%$%g4438244418%_ _%$%g4438344422%_))))
                      (_%$%g4438244418%_ _%$%g4438344422%_))))
               (_%$%g4438044553%_
                (lambda (_%$%g4438344503%_)
                  (if (gx#stx-pair? _%$%g4438344503%_)
                      (let ((_%$%e4438644506%_
                             (gx#syntax-e _%$%g4438344503%_)))
                        (let ((_%$%hd4438744510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4438644506%_)))
                              (_%$%tl4438844513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4438644506%_))))
                          (if (gx#stx-pair? _%$%tl4438844513%_)
                              (let ((_%$%e4438944516%_
                                     (gx#syntax-e _%$%tl4438844513%_)))
                                (let ((_%$%hd4439044520%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4438944516%_)))
                                      (_%$%tl4439144523%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4438944516%_))))
                                  (if (gx#stx-pair? _%$%tl4439144523%_)
                                      (let ((_%$%e4439244526%_
                                             (gx#syntax-e _%$%tl4439144523%_)))
                                        (let ((_%$%hd4439344530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4439244526%_)))
                                              (_%$%tl4439444533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4439244526%_))))
                                          (if (gx#stx-null? _%$%tl4439444533%_)
                                              ((lambda (_%$%g4438444536%_
                                                        _%$%g4438544538%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'val)
                           (cons _%$%g4438544538%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons _%$%g4438444536%_
                                             (cons (gx#datum->syntax '#f 'val)
                                                   '()))
                                       (cons (gx#datum->syntax '#f 'val)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'contract-violation!)
                                                         (cons _%$%g4438544538%_
                                                               (cons _%$%g4438444536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd4439344530%_
                                               _%$%hd4439044520%_)
                                              (_%$%g4438144499%_
                                               _%$%g4438344503%_))))
                                      (_%$%g4438144499%_ _%$%g4438344503%_))))
                              (_%$%g4438144499%_ _%$%g4438344503%_))))
                      (_%$%g4438144499%_ _%$%g4438344503%_)))))
          (_%$%g4438044553%_ _%$stx44377%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx44557%_)
        (let ((_%$%g4456044567%_
               (lambda (_%$%g4456144563%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4456144563%_))))
          (_%$%g4456044567%_ _%$stx44557%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx44571%_)
        (let ((_%$%g4457444581%_
               (lambda (_%$%g4457544577%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4457544577%_))))
          (_%$%g4457444581%_ _%$stx44571%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx44585%_)
        (let* ((_%$%g4458944603%_
                (lambda (_%$%g4459044599%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4459044599%_)))
               (_%$%g4458844644%_
                (lambda (_%$%g4459044607%_)
                  (if (gx#stx-pair? _%$%g4459044607%_)
                      (let ((_%$%e4459244610%_
                             (gx#syntax-e _%$%g4459044607%_)))
                        (let ((_%$%hd4459344614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4459244610%_)))
                              (_%$%tl4459444617%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4459244610%_))))
                          (if (gx#stx-pair? _%$%tl4459444617%_)
                              (let ((_%$%e4459544620%_
                                     (gx#syntax-e _%$%tl4459444617%_)))
                                (let ((_%$%hd4459644624%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4459544620%_)))
                                      (_%$%tl4459744627%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4459544620%_))))
                                  (if (gx#stx-null? _%$%tl4459744627%_)
                                      ((lambda (_%$%g4459144630%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%$%g4459144630%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%$%g4459144630%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%$%hd4459644624%_)
                                      (_%$%g4458944603%_ _%$%g4459044607%_))))
                              (_%$%g4458944603%_ _%$%g4459044607%_))))
                      (_%$%g4458944603%_ _%$%g4459044607%_)))))
          (_%$%g4458844644%_ _%$stx44585%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx44648%_)
        (let* ((_%$%g4465144674%_
                (lambda (_%$%g4465244670%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4465244670%_)))
               (_%$%g4465044798%_
                (lambda (_%$%g4465244678%_)
                  (if (gx#stx-pair? _%$%g4465244678%_)
                      (let ((_%$%e4465744681%_
                             (gx#syntax-e _%$%g4465244678%_)))
                        (let ((_%$%hd4465844685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4465744681%_)))
                              (_%$%tl4465944688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4465744681%_))))
                          (if (gx#stx-pair? _%$%tl4465944688%_)
                              (let ((_%$%e4466044691%_
                                     (gx#syntax-e _%$%tl4465944688%_)))
                                (let ((_%$%hd4466144695%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4466044691%_)))
                                      (_%$%tl4466244698%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4466044691%_))))
                                  (if (gx#stx-pair? _%$%tl4466244698%_)
                                      (let ((_%$%e4466344701%_
                                             (gx#syntax-e _%$%tl4466244698%_)))
                                        (let ((_%$%hd4466444705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4466344701%_)))
                                              (_%$%tl4466544708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4466344701%_))))
                                          (if (gx#stx-pair? _%$%tl4466544708%_)
                                              (let ((_%$%e4466644711%_
                                                     (gx#syntax-e
                                                      _%$%tl4466544708%_)))
                                                (let ((_%$%hd4466744715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4466644711%_)))
                                                      (_%$%tl4466844718%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4466644711%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl4466844718%_)
                                                      ((lambda (_%$%g4465344721%_
                                                                _%$%g4465444723%_
                                                                _%$%g4465544724%_
                                                                _%$%g4465644725%_)
                                                         (let* ((_%$%g4474544753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%g4474644749%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g4474644749%_)))
                        (_%$%g4474444772%_
                         (lambda (_%$%g4474644757%_)
                           ((lambda (_%$%g4474744760%_)
                              (cons (gx#datum->syntax '#f 'begin-annotation)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '@contract-violation)
                                                (cons _%$%g4474744760%_
                                                      (cons _%$%g4465444723%_
                                                            (cons _%$%g4465344721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'abort!)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'raise-contract-violation-error)
                          (cons '"contract violation"
                                (cons 'context:
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%$%g4474744760%_ '()))
                                            (cons 'contract:
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%$%g4465444723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons 'value: (cons _%$%g4465344721%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _%$%g4474644757%_))))
                   (_%$%g4474444772%_
                    (let ((_%$e44784%_
                           (let ((_%$e44776%_
                                  (gx#stx-source _%$%g4465544724%_)))
                             (if _%$e44776%_
                                 _%$e44776%_
                                 (let ((_%$e44780%_
                                        (gx#stx-source _%stx44648%_)))
                                   (if _%$e44780%_
                                       _%$e44780%_
                                       (gx#stx-source _%$%g4465644725%_)))))))
                      (if _%$e44784%_
                          ((lambda (_%locat44788%_)
                             (call-with-output-string
                              '""
                              (lambda (_%$%g4479044792%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat44788%_
                                   '#t
                                   _%$%g4479044792%_)))))
                           _%$e44784%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%$%hd4466744715%_
               _%$%hd4466444705%_
               _%$%hd4466144695%_
               _%$%hd4465844685%_)
              (_%$%g4465144674%_ _%$%g4465244678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4465144674%_
                                               _%$%g4465244678%_))))
                                      (_%$%g4465144674%_ _%$%g4465244678%_))))
                              (_%$%g4465144674%_ _%$%g4465244678%_))))
                      (_%$%g4465144674%_ _%$%g4465244678%_)))))
          (_%$%g4465044798%_ _%stx44648%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#runtime-contract-violation!|
      (lambda (_%stx44802%_)
        (let* ((_%$%g4480544828%_
                (lambda (_%$%g4480644824%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4480644824%_)))
               (_%$%g4480444952%_
                (lambda (_%$%g4480644832%_)
                  (if (gx#stx-pair? _%$%g4480644832%_)
                      (let ((_%$%e4481144835%_
                             (gx#syntax-e _%$%g4480644832%_)))
                        (let ((_%$%hd4481244839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4481144835%_)))
                              (_%$%tl4481344842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4481144835%_))))
                          (if (gx#stx-pair? _%$%tl4481344842%_)
                              (let ((_%$%e4481444845%_
                                     (gx#syntax-e _%$%tl4481344842%_)))
                                (let ((_%$%hd4481544849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4481444845%_)))
                                      (_%$%tl4481644852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4481444845%_))))
                                  (if (gx#stx-pair? _%$%tl4481644852%_)
                                      (let ((_%$%e4481744855%_
                                             (gx#syntax-e _%$%tl4481644852%_)))
                                        (let ((_%$%hd4481844859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4481744855%_)))
                                              (_%$%tl4481944862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4481744855%_))))
                                          (if (gx#stx-pair? _%$%tl4481944862%_)
                                              (let ((_%$%e4482044865%_
                                                     (gx#syntax-e
                                                      _%$%tl4481944862%_)))
                                                (let ((_%$%hd4482144869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4482044865%_)))
                                                      (_%$%tl4482244872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4482044865%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl4482244872%_)
                                                      ((lambda (_%$%g4480744875%_
                                                                _%$%g4480844877%_
                                                                _%$%g4480944878%_
                                                                _%$%g4481044879%_)
                                                         (let* ((_%$%g4489944907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%g4490044903%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g4490044903%_)))
                        (_%$%g4489844926%_
                         (lambda (_%$%g4490044911%_)
                           ((lambda (_%$%g4490144914%_)
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
                                (cons _%$%g4490144914%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%$%g4480844877%_ '()))
                                      (cons 'value:
                                            (cons _%$%g4480744875%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%$%g4490044911%_))))
                   (_%$%g4489844926%_
                    (let ((_%$e44938%_
                           (let ((_%$e44930%_
                                  (gx#stx-source _%$%g4480944878%_)))
                             (if _%$e44930%_
                                 _%$e44930%_
                                 (let ((_%$e44934%_
                                        (gx#stx-source _%stx44802%_)))
                                   (if _%$e44934%_
                                       _%$e44934%_
                                       (gx#stx-source _%$%g4481044879%_)))))))
                      (if _%$e44938%_
                          ((lambda (_%locat44942%_)
                             (call-with-output-string
                              '""
                              (lambda (_%$%g4494444946%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat44942%_
                                   '#t
                                   _%$%g4494444946%_)))))
                           _%$e44938%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%$%hd4482144869%_
               _%$%hd4481844859%_
               _%$%hd4481544849%_
               _%$%hd4481244839%_)
              (_%$%g4480544828%_ _%$%g4480644832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4480544828%_
                                               _%$%g4480644832%_))))
                                      (_%$%g4480544828%_ _%$%g4480644832%_))))
                              (_%$%g4480544828%_ _%$%g4480644832%_))))
                      (_%$%g4480544828%_ _%$%g4480644832%_)))))
          (_%$%g4480444952%_ _%stx44802%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx44956%_)
        (let* ((_%$%g4495944974%_
                (lambda (_%$%g4496044970%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4496044970%_)))
               (_%$%g4495845070%_
                (lambda (_%$%g4496044978%_)
                  (if (gx#stx-pair? _%$%g4496044978%_)
                      (let ((_%$%e4496344981%_
                             (gx#syntax-e _%$%g4496044978%_)))
                        (let ((_%$%hd4496444985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4496344981%_)))
                              (_%$%tl4496544988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4496344981%_))))
                          (if (gx#stx-pair? _%$%tl4496544988%_)
                              (let ((_%$%e4496644991%_
                                     (gx#syntax-e _%$%tl4496544988%_)))
                                (let ((_%$%hd4496744995%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4496644991%_)))
                                      (_%$%tl4496844998%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4496644991%_))))
                                  (if (gx#stx-null? _%$%tl4496844998%_)
                                      ((lambda (_%$%g4496145001%_
                                                _%$%g4496245003%_)
                                         (let* ((_%$%g4501745025%_
                                                 (lambda (_%$%g4501845021%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g4501845021%_)))
                                                (_%$%g4501645044%_
                                                 (lambda (_%$%g4501845029%_)
                                                   ((lambda (_%$%g4501945032%_)
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
                                                        (cons _%$%g4501945032%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%$%g4496145001%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%g4501845029%_))))
                                           (_%$%g4501645044%_
                                            (let ((_%$e45056%_
                                                   (let ((_%$e45048%_
                                                          (gx#stx-source
                                                           _%$%g4496145001%_)))
                                                     (if _%$e45048%_
                                                         _%$e45048%_
                                                         (let ((_%$e45052%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx44956%_)))
                   (if _%$e45052%_
                       _%$e45052%_
                       (gx#stx-source _%$%g4496245003%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e45056%_
                                                  ((lambda (_%locat45060%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%$%g4506245064%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat45060%_
                                                           '#t
                                                           _%$%g4506245064%_)))))
                                                   _%$e45056%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%$%hd4496744995%_
                                       _%$%hd4496444985%_)
                                      (_%$%g4495944974%_ _%$%g4496044978%_))))
                              (_%$%g4495944974%_ _%$%g4496044978%_))))
                      (_%$%g4495944974%_ _%$%g4496044978%_)))))
          (_%$%g4495845070%_ _%stx44956%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx45074%_)
        (let* ((_%$%g4507845092%_
                (lambda (_%$%g4507945088%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4507945088%_)))
               (_%$%g4507745133%_
                (lambda (_%$%g4507945096%_)
                  (if (gx#stx-pair? _%$%g4507945096%_)
                      (let ((_%$%e4508145099%_
                             (gx#syntax-e _%$%g4507945096%_)))
                        (let ((_%$%hd4508245103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4508145099%_)))
                              (_%$%tl4508345106%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4508145099%_))))
                          (if (gx#stx-pair? _%$%tl4508345106%_)
                              (let ((_%$%e4508445109%_
                                     (gx#syntax-e _%$%tl4508345106%_)))
                                (let ((_%$%hd4508545113%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4508445109%_)))
                                      (_%$%tl4508645116%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4508445109%_))))
                                  (if (gx#stx-null? _%$%tl4508645116%_)
                                      ((lambda (_%$%g4508045119%_)
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
                         (cons _%$%g4508045119%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%$%hd4508545113%_)
                                      (_%$%g4507845092%_ _%$%g4507945096%_))))
                              (_%$%g4507845092%_ _%$%g4507945096%_))))
                      (_%$%g4507845092%_ _%$%g4507945096%_)))))
          (_%$%g4507745133%_ _%$stx45074%_))))))
