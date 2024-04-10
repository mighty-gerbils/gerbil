(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g203448_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203455_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203457_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203459_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203461_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203463_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203475_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203477_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203479_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203481_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203483_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx196866%_)
        (let* ((_%g196870196888%_
                (lambda (_%g196871196884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196871196884%_))))
               (_%g196869196943%_
                (lambda (_%g196871196892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196871196892%_))
                      (let ((_%e196874196895%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196871196892%_))))
                        (let ((_%hd196875196899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196874196895%_)))
                              (_%tl196876196902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196874196895%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196876196902%_))
                              (let ((_%e196877196905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196876196902%_))))
                                (let ((_%hd196878196909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196877196905%_)))
                                      (_%tl196879196912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196877196905%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196879196912%_))
                                      (let ((_%e196880196915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196879196912%_))))
                                        (let ((_%hd196881196919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196880196915%_)))
                                              (_%tl196882196922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196880196915%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196882196922%_))
                                              ((lambda (_%L196925%_
                                                        _%L196927%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196927%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L196927%_ '()))
                         (cons _%L196925%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196870196888%_
                                                      _%g196871196892%_)))
                                               _%hd196881196919%_
                                               _%hd196878196909%_)
                                              (_%g196870196888%_
                                               _%g196871196892%_))))
                                      (_%g196870196888%_ _%g196871196892%_))))
                              (_%g196870196888%_ _%g196871196892%_))))
                      (_%g196870196888%_ _%g196871196892%_)))))
          (_%g196869196943%_ _%$stx196866%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx196947%_)
        (let* ((_%g196951196969%_
                (lambda (_%g196952196965%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196952196965%_))))
               (_%g196950197024%_
                (lambda (_%g196952196973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196952196973%_))
                      (let ((_%e196955196976%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196952196973%_))))
                        (let ((_%hd196956196980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196955196976%_)))
                              (_%tl196957196983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196955196976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196957196983%_))
                              (let ((_%e196958196986%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196957196983%_))))
                                (let ((_%hd196959196990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196958196986%_)))
                                      (_%tl196960196993%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196958196986%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196960196993%_))
                                      (let ((_%e196961196996%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196960196993%_))))
                                        (let ((_%hd196962197000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196961196996%_)))
                                              (_%tl196963197003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196961196996%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196963197003%_))
                                              ((lambda (_%L197006%_
                                                        _%L197008%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L197008%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197008%_ '()))
                         (cons _%L197006%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196951196969%_
                                                      _%g196952196973%_)))
                                               _%hd196962197000%_
                                               _%hd196959196990%_)
                                              (_%g196951196969%_
                                               _%g196952196973%_))))
                                      (_%g196951196969%_ _%g196952196973%_))))
                              (_%g196951196969%_ _%g196952196973%_))))
                      (_%g196951196969%_ _%g196952196973%_)))))
          (_%g196950197024%_ _%$stx196947%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx197028%_)
        (let* ((_%g197032197061%_
                (lambda (_%g197033197057%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197033197057%_))))
               (_%g197031197161%_
                (lambda (_%g197033197065%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197033197065%_))
                      (let ((_%e197036197068%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197033197065%_))))
                        (let ((_%hd197037197072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197036197068%_)))
                              (_%tl197038197075%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197036197068%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197038197075%_))
                              (let ((_g203426_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197038197075%_
                                        '0))))
                                (begin
                                  (let ((_g203427_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203426_)
                                               (##vector-length _g203426_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203427_ 2)))
                                        (error "Context expects 2 values"
                                               _g203427_)))
                                  (let ((_%target197039197078%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203426_ 0)))
                                        (_%tl197041197081%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203426_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197041197081%_))
                                        (letrec ((_%loop197042197084%_
                                                  (lambda (_%hd197040197088%_
                                                           _%type197046197091%_
                                                           _%symbol197047197093%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197040197088%_))
                                                        (let ((_%e197043197096%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197040197088%_))))
                  (let ((_%lp-hd197044197100%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197043197096%_)))
                        (_%lp-tl197045197103%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197043197096%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197044197100%_))
                        (let ((_%e197050197106%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197044197100%_))))
                          (let ((_%hd197051197110%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197050197106%_)))
                                (_%tl197052197113%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197050197106%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197052197113%_))
                                (let ((_%e197053197116%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197052197113%_))))
                                  (let ((_%hd197054197120%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197053197116%_)))
                                        (_%tl197055197123%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197053197116%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197055197123%_))
                                        (_%loop197042197084%_
                                         _%lp-tl197045197103%_
                                         (cons _%hd197054197120%_
                                               _%type197046197091%_)
                                         (cons _%hd197051197110%_
                                               _%symbol197047197093%_))
                                        (_%g197032197061%_
                                         _%g197033197065%_))))
                                (_%g197032197061%_ _%g197033197065%_))))
                        (_%g197032197061%_ _%g197033197065%_))))
                (let ((_%type197048197126%_ (reverse _%type197046197091%_))
                      (_%symbol197049197129%_
                       (reverse _%symbol197047197093%_)))
                  ((lambda (_%L197132%_ _%L197134%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197132%_
                                _%L197134%_))
                             (let ((__tmp203428
                                    (lambda (_%g197149197153%_
                                             _%g197150197156%_
                                             _%g197151197158%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g197150197156%_
                                                        (cons _%g197149197153%_
                                                              '())))
                                            _%g197151197158%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp203428
                                '()
                                _%L197132%_
                                _%L197134%_)))))
                   _%type197048197126%_
                   _%symbol197049197129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197042197084%_
                                           _%target197039197078%_
                                           '()
                                           '()))
                                        (_%g197032197061%_
                                         _%g197033197065%_)))))
                              (_%g197032197061%_ _%g197033197065%_))))
                      (_%g197032197061%_ _%g197033197065%_)))))
          (_%g197031197161%_ _%$stx197028%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx197166%_)
        (let* ((_%__stx202737202738%_ _%$stx197166%_)
               (_%g197171197213%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202737202738%_)))))
          (let ((_%__kont202740202741%_
                 (lambda (_%L197341%_ _%L197343%_ _%L197344%_ _%L197345%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197345%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197344%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197343%_ '()))
                                           (cons _%L197341%_ '())))))))
                (_%__kont202742202743%_
                 (lambda (_%L197260%_ _%L197262%_ _%L197263%_ _%L197264%_)
                   (cons _%L197264%_
                         (cons _%L197263%_
                               (cons _%L197262%_
                                     (cons _%L197260%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match202776202777%_
                   (lambda (_%e197177197291%_
                            _%hd197178197295%_
                            _%tl197179197298%_
                            _%e197180197301%_
                            _%hd197181197305%_
                            _%tl197182197308%_
                            _%e197183197311%_
                            _%hd197184197315%_
                            _%tl197185197318%_
                            _%e197186197321%_
                            _%hd197187197325%_
                            _%tl197188197328%_
                            _%e197189197331%_
                            _%hd197190197335%_
                            _%tl197191197338%_)
                     (let ((_%L197341%_ _%hd197190197335%_)
                           (_%L197343%_ _%hd197187197325%_)
                           (_%L197344%_ _%hd197184197315%_)
                           (_%L197345%_ _%hd197181197305%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L197345%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L197344%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L197343%_)))
                           (_%__kont202740202741%_
                            _%L197341%_
                            _%L197343%_
                            _%L197344%_
                            _%L197345%_)
                           (let ()
                             (declare (not safe))
                             (_%g197171197213%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202737202738%_))
                  (let ((_%e197177197291%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202737202738%_))))
                    (let ((_%tl197179197298%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197177197291%_)))
                          (_%hd197178197295%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197177197291%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197179197298%_))
                          (let ((_%e197180197301%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197179197298%_))))
                            (let ((_%tl197182197308%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197180197301%_)))
                                  (_%hd197181197305%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197180197301%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197182197308%_))
                                  (let ((_%e197183197311%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197182197308%_))))
                                    (let ((_%tl197185197318%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197183197311%_)))
                                          (_%hd197184197315%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197183197311%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197185197318%_))
                                          (let ((_%e197186197321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl197185197318%_))))
                                            (let ((_%tl197188197328%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197186197321%_)))
                                                  (_%hd197187197325%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197186197321%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197188197328%_))
                                                  (let ((_%e197189197331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl197188197328%_))))
                                                    (let ((_%tl197191197338%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197189197331%_)))
                                                          (_%hd197190197335%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197189197331%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197191197338%_))
                                                          (_%__match202776202777%_
                                                           _%e197177197291%_
                                                           _%hd197178197295%_
                                                           _%tl197179197298%_
                                                           _%e197180197301%_
                                                           _%hd197181197305%_
                                                           _%tl197182197308%_
                                                           _%e197183197311%_
                                                           _%hd197184197315%_
                                                           _%tl197185197318%_
                                                           _%e197186197321%_
                                                           _%hd197187197325%_
                                                           _%tl197188197328%_
                                                           _%e197189197331%_
                                                           _%hd197190197335%_
                                                           _%tl197191197338%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197171197213%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197188197328%_))
                                                      (_%__kont202742202743%_
                                                       _%hd197187197325%_
                                                       _%hd197184197315%_
                                                       _%hd197181197305%_
                                                       _%hd197178197295%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197171197213%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197171197213%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197171197213%_)))))
                          (let () (declare (not safe)) (_%g197171197213%_)))))
                  (let () (declare (not safe)) (_%g197171197213%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx197370%_)
        (let* ((_%g197374197409%_
                (lambda (_%g197375197405%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197375197405%_))))
               (_%g197373197528%_
                (lambda (_%g197375197413%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197375197413%_))
                      (let ((_%e197379197416%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197375197413%_))))
                        (let ((_%hd197380197420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197379197416%_)))
                              (_%tl197381197423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197379197416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197381197423%_))
                              (let ((_g203429_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197381197423%_
                                        '0))))
                                (begin
                                  (let ((_g203430_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203429_)
                                               (##vector-length _g203429_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203430_ 2)))
                                        (error "Context expects 2 values"
                                               _g203430_)))
                                  (let ((_%target197382197426%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203429_ 0)))
                                        (_%tl197384197429%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203429_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197384197429%_))
                                        (letrec ((_%loop197385197432%_
                                                  (lambda (_%hd197383197436%_
                                                           _%symbol197389197439%_
                                                           _%method197390197441%_
                                                           _%type-t197391197443%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197383197436%_))
                                                        (let ((_%e197386197446%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197383197436%_))))
                  (let ((_%lp-hd197387197450%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197386197446%_)))
                        (_%lp-tl197388197453%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197386197446%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197387197450%_))
                        (let ((_%e197395197456%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197387197450%_))))
                          (let ((_%hd197396197460%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197395197456%_)))
                                (_%tl197397197463%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197395197456%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197397197463%_))
                                (let ((_%e197398197466%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197397197463%_))))
                                  (let ((_%hd197399197470%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197398197466%_)))
                                        (_%tl197400197473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197398197466%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197400197473%_))
                                        (let ((_%e197401197476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl197400197473%_))))
                                          (let ((_%hd197402197480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197401197476%_)))
                                                (_%tl197403197483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197401197476%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197403197483%_))
                                                (_%loop197385197432%_
                                                 _%lp-tl197388197453%_
                                                 (cons _%hd197402197480%_
                                                       _%symbol197389197439%_)
                                                 (cons _%hd197399197470%_
                                                       _%method197390197441%_)
                                                 (cons _%hd197396197460%_
                                                       _%type-t197391197443%_))
                                                (_%g197374197409%_
                                                 _%g197375197413%_))))
                                        (_%g197374197409%_
                                         _%g197375197413%_))))
                                (_%g197374197409%_ _%g197375197413%_))))
                        (_%g197374197409%_ _%g197375197413%_))))
                (let ((_%symbol197392197486%_ (reverse _%symbol197389197439%_))
                      (_%method197393197489%_ (reverse _%method197390197441%_))
                      (_%type-t197394197491%_
                       (reverse _%type-t197391197443%_)))
                  ((lambda (_%L197494%_ _%L197496%_ _%L197497%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197494%_
                                _%L197496%_
                                _%L197497%_))
                             (let ((__tmp203431
                                    (lambda (_%g197513197518%_
                                             _%g197514197521%_
                                             _%g197515197523%_
                                             _%g197516197525%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g197515197523%_
                                                        (cons _%g197514197521%_
                                                              (cons _%g197513197518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g197516197525%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp203431
                                '()
                                _%L197494%_
                                _%L197496%_
                                _%L197497%_)))))
                   _%symbol197392197486%_
                   _%method197393197489%_
                   _%type-t197394197491%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197385197432%_
                                           _%target197382197426%_
                                           '()
                                           '()
                                           '()))
                                        (_%g197374197409%_
                                         _%g197375197413%_)))))
                              (_%g197374197409%_ _%g197375197413%_))))
                      (_%g197374197409%_ _%g197375197413%_)))))
          (_%g197373197528%_ _%$stx197370%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx197533%_)
        (let* ((_%g197537197570%_
                (lambda (_%g197538197566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197538197566%_))))
               (_%g197536197684%_
                (lambda (_%g197538197574%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197538197574%_))
                      (let ((_%e197542197577%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197538197574%_))))
                        (let ((_%hd197543197581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197542197577%_)))
                              (_%tl197544197584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197542197577%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197544197584%_))
                              (let ((_%e197545197587%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197544197584%_))))
                                (let ((_%hd197546197591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197545197587%_)))
                                      (_%tl197547197594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197545197587%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197547197594%_))
                                      (let ((_g203432_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197547197594%_
                                                '0))))
                                        (begin
                                          (let ((_g203433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203432_)
                                                       (##vector-length
                                                        _g203432_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203433_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203433_)))
                                          (let ((_%target197548197597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g203432_ 0)))
                                                (_%tl197550197600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g203432_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197550197600%_))
                                                (letrec ((_%loop197551197603%_
                                                          (lambda (_%hd197549197607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol197555197610%_
                           _%method197556197612%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd197549197607%_))
                        (let ((_%e197552197615%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd197549197607%_))))
                          (let ((_%lp-hd197553197619%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197552197615%_)))
                                (_%lp-tl197554197622%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197552197615%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd197553197619%_))
                                (let ((_%e197559197625%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd197553197619%_))))
                                  (let ((_%hd197560197629%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197559197625%_)))
                                        (_%tl197561197632%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197559197625%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197561197632%_))
                                        (let ((_%e197562197635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl197561197632%_))))
                                          (let ((_%hd197563197639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197562197635%_)))
                                                (_%tl197564197642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197562197635%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197564197642%_))
                                                (_%loop197551197603%_
                                                 _%lp-tl197554197622%_
                                                 (cons _%hd197563197639%_
                                                       _%symbol197555197610%_)
                                                 (cons _%hd197560197629%_
                                                       _%method197556197612%_))
                                                (_%g197537197570%_
                                                 _%g197538197574%_))))
                                        (_%g197537197570%_
                                         _%g197538197574%_))))
                                (_%g197537197570%_ _%g197538197574%_))))
                        (let ((_%symbol197557197645%_
                               (reverse _%symbol197555197610%_))
                              (_%method197558197648%_
                               (reverse _%method197556197612%_)))
                          ((lambda (_%L197651%_ _%L197653%_ _%L197654%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L197651%_
                                        _%L197653%_))
                                     (let ((__tmp203434
                                            (lambda (_%g197672197676%_
                                                     _%g197673197679%_
                                                     _%g197674197681%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L197654%_
                                                                (cons _%g197673197679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g197672197676%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g197674197681%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp203434
                                        '()
                                        _%L197651%_
                                        _%L197653%_)))))
                           _%symbol197557197645%_
                           _%method197558197648%_
                           _%hd197546197591%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop197551197603%_
                                                   _%target197548197597%_
                                                   '()
                                                   '()))
                                                (_%g197537197570%_
                                                 _%g197538197574%_)))))
                                      (_%g197537197570%_ _%g197538197574%_))))
                              (_%g197537197570%_ _%g197538197574%_))))
                      (_%g197537197570%_ _%g197538197574%_)))))
          (_%g197536197684%_ _%$stx197533%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx197689%_)
        (let* ((_%g197693197707%_
                (lambda (_%g197694197703%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197694197703%_))))
               (_%g197692197748%_
                (lambda (_%g197694197711%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197694197711%_))
                      (let ((_%e197696197714%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197694197711%_))))
                        (let ((_%hd197697197718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197696197714%_)))
                              (_%tl197698197721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197696197714%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197698197721%_))
                              (let ((_%e197699197724%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197698197721%_))))
                                (let ((_%hd197700197728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197699197724%_)))
                                      (_%tl197701197731%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197699197724%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197701197731%_))
                                      ((lambda (_%L197734%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L197734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197700197728%_)
                                      (_%g197693197707%_ _%g197694197711%_))))
                              (_%g197693197707%_ _%g197694197711%_))))
                      (_%g197693197707%_ _%g197694197711%_)))))
          (_%g197692197748%_ _%$stx197689%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx197752%_)
        (let* ((_%g197756197810%_
                (lambda (_%g197757197806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197757197806%_))))
               (_%g197755197991%_
                (lambda (_%g197757197814%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197757197814%_))
                      (let ((_%e197769197817%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197757197814%_))))
                        (let ((_%hd197770197821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197769197817%_)))
                              (_%tl197771197824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197769197817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197771197824%_))
                              (let ((_%e197772197827%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197771197824%_))))
                                (let ((_%hd197773197831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197772197827%_)))
                                      (_%tl197774197834%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197772197827%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197774197834%_))
                                      (let ((_%e197775197837%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197774197834%_))))
                                        (let ((_%hd197776197841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197775197837%_)))
                                              (_%tl197777197844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197775197837%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197777197844%_))
                                              (let ((_%e197778197847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197777197844%_))))
                                                (let ((_%hd197779197851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197778197847%_)))
                                                      (_%tl197780197854%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197778197847%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197780197854%_))
                                                      (let ((_%e197781197857%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197780197854%_))))
                (let ((_%hd197782197861%_
                       (let () (declare (not safe)) (##car _%e197781197857%_)))
                      (_%tl197783197864%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197781197857%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197783197864%_))
                      (let ((_%e197784197867%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197783197864%_))))
                        (let ((_%hd197785197871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197784197867%_)))
                              (_%tl197786197874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197784197867%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197786197874%_))
                              (let ((_%e197787197877%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197786197874%_))))
                                (let ((_%hd197788197881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197787197877%_)))
                                      (_%tl197789197884%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197787197877%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197789197884%_))
                                      (let ((_%e197790197887%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197789197884%_))))
                                        (let ((_%hd197791197891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197790197887%_)))
                                              (_%tl197792197894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197790197887%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197792197894%_))
                                              (let ((_%e197793197897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197792197894%_))))
                                                (let ((_%hd197794197901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197793197897%_)))
                                                      (_%tl197795197904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197793197897%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197795197904%_))
                                                      (let ((_%e197796197907%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197795197904%_))))
                (let ((_%hd197797197911%_
                       (let () (declare (not safe)) (##car _%e197796197907%_)))
                      (_%tl197798197914%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197796197907%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197798197914%_))
                      (let ((_%e197799197917%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197798197914%_))))
                        (let ((_%hd197800197921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197799197917%_)))
                              (_%tl197801197924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197799197917%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197801197924%_))
                              (let ((_%e197802197927%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197801197924%_))))
                                (let ((_%hd197803197931%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197802197927%_)))
                                      (_%tl197804197934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197802197927%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197804197934%_))
                                      ((lambda (_%L197937%_
                                                _%L197939%_
                                                _%L197940%_
                                                _%L197941%_
                                                _%L197942%_
                                                _%L197943%_
                                                _%L197944%_
                                                _%L197945%_
                                                _%L197946%_
                                                _%L197947%_
                                                _%L197948%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L197948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L197947%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197946%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197945%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197944%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197943%_ '()))
                                           (cons _%L197942%_
                                                 (cons _%L197941%_
                                                       (cons _%L197940%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197939%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L197937%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd197803197931%_
                                       _%hd197800197921%_
                                       _%hd197797197911%_
                                       _%hd197794197901%_
                                       _%hd197791197891%_
                                       _%hd197788197881%_
                                       _%hd197785197871%_
                                       _%hd197782197861%_
                                       _%hd197779197851%_
                                       _%hd197776197841%_
                                       _%hd197773197831%_)
                                      (_%g197756197810%_ _%g197757197814%_))))
                              (_%g197756197810%_ _%g197757197814%_))))
                      (_%g197756197810%_ _%g197757197814%_))))
              (_%g197756197810%_ _%g197757197814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197756197810%_
                                               _%g197757197814%_))))
                                      (_%g197756197810%_ _%g197757197814%_))))
                              (_%g197756197810%_ _%g197757197814%_))))
                      (_%g197756197810%_ _%g197757197814%_))))
              (_%g197756197810%_ _%g197757197814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197756197810%_
                                               _%g197757197814%_))))
                                      (_%g197756197810%_ _%g197757197814%_))))
                              (_%g197756197810%_ _%g197757197814%_))))
                      (_%g197756197810%_ _%g197757197814%_)))))
          (_%g197755197991%_ _%$stx197752%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx197995%_)
        (let* ((_%g197999198013%_
                (lambda (_%g198000198009%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198000198009%_))))
               (_%g197998198054%_
                (lambda (_%g198000198017%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198000198017%_))
                      (let ((_%e198002198020%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198000198017%_))))
                        (let ((_%hd198003198024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198002198020%_)))
                              (_%tl198004198027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198002198020%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198004198027%_))
                              (let ((_%e198005198030%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198004198027%_))))
                                (let ((_%hd198006198034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198005198030%_)))
                                      (_%tl198007198037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198005198030%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198007198037%_))
                                      ((lambda (_%L198040%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L198040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd198006198034%_)
                                      (_%g197999198013%_ _%g198000198017%_))))
                              (_%g197999198013%_ _%g198000198017%_))))
                      (_%g197999198013%_ _%g198000198017%_)))))
          (_%g197998198054%_ _%$stx197995%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx198058%_)
        (let* ((_%g198062198076%_
                (lambda (_%g198063198072%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198063198072%_))))
               (_%g198061198117%_
                (lambda (_%g198063198080%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198063198080%_))
                      (let ((_%e198065198083%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198063198080%_))))
                        (let ((_%hd198066198087%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198065198083%_)))
                              (_%tl198067198090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198065198083%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198067198090%_))
                              (let ((_%e198068198093%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198067198090%_))))
                                (let ((_%hd198069198097%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198068198093%_)))
                                      (_%tl198070198100%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198068198093%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198070198100%_))
                                      ((lambda (_%L198103%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L198103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd198069198097%_)
                                      (_%g198062198076%_ _%g198063198080%_))))
                              (_%g198062198076%_ _%g198063198080%_))))
                      (_%g198062198076%_ _%g198063198080%_)))))
          (_%g198061198117%_ _%$stx198058%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx198121%_)
        (let* ((_%g198125198147%_
                (lambda (_%g198126198143%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198126198143%_))))
               (_%g198124198216%_
                (lambda (_%g198126198151%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198126198151%_))
                      (let ((_%e198130198154%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198126198151%_))))
                        (let ((_%hd198131198158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198130198154%_)))
                              (_%tl198132198161%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198130198154%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198132198161%_))
                              (let ((_%e198133198164%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198132198161%_))))
                                (let ((_%hd198134198168%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198133198164%_)))
                                      (_%tl198135198171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198133198164%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198135198171%_))
                                      (let ((_%e198136198174%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198135198171%_))))
                                        (let ((_%hd198137198178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198136198174%_)))
                                              (_%tl198138198181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198136198174%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198138198181%_))
                                              (let ((_%e198139198184%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198138198181%_))))
                                                (let ((_%hd198140198188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198139198184%_)))
                                                      (_%tl198141198191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198139198184%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198141198191%_))
                                                      ((lambda (_%L198194%_
                                                                _%L198196%_
                                                                _%L198197%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L198197%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198196%_ '()))
                                   (cons _%L198194%_ '())))))
               _%hd198140198188%_
               _%hd198137198178%_
               _%hd198134198168%_)
              (_%g198125198147%_ _%g198126198151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198125198147%_
                                               _%g198126198151%_))))
                                      (_%g198125198147%_ _%g198126198151%_))))
                              (_%g198125198147%_ _%g198126198151%_))))
                      (_%g198125198147%_ _%g198126198151%_)))))
          (_%g198124198216%_ _%$stx198121%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx198220%_)
        (let* ((_%g198224198246%_
                (lambda (_%g198225198242%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198225198242%_))))
               (_%g198223198315%_
                (lambda (_%g198225198250%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198225198250%_))
                      (let ((_%e198229198253%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198225198250%_))))
                        (let ((_%hd198230198257%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198229198253%_)))
                              (_%tl198231198260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198229198253%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198231198260%_))
                              (let ((_%e198232198263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198231198260%_))))
                                (let ((_%hd198233198267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198232198263%_)))
                                      (_%tl198234198270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198232198263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198234198270%_))
                                      (let ((_%e198235198273%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198234198270%_))))
                                        (let ((_%hd198236198277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198235198273%_)))
                                              (_%tl198237198280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198235198273%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198237198280%_))
                                              (let ((_%e198238198283%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198237198280%_))))
                                                (let ((_%hd198239198287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198238198283%_)))
                                                      (_%tl198240198290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198238198283%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198240198290%_))
                                                      ((lambda (_%L198293%_
                                                                _%L198295%_
                                                                _%L198296%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L198296%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198295%_ '()))
                                   (cons _%L198293%_ '())))))
               _%hd198239198287%_
               _%hd198236198277%_
               _%hd198233198267%_)
              (_%g198224198246%_ _%g198225198250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198224198246%_
                                               _%g198225198250%_))))
                                      (_%g198224198246%_ _%g198225198250%_))))
                              (_%g198224198246%_ _%g198225198250%_))))
                      (_%g198224198246%_ _%g198225198250%_)))))
          (_%g198223198315%_ _%$stx198220%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx198319%_)
        (let* ((_%g198323198337%_
                (lambda (_%g198324198333%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198324198333%_))))
               (_%g198322198378%_
                (lambda (_%g198324198341%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198324198341%_))
                      (let ((_%e198326198344%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198324198341%_))))
                        (let ((_%hd198327198348%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198326198344%_)))
                              (_%tl198328198351%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198326198344%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198328198351%_))
                              (let ((_%e198329198354%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198328198351%_))))
                                (let ((_%hd198330198358%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198329198354%_)))
                                      (_%tl198331198361%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198329198354%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198331198361%_))
                                      ((lambda (_%L198364%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L198364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd198330198358%_)
                                      (_%g198323198337%_ _%g198324198341%_))))
                              (_%g198323198337%_ _%g198324198341%_))))
                      (_%g198323198337%_ _%g198324198341%_)))))
          (_%g198322198378%_ _%$stx198319%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx198382%_)
        (let* ((_%g198386198404%_
                (lambda (_%g198387198400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198387198400%_))))
               (_%g198385198459%_
                (lambda (_%g198387198408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198387198408%_))
                      (let ((_%e198390198411%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198387198408%_))))
                        (let ((_%hd198391198415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198390198411%_)))
                              (_%tl198392198418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198390198411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198392198418%_))
                              (let ((_%e198393198421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198392198418%_))))
                                (let ((_%hd198394198425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198393198421%_)))
                                      (_%tl198395198428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198393198421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198395198428%_))
                                      (let ((_%e198396198431%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198395198428%_))))
                                        (let ((_%hd198397198435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198396198431%_)))
                                              (_%tl198398198438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198396198431%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198398198438%_))
                                              ((lambda (_%L198441%_
                                                        _%L198443%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198443%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198441%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198397198435%_
                                               _%hd198394198425%_)
                                              (_%g198386198404%_
                                               _%g198387198408%_))))
                                      (_%g198386198404%_ _%g198387198408%_))))
                              (_%g198386198404%_ _%g198387198408%_))))
                      (_%g198386198404%_ _%g198387198408%_)))))
          (_%g198385198459%_ _%$stx198382%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx198463%_)
        (let* ((_%__stx202805202806%_ _%$stx198463%_)
               (_%g198470198531%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202805202806%_)))))
          (let ((_%__kont202808202809%_
                 (lambda (_%L198769%_ _%L198771%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198771%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198769%_ '()))
                                     '())))))
                (_%__kont202810202811%_
                 (lambda (_%L198708%_ _%L198710%_ _%L198711%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198711%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198710%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198708%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont202812202813%_
                 (lambda (_%L198632%_ _%L198634%_)
                   (cons _%L198634%_ (cons _%L198632%_ (cons '#f '())))))
                (_%__kont202814202815%_
                 (lambda (_%L198582%_ _%L198584%_ _%L198585%_)
                   (cons _%L198585%_
                         (cons _%L198584%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L198582%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202805202806%_))
                (let ((_%e198474198739%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202805202806%_))))
                  (let ((_%tl198476198746%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198474198739%_)))
                        (_%hd198475198743%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198474198739%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198476198746%_))
                        (let ((_%e198477198749%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198476198746%_))))
                          (let ((_%tl198479198756%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198477198749%_)))
                                (_%hd198478198753%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198477198749%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198479198756%_))
                                (let ((_%e198480198759%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198479198756%_))))
                                  (let ((_%tl198482198766%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198480198759%_)))
                                        (_%hd198481198763%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198480198759%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198482198766%_))
                                        (_%__kont202808202809%_
                                         _%hd198481198763%_
                                         _%hd198478198753%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198482198766%_))
                                            (let ((_%e198495198684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198482198766%_))))
                                              (let ((_%tl198497198691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198495198684%_)))
                                                    (_%hd198496198688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198495198684%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd198496198688%_))
                                                    (let ((_%e198498198694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd198496198688%_))))
                                                      (if (equal? _%e198498198694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198497198691%_))
                      (let ((_%e198499198698%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198497198691%_))))
                        (let ((_%tl198501198705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198499198698%_)))
                              (_%hd198500198702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198499198698%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198501198705%_))
                              (_%__kont202810202811%_
                               _%hd198500198702%_
                               _%hd198481198763%_
                               _%hd198478198753%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd198481198763%_))
                                  (let ((_%e198522198568%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd198481198763%_))))
                                    (declare (not safe))
                                    (_%g198470198531%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g198470198531%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd198481198763%_))
                          (let ((_%e198522198568%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198481198763%_))))
                            (if (equal? _%e198522198568%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl198497198691%_))
                                    (_%__kont202814202815%_
                                     _%hd198496198688%_
                                     _%hd198478198753%_
                                     _%hd198475198743%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g198470198531%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g198470198531%_))))
                          (let () (declare (not safe)) (_%g198470198531%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd198481198763%_))
                      (let ((_%e198522198568%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd198481198763%_))))
                        (if (equal? _%e198522198568%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198497198691%_))
                                (_%__kont202814202815%_
                                 _%hd198496198688%_
                                 _%hd198478198753%_
                                 _%hd198475198743%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198470198531%_)))
                            (let () (declare (not safe)) (_%g198470198531%_))))
                      (let () (declare (not safe)) (_%g198470198531%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd198481198763%_))
                                                        (let ((_%e198522198568%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd198481198763%_))))
                  (if (equal? _%e198522198568%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198497198691%_))
                          (_%__kont202814202815%_
                           _%hd198496198688%_
                           _%hd198478198753%_
                           _%hd198475198743%_)
                          (let () (declare (not safe)) (_%g198470198531%_)))
                      (let () (declare (not safe)) (_%g198470198531%_))))
                (let () (declare (not safe)) (_%g198470198531%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd198481198763%_))
                                                (let ((_%e198522198568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd198481198763%_))))
                                                  (declare (not safe))
                                                  (_%g198470198531%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198470198531%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl198479198756%_))
                                    (_%__kont202812202813%_
                                     _%hd198478198753%_
                                     _%hd198475198743%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g198470198531%_))))))
                        (let () (declare (not safe)) (_%g198470198531%_)))))
                (let () (declare (not safe)) (_%g198470198531%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx198790%_)
        (let* ((_%g198794198823%_
                (lambda (_%g198795198819%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198795198819%_))))
               (_%g198793198932%_
                (lambda (_%g198795198827%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198795198827%_))
                      (let ((_%e198797198830%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198795198827%_))))
                        (let ((_%hd198798198834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198797198830%_)))
                              (_%tl198799198837%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198797198830%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198799198837%_))
                              (let ((_g203435_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198799198837%_
                                        '0))))
                                (begin
                                  (let ((_g203436_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203435_)
                                               (##vector-length _g203435_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203436_ 2)))
                                        (error "Context expects 2 values"
                                               _g203436_)))
                                  (let ((_%target198800198840%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203435_ 0)))
                                        (_%tl198802198843%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203435_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198802198843%_))
                                        (letrec ((_%loop198803198846%_
                                                  (lambda (_%hd198801198850%_
                                                           _%clause198807198853%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198801198850%_))
                                                        (let ((_%e198804198856%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198801198850%_))))
                  (let ((_%lp-hd198805198860%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198804198856%_)))
                        (_%lp-tl198806198863%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198804198856%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd198805198860%_))
                        (let ((_g203437_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd198805198860%_
                                  '0))))
                          (begin
                            (let ((_g203438_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g203437_)
                                         (##vector-length _g203437_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g203438_ 2)))
                                  (error "Context expects 2 values"
                                         _g203438_)))
                            (let ((_%target198809198866%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g203437_ 0)))
                                  (_%tl198811198869%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g203437_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198811198869%_))
                                  (letrec ((_%loop198812198872%_
                                            (lambda (_%hd198810198876%_
                                                     _%clause198816198879%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198810198876%_))
                                                  (let ((_%e198813198882%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd198810198876%_))))
                                                    (let ((_%lp-hd198814198886%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198813198882%_)))
                                                          (_%lp-tl198815198889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198813198882%_))))
                                                      (_%loop198812198872%_
                                                       _%lp-tl198815198889%_
                                                       (cons _%lp-hd198814198886%_
                                                             _%clause198816198879%_))))
                                                  (let ((_%clause198817198892%_
                                                         (reverse _%clause198816198879%_)))
                                                    (_%loop198803198846%_
                                                     _%lp-tl198806198863%_
                                                     (cons _%clause198817198892%_
                                                           _%clause198807198853%_)))))))
                                    (_%loop198812198872%_
                                     _%target198809198866%_
                                     '()))
                                  (_%g198794198823%_ _%g198795198827%_)))))
                        (_%g198794198823%_ _%g198795198827%_))))
                (let ((_%clause198808198896%_
                       (reverse _%clause198807198853%_)))
                  ((lambda (_%L198900%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp203439
                                              (lambda (_%g198915198920%_
                                                       _%g198916198923%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp203440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g198917198926%_ _%g198918198929%_)
                             (cons _%g198917198926%_ _%g198918198929%_))))
                      (declare (not safe))
                      (__foldr1 __tmp203440 '() _%g198915198920%_)))
              _%g198916198923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp203439
                                          '()
                                          _%L198900%_)))
                                 '())))
                   _%clause198808198896%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198803198846%_
                                           _%target198800198840%_
                                           '()))
                                        (_%g198794198823%_
                                         _%g198795198827%_)))))
                              (_%g198794198823%_ _%g198795198827%_))))
                      (_%g198794198823%_ _%g198795198827%_)))))
          (_%g198793198932%_ _%$stx198790%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx198938%_)
        (let* ((_%g198942198960%_
                (lambda (_%g198943198956%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198943198956%_))))
               (_%g198941199015%_
                (lambda (_%g198943198964%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198943198964%_))
                      (let ((_%e198946198967%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198943198964%_))))
                        (let ((_%hd198947198971%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198946198967%_)))
                              (_%tl198948198974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198946198967%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198948198974%_))
                              (let ((_%e198949198977%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198948198974%_))))
                                (let ((_%hd198950198981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198949198977%_)))
                                      (_%tl198951198984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198949198977%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198951198984%_))
                                      (let ((_%e198952198987%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198951198984%_))))
                                        (let ((_%hd198953198991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198952198987%_)))
                                              (_%tl198954198994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198952198987%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198954198994%_))
                                              ((lambda (_%L198997%_
                                                        _%L198999%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198999%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198997%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198953198991%_
                                               _%hd198950198981%_)
                                              (_%g198942198960%_
                                               _%g198943198964%_))))
                                      (_%g198942198960%_ _%g198943198964%_))))
                              (_%g198942198960%_ _%g198943198964%_))))
                      (_%g198942198960%_ _%g198943198964%_)))))
          (_%g198941199015%_ _%$stx198938%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx199019%_)
        (let* ((_%g199023199041%_
                (lambda (_%g199024199037%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199024199037%_))))
               (_%g199022199096%_
                (lambda (_%g199024199045%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199024199045%_))
                      (let ((_%e199027199048%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199024199045%_))))
                        (let ((_%hd199028199052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199027199048%_)))
                              (_%tl199029199055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199027199048%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199029199055%_))
                              (let ((_%e199030199058%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199029199055%_))))
                                (let ((_%hd199031199062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199030199058%_)))
                                      (_%tl199032199065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199030199058%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199032199065%_))
                                      (let ((_%e199033199068%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199032199065%_))))
                                        (let ((_%hd199034199072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199033199068%_)))
                                              (_%tl199035199075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199033199068%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199035199075%_))
                                              ((lambda (_%L199078%_
                                                        _%L199080%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L199080%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L199078%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199034199072%_
                                               _%hd199031199062%_)
                                              (_%g199023199041%_
                                               _%g199024199045%_))))
                                      (_%g199023199041%_ _%g199024199045%_))))
                              (_%g199023199041%_ _%g199024199045%_))))
                      (_%g199023199041%_ _%g199024199045%_)))))
          (_%g199022199096%_ _%$stx199019%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx199100%_)
        (let* ((_%g199104199133%_
                (lambda (_%g199105199129%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199105199129%_))))
               (_%g199103199233%_
                (lambda (_%g199105199137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199105199137%_))
                      (let ((_%e199108199140%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199105199137%_))))
                        (let ((_%hd199109199144%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199108199140%_)))
                              (_%tl199110199147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199108199140%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199110199147%_))
                              (let ((_g203441_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199110199147%_
                                        '0))))
                                (begin
                                  (let ((_g203442_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203441_)
                                               (##vector-length _g203441_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203442_ 2)))
                                        (error "Context expects 2 values"
                                               _g203442_)))
                                  (let ((_%target199111199150%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203441_ 0)))
                                        (_%tl199113199153%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203441_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199113199153%_))
                                        (letrec ((_%loop199114199156%_
                                                  (lambda (_%hd199112199160%_
                                                           _%rule199118199163%_
                                                           _%proc199119199165%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199112199160%_))
                                                        (let ((_%e199115199168%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199112199160%_))))
                  (let ((_%lp-hd199116199172%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199115199168%_)))
                        (_%lp-tl199117199175%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199115199168%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd199116199172%_))
                        (let ((_%e199122199178%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd199116199172%_))))
                          (let ((_%hd199123199182%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199122199178%_)))
                                (_%tl199124199185%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199122199178%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199124199185%_))
                                (let ((_%e199125199188%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199124199185%_))))
                                  (let ((_%hd199126199192%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199125199188%_)))
                                        (_%tl199127199195%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199125199188%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199127199195%_))
                                        (_%loop199114199156%_
                                         _%lp-tl199117199175%_
                                         (cons _%hd199126199192%_
                                               _%rule199118199163%_)
                                         (cons _%hd199123199182%_
                                               _%proc199119199165%_))
                                        (_%g199104199133%_
                                         _%g199105199137%_))))
                                (_%g199104199133%_ _%g199105199137%_))))
                        (_%g199104199133%_ _%g199105199137%_))))
                (let ((_%rule199120199198%_ (reverse _%rule199118199163%_))
                      (_%proc199121199201%_ (reverse _%proc199119199165%_)))
                  ((lambda (_%L199204%_ _%L199206%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L199204%_
                                _%L199206%_))
                             (let ((__tmp203443
                                    (lambda (_%g199221199225%_
                                             _%g199222199228%_
                                             _%g199223199230%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g199222199228%_
                                                        (cons _%g199221199225%_
                                                              '())))
                                            _%g199223199230%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp203443
                                '()
                                _%L199204%_
                                _%L199206%_)))))
                   _%rule199120199198%_
                   _%proc199121199201%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop199114199156%_
                                           _%target199111199150%_
                                           '()
                                           '()))
                                        (_%g199104199133%_
                                         _%g199105199137%_)))))
                              (_%g199104199133%_ _%g199105199137%_))))
                      (_%g199104199133%_ _%g199105199137%_)))))
          (_%g199103199233%_ _%$stx199100%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx199238%_)
        (let* ((_%g199242199260%_
                (lambda (_%g199243199256%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199243199256%_))))
               (_%g199241199315%_
                (lambda (_%g199243199264%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199243199264%_))
                      (let ((_%e199246199267%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199243199264%_))))
                        (let ((_%hd199247199271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199246199267%_)))
                              (_%tl199248199274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199246199267%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199248199274%_))
                              (let ((_%e199249199277%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199248199274%_))))
                                (let ((_%hd199250199281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199249199277%_)))
                                      (_%tl199251199284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199249199277%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199251199284%_))
                                      (let ((_%e199252199287%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199251199284%_))))
                                        (let ((_%hd199253199291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199252199287%_)))
                                              (_%tl199254199294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199252199287%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199254199294%_))
                                              ((lambda (_%L199297%_
                                                        _%L199299%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L199299%_ '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%L199297%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L199299%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199253199291%_
                                               _%hd199250199281%_)
                                              (_%g199242199260%_
                                               _%g199243199264%_))))
                                      (_%g199242199260%_ _%g199243199264%_))))
                              (_%g199242199260%_ _%g199243199264%_))))
                      (_%g199242199260%_ _%g199243199264%_)))))
          (_%g199241199315%_ _%$stx199238%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx199319%_)
        (let* ((_%__stx202923202924%_ _%$stx199319%_)
               (_%g199324199349%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202923202924%_)))))
          (let ((_%__kont202926202927%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202928202929%_
                 (lambda (_%L199396%_ _%L199398%_ _%L199399%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L199399%_ (cons _%L199398%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L199396%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202923202924%_))
                (let ((_%e199326199425%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202923202924%_))))
                  (let ((_%tl199328199432%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199326199425%_)))
                        (_%hd199327199429%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199326199425%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199328199432%_))
                        (_%__kont202926202927%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199328199432%_))
                            (let ((_%e199335199366%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199328199432%_))))
                              (let ((_%tl199337199373%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199335199366%_)))
                                    (_%hd199336199370%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199335199366%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199336199370%_))
                                    (let ((_%e199338199376%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd199336199370%_))))
                                      (let ((_%tl199340199383%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199338199376%_)))
                                            (_%hd199339199380%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199338199376%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199340199383%_))
                                            (let ((_%e199341199386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199340199383%_))))
                                              (let ((_%tl199343199393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199341199386%_)))
                                                    (_%hd199342199390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199341199386%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199343199393%_))
                                                    (_%__kont202928202929%_
                                                     _%tl199337199373%_
                                                     _%hd199342199390%_
                                                     _%hd199339199380%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199324199349%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199324199349%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199324199349%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g199324199349%_))))))
                (let () (declare (not safe)) (_%g199324199349%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx199443%_)
        (let* ((_%__stx202967202968%_ _%$stx199443%_)
               (_%g199448199479%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202967202968%_)))))
          (let ((_%__kont202970202971%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202972202973%_
                 (lambda (_%L199546%_ _%L199548%_ _%L199549%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L199549%_
                                           (let ((__tmp203444
                                                  (lambda (_%g199569199572%_
                                                           _%g199570199575%_)
                                                    (cons _%g199569199572%_
                                                          _%g199570199575%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp203444
                                              '()
                                              _%L199548%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L199546%_)
                                     '()))))))
            (let ((_%__match203010203011%_
                   (lambda (_%e199456199486%_
                            _%hd199457199490%_
                            _%tl199458199493%_
                            _%e199459199496%_
                            _%hd199460199500%_
                            _%tl199461199503%_
                            _%e199462199506%_
                            _%hd199463199510%_
                            _%tl199464199513%_
                            _%__splice202974202975%_
                            _%target199465199516%_
                            _%tl199467199519%_)
                     (letrec ((_%loop199468199522%_
                               (lambda (_%hd199466199526%_ _%sig199472199529%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd199466199526%_))
                                     (let ((_%e199469199532%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd199466199526%_))))
                                       (let ((_%lp-tl199471199539%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199469199532%_)))
                                             (_%lp-hd199470199536%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199469199532%_))))
                                         (_%loop199468199522%_
                                          _%lp-tl199471199539%_
                                          (cons _%lp-hd199470199536%_
                                                _%sig199472199529%_))))
                                     (let ((_%sig199473199542%_
                                            (reverse _%sig199472199529%_)))
                                       (_%__kont202972202973%_
                                        _%tl199461199503%_
                                        _%sig199473199542%_
                                        _%hd199463199510%_))))))
                       (_%loop199468199522%_ _%target199465199516%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202967202968%_))
                  (let ((_%e199450199585%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202967202968%_))))
                    (let ((_%tl199452199592%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199450199585%_)))
                          (_%hd199451199589%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199450199585%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199452199592%_))
                          (_%__kont202970202971%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199452199592%_))
                              (let ((_%e199459199496%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199452199592%_))))
                                (let ((_%tl199461199503%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199459199496%_)))
                                      (_%hd199460199500%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199459199496%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199460199500%_))
                                      (let ((_%e199462199506%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199460199500%_))))
                                        (let ((_%tl199464199513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199462199506%_)))
                                              (_%hd199463199510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199462199506%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl199464199513%_))
                                              (let ((_%__splice202974202975%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl199464199513%_
                                                        '0))))
                                                (let ((_%tl199467199519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202974202975%_
                                                          '1)))
                                                      (_%target199465199516%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202974202975%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199467199519%_))
                                                      (_%__match203010203011%_
                                                       _%e199450199585%_
                                                       _%hd199451199589%_
                                                       _%tl199452199592%_
                                                       _%e199459199496%_
                                                       _%hd199460199500%_
                                                       _%tl199461199503%_
                                                       _%e199462199506%_
                                                       _%hd199463199510%_
                                                       _%tl199464199513%_
                                                       _%__splice202974202975%_
                                                       _%target199465199516%_
                                                       _%tl199467199519%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199448199479%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199448199479%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199448199479%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199448199479%_))))))
                  (let () (declare (not safe)) (_%g199448199479%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx199604%_)
        (let* ((_%__stx203013203014%_ _%$stx199604%_)
               (_%g199609199656%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203013203014%_)))))
          (let ((_%__kont203016203017%_
                 (lambda (_%L199818%_ _%L199820%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L199820%_
                               (let ((__tmp203445
                                      (lambda (_%g199840199843%_
                                               _%g199841199846%_)
                                        (cons _%g199840199843%_
                                              _%g199841199846%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp203445 '() _%L199818%_))))))
                (_%__kont203020203021%_
                 (lambda (_%L199713%_ _%L199715%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L199715%_
                               (let ((__tmp203446
                                      (lambda (_%g199732199735%_
                                               _%g199733199738%_)
                                        (cons _%g199732199735%_
                                              _%g199733199738%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp203446 '() _%L199713%_)))))))
            (let* ((_%__match203080203081%_
                    (lambda (_%e199636199663%_
                             _%hd199637199667%_
                             _%tl199638199670%_
                             _%e199639199673%_
                             _%hd199640199677%_
                             _%tl199641199680%_
                             _%__splice203022203023%_
                             _%target199642199683%_
                             _%tl199644199686%_)
                      (letrec ((_%loop199645199689%_
                                (lambda (_%hd199643199693%_
                                         _%sig199649199696%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199643199693%_))
                                      (let ((_%e199646199699%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199643199693%_))))
                                        (let ((_%lp-tl199648199706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199646199699%_)))
                                              (_%lp-hd199647199703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199646199699%_))))
                                          (_%loop199645199689%_
                                           _%lp-tl199648199706%_
                                           (cons _%lp-hd199647199703%_
                                                 _%sig199649199696%_))))
                                      (let ((_%sig199650199709%_
                                             (reverse _%sig199649199696%_)))
                                        (_%__kont203020203021%_
                                         _%sig199650199709%_
                                         _%hd199640199677%_))))))
                        (_%loop199645199689%_ _%target199642199683%_ '()))))
                   (_%__match203072203073%_
                    (lambda (_%e199636199663%_
                             _%hd199637199667%_
                             _%tl199638199670%_
                             _%e199639199673%_
                             _%hd199640199677%_
                             _%tl199641199680%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl199641199680%_))
                          (let ((_%__splice203022203023%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl199641199680%_
                                    '0))))
                            (let ((_%tl199644199686%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice203022203023%_
                                      '1)))
                                  (_%target199642199683%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice203022203023%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199644199686%_))
                                  (_%__match203080203081%_
                                   _%e199636199663%_
                                   _%hd199637199667%_
                                   _%tl199638199670%_
                                   _%e199639199673%_
                                   _%hd199640199677%_
                                   _%tl199641199680%_
                                   _%__splice203022203023%_
                                   _%target199642199683%_
                                   _%tl199644199686%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g199609199656%_)))))
                          (let () (declare (not safe)) (_%g199609199656%_)))))
                   (_%__match203060203061%_
                    (lambda (_%e199613199748%_
                             _%hd199614199752%_
                             _%tl199615199755%_
                             _%e199616199758%_
                             _%hd199617199762%_
                             _%tl199618199765%_
                             _%e199619199768%_
                             _%hd199620199772%_
                             _%tl199621199775%_
                             _%e199622199778%_
                             _%hd199623199782%_
                             _%tl199624199785%_
                             _%__splice203018203019%_
                             _%target199625199788%_
                             _%tl199627199791%_)
                      (letrec ((_%loop199628199794%_
                                (lambda (_%hd199626199798%_
                                         _%sig199632199801%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199626199798%_))
                                      (let ((_%e199629199804%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199626199798%_))))
                                        (let ((_%lp-tl199631199811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199629199804%_)))
                                              (_%lp-hd199630199808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199629199804%_))))
                                          (_%loop199628199794%_
                                           _%lp-tl199631199811%_
                                           (cons _%lp-hd199630199808%_
                                                 _%sig199632199801%_))))
                                      (let ((_%sig199633199814%_
                                             (reverse _%sig199632199801%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199621199775%_))
                                            (_%__kont203016203017%_
                                             _%sig199633199814%_
                                             _%hd199617199762%_)
                                            (_%__match203072203073%_
                                             _%e199613199748%_
                                             _%hd199614199752%_
                                             _%tl199615199755%_
                                             _%e199616199758%_
                                             _%hd199617199762%_
                                             _%tl199618199765%_)))))))
                        (_%loop199628199794%_ _%target199625199788%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203013203014%_))
                  (let ((_%e199613199748%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx203013203014%_))))
                    (let ((_%tl199615199755%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199613199748%_)))
                          (_%hd199614199752%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199613199748%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199615199755%_))
                          (let ((_%e199616199758%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199615199755%_))))
                            (let ((_%tl199618199765%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199616199758%_)))
                                  (_%hd199617199762%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199616199758%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199618199765%_))
                                  (let ((_%e199619199768%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199618199765%_))))
                                    (let ((_%tl199621199775%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199619199768%_)))
                                          (_%hd199620199772%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199619199768%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd199620199772%_))
                                          (let ((_%e199622199778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd199620199772%_))))
                                            (let ((_%tl199624199785%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199622199778%_)))
                                                  (_%hd199623199782%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199622199778%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd199623199782%_))
                                                  (if (let ((__tmp203447
                                                             |gxc[1]#_g203448_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp203447
                                                         _%hd199623199782%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl199624199785%_))
                                                          (let ((_%__splice203018203019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199624199785%_ '0))))
                    (let ((_%tl199627199791%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice203018203019%_ '1)))
                          (_%target199625199788%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice203018203019%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199627199791%_))
                          (_%__match203060203061%_
                           _%e199613199748%_
                           _%hd199614199752%_
                           _%tl199615199755%_
                           _%e199616199758%_
                           _%hd199617199762%_
                           _%tl199618199765%_
                           _%e199619199768%_
                           _%hd199620199772%_
                           _%tl199621199775%_
                           _%e199622199778%_
                           _%hd199623199782%_
                           _%tl199624199785%_
                           _%__splice203018203019%_
                           _%target199625199788%_
                           _%tl199627199791%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199618199765%_))
                              (let ((_%__splice203022203023%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199618199765%_
                                        '0))))
                                (let ((_%tl199644199686%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice203022203023%_
                                          '1)))
                                      (_%target199642199683%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice203022203023%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199644199686%_))
                                      (_%__match203080203081%_
                                       _%e199613199748%_
                                       _%hd199614199752%_
                                       _%tl199615199755%_
                                       _%e199616199758%_
                                       _%hd199617199762%_
                                       _%tl199618199765%_
                                       _%__splice203022203023%_
                                       _%target199642199683%_
                                       _%tl199644199686%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g199609199656%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199609199656%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl199618199765%_))
                      (let ((_%__splice203022203023%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl199618199765%_
                                '0))))
                        (let ((_%tl199644199686%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203022203023%_ '1)))
                              (_%target199642199683%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203022203023%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199644199686%_))
                              (_%__match203080203081%_
                               _%e199613199748%_
                               _%hd199614199752%_
                               _%tl199615199755%_
                               _%e199616199758%_
                               _%hd199617199762%_
                               _%tl199618199765%_
                               _%__splice203022203023%_
                               _%target199642199683%_
                               _%tl199644199686%_)
                              (let ()
                                (declare (not safe))
                                (_%g199609199656%_)))))
                      (let () (declare (not safe)) (_%g199609199656%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl199618199765%_))
                  (let ((_%__splice203022203023%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199618199765%_ '0))))
                    (let ((_%tl199644199686%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice203022203023%_ '1)))
                          (_%target199642199683%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice203022203023%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199644199686%_))
                          (_%__match203080203081%_
                           _%e199613199748%_
                           _%hd199614199752%_
                           _%tl199615199755%_
                           _%e199616199758%_
                           _%hd199617199762%_
                           _%tl199618199765%_
                           _%__splice203022203023%_
                           _%target199642199683%_
                           _%tl199644199686%_)
                          (let () (declare (not safe)) (_%g199609199656%_)))))
                  (let () (declare (not safe)) (_%g199609199656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl199618199765%_))
                                                      (let ((_%__splice203022203023%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl199618199765%_ '0))))
                (let ((_%tl199644199686%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice203022203023%_ '1)))
                      (_%target199642199683%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice203022203023%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199644199686%_))
                      (_%__match203080203081%_
                       _%e199613199748%_
                       _%hd199614199752%_
                       _%tl199615199755%_
                       _%e199616199758%_
                       _%hd199617199762%_
                       _%tl199618199765%_
                       _%__splice203022203023%_
                       _%target199642199683%_
                       _%tl199644199686%_)
                      (let () (declare (not safe)) (_%g199609199656%_)))))
              (let () (declare (not safe)) (_%g199609199656%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl199618199765%_))
                                              (let ((_%__splice203022203023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl199618199765%_
                                                        '0))))
                                                (let ((_%tl199644199686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203022203023%_
                                                          '1)))
                                                      (_%target199642199683%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203022203023%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199644199686%_))
                                                      (_%__match203080203081%_
                                                       _%e199613199748%_
                                                       _%hd199614199752%_
                                                       _%tl199615199755%_
                                                       _%e199616199758%_
                                                       _%hd199617199762%_
                                                       _%tl199618199765%_
                                                       _%__splice203022203023%_
                                                       _%target199642199683%_
                                                       _%tl199644199686%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199609199656%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199609199656%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199618199765%_))
                                      (let ((_%__splice203022203023%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199618199765%_
                                                '0))))
                                        (let ((_%tl199644199686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice203022203023%_
                                                  '1)))
                                              (_%target199642199683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice203022203023%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199644199686%_))
                                              (_%__match203080203081%_
                                               _%e199613199748%_
                                               _%hd199614199752%_
                                               _%tl199615199755%_
                                               _%e199616199758%_
                                               _%hd199617199762%_
                                               _%tl199618199765%_
                                               _%__splice203022203023%_
                                               _%target199642199683%_
                                               _%tl199644199686%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199609199656%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199609199656%_))))))
                          (let () (declare (not safe)) (_%g199609199656%_)))))
                  (let () (declare (not safe)) (_%g199609199656%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx201003%_ _%id201005%_)
        (let ((_%proc201009%_
               (let ((__tmp203449
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id201005%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp203449))))
          (if (procedure? _%proc201009%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx201003%_
                 _%id201005%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx200994%_ _%id200996%_)
        (let ((_%klass201000%_
               (let ((__tmp203450
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200996%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp203450))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass201000%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx200994%_
                 _%id200996%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx200244%_ _%proc200246%_ _%sig200247%_)
        (letrec ((_%signature-arity200249%_
                  (lambda (_%args200926%_)
                    (let _%loop200929%_ ((_%rest200932%_ _%args200926%_)
                                         (_%count200934%_ '0))
                      (let* ((_%rest200935200946%_ _%rest200932%_)
                             (_%E200939200952%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest200935200946%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K200942200983%_
                               (lambda (_%rest200980%_)
                                 (_%loop200929%_
                                  _%rest200980%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count200934%_ '1)))))
                              (_%K200941200972%_ (lambda () _%count200934%_))
                              (_%K200940200960%_
                               (lambda () (cons _%count200934%_ '()))))
                          (let ((_%try-match200937200976%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest200935200946%_))
                                       (_%K200941200972%_)
                                       (_%K200940200960%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest200935200946%_))
                                (let* ((_%tl200944200987%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200935200946%_)))
                                       (_%rest200991%_ _%tl200944200987%_))
                                  (_%K200942200983%_ _%rest200991%_))
                                (_%try-match200937200976%_))))))))
                 (_%make-signature200251%_
                  (lambda (_%args200808%_
                           _%return200810%_
                           _%effect200811%_
                           _%unchecked200812%_)
                    (let ((__tmp203451
                           (lambda (_%g200813200815%_)
                             (|gxc[1]#verify-class!|
                              _%ctx200244%_
                              _%g200813200815%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp203451 _%args200808%_))
                    (|gxc[1]#verify-class!| _%ctx200244%_ _%return200810%_)
                    (if _%unchecked200812%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx200244%_
                         _%unchecked200812%_)
                        '#!void)
                    (let ((_%arity200819%_
                           (_%signature-arity200249%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args200808%_)))))
                      (if _%effect200811%_
                          (let ((_%effect200822%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect200811%_))))
                            (if (and (list? _%effect200822%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect200822%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx200244%_
                                   _%proc200246%_
                                   _%effect200822%_))))
                          '#!void)
                      (cons _%arity200819%_
                            (cons (let* ((_%g200825200848%_
                                          (lambda (_%g200826200844%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g200826200844%_))))
                                         (_%g200824200922%_
                                          (lambda (_%g200826200852%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g200826200852%_))
                                                (let ((_%e200831200855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g200826200852%_))))
                                                  (let ((_%hd200832200859%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200831200855%_)))
                                                        (_%tl200833200862%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200831200855%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200833200862%_))
                                                        (let ((_%e200834200865%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200833200862%_))))
                  (let ((_%hd200835200869%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200834200865%_)))
                        (_%tl200836200872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200834200865%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200836200872%_))
                        (let ((_%e200837200875%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200836200872%_))))
                          (let ((_%hd200838200879%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200837200875%_)))
                                (_%tl200839200882%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200837200875%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200839200882%_))
                                (let ((_%e200840200885%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200839200882%_))))
                                  (let ((_%hd200841200889%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200840200885%_)))
                                        (_%tl200842200892%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200840200885%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200842200892%_))
                                        ((lambda (_%L200895%_
                                                  _%L200897%_
                                                  _%L200898%_
                                                  _%L200899%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200899%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L200898%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L200897%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L200895%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200841200889%_
                                         _%hd200838200879%_
                                         _%hd200835200869%_
                                         _%hd200832200859%_)
                                        (_%g200825200848%_
                                         _%g200826200852%_))))
                                (_%g200825200848%_ _%g200826200852%_))))
                        (_%g200825200848%_ _%g200826200852%_))))
                (_%g200825200848%_ _%g200826200852%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200825200848%_
                                                 _%g200826200852%_)))))
                                    (_%g200824200922%_
                                     (list _%args200808%_
                                           _%return200810%_
                                           _%effect200811%_
                                           _%unchecked200812%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx200244%_ _%proc200246%_)
          (let* ((_%__stx203091203092%_ _%sig200247%_)
                 (_%g200258200361%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx203091203092%_)))))
            (let ((_%__kont203094203095%_
                   (lambda (_%L200789%_ _%L200791%_)
                     (_%make-signature200251%_
                      _%L200791%_
                      _%L200789%_
                      '#f
                      '#f)))
                  (_%__kont203096203097%_
                   (lambda (_%L200740%_ _%L200742%_ _%L200743%_)
                     (_%make-signature200251%_
                      _%L200743%_
                      _%L200742%_
                      _%L200740%_
                      '#f)))
                  (_%__kont203098203099%_
                   (lambda (_%L200664%_ _%L200666%_ _%L200667%_)
                     (_%make-signature200251%_
                      _%L200667%_
                      _%L200666%_
                      _%L200664%_
                      (let ((__tmp203452
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc200246%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp203452)))))
                  (_%__kont203100203101%_
                   (lambda (_%L200570%_ _%L200572%_ _%L200573%_ _%L200574%_)
                     (_%make-signature200251%_
                      _%L200574%_
                      _%L200573%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L200570%_)))))
                  (_%__kont203102203103%_
                   (lambda (_%L200477%_ _%L200479%_)
                     (_%make-signature200251%_
                      _%L200479%_
                      _%L200477%_
                      '#f
                      (let ((__tmp203453
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc200246%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp203453)))))
                  (_%__kont203104203105%_
                   (lambda (_%L200412%_ _%L200414%_ _%L200415%_)
                     (_%make-signature200251%_
                      _%L200415%_
                      _%L200414%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L200412%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203091203092%_))
                  (let ((_%e200262200769%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx203091203092%_))))
                    (let ((_%tl200264200776%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200262200769%_)))
                          (_%hd200263200773%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200262200769%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200264200776%_))
                          (let ((_%e200265200779%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200264200776%_))))
                            (let ((_%tl200267200786%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200265200779%_)))
                                  (_%hd200266200783%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200265200779%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200267200786%_))
                                  (_%__kont203094203095%_
                                   _%hd200266200783%_
                                   _%hd200263200773%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200267200786%_))
                                      (let ((_%e200277200716%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200267200786%_))))
                                        (let ((_%tl200279200723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200277200716%_)))
                                              (_%hd200278200720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200277200716%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd200278200720%_))
                                              (let ((_%e200280200726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd200278200720%_))))
                                                (if (equal? _%e200280200726%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200279200723%_))
                                                        (let ((_%e200281200730%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200279200723%_))))
                  (let ((_%tl200283200737%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200281200730%_)))
                        (_%hd200282200734%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200281200730%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl200283200737%_))
                        (_%__kont203096203097%_
                         _%hd200282200734%_
                         _%hd200266200783%_
                         _%hd200263200773%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl200283200737%_))
                            (let ((_%e200300200650%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl200283200737%_))))
                              (let ((_%tl200302200657%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200300200650%_)))
                                    (_%hd200301200654%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200300200650%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd200301200654%_))
                                    (let ((_%e200303200660%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd200301200654%_))))
                                      (if (equal? _%e200303200660%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200302200657%_))
                                              (_%__kont203098203099%_
                                               _%hd200282200734%_
                                               _%hd200266200783%_
                                               _%hd200263200773%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200302200657%_))
                                                  (let ((_%e200325200560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200302200657%_))))
                                                    (let ((_%tl200327200567%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200325200560%_)))
                                                          (_%hd200326200564%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200325200560%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200327200567%_))
                                                          (_%__kont203100203101%_
                                                           _%hd200326200564%_
                                                           _%hd200282200734%_
                                                           _%hd200266200783%_
                                                           _%hd200263200773%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200258200361%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200258200361%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200258200361%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200258200361%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g200258200361%_))))))
                (let () (declare (not safe)) (_%g200258200361%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e200280200726%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl200279200723%_))
                                                            (_%__kont203102203103%_
                                                             _%hd200266200783%_
                                                             _%hd200263200773%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl200279200723%_))
                        (let ((_%e200353200402%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200279200723%_))))
                          (let ((_%tl200355200409%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200353200402%_)))
                                (_%hd200354200406%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200353200402%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200355200409%_))
                                (_%__kont203104203105%_
                                 _%hd200354200406%_
                                 _%hd200266200783%_
                                 _%hd200263200773%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g200258200361%_)))))
                        (let () (declare (not safe)) (_%g200258200361%_))))
                (let () (declare (not safe)) (_%g200258200361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200258200361%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200258200361%_))))))
                          (let () (declare (not safe)) (_%g200258200361%_)))))
                  (let () (declare (not safe)) (_%g200258200361%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig199855%_)
        (let* ((_%g199858199938%_
                (lambda (_%g199859199934%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199859199934%_))))
               (_%g199857200240%_
                (lambda (_%g199859199942%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199859199942%_))
                      (let ((_%e199865199945%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199859199942%_))))
                        (let ((_%hd199866199949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199865199945%_)))
                              (_%tl199867199952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199865199945%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199867199952%_))
                              (let ((_%e199868199955%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199867199952%_))))
                                (let ((_%hd199869199959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199868199955%_)))
                                      (_%tl199870199962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199868199955%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd199869199959%_))
                                      (let ((_%e199871199965%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd199869199959%_))))
                                        (if (equal? _%e199871199965%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199870199962%_))
                                                (let ((_%e199872199969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199870199962%_))))
                                                  (let ((_%hd199873199973%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199872199969%_)))
                                                        (_%tl199874199976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199872199969%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199873199973%_))
                                                        (let ((_%e199875199979%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199873199973%_))))
                  (let ((_%hd199876199983%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199875199979%_)))
                        (_%tl199877199986%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199875199979%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd199876199983%_))
                        (if (let ((__tmp203454 |gxc[1]#_g203455_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp203454
                               _%hd199876199983%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199877199986%_))
                                (let ((_%e199878199989%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199877199986%_))))
                                  (let ((_%hd199879199993%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199878199989%_)))
                                        (_%tl199880199996%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199878199989%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199880199996%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199874199976%_))
                                            (let ((_%e199881199999%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199874199976%_))))
                                              (let ((_%hd199882200003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199881199999%_)))
                                                    (_%tl199883200006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199881199999%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199882200003%_))
                                                    (let ((_%e199884200009%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199882200003%_))))
                                                      (if (equal? _%e199884200009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199883200006%_))
                      (let ((_%e199885200013%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199883200006%_))))
                        (let ((_%hd199886200017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199885200013%_)))
                              (_%tl199887200020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199885200013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199886200017%_))
                              (let ((_%e199888200023%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd199886200017%_))))
                                (let ((_%hd199889200027%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199888200023%_)))
                                      (_%tl199890200030%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199888200023%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199889200027%_))
                                      (if (let ((__tmp203456
                                                 |gxc[1]#_g203457_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp203456
                                             _%hd199889200027%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199890200030%_))
                                              (let ((_%e199891200033%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199890200030%_))))
                                                (let ((_%hd199892200037%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199891200033%_)))
                                                      (_%tl199893200040%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199891200033%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199893200040%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199887200020%_))
                                                          (let ((_%e199894200043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl199887200020%_))))
                    (let ((_%hd199895200047%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199894200043%_)))
                          (_%tl199896200050%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199894200043%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199895200047%_))
                          (let ((_%e199897200053%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199895200047%_))))
                            (if (equal? _%e199897200053%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199896200050%_))
                                    (let ((_%e199898200057%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl199896200050%_))))
                                      (let ((_%hd199899200061%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199898200057%_)))
                                            (_%tl199900200064%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199898200057%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199899200061%_))
                                            (let ((_%e199901200067%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199899200061%_))))
                                              (let ((_%hd199902200071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199901200067%_)))
                                                    (_%tl199903200074%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199901200067%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199902200071%_))
                                                    (if (let ((__tmp203458
                                                               |gxc[1]#_g203459_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp203458
                                                           _%hd199902200071%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199903200074%_))
                                                            (let ((_%e199904200077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl199903200074%_))))
                      (let ((_%hd199905200081%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199904200077%_)))
                            (_%tl199906200084%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199904200077%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199906200084%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199900200064%_))
                                (let ((_%e199907200087%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199900200064%_))))
                                  (let ((_%hd199908200091%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199907200087%_)))
                                        (_%tl199909200094%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199907200087%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd199908200091%_))
                                        (let ((_%e199910200097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199908200091%_))))
                                          (if (equal? _%e199910200097%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199909200094%_))
                                                  (let ((_%e199911200101%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199909200094%_))))
                                                    (let ((_%hd199912200105%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199911200101%_)))
                                                          (_%tl199913200108%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199911200101%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199912200105%_))
                                                          (let ((_%e199914200111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd199912200105%_))))
                    (let ((_%hd199915200115%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199914200111%_)))
                          (_%tl199916200118%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199914200111%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199915200115%_))
                          (if (let ((__tmp203460 |gxc[1]#_g203461_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp203460
                                 _%hd199915200115%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199916200118%_))
                                  (let ((_%e199917200121%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199916200118%_))))
                                    (let ((_%hd199918200125%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199917200121%_)))
                                          (_%tl199919200128%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199917200121%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199919200128%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199913200108%_))
                                              (let ((_%e199920200131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199913200108%_))))
                                                (let ((_%hd199921200135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199920200131%_)))
                                                      (_%tl199922200138%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199920200131%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd199921200135%_))
                                                      (let ((_%e199923200141%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd199921200135%_))))
                (if (equal? _%e199923200141%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199922200138%_))
                        (let ((_%e199924200145%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199922200138%_))))
                          (let ((_%hd199925200149%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199924200145%_)))
                                (_%tl199926200152%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199924200145%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd199925200149%_))
                                (let ((_%e199927200155%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd199925200149%_))))
                                  (let ((_%hd199928200159%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199927200155%_)))
                                        (_%tl199929200162%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199927200155%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199928200159%_))
                                        (if (let ((__tmp203462
                                                   |gxc[1]#_g203463_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp203462
                                               _%hd199928200159%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199929200162%_))
                                                (let ((_%e199930200165%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199929200162%_))))
                                                  (let ((_%hd199931200169%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199930200165%_)))
                                                        (_%tl199932200172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199930200165%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199932200172%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl199926200152%_))
                                                            ((lambda (_%L200175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L200177%_
                              _%L200178%_
                              _%L200179%_
                              _%L200180%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L200177%_))
                           (cons _%L200177%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L200179%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L200175%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd199931200169%_
                     _%hd199918200125%_
                     _%hd199905200081%_
                     _%hd199892200037%_
                     _%hd199879199993%_)
                    (_%g199858199938%_ _%g199859199942%_))
                (_%g199858199938%_ _%g199859199942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199858199938%_
                                                 _%g199859199942%_))
                                            (_%g199858199938%_
                                             _%g199859199942%_))
                                        (_%g199858199938%_
                                         _%g199859199942%_))))
                                (_%g199858199938%_ _%g199859199942%_))))
                        (_%g199858199938%_ _%g199859199942%_))
                    (_%g199858199938%_ _%g199859199942%_)))
              (_%g199858199938%_ _%g199859199942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199858199938%_
                                               _%g199859199942%_))
                                          (_%g199858199938%_
                                           _%g199859199942%_))))
                                  (_%g199858199938%_ _%g199859199942%_))
                              (_%g199858199938%_ _%g199859199942%_))
                          (_%g199858199938%_ _%g199859199942%_))))
                  (_%g199858199938%_ _%g199859199942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g199858199938%_
                                                   _%g199859199942%_))
                                              (_%g199858199938%_
                                               _%g199859199942%_)))
                                        (_%g199858199938%_
                                         _%g199859199942%_))))
                                (_%g199858199938%_ _%g199859199942%_))
                            (_%g199858199938%_ _%g199859199942%_))))
                    (_%g199858199938%_ _%g199859199942%_))
                (_%g199858199938%_ _%g199859199942%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199858199938%_
                                                     _%g199859199942%_))))
                                            (_%g199858199938%_
                                             _%g199859199942%_))))
                                    (_%g199858199938%_ _%g199859199942%_))
                                (_%g199858199938%_ _%g199859199942%_)))
                          (_%g199858199938%_ _%g199859199942%_))))
                  (_%g199858199938%_ _%g199859199942%_))
              (_%g199858199938%_ _%g199859199942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199858199938%_
                                               _%g199859199942%_))
                                          (_%g199858199938%_
                                           _%g199859199942%_))
                                      (_%g199858199938%_ _%g199859199942%_))))
                              (_%g199858199938%_ _%g199859199942%_))))
                      (_%g199858199938%_ _%g199859199942%_))
                  (_%g199858199938%_ _%g199859199942%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199858199938%_
                                                     _%g199859199942%_))))
                                            (_%g199858199938%_
                                             _%g199859199942%_))
                                        (_%g199858199938%_
                                         _%g199859199942%_))))
                                (_%g199858199938%_ _%g199859199942%_))
                            (_%g199858199938%_ _%g199859199942%_))
                        (_%g199858199938%_ _%g199859199942%_))))
                (_%g199858199938%_ _%g199859199942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199858199938%_
                                                 _%g199859199942%_))
                                            (_%g199858199938%_
                                             _%g199859199942%_)))
                                      (_%g199858199938%_ _%g199859199942%_))))
                              (_%g199858199938%_ _%g199859199942%_))))
                      (_%g199858199938%_ _%g199859199942%_)))))
          (_%g199857200240%_ _%sig199855%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx201012%_)
        (let* ((_%g201015201033%_
                (lambda (_%g201016201029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201016201029%_))))
               (_%g201014201088%_
                (lambda (_%g201016201037%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201016201037%_))
                      (let ((_%e201019201040%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201016201037%_))))
                        (let ((_%hd201020201044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201019201040%_)))
                              (_%tl201021201047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201019201040%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201021201047%_))
                              (let ((_%e201022201050%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201021201047%_))))
                                (let ((_%hd201023201054%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201022201050%_)))
                                      (_%tl201024201057%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201022201050%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201024201057%_))
                                      (let ((_%e201025201060%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201024201057%_))))
                                        (let ((_%hd201026201064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201025201060%_)))
                                              (_%tl201027201067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201025201060%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201027201067%_))
                                              ((lambda (_%L201070%_
                                                        _%L201072%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L201072%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L201070%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx201012%_
                                                        _%L201072%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx201012%_
                                                        _%L201070%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L201072%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L201070%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201015201033%_
                                                      _%g201016201037%_)))
                                               _%hd201026201064%_
                                               _%hd201023201054%_)
                                              (_%g201015201033%_
                                               _%g201016201037%_))))
                                      (_%g201015201033%_ _%g201016201037%_))))
                              (_%g201015201033%_ _%g201016201037%_))))
                      (_%g201015201033%_ _%g201016201037%_)))))
          (_%g201014201088%_ _%stx201012%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx201092%_)
        (let* ((_%g201095201119%_
                (lambda (_%g201096201115%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201096201115%_))))
               (_%g201094201402%_
                (lambda (_%g201096201123%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201096201123%_))
                      (let ((_%e201099201126%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201096201123%_))))
                        (let ((_%hd201100201130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201099201126%_)))
                              (_%tl201101201133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201099201126%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201101201133%_))
                              (let ((_%e201102201136%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201101201133%_))))
                                (let ((_%hd201103201140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201102201136%_)))
                                      (_%tl201104201143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201102201136%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl201104201143%_))
                                      (let ((_g203464_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl201104201143%_
                                                '0))))
                                        (begin
                                          (let ((_g203465_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203464_)
                                                       (##vector-length
                                                        _g203464_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203465_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203465_)))
                                          (let ((_%target201105201146%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g203464_ 0)))
                                                (_%tl201107201149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g203464_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201107201149%_))
                                                (letrec ((_%loop201108201152%_
                                                          (lambda (_%hd201106201156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature201112201159%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201106201156%_))
                        (let ((_%e201109201162%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd201106201156%_))))
                          (let ((_%lp-hd201110201166%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201109201162%_)))
                                (_%lp-tl201111201169%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201109201162%_))))
                            (_%loop201108201152%_
                             _%lp-tl201111201169%_
                             (cons _%lp-hd201110201166%_
                                   _%signature201112201159%_))))
                        (let ((_%signature201113201172%_
                               (reverse _%signature201112201159%_)))
                          ((lambda (_%L201176%_ _%L201178%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L201178%_))
                                 (let* ((_%g201196201211%_
                                         (lambda (_%g201197201207%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g201197201207%_))))
                                        (_%g201195201390%_
                                         (lambda (_%g201197201215%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g201197201215%_))
                                               (let ((_%e201200201218%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g201197201215%_))))
                                                 (let ((_%hd201201201222%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e201200201218%_)))
                                                       (_%tl201202201225%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e201200201218%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201202201225%_))
                                                       (let ((_%e201203201228%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201202201225%_))))
                 (let ((_%hd201204201232%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201203201228%_)))
                       (_%tl201205201235%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201203201228%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl201205201235%_))
                       ((lambda (_%L201238%_ _%L201240%_)
                          (let* ((_%g201256201264%_
                                  (lambda (_%g201257201260%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g201257201260%_))))
                                 (_%g201255201386%_
                                  (lambda (_%g201257201268%_)
                                    ((lambda (_%L201271%_)
                                       (let* ((_%unchecked201284%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L201238%_))
                                              (_%g201287201295%_
                                               (lambda (_%g201288201291%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g201288201291%_))))
                                              (_%g201286201318%_
                                               (lambda (_%g201288201299%_)
                                                 ((lambda (_%L201302%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L201271%_
                                                                (cons _%L201302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g201288201299%_))))
                                         (_%g201286201318%_
                                          (if _%unchecked201284%_
                                              (let* ((_%g201322201337%_
                                                      (lambda (_%g201323201333%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g201323201333%_))))
                                                     (_%g201321201382%_
                                                      (lambda (_%g201323201341%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g201323201341%_))
                                                            (let ((_%e201326201344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g201323201341%_))))
                      (let ((_%hd201327201348%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201326201344%_)))
                            (_%tl201328201351%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201326201344%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl201328201351%_))
                            (let ((_%e201329201354%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl201328201351%_))))
                              (let ((_%hd201330201358%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201329201354%_)))
                                    (_%tl201331201361%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201329201354%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl201331201361%_))
                                    ((lambda (_%L201364%_ _%L201366%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L201366%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L201240%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L201364%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd201330201358%_
                                     _%hd201327201348%_)
                                    (_%g201322201337%_ _%g201323201341%_))))
                            (_%g201322201337%_ _%g201323201341%_))))
                    (_%g201322201337%_ _%g201323201341%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g201321201382%_
                                                 _%unchecked201284%_))
                                              '(begin)))))
                                     _%g201257201268%_))))
                            (_%g201255201386%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L201178%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L201240%_ '()))
                   (cons '#f (cons 'signature: (cons _%L201238%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd201204201232%_
                        _%hd201201201222%_)
                       (_%g201196201211%_ _%g201197201215%_))))
               (_%g201196201211%_ _%g201197201215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201196201211%_
                                                _%g201197201215%_)))))
                                   (_%g201195201390%_
                                    (|gxc[1]#parse-signature|
                                     _%stx201092%_
                                     _%L201178%_
                                     (let ((__tmp203466
                                            (lambda (_%g201393201396%_
                                                     _%g201394201399%_)
                                              (cons _%g201393201396%_
                                                    _%g201394201399%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp203466
                                        '()
                                        _%L201176%_)))))
                                 (_%g201095201119%_ _%g201096201123%_)))
                           _%signature201113201172%_
                           _%hd201103201140%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201108201152%_
                                                   _%target201105201146%_
                                                   '()))
                                                (_%g201095201119%_
                                                 _%g201096201123%_)))))
                                      (_%g201095201119%_ _%g201096201123%_))))
                              (_%g201095201119%_ _%g201096201123%_))))
                      (_%g201095201119%_ _%g201096201123%_)))))
          (_%g201094201402%_ _%stx201092%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx201407%_)
        (let* ((_%g201410201434%_
                (lambda (_%g201411201430%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201411201430%_))))
               (_%g201409202317%_
                (lambda (_%g201411201438%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201411201438%_))
                      (let ((_%e201414201441%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201411201438%_))))
                        (let ((_%hd201415201445%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201414201441%_)))
                              (_%tl201416201448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201414201441%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201416201448%_))
                              (let ((_%e201417201451%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201416201448%_))))
                                (let ((_%hd201418201455%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201417201451%_)))
                                      (_%tl201419201458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201417201451%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl201419201458%_))
                                      (let ((_g203467_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl201419201458%_
                                                '0))))
                                        (begin
                                          (let ((_g203468_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203467_)
                                                       (##vector-length
                                                        _g203467_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203468_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203468_)))
                                          (let ((_%target201420201461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g203467_ 0)))
                                                (_%tl201422201464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g203467_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201422201464%_))
                                                (letrec ((_%loop201423201467%_
                                                          (lambda (_%hd201421201471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature201427201474%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201421201471%_))
                        (let ((_%e201424201477%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd201421201471%_))))
                          (let ((_%lp-hd201425201481%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201424201477%_)))
                                (_%lp-tl201426201484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201424201477%_))))
                            (_%loop201423201467%_
                             _%lp-tl201426201484%_
                             (cons _%lp-hd201425201481%_
                                   _%case-signature201427201474%_))))
                        (let ((_%case-signature201428201487%_
                               (reverse _%case-signature201427201474%_)))
                          ((lambda (_%L201491%_ _%L201493%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L201493%_))
                                 (let* ((_%signatures201524%_
                                         (map (lambda (_%g201510201512%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx201407%_
                                                 _%L201493%_
                                                 _%g201510201512%_))
                                              (let ((__tmp203469
                                                     (lambda (_%g201515201518%_
                                                              _%g201516201521%_)
                                                       (cons _%g201515201518%_
                                                             _%g201516201521%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp203469
                                                 '()
                                                 _%L201491%_))))
                                        (_%g201527201553%_
                                         (lambda (_%g201528201549%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g201528201549%_))))
                                        (_%g201526202313%_
                                         (lambda (_%g201528201557%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g201528201557%_))
                                               (let ((_g203470_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g201528201557%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g203471_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g203470_)
                        (##vector-length _g203470_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g203471_ 2)))
                 (error "Context expects 2 values" _g203471_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target201531201560%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g203470_
                                                             0)))
                                                         (_%tl201533201563%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g203470_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201533201563%_))
                                                         (letrec ((_%loop201534201566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd201532201570%_
                                    _%sig201538201573%_
                                    _%arity201539201575%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd201532201570%_))
                                 (let ((_%e201535201578%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd201532201570%_))))
                                   (let ((_%lp-hd201536201582%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e201535201578%_)))
                                         (_%lp-tl201537201585%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e201535201578%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd201536201582%_))
                                         (let ((_%e201542201588%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd201536201582%_))))
                                           (let ((_%hd201543201592%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201542201588%_)))
                                                 (_%tl201544201595%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201542201588%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201544201595%_))
                                                 (let ((_%e201545201598%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201544201595%_))))
                                                   (let ((_%hd201546201602%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201545201598%_)))
                                                         (_%tl201547201605%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201545201598%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201547201605%_))
                                                         (_%loop201534201566%_
                                                          _%lp-tl201537201585%_
                                                          (cons _%hd201546201602%_
                                                                _%sig201538201573%_)
                                                          (cons _%hd201543201592%_
                                                                _%arity201539201575%_))
                                                         (_%g201527201553%_
                                                          _%g201528201557%_))))
                                                 (_%g201527201553%_
                                                  _%g201528201557%_))))
                                         (_%g201527201553%_
                                          _%g201528201557%_))))
                                 (let ((_%sig201540201608%_
                                        (reverse _%sig201538201573%_))
                                       (_%arity201541201611%_
                                        (reverse _%arity201539201575%_)))
                                   ((lambda (_%L201614%_ _%L201616%_)
                                      (let* ((_%g201633201641%_
                                              (lambda (_%g201634201637%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g201634201637%_))))
                                             (_%g201632202298%_
                                              (lambda (_%g201634201645%_)
                                                ((lambda (_%L201648%_)
                                                   (let* ((_%g201661201669%_
                                                           (lambda (_%g201662201665%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g201662201665%_))))
                  (_%g201660201691%_
                   (lambda (_%g201662201673%_)
                     ((lambda (_%L201676%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L201648%_ (cons _%L201676%_ '()))))
                      _%g201662201673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201660201691%_
                                                      (let ((_g203472_
                                                             (let _%loop201695%_ ((_%rest201698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures201524%_)
                                          (_%unchecked-proc201700%_ '#f)
                                          (_%unchecked-clauses201701%_ '()))
                       (let* ((_%rest201702201710%_ _%rest201698%_)
                              (_%else201704201722%_
                               (lambda ()
                                 (values _%unchecked-proc201700%_
                                         (reverse!
                                          _%unchecked-clauses201701%_))))
                              (_%K201706202163%_
                               (lambda (_%rest201726%_ _%hd201728%_)
                                 (let* ((_%g201730201817%_
                                         (lambda (_%g201731201813%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g201731201813%_))))
                                        (_%g201729202159%_
                                         (lambda (_%g201731201821%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g201731201821%_))
                                               (let ((_%e201738201824%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g201731201821%_))))
                                                 (let ((_%hd201739201828%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e201738201824%_)))
                                                       (_%tl201740201831%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e201738201824%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201740201831%_))
                                                       (let ((_%e201741201834%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201740201831%_))))
                 (let ((_%hd201742201838%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201741201834%_)))
                       (_%tl201743201841%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201741201834%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd201742201838%_))
                       (let ((_%e201744201844%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd201742201838%_))))
                         (let ((_%hd201745201848%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201744201844%_)))
                               (_%tl201746201851%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201744201844%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl201746201851%_))
                               (let ((_%e201747201854%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl201746201851%_))))
                                 (let ((_%hd201748201858%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e201747201854%_)))
                                       (_%tl201749201861%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e201747201854%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd201748201858%_))
                                       (let ((_%e201750201864%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd201748201858%_))))
                                         (if (equal? _%e201750201864%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201749201861%_))
                                                 (let ((_%e201751201868%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201749201861%_))))
                                                   (let ((_%hd201752201872%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201751201868%_)))
                                                         (_%tl201753201875%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201751201868%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd201752201872%_))
                                                         (let ((_%e201754201878%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd201752201872%_))))
                   (let ((_%hd201755201882%_
                          (let ()
                            (declare (not safe))
                            (##car _%e201754201878%_)))
                         (_%tl201756201885%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e201754201878%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd201755201882%_))
                         (if (let ((__tmp203474 |gxc[1]#_g203475_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp203474
                                _%hd201755201882%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl201756201885%_))
                                 (let ((_%e201757201888%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl201756201885%_))))
                                   (let ((_%hd201758201892%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e201757201888%_)))
                                         (_%tl201759201895%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e201757201888%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl201759201895%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl201753201875%_))
                                             (let ((_%e201760201898%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl201753201875%_))))
                                               (let ((_%hd201761201902%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e201760201898%_)))
                                                     (_%tl201762201905%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e201760201898%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd201761201902%_))
                                                     (let ((_%e201763201908%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd201761201902%_))))
                                                       (if (equal? _%e201763201908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl201762201905%_))
                       (let ((_%e201764201912%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl201762201905%_))))
                         (let ((_%hd201765201916%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201764201912%_)))
                               (_%tl201766201919%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201764201912%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd201765201916%_))
                               (let ((_%e201767201922%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd201765201916%_))))
                                 (let ((_%hd201768201926%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e201767201922%_)))
                                       (_%tl201769201929%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e201767201922%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd201768201926%_))
                                       (if (let ((__tmp203476
                                                  |gxc[1]#_g203477_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp203476
                                              _%hd201768201926%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl201769201929%_))
                                               (let ((_%e201770201932%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl201769201929%_))))
                                                 (let ((_%hd201771201936%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e201770201932%_)))
                                                       (_%tl201772201939%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e201770201932%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl201772201939%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl201766201919%_))
                                                           (let ((_%e201773201942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl201766201919%_))))
                     (let ((_%hd201774201946%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201773201942%_)))
                           (_%tl201775201949%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201773201942%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd201774201946%_))
                           (let ((_%e201776201952%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd201774201946%_))))
                             (if (equal? _%e201776201952%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201775201949%_))
                                     (let ((_%e201777201956%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201775201949%_))))
                                       (let ((_%hd201778201960%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201777201956%_)))
                                             (_%tl201779201963%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201777201956%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd201778201960%_))
                                             (let ((_%e201780201966%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd201778201960%_))))
                                               (let ((_%hd201781201970%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e201780201966%_)))
                                                     (_%tl201782201973%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e201780201966%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd201781201970%_))
                                                     (if (let ((__tmp203478
                                                                |gxc[1]#_g203479_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp203478
                                                            _%hd201781201970%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl201782201973%_))
                     (let ((_%e201783201976%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl201782201973%_))))
                       (let ((_%hd201784201980%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201783201976%_)))
                             (_%tl201785201983%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201783201976%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201785201983%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl201779201963%_))
                                 (let ((_%e201786201986%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl201779201963%_))))
                                   (let ((_%hd201787201990%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e201786201986%_)))
                                         (_%tl201788201993%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e201786201986%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd201787201990%_))
                                         (let ((_%e201789201996%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd201787201990%_))))
                                           (if (equal? _%e201789201996%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl201788201993%_))
                                                   (let ((_%e201790202000%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl201788201993%_))))
                                                     (let ((_%hd201791202004%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201790202000%_)))
                                                           (_%tl201792202007%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201790202000%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd201791202004%_))
                                                           (let ((_%e201793202010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd201791202004%_))))
                     (let ((_%hd201794202014%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201793202010%_)))
                           (_%tl201795202017%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201793202010%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd201794202014%_))
                           (if (let ((__tmp203480 |gxc[1]#_g203481_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp203480
                                  _%hd201794202014%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl201795202017%_))
                                   (let ((_%e201796202020%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl201795202017%_))))
                                     (let ((_%hd201797202024%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201796202020%_)))
                                           (_%tl201798202027%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201796202020%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl201798202027%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl201792202007%_))
                                               (let ((_%e201799202030%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl201792202007%_))))
                                                 (let ((_%hd201800202034%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e201799202030%_)))
                                                       (_%tl201801202037%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e201799202030%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd201800202034%_))
                                                       (let ((_%e201802202040%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd201800202034%_))))
                 (if (equal? _%e201802202040%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl201801202037%_))
                         (let ((_%e201803202044%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl201801202037%_))))
                           (let ((_%hd201804202048%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201803202044%_)))
                                 (_%tl201805202051%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201803202044%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd201804202048%_))
                                 (let ((_%e201806202054%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd201804202048%_))))
                                   (let ((_%hd201807202058%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e201806202054%_)))
                                         (_%tl201808202061%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e201806202054%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd201807202058%_))
                                         (if (let ((__tmp203482
                                                    |gxc[1]#_g203483_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp203482
                                                _%hd201807202058%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201808202061%_))
                                                 (let ((_%e201809202064%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201808202061%_))))
                                                   (let ((_%hd201810202068%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201809202064%_)))
                                                         (_%tl201811202071%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201809202064%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201811202071%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl201805202051%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl201743201841%_))
                         ((lambda (_%L202074%_
                                   _%L202076%_
                                   _%L202077%_
                                   _%L202078%_
                                   _%L202079%_
                                   _%L202080%_)
                            (let ((_%clause202151%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L202080%_ '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L202078%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L202074%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked202153%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L202076%_))))
                              (_%loop201695%_
                               _%rest201726%_
                               (let ((_%$e202155%_ _%unchecked202153%_))
                                 (if _%$e202155%_
                                     _%$e202155%_
                                     _%unchecked-proc201700%_))
                               (cons _%clause202151%_
                                     _%unchecked-clauses201701%_))))
                          _%hd201810202068%_
                          _%hd201797202024%_
                          _%hd201784201980%_
                          _%hd201771201936%_
                          _%hd201758201892%_
                          _%hd201739201828%_)
                         (_%g201730201817%_ _%g201731201821%_))
                     (_%g201730201817%_ _%g201731201821%_))
                 (_%g201730201817%_ _%g201731201821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201730201817%_
                                                  _%g201731201821%_))
                                             (_%g201730201817%_
                                              _%g201731201821%_))
                                         (_%g201730201817%_
                                          _%g201731201821%_))))
                                 (_%g201730201817%_ _%g201731201821%_))))
                         (_%g201730201817%_ _%g201731201821%_))
                     (_%g201730201817%_ _%g201731201821%_)))
               (_%g201730201817%_ _%g201731201821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201730201817%_
                                                _%g201731201821%_))
                                           (_%g201730201817%_
                                            _%g201731201821%_))))
                                   (_%g201730201817%_ _%g201731201821%_))
                               (_%g201730201817%_ _%g201731201821%_))
                           (_%g201730201817%_ _%g201731201821%_))))
                   (_%g201730201817%_ _%g201731201821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201730201817%_
                                                    _%g201731201821%_))
                                               (_%g201730201817%_
                                                _%g201731201821%_)))
                                         (_%g201730201817%_
                                          _%g201731201821%_))))
                                 (_%g201730201817%_ _%g201731201821%_))
                             (_%g201730201817%_ _%g201731201821%_))))
                     (_%g201730201817%_ _%g201731201821%_))
                 (_%g201730201817%_ _%g201731201821%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201730201817%_
                                                      _%g201731201821%_))))
                                             (_%g201730201817%_
                                              _%g201731201821%_))))
                                     (_%g201730201817%_ _%g201731201821%_))
                                 (_%g201730201817%_ _%g201731201821%_)))
                           (_%g201730201817%_ _%g201731201821%_))))
                   (_%g201730201817%_ _%g201731201821%_))
               (_%g201730201817%_ _%g201731201821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201730201817%_
                                                _%g201731201821%_))
                                           (_%g201730201817%_
                                            _%g201731201821%_))
                                       (_%g201730201817%_ _%g201731201821%_))))
                               (_%g201730201817%_ _%g201731201821%_))))
                       (_%g201730201817%_ _%g201731201821%_))
                   (_%g201730201817%_ _%g201731201821%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201730201817%_
                                                      _%g201731201821%_))))
                                             (_%g201730201817%_
                                              _%g201731201821%_))
                                         (_%g201730201817%_
                                          _%g201731201821%_))))
                                 (_%g201730201817%_ _%g201731201821%_))
                             (_%g201730201817%_ _%g201731201821%_))
                         (_%g201730201817%_ _%g201731201821%_))))
                 (_%g201730201817%_ _%g201731201821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201730201817%_
                                                  _%g201731201821%_))
                                             (_%g201730201817%_
                                              _%g201731201821%_)))
                                       (_%g201730201817%_ _%g201731201821%_))))
                               (_%g201730201817%_ _%g201731201821%_))))
                       (_%g201730201817%_ _%g201731201821%_))))
               (_%g201730201817%_ _%g201731201821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201730201817%_
                                                _%g201731201821%_)))))
                                   (_%g201729202159%_ _%hd201728%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest201702201710%_))
                             (let ((_%hd201707202167%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest201702201710%_)))
                                   (_%tl201708202170%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest201702201710%_))))
                               (let* ((_%hd202173%_ _%hd201707202167%_)
                                      (_%rest202176%_ _%tl201708202170%_))
                                 (_%K201706202163%_
                                  _%rest202176%_
                                  _%hd202173%_)))
                             (_%else201704201722%_))))))
                (begin
                  (let ((_g203473_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g203472_)
                               (##vector-length _g203472_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g203473_ 2)))
                        (error "Context expects 2 values" _g203473_)))
                  (let ((_%unchecked-proc202179%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g203472_ 0)))
                        (_%unchecked-clauses202181%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g203472_ 1))))
                    (if _%unchecked-proc202179%_
                        (let* ((_%g202183202207%_
                                (lambda (_%g202184202203%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g202184202203%_))))
                               (_%g202182202294%_
                                (lambda (_%g202184202211%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g202184202211%_))
                                      (let ((_%e202187202214%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g202184202211%_))))
                                        (let ((_%hd202188202218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202187202214%_)))
                                              (_%tl202189202221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202187202214%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202189202221%_))
                                              (let ((_%e202190202224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202189202221%_))))
                                                (let ((_%hd202191202228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202190202224%_)))
                                                      (_%tl202192202231%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202190202224%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd202191202228%_))
                                                      (let ((_g203484_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd202191202228%_ '0))))
                (begin
                  (let ((_g203485_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g203484_)
                               (##vector-length _g203484_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g203485_ 2)))
                        (error "Context expects 2 values" _g203485_)))
                  (let ((_%target202193202234%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g203484_ 0)))
                        (_%tl202195202237%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g203484_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl202195202237%_))
                        (letrec ((_%loop202196202240%_
                                  (lambda (_%hd202194202244%_
                                           _%clause202200202247%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd202194202244%_))
                                        (let ((_%e202197202250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd202194202244%_))))
                                          (let ((_%lp-hd202198202254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202197202250%_)))
                                                (_%lp-tl202199202257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202197202250%_))))
                                            (_%loop202196202240%_
                                             _%lp-tl202199202257%_
                                             (cons _%lp-hd202198202254%_
                                                   _%clause202200202247%_))))
                                        (let ((_%clause202201202260%_
                                               (reverse _%clause202200202247%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202192202231%_))
                                              ((lambda (_%L202264%_
                                                        _%L202266%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L202266%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp203486
                                                    (lambda (_%g202285202288%_
                                                             _%g202286202291%_)
                                                      (cons _%g202285202288%_
                                                            _%g202286202291%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp203486
                                                '()
                                                _%L202264%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause202201202260%_
                                               _%hd202188202218%_)
                                              (_%g202183202207%_
                                               _%g202184202211%_)))))))
                          (_%loop202196202240%_ _%target202193202234%_ '()))
                        (_%g202183202207%_ _%g202184202211%_)))))
              (_%g202183202207%_ _%g202184202211%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202183202207%_
                                               _%g202184202211%_))))
                                      (_%g202183202207%_ _%g202184202211%_)))))
                          (_%g202182202294%_
                           (list _%unchecked-proc202179%_
                                 _%unchecked-clauses202181%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g201634201645%_))))
                                        (_%g201632202298%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L201493%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L201614%_
                                          _%L201616%_))
                                       (let ((__tmp203487
                                              (lambda (_%g202301202305%_
                                                       _%g202302202308%_
                                                       _%g202303202310%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g202302202308%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g202301202305%_ '())))))
              _%g202303202310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp203487
                                          '()
                                          _%L201614%_
                                          _%L201616%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig201540201608%_
                                    _%arity201541201611%_))))))
                   (_%loop201534201566%_ _%target201531201560%_ '() '()))
                 (_%g201527201553%_ _%g201528201557%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201527201553%_
                                                _%g201528201557%_)))))
                                   (_%g201526202313%_ _%signatures201524%_))
                                 (_%g201410201434%_ _%g201411201438%_)))
                           _%case-signature201428201487%_
                           _%hd201418201455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201423201467%_
                                                   _%target201420201461%_
                                                   '()))
                                                (_%g201410201434%_
                                                 _%g201411201438%_)))))
                                      (_%g201410201434%_ _%g201411201438%_))))
                              (_%g201410201434%_ _%g201411201438%_))))
                      (_%g201410201434%_ _%g201411201438%_)))))
          (_%g201409202317%_ _%stx201407%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx202325%_)
        (let* ((_%__stx203307203308%_ _%$stx202325%_)
               (_%g202331202391%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203307203308%_)))))
          (let ((_%__kont203310203311%_
                 (lambda (_%L202613%_ _%L202615%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202615%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L202615%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L202613%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont203312203313%_
                 (lambda (_%L202538%_ _%L202540%_ _%L202541%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202541%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L202541%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L202540%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202538%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont203314203315%_
                 (lambda (_%L202452%_ _%L202454%_ _%L202455%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202455%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L202455%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L202454%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202452%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx203307203308%_))
                (let ((_%e202335202569%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx203307203308%_))))
                  (let ((_%tl202337202576%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202335202569%_)))
                        (_%hd202336202573%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202335202569%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl202337202576%_))
                        (let ((_%e202338202579%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl202337202576%_))))
                          (let ((_%tl202340202586%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202338202579%_)))
                                (_%hd202339202583%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202338202579%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd202339202583%_))
                                (let ((_%e202341202589%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd202339202583%_))))
                                  (if (equal? _%e202341202589%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202340202586%_))
                                          (let ((_%e202342202593%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl202340202586%_))))
                                            (let ((_%tl202344202600%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202342202593%_)))
                                                  (_%hd202343202597%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202342202593%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202344202600%_))
                                                  (let ((_%e202345202603%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl202344202600%_))))
                                                    (let ((_%tl202347202610%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202345202603%_)))
                                                          (_%hd202346202607%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202345202603%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202347202610%_))
                                                          (_%__kont203310203311%_
                                                           _%hd202346202607%_
                                                           _%hd202343202597%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g202331202391%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202331202391%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202331202391%_)))
                                      (if (equal? _%e202341202589%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202340202586%_))
                                              (let ((_%e202358202508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202340202586%_))))
                                                (let ((_%tl202360202515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202358202508%_)))
                                                      (_%hd202359202512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202358202508%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl202360202515%_))
                                                      (let ((_%e202361202518%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl202360202515%_))))
                (let ((_%tl202363202525%_
                       (let () (declare (not safe)) (##cdr _%e202361202518%_)))
                      (_%hd202362202522%_
                       (let ()
                         (declare (not safe))
                         (##car _%e202361202518%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202363202525%_))
                      (let ((_%e202364202528%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202363202525%_))))
                        (let ((_%tl202366202535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202364202528%_)))
                              (_%hd202365202532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202364202528%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202366202535%_))
                              (_%__kont203312203313%_
                               _%hd202365202532%_
                               _%hd202362202522%_
                               _%hd202359202512%_)
                              (let ()
                                (declare (not safe))
                                (_%g202331202391%_)))))
                      (let () (declare (not safe)) (_%g202331202391%_)))))
              (let () (declare (not safe)) (_%g202331202391%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g202331202391%_)))
                                          (if (equal? _%e202341202589%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202340202586%_))
                                                  (let ((_%e202377202422%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl202340202586%_))))
                                                    (let ((_%tl202379202429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202377202422%_)))
                                                          (_%hd202378202426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202377202422%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202379202429%_))
                                                          (let ((_%e202380202432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl202379202429%_))))
                    (let ((_%tl202382202439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202380202432%_)))
                          (_%hd202381202436%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202380202432%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202382202439%_))
                          (let ((_%e202383202442%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl202382202439%_))))
                            (let ((_%tl202385202449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202383202442%_)))
                                  (_%hd202384202446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202383202442%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202385202449%_))
                                  (_%__kont203314203315%_
                                   _%hd202384202446%_
                                   _%hd202381202436%_
                                   _%hd202378202426%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g202331202391%_)))))
                          (let () (declare (not safe)) (_%g202331202391%_)))))
                  (let () (declare (not safe)) (_%g202331202391%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202331202391%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202331202391%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g202331202391%_)))))
                        (let () (declare (not safe)) (_%g202331202391%_)))))
                (let () (declare (not safe)) (_%g202331202391%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx202637%_)
        (let* ((_%g202641202661%_
                (lambda (_%g202642202657%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202642202657%_))))
               (_%g202640202732%_
                (lambda (_%g202642202665%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202642202665%_))
                      (let ((_%e202644202668%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202642202665%_))))
                        (let ((_%hd202645202672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202644202668%_)))
                              (_%tl202646202675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202644202668%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202646202675%_))
                              (let ((_g203488_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202646202675%_
                                        '0))))
                                (begin
                                  (let ((_g203489_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203488_)
                                               (##vector-length _g203488_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203489_ 2)))
                                        (error "Context expects 2 values"
                                               _g203489_)))
                                  (let ((_%target202647202678%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203488_ 0)))
                                        (_%tl202649202681%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203488_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202649202681%_))
                                        (letrec ((_%loop202650202684%_
                                                  (lambda (_%hd202648202688%_
                                                           _%decl202654202691%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202648202688%_))
                                                        (let ((_%e202651202694%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202648202688%_))))
                  (let ((_%lp-hd202652202698%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202651202694%_)))
                        (_%lp-tl202653202701%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202651202694%_))))
                    (_%loop202650202684%_
                     _%lp-tl202653202701%_
                     (cons _%lp-hd202652202698%_ _%decl202654202691%_))))
                (let ((_%decl202655202704%_ (reverse _%decl202654202691%_)))
                  ((lambda (_%L202708%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp203490
                                  (lambda (_%g202723202726%_ _%g202724202729%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g202723202726%_)
                                          _%g202724202729%_))))
                             (declare (not safe))
                             (__foldr1 __tmp203490 '() _%L202708%_))))
                   _%decl202655202704%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202650202684%_
                                           _%target202647202678%_
                                           '()))
                                        (_%g202641202661%_
                                         _%g202642202665%_)))))
                              (_%g202641202661%_ _%g202642202665%_))))
                      (_%g202641202661%_ _%g202642202665%_)))))
          (_%g202640202732%_ _%$stx202637%_))))))
