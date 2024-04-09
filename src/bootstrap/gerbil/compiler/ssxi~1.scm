(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g203293_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203307_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203309_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203311_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203313_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203315_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203328_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203330_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203332_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203334_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203336_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx196711%_)
        (let* ((_%g196715196733%_
                (lambda (_%g196716196729%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196716196729%_))))
               (_%g196714196788%_
                (lambda (_%g196716196737%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196716196737%_))
                      (let ((_%e196721196740%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196716196737%_))))
                        (let ((_%hd196720196744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196721196740%_)))
                              (_%tl196719196747%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196721196740%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196719196747%_))
                              (let ((_%e196724196750%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196719196747%_))))
                                (let ((_%hd196723196754%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196724196750%_)))
                                      (_%tl196722196757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196724196750%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196722196757%_))
                                      (let ((_%e196727196760%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196722196757%_))))
                                        (let ((_%hd196726196764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196727196760%_)))
                                              (_%tl196725196767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196727196760%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196725196767%_))
                                              ((lambda (_%L196770%_
                                                        _%L196772%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196772%_))
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
                               (cons _%L196772%_ '()))
                         (cons _%L196770%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196715196733%_
                                                      _%g196716196737%_)))
                                               _%hd196726196764%_
                                               _%hd196723196754%_)
                                              (_%g196715196733%_
                                               _%g196716196737%_))))
                                      (_%g196715196733%_ _%g196716196737%_))))
                              (_%g196715196733%_ _%g196716196737%_))))
                      (_%g196715196733%_ _%g196716196737%_)))))
          (_%g196714196788%_ _%$stx196711%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx196792%_)
        (let* ((_%g196796196814%_
                (lambda (_%g196797196810%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196797196810%_))))
               (_%g196795196869%_
                (lambda (_%g196797196818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196797196818%_))
                      (let ((_%e196802196821%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196797196818%_))))
                        (let ((_%hd196801196825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196802196821%_)))
                              (_%tl196800196828%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196802196821%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196800196828%_))
                              (let ((_%e196805196831%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196800196828%_))))
                                (let ((_%hd196804196835%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196805196831%_)))
                                      (_%tl196803196838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196805196831%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196803196838%_))
                                      (let ((_%e196808196841%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196803196838%_))))
                                        (let ((_%hd196807196845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196808196841%_)))
                                              (_%tl196806196848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196808196841%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196806196848%_))
                                              ((lambda (_%L196851%_
                                                        _%L196853%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196853%_))
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
                               (cons _%L196853%_ '()))
                         (cons _%L196851%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196796196814%_
                                                      _%g196797196818%_)))
                                               _%hd196807196845%_
                                               _%hd196804196835%_)
                                              (_%g196796196814%_
                                               _%g196797196818%_))))
                                      (_%g196796196814%_ _%g196797196818%_))))
                              (_%g196796196814%_ _%g196797196818%_))))
                      (_%g196796196814%_ _%g196797196818%_)))))
          (_%g196795196869%_ _%$stx196792%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx196873%_)
        (let* ((_%g196877196906%_
                (lambda (_%g196878196902%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196878196902%_))))
               (_%g196876197006%_
                (lambda (_%g196878196910%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196878196910%_))
                      (let ((_%e196883196913%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196878196910%_))))
                        (let ((_%hd196882196917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196883196913%_)))
                              (_%tl196881196920%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196883196913%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196881196920%_))
                              (let ((_g203271_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196881196920%_
                                        '0))))
                                (begin
                                  (let ((_g203272_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203271_)
                                               (##vector-length _g203271_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203272_ 2)))
                                        (error "Context expects 2 values"
                                               _g203272_)))
                                  (let ((_%target196884196923%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203271_ 0)))
                                        (_%tl196886196926%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203271_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196886196926%_))
                                        (letrec ((_%loop196887196929%_
                                                  (lambda (_%hd196885196933%_
                                                           _%type196891196936%_
                                                           _%symbol196892196938%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196885196933%_))
                                                        (let ((_%e196888196941%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196885196933%_))))
                  (let ((_%lp-hd196889196945%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196888196941%_)))
                        (_%lp-tl196890196948%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196888196941%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196889196945%_))
                        (let ((_%e196897196951%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196889196945%_))))
                          (let ((_%hd196896196955%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196897196951%_)))
                                (_%tl196895196958%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196897196951%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196895196958%_))
                                (let ((_%e196900196961%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196895196958%_))))
                                  (let ((_%hd196899196965%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196900196961%_)))
                                        (_%tl196898196968%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196900196961%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196898196968%_))
                                        (_%loop196887196929%_
                                         _%lp-tl196890196948%_
                                         (cons _%hd196899196965%_
                                               _%type196891196936%_)
                                         (cons _%hd196896196955%_
                                               _%symbol196892196938%_))
                                        (_%g196877196906%_
                                         _%g196878196910%_))))
                                (_%g196877196906%_ _%g196878196910%_))))
                        (_%g196877196906%_ _%g196878196910%_))))
                (let ((_%type196893196971%_ (reverse _%type196891196936%_))
                      (_%symbol196894196974%_
                       (reverse _%symbol196892196938%_)))
                  ((lambda (_%L196977%_ _%L196979%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196977%_
                                _%L196979%_))
                             (let ((__tmp203273
                                    (lambda (_%g196994196998%_
                                             _%g196995197001%_
                                             _%g196996197003%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g196995197001%_
                                                        (cons _%g196994196998%_
                                                              '())))
                                            _%g196996197003%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp203273
                                '()
                                _%L196977%_
                                _%L196979%_)))))
                   _%type196893196971%_
                   _%symbol196894196974%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196887196929%_
                                           _%target196884196923%_
                                           '()
                                           '()))
                                        (_%g196877196906%_
                                         _%g196878196910%_)))))
                              (_%g196877196906%_ _%g196878196910%_))))
                      (_%g196877196906%_ _%g196878196910%_)))))
          (_%g196876197006%_ _%$stx196873%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx197011%_)
        (let* ((_%__stx202582202583%_ _%$stx197011%_)
               (_%g197016197058%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202582202583%_)))))
          (let ((_%__kont202585202586%_
                 (lambda (_%L197186%_ _%L197188%_ _%L197189%_ _%L197190%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197190%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197189%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197188%_ '()))
                                           (cons _%L197186%_ '())))))))
                (_%__kont202587202588%_
                 (lambda (_%L197105%_ _%L197107%_ _%L197108%_ _%L197109%_)
                   (cons _%L197109%_
                         (cons _%L197108%_
                               (cons _%L197107%_
                                     (cons _%L197105%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match202621202622%_
                   (lambda (_%e197024197136%_
                            _%hd197023197140%_
                            _%tl197022197143%_
                            _%e197027197146%_
                            _%hd197026197150%_
                            _%tl197025197153%_
                            _%e197030197156%_
                            _%hd197029197160%_
                            _%tl197028197163%_
                            _%e197033197166%_
                            _%hd197032197170%_
                            _%tl197031197173%_
                            _%e197036197176%_
                            _%hd197035197180%_
                            _%tl197034197183%_)
                     (let ((_%L197186%_ _%hd197035197180%_)
                           (_%L197188%_ _%hd197032197170%_)
                           (_%L197189%_ _%hd197029197160%_)
                           (_%L197190%_ _%hd197026197150%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L197190%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L197189%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L197188%_)))
                           (_%__kont202585202586%_
                            _%L197186%_
                            _%L197188%_
                            _%L197189%_
                            _%L197190%_)
                           (let ()
                             (declare (not safe))
                             (_%g197016197058%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202582202583%_))
                  (let ((_%e197024197136%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202582202583%_))))
                    (let ((_%tl197022197143%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197024197136%_)))
                          (_%hd197023197140%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197024197136%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197022197143%_))
                          (let ((_%e197027197146%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197022197143%_))))
                            (let ((_%tl197025197153%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197027197146%_)))
                                  (_%hd197026197150%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197027197146%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197025197153%_))
                                  (let ((_%e197030197156%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197025197153%_))))
                                    (let ((_%tl197028197163%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197030197156%_)))
                                          (_%hd197029197160%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197030197156%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197028197163%_))
                                          (let ((_%e197033197166%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl197028197163%_))))
                                            (let ((_%tl197031197173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197033197166%_)))
                                                  (_%hd197032197170%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197033197166%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197031197173%_))
                                                  (let ((_%e197036197176%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl197031197173%_))))
                                                    (let ((_%tl197034197183%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197036197176%_)))
                                                          (_%hd197035197180%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197036197176%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197034197183%_))
                                                          (_%__match202621202622%_
                                                           _%e197024197136%_
                                                           _%hd197023197140%_
                                                           _%tl197022197143%_
                                                           _%e197027197146%_
                                                           _%hd197026197150%_
                                                           _%tl197025197153%_
                                                           _%e197030197156%_
                                                           _%hd197029197160%_
                                                           _%tl197028197163%_
                                                           _%e197033197166%_
                                                           _%hd197032197170%_
                                                           _%tl197031197173%_
                                                           _%e197036197176%_
                                                           _%hd197035197180%_
                                                           _%tl197034197183%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197016197058%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197031197173%_))
                                                      (_%__kont202587202588%_
                                                       _%hd197032197170%_
                                                       _%hd197029197160%_
                                                       _%hd197026197150%_
                                                       _%hd197023197140%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197016197058%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197016197058%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197016197058%_)))))
                          (let () (declare (not safe)) (_%g197016197058%_)))))
                  (let () (declare (not safe)) (_%g197016197058%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx197215%_)
        (let* ((_%g197219197254%_
                (lambda (_%g197220197250%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197220197250%_))))
               (_%g197218197373%_
                (lambda (_%g197220197258%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197220197258%_))
                      (let ((_%e197226197261%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197220197258%_))))
                        (let ((_%hd197225197265%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197226197261%_)))
                              (_%tl197224197268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197226197261%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197224197268%_))
                              (let ((_g203274_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197224197268%_
                                        '0))))
                                (begin
                                  (let ((_g203275_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203274_)
                                               (##vector-length _g203274_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203275_ 2)))
                                        (error "Context expects 2 values"
                                               _g203275_)))
                                  (let ((_%target197227197271%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203274_ 0)))
                                        (_%tl197229197274%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203274_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197229197274%_))
                                        (letrec ((_%loop197230197277%_
                                                  (lambda (_%hd197228197281%_
                                                           _%symbol197234197284%_
                                                           _%method197235197286%_
                                                           _%type-t197236197288%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197228197281%_))
                                                        (let ((_%e197231197291%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197228197281%_))))
                  (let ((_%lp-hd197232197295%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197231197291%_)))
                        (_%lp-tl197233197298%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197231197291%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197232197295%_))
                        (let ((_%e197242197301%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197232197295%_))))
                          (let ((_%hd197241197305%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197242197301%_)))
                                (_%tl197240197308%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197242197301%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197240197308%_))
                                (let ((_%e197245197311%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197240197308%_))))
                                  (let ((_%hd197244197315%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197245197311%_)))
                                        (_%tl197243197318%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197245197311%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197243197318%_))
                                        (let ((_%e197248197321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl197243197318%_))))
                                          (let ((_%hd197247197325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197248197321%_)))
                                                (_%tl197246197328%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197248197321%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197246197328%_))
                                                (_%loop197230197277%_
                                                 _%lp-tl197233197298%_
                                                 (cons _%hd197247197325%_
                                                       _%symbol197234197284%_)
                                                 (cons _%hd197244197315%_
                                                       _%method197235197286%_)
                                                 (cons _%hd197241197305%_
                                                       _%type-t197236197288%_))
                                                (_%g197219197254%_
                                                 _%g197220197258%_))))
                                        (_%g197219197254%_
                                         _%g197220197258%_))))
                                (_%g197219197254%_ _%g197220197258%_))))
                        (_%g197219197254%_ _%g197220197258%_))))
                (let ((_%symbol197237197331%_ (reverse _%symbol197234197284%_))
                      (_%method197238197334%_ (reverse _%method197235197286%_))
                      (_%type-t197239197336%_
                       (reverse _%type-t197236197288%_)))
                  ((lambda (_%L197339%_ _%L197341%_ _%L197342%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197339%_
                                _%L197341%_
                                _%L197342%_))
                             (let ((__tmp203276
                                    (lambda (_%g197358197363%_
                                             _%g197359197366%_
                                             _%g197360197368%_
                                             _%g197361197370%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g197360197368%_
                                                        (cons _%g197359197366%_
                                                              (cons _%g197358197363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g197361197370%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp203276
                                '()
                                _%L197339%_
                                _%L197341%_
                                _%L197342%_)))))
                   _%symbol197237197331%_
                   _%method197238197334%_
                   _%type-t197239197336%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197230197277%_
                                           _%target197227197271%_
                                           '()
                                           '()
                                           '()))
                                        (_%g197219197254%_
                                         _%g197220197258%_)))))
                              (_%g197219197254%_ _%g197220197258%_))))
                      (_%g197219197254%_ _%g197220197258%_)))))
          (_%g197218197373%_ _%$stx197215%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx197378%_)
        (let* ((_%g197382197415%_
                (lambda (_%g197383197411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197383197411%_))))
               (_%g197381197529%_
                (lambda (_%g197383197419%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197383197419%_))
                      (let ((_%e197389197422%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197383197419%_))))
                        (let ((_%hd197388197426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197389197422%_)))
                              (_%tl197387197429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197389197422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197387197429%_))
                              (let ((_%e197392197432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197387197429%_))))
                                (let ((_%hd197391197436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197392197432%_)))
                                      (_%tl197390197439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197392197432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197390197439%_))
                                      (let ((_g203277_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197390197439%_
                                                '0))))
                                        (begin
                                          (let ((_g203278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203277_)
                                                       (##vector-length
                                                        _g203277_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203278_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203278_)))
                                          (let ((_%target197393197442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g203277_ 0)))
                                                (_%tl197395197445%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g203277_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197395197445%_))
                                                (letrec ((_%loop197396197448%_
                                                          (lambda (_%hd197394197452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol197400197455%_
                           _%method197401197457%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd197394197452%_))
                        (let ((_%e197397197460%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd197394197452%_))))
                          (let ((_%lp-hd197398197464%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197397197460%_)))
                                (_%lp-tl197399197467%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197397197460%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd197398197464%_))
                                (let ((_%e197406197470%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd197398197464%_))))
                                  (let ((_%hd197405197474%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197406197470%_)))
                                        (_%tl197404197477%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197406197470%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197404197477%_))
                                        (let ((_%e197409197480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl197404197477%_))))
                                          (let ((_%hd197408197484%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197409197480%_)))
                                                (_%tl197407197487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197409197480%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197407197487%_))
                                                (_%loop197396197448%_
                                                 _%lp-tl197399197467%_
                                                 (cons _%hd197408197484%_
                                                       _%symbol197400197455%_)
                                                 (cons _%hd197405197474%_
                                                       _%method197401197457%_))
                                                (_%g197382197415%_
                                                 _%g197383197419%_))))
                                        (_%g197382197415%_
                                         _%g197383197419%_))))
                                (_%g197382197415%_ _%g197383197419%_))))
                        (let ((_%symbol197402197490%_
                               (reverse _%symbol197400197455%_))
                              (_%method197403197493%_
                               (reverse _%method197401197457%_)))
                          ((lambda (_%L197496%_ _%L197498%_ _%L197499%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L197496%_
                                        _%L197498%_))
                                     (let ((__tmp203279
                                            (lambda (_%g197517197521%_
                                                     _%g197518197524%_
                                                     _%g197519197526%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L197499%_
                                                                (cons _%g197518197524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g197517197521%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g197519197526%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp203279
                                        '()
                                        _%L197496%_
                                        _%L197498%_)))))
                           _%symbol197402197490%_
                           _%method197403197493%_
                           _%hd197391197436%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop197396197448%_
                                                   _%target197393197442%_
                                                   '()
                                                   '()))
                                                (_%g197382197415%_
                                                 _%g197383197419%_)))))
                                      (_%g197382197415%_ _%g197383197419%_))))
                              (_%g197382197415%_ _%g197383197419%_))))
                      (_%g197382197415%_ _%g197383197419%_)))))
          (_%g197381197529%_ _%$stx197378%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx197534%_)
        (let* ((_%g197538197552%_
                (lambda (_%g197539197548%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197539197548%_))))
               (_%g197537197593%_
                (lambda (_%g197539197556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197539197556%_))
                      (let ((_%e197543197559%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197539197556%_))))
                        (let ((_%hd197542197563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197543197559%_)))
                              (_%tl197541197566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197543197559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197541197566%_))
                              (let ((_%e197546197569%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197541197566%_))))
                                (let ((_%hd197545197573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197546197569%_)))
                                      (_%tl197544197576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197546197569%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197544197576%_))
                                      ((lambda (_%L197579%_)
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
                                                           (cons _%L197579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197545197573%_)
                                      (_%g197538197552%_ _%g197539197556%_))))
                              (_%g197538197552%_ _%g197539197556%_))))
                      (_%g197538197552%_ _%g197539197556%_)))))
          (_%g197537197593%_ _%$stx197534%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx197597%_)
        (let* ((_%g197601197655%_
                (lambda (_%g197602197651%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197602197651%_))))
               (_%g197600197836%_
                (lambda (_%g197602197659%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197602197659%_))
                      (let ((_%e197616197662%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197602197659%_))))
                        (let ((_%hd197615197666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197616197662%_)))
                              (_%tl197614197669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197616197662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197614197669%_))
                              (let ((_%e197619197672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197614197669%_))))
                                (let ((_%hd197618197676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197619197672%_)))
                                      (_%tl197617197679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197619197672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197617197679%_))
                                      (let ((_%e197622197682%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197617197679%_))))
                                        (let ((_%hd197621197686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197622197682%_)))
                                              (_%tl197620197689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197622197682%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197620197689%_))
                                              (let ((_%e197625197692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197620197689%_))))
                                                (let ((_%hd197624197696%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197625197692%_)))
                                                      (_%tl197623197699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197625197692%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197623197699%_))
                                                      (let ((_%e197628197702%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197623197699%_))))
                (let ((_%hd197627197706%_
                       (let () (declare (not safe)) (##car _%e197628197702%_)))
                      (_%tl197626197709%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197628197702%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197626197709%_))
                      (let ((_%e197631197712%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197626197709%_))))
                        (let ((_%hd197630197716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197631197712%_)))
                              (_%tl197629197719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197631197712%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197629197719%_))
                              (let ((_%e197634197722%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197629197719%_))))
                                (let ((_%hd197633197726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197634197722%_)))
                                      (_%tl197632197729%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197634197722%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197632197729%_))
                                      (let ((_%e197637197732%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197632197729%_))))
                                        (let ((_%hd197636197736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197637197732%_)))
                                              (_%tl197635197739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197637197732%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197635197739%_))
                                              (let ((_%e197640197742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197635197739%_))))
                                                (let ((_%hd197639197746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197640197742%_)))
                                                      (_%tl197638197749%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197640197742%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197638197749%_))
                                                      (let ((_%e197643197752%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197638197749%_))))
                (let ((_%hd197642197756%_
                       (let () (declare (not safe)) (##car _%e197643197752%_)))
                      (_%tl197641197759%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197643197752%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197641197759%_))
                      (let ((_%e197646197762%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197641197759%_))))
                        (let ((_%hd197645197766%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197646197762%_)))
                              (_%tl197644197769%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197646197762%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197644197769%_))
                              (let ((_%e197649197772%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197644197769%_))))
                                (let ((_%hd197648197776%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197649197772%_)))
                                      (_%tl197647197779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197649197772%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197647197779%_))
                                      ((lambda (_%L197782%_
                                                _%L197784%_
                                                _%L197785%_
                                                _%L197786%_
                                                _%L197787%_
                                                _%L197788%_
                                                _%L197789%_
                                                _%L197790%_
                                                _%L197791%_
                                                _%L197792%_
                                                _%L197793%_)
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
                                                           (cons _%L197793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L197792%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197791%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197790%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197789%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197788%_ '()))
                                           (cons _%L197787%_
                                                 (cons _%L197786%_
                                                       (cons _%L197785%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197784%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L197782%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd197648197776%_
                                       _%hd197645197766%_
                                       _%hd197642197756%_
                                       _%hd197639197746%_
                                       _%hd197636197736%_
                                       _%hd197633197726%_
                                       _%hd197630197716%_
                                       _%hd197627197706%_
                                       _%hd197624197696%_
                                       _%hd197621197686%_
                                       _%hd197618197676%_)
                                      (_%g197601197655%_ _%g197602197659%_))))
                              (_%g197601197655%_ _%g197602197659%_))))
                      (_%g197601197655%_ _%g197602197659%_))))
              (_%g197601197655%_ _%g197602197659%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197601197655%_
                                               _%g197602197659%_))))
                                      (_%g197601197655%_ _%g197602197659%_))))
                              (_%g197601197655%_ _%g197602197659%_))))
                      (_%g197601197655%_ _%g197602197659%_))))
              (_%g197601197655%_ _%g197602197659%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197601197655%_
                                               _%g197602197659%_))))
                                      (_%g197601197655%_ _%g197602197659%_))))
                              (_%g197601197655%_ _%g197602197659%_))))
                      (_%g197601197655%_ _%g197602197659%_)))))
          (_%g197600197836%_ _%$stx197597%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx197840%_)
        (let* ((_%g197844197858%_
                (lambda (_%g197845197854%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197845197854%_))))
               (_%g197843197899%_
                (lambda (_%g197845197862%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197845197862%_))
                      (let ((_%e197849197865%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197845197862%_))))
                        (let ((_%hd197848197869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197849197865%_)))
                              (_%tl197847197872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197849197865%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197847197872%_))
                              (let ((_%e197852197875%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197847197872%_))))
                                (let ((_%hd197851197879%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197852197875%_)))
                                      (_%tl197850197882%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197852197875%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197850197882%_))
                                      ((lambda (_%L197885%_)
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
                                                           (cons _%L197885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197851197879%_)
                                      (_%g197844197858%_ _%g197845197862%_))))
                              (_%g197844197858%_ _%g197845197862%_))))
                      (_%g197844197858%_ _%g197845197862%_)))))
          (_%g197843197899%_ _%$stx197840%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx197903%_)
        (let* ((_%g197907197921%_
                (lambda (_%g197908197917%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197908197917%_))))
               (_%g197906197962%_
                (lambda (_%g197908197925%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197908197925%_))
                      (let ((_%e197912197928%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197908197925%_))))
                        (let ((_%hd197911197932%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197912197928%_)))
                              (_%tl197910197935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197912197928%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197910197935%_))
                              (let ((_%e197915197938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197910197935%_))))
                                (let ((_%hd197914197942%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197915197938%_)))
                                      (_%tl197913197945%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197915197938%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197913197945%_))
                                      ((lambda (_%L197948%_)
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
                                                           (cons _%L197948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197914197942%_)
                                      (_%g197907197921%_ _%g197908197925%_))))
                              (_%g197907197921%_ _%g197908197925%_))))
                      (_%g197907197921%_ _%g197908197925%_)))))
          (_%g197906197962%_ _%$stx197903%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx197966%_)
        (let* ((_%g197970197992%_
                (lambda (_%g197971197988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197971197988%_))))
               (_%g197969198061%_
                (lambda (_%g197971197996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197971197996%_))
                      (let ((_%e197977197999%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197971197996%_))))
                        (let ((_%hd197976198003%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197977197999%_)))
                              (_%tl197975198006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197977197999%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197975198006%_))
                              (let ((_%e197980198009%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197975198006%_))))
                                (let ((_%hd197979198013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197980198009%_)))
                                      (_%tl197978198016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197980198009%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197978198016%_))
                                      (let ((_%e197983198019%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197978198016%_))))
                                        (let ((_%hd197982198023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197983198019%_)))
                                              (_%tl197981198026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197983198019%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197981198026%_))
                                              (let ((_%e197986198029%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197981198026%_))))
                                                (let ((_%hd197985198033%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197986198029%_)))
                                                      (_%tl197984198036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197986198029%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197984198036%_))
                                                      ((lambda (_%L198039%_
                                                                _%L198041%_
                                                                _%L198042%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L198042%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198041%_ '()))
                                   (cons _%L198039%_ '())))))
               _%hd197985198033%_
               _%hd197982198023%_
               _%hd197979198013%_)
              (_%g197970197992%_ _%g197971197996%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197970197992%_
                                               _%g197971197996%_))))
                                      (_%g197970197992%_ _%g197971197996%_))))
                              (_%g197970197992%_ _%g197971197996%_))))
                      (_%g197970197992%_ _%g197971197996%_)))))
          (_%g197969198061%_ _%$stx197966%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx198065%_)
        (let* ((_%g198069198091%_
                (lambda (_%g198070198087%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198070198087%_))))
               (_%g198068198160%_
                (lambda (_%g198070198095%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198070198095%_))
                      (let ((_%e198076198098%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198070198095%_))))
                        (let ((_%hd198075198102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198076198098%_)))
                              (_%tl198074198105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198076198098%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198074198105%_))
                              (let ((_%e198079198108%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198074198105%_))))
                                (let ((_%hd198078198112%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198079198108%_)))
                                      (_%tl198077198115%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198079198108%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198077198115%_))
                                      (let ((_%e198082198118%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198077198115%_))))
                                        (let ((_%hd198081198122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198082198118%_)))
                                              (_%tl198080198125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198082198118%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198080198125%_))
                                              (let ((_%e198085198128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198080198125%_))))
                                                (let ((_%hd198084198132%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198085198128%_)))
                                                      (_%tl198083198135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198085198128%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198083198135%_))
                                                      ((lambda (_%L198138%_
                                                                _%L198140%_
                                                                _%L198141%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L198141%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198140%_ '()))
                                   (cons _%L198138%_ '())))))
               _%hd198084198132%_
               _%hd198081198122%_
               _%hd198078198112%_)
              (_%g198069198091%_ _%g198070198095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198069198091%_
                                               _%g198070198095%_))))
                                      (_%g198069198091%_ _%g198070198095%_))))
                              (_%g198069198091%_ _%g198070198095%_))))
                      (_%g198069198091%_ _%g198070198095%_)))))
          (_%g198068198160%_ _%$stx198065%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx198164%_)
        (let* ((_%g198168198182%_
                (lambda (_%g198169198178%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198169198178%_))))
               (_%g198167198223%_
                (lambda (_%g198169198186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198169198186%_))
                      (let ((_%e198173198189%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198169198186%_))))
                        (let ((_%hd198172198193%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198173198189%_)))
                              (_%tl198171198196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198173198189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198171198196%_))
                              (let ((_%e198176198199%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198171198196%_))))
                                (let ((_%hd198175198203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198176198199%_)))
                                      (_%tl198174198206%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198176198199%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198174198206%_))
                                      ((lambda (_%L198209%_)
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
                                                           (cons _%L198209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd198175198203%_)
                                      (_%g198168198182%_ _%g198169198186%_))))
                              (_%g198168198182%_ _%g198169198186%_))))
                      (_%g198168198182%_ _%g198169198186%_)))))
          (_%g198167198223%_ _%$stx198164%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx198227%_)
        (let* ((_%g198231198249%_
                (lambda (_%g198232198245%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198232198245%_))))
               (_%g198230198304%_
                (lambda (_%g198232198253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198232198253%_))
                      (let ((_%e198237198256%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198232198253%_))))
                        (let ((_%hd198236198260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198237198256%_)))
                              (_%tl198235198263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198237198256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198235198263%_))
                              (let ((_%e198240198266%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198235198263%_))))
                                (let ((_%hd198239198270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198240198266%_)))
                                      (_%tl198238198273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198240198266%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198238198273%_))
                                      (let ((_%e198243198276%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198238198273%_))))
                                        (let ((_%hd198242198280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198243198276%_)))
                                              (_%tl198241198283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198243198276%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198241198283%_))
                                              ((lambda (_%L198286%_
                                                        _%L198288%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198288%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198286%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198242198280%_
                                               _%hd198239198270%_)
                                              (_%g198231198249%_
                                               _%g198232198253%_))))
                                      (_%g198231198249%_ _%g198232198253%_))))
                              (_%g198231198249%_ _%g198232198253%_))))
                      (_%g198231198249%_ _%g198232198253%_)))))
          (_%g198230198304%_ _%$stx198227%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx198308%_)
        (let* ((_%__stx202650202651%_ _%$stx198308%_)
               (_%g198315198376%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202650202651%_)))))
          (let ((_%__kont202653202654%_
                 (lambda (_%L198614%_ _%L198616%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198616%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198614%_ '()))
                                     '())))))
                (_%__kont202655202656%_
                 (lambda (_%L198553%_ _%L198555%_ _%L198556%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198556%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198555%_ '()))
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
                                 (cons _%L198553%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont202657202658%_
                 (lambda (_%L198477%_ _%L198479%_)
                   (cons _%L198479%_ (cons _%L198477%_ (cons '#f '())))))
                (_%__kont202659202660%_
                 (lambda (_%L198427%_ _%L198429%_ _%L198430%_)
                   (cons _%L198430%_
                         (cons _%L198429%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L198427%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202650202651%_))
                (let ((_%e198321198584%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202650202651%_))))
                  (let ((_%tl198319198591%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198321198584%_)))
                        (_%hd198320198588%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198321198584%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198319198591%_))
                        (let ((_%e198324198594%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198319198591%_))))
                          (let ((_%tl198322198601%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198324198594%_)))
                                (_%hd198323198598%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198324198594%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198322198601%_))
                                (let ((_%e198327198604%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198322198601%_))))
                                  (let ((_%tl198325198611%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198327198604%_)))
                                        (_%hd198326198608%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198327198604%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198325198611%_))
                                        (_%__kont202653202654%_
                                         _%hd198326198608%_
                                         _%hd198323198598%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198325198611%_))
                                            (let ((_%e198342198529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198325198611%_))))
                                              (let ((_%tl198340198536%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198342198529%_)))
                                                    (_%hd198341198533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198342198529%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd198341198533%_))
                                                    (let ((_%e198343198539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd198341198533%_))))
                                                      (if (equal? _%e198343198539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198340198536%_))
                      (let ((_%e198346198543%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198340198536%_))))
                        (let ((_%tl198344198550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198346198543%_)))
                              (_%hd198345198547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198346198543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198344198550%_))
                              (_%__kont202655202656%_
                               _%hd198345198547%_
                               _%hd198326198608%_
                               _%hd198323198598%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd198326198608%_))
                                  (let ((_%e198367198413%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd198326198608%_))))
                                    (declare (not safe))
                                    (_%g198315198376%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g198315198376%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd198326198608%_))
                          (let ((_%e198367198413%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198326198608%_))))
                            (if (equal? _%e198367198413%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl198340198536%_))
                                    (_%__kont202659202660%_
                                     _%hd198341198533%_
                                     _%hd198323198598%_
                                     _%hd198320198588%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g198315198376%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g198315198376%_))))
                          (let () (declare (not safe)) (_%g198315198376%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd198326198608%_))
                      (let ((_%e198367198413%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd198326198608%_))))
                        (if (equal? _%e198367198413%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198340198536%_))
                                (_%__kont202659202660%_
                                 _%hd198341198533%_
                                 _%hd198323198598%_
                                 _%hd198320198588%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198315198376%_)))
                            (let () (declare (not safe)) (_%g198315198376%_))))
                      (let () (declare (not safe)) (_%g198315198376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd198326198608%_))
                                                        (let ((_%e198367198413%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd198326198608%_))))
                  (if (equal? _%e198367198413%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198340198536%_))
                          (_%__kont202659202660%_
                           _%hd198341198533%_
                           _%hd198323198598%_
                           _%hd198320198588%_)
                          (let () (declare (not safe)) (_%g198315198376%_)))
                      (let () (declare (not safe)) (_%g198315198376%_))))
                (let () (declare (not safe)) (_%g198315198376%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd198326198608%_))
                                                (let ((_%e198367198413%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd198326198608%_))))
                                                  (declare (not safe))
                                                  (_%g198315198376%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198315198376%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl198322198601%_))
                                    (_%__kont202657202658%_
                                     _%hd198323198598%_
                                     _%hd198320198588%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g198315198376%_))))))
                        (let () (declare (not safe)) (_%g198315198376%_)))))
                (let () (declare (not safe)) (_%g198315198376%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx198635%_)
        (let* ((_%g198639198668%_
                (lambda (_%g198640198664%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198640198664%_))))
               (_%g198638198777%_
                (lambda (_%g198640198672%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198640198672%_))
                      (let ((_%e198644198675%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198640198672%_))))
                        (let ((_%hd198643198679%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198644198675%_)))
                              (_%tl198642198682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198644198675%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198642198682%_))
                              (let ((_g203280_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198642198682%_
                                        '0))))
                                (begin
                                  (let ((_g203281_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203280_)
                                               (##vector-length _g203280_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203281_ 2)))
                                        (error "Context expects 2 values"
                                               _g203281_)))
                                  (let ((_%target198645198685%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203280_ 0)))
                                        (_%tl198647198688%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203280_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198647198688%_))
                                        (letrec ((_%loop198648198691%_
                                                  (lambda (_%hd198646198695%_
                                                           _%clause198652198698%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198646198695%_))
                                                        (let ((_%e198649198701%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198646198695%_))))
                  (let ((_%lp-hd198650198705%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198649198701%_)))
                        (_%lp-tl198651198708%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198649198701%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd198650198705%_))
                        (let ((_g203282_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd198650198705%_
                                  '0))))
                          (begin
                            (let ((_g203283_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g203282_)
                                         (##vector-length _g203282_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g203283_ 2)))
                                  (error "Context expects 2 values"
                                         _g203283_)))
                            (let ((_%target198654198711%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g203282_ 0)))
                                  (_%tl198656198714%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g203282_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198656198714%_))
                                  (letrec ((_%loop198657198717%_
                                            (lambda (_%hd198655198721%_
                                                     _%clause198661198724%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198655198721%_))
                                                  (let ((_%e198658198727%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd198655198721%_))))
                                                    (let ((_%lp-hd198659198731%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198658198727%_)))
                                                          (_%lp-tl198660198734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198658198727%_))))
                                                      (_%loop198657198717%_
                                                       _%lp-tl198660198734%_
                                                       (cons _%lp-hd198659198731%_
                                                             _%clause198661198724%_))))
                                                  (let ((_%clause198662198737%_
                                                         (reverse _%clause198661198724%_)))
                                                    (_%loop198648198691%_
                                                     _%lp-tl198651198708%_
                                                     (cons _%clause198662198737%_
                                                           _%clause198652198698%_)))))))
                                    (_%loop198657198717%_
                                     _%target198654198711%_
                                     '()))
                                  (_%g198639198668%_ _%g198640198672%_)))))
                        (_%g198639198668%_ _%g198640198672%_))))
                (let ((_%clause198653198741%_
                       (reverse _%clause198652198698%_)))
                  ((lambda (_%L198745%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp203284
                                              (lambda (_%g198760198765%_
                                                       _%g198761198768%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp203285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g198762198771%_ _%g198763198774%_)
                             (cons _%g198762198771%_ _%g198763198774%_))))
                      (declare (not safe))
                      (__foldr1 __tmp203285 '() _%g198760198765%_)))
              _%g198761198768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp203284
                                          '()
                                          _%L198745%_)))
                                 '())))
                   _%clause198653198741%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198648198691%_
                                           _%target198645198685%_
                                           '()))
                                        (_%g198639198668%_
                                         _%g198640198672%_)))))
                              (_%g198639198668%_ _%g198640198672%_))))
                      (_%g198639198668%_ _%g198640198672%_)))))
          (_%g198638198777%_ _%$stx198635%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx198783%_)
        (let* ((_%g198787198805%_
                (lambda (_%g198788198801%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198788198801%_))))
               (_%g198786198860%_
                (lambda (_%g198788198809%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198788198809%_))
                      (let ((_%e198793198812%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198788198809%_))))
                        (let ((_%hd198792198816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198793198812%_)))
                              (_%tl198791198819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198793198812%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198791198819%_))
                              (let ((_%e198796198822%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198791198819%_))))
                                (let ((_%hd198795198826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198796198822%_)))
                                      (_%tl198794198829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198796198822%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198794198829%_))
                                      (let ((_%e198799198832%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198794198829%_))))
                                        (let ((_%hd198798198836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198799198832%_)))
                                              (_%tl198797198839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198799198832%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198797198839%_))
                                              ((lambda (_%L198842%_
                                                        _%L198844%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198844%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198842%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198798198836%_
                                               _%hd198795198826%_)
                                              (_%g198787198805%_
                                               _%g198788198809%_))))
                                      (_%g198787198805%_ _%g198788198809%_))))
                              (_%g198787198805%_ _%g198788198809%_))))
                      (_%g198787198805%_ _%g198788198809%_)))))
          (_%g198786198860%_ _%$stx198783%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx198864%_)
        (let* ((_%g198868198886%_
                (lambda (_%g198869198882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198869198882%_))))
               (_%g198867198941%_
                (lambda (_%g198869198890%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198869198890%_))
                      (let ((_%e198874198893%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198869198890%_))))
                        (let ((_%hd198873198897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198874198893%_)))
                              (_%tl198872198900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198874198893%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198872198900%_))
                              (let ((_%e198877198903%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198872198900%_))))
                                (let ((_%hd198876198907%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198877198903%_)))
                                      (_%tl198875198910%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198877198903%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198875198910%_))
                                      (let ((_%e198880198913%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198875198910%_))))
                                        (let ((_%hd198879198917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198880198913%_)))
                                              (_%tl198878198920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198880198913%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198878198920%_))
                                              ((lambda (_%L198923%_
                                                        _%L198925%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198925%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198923%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198879198917%_
                                               _%hd198876198907%_)
                                              (_%g198868198886%_
                                               _%g198869198890%_))))
                                      (_%g198868198886%_ _%g198869198890%_))))
                              (_%g198868198886%_ _%g198869198890%_))))
                      (_%g198868198886%_ _%g198869198890%_)))))
          (_%g198867198941%_ _%$stx198864%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx198945%_)
        (let* ((_%g198949198978%_
                (lambda (_%g198950198974%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198950198974%_))))
               (_%g198948199078%_
                (lambda (_%g198950198982%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198950198982%_))
                      (let ((_%e198955198985%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198950198982%_))))
                        (let ((_%hd198954198989%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198955198985%_)))
                              (_%tl198953198992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198955198985%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198953198992%_))
                              (let ((_g203286_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198953198992%_
                                        '0))))
                                (begin
                                  (let ((_g203287_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203286_)
                                               (##vector-length _g203286_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203287_ 2)))
                                        (error "Context expects 2 values"
                                               _g203287_)))
                                  (let ((_%target198956198995%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203286_ 0)))
                                        (_%tl198958198998%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203286_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198958198998%_))
                                        (letrec ((_%loop198959199001%_
                                                  (lambda (_%hd198957199005%_
                                                           _%rule198963199008%_
                                                           _%proc198964199010%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198957199005%_))
                                                        (let ((_%e198960199013%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198957199005%_))))
                  (let ((_%lp-hd198961199017%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198960199013%_)))
                        (_%lp-tl198962199020%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198960199013%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd198961199017%_))
                        (let ((_%e198969199023%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd198961199017%_))))
                          (let ((_%hd198968199027%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198969199023%_)))
                                (_%tl198967199030%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198969199023%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198967199030%_))
                                (let ((_%e198972199033%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198967199030%_))))
                                  (let ((_%hd198971199037%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198972199033%_)))
                                        (_%tl198970199040%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198972199033%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198970199040%_))
                                        (_%loop198959199001%_
                                         _%lp-tl198962199020%_
                                         (cons _%hd198971199037%_
                                               _%rule198963199008%_)
                                         (cons _%hd198968199027%_
                                               _%proc198964199010%_))
                                        (_%g198949198978%_
                                         _%g198950198982%_))))
                                (_%g198949198978%_ _%g198950198982%_))))
                        (_%g198949198978%_ _%g198950198982%_))))
                (let ((_%rule198965199043%_ (reverse _%rule198963199008%_))
                      (_%proc198966199046%_ (reverse _%proc198964199010%_)))
                  ((lambda (_%L199049%_ _%L199051%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L199049%_
                                _%L199051%_))
                             (let ((__tmp203288
                                    (lambda (_%g199066199070%_
                                             _%g199067199073%_
                                             _%g199068199075%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g199067199073%_
                                                        (cons _%g199066199070%_
                                                              '())))
                                            _%g199068199075%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp203288
                                '()
                                _%L199049%_
                                _%L199051%_)))))
                   _%rule198965199043%_
                   _%proc198966199046%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198959199001%_
                                           _%target198956198995%_
                                           '()
                                           '()))
                                        (_%g198949198978%_
                                         _%g198950198982%_)))))
                              (_%g198949198978%_ _%g198950198982%_))))
                      (_%g198949198978%_ _%g198950198982%_)))))
          (_%g198948199078%_ _%$stx198945%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx199083%_)
        (let* ((_%g199087199105%_
                (lambda (_%g199088199101%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199088199101%_))))
               (_%g199086199160%_
                (lambda (_%g199088199109%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199088199109%_))
                      (let ((_%e199093199112%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199088199109%_))))
                        (let ((_%hd199092199116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199093199112%_)))
                              (_%tl199091199119%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199093199112%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199091199119%_))
                              (let ((_%e199096199122%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199091199119%_))))
                                (let ((_%hd199095199126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199096199122%_)))
                                      (_%tl199094199129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199096199122%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199094199129%_))
                                      (let ((_%e199099199132%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199094199129%_))))
                                        (let ((_%hd199098199136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199099199132%_)))
                                              (_%tl199097199139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199099199132%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199097199139%_))
                                              ((lambda (_%L199142%_
                                                        _%L199144%_)
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
                                                   (cons _%L199144%_ '()))
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
                 (cons _%L199142%_ '())))
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
                                   (cons _%L199144%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199098199136%_
                                               _%hd199095199126%_)
                                              (_%g199087199105%_
                                               _%g199088199109%_))))
                                      (_%g199087199105%_ _%g199088199109%_))))
                              (_%g199087199105%_ _%g199088199109%_))))
                      (_%g199087199105%_ _%g199088199109%_)))))
          (_%g199086199160%_ _%$stx199083%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx199164%_)
        (let* ((_%__stx202768202769%_ _%$stx199164%_)
               (_%g199169199194%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202768202769%_)))))
          (let ((_%__kont202771202772%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202773202774%_
                 (lambda (_%L199241%_ _%L199243%_ _%L199244%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L199244%_ (cons _%L199243%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L199241%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202768202769%_))
                (let ((_%e199173199270%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202768202769%_))))
                  (let ((_%tl199171199277%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199173199270%_)))
                        (_%hd199172199274%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199173199270%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199171199277%_))
                        (_%__kont202771202772%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199171199277%_))
                            (let ((_%e199182199211%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199171199277%_))))
                              (let ((_%tl199180199218%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199182199211%_)))
                                    (_%hd199181199215%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199182199211%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199181199215%_))
                                    (let ((_%e199185199221%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd199181199215%_))))
                                      (let ((_%tl199183199228%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199185199221%_)))
                                            (_%hd199184199225%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199185199221%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199183199228%_))
                                            (let ((_%e199188199231%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199183199228%_))))
                                              (let ((_%tl199186199238%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199188199231%_)))
                                                    (_%hd199187199235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199188199231%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199186199238%_))
                                                    (_%__kont202773202774%_
                                                     _%tl199180199218%_
                                                     _%hd199187199235%_
                                                     _%hd199184199225%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199169199194%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199169199194%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199169199194%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g199169199194%_))))))
                (let () (declare (not safe)) (_%g199169199194%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx199288%_)
        (let* ((_%__stx202812202813%_ _%$stx199288%_)
               (_%g199293199324%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202812202813%_)))))
          (let ((_%__kont202815202816%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202817202818%_
                 (lambda (_%L199391%_ _%L199393%_ _%L199394%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L199394%_
                                           (let ((__tmp203289
                                                  (lambda (_%g199414199417%_
                                                           _%g199415199420%_)
                                                    (cons _%g199414199417%_
                                                          _%g199415199420%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp203289
                                              '()
                                              _%L199393%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L199391%_)
                                     '()))))))
            (let ((_%__match202855202856%_
                   (lambda (_%e199303199331%_
                            _%hd199302199335%_
                            _%tl199301199338%_
                            _%e199306199341%_
                            _%hd199305199345%_
                            _%tl199304199348%_
                            _%e199309199351%_
                            _%hd199308199355%_
                            _%tl199307199358%_
                            _%__splice202819202820%_
                            _%target199310199361%_
                            _%tl199312199364%_)
                     (letrec ((_%loop199313199367%_
                               (lambda (_%hd199311199371%_ _%sig199317199374%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd199311199371%_))
                                     (let ((_%e199314199377%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd199311199371%_))))
                                       (let ((_%lp-tl199316199384%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199314199377%_)))
                                             (_%lp-hd199315199381%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199314199377%_))))
                                         (_%loop199313199367%_
                                          _%lp-tl199316199384%_
                                          (cons _%lp-hd199315199381%_
                                                _%sig199317199374%_))))
                                     (let ((_%sig199318199387%_
                                            (reverse _%sig199317199374%_)))
                                       (_%__kont202817202818%_
                                        _%tl199304199348%_
                                        _%sig199318199387%_
                                        _%hd199308199355%_))))))
                       (_%loop199313199367%_ _%target199310199361%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202812202813%_))
                  (let ((_%e199297199430%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202812202813%_))))
                    (let ((_%tl199295199437%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199297199430%_)))
                          (_%hd199296199434%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199297199430%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199295199437%_))
                          (_%__kont202815202816%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199295199437%_))
                              (let ((_%e199306199341%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199295199437%_))))
                                (let ((_%tl199304199348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199306199341%_)))
                                      (_%hd199305199345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199306199341%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199305199345%_))
                                      (let ((_%e199309199351%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199305199345%_))))
                                        (let ((_%tl199307199358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199309199351%_)))
                                              (_%hd199308199355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199309199351%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl199307199358%_))
                                              (let ((_%__splice202819202820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl199307199358%_
                                                        '0))))
                                                (let ((_%tl199312199364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202819202820%_
                                                          '1)))
                                                      (_%target199310199361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202819202820%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199312199364%_))
                                                      (_%__match202855202856%_
                                                       _%e199297199430%_
                                                       _%hd199296199434%_
                                                       _%tl199295199437%_
                                                       _%e199306199341%_
                                                       _%hd199305199345%_
                                                       _%tl199304199348%_
                                                       _%e199309199351%_
                                                       _%hd199308199355%_
                                                       _%tl199307199358%_
                                                       _%__splice202819202820%_
                                                       _%target199310199361%_
                                                       _%tl199312199364%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199293199324%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199293199324%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199293199324%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199293199324%_))))))
                  (let () (declare (not safe)) (_%g199293199324%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx199449%_)
        (let* ((_%__stx202858202859%_ _%$stx199449%_)
               (_%g199454199501%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202858202859%_)))))
          (let ((_%__kont202861202862%_
                 (lambda (_%L199663%_ _%L199665%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L199665%_
                               (let ((__tmp203290
                                      (lambda (_%g199685199688%_
                                               _%g199686199691%_)
                                        (cons _%g199685199688%_
                                              _%g199686199691%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp203290 '() _%L199663%_))))))
                (_%__kont202865202866%_
                 (lambda (_%L199558%_ _%L199560%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L199560%_
                               (let ((__tmp203291
                                      (lambda (_%g199577199580%_
                                               _%g199578199583%_)
                                        (cons _%g199577199580%_
                                              _%g199578199583%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp203291 '() _%L199558%_)))))))
            (let* ((_%__match202925202926%_
                    (lambda (_%e199483199508%_
                             _%hd199482199512%_
                             _%tl199481199515%_
                             _%e199486199518%_
                             _%hd199485199522%_
                             _%tl199484199525%_
                             _%__splice202867202868%_
                             _%target199487199528%_
                             _%tl199489199531%_)
                      (letrec ((_%loop199490199534%_
                                (lambda (_%hd199488199538%_
                                         _%sig199494199541%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199488199538%_))
                                      (let ((_%e199491199544%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199488199538%_))))
                                        (let ((_%lp-tl199493199551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199491199544%_)))
                                              (_%lp-hd199492199548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199491199544%_))))
                                          (_%loop199490199534%_
                                           _%lp-tl199493199551%_
                                           (cons _%lp-hd199492199548%_
                                                 _%sig199494199541%_))))
                                      (let ((_%sig199495199554%_
                                             (reverse _%sig199494199541%_)))
                                        (_%__kont202865202866%_
                                         _%sig199495199554%_
                                         _%hd199485199522%_))))))
                        (_%loop199490199534%_ _%target199487199528%_ '()))))
                   (_%__match202917202918%_
                    (lambda (_%e199483199508%_
                             _%hd199482199512%_
                             _%tl199481199515%_
                             _%e199486199518%_
                             _%hd199485199522%_
                             _%tl199484199525%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl199484199525%_))
                          (let ((_%__splice202867202868%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl199484199525%_
                                    '0))))
                            (let ((_%tl199489199531%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202867202868%_
                                      '1)))
                                  (_%target199487199528%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202867202868%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199489199531%_))
                                  (_%__match202925202926%_
                                   _%e199483199508%_
                                   _%hd199482199512%_
                                   _%tl199481199515%_
                                   _%e199486199518%_
                                   _%hd199485199522%_
                                   _%tl199484199525%_
                                   _%__splice202867202868%_
                                   _%target199487199528%_
                                   _%tl199489199531%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g199454199501%_)))))
                          (let () (declare (not safe)) (_%g199454199501%_)))))
                   (_%__match202905202906%_
                    (lambda (_%e199460199593%_
                             _%hd199459199597%_
                             _%tl199458199600%_
                             _%e199463199603%_
                             _%hd199462199607%_
                             _%tl199461199610%_
                             _%e199466199613%_
                             _%hd199465199617%_
                             _%tl199464199620%_
                             _%e199469199623%_
                             _%hd199468199627%_
                             _%tl199467199630%_
                             _%__splice202863202864%_
                             _%target199470199633%_
                             _%tl199472199636%_)
                      (letrec ((_%loop199473199639%_
                                (lambda (_%hd199471199643%_
                                         _%sig199477199646%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199471199643%_))
                                      (let ((_%e199474199649%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199471199643%_))))
                                        (let ((_%lp-tl199476199656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199474199649%_)))
                                              (_%lp-hd199475199653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199474199649%_))))
                                          (_%loop199473199639%_
                                           _%lp-tl199476199656%_
                                           (cons _%lp-hd199475199653%_
                                                 _%sig199477199646%_))))
                                      (let ((_%sig199478199659%_
                                             (reverse _%sig199477199646%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199464199620%_))
                                            (_%__kont202861202862%_
                                             _%sig199478199659%_
                                             _%hd199462199607%_)
                                            (_%__match202917202918%_
                                             _%e199460199593%_
                                             _%hd199459199597%_
                                             _%tl199458199600%_
                                             _%e199463199603%_
                                             _%hd199462199607%_
                                             _%tl199461199610%_)))))))
                        (_%loop199473199639%_ _%target199470199633%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202858202859%_))
                  (let ((_%e199460199593%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202858202859%_))))
                    (let ((_%tl199458199600%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199460199593%_)))
                          (_%hd199459199597%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199460199593%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199458199600%_))
                          (let ((_%e199463199603%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199458199600%_))))
                            (let ((_%tl199461199610%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199463199603%_)))
                                  (_%hd199462199607%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199463199603%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199461199610%_))
                                  (let ((_%e199466199613%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199461199610%_))))
                                    (let ((_%tl199464199620%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199466199613%_)))
                                          (_%hd199465199617%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199466199613%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd199465199617%_))
                                          (let ((_%e199469199623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd199465199617%_))))
                                            (let ((_%tl199467199630%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199469199623%_)))
                                                  (_%hd199468199627%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199469199623%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd199468199627%_))
                                                  (if (let ((__tmp203292
                                                             |gxc[1]#_g203293_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp203292
                                                         _%hd199468199627%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl199467199630%_))
                                                          (let ((_%__splice202863202864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199467199630%_ '0))))
                    (let ((_%tl199472199636%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202863202864%_ '1)))
                          (_%target199470199633%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202863202864%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199472199636%_))
                          (_%__match202905202906%_
                           _%e199460199593%_
                           _%hd199459199597%_
                           _%tl199458199600%_
                           _%e199463199603%_
                           _%hd199462199607%_
                           _%tl199461199610%_
                           _%e199466199613%_
                           _%hd199465199617%_
                           _%tl199464199620%_
                           _%e199469199623%_
                           _%hd199468199627%_
                           _%tl199467199630%_
                           _%__splice202863202864%_
                           _%target199470199633%_
                           _%tl199472199636%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199461199610%_))
                              (let ((_%__splice202867202868%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199461199610%_
                                        '0))))
                                (let ((_%tl199489199531%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202867202868%_
                                          '1)))
                                      (_%target199487199528%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202867202868%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199489199531%_))
                                      (_%__match202925202926%_
                                       _%e199460199593%_
                                       _%hd199459199597%_
                                       _%tl199458199600%_
                                       _%e199463199603%_
                                       _%hd199462199607%_
                                       _%tl199461199610%_
                                       _%__splice202867202868%_
                                       _%target199487199528%_
                                       _%tl199489199531%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g199454199501%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199454199501%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl199461199610%_))
                      (let ((_%__splice202867202868%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl199461199610%_
                                '0))))
                        (let ((_%tl199489199531%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202867202868%_ '1)))
                              (_%target199487199528%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202867202868%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199489199531%_))
                              (_%__match202925202926%_
                               _%e199460199593%_
                               _%hd199459199597%_
                               _%tl199458199600%_
                               _%e199463199603%_
                               _%hd199462199607%_
                               _%tl199461199610%_
                               _%__splice202867202868%_
                               _%target199487199528%_
                               _%tl199489199531%_)
                              (let ()
                                (declare (not safe))
                                (_%g199454199501%_)))))
                      (let () (declare (not safe)) (_%g199454199501%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl199461199610%_))
                  (let ((_%__splice202867202868%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199461199610%_ '0))))
                    (let ((_%tl199489199531%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202867202868%_ '1)))
                          (_%target199487199528%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202867202868%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199489199531%_))
                          (_%__match202925202926%_
                           _%e199460199593%_
                           _%hd199459199597%_
                           _%tl199458199600%_
                           _%e199463199603%_
                           _%hd199462199607%_
                           _%tl199461199610%_
                           _%__splice202867202868%_
                           _%target199487199528%_
                           _%tl199489199531%_)
                          (let () (declare (not safe)) (_%g199454199501%_)))))
                  (let () (declare (not safe)) (_%g199454199501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl199461199610%_))
                                                      (let ((_%__splice202867202868%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl199461199610%_ '0))))
                (let ((_%tl199489199531%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202867202868%_ '1)))
                      (_%target199487199528%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202867202868%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199489199531%_))
                      (_%__match202925202926%_
                       _%e199460199593%_
                       _%hd199459199597%_
                       _%tl199458199600%_
                       _%e199463199603%_
                       _%hd199462199607%_
                       _%tl199461199610%_
                       _%__splice202867202868%_
                       _%target199487199528%_
                       _%tl199489199531%_)
                      (let () (declare (not safe)) (_%g199454199501%_)))))
              (let () (declare (not safe)) (_%g199454199501%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl199461199610%_))
                                              (let ((_%__splice202867202868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl199461199610%_
                                                        '0))))
                                                (let ((_%tl199489199531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202867202868%_
                                                          '1)))
                                                      (_%target199487199528%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202867202868%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199489199531%_))
                                                      (_%__match202925202926%_
                                                       _%e199460199593%_
                                                       _%hd199459199597%_
                                                       _%tl199458199600%_
                                                       _%e199463199603%_
                                                       _%hd199462199607%_
                                                       _%tl199461199610%_
                                                       _%__splice202867202868%_
                                                       _%target199487199528%_
                                                       _%tl199489199531%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199454199501%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199454199501%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199461199610%_))
                                      (let ((_%__splice202867202868%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199461199610%_
                                                '0))))
                                        (let ((_%tl199489199531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202867202868%_
                                                  '1)))
                                              (_%target199487199528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202867202868%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199489199531%_))
                                              (_%__match202925202926%_
                                               _%e199460199593%_
                                               _%hd199459199597%_
                                               _%tl199458199600%_
                                               _%e199463199603%_
                                               _%hd199462199607%_
                                               _%tl199461199610%_
                                               _%__splice202867202868%_
                                               _%target199487199528%_
                                               _%tl199489199531%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199454199501%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199454199501%_))))))
                          (let () (declare (not safe)) (_%g199454199501%_)))))
                  (let () (declare (not safe)) (_%g199454199501%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx200848%_ _%id200850%_)
        (let ((_%proc200854%_
               (let ((__tmp203294
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200850%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp203294))))
          (if (let () (declare (not safe)) (procedure? _%proc200854%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx200848%_
                 _%id200850%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx200839%_ _%id200841%_)
        (let ((_%klass200845%_
               (let ((__tmp203295
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200841%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp203295))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass200845%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx200839%_
                 _%id200841%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx200089%_ _%proc200091%_ _%sig200092%_)
        (letrec ((_%signature-arity200094%_
                  (lambda (_%args200771%_)
                    (let _%loop200774%_ ((_%rest200777%_ _%args200771%_)
                                         (_%count200779%_ '0))
                      (let* ((_%rest200780200791%_ _%rest200777%_)
                             (_%E200784200797%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest200780200791%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K200787200828%_
                               (lambda (_%rest200825%_)
                                 (let ((__tmp203296
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count200779%_ '1))))
                                   (declare (not safe))
                                   (_%loop200774%_
                                    _%rest200825%_
                                    __tmp203296))))
                              (_%K200786200817%_ (lambda () _%count200779%_))
                              (_%K200785200805%_
                               (lambda () (cons _%count200779%_ '()))))
                          (let ((_%try-match200782200821%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest200780200791%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200786200817%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200785200805%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest200780200791%_))
                                (let* ((_%tl200789200832%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200780200791%_)))
                                       (_%rest200836%_ _%tl200789200832%_))
                                  (declare (not safe))
                                  (_%K200787200828%_ _%rest200836%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match200782200821%_)))))))))
                 (_%make-signature200096%_
                  (lambda (_%args200653%_
                           _%return200655%_
                           _%effect200656%_
                           _%unchecked200657%_)
                    (let ((__tmp203297
                           (lambda (_%g200658200660%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx200089%_
                                _%g200658200660%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp203297 _%args200653%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx200089%_ _%return200655%_))
                    (if _%unchecked200657%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx200089%_
                           _%unchecked200657%_))
                        '#!void)
                    (let ((_%arity200664%_
                           (let ((__tmp203298
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args200653%_))))
                             (declare (not safe))
                             (_%signature-arity200094%_ __tmp203298))))
                      (if _%effect200656%_
                          (let ((_%effect200667%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect200656%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect200667%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect200667%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx200089%_
                                   _%proc200091%_
                                   _%effect200667%_))))
                          '#!void)
                      (cons _%arity200664%_
                            (cons (let* ((_%g200670200693%_
                                          (lambda (_%g200671200689%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g200671200689%_))))
                                         (_%g200669200767%_
                                          (lambda (_%g200671200697%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g200671200697%_))
                                                (let ((_%e200678200700%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g200671200697%_))))
                                                  (let ((_%hd200677200704%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200678200700%_)))
                                                        (_%tl200676200707%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200678200700%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200676200707%_))
                                                        (let ((_%e200681200710%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200676200707%_))))
                  (let ((_%hd200680200714%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200681200710%_)))
                        (_%tl200679200717%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200681200710%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200679200717%_))
                        (let ((_%e200684200720%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200679200717%_))))
                          (let ((_%hd200683200724%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200684200720%_)))
                                (_%tl200682200727%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200684200720%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200682200727%_))
                                (let ((_%e200687200730%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200682200727%_))))
                                  (let ((_%hd200686200734%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200687200730%_)))
                                        (_%tl200685200737%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200687200730%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200685200737%_))
                                        ((lambda (_%L200740%_
                                                  _%L200742%_
                                                  _%L200743%_
                                                  _%L200744%_)
                                           (let ()
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
                             (cons _%L200744%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200743%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L200742%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L200740%_ '()))
                   (cons 'origin:
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'builtin))
                                           '()))
                               '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200686200734%_
                                         _%hd200683200724%_
                                         _%hd200680200714%_
                                         _%hd200677200704%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200670200693%_
                                           _%g200671200697%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200670200693%_ _%g200671200697%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g200670200693%_ _%g200671200697%_)))))
                (let ()
                  (declare (not safe))
                  (_%g200670200693%_ _%g200671200697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200670200693%_
                                                   _%g200671200697%_)))))
                                         (__tmp203299
                                          (list _%args200653%_
                                                _%return200655%_
                                                _%effect200656%_
                                                _%unchecked200657%_)))
                                    (declare (not safe))
                                    (_%g200669200767%_ __tmp203299))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx200089%_ _%proc200091%_))
          (let* ((_%__stx202936202937%_ _%sig200092%_)
                 (_%g200103200206%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx202936202937%_)))))
            (let ((_%__kont202939202940%_
                   (lambda (_%L200634%_ _%L200636%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature200096%_
                        _%L200636%_
                        _%L200634%_
                        '#f
                        '#f))))
                  (_%__kont202941202942%_
                   (lambda (_%L200585%_ _%L200587%_ _%L200588%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature200096%_
                        _%L200588%_
                        _%L200587%_
                        _%L200585%_
                        '#f))))
                  (_%__kont202943202944%_
                   (lambda (_%L200509%_ _%L200511%_ _%L200512%_)
                     (let ((__tmp203300
                            (let ((__tmp203301
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc200091%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp203301))))
                       (declare (not safe))
                       (_%make-signature200096%_
                        _%L200512%_
                        _%L200511%_
                        _%L200509%_
                        __tmp203300))))
                  (_%__kont202945202946%_
                   (lambda (_%L200415%_ _%L200417%_ _%L200418%_ _%L200419%_)
                     (let ((__tmp203302
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L200415%_))))
                       (declare (not safe))
                       (_%make-signature200096%_
                        _%L200419%_
                        _%L200418%_
                        '#f
                        __tmp203302))))
                  (_%__kont202947202948%_
                   (lambda (_%L200322%_ _%L200324%_)
                     (let ((__tmp203303
                            (let ((__tmp203304
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc200091%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp203304))))
                       (declare (not safe))
                       (_%make-signature200096%_
                        _%L200324%_
                        _%L200322%_
                        '#f
                        __tmp203303))))
                  (_%__kont202949202950%_
                   (lambda (_%L200257%_ _%L200259%_ _%L200260%_)
                     (let ((__tmp203305
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L200257%_))))
                       (declare (not safe))
                       (_%make-signature200096%_
                        _%L200260%_
                        _%L200259%_
                        '#f
                        __tmp203305)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202936202937%_))
                  (let ((_%e200109200614%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202936202937%_))))
                    (let ((_%tl200107200621%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200109200614%_)))
                          (_%hd200108200618%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200109200614%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200107200621%_))
                          (let ((_%e200112200624%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200107200621%_))))
                            (let ((_%tl200110200631%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200112200624%_)))
                                  (_%hd200111200628%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200112200624%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200110200631%_))
                                  (_%__kont202939202940%_
                                   _%hd200111200628%_
                                   _%hd200108200618%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200110200631%_))
                                      (let ((_%e200124200561%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200110200631%_))))
                                        (let ((_%tl200122200568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200124200561%_)))
                                              (_%hd200123200565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200124200561%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd200123200565%_))
                                              (let ((_%e200125200571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd200123200565%_))))
                                                (if (equal? _%e200125200571%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200122200568%_))
                                                        (let ((_%e200128200575%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200122200568%_))))
                  (let ((_%tl200126200582%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200128200575%_)))
                        (_%hd200127200579%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200128200575%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl200126200582%_))
                        (_%__kont202941202942%_
                         _%hd200127200579%_
                         _%hd200111200628%_
                         _%hd200108200618%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl200126200582%_))
                            (let ((_%e200147200495%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl200126200582%_))))
                              (let ((_%tl200145200502%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200147200495%_)))
                                    (_%hd200146200499%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200147200495%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd200146200499%_))
                                    (let ((_%e200148200505%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd200146200499%_))))
                                      (if (equal? _%e200148200505%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200145200502%_))
                                              (_%__kont202943202944%_
                                               _%hd200127200579%_
                                               _%hd200111200628%_
                                               _%hd200108200618%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200145200502%_))
                                                  (let ((_%e200172200405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200145200502%_))))
                                                    (let ((_%tl200170200412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200172200405%_)))
                                                          (_%hd200171200409%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200172200405%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200170200412%_))
                                                          (_%__kont202945202946%_
                                                           _%hd200171200409%_
                                                           _%hd200127200579%_
                                                           _%hd200111200628%_
                                                           _%hd200108200618%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200103200206%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200103200206%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200103200206%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200103200206%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g200103200206%_))))))
                (let () (declare (not safe)) (_%g200103200206%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e200125200571%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl200122200568%_))
                                                            (_%__kont202947202948%_
                                                             _%hd200111200628%_
                                                             _%hd200108200618%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl200122200568%_))
                        (let ((_%e200200200247%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200122200568%_))))
                          (let ((_%tl200198200254%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200200200247%_)))
                                (_%hd200199200251%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200200200247%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200198200254%_))
                                (_%__kont202949202950%_
                                 _%hd200199200251%_
                                 _%hd200111200628%_
                                 _%hd200108200618%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g200103200206%_)))))
                        (let () (declare (not safe)) (_%g200103200206%_))))
                (let () (declare (not safe)) (_%g200103200206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200103200206%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200103200206%_))))))
                          (let () (declare (not safe)) (_%g200103200206%_)))))
                  (let () (declare (not safe)) (_%g200103200206%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig199700%_)
        (let* ((_%g199703199783%_
                (lambda (_%g199704199779%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199704199779%_))))
               (_%g199702200085%_
                (lambda (_%g199704199787%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199704199787%_))
                      (let ((_%e199712199790%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199704199787%_))))
                        (let ((_%hd199711199794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199712199790%_)))
                              (_%tl199710199797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199712199790%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199710199797%_))
                              (let ((_%e199715199800%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199710199797%_))))
                                (let ((_%hd199714199804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199715199800%_)))
                                      (_%tl199713199807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199715199800%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd199714199804%_))
                                      (let ((_%e199716199810%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd199714199804%_))))
                                        (if (equal? _%e199716199810%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199713199807%_))
                                                (let ((_%e199719199814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199713199807%_))))
                                                  (let ((_%hd199718199818%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199719199814%_)))
                                                        (_%tl199717199821%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199719199814%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199718199818%_))
                                                        (let ((_%e199722199824%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199718199818%_))))
                  (let ((_%hd199721199828%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199722199824%_)))
                        (_%tl199720199831%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199722199824%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd199721199828%_))
                        (if (let ((__tmp203306 |gxc[1]#_g203307_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp203306
                               _%hd199721199828%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199720199831%_))
                                (let ((_%e199725199834%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199720199831%_))))
                                  (let ((_%hd199724199838%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199725199834%_)))
                                        (_%tl199723199841%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199725199834%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199723199841%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199717199821%_))
                                            (let ((_%e199728199844%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199717199821%_))))
                                              (let ((_%hd199727199848%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199728199844%_)))
                                                    (_%tl199726199851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199728199844%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199727199848%_))
                                                    (let ((_%e199729199854%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199727199848%_))))
                                                      (if (equal? _%e199729199854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199726199851%_))
                      (let ((_%e199732199858%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199726199851%_))))
                        (let ((_%hd199731199862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199732199858%_)))
                              (_%tl199730199865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199732199858%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199731199862%_))
                              (let ((_%e199735199868%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd199731199862%_))))
                                (let ((_%hd199734199872%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199735199868%_)))
                                      (_%tl199733199875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199735199868%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199734199872%_))
                                      (if (let ((__tmp203308
                                                 |gxc[1]#_g203309_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp203308
                                             _%hd199734199872%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199733199875%_))
                                              (let ((_%e199738199878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199733199875%_))))
                                                (let ((_%hd199737199882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199738199878%_)))
                                                      (_%tl199736199885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199738199878%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199736199885%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199730199865%_))
                                                          (let ((_%e199741199888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl199730199865%_))))
                    (let ((_%hd199740199892%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199741199888%_)))
                          (_%tl199739199895%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199741199888%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199740199892%_))
                          (let ((_%e199742199898%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199740199892%_))))
                            (if (equal? _%e199742199898%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199739199895%_))
                                    (let ((_%e199745199902%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl199739199895%_))))
                                      (let ((_%hd199744199906%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199745199902%_)))
                                            (_%tl199743199909%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199745199902%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199744199906%_))
                                            (let ((_%e199748199912%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199744199906%_))))
                                              (let ((_%hd199747199916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199748199912%_)))
                                                    (_%tl199746199919%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199748199912%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199747199916%_))
                                                    (if (let ((__tmp203310
                                                               |gxc[1]#_g203311_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp203310
                                                           _%hd199747199916%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199746199919%_))
                                                            (let ((_%e199751199922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl199746199919%_))))
                      (let ((_%hd199750199926%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199751199922%_)))
                            (_%tl199749199929%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199751199922%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199749199929%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199743199909%_))
                                (let ((_%e199754199932%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199743199909%_))))
                                  (let ((_%hd199753199936%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199754199932%_)))
                                        (_%tl199752199939%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199754199932%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd199753199936%_))
                                        (let ((_%e199755199942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199753199936%_))))
                                          (if (equal? _%e199755199942%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199752199939%_))
                                                  (let ((_%e199758199946%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199752199939%_))))
                                                    (let ((_%hd199757199950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199758199946%_)))
                                                          (_%tl199756199953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199758199946%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199757199950%_))
                                                          (let ((_%e199761199956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd199757199950%_))))
                    (let ((_%hd199760199960%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199761199956%_)))
                          (_%tl199759199963%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199761199956%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199760199960%_))
                          (if (let ((__tmp203312 |gxc[1]#_g203313_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp203312
                                 _%hd199760199960%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199759199963%_))
                                  (let ((_%e199764199966%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199759199963%_))))
                                    (let ((_%hd199763199970%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199764199966%_)))
                                          (_%tl199762199973%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199764199966%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199762199973%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199756199953%_))
                                              (let ((_%e199767199976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199756199953%_))))
                                                (let ((_%hd199766199980%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199767199976%_)))
                                                      (_%tl199765199983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199767199976%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd199766199980%_))
                                                      (let ((_%e199768199986%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd199766199980%_))))
                (if (equal? _%e199768199986%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199765199983%_))
                        (let ((_%e199771199990%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199765199983%_))))
                          (let ((_%hd199770199994%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199771199990%_)))
                                (_%tl199769199997%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199771199990%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd199770199994%_))
                                (let ((_%e199774200000%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd199770199994%_))))
                                  (let ((_%hd199773200004%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199774200000%_)))
                                        (_%tl199772200007%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199774200000%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199773200004%_))
                                        (if (let ((__tmp203314
                                                   |gxc[1]#_g203315_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp203314
                                               _%hd199773200004%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199772200007%_))
                                                (let ((_%e199777200010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199772200007%_))))
                                                  (let ((_%hd199776200014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199777200010%_)))
                                                        (_%tl199775200017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199777200010%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199775200017%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl199769199997%_))
                                                            ((lambda (_%L200020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L200022%_
                              _%L200023%_
                              _%L200024%_
                              _%L200025%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L200022%_))
                           (cons _%L200022%_
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
                       (cons _%L200024%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L200020%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd199776200014%_
                     _%hd199763199970%_
                     _%hd199750199926%_
                     _%hd199737199882%_
                     _%hd199724199838%_)
                    (let ()
                      (declare (not safe))
                      (_%g199703199783%_ _%g199704199787%_)))
                (let ()
                  (declare (not safe))
                  (_%g199703199783%_ _%g199704199787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199703199783%_
                                                   _%g199704199787%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199703199783%_
                                               _%g199704199787%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199703199783%_
                                           _%g199704199787%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199703199783%_ _%g199704199787%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g199703199783%_ _%g199704199787%_)))
                    (let ()
                      (declare (not safe))
                      (_%g199703199783%_ _%g199704199787%_))))
              (let ()
                (declare (not safe))
                (_%g199703199783%_ _%g199704199787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199703199783%_
                                                 _%g199704199787%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199703199783%_
                                             _%g199704199787%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199703199783%_ _%g199704199787%_)))
                              (let ()
                                (declare (not safe))
                                (_%g199703199783%_ _%g199704199787%_)))
                          (let ()
                            (declare (not safe))
                            (_%g199703199783%_ _%g199704199787%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199703199783%_ _%g199704199787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199703199783%_
                                                     _%g199704199787%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199703199783%_
                                                 _%g199704199787%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199703199783%_
                                           _%g199704199787%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199703199783%_ _%g199704199787%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199703199783%_ _%g199704199787%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g199703199783%_ _%g199704199787%_)))
                (let ()
                  (declare (not safe))
                  (_%g199703199783%_ _%g199704199787%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199703199783%_
                                                       _%g199704199787%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199703199783%_
                                               _%g199704199787%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199703199783%_ _%g199704199787%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199703199783%_ _%g199704199787%_))))
                          (let ()
                            (declare (not safe))
                            (_%g199703199783%_ _%g199704199787%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199703199783%_ _%g199704199787%_)))
              (let ()
                (declare (not safe))
                (_%g199703199783%_ _%g199704199787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199703199783%_
                                                 _%g199704199787%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199703199783%_
                                             _%g199704199787%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199703199783%_
                                         _%g199704199787%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199703199783%_ _%g199704199787%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199703199783%_ _%g199704199787%_)))
                  (let ()
                    (declare (not safe))
                    (_%g199703199783%_ _%g199704199787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199703199783%_
                                                       _%g199704199787%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199703199783%_
                                               _%g199704199787%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199703199783%_
                                           _%g199704199787%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199703199783%_ _%g199704199787%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199703199783%_ _%g199704199787%_)))
                        (let ()
                          (declare (not safe))
                          (_%g199703199783%_ _%g199704199787%_)))))
                (let ()
                  (declare (not safe))
                  (_%g199703199783%_ _%g199704199787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199703199783%_
                                                   _%g199704199787%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199703199783%_
                                               _%g199704199787%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199703199783%_
                                         _%g199704199787%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199703199783%_ _%g199704199787%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199703199783%_ _%g199704199787%_))))))
          (declare (not safe))
          (_%g199702200085%_ _%sig199700%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx200857%_)
        (let* ((_%g200860200878%_
                (lambda (_%g200861200874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200861200874%_))))
               (_%g200859200933%_
                (lambda (_%g200861200882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200861200882%_))
                      (let ((_%e200866200885%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200861200882%_))))
                        (let ((_%hd200865200889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200866200885%_)))
                              (_%tl200864200892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200866200885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200864200892%_))
                              (let ((_%e200869200895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200864200892%_))))
                                (let ((_%hd200868200899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200869200895%_)))
                                      (_%tl200867200902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200869200895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200867200902%_))
                                      (let ((_%e200872200905%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200867200902%_))))
                                        (let ((_%hd200871200909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200872200905%_)))
                                              (_%tl200870200912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200872200905%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200870200912%_))
                                              ((lambda (_%L200915%_
                                                        _%L200917%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200917%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200915%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx200857%_
                                                          _%L200917%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx200857%_
                                                          _%L200915%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200917%_
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
                                                   (cons _%L200915%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200860200878%_
                                                      _%g200861200882%_)))
                                               _%hd200871200909%_
                                               _%hd200868200899%_)
                                              (_%g200860200878%_
                                               _%g200861200882%_))))
                                      (_%g200860200878%_ _%g200861200882%_))))
                              (_%g200860200878%_ _%g200861200882%_))))
                      (_%g200860200878%_ _%g200861200882%_)))))
          (_%g200859200933%_ _%stx200857%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx200937%_)
        (let* ((_%g200940200964%_
                (lambda (_%g200941200960%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200941200960%_))))
               (_%g200939201247%_
                (lambda (_%g200941200968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200941200968%_))
                      (let ((_%e200946200971%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200941200968%_))))
                        (let ((_%hd200945200975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200946200971%_)))
                              (_%tl200944200978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200946200971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200944200978%_))
                              (let ((_%e200949200981%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200944200978%_))))
                                (let ((_%hd200948200985%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200949200981%_)))
                                      (_%tl200947200988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200949200981%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200947200988%_))
                                      (let ((_g203316_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200947200988%_
                                                '0))))
                                        (begin
                                          (let ((_g203317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203316_)
                                                       (##vector-length
                                                        _g203316_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203317_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203317_)))
                                          (let ((_%target200950200991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g203316_ 0)))
                                                (_%tl200952200994%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g203316_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200952200994%_))
                                                (letrec ((_%loop200953200997%_
                                                          (lambda (_%hd200951201001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature200957201004%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200951201001%_))
                        (let ((_%e200954201007%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200951201001%_))))
                          (let ((_%lp-hd200955201011%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200954201007%_)))
                                (_%lp-tl200956201014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200954201007%_))))
                            (_%loop200953200997%_
                             _%lp-tl200956201014%_
                             (cons _%lp-hd200955201011%_
                                   _%signature200957201004%_))))
                        (let ((_%signature200958201017%_
                               (reverse _%signature200957201004%_)))
                          ((lambda (_%L201021%_ _%L201023%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L201023%_))
                                 (let* ((_%g201041201056%_
                                         (lambda (_%g201042201052%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g201042201052%_))))
                                        (_%g201040201235%_
                                         (lambda (_%g201042201060%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g201042201060%_))
                                               (let ((_%e201047201063%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g201042201060%_))))
                                                 (let ((_%hd201046201067%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e201047201063%_)))
                                                       (_%tl201045201070%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e201047201063%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201045201070%_))
                                                       (let ((_%e201050201073%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201045201070%_))))
                 (let ((_%hd201049201077%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201050201073%_)))
                       (_%tl201048201080%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201050201073%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl201048201080%_))
                       ((lambda (_%L201083%_ _%L201085%_)
                          (let ()
                            (let* ((_%g201101201109%_
                                    (lambda (_%g201102201105%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g201102201105%_))))
                                   (_%g201100201231%_
                                    (lambda (_%g201102201113%_)
                                      ((lambda (_%L201116%_)
                                         (let ()
                                           (let* ((_%unchecked201129%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L201083%_)))
                                                  (_%g201132201140%_
                                                   (lambda (_%g201133201136%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g201133201136%_))))
                                                  (_%g201131201163%_
                                                   (lambda (_%g201133201144%_)
                                                     ((lambda (_%L201147%_)
                                                        (let ()
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (cons _%L201116%_ (cons _%L201147%_ '())))))
              _%g201133201144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g201131201163%_
                                              (if _%unchecked201129%_
                                                  (let* ((_%g201167201182%_
                                                          (lambda (_%g201168201178%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g201168201178%_))))
                                                         (_%g201166201227%_
                                                          (lambda (_%g201168201186%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g201168201186%_))
                        (let ((_%e201173201189%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g201168201186%_))))
                          (let ((_%hd201172201193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201173201189%_)))
                                (_%tl201171201196%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201173201189%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201171201196%_))
                                (let ((_%e201176201199%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201171201196%_))))
                                  (let ((_%hd201175201203%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201176201199%_)))
                                        (_%tl201174201206%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201176201199%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201174201206%_))
                                        ((lambda (_%L201209%_ _%L201211%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L201211%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L201085%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L201209%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd201175201203%_
                                         _%hd201172201193%_)
                                        (_%g201167201182%_
                                         _%g201168201186%_))))
                                (_%g201167201182%_ _%g201168201186%_))))
                        (_%g201167201182%_ _%g201168201186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g201166201227%_
                                                     _%unchecked201129%_))
                                                  '(begin))))))
                                       _%g201102201113%_))))
                              (_%g201100201231%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L201023%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201085%_ '()))
                     (cons '#f (cons 'signature: (cons _%L201083%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd201049201077%_
                        _%hd201046201067%_)
                       (_%g201041201056%_ _%g201042201060%_))))
               (_%g201041201056%_ _%g201042201060%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201041201056%_
                                                _%g201042201060%_)))))
                                   (_%g201040201235%_
                                    (let ((__tmp203318
                                           (let ((__tmp203319
                                                  (lambda (_%g201238201241%_
                                                           _%g201239201244%_)
                                                    (cons _%g201238201241%_
                                                          _%g201239201244%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp203319
                                              '()
                                              _%L201021%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx200937%_
                                       _%L201023%_
                                       __tmp203318))))
                                 (_%g200940200964%_ _%g200941200968%_)))
                           _%signature200958201017%_
                           _%hd200948200985%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200953200997%_
                                                   _%target200950200991%_
                                                   '()))
                                                (_%g200940200964%_
                                                 _%g200941200968%_)))))
                                      (_%g200940200964%_ _%g200941200968%_))))
                              (_%g200940200964%_ _%g200941200968%_))))
                      (_%g200940200964%_ _%g200941200968%_)))))
          (_%g200939201247%_ _%stx200937%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx201252%_)
        (let* ((_%g201255201279%_
                (lambda (_%g201256201275%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201256201275%_))))
               (_%g201254202162%_
                (lambda (_%g201256201283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201256201283%_))
                      (let ((_%e201261201286%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201256201283%_))))
                        (let ((_%hd201260201290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201261201286%_)))
                              (_%tl201259201293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201261201286%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201259201293%_))
                              (let ((_%e201264201296%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201259201293%_))))
                                (let ((_%hd201263201300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201264201296%_)))
                                      (_%tl201262201303%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201264201296%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl201262201303%_))
                                      (let ((_g203320_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl201262201303%_
                                                '0))))
                                        (begin
                                          (let ((_g203321_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203320_)
                                                       (##vector-length
                                                        _g203320_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203321_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203321_)))
                                          (let ((_%target201265201306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g203320_ 0)))
                                                (_%tl201267201309%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g203320_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201267201309%_))
                                                (letrec ((_%loop201268201312%_
                                                          (lambda (_%hd201266201316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature201272201319%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201266201316%_))
                        (let ((_%e201269201322%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd201266201316%_))))
                          (let ((_%lp-hd201270201326%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201269201322%_)))
                                (_%lp-tl201271201329%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201269201322%_))))
                            (_%loop201268201312%_
                             _%lp-tl201271201329%_
                             (cons _%lp-hd201270201326%_
                                   _%case-signature201272201319%_))))
                        (let ((_%case-signature201273201332%_
                               (reverse _%case-signature201272201319%_)))
                          ((lambda (_%L201336%_ _%L201338%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L201338%_))
                                 (let* ((_%signatures201369%_
                                         (map (lambda (_%g201355201357%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx201252%_
                                                   _%L201338%_
                                                   _%g201355201357%_)))
                                              (let ((__tmp203322
                                                     (lambda (_%g201360201363%_
                                                              _%g201361201366%_)
                                                       (cons _%g201360201363%_
                                                             _%g201361201366%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp203322
                                                 '()
                                                 _%L201336%_))))
                                        (_%g201372201398%_
                                         (lambda (_%g201373201394%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g201373201394%_))))
                                        (_%g201371202158%_
                                         (lambda (_%g201373201402%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g201373201402%_))
                                               (let ((_g203323_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g201373201402%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g203324_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g203323_)
                        (##vector-length _g203323_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g203324_ 2)))
                 (error "Context expects 2 values" _g203324_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target201376201405%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g203323_
                                                             0)))
                                                         (_%tl201378201408%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g203323_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201378201408%_))
                                                         (letrec ((_%loop201379201411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd201377201415%_
                                    _%sig201383201418%_
                                    _%arity201384201420%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd201377201415%_))
                                 (let ((_%e201380201423%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd201377201415%_))))
                                   (let ((_%lp-hd201381201427%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e201380201423%_)))
                                         (_%lp-tl201382201430%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e201380201423%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd201381201427%_))
                                         (let ((_%e201389201433%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd201381201427%_))))
                                           (let ((_%hd201388201437%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201389201433%_)))
                                                 (_%tl201387201440%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201389201433%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201387201440%_))
                                                 (let ((_%e201392201443%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201387201440%_))))
                                                   (let ((_%hd201391201447%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201392201443%_)))
                                                         (_%tl201390201450%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201392201443%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201390201450%_))
                                                         (_%loop201379201411%_
                                                          _%lp-tl201382201430%_
                                                          (cons _%hd201391201447%_
                                                                _%sig201383201418%_)
                                                          (cons _%hd201388201437%_
                                                                _%arity201384201420%_))
                                                         (_%g201372201398%_
                                                          _%g201373201402%_))))
                                                 (_%g201372201398%_
                                                  _%g201373201402%_))))
                                         (_%g201372201398%_
                                          _%g201373201402%_))))
                                 (let ((_%sig201385201453%_
                                        (reverse _%sig201383201418%_))
                                       (_%arity201386201456%_
                                        (reverse _%arity201384201420%_)))
                                   ((lambda (_%L201459%_ _%L201461%_)
                                      (let ()
                                        (let* ((_%g201478201486%_
                                                (lambda (_%g201479201482%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g201479201482%_))))
                                               (_%g201477202143%_
                                                (lambda (_%g201479201490%_)
                                                  ((lambda (_%L201493%_)
                                                     (let ()
                                                       (let* ((_%g201506201514%_
                                                               (lambda (_%g201507201510%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g201507201510%_))))
                      (_%g201505201536%_
                       (lambda (_%g201507201518%_)
                         ((lambda (_%L201521%_)
                            (let ()
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'begin))
                                    (cons _%L201493%_
                                          (cons _%L201521%_ '())))))
                          _%g201507201518%_))))
                 (_%g201505201536%_
                  (let ((_g203325_
                         (let _%loop201540%_ ((_%rest201543%_
                                               _%signatures201369%_)
                                              (_%unchecked-proc201545%_ '#f)
                                              (_%unchecked-clauses201546%_
                                               '()))
                           (let* ((_%rest201547201555%_ _%rest201543%_)
                                  (_%else201549201567%_
                                   (lambda ()
                                     (values _%unchecked-proc201545%_
                                             (reverse!
                                              _%unchecked-clauses201546%_))))
                                  (_%K201551202008%_
                                   (lambda (_%rest201571%_ _%hd201573%_)
                                     (let* ((_%g201575201662%_
                                             (lambda (_%g201576201658%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g201576201658%_))))
                                            (_%g201574202004%_
                                             (lambda (_%g201576201666%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g201576201666%_))
                                                   (let ((_%e201585201669%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g201576201666%_))))
                                                     (let ((_%hd201584201673%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201585201669%_)))
                                                           (_%tl201583201676%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201585201669%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl201583201676%_))
                                                           (let ((_%e201588201679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl201583201676%_))))
                     (let ((_%hd201587201683%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201588201679%_)))
                           (_%tl201586201686%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201588201679%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd201587201683%_))
                           (let ((_%e201591201689%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd201587201683%_))))
                             (let ((_%hd201590201693%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201591201689%_)))
                                   (_%tl201589201696%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201591201689%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl201589201696%_))
                                   (let ((_%e201594201699%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl201589201696%_))))
                                     (let ((_%hd201593201703%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201594201699%_)))
                                           (_%tl201592201706%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201594201699%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd201593201703%_))
                                           (let ((_%e201595201709%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd201593201703%_))))
                                             (if (equal? _%e201595201709%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201592201706%_))
                                                     (let ((_%e201598201713%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl201592201706%_))))
                                                       (let ((_%hd201597201717%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e201598201713%_)))
                     (_%tl201596201720%_
                      (let () (declare (not safe)) (##cdr _%e201598201713%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd201597201717%_))
                     (let ((_%e201601201723%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd201597201717%_))))
                       (let ((_%hd201600201727%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201601201723%_)))
                             (_%tl201599201730%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201601201723%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd201600201727%_))
                             (if (let ((__tmp203327 |gxc[1]#_g203328_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp203327
                                    _%hd201600201727%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201599201730%_))
                                     (let ((_%e201604201733%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201599201730%_))))
                                       (let ((_%hd201603201737%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201604201733%_)))
                                             (_%tl201602201740%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201604201733%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl201602201740%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201596201720%_))
                                                 (let ((_%e201607201743%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201596201720%_))))
                                                   (let ((_%hd201606201747%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201607201743%_)))
                                                         (_%tl201605201750%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201607201743%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd201606201747%_))
                                                         (let ((_%e201608201753%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd201606201747%_))))
                   (if (equal? _%e201608201753%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl201605201750%_))
                           (let ((_%e201611201757%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl201605201750%_))))
                             (let ((_%hd201610201761%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201611201757%_)))
                                   (_%tl201609201764%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201611201757%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd201610201761%_))
                                   (let ((_%e201614201767%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd201610201761%_))))
                                     (let ((_%hd201613201771%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201614201767%_)))
                                           (_%tl201612201774%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201614201767%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd201613201771%_))
                                           (if (let ((__tmp203329
                                                      |gxc[1]#_g203330_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp203329
                                                  _%hd201613201771%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl201612201774%_))
                                                   (let ((_%e201617201777%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl201612201774%_))))
                                                     (let ((_%hd201616201781%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201617201777%_)))
                                                           (_%tl201615201784%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201617201777%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl201615201784%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl201609201764%_))
                       (let ((_%e201620201787%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl201609201764%_))))
                         (let ((_%hd201619201791%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201620201787%_)))
                               (_%tl201618201794%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201620201787%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd201619201791%_))
                               (let ((_%e201621201797%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd201619201791%_))))
                                 (if (equal? _%e201621201797%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl201618201794%_))
                                         (let ((_%e201624201801%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl201618201794%_))))
                                           (let ((_%hd201623201805%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201624201801%_)))
                                                 (_%tl201622201808%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201624201801%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201623201805%_))
                                                 (let ((_%e201627201811%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd201623201805%_))))
                                                   (let ((_%hd201626201815%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201627201811%_)))
                                                         (_%tl201625201818%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201627201811%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd201626201815%_))
                                                         (if (let ((__tmp203331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g203332_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp203331 _%hd201626201815%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl201625201818%_))
                         (let ((_%e201630201821%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl201625201818%_))))
                           (let ((_%hd201629201825%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201630201821%_)))
                                 (_%tl201628201828%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201630201821%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl201628201828%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201622201808%_))
                                     (let ((_%e201633201831%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201622201808%_))))
                                       (let ((_%hd201632201835%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201633201831%_)))
                                             (_%tl201631201838%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201633201831%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd201632201835%_))
                                             (let ((_%e201634201841%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd201632201835%_))))
                                               (if (equal? _%e201634201841%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201631201838%_))
                                                       (let ((_%e201637201845%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201631201838%_))))
                 (let ((_%hd201636201849%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201637201845%_)))
                       (_%tl201635201852%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201637201845%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd201636201849%_))
                       (let ((_%e201640201855%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd201636201849%_))))
                         (let ((_%hd201639201859%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201640201855%_)))
                               (_%tl201638201862%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201640201855%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd201639201859%_))
                               (if (let ((__tmp203333 |gxc[1]#_g203334_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp203333
                                      _%hd201639201859%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl201638201862%_))
                                       (let ((_%e201643201865%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl201638201862%_))))
                                         (let ((_%hd201642201869%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201643201865%_)))
                                               (_%tl201641201872%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201643201865%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl201641201872%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl201635201852%_))
                                                   (let ((_%e201646201875%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl201635201852%_))))
                                                     (let ((_%hd201645201879%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201646201875%_)))
                                                           (_%tl201644201882%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201646201875%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-datum?
                                                              _%hd201645201879%_))
                                                           (let ((_%e201647201885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd201645201879%_))))
                     (if (equal? _%e201647201885%_ 'origin:)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl201644201882%_))
                             (let ((_%e201650201889%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%tl201644201882%_))))
                               (let ((_%hd201649201893%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e201650201889%_)))
                                     (_%tl201648201896%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e201650201889%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd201649201893%_))
                                     (let ((_%e201653201899%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd201649201893%_))))
                                       (let ((_%hd201652201903%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201653201899%_)))
                                             (_%tl201651201906%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201653201899%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd201652201903%_))
                                             (if (let ((__tmp203335
                                                        |gxc[1]#_g203336_|))
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    __tmp203335
                                                    _%hd201652201903%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201651201906%_))
                                                     (let ((_%e201656201909%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl201651201906%_))))
                                                       (let ((_%hd201655201913%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e201656201909%_)))
                     (_%tl201654201916%_
                      (let () (declare (not safe)) (##cdr _%e201656201909%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl201654201916%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl201648201896%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201586201686%_))
                             ((lambda (_%L201919%_
                                       _%L201921%_
                                       _%L201922%_
                                       _%L201923%_
                                       _%L201924%_
                                       _%L201925%_)
                                (let ((_%clause201996%_
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
                                                         (cons _%L201925%_
                                                               '()))
                                                   (cons '#f
                                                         (cons 'signature:
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'make-!signature))
                                   (cons 'return:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L201923%_ '()))
                                               (cons 'origin:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L201919%_ '()))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%unchecked201998%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%L201921%_))))
                                  (_%loop201540%_
                                   _%rest201571%_
                                   (let ((_%$e202000%_ _%unchecked201998%_))
                                     (if _%$e202000%_
                                         _%$e202000%_
                                         _%unchecked-proc201545%_))
                                   (cons _%clause201996%_
                                         _%unchecked-clauses201546%_))))
                              _%hd201655201913%_
                              _%hd201642201869%_
                              _%hd201629201825%_
                              _%hd201616201781%_
                              _%hd201603201737%_
                              _%hd201584201673%_)
                             (_%g201575201662%_ _%g201576201666%_))
                         (_%g201575201662%_ _%g201576201666%_))
                     (_%g201575201662%_ _%g201576201666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201575201662%_
                                                      _%g201576201666%_))
                                                 (_%g201575201662%_
                                                  _%g201576201666%_))
                                             (_%g201575201662%_
                                              _%g201576201666%_))))
                                     (_%g201575201662%_ _%g201576201666%_))))
                             (_%g201575201662%_ _%g201576201666%_))
                         (_%g201575201662%_ _%g201576201666%_)))
                   (_%g201575201662%_ _%g201576201666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201575201662%_
                                                    _%g201576201666%_))
                                               (_%g201575201662%_
                                                _%g201576201666%_))))
                                       (_%g201575201662%_ _%g201576201666%_))
                                   (_%g201575201662%_ _%g201576201666%_))
                               (_%g201575201662%_ _%g201576201666%_))))
                       (_%g201575201662%_ _%g201576201666%_))))
               (_%g201575201662%_ _%g201576201666%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201575201662%_
                                                    _%g201576201666%_)))
                                             (_%g201575201662%_
                                              _%g201576201666%_))))
                                     (_%g201575201662%_ _%g201576201666%_))
                                 (_%g201575201662%_ _%g201576201666%_))))
                         (_%g201575201662%_ _%g201576201666%_))
                     (_%g201575201662%_ _%g201576201666%_))
                 (_%g201575201662%_ _%g201576201666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201575201662%_
                                                  _%g201576201666%_))))
                                         (_%g201575201662%_ _%g201576201666%_))
                                     (_%g201575201662%_ _%g201576201666%_)))
                               (_%g201575201662%_ _%g201576201666%_))))
                       (_%g201575201662%_ _%g201576201666%_))
                   (_%g201575201662%_ _%g201576201666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201575201662%_
                                                    _%g201576201666%_))
                                               (_%g201575201662%_
                                                _%g201576201666%_))
                                           (_%g201575201662%_
                                            _%g201576201666%_))))
                                   (_%g201575201662%_ _%g201576201666%_))))
                           (_%g201575201662%_ _%g201576201666%_))
                       (_%g201575201662%_ _%g201576201666%_)))
                 (_%g201575201662%_ _%g201576201666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201575201662%_
                                                  _%g201576201666%_))
                                             (_%g201575201662%_
                                              _%g201576201666%_))))
                                     (_%g201575201662%_ _%g201576201666%_))
                                 (_%g201575201662%_ _%g201576201666%_))
                             (_%g201575201662%_ _%g201576201666%_))))
                     (_%g201575201662%_ _%g201576201666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201575201662%_
                                                      _%g201576201666%_))
                                                 (_%g201575201662%_
                                                  _%g201576201666%_)))
                                           (_%g201575201662%_
                                            _%g201576201666%_))))
                                   (_%g201575201662%_ _%g201576201666%_))))
                           (_%g201575201662%_ _%g201576201666%_))))
                   (_%g201575201662%_ _%g201576201666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201575201662%_
                                                    _%g201576201666%_)))))
                                       (_%g201574202004%_ _%hd201573%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest201547201555%_))
                                 (let ((_%hd201552202012%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest201547201555%_)))
                                       (_%tl201553202015%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest201547201555%_))))
                                   (let* ((_%hd202018%_ _%hd201552202012%_)
                                          (_%rest202021%_ _%tl201553202015%_))
                                     (_%K201551202008%_
                                      _%rest202021%_
                                      _%hd202018%_)))
                                 (_%else201549201567%_))))))
                    (begin
                      (let ((_g203326_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g203325_)
                                   (##vector-length _g203325_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g203326_ 2)))
                            (error "Context expects 2 values" _g203326_)))
                      (let ((_%unchecked-proc202024%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g203325_ 0)))
                            (_%unchecked-clauses202026%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g203325_ 1))))
                        (if _%unchecked-proc202024%_
                            (let* ((_%g202028202052%_
                                    (lambda (_%g202029202048%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g202029202048%_))))
                                   (_%g202027202139%_
                                    (lambda (_%g202029202056%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g202029202056%_))
                                          (let ((_%e202034202059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g202029202056%_))))
                                            (let ((_%hd202033202063%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202034202059%_)))
                                                  (_%tl202032202066%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202034202059%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202032202066%_))
                                                  (let ((_%e202037202069%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl202032202066%_))))
                                                    (let ((_%hd202036202073%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202037202069%_)))
                                                          (_%tl202035202076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202037202069%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd202036202073%_))
                                                          (let ((_g203337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd202036202073%_ '0))))
                    (begin
                      (let ((_g203338_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g203337_)
                                   (##vector-length _g203337_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g203338_ 2)))
                            (error "Context expects 2 values" _g203338_)))
                      (let ((_%target202038202079%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g203337_ 0)))
                            (_%tl202040202082%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g203337_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202040202082%_))
                            (letrec ((_%loop202041202085%_
                                      (lambda (_%hd202039202089%_
                                               _%clause202045202092%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202039202089%_))
                                            (let ((_%e202042202095%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd202039202089%_))))
                                              (let ((_%lp-hd202043202099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202042202095%_)))
                                                    (_%lp-tl202044202102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202042202095%_))))
                                                (_%loop202041202085%_
                                                 _%lp-tl202044202102%_
                                                 (cons _%lp-hd202043202099%_
                                                       _%clause202045202092%_))))
                                            (let ((_%clause202046202105%_
                                                   (reverse _%clause202045202092%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl202035202076%_))
                                                  ((lambda (_%L202109%_
                                                            _%L202111%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L202111%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-case-lambda))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '@list))
                                                   (let ((__tmp203339
                                                          (lambda (_%g202130202133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g202131202136%_)
                    (cons _%g202130202133%_ _%g202131202136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp203339
                                                      '()
                                                      _%L202109%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause202046202105%_
                                                   _%hd202033202063%_)
                                                  (_%g202028202052%_
                                                   _%g202029202056%_)))))))
                              (_%loop202041202085%_
                               _%target202038202079%_
                               '()))
                            (_%g202028202052%_ _%g202029202056%_)))))
                  (_%g202028202052%_ _%g202029202056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g202028202052%_
                                                   _%g202029202056%_))))
                                          (_%g202028202052%_
                                           _%g202029202056%_)))))
                              (_%g202027202139%_
                               (list _%unchecked-proc202024%_
                                     _%unchecked-clauses202026%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g201479201490%_))))
                                          (_%g201477202143%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L201338%_
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
                                            _%L201459%_
                                            _%L201461%_))
                                         (let ((__tmp203340
                                                (lambda (_%g202146202150%_
                                                         _%g202147202153%_
                                                         _%g202148202155%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g202147202153%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g202146202150%_ '())))))
                _%g202148202155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp203340
                                            '()
                                            _%L201459%_
                                            _%L201461%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig201385201453%_
                                    _%arity201386201456%_))))))
                   (_%loop201379201411%_ _%target201376201405%_ '() '()))
                 (_%g201372201398%_ _%g201373201402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201372201398%_
                                                _%g201373201402%_)))))
                                   (_%g201371202158%_ _%signatures201369%_))
                                 (_%g201255201279%_ _%g201256201283%_)))
                           _%case-signature201273201332%_
                           _%hd201263201300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201268201312%_
                                                   _%target201265201306%_
                                                   '()))
                                                (_%g201255201279%_
                                                 _%g201256201283%_)))))
                                      (_%g201255201279%_ _%g201256201283%_))))
                              (_%g201255201279%_ _%g201256201283%_))))
                      (_%g201255201279%_ _%g201256201283%_)))))
          (_%g201254202162%_ _%stx201252%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx202170%_)
        (let* ((_%__stx203152203153%_ _%$stx202170%_)
               (_%g202176202236%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203152203153%_)))))
          (let ((_%__kont203155203156%_
                 (lambda (_%L202458%_ _%L202460%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202460%_ '()))
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
                                                       (cons _%L202460%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L202458%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont203157203158%_
                 (lambda (_%L202383%_ _%L202385%_ _%L202386%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202386%_ '()))
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
                                                       (cons _%L202386%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L202385%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202383%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont203159203160%_
                 (lambda (_%L202297%_ _%L202299%_ _%L202300%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202300%_ '()))
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
                                                       (cons _%L202300%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L202299%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202297%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx203152203153%_))
                (let ((_%e202182202414%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx203152203153%_))))
                  (let ((_%tl202180202421%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202182202414%_)))
                        (_%hd202181202418%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202182202414%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl202180202421%_))
                        (let ((_%e202185202424%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl202180202421%_))))
                          (let ((_%tl202183202431%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202185202424%_)))
                                (_%hd202184202428%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202185202424%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd202184202428%_))
                                (let ((_%e202186202434%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd202184202428%_))))
                                  (if (equal? _%e202186202434%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202183202431%_))
                                          (let ((_%e202189202438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl202183202431%_))))
                                            (let ((_%tl202187202445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202189202438%_)))
                                                  (_%hd202188202442%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202189202438%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202187202445%_))
                                                  (let ((_%e202192202448%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl202187202445%_))))
                                                    (let ((_%tl202190202455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202192202448%_)))
                                                          (_%hd202191202452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202192202448%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202190202455%_))
                                                          (_%__kont203155203156%_
                                                           _%hd202191202452%_
                                                           _%hd202188202442%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g202176202236%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202176202236%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202176202236%_)))
                                      (if (equal? _%e202186202434%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202183202431%_))
                                              (let ((_%e202205202353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202183202431%_))))
                                                (let ((_%tl202203202360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202205202353%_)))
                                                      (_%hd202204202357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202205202353%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl202203202360%_))
                                                      (let ((_%e202208202363%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl202203202360%_))))
                (let ((_%tl202206202370%_
                       (let () (declare (not safe)) (##cdr _%e202208202363%_)))
                      (_%hd202207202367%_
                       (let ()
                         (declare (not safe))
                         (##car _%e202208202363%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202206202370%_))
                      (let ((_%e202211202373%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202206202370%_))))
                        (let ((_%tl202209202380%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202211202373%_)))
                              (_%hd202210202377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202211202373%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202209202380%_))
                              (_%__kont203157203158%_
                               _%hd202210202377%_
                               _%hd202207202367%_
                               _%hd202204202357%_)
                              (let ()
                                (declare (not safe))
                                (_%g202176202236%_)))))
                      (let () (declare (not safe)) (_%g202176202236%_)))))
              (let () (declare (not safe)) (_%g202176202236%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g202176202236%_)))
                                          (if (equal? _%e202186202434%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202183202431%_))
                                                  (let ((_%e202224202267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl202183202431%_))))
                                                    (let ((_%tl202222202274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202224202267%_)))
                                                          (_%hd202223202271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202224202267%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202222202274%_))
                                                          (let ((_%e202227202277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl202222202274%_))))
                    (let ((_%tl202225202284%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202227202277%_)))
                          (_%hd202226202281%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202227202277%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202225202284%_))
                          (let ((_%e202230202287%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl202225202284%_))))
                            (let ((_%tl202228202294%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202230202287%_)))
                                  (_%hd202229202291%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202230202287%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202228202294%_))
                                  (_%__kont203159203160%_
                                   _%hd202229202291%_
                                   _%hd202226202281%_
                                   _%hd202223202271%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g202176202236%_)))))
                          (let () (declare (not safe)) (_%g202176202236%_)))))
                  (let () (declare (not safe)) (_%g202176202236%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202176202236%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202176202236%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g202176202236%_)))))
                        (let () (declare (not safe)) (_%g202176202236%_)))))
                (let () (declare (not safe)) (_%g202176202236%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx202482%_)
        (let* ((_%g202486202506%_
                (lambda (_%g202487202502%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202487202502%_))))
               (_%g202485202577%_
                (lambda (_%g202487202510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202487202510%_))
                      (let ((_%e202491202513%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202487202510%_))))
                        (let ((_%hd202490202517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202491202513%_)))
                              (_%tl202489202520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202491202513%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202489202520%_))
                              (let ((_g203341_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202489202520%_
                                        '0))))
                                (begin
                                  (let ((_g203342_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203341_)
                                               (##vector-length _g203341_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203342_ 2)))
                                        (error "Context expects 2 values"
                                               _g203342_)))
                                  (let ((_%target202492202523%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203341_ 0)))
                                        (_%tl202494202526%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203341_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202494202526%_))
                                        (letrec ((_%loop202495202529%_
                                                  (lambda (_%hd202493202533%_
                                                           _%decl202499202536%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202493202533%_))
                                                        (let ((_%e202496202539%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202493202533%_))))
                  (let ((_%lp-hd202497202543%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202496202539%_)))
                        (_%lp-tl202498202546%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202496202539%_))))
                    (_%loop202495202529%_
                     _%lp-tl202498202546%_
                     (cons _%lp-hd202497202543%_ _%decl202499202536%_))))
                (let ((_%decl202500202549%_ (reverse _%decl202499202536%_)))
                  ((lambda (_%L202553%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp203343
                                  (lambda (_%g202568202571%_ _%g202569202574%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g202568202571%_)
                                          _%g202569202574%_))))
                             (declare (not safe))
                             (__foldr1 __tmp203343 '() _%L202553%_))))
                   _%decl202500202549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202495202529%_
                                           _%target202492202523%_
                                           '()))
                                        (_%g202486202506%_
                                         _%g202487202510%_)))))
                              (_%g202486202506%_ _%g202487202510%_))))
                      (_%g202486202506%_ _%g202487202510%_)))))
          (_%g202485202577%_ _%$stx202482%_))))))
