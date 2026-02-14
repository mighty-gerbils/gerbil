(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g128655_|
    (gx#core-deserialize-mark
     '(0
       (arg127913 . _%arg127913127984%_)
       (id . _%id127937%_)
       (arg127912 . _%arg127912127970%_)
       (arg . _%arg128000%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g128656_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g128655_|)))
  (define |[1]#_g128658_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g128659_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g128658_|)))
  (define |[1]#_g128660_|
    (gx#core-deserialize-mark
     '(0
       (arg128047 . _%arg128047128104%_)
       (id . _%id128071%_)
       (arg . _%arg128134%_)
       (arg128048 . _%arg128048128118%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g128661_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g128660_|)))
  (define |[1]#_g128663_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g128664_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g128663_|)))
  (define |[1]#_g128665_|
    (gx#core-deserialize-mark
     '(0
       (arg128181 . _%arg128181128238%_)
       (id . _%id128205%_)
       (arg128182 . _%arg128182128252%_)
       (arg . _%arg128268%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g128666_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g128665_|)))
  (define |[1]#_g128668_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g128669_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g128668_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx127894%_)
        (let* ((_%__stx128564128565%_ _%$stx127894%_)
               (_%g127899127920%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx128564128565%_))))
          (let ((_%__kont128567128568%_
                 (lambda (_%g127901127986%_)
                   (cons (gx#datum->syntax
                          |[1]#_g128656_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp128657
                                                  (lambda (_%g128001128004%_
                                                           _%g128002128007%_)
                                                    (cons _%g128001128004%_
                                                          _%g128002128007%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp128657
                                              '()
                                              _%g127901127986%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g128659_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont128571128572%_
                 (lambda (_%g127914127927%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g127898127939%_
                    (lambda ()
                      (let ((_%g127914127927%_ _%__stx128564128565%_))
                        (if (gx#identifier? _%g127914127927%_)
                            (_%__kont128571128572%_ _%g127914127927%_)
                            (let ()
                              (declare (not safe))
                              (_%g127899127920%_))))))
                   (_%__match128587128588%_
                    (lambda (_%e127902127946%_
                             _%hd127903127950%_
                             _%tl127904127953%_
                             _%__splice128569128570%_
                             _%target127905127956%_
                             _%tl127907127959%_)
                      (letrec ((_%loop127908127962%_
                                (lambda (_%hd127906127966%_
                                         _%arg127912127969%_)
                                  (if (gx#stx-pair? _%hd127906127966%_)
                                      (let ((_%e127909127972%_
                                             (gx#syntax-e _%hd127906127966%_)))
                                        (let ((_%lp-tl127911127979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e127909127972%_)))
                                              (_%lp-hd127910127976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e127909127972%_))))
                                          (_%loop127908127962%_
                                           _%lp-tl127911127979%_
                                           (cons _%lp-hd127910127976%_
                                                 _%arg127912127969%_))))
                                      (let ((_%arg127913127982%_
                                             (reverse _%arg127912127969%_)))
                                        (_%__kont128567128568%_
                                         _%arg127913127982%_))))))
                        (_%loop127908127962%_ _%target127905127956%_ '())))))
              (if (gx#stx-pair? _%__stx128564128565%_)
                  (let ((_%e127902127946%_
                         (gx#syntax-e _%__stx128564128565%_)))
                    (let ((_%tl127904127953%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e127902127946%_)))
                          (_%hd127903127950%_
                           (let ()
                             (declare (not safe))
                             (##car _%e127902127946%_))))
                      (if (gx#stx-pair/null? _%tl127904127953%_)
                          (let ((_%__splice128569128570%_
                                 (gx#syntax-split-splice->vector
                                  _%tl127904127953%_
                                  '0)))
                            (let ((_%tl127907127959%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128569128570%_
                                      '1)))
                                  (_%target127905127956%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128569128570%_
                                      '0))))
                              (if (gx#stx-null? _%tl127907127959%_)
                                  (_%__match128587128588%_
                                   _%e127902127946%_
                                   _%hd127903127950%_
                                   _%tl127904127953%_
                                   _%__splice128569128570%_
                                   _%target127905127956%_
                                   _%tl127907127959%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g127898127939%_)))))
                          (let () (declare (not safe)) (_%g127898127939%_)))))
                  (let () (declare (not safe)) (_%g127898127939%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx128029%_)
        (let* ((_%__stx128590128591%_ _%$stx128029%_)
               (_%g128034128055%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx128590128591%_))))
          (let ((_%__kont128593128594%_
                 (lambda (_%g128036128120%_)
                   (cons (gx#datum->syntax
                          |[1]#_g128661_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp128662
                                                  (lambda (_%g128135128138%_
                                                           _%g128136128141%_)
                                                    (cons _%g128135128138%_
                                                          _%g128136128141%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp128662
                                              '()
                                              _%g128036128120%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g128664_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-atomic-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont128597128598%_
                 (lambda (_%g128049128062%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g128033128073%_
                    (lambda ()
                      (let ((_%g128049128062%_ _%__stx128590128591%_))
                        (if (gx#identifier? _%g128049128062%_)
                            (_%__kont128597128598%_ _%g128049128062%_)
                            (let ()
                              (declare (not safe))
                              (_%g128034128055%_))))))
                   (_%__match128613128614%_
                    (lambda (_%e128037128080%_
                             _%hd128038128084%_
                             _%tl128039128087%_
                             _%__splice128595128596%_
                             _%target128040128090%_
                             _%tl128042128093%_)
                      (letrec ((_%loop128043128096%_
                                (lambda (_%hd128041128100%_
                                         _%arg128047128103%_)
                                  (if (gx#stx-pair? _%hd128041128100%_)
                                      (let ((_%e128044128106%_
                                             (gx#syntax-e _%hd128041128100%_)))
                                        (let ((_%lp-tl128046128113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128044128106%_)))
                                              (_%lp-hd128045128110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128044128106%_))))
                                          (_%loop128043128096%_
                                           _%lp-tl128046128113%_
                                           (cons _%lp-hd128045128110%_
                                                 _%arg128047128103%_))))
                                      (let ((_%arg128048128116%_
                                             (reverse _%arg128047128103%_)))
                                        (_%__kont128593128594%_
                                         _%arg128048128116%_))))))
                        (_%loop128043128096%_ _%target128040128090%_ '())))))
              (if (gx#stx-pair? _%__stx128590128591%_)
                  (let ((_%e128037128080%_
                         (gx#syntax-e _%__stx128590128591%_)))
                    (let ((_%tl128039128087%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e128037128080%_)))
                          (_%hd128038128084%_
                           (let ()
                             (declare (not safe))
                             (##car _%e128037128080%_))))
                      (if (gx#stx-pair/null? _%tl128039128087%_)
                          (let ((_%__splice128595128596%_
                                 (gx#syntax-split-splice->vector
                                  _%tl128039128087%_
                                  '0)))
                            (let ((_%tl128042128093%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128595128596%_
                                      '1)))
                                  (_%target128040128090%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128595128596%_
                                      '0))))
                              (if (gx#stx-null? _%tl128042128093%_)
                                  (_%__match128613128614%_
                                   _%e128037128080%_
                                   _%hd128038128084%_
                                   _%tl128039128087%_
                                   _%__splice128595128596%_
                                   _%target128040128090%_
                                   _%tl128042128093%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g128033128073%_)))))
                          (let () (declare (not safe)) (_%g128033128073%_)))))
                  (let () (declare (not safe)) (_%g128033128073%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx128163%_)
        (let* ((_%__stx128616128617%_ _%$stx128163%_)
               (_%g128168128189%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx128616128617%_))))
          (let ((_%__kont128619128620%_
                 (lambda (_%g128170128254%_)
                   (cons (gx#datum->syntax
                          |[1]#_g128666_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp128667
                                                  (lambda (_%g128269128272%_
                                                           _%g128270128275%_)
                                                    (cons _%g128269128272%_
                                                          _%g128270128275%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp128667
                                              '()
                                              _%g128170128254%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g128669_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'K)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               (cons (cons (gx#datum->syntax '#f 'fini)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':procedure)
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__with-unwind-protect)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'K)
                           (cons (gx#datum->syntax '#f 'fini) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont128623128624%_
                 (lambda (_%g128183128196%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g128167128207%_
                    (lambda ()
                      (let ((_%g128183128196%_ _%__stx128616128617%_))
                        (if (gx#identifier? _%g128183128196%_)
                            (_%__kont128623128624%_ _%g128183128196%_)
                            (let ()
                              (declare (not safe))
                              (_%g128168128189%_))))))
                   (_%__match128639128640%_
                    (lambda (_%e128171128214%_
                             _%hd128172128218%_
                             _%tl128173128221%_
                             _%__splice128621128622%_
                             _%target128174128224%_
                             _%tl128176128227%_)
                      (letrec ((_%loop128177128230%_
                                (lambda (_%hd128175128234%_
                                         _%arg128181128237%_)
                                  (if (gx#stx-pair? _%hd128175128234%_)
                                      (let ((_%e128178128240%_
                                             (gx#syntax-e _%hd128175128234%_)))
                                        (let ((_%lp-tl128180128247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128178128240%_)))
                                              (_%lp-hd128179128244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128178128240%_))))
                                          (_%loop128177128230%_
                                           _%lp-tl128180128247%_
                                           (cons _%lp-hd128179128244%_
                                                 _%arg128181128237%_))))
                                      (let ((_%arg128182128250%_
                                             (reverse _%arg128181128237%_)))
                                        (_%__kont128619128620%_
                                         _%arg128182128250%_))))))
                        (_%loop128177128230%_ _%target128174128224%_ '())))))
              (if (gx#stx-pair? _%__stx128616128617%_)
                  (let ((_%e128171128214%_
                         (gx#syntax-e _%__stx128616128617%_)))
                    (let ((_%tl128173128221%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e128171128214%_)))
                          (_%hd128172128218%_
                           (let ()
                             (declare (not safe))
                             (##car _%e128171128214%_))))
                      (if (gx#stx-pair/null? _%tl128173128221%_)
                          (let ((_%__splice128621128622%_
                                 (gx#syntax-split-splice->vector
                                  _%tl128173128221%_
                                  '0)))
                            (let ((_%tl128176128227%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128621128622%_
                                      '1)))
                                  (_%target128174128224%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128621128622%_
                                      '0))))
                              (if (gx#stx-null? _%tl128176128227%_)
                                  (_%__match128639128640%_
                                   _%e128171128214%_
                                   _%hd128172128218%_
                                   _%tl128173128221%_
                                   _%__splice128621128622%_
                                   _%target128174128224%_
                                   _%tl128176128227%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g128167128207%_)))))
                          (let () (declare (not safe)) (_%g128167128207%_)))))
                  (let () (declare (not safe)) (_%g128167128207%_))))))))))
